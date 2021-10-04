package RISCV

import chisel3._
import chisel3.util._

class RISCV_comp extends Module {
  val io = IO(new Bundle() {
    val comp_op_i = Input(comp_op_t())
    val op_a_i = Input(UInt(32.W))
    val op_b_i = Input(UInt(32.W))
    val result_o = Output(Bool())
  })

  io.result_o := false.B
  switch (io.comp_op_i) {
    is (comp_op_t.eq) {
      io.result_o := io.op_a_i === io.op_b_i
    }
    is (comp_op_t.ne) {
      io.result_o := io.op_a_i =/= io.op_b_i
    }
    is (comp_op_t.lt) {
      io.result_o := io.op_a_i.asSInt() < io.op_b_i.asSInt()
    }
    is (comp_op_t.ltu) {
      io.result_o := io.op_a_i < io.op_b_i
    }
    is (comp_op_t.ge) {
      io.result_o := io.op_a_i.asSInt >= io.op_b_i.asSInt
    }
    is (comp_op_t.geu) {
      io.result_o := io.op_a_i >= io.op_b_i
    }
  }
}
