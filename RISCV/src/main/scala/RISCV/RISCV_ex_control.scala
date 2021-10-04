package RISCV

import chisel3._
import chisel3.util._

class RISCV_ex_control extends Module {
  val io = IO(new Bundle{
    val instr_type_i = Input(rv_instr_t())

    val jump_o = Output(Bool())
    val branch_o = Output(Bool())

    val alu_op1_src_o = Output(alu_op1_src_t())
    val alu_op2_src_o = Output(alu_op2_src_t())
    val alu_op_o = Output(alu_op_t())

    val comp_op_o = Output(comp_op_t())

    val mem_wirte_o = Output(Bool())
    val mem_op_o = Output(mem_op_t())

    val reg_write_o = Output(Bool())
    val reg_write_src_o = Output(reg_write_src_t())

    val csr_write_o = Output(Bool())
  })
  // jump / branch
  io.jump_o := io.instr_type_i === rv_instr_t.jalr | io.instr_type_i === rv_instr_t.jal
  io.branch_o := io.instr_type_i === rv_instr_t.beq |
                 io.instr_type_i === rv_instr_t.bne |
                 io.instr_type_i === rv_instr_t.blt |
                 io.instr_type_i === rv_instr_t.bge |
                 io.instr_type_i === rv_instr_t.bltu |
                 io.instr_type_i === rv_instr_t.bgeu
  // csr write
  io.csr_write_o := io.instr_type_i === rv_instr_t.csrrw |
                    io.instr_type_i === rv_instr_t.csrrs |
                    io.instr_type_i === rv_instr_t.csrrc |
                    io.instr_type_i === rv_instr_t.csrrwi |
                    io.instr_type_i === rv_instr_t.csrrsi |
                    io.instr_type_i === rv_instr_t.csrrci

  // alu_op1_src_t
  when (io.instr_type_i === rv_instr_t.auipc |
        io.instr_type_i === rv_instr_t.jal |
        io.instr_type_i === rv_instr_t.beq |
        io.instr_type_i === rv_instr_t.bne |
        io.instr_type_i === rv_instr_t.blt |
        io.instr_type_i === rv_instr_t.bge |
        io.instr_type_i === rv_instr_t.bltu |
        io.instr_type_i === rv_instr_t.bgeu) {
    io.alu_op1_src_o := alu_op1_src_t.pc
  } .otherwise {
    io.alu_op1_src_o := alu_op1_src_t.reg
  }

  // alu_op2_src_t
  when (io.instr_type_i === rv_instr_t.add |
        io.instr_type_i === rv_instr_t.sub |
        io.instr_type_i === rv_instr_t.sll |
        io.instr_type_i === rv_instr_t.slt |
        io.instr_type_i === rv_instr_t.sltu |
        io.instr_type_i === rv_instr_t.xor |
        io.instr_type_i === rv_instr_t.srl |
        io.instr_type_i === rv_instr_t.sra |
        io.instr_type_i === rv_instr_t.or |
        io.instr_type_i === rv_instr_t.and) {
    io.alu_op2_src_o := alu_op2_src_t.reg
  } .otherwise {
    io.alu_op2_src_o := alu_op2_src_t.imm
  }

