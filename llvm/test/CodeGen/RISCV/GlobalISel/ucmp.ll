; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py UTC_ARGS: --version 5
; RUN: llc < %s -mtriple=riscv32 -global-isel | FileCheck %s --check-prefix=RV32I
; RUN: llc < %s -mtriple=riscv64 -global-isel | FileCheck %s --check-prefix=RV64I

define i8 @ucmp.8.8(i8 zeroext %x, i8 zeroext %y) nounwind {
; RV32I-LABEL: ucmp.8.8:
; RV32I:       # %bb.0:
; RV32I-NEXT:    mv a2, a0
; RV32I-NEXT:    bltu a1, a0, .LBB0_2
; RV32I-NEXT:  # %bb.1:
; RV32I-NEXT:    li a0, 0
; RV32I-NEXT:    bltu a2, a1, .LBB0_3
; RV32I-NEXT:    j .LBB0_4
; RV32I-NEXT:  .LBB0_2:
; RV32I-NEXT:    li a0, 1
; RV32I-NEXT:    bgeu a2, a1, .LBB0_4
; RV32I-NEXT:  .LBB0_3:
; RV32I-NEXT:    li a0, -1
; RV32I-NEXT:  .LBB0_4:
; RV32I-NEXT:    ret
;
; RV64I-LABEL: ucmp.8.8:
; RV64I:       # %bb.0:
; RV64I-NEXT:    mv a2, a0
; RV64I-NEXT:    bltu a1, a0, .LBB0_2
; RV64I-NEXT:  # %bb.1:
; RV64I-NEXT:    li a0, 0
; RV64I-NEXT:    bltu a2, a1, .LBB0_3
; RV64I-NEXT:    j .LBB0_4
; RV64I-NEXT:  .LBB0_2:
; RV64I-NEXT:    li a0, 1
; RV64I-NEXT:    bgeu a2, a1, .LBB0_4
; RV64I-NEXT:  .LBB0_3:
; RV64I-NEXT:    li a0, -1
; RV64I-NEXT:  .LBB0_4:
; RV64I-NEXT:    ret
  %1 = call i8 @llvm.ucmp(i8 %x, i8 %y)
  ret i8 %1
}

define i8 @ucmp.8.16(i16 zeroext %x, i16 zeroext %y) nounwind {
; RV32I-LABEL: ucmp.8.16:
; RV32I:       # %bb.0:
; RV32I-NEXT:    mv a2, a0
; RV32I-NEXT:    bltu a1, a0, .LBB1_2
; RV32I-NEXT:  # %bb.1:
; RV32I-NEXT:    li a0, 0
; RV32I-NEXT:    bltu a2, a1, .LBB1_3
; RV32I-NEXT:    j .LBB1_4
; RV32I-NEXT:  .LBB1_2:
; RV32I-NEXT:    li a0, 1
; RV32I-NEXT:    bgeu a2, a1, .LBB1_4
; RV32I-NEXT:  .LBB1_3:
; RV32I-NEXT:    li a0, -1
; RV32I-NEXT:  .LBB1_4:
; RV32I-NEXT:    ret
;
; RV64I-LABEL: ucmp.8.16:
; RV64I:       # %bb.0:
; RV64I-NEXT:    mv a2, a0
; RV64I-NEXT:    bltu a1, a0, .LBB1_2
; RV64I-NEXT:  # %bb.1:
; RV64I-NEXT:    li a0, 0
; RV64I-NEXT:    bltu a2, a1, .LBB1_3
; RV64I-NEXT:    j .LBB1_4
; RV64I-NEXT:  .LBB1_2:
; RV64I-NEXT:    li a0, 1
; RV64I-NEXT:    bgeu a2, a1, .LBB1_4
; RV64I-NEXT:  .LBB1_3:
; RV64I-NEXT:    li a0, -1
; RV64I-NEXT:  .LBB1_4:
; RV64I-NEXT:    ret
  %1 = call i8 @llvm.ucmp(i16 %x, i16 %y)
  ret i8 %1
}

define i8 @ucmp.8.32(i32 %x, i32 %y) nounwind {
; RV32I-LABEL: ucmp.8.32:
; RV32I:       # %bb.0:
; RV32I-NEXT:    mv a2, a0
; RV32I-NEXT:    bltu a1, a0, .LBB2_2
; RV32I-NEXT:  # %bb.1:
; RV32I-NEXT:    li a0, 0
; RV32I-NEXT:    bltu a2, a1, .LBB2_3
; RV32I-NEXT:    j .LBB2_4
; RV32I-NEXT:  .LBB2_2:
; RV32I-NEXT:    li a0, 1
; RV32I-NEXT:    bgeu a2, a1, .LBB2_4
; RV32I-NEXT:  .LBB2_3:
; RV32I-NEXT:    li a0, -1
; RV32I-NEXT:  .LBB2_4:
; RV32I-NEXT:    ret
;
; RV64I-LABEL: ucmp.8.32:
; RV64I:       # %bb.0:
; RV64I-NEXT:    slli a0, a0, 32
; RV64I-NEXT:    slli a2, a1, 32
; RV64I-NEXT:    srli a1, a0, 32
; RV64I-NEXT:    srli a2, a2, 32
; RV64I-NEXT:    bltu a2, a1, .LBB2_2
; RV64I-NEXT:  # %bb.1:
; RV64I-NEXT:    li a0, 0
; RV64I-NEXT:    bltu a1, a2, .LBB2_3
; RV64I-NEXT:    j .LBB2_4
; RV64I-NEXT:  .LBB2_2:
; RV64I-NEXT:    li a0, 1
; RV64I-NEXT:    bgeu a1, a2, .LBB2_4
; RV64I-NEXT:  .LBB2_3:
; RV64I-NEXT:    li a0, -1
; RV64I-NEXT:  .LBB2_4:
; RV64I-NEXT:    ret
  %1 = call i8 @llvm.ucmp(i32 %x, i32 %y)
  ret i8 %1
}

define i8 @ucmp.8.64(i64 %x, i64 %y) nounwind {
; RV32I-LABEL: ucmp.8.64:
; RV32I:       # %bb.0:
; RV32I-NEXT:    beq a1, a3, .LBB3_2
; RV32I-NEXT:  # %bb.1:
; RV32I-NEXT:    sltu a4, a3, a1
; RV32I-NEXT:    bnez a4, .LBB3_3
; RV32I-NEXT:    j .LBB3_4
; RV32I-NEXT:  .LBB3_2:
; RV32I-NEXT:    sltu a4, a2, a0
; RV32I-NEXT:    beqz a4, .LBB3_4
; RV32I-NEXT:  .LBB3_3:
; RV32I-NEXT:    li a4, 1
; RV32I-NEXT:  .LBB3_4:
; RV32I-NEXT:    beq a1, a3, .LBB3_6
; RV32I-NEXT:  # %bb.5:
; RV32I-NEXT:    sltu a0, a1, a3
; RV32I-NEXT:    bnez a0, .LBB3_7
; RV32I-NEXT:    j .LBB3_8
; RV32I-NEXT:  .LBB3_6:
; RV32I-NEXT:    sltu a0, a0, a2
; RV32I-NEXT:    beqz a0, .LBB3_8
; RV32I-NEXT:  .LBB3_7:
; RV32I-NEXT:    li a4, -1
; RV32I-NEXT:  .LBB3_8:
; RV32I-NEXT:    mv a0, a4
; RV32I-NEXT:    ret
;
; RV64I-LABEL: ucmp.8.64:
; RV64I:       # %bb.0:
; RV64I-NEXT:    mv a2, a0
; RV64I-NEXT:    bltu a1, a0, .LBB3_2
; RV64I-NEXT:  # %bb.1:
; RV64I-NEXT:    li a0, 0
; RV64I-NEXT:    bltu a2, a1, .LBB3_3
; RV64I-NEXT:    j .LBB3_4
; RV64I-NEXT:  .LBB3_2:
; RV64I-NEXT:    li a0, 1
; RV64I-NEXT:    bgeu a2, a1, .LBB3_4
; RV64I-NEXT:  .LBB3_3:
; RV64I-NEXT:    li a0, -1
; RV64I-NEXT:  .LBB3_4:
; RV64I-NEXT:    ret
  %1 = call i8 @llvm.ucmp(i64 %x, i64 %y)
  ret i8 %1
}

define i32 @ucmp.32.32(i32 %x, i32 %y) nounwind {
; RV32I-LABEL: ucmp.32.32:
; RV32I:       # %bb.0:
; RV32I-NEXT:    mv a2, a0
; RV32I-NEXT:    bltu a1, a0, .LBB4_2
; RV32I-NEXT:  # %bb.1:
; RV32I-NEXT:    li a0, 0
; RV32I-NEXT:    bltu a2, a1, .LBB4_3
; RV32I-NEXT:    j .LBB4_4
; RV32I-NEXT:  .LBB4_2:
; RV32I-NEXT:    li a0, 1
; RV32I-NEXT:    bgeu a2, a1, .LBB4_4
; RV32I-NEXT:  .LBB4_3:
; RV32I-NEXT:    li a0, -1
; RV32I-NEXT:  .LBB4_4:
; RV32I-NEXT:    ret
;
; RV64I-LABEL: ucmp.32.32:
; RV64I:       # %bb.0:
; RV64I-NEXT:    slli a0, a0, 32
; RV64I-NEXT:    slli a2, a1, 32
; RV64I-NEXT:    srli a1, a0, 32
; RV64I-NEXT:    srli a2, a2, 32
; RV64I-NEXT:    bltu a2, a1, .LBB4_2
; RV64I-NEXT:  # %bb.1:
; RV64I-NEXT:    li a0, 0
; RV64I-NEXT:    bltu a1, a2, .LBB4_3
; RV64I-NEXT:    j .LBB4_4
; RV64I-NEXT:  .LBB4_2:
; RV64I-NEXT:    li a0, 1
; RV64I-NEXT:    bgeu a1, a2, .LBB4_4
; RV64I-NEXT:  .LBB4_3:
; RV64I-NEXT:    li a0, -1
; RV64I-NEXT:  .LBB4_4:
; RV64I-NEXT:    ret
  %1 = call i32 @llvm.ucmp(i32 %x, i32 %y)
  ret i32 %1
}

define i32 @ucmp.32.32_sext(i32 signext %x, i32 signext %y) nounwind {
; RV32I-LABEL: ucmp.32.32_sext:
; RV32I:       # %bb.0:
; RV32I-NEXT:    mv a2, a0
; RV32I-NEXT:    bltu a1, a0, .LBB5_2
; RV32I-NEXT:  # %bb.1:
; RV32I-NEXT:    li a0, 0
; RV32I-NEXT:    bltu a2, a1, .LBB5_3
; RV32I-NEXT:    j .LBB5_4
; RV32I-NEXT:  .LBB5_2:
; RV32I-NEXT:    li a0, 1
; RV32I-NEXT:    bgeu a2, a1, .LBB5_4
; RV32I-NEXT:  .LBB5_3:
; RV32I-NEXT:    li a0, -1
; RV32I-NEXT:  .LBB5_4:
; RV32I-NEXT:    ret
;
; RV64I-LABEL: ucmp.32.32_sext:
; RV64I:       # %bb.0:
; RV64I-NEXT:    slli a0, a0, 32
; RV64I-NEXT:    slli a2, a1, 32
; RV64I-NEXT:    srli a1, a0, 32
; RV64I-NEXT:    srli a2, a2, 32
; RV64I-NEXT:    bltu a2, a1, .LBB5_2
; RV64I-NEXT:  # %bb.1:
; RV64I-NEXT:    li a0, 0
; RV64I-NEXT:    bltu a1, a2, .LBB5_3
; RV64I-NEXT:    j .LBB5_4
; RV64I-NEXT:  .LBB5_2:
; RV64I-NEXT:    li a0, 1
; RV64I-NEXT:    bgeu a1, a2, .LBB5_4
; RV64I-NEXT:  .LBB5_3:
; RV64I-NEXT:    li a0, -1
; RV64I-NEXT:  .LBB5_4:
; RV64I-NEXT:    ret
  %1 = call i32 @llvm.ucmp(i32 %x, i32 %y)
  ret i32 %1
}

define i32 @ucmp.32.32_zext(i32 zeroext %x, i32 zeroext %y) nounwind {
; RV32I-LABEL: ucmp.32.32_zext:
; RV32I:       # %bb.0:
; RV32I-NEXT:    mv a2, a0
; RV32I-NEXT:    bltu a1, a0, .LBB6_2
; RV32I-NEXT:  # %bb.1:
; RV32I-NEXT:    li a0, 0
; RV32I-NEXT:    bltu a2, a1, .LBB6_3
; RV32I-NEXT:    j .LBB6_4
; RV32I-NEXT:  .LBB6_2:
; RV32I-NEXT:    li a0, 1
; RV32I-NEXT:    bgeu a2, a1, .LBB6_4
; RV32I-NEXT:  .LBB6_3:
; RV32I-NEXT:    li a0, -1
; RV32I-NEXT:  .LBB6_4:
; RV32I-NEXT:    ret
;
; RV64I-LABEL: ucmp.32.32_zext:
; RV64I:       # %bb.0:
; RV64I-NEXT:    mv a2, a0
; RV64I-NEXT:    bltu a1, a0, .LBB6_2
; RV64I-NEXT:  # %bb.1:
; RV64I-NEXT:    li a0, 0
; RV64I-NEXT:    bltu a2, a1, .LBB6_3
; RV64I-NEXT:    j .LBB6_4
; RV64I-NEXT:  .LBB6_2:
; RV64I-NEXT:    li a0, 1
; RV64I-NEXT:    bgeu a2, a1, .LBB6_4
; RV64I-NEXT:  .LBB6_3:
; RV64I-NEXT:    li a0, -1
; RV64I-NEXT:  .LBB6_4:
; RV64I-NEXT:    ret
  %1 = call i32 @llvm.ucmp(i32 %x, i32 %y)
  ret i32 %1
}

