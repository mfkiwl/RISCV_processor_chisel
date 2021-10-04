package RISCV

import chisel3._
import chisel3.util._
import RISCV.Constants._

class pc_bundle extends Bundle {
  val current_pc = UInt(32.W)
  val next_pc = UInt(32.W)
}

class ifid_bundle extends Bundle {
  val instr_addr = UInt(32.W)
  val instr_data = UInt(32.W)
  val instr_next_addr = UInt(32.W)
}

class idex_bundle extends Bundle {
  val instr_addr = UInt(32.W)
  val instr_data = UInt(32.W)
  val instr_next_addr = UInt(32.W)

  val rs1_data = UInt(32.W)
  val rs2_data = UInt(32.W)
  val rs3_data = UInt(32.W)
  val imm = UInt(32.W)

  val rs1_addr = UInt(32.W)
  val rs2_addr = UInt(32.W)
  val rs3_addr = UInt(32.W)

  val reg_write = Bool()
  val reg_write_src = reg_write_src_t()
  val reg_write_addr = UInt(5.W)

  val mem_write = Bool()
  val mem_op = mem_op_t()

  val jump = Bool()
  val branch = Bool()
  val alu_op1_src = alu_op1_src_t()
  val alu_op2_src = alu_op2_src_t()
  val alu_op = alu_op_t()
  val comp_op = comp_op_t()

  val csr_write = Bool()
  val csr_write_addr = UInt(32.W)
  val csr_raddr = UInt(32.W)
  val csr_rdata = UInt(32.W)
}

class exmm_bundle extends Bundle {
  val instr_addr = UInt(32.W)
  val instr_data = UInt(32.W)
  val instr_next_addr = UInt(32.W)

  val alu_result = UInt(32.W)

  val rs2_data = UInt(32.W)

  val mem_write = Bool()
  val mem_op = mem_op_t()

  val reg_write = Bool()
  val reg_write_src = reg_write_src_t()
  val reg_write_addr = UInt(5.W)

  val csr_write = Bool()
  val csr_write_addr = UInt(32.W)
  val csr_write_data = UInt(32.W)
  val csr_rdata = UInt(32.W)
}

class mmwb_bundle extends Bundle {
  val instr_addr = UInt(32.W)
  val instr_data = UInt(32.W)
  val instr_next_addr = UInt(32.W)

  val alu_result = UInt(32.W)
  val mem_result = UInt(32.W)

  val reg_write = Bool()
  val reg_write_src = reg_write_src_t()
  val reg_write_addr = UInt(5.W)

  val csr_write = Bool()
  val csr_write_addr = UInt(32.W)
  val csr_write_data = UInt(32.W)
  val csr_rdata = UInt(32.W)
}

class RISCV_core extends Module{
  val io = IO(new Bundle {
    // boot address
    val boot_addr_i = Input(UInt(32.W))

    // instruction memory interface
    val instr_addr_o = Output(UInt(32.W))
    val instr_data_i = Input(UInt(32.W))

    // data memory interface
    val data_we_o = Output(Bool())
    val data_be_o = Output(UInt(4.W))
    val data_addr_o = Output(UInt(32.W))
    val data_wdata_o = Output(UInt(32.W))
    val data_rdata_i = Input(UInt(32.W))

    val int_flag_i = Input(UInt(8.W))
  })

  // decoder
  val decoder = Module(new RISCV_decoder())
  // register file
  val regfile = Module(new RISCV_register_file())
  // csr register file
  val csr_regfile = Module(new RISCV_csr_register())
  // ex_control
  val ex_control = Module(new RISCV_ex_control())
  // comp
  val comp = Module(new RISCV_comp())
  // alu
  val alu = Module(new RISCV_alu())
  // pipeline ex_control
  val pipeline_control = Module(new RISCV_pipeline_control())
  // clint
  val clint = Module(new RISCV_clint())

  // PC
  val pc_reset = Wire(new pc_bundle())
  pc_reset.current_pc := io.boot_addr_i
  pc_reset.next_pc := io.boot_addr_i + 4.U
  val pc = RegInit(pc_reset)

  // IF/ID Stage Registers
  val ifid_stage_reset = Wire(new ifid_bundle())
  ifid_stage_reset.instr_addr := 0.U
  ifid_stage_reset.instr_data := 0.U
  ifid_stage_reset.instr_next_addr := 0.U
  val ifid_stage_regs = RegInit(ifid_stage_reset)

  // ID/EX Stage Registers
  val idex_stage_reset = Wire(new idex_bundle())
  idex_stage_reset.instr_addr := 0.U
  idex_stage_reset.instr_data := 0.U
  idex_stage_reset.instr_next_addr := 0.U
  idex_stage_reset.rs1_addr := 0.U
  idex_stage_reset.rs2_addr := 0.U
  idex_stage_reset.rs3_addr := 0.U
  idex_stage_reset.rs1_data := 0.U
  idex_stage_reset.rs2_data := 0.U
  idex_stage_reset.rs3_data := 0.U
  idex_stage_reset.imm := 0.U
  idex_stage_reset.reg_write := false.B
  idex_stage_reset.reg_write_src := reg_write_src_t.alu
  idex_stage_reset.reg_write_addr := 0.U
  idex_stage_reset.mem_write := false.B
  idex_stage_reset.mem_op := mem_op_t.nop
  idex_stage_reset.jump := false.B
  idex_stage_reset.branch := false.B
  idex_stage_reset.alu_op := alu_op_t.nop
  idex_stage_reset.alu_op1_src := alu_op1_src_t.reg
  idex_stage_reset.alu_op2_src := alu_op2_src_t.reg
  idex_stage_reset.comp_op := comp_op_t.nop
  idex_stage_reset.csr_write := false.B
  idex_stage_reset.csr_write_addr := 0.U
  idex_stage_reset.csr_raddr := 0.U
  idex_stage_reset.csr_rdata := 0.U
  val idex_stage_regs = RegInit(idex_stage_reset)

  // EX/MM Stage Registers
  val exmm_stage_reset = Wire(new exmm_bundle())
  exmm_stage_reset.instr_addr := 0.U
  exmm_stage_reset.instr_data := 0.U
  exmm_stage_reset.instr_next_addr := 0.U
  exmm_stage_reset.alu_result := 0.U
  exmm_stage_reset.rs2_data := 0.U
  exmm_stage_reset.mem_write := false.B
  exmm_stage_reset.mem_op := mem_op_t.nop
  exmm_stage_reset.reg_write := false.B
  exmm_stage_reset.reg_write_src := reg_write_src_t.alu
  exmm_stage_reset.reg_write_addr := 0.U
  exmm_stage_reset.csr_write := false.B
  exmm_stage_reset.csr_write_addr := 0.U
  exmm_stage_reset.csr_write_data := 0.U
  exmm_stage_reset.csr_rdata := 0.U
  val exmm_stage_regs = RegInit(exmm_stage_reset)

  // MM/WB Stage Registers
  val mmwb_stage_reset = Wire(new mmwb_bundle())
  mmwb_stage_reset.instr_addr := 0.U
  mmwb_stage_reset.instr_data := 0.U
  mmwb_stage_reset.instr_next_addr := 0.U
  mmwb_stage_reset.alu_result := 0.U
  mmwb_stage_reset.mem_result := 0.U
  mmwb_stage_reset.reg_write := false.B
  mmwb_stage_reset.reg_write_src := reg_write_src_t.alu
  mmwb_stage_reset.reg_write_addr := 0.U
  mmwb_stage_reset.csr_write := false.B
  mmwb_stage_reset.csr_write_addr := 0.U
  mmwb_stage_reset.csr_write_data := 0.U
  mmwb_stage_reset.csr_rdata := 0.U
  val mmwb_stage_regs = RegInit(mmwb_stage_reset)

  // PC update interface
  when (pipeline_control.io.pc_we_o) {
    when (idex_stage_regs.jump || (idex_stage_regs.branch && comp.io.result_o.asBool())) {
      pc.current_pc := alu.io.result_o
      pc.next_pc := alu.io.result_o + 4.U
    } .elsewhen (clint.io.csr_state_o === S_CSR_MCAUSE.U || clint.io.csr_state_o === S_CSR_MSTATUS_MRET.U) {
      pc.current_pc := clint.io.instr_addr_o
      pc.next_pc := clint.io.instr_addr_o + 4.U
    } .otherwise {
      pc.current_pc := pc.next_pc
      pc.next_pc := pc.next_pc + 4.U
    }
  }

  // IF Stege
  io.instr_addr_o := pc.current_pc

  // IF/ID Stage Registers
  when (pipeline_control.io.ifid_clear_o) {
    ifid_stage_regs := ifid_stage_reset
  } .elsewhen (pipeline_control.io.ifid_we_o) {
    ifid_stage_regs.instr_addr := pc.current_pc
    ifid_stage_regs.instr_data := io.instr_data_i
    ifid_stage_regs.instr_next_addr := pc.next_pc
  } .otherwise {
    ifid_stage_regs := ifid_stage_regs
  }

  // ID Stage
  decoder.io.instr_data_i := ifid_stage_regs.instr_data
  ex_control.io.instr_type_i := decoder.io.instr_type_o
  regfile.io.reg_raddr_a_i := decoder.io.rs1_addr_o
  regfile.io.reg_raddr_b_i := decoder.io.rs2_addr_o
  regfile.io.reg_raddr_c_i := decoder.io.rs3_addr_o
  csr_regfile.io.csr_raddr_i := decoder.io.csr_raddr_o

  // ID/EX Stage Registers
  when (pipeline_control.io.idex_clear_o) {
    idex_stage_regs := idex_stage_reset
  } .elsewhen (pipeline_control.io.idex_we_o) {
    idex_stage_regs.instr_addr := ifid_stage_regs.instr_addr
    idex_stage_regs.instr_data := ifid_stage_regs.instr_data
    idex_stage_regs.instr_next_addr := ifid_stage_regs.instr_next_addr
    idex_stage_regs.rs1_addr := decoder.io.rs1_addr_o
    idex_stage_regs.rs2_addr := decoder.io.rs2_addr_o
    idex_stage_regs.rs3_addr := decoder.io.rs3_addr_o
    idex_stage_regs.rs1_data := regfile.io.reg_rdata_a_o
    idex_stage_regs.rs2_data := regfile.io.reg_rdata_b_o
    idex_stage_regs.rs3_data := regfile.io.reg_rdata_c_o
    idex_stage_regs.imm := decoder.io.imm_o
    idex_stage_regs.reg_write := ex_control.io.reg_write_o
    idex_stage_regs.reg_write_src := ex_control.io.reg_write_src_o
    idex_stage_regs.reg_write_addr := decoder.io.rd_addr_o
    idex_stage_regs.mem_write := ex_control.io.mem_wirte_o
    idex_stage_regs.mem_op := ex_control.io.mem_op_o
    idex_stage_regs.jump := ex_control.io.jump_o
    idex_stage_regs.branch := ex_control.io.branch_o
    idex_stage_regs.alu_op := ex_control.io.alu_op_o
    idex_stage_regs.alu_op1_src := ex_control.io.alu_op1_src_o
    idex_stage_regs.alu_op2_src := ex_control.io.alu_op2_src_o
    idex_stage_regs.comp_op := ex_control.io.comp_op_o
    idex_stage_regs.csr_write := ex_control.io.csr_write_o
    idex_stage_regs.csr_write_addr := decoder.io.csr_waddr_o
    idex_stage_regs.csr_raddr := decoder.io.csr_raddr_o
    idex_stage_regs.csr_rdata := csr_regfile.io.csr_rdata_o
  } .otherwise {
    idex_stage_regs := idex_stage_regs
  }

  // EX Stage
  comp.io.op_a_i := idex_stage_regs.rs1_data
  comp.io.op_b_i := idex_stage_regs.rs2_data
  comp.io.comp_op_i := idex_stage_regs.comp_op
  when (idex_stage_regs.alu_op1_src === alu_op1_src_t.pc) {
    alu.io.op_a_i := idex_stage_regs.instr_addr
  } .otherwise {
    alu.io.op_a_i := idex_stage_regs.rs1_data
  }
  when (idex_stage_regs.alu_op2_src === alu_op2_src_t.imm) {
    alu.io.op_b_i := idex_stage_regs.imm
  } .otherwise {
    alu.io.op_b_i := idex_stage_regs.rs2_data
  }
  alu.io.operation_i := idex_stage_regs.alu_op

