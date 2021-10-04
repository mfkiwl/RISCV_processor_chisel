package RISCV

import chisel3._
import chisel3.experimental.ChiselEnum

object Constants {
  // val OPCODE_SYSTEM = 0x73;
  // val OPCODE_FENCE = 0x0f;
  val OPCODE_OP = 0x33;
  val OPCODE_OPIMM = 0x13;
  val OPCODE_STORE = 0x23;
  val OPCODE_LOAD = 0x03;
  val OPCODE_BRANCH = 0x63;
  val OPCODE_JALR = 0x67;
  val OPCODE_JAL = 0x6f;
  val OPCODE_AUIPC = 0x17;
  val OPCODE_LUI = 0x37;
  val OPCODE_CSR = 0x73

  val INST_ECALL = 0x73
  val INST_EBREAK = 0x00100073
  val INST_MRET = 0x30200073

  val INT_NONE = 0x0
  val INT_TIMER_CAUSE = 0x80000004

  val S_INT_IDLE = 0x1
  val S_INT_SYNC_ASSERT = 0x2
  val S_INT_ASYNC_ASSERT = 0x4
  val S_INT_MRET = 0x8

  val S_CSR_IDLE = 0x1
  val S_CSR_WAIT_WB = 0x2
  val S_CSR_WAIT_MM = 0x4
  val S_CSR_MSTATUS = 0x8
  val S_CSR_MEPC = 0x10
  val S_CSR_MSTATUS_MRET = 0x20
  val S_CSR_MCAUSE = 0x40

  val CSR_MTVEC = 0x305;
  val CSR_MCAUSE = 0x342;
  val CSR_MEPC = 0x341;
  val CSR_MIE = 0x304;
  val CSR_MSTATUS = 0x300;
  //val OPCODE_CUSTOM0 = 0x0b;

  //val TABLE_SIZE = 0x10;
}

object rv_instr_t extends ChiselEnum {
  val nop,
  /* RV32I Base Instruction Set Except FENCE and SYSTEM */
  lui, auipc,
  jal, jalr,
  beq, bne, blt, bge, bltu, bgeu,
  lb, lh, lw, lbu, lhu,
  sb, sh, sw,
  addi, slti, sltiu, xori, ori, andi, slli, srli, srai,
  add, sub, sll, slt, sltu, xor, srl, sra, or, and,
  csrrw, csrrs, csrrc, csrrwi, csrrsi, csrrci
  = Value
}

object alu_op_t extends ChiselEnum {
  val nop, add, sub, xor, or, and, sl, sra, srl, lui, lts, ltu = Value
}

object comp_op_t extends ChiselEnum {
  val nop, eq, ne, lt, ltu, ge, geu = Value
}

object alu_op1_src_t extends ChiselEnum {
  val reg, pc = Value
}

object alu_op2_src_t extends ChiselEnum {
  val reg, imm = Value
}

object mem_op_t extends ChiselEnum {
  val nop, lb, lh, lw, lbu, lhu, sb, sh, sw = Value
}

object  reg_write_src_t extends ChiselEnum {
  val mem, alu, next_pc, csr = Value
}