  // alu_op_t
  io.alu_op_o := alu_op_t.nop
  switch (io.instr_type_i) {
    is (rv_instr_t.lb) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.lh) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.lw) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.lbu) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.lhu) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.sb) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.sh) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.sw) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.lui) {
      io.alu_op_o := alu_op_t.lui
    }
    is (rv_instr_t.jal) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.jalr) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.auipc) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.add) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.addi) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.beq) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.bne) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.blt) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.bge) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.bltu) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.bgeu) {
      io.alu_op_o := alu_op_t.add
    }
    is (rv_instr_t.sub) {
      io.alu_op_o := alu_op_t.sub
    }
    is (rv_instr_t.slt) {
      io.alu_op_o := alu_op_t.lts
    }
    is (rv_instr_t.slti) {
      io.alu_op_o := alu_op_t.lts
    }
    is (rv_instr_t.sltu) {
      io.alu_op_o := alu_op_t.ltu
    }
    is (rv_instr_t.sltiu) {
      io.alu_op_o := alu_op_t.ltu
    }
    is (rv_instr_t.xor) {
      io.alu_op_o := alu_op_t.xor
    }
    is (rv_instr_t.xori) {
      io.alu_op_o := alu_op_t.xor
    }
    is (rv_instr_t.or) {
      io.alu_op_o := alu_op_t.or
    }
    is (rv_instr_t.ori) {
      io.alu_op_o := alu_op_t.or
    }
    is (rv_instr_t.and) {
      io.alu_op_o := alu_op_t.and
    }
    is (rv_instr_t.andi) {
      io.alu_op_o := alu_op_t.and
    }
    is (rv_instr_t.sll) {
      io.alu_op_o := alu_op_t.sl
    }
    is (rv_instr_t.slli) {
      io.alu_op_o := alu_op_t.sl
    }
    is (rv_instr_t.srl) {
      io.alu_op_o := alu_op_t.srl
    }
    is (rv_instr_t.srli) {
      io.alu_op_o := alu_op_t.srl
    }
    is (rv_instr_t.sra) {
      io.alu_op_o := alu_op_t.sra
    }
    is (rv_instr_t.srai) {
      io.alu_op_o := alu_op_t.sra
    }
  }

  // comp_op_t
  io.comp_op_o := comp_op_t.nop
  switch (io.instr_type_i) {
    is (rv_instr_t.beq) {
      io.comp_op_o := comp_op_t.eq
    }
    is (rv_instr_t.bne) {
      io.comp_op_o := comp_op_t.ne
    }
    is (rv_instr_t.blt) {
      io.comp_op_o := comp_op_t.lt
    }
    is (rv_instr_t.bge) {
      io.comp_op_o := comp_op_t.ge
    }
    is (rv_instr_t.bltu) {
      io.comp_op_o := comp_op_t.ltu
    }
    is (rv_instr_t.bgeu) {
      io.comp_op_o := comp_op_t.geu
    }
  }

  // mem_wirte
  io.mem_wirte_o := io.instr_type_i === rv_instr_t.sb |
                    io.instr_type_i === rv_instr_t.sh |
                    io.instr_type_i === rv_instr_t.sw
  io.mem_op_o := mem_op_t.nop
  switch (io.instr_type_i) {
    is (rv_instr_t.sb) {
      io.mem_op_o := mem_op_t.sb
    }
    is (rv_instr_t.sh) {
      io.mem_op_o := mem_op_t.sh
    }
    is (rv_instr_t.sw) {
      io.mem_op_o := mem_op_t.sw
    }
    is (rv_instr_t.lb) {
      io.mem_op_o := mem_op_t.lb
    }
    is (rv_instr_t.lbu) {
      io.mem_op_o := mem_op_t.lbu
    }
    is (rv_instr_t.lh) {
      io.mem_op_o := mem_op_t.lh
    }
    is (rv_instr_t.lhu) {
      io.mem_op_o := mem_op_t.lhu
    }
    is (rv_instr_t.lw) {
      io.mem_op_o := mem_op_t.lw
    }
  }

  // reg_write
  io.reg_write_o := io.instr_type_i === rv_instr_t.lui |
                    io.instr_type_i === rv_instr_t.auipc |
                    io.instr_type_i === rv_instr_t.addi |
                    io.instr_type_i === rv_instr_t.slti |
                    io.instr_type_i === rv_instr_t.sltiu |
                    io.instr_type_i === rv_instr_t.xori |
                    io.instr_type_i === rv_instr_t.ori |
                    io.instr_type_i === rv_instr_t.andi |
                    io.instr_type_i === rv_instr_t.slli |
                    io.instr_type_i === rv_instr_t.srli |
                    io.instr_type_i === rv_instr_t.srai |
                    io.instr_type_i === rv_instr_t.add |
                    io.instr_type_i === rv_instr_t.sub |
                    io.instr_type_i === rv_instr_t.sll |
                    io.instr_type_i === rv_instr_t.slt |
                    io.instr_type_i === rv_instr_t.sltu |
                    io.instr_type_i === rv_instr_t.xor |
                    io.instr_type_i === rv_instr_t.srl |
                    io.instr_type_i === rv_instr_t.sra |
                    io.instr_type_i === rv_instr_t.or |
                    io.instr_type_i === rv_instr_t.and |
                    io.instr_type_i === rv_instr_t.lb |
                    io.instr_type_i === rv_instr_t.lh |
                    io.instr_type_i === rv_instr_t.lw |
                    io.instr_type_i === rv_instr_t.lbu |
                    io.instr_type_i === rv_instr_t.lhu |
                    io.instr_type_i === rv_instr_t.jalr |
                    io.instr_type_i === rv_instr_t.jal |
                    io.instr_type_i === rv_instr_t.csrrw |
                    io.instr_type_i === rv_instr_t.csrrs |
                    io.instr_type_i === rv_instr_t.csrrc |
                    io.instr_type_i === rv_instr_t.csrrwi |
                    io.instr_type_i === rv_instr_t.csrrsi |
                    io.instr_type_i === rv_instr_t.csrrci
  when (io.instr_type_i === rv_instr_t.lb |
        io.instr_type_i === rv_instr_t.lh |
        io.instr_type_i === rv_instr_t.lw |
        io.instr_type_i === rv_instr_t.lbu |
        io.instr_type_i === rv_instr_t.lhu) {
    io.reg_write_src_o := reg_write_src_t.mem
  } .elsewhen (io.instr_type_i === rv_instr_t.jal |
               io.instr_type_i === rv_instr_t.jalr) {
    io.reg_write_src_o := reg_write_src_t.next_pc
  } .elsewhen (io.instr_type_i === rv_instr_t.csrrw |
               io.instr_type_i === rv_instr_t.csrrs |
               io.instr_type_i === rv_instr_t.csrrc |
               io.instr_type_i === rv_instr_t.csrrwi |
               io.instr_type_i === rv_instr_t.csrrsi |
               io.instr_type_i === rv_instr_t.csrrci ) {
    io.reg_write_src_o := reg_write_src_t.csr
  } .otherwise {
    io.reg_write_src_o := reg_write_src_t.alu
  }
}