  clint.io.int_flag_i := io.int_flag_i
  clint.io.idex_instr_data_i := idex_stage_regs.instr_data
  clint.io.idex_instr_addr_i := idex_stage_regs.instr_addr
  clint.io.ifid_instr_addr_i := ifid_stage_regs.instr_addr
  clint.io.csr_mtvec_i := csr_regfile.io.clint_csr_mtvec_o
  clint.io.csr_mepc_i := csr_regfile.io.clint_csr_mepc_o
  clint.io.csr_mstatus_i := csr_regfile.io.clint_scr_mstatus_o

  val data_stall = Wire(Bool())
  data_stall := (idex_stage_regs.reg_write && idex_stage_regs.reg_write_addr =/= 0.U &&
                 ((decoder.io.rs1_addr_o === idex_stage_regs.reg_write_addr) ||
                 (decoder.io.rs2_addr_o === idex_stage_regs.reg_write_addr) ||
                 (decoder.io.rs3_addr_o === idex_stage_regs.reg_write_addr))) ||
                (exmm_stage_regs.reg_write && exmm_stage_regs.reg_write_addr =/= 0.U &&
                 ((decoder.io.rs1_addr_o === exmm_stage_regs.reg_write_addr) ||
                 (decoder.io.rs2_addr_o === exmm_stage_regs.reg_write_addr) ||
                 (decoder.io.rs3_addr_o === exmm_stage_regs.reg_write_addr))) ||
                (mmwb_stage_regs.reg_write && mmwb_stage_regs.reg_write_addr =/= 0.U &&
                 ((decoder.io.rs1_addr_o === mmwb_stage_regs.reg_write_addr) ||
                 (decoder.io.rs2_addr_o === mmwb_stage_regs.reg_write_addr) ||
                 (decoder.io.rs3_addr_o === mmwb_stage_regs.reg_write_addr))) ||
                 ((idex_stage_regs.csr_write && idex_stage_regs.csr_write_addr =/= 0.U) &&
                 (decoder.io.csr_raddr_o === idex_stage_regs.csr_write_addr)) ||
                 ((exmm_stage_regs.csr_write && exmm_stage_regs.csr_write_addr =/= 0.U) &&
                 (decoder.io.csr_raddr_o === exmm_stage_regs.csr_write_addr)) ||
                 ((mmwb_stage_regs.csr_write && mmwb_stage_regs.csr_write_addr =/= 0.U) &&
                 (decoder.io.csr_raddr_o === mmwb_stage_regs.csr_write_addr))

  val control_stall = Wire(Bool())
  control_stall := idex_stage_regs.jump || (idex_stage_regs.branch && comp.io.result_o.asBool())
  pipeline_control.io.data_stall_i := data_stall
  pipeline_control.io.control_stall_i := control_stall
  pipeline_control.io.int_stall_i := clint.io.int_stall_o
  pipeline_control.io.csr_state_i := clint.io.csr_state_o

  //EX/MM Stage Registers
  when (pipeline_control.io.exmm_clear_o) {
    exmm_stage_regs := exmm_stage_reset
  } .elsewhen (pipeline_control.io.exmm_we_o) {
    exmm_stage_regs.instr_addr := idex_stage_regs.instr_addr
    exmm_stage_regs.instr_data := idex_stage_regs.instr_data
    exmm_stage_regs.instr_next_addr := idex_stage_regs.instr_next_addr
    exmm_stage_regs.alu_result := alu.io.result_o
    exmm_stage_regs.rs2_data := idex_stage_regs.rs2_data
    exmm_stage_regs.mem_write := idex_stage_regs.mem_write
    exmm_stage_regs.mem_op := idex_stage_regs.mem_op
    exmm_stage_regs.reg_write := idex_stage_regs.reg_write
    exmm_stage_regs.reg_write_src := idex_stage_regs.reg_write_src
    exmm_stage_regs.reg_write_addr := idex_stage_regs.reg_write_addr

    exmm_stage_regs.csr_write := idex_stage_regs.csr_write
    exmm_stage_regs.csr_write_addr := idex_stage_regs.csr_write_addr
    exmm_stage_regs.csr_rdata := idex_stage_regs.csr_rdata

    when (idex_stage_regs.instr_data(6 ,0) === OPCODE_CSR.U) {
      switch (idex_stage_regs.instr_data(14, 12)) {
        is (1.U) {
          exmm_stage_regs.csr_write_data := idex_stage_regs.rs1_data
        }
        is (2.U) {
          exmm_stage_regs.csr_write_data := idex_stage_regs.rs1_data | idex_stage_regs.csr_rdata
        }
        is (3.U) {
          exmm_stage_regs.csr_write_data := idex_stage_regs.csr_rdata & (~idex_stage_regs.rs1_data).asUInt()
        }
        is (5.U) {
          exmm_stage_regs.csr_write_data := Cat(Fill(27, 0.U), idex_stage_regs.imm)
        }
        is (6.U) {
          exmm_stage_regs.csr_write_data := Cat(Fill(27, 0.U), idex_stage_regs.imm) | idex_stage_regs.csr_rdata
        }
        is (7.U) {
          exmm_stage_regs.csr_write_data := (~Cat(Fill(27, 0.U), idex_stage_regs.imm)).asUInt() & idex_stage_regs.csr_rdata
        }
      }
    } .otherwise {
      exmm_stage_regs.csr_write_data := 0.U
    }
  } .otherwise {
    exmm_stage_regs := exmm_stage_regs
  }

  // MM Stage
  when (exmm_stage_regs.mem_write) {
    io.data_we_o := true.B
    io.data_wdata_o := exmm_stage_regs.rs2_data
    io.data_addr_o := 0.U
    io.data_be_o := 0.U
    switch (exmm_stage_regs.mem_op) {
      is (mem_op_t.sb) {
        io.data_addr_o := Cat(exmm_stage_regs.alu_result(31, 2), 0.U(2.W))
        io.data_be_o := 1.U(4.W) << exmm_stage_regs.alu_result(1, 0)
      }
      is (mem_op_t.sh) {
        io.data_addr_o := Cat(exmm_stage_regs.alu_result(31, 2), 0.U(2.W))
        when (exmm_stage_regs.alu_result(1)) {
          io.data_be_o := 12.U(4.W)
        } .otherwise {
          io.data_be_o := 3.U(4.W)
        }
      }
      is (mem_op_t.sw) {
        io.data_addr_o := Cat(exmm_stage_regs.alu_result(31, 2), 0.U(2.W))
        io.data_be_o := 15.U(4.W)
      }
    }
  } .otherwise {
    io.data_we_o := false.B
    io.data_wdata_o := 0.U
    io.data_be_o := 0.U
    io.data_addr_o := 0.U
    switch (exmm_stage_regs.mem_op) {
      is (mem_op_t.lb) {
        io.data_addr_o := Cat(exmm_stage_regs.alu_result(31, 2), 0.U(2.W))
        io.data_be_o := 1.U(4.W) << exmm_stage_regs.alu_result(1, 0)
      }
      is (mem_op_t.lbu) {
        io.data_addr_o := Cat(exmm_stage_regs.alu_result(31, 2), 0.U(2.W))
        io.data_be_o := 1.U(4.W) << exmm_stage_regs.alu_result(1, 0)
      }
      is (mem_op_t.lh) {
        io.data_addr_o := Cat(exmm_stage_regs.alu_result(31, 2), 0.U(2.W))
        when (exmm_stage_regs.alu_result(1)) {
          io.data_be_o := 12.U(4.W)
        } .otherwise {
          io.data_be_o := 3.U(4.W)
        }
      }
      is (mem_op_t.lhu) {
        io.data_addr_o := Cat(exmm_stage_regs.alu_result(31, 2), 0.U(2.W))
        when (exmm_stage_regs.alu_result(1)) {
          io.data_be_o := 12.U(4.W)
        } .otherwise {
          io.data_be_o := 3.U(4.W)
        }
      }
      is (mem_op_t.lw) {
        io.data_addr_o := Cat(exmm_stage_regs.alu_result(31, 2), 0.U(2.W))
        io.data_be_o := 15.U(4.W)
      }
    }
  }

