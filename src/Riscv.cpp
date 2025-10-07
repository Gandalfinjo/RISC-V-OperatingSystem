//
// Created by os on 10/7/25.
//

#include "../h/Riscv.hpp"
#include "../lib/hw.h"

void Riscv::setupTrapHandler() {
    unsigned long addr = (unsigned long)&trap_handler;
    asm volatile("csrw stvec, %0" :: "r"(addr));
}

void Riscv::trapHandler() {
    uint64 scause = 0, sepc = 0;
    asm volatile("csrr %0, scause" : "=r"(scause));
    asm volatile("csrr %0, sepc" : "=r"(sepc));

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;

    if (interrupt == 0 && cause == 9) {
        uint64 code;
        asm volatile("mv %0, a0" : "=r"(code));

        switch (code) {

        }

        sepc += 4;
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    }
}

// extern "C" void trapHandler() {
//     Riscv::trapHandler();
// }