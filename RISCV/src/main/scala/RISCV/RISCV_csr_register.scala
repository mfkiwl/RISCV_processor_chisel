package RISCV

import chisel3._
import chisel3.util._
import RISCV.Constants._

class RISCV_csr_register extends Module {
  val io = IO(new Bundle() {
    val csr_we_i = Input(Bool())
    val csr_waddr_i = Input(UInt(32.W))
    val csr_wdata_i = Input(UInt(32.W))

    val csr_raddr_i = Input(UInt(32.W))
    val csr_rdata_o = Output(UInt(32.W))

    val clint_csr_we_i = Input(Bool())
    val clint_csr_waddr_i = Input(UInt(32.W))
    val clint_csr_wdata_i = Input(UInt(32.W))

    val clint_csr_mtvec_o = Output(UInt(32.W))
    val clint_csr_mepc_o = Output(UInt(32.W))
    val clint_scr_mstatus_o = Output(UInt(32.W))
  })
  val mtvec = RegInit(0.U(32.W))
  val mcause = RegInit(0.U(32.W))
  val mepc = RegInit(0.U(32.W))
  val mie = RegInit(0.U(32.W))
  val mstatus = RegInit(0.U(32.W))

  io.clint_csr_mtvec_o := mtvec
  io.clint_csr_mepc_o := mepc
  io.clint_scr_mstatus_o := mstatus

  // write csr
  when (io.csr_we_i) {
    switch (io.csr_waddr_i(11, 0)) {
      is (CSR_MTVEC.U) {
        mtvec := io.csr_wdata_i
      }
      is (CSR_MCAUSE.U) {
        mcause := io.csr_wdata_i
      }
      is (CSR_MEPC.U) {
        mepc := io.csr_wdata_i
      }
      is (CSR_MIE.U) {
        mie := io.csr_wdata_i
      }
      is (CSR_MSTATUS.U) {
        mstatus := io.csr_wdata_i
      }
    }
  } .elsewhen (io.clint_csr_we_i) {
    switch (io.clint_csr_waddr_i(11, 0)) {
      is (CSR_MTVEC.U) {
        mtvec := io.clint_csr_wdata_i
      }
      is (CSR_MCAUSE.U) {
        mcause := io.clint_csr_wdata_i
      }
      is (CSR_MEPC.U) {
        mepc := io.clint_csr_wdata_i
      }
      is (CSR_MIE.U) {
        mie := io.clint_csr_wdata_i
      }
      is (CSR_MSTATUS.U) {
        mstatus := io.clint_csr_wdata_i
      }
    }
  }

  // read csr
  io.csr_rdata_o := 0.U
  when ((io.csr_waddr_i(11, 0) === io.csr_raddr_i(11, 0)) && io.csr_we_i) {
    io.csr_rdata_o := io.csr_wdata_i
  } .otherwise {
    switch (io.csr_raddr_i(11, 0)) {
      is (CSR_MTVEC.U) {
        io.csr_rdata_o := mtvec
      }
      is (CSR_MCAUSE.U) {
        io.csr_rdata_o := mcause
      }
      is (CSR_MEPC.U) {
        io.csr_rdata_o := mepc
      }
      is (CSR_MIE.U) {
        io.csr_rdata_o := mie
      }
      is (CSR_MSTATUS.U) {
        io.csr_rdata_o := mstatus
      }
    }
  }
}