  // MM/WB Stage Registers

  when (pipeline_control.io.mmwb_clear_o) {
    mmwb_stage_regs := mmwb_stage_reset
  } .elsewhen (pipeline_control.io.mmwb_we_o) {
    mmwb_stage_regs.instr_addr := exmm_stage_regs.instr_addr
    mmwb_stage_regs.instr_data := exmm_stage_regs.instr_data
    mmwb_stage_regs.instr_next_addr := exmm_stage_regs.instr_next_addr
    mmwb_stage_regs.alu_result := exmm_stage_regs.alu_result
    mmwb_stage_regs.mem_result := 0.U
    switch (exmm_stage_regs.mem_op) {
      is (mem_op_t.lb) {
        mmwb_stage_regs.mem_result := Cat(Fill(24, io.data_rdata_i(7)), io.data_rdata_i(7, 0))
      }
      is (mem_op_t.lbu) {
        mmwb_stage_regs.mem_result := Cat(0.U(24.W), io.data_rdata_i(7, 0))
      }
      is (mem_op_t.lh) {
        mmwb_stage_regs.mem_result := Cat(Fill(16, io.data_rdata_i(15)), io.data_rdata_i(15, 0))
      }
      is (mem_op_t.lhu) {
        mmwb_stage_regs.mem_result := Cat(0.U(16.W), io.data_rdata_i(15, 0))
      }
      is (mem_op_t.lw) {
        mmwb_stage_regs.mem_result := io.data_rdata_i
      }
    }
    mmwb_stage_regs.reg_write := exmm_stage_regs.reg_write
    mmwb_stage_regs.reg_write_src := exmm_stage_regs.reg_write_src
    mmwb_stage_regs.reg_write_addr := exmm_stage_regs.reg_write_addr
    mmwb_stage_regs.csr_write := exmm_stage_regs.csr_write
    mmwb_stage_regs.csr_write_addr := exmm_stage_regs.csr_write_addr
    mmwb_stage_regs.csr_write_data := exmm_stage_regs.csr_write_data
    mmwb_stage_regs.csr_rdata := exmm_stage_regs.csr_rdata
  } .otherwise {
    mmwb_stage_regs := mmwb_stage_regs
  }

  // WB Stage
  regfile.io.reg_we_a_i := mmwb_stage_regs.reg_write
  regfile.io.reg_waddr_a_i := mmwb_stage_regs.reg_write_addr
  regfile.io.reg_wdata_a_i := mmwb_stage_regs.instr_next_addr
  when (mmwb_stage_regs.reg_write) {
    switch (mmwb_stage_regs.reg_write_src) {
      is (reg_write_src_t.mem) {
        regfile.io.reg_wdata_a_i := mmwb_stage_regs.mem_result
      }
      is (reg_write_src_t.alu) {
        regfile.io.reg_wdata_a_i := mmwb_stage_regs.alu_result
      }
      is (reg_write_src_t.next_pc) {
        regfile.io.reg_wdata_a_i := mmwb_stage_regs.instr_next_addr
      }
      is (reg_write_src_t.csr) {
        regfile.io.reg_wdata_a_i := mmwb_stage_regs.csr_rdata
      }
    }
  }
  csr_regfile.io.csr_we_i := mmwb_stage_regs.csr_write
  csr_regfile.io.csr_waddr_i := mmwb_stage_regs.csr_write_addr
  csr_regfile.io.csr_wdata_i := mmwb_stage_regs.csr_write_data
  csr_regfile.io.clint_csr_we_i := clint.io.csr_write_o
  csr_regfile.io.clint_csr_waddr_i := clint.io.csr_waddr_o
  csr_regfile.io.clint_csr_wdata_i := clint.io.csr_wdata_o
}

object RISCV_core extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new RISCV_core())
}
