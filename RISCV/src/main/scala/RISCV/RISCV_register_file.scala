package RISCV

import chisel3._
import chisel3.util._

class RISCV_register_file extends Module {
  val io = IO(new Bundle {
    // read interface a
    val reg_raddr_a_i = Input(UInt(5.W))
    val reg_rdata_a_o = Output(UInt(32.W))
    // read interface b
    val reg_raddr_b_i = Input(UInt(5.W))
    val reg_rdata_b_o = Output(UInt(32.W))
    // read interface c
    val reg_raddr_c_i = Input(UInt(5.W))
    val reg_rdata_c_o = Output(UInt(32.W))
    // wirte interface a
    val reg_waddr_a_i = Input(UInt(5.W))
    val reg_wdata_a_i = Input(UInt(32.W))
    val reg_we_a_i = Input(Bool())
  })

  val regfile = Mem(32, UInt(32.W))

  regfile(0) := 0.U
  when (io.reg_we_a_i) {
    when (io.reg_waddr_a_i === 0.U) {

    } .otherwise {
      regfile(io.reg_waddr_a_i) := io.reg_wdata_a_i
    }
  }

  when (io.reg_raddr_a_i === 0.U) {
    io.reg_rdata_a_o := 0.U
  } .otherwise {
    io.reg_rdata_a_o := regfile(io.reg_raddr_a_i)
  }

  when (io.reg_raddr_b_i === 0.U) {
    io.reg_rdata_b_o := 0.U
  } .otherwise {
    io.reg_rdata_b_o := regfile(io.reg_raddr_b_i)
  }

  when (io.reg_raddr_c_i === 0.U) {
    io.reg_rdata_c_o := 0.U
  } .otherwise {
    io.reg_rdata_c_o := regfile(io.reg_raddr_c_i)
  }
}
