# 1 "src/thread.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 32 "<command-line>" 2
# 1 "src/thread.S"
.section .text
.global _ZN7KThread13contextSwitchEPNS_7ContextES1_
.type _ZN7KThread13contextSwitchEPNS_7ContextES1_, @function

.global _ZN7KThread11initContextEPNS_7ContextEPFvvEPv
.type _ZN7KThread11initContextEPNS_7ContextEPFvvEPv, @function

.align 4

_ZN7KThread13contextSwitchEPNS_7ContextES1_:
    # a0 = &oldContext, a1 = &newContext

    sd ra, 0(a0)
    sd sp, 8(a0)

    ld ra, 0(a1)
    ld sp, 8(a1)

    ret

_ZN7KThread11initContextEPNS_7ContextEPFvvEPv:
    # a0 = context, a1 = entry (Thread::wrapper), a2 = stackTop

    sd a1, 0(a0)
    sd a2, 8(a0)

    ret
