package RISCV

import chisel3._
import chisel3.util._
import RISCV.Constants._

class RISCV_pipeline_control extends Module {
  val io = IO(new Bundle {
    val data_stall_i = Input(Bool())
    val control_stall_i = Input(Bool())

    val int_stall_i = Input(Bool())
    val csr_state_i = Input(UInt(7.W))

    val pc_we_o = Output(Bool())
    val ifid_clear_o = Output(Bool())
    val ifid_we_o = Output(Bool())
    val idex_clear_o = Output(Bool())
    val idex_we_o = Output(Bool())
    val exmm_clear_o = Output(Bool())
    val exmm_we_o = Output(Bool())
    val mmwb_clear_o = Output(Bool())
    val mmwb_we_o = Output(Bool())
  })
  when (io.int_stall_i) {
    when(io.csr_state_i === S_CSR_WAIT_WB.U) {
      io.pc_we_o := false.B
      io.ifid_we_o := false.B
      io.ifid_clear_o := false.B
      io.idex_we_o := false.B
      io.idex_clear_o := false.B
      io.exmm_we_o := false.B
      io.exmm_clear_o := true.B
      io.mmwb_we_o := true.B
      io.mmwb_clear_o := false.B
    }.elsewhen(io.csr_state_i === S_CSR_WAIT_MM.U) {
      io.pc_we_o := false.B
      io.ifid_we_o := false.B
      io.ifid_clear_o := true.B
      io.idex_we_o := false.B
      io.idex_clear_o := true.B
      io.exmm_we_o := false.B
      io.exmm_clear_o := false.B
      io.mmwb_we_o := false.B
      io.mmwb_clear_o := true.B
    }.elsewhen(io.csr_state_i === S_CSR_MCAUSE.U || io.csr_state_i === S_CSR_MSTATUS_MRET.U) {
      io.pc_we_o := true.B
      io.ifid_we_o := false.B
      io.ifid_clear_o := true.B
      io.idex_we_o := false.B
      io.idex_clear_o := true.B
      io.exmm_we_o := true.B
      io.exmm_clear_o := false.B
      io.mmwb_we_o := true.B
      io.mmwb_clear_o := false.B
    }.otherwise {
      io.pc_we_o := false.B
      io.ifid_clear_o := false.B
      io.ifid_we_o := false.B
      io.idex_clear_o := false.B
      io.idex_we_o := false.B
      io.exmm_we_o := false.B
      io.exmm_clear_o := false.B
      io.mmwb_we_o := false.B
      io.mmwb_clear_o := false.B
    }
  }.elsewhen (io.control_stall_i) {
    io.pc_we_o := true.B
    io.ifid_we_o := false.B
    io.ifid_clear_o := true.B
    io.idex_we_o := false.B
    io.idex_clear_o := true.B
    io.exmm_we_o := true.B
    io.exmm_clear_o := false.B
    io.mmwb_we_o := true.B
    io.mmwb_clear_o := false.B
  } .elsewhen (io.data_stall_i) {
    io.pc_we_o := !io.data_stall_i
    io.ifid_we_o := !io.data_stall_i
    io.ifid_clear_o := false.B
    io.idex_we_o := false.B
    io.idex_clear_o := io.data_stall_i
    io.exmm_we_o := true.B
    io.exmm_clear_o := false.B
    io.mmwb_we_o := true.B
    io.mmwb_clear_o := false.B
  } .otherwise {
    io.pc_we_o := true.B
    io.ifid_we_o := true.B
    io.ifid_clear_o := false.B
    io.idex_we_o := true.B
    io.idex_clear_o := false.B
    io.exmm_we_o := true.B
    io.exmm_clear_o := false.B
    io.mmwb_we_o := true.B
    io.mmwb_clear_o := false.B
  }
}
