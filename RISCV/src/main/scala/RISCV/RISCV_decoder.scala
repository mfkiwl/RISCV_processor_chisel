package RISCV

import chisel3._
import chisel3.util._
import RISCV.Constants._

class RISCV_decoder extends Module {
  val io = IO(new Bundle{
    val instr_data_i = Input(UInt(32.W))
    val instr_type_o = Output(rv_instr_t())
    val rs1_addr_o = Output(UInt(5.W))
    val rs2_addr_o = Output(UInt(5.W))
    val rs3_addr_o = Output(UInt(5.W))
    val rd_addr_o = Output(UInt(5.W))
    val imm_o = Output(UInt(32.W))
    val csr_raddr_o = Output(UInt(32.W))
    val csr_waddr_o = Output(UInt(32.W))
  })

  io.instr_type_o := rv_instr_t.nop
  switch(io.instr_data_i(6, 0)) {
    is (OPCODE_OP.U) {
      switch (io.instr_data_i(14, 12)) {
        is (0.U) {
          when (io.instr_data_i(31, 25) === 0.U) {
            io.instr_type_o := rv_instr_t.add
          } .elsewhen(io.instr_data_i(31, 25) === 32.U) {
            io.instr_type_o := rv_instr_t.sub
          }
        }
        is (1.U) {
          io.instr_type_o := rv_instr_t.sll
        }
        is (2.U) {
          io.instr_type_o := rv_instr_t.slt
        }
        is (3.U) {
          io.instr_type_o := rv_instr_t.sltu
        }
        is (4.U) {
          io.instr_type_o := rv_instr_t.xor
        }
        is (5.U) {
          when (io.instr_data_i(31, 25) === 0.U) {
            io.instr_type_o := rv_instr_t.srl
          } .elsewhen (io.instr_data_i(31, 25) === 32.U) {
            io.instr_type_o := rv_instr_t.sra
          }
        }
        is (6.U) {
          io.instr_type_o := rv_instr_t.or
        }
        is (7.U) {
          io.instr_type_o := rv_instr_t.and
        }
      }
    }
    is (OPCODE_OPIMM.U) {
      switch(io.instr_data_i(14, 12)) {
        is (0.U) {
          io.instr_type_o := rv_instr_t.addi
        }
        is (1.U) {
          io.instr_type_o := rv_instr_t.slli
        }
        is (2.U) {
          io.instr_type_o := rv_instr_t.slti
        }
        is (3.U) {
          io.instr_type_o := rv_instr_t.sltiu
        }
        is (4.U) {
          io.instr_type_o := rv_instr_t.xori
        }
        is (5.U) {
          when (io.instr_data_i(31, 25) === 0.U) {
            io.instr_type_o := rv_instr_t.srli
          } .elsewhen (io.instr_data_i(31, 25) === 32.U) {
            io.instr_type_o := rv_instr_t.srai
          }
        }
        is (6.U) {
          io.instr_type_o := rv_instr_t.ori
        }
        is (7.U) {
          io.instr_type_o := rv_instr_t.andi
        }
      }
    }
    is (OPCODE_STORE.U) {
      switch(io.instr_data_i(14, 12)) {
        is (0.U) {
          io.instr_type_o := rv_instr_t.sb
        }
        is (1.U) {
          io.instr_type_o := rv_instr_t.sh
        }
        is (2.U) {
          io.instr_type_o := rv_instr_t.sw
        }
      }
    }
    is (OPCODE_LOAD.U) {
      switch(io.instr_data_i(14, 12)) {
        is (0.U) {
          io.instr_type_o := rv_instr_t.lb
        }
        is (1.U) {
          io.instr_type_o := rv_instr_t.lh
        }
        is (2.U) {
          io.instr_type_o := rv_instr_t.lw
        }
        is (4.U) {
          io.instr_type_o := rv_instr_t.lbu
        }
        is (5.U) {
          io.instr_type_o := rv_instr_t.lhu
        }
      }
    }
    is (OPCODE_BRANCH.U) {
      switch (io.instr_data_i(14, 12)) {
        is (0.U) {
          io.instr_type_o := rv_instr_t.beq
        }
        is (1.U) {
          io.instr_type_o := rv_instr_t.bne
        }
        is (4.U) {
          io.instr_type_o := rv_instr_t.blt
        }
        is (5.U) {
          io.instr_type_o := rv_instr_t.bge
        }
        is (6.U) {
          io.instr_type_o := rv_instr_t.bltu
        }
        is (7.U) {
          io.instr_type_o := rv_instr_t.bgeu
        }
      }
    }
    is (OPCODE_JALR.U) {
      io.instr_type_o := rv_instr_t.jalr
    }
    is (OPCODE_JAL.U) {
      io.instr_type_o := rv_instr_t.jal
    }
    is (OPCODE_AUIPC.U) {
      io.instr_type_o := rv_instr_t.auipc
    }
    is (OPCODE_LUI.U) {
      io.instr_type_o := rv_instr_t.lui
    }
    is (OPCODE_CSR.U) {
      switch (io.instr_data_i(14, 12)) {
        is (1.U) {
          io.instr_type_o := rv_instr_t.csrrw
        }
        is (2.U) {
          io.instr_type_o := rv_instr_t.csrrs
        }
        is (3.U) {
          io.instr_type_o := rv_instr_t.csrrc
        }
        is (5.U) {
          io.instr_type_o := rv_instr_t.csrrwi
        }
        is (6.U) {
          io.instr_type_o := rv_instr_t.csrrsi
        }
        is (7.U) {
          io.instr_type_o := rv_instr_t.csrrci
        }
      }
    }
  }
  io.rs1_addr_o := io.instr_data_i(19, 15)
  io.rs2_addr_o := io.instr_data_i(24, 20)
  io.rs3_addr_o := 0.U
  io.rd_addr_o := io.instr_data_i(11, 7)
  io.csr_raddr_o := 0.U
  io.csr_waddr_o := 0.U
  when (io.instr_data_i(6, 0) === OPCODE_CSR.U) {
    io.csr_raddr_o := Cat(Fill(20, 0.U), io.instr_data_i(31, 20))
    io.csr_waddr_o := Cat(Fill(20, 0.U), io.instr_data_i(31, 20))
  }