define i32 @ucmp.32.64(i64 %x, i64 %y) nounwind {
; RV32I-LABEL: ucmp.32.64:
; RV32I:       # %bb.0:
; RV32I-NEXT:    beq a1, a3, .LBB7_2
; RV32I-NEXT:  # %bb.1:
; RV32I-NEXT:    sltu a4, a3, a1
; RV32I-NEXT:    bnez a4, .LBB7_3
; RV32I-NEXT:    j .LBB7_4
; RV32I-NEXT:  .LBB7_2:
; RV32I-NEXT:    sltu a4, a2, a0
; RV32I-NEXT:    beqz a4, .LBB7_4
; RV32I-NEXT:  .LBB7_3:
; RV32I-NEXT:    li a4, 1
; RV32I-NEXT:  .LBB7_4:
; RV32I-NEXT:    beq a1, a3, .LBB7_6
; RV32I-NEXT:  # %bb.5:
; RV32I-NEXT:    sltu a0, a1, a3
; RV32I-NEXT:    bnez a0, .LBB7_7
; RV32I-NEXT:    j .LBB7_8
; RV32I-NEXT:  .LBB7_6:
; RV32I-NEXT:    sltu a0, a0, a2
; RV32I-NEXT:    beqz a0, .LBB7_8
; RV32I-NEXT:  .LBB7_7:
; RV32I-NEXT:    li a4, -1
; RV32I-NEXT:  .LBB7_8:
; RV32I-NEXT:    mv a0, a4
; RV32I-NEXT:    ret
;
; RV64I-LABEL: ucmp.32.64:
; RV64I:       # %bb.0:
; RV64I-NEXT:    mv a2, a0
; RV64I-NEXT:    bltu a1, a0, .LBB7_2
; RV64I-NEXT:  # %bb.1:
; RV64I-NEXT:    li a0, 0
; RV64I-NEXT:    bltu a2, a1, .LBB7_3
; RV64I-NEXT:    j .LBB7_4
; RV64I-NEXT:  .LBB7_2:
; RV64I-NEXT:    li a0, 1
; RV64I-NEXT:    bgeu a2, a1, .LBB7_4
; RV64I-NEXT:  .LBB7_3:
; RV64I-NEXT:    li a0, -1
; RV64I-NEXT:  .LBB7_4:
; RV64I-NEXT:    ret
  %1 = call i32 @llvm.ucmp(i64 %x, i64 %y)
  ret i32 %1
}

define i64 @ucmp.64.64(i64 %x, i64 %y) nounwind {
; RV32I-LABEL: ucmp.64.64:
; RV32I:       # %bb.0:
; RV32I-NEXT:    mv a4, a0
; RV32I-NEXT:    beq a1, a3, .LBB8_2
; RV32I-NEXT:  # %bb.1:
; RV32I-NEXT:    sltu a0, a3, a1
; RV32I-NEXT:    bnez a0, .LBB8_3
; RV32I-NEXT:    j .LBB8_4
; RV32I-NEXT:  .LBB8_2:
; RV32I-NEXT:    sltu a0, a2, a4
; RV32I-NEXT:    beqz a0, .LBB8_4
; RV32I-NEXT:  .LBB8_3:
; RV32I-NEXT:    li a0, 1
; RV32I-NEXT:  .LBB8_4:
; RV32I-NEXT:    beq a1, a3, .LBB8_6
; RV32I-NEXT:  # %bb.5:
; RV32I-NEXT:    sltu a1, a1, a3
; RV32I-NEXT:    bnez a1, .LBB8_7
; RV32I-NEXT:    j .LBB8_8
; RV32I-NEXT:  .LBB8_6:
; RV32I-NEXT:    sltu a1, a4, a2
; RV32I-NEXT:    beqz a1, .LBB8_8
; RV32I-NEXT:  .LBB8_7:
; RV32I-NEXT:    li a0, -1
; RV32I-NEXT:    li a1, -1
; RV32I-NEXT:  .LBB8_8:
; RV32I-NEXT:    ret
;
; RV64I-LABEL: ucmp.64.64:
; RV64I:       # %bb.0:
; RV64I-NEXT:    mv a2, a0
; RV64I-NEXT:    bltu a1, a0, .LBB8_2
; RV64I-NEXT:  # %bb.1:
; RV64I-NEXT:    li a0, 0
; RV64I-NEXT:    bltu a2, a1, .LBB8_3
; RV64I-NEXT:    j .LBB8_4
; RV64I-NEXT:  .LBB8_2:
; RV64I-NEXT:    li a0, 1
; RV64I-NEXT:    bgeu a2, a1, .LBB8_4
; RV64I-NEXT:  .LBB8_3:
; RV64I-NEXT:    li a0, -1
; RV64I-NEXT:  .LBB8_4:
; RV64I-NEXT:    ret
  %1 = call i64 @llvm.ucmp(i64 %x, i64 %y)
  ret i64 %1
}
