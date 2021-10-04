package RISCV

import chisel3._
import chisel3.util._

class RISCV_alu extends Module {
  val io = IO(new Bundle{
    val op_a_i = Input(UInt(32.W))
    val op_b_i = Input(UInt(32.W))
    val operation_i = Input(alu_op_t())
    val result_o = Output(UInt(32.W))
  })

  io.result_o := 0.U
  switch(io.operation_i) {
    is (alu_op_t.add) {
      io.result_o := io.op_a_i + io.op_b_i
    }
    is (alu_op_t.sub) {
      io.result_o := io.op_a_i - io.op_b_i
    }
    is (alu_op_t.and) {
      io.result_o := io.op_a_i & io.op_b_i
    }
    is (alu_op_t.or) {
      io.result_o := io.op_a_i | io.op_b_i
    }
    is (alu_op_t.xor) {
      io.result_o := io.op_a_i ^ io.op_b_i
    }
    is (alu_op_t.sl) {
      io.result_o := io.op_a_i << io.op_b_i(4, 0)
    }
    is (alu_op_t.sra) {
      io.result_o := (io.op_a_i.asSInt >> io.op_b_i(4, 0)).asUInt()
    }
    is (alu_op_t.srl) {
      io.result_o := io.op_a_i >> io.op_b_i(4, 0)
    }
    is (alu_op_t.lui) {
      io.result_o := io.op_b_i
    }
    is (alu_op_t.lts) {
      io.result_o := io.op_a_i.asSInt < io.op_b_i.asSInt
    }
    is (alu_op_t.ltu) {
      io.result_o := io.op_a_i < io.op_b_i
    }
    is (alu_op_t.nop) {
      io.result_o := BigInt("DEADBEEF", 16).U
    }
  }

}
