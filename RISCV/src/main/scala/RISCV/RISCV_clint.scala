package RISCV

import chisel3._
import chisel3.util._
import RISCV.Constants._

class RISCV_clint extends Module{
  val io = IO(new Bundle() {
    val int_flag_i = Input(UInt(8.W))

    val idex_instr_data_i = Input(UInt(32.W))
    val idex_instr_addr_i = Input(UInt(32.W))

    val ifid_instr_addr_i = Input(UInt(32.W))

    val csr_mtvec_i = Input(UInt(32.W))
    val csr_mepc_i = Input(UInt(32.W))
    val csr_mstatus_i = Input(UInt(32.W))

    val instr_addr_o = Output(UInt(32.W))

    val int_stall_o = Output(Bool())
    val csr_state_o = Output(UInt(7.W))

    val csr_write_o = Output(Bool())
    val csr_waddr_o = Output(UInt(32.W))
    val csr_wdata_o = Output(UInt(32.W))
  })
  val int_state = WireInit(S_INT_IDLE.U)
  val csr_state = RegInit(S_CSR_IDLE.U)
  // int cause
  val cause = RegInit(0.U(32.W))
  // pc before int
  val mepc = RegInit(0.U(32.W))

  io.csr_state_o := csr_state

  // Is it responding to an int
  when ((int_state =/= S_INT_IDLE.U) || (csr_state =/= S_CSR_IDLE.U)) {
    io.int_stall_o := true.B
  } .otherwise {
    io.int_stall_o := false.B
  }

  // set type of int
  when (io.idex_instr_data_i === INST_ECALL.U || io.idex_instr_data_i === INST_EBREAK.U) {
    int_state := S_INT_SYNC_ASSERT.U
  } .elsewhen ((io.int_flag_i =/= INT_NONE.U) && io.csr_mstatus_i(3)) {
    int_state := S_INT_ASYNC_ASSERT.U
  } .elsewhen (io.idex_instr_data_i === INST_MRET.U) {
    int_state := S_INT_MRET.U
  } .otherwise {
    int_state := S_INT_IDLE.U
  }

  // set csr state (IDLE -> WAIT_WB -> WAIT_MM -> MEPC -> MSTATUS -> MCAUSE) or (IDLE -> WAIT_WB -> WAIT_MM -> MSTATUS_MRET)
  switch (csr_state) {
    is (S_CSR_IDLE.U) {
      when (int_state === S_INT_SYNC_ASSERT.U || int_state === S_INT_MRET.U) {
        mepc := io.ifid_instr_addr_i
        when (io.idex_instr_data_i === INST_ECALL.U) {
          cause := 11.U
        } .elsewhen (io.idex_instr_data_i === INST_EBREAK.U) {
          cause := 3.U
        } .otherwise {
          cause := 10.U
        }
        csr_state := S_CSR_WAIT_WB.U
      } .elsewhen (int_state === S_INT_ASYNC_ASSERT.U) {
        mepc := io.idex_instr_addr_i
        cause := "h80000004".U
        csr_state := S_CSR_WAIT_WB.U
      }
    }
    is (S_CSR_WAIT_WB.U) {
      csr_state := S_CSR_WAIT_MM.U
    }
    is (S_CSR_WAIT_MM.U) {
      when (int_state === S_INT_MRET.U) {
        csr_state := S_CSR_MSTATUS_MRET.U
      } .otherwise {
        csr_state := S_CSR_MEPC.U
      }
    }
    is (S_CSR_MEPC.U) {
      csr_state := S_CSR_MSTATUS.U
    }
    is (S_CSR_MSTATUS.U) {
      csr_state := S_CSR_MCAUSE.U
    }
    is (S_CSR_MCAUSE.U) {
      csr_state := S_CSR_IDLE.U
    }
    is (S_CSR_MSTATUS_MRET.U) {
      csr_state := S_CSR_IDLE.U
    }
  }

  io.csr_write_o := false.B
  io.csr_wdata_o := 0.U
  io.csr_waddr_o := 0.U
  switch (csr_state) {
    is (S_CSR_MEPC.U) {
      io.csr_write_o := true.B
      io.csr_waddr_o := Cat(Fill(20, 0.U), CSR_MEPC.U)
      io.csr_wdata_o := mepc
    }
    is (S_CSR_MCAUSE.U) {
      io.csr_write_o := true.B
      io.csr_waddr_o := Cat(Fill(20, 0.U), CSR_MCAUSE.U)
      io.csr_wdata_o := cause
    }
    is (S_CSR_MSTATUS.U) {
      io.csr_write_o := true.B
      io.csr_waddr_o := Cat(Fill(20, 0.U), CSR_MSTATUS.U)
      io.csr_wdata_o := Cat(io.csr_mstatus_i(31, 4), 0.U(1.W), io.csr_mstatus_i(2, 0))
    }
    is (S_CSR_MSTATUS_MRET.U) {
      io.csr_write_o := true.B
      io.csr_waddr_o := Cat(Fill(20, 0.U), CSR_MSTATUS.U)
      io.csr_wdata_o := Cat(io.csr_mstatus_i(31, 4), io.csr_mstatus_i(7), io.csr_mstatus_i(2, 0))
    }
  }

  io.instr_addr_o := 0.U
  switch (csr_state) {
    is (S_CSR_MCAUSE.U) {
      io.instr_addr_o := io.csr_mtvec_i
    }
    is (S_CSR_MSTATUS_MRET.U) {
      io.instr_addr_o := io.csr_mepc_i
    }
  }

}