  io.imm_o := BigInt("deadbeef", 16).U
  when (io.instr_type_o === rv_instr_t.lui |
        io.instr_type_o === rv_instr_t.auipc) {
    io.imm_o := io.instr_data_i & BigInt("fffff000", 16).U
  } .elsewhen (io.instr_type_o === rv_instr_t.jal) {
    io.imm_o := Cat(Fill(12, io.instr_data_i(31)), io.instr_data_i(19, 12), io.instr_data_i(20), io.instr_data_i(31, 21), 0.U(1.W))
  } .elsewhen (io.instr_type_o === rv_instr_t.jalr) {
    io.imm_o := Cat(Fill(21, io.instr_data_i(31)), io.instr_data_i(31, 20))
  } .elsewhen (io.instr_type_o === rv_instr_t.beq |
               io.instr_type_o === rv_instr_t.bne |
               io.instr_type_o === rv_instr_t.blt |
               io.instr_type_o === rv_instr_t.bge |
               io.instr_type_o === rv_instr_t.bltu |
               io.instr_type_o === rv_instr_t.bgeu) {
    io.imm_o := Cat(Fill(20, io.instr_data_i(31)), io.instr_data_i(7), io.instr_data_i(30, 25), io.instr_data_i(11, 8), 0.U(1.W))
  } .elsewhen (io.instr_type_o === rv_instr_t.lb |
               io.instr_type_o === rv_instr_t.lh |
               io.instr_type_o === rv_instr_t.lw |
               io.instr_type_o === rv_instr_t.lbu |
               io.instr_type_o === rv_instr_t.lhu |
               io.instr_type_o === rv_instr_t.addi |
               io.instr_type_o === rv_instr_t.slti |
               io.instr_type_o === rv_instr_t.sltiu |
               io.instr_type_o === rv_instr_t.xori |
               io.instr_type_o === rv_instr_t.ori |
               io.instr_type_o === rv_instr_t.andi |
               io.instr_type_o === rv_instr_t.slli |
               io.instr_type_o === rv_instr_t.srli |
               io.instr_type_o === rv_instr_t.srai) {
    io.imm_o := Cat(Fill(21, io.instr_data_i(31)), io.instr_data_i(30, 20))
  } .elsewhen (io.instr_type_o === rv_instr_t.sb |
               io.instr_type_o === rv_instr_t.sh |
               io.instr_type_o === rv_instr_t.sw) {
    io.imm_o := Cat(Fill(21, io.instr_data_i(31)), io.instr_data_i(30, 25), io.instr_data_i(11, 7))
  } .elsewhen (io.instr_type_o === rv_instr_t.csrrw |
               io.instr_type_o === rv_instr_t.csrrs |
               io.instr_type_o === rv_instr_t.csrrc |
               io.instr_type_o === rv_instr_t.csrrwi |
               io.instr_type_o === rv_instr_t.csrrsi |
               io.instr_type_o === rv_instr_t.csrrci) {
    io.imm_o := io.instr_data_i(19, 15)
  }
}
