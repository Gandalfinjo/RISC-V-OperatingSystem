//
// Created by os on 10/7/25.
//

#ifndef PROJECT_BASE_RISCV_HPP
#define PROJECT_BASE_RISCV_HPP

#include "../lib/hw.h"

extern uint64 framePointer;
extern "C" void trap_handler();

class Riscv {
public:
    static void setupTrapHandler();
    static void trapHandler();

    static void popSppSpie();

    static uint64 r_scause();
    static void w_scause(uint64 scause);

    static uint64 r_sepc();
    static void w_sepc(uint64 sepc);

    static uint64 r_stvec();
    static void w_stvec(uint64 stvec);

    static uint64 r_stval();
    static void w_stval(uint64 stval);

    static void ms_sip(uint64 mask);
    static void mc_sip(uint64 mask);
    static uint64 r_sip();
    static void w_sip(uint64 sip);

    static void ms_sstatus(uint64 mask);
    static void mc_sstatus(uint64 mask);
    static uint64 r_sstatus();
    static void w_sstatus(uint64 sstatus);

    enum BitMaskSip
    {
        SIP_SSIP = (1 << 1),
        SIP_STIP = (1 << 5),
        SIP_SEIP = (1 << 9),
    };

    enum BitMaskSstatus
    {
        SSTATUS_SIE = (1 << 1),
        SSTATUS_SPIE = (1 << 5),
        SSTATUS_SPP = (1 << 8),
    };
};

inline uint64 Riscv::r_scause() {
    uint64 volatile scause;
    asm volatile("csrr %0, scause" : "=r"(scause));
    return scause;
}

inline void Riscv::w_scause(uint64 scause) {
    asm volatile("csrw scause, %0" :: "r"(scause));
}

inline uint64 Riscv::r_sepc() {
    uint64 volatile sepc;
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    return sepc;
}

inline void Riscv::w_sepc(uint64 sepc) {
    asm volatile("csrw sepc, %0" :: "r"(sepc));
}

inline uint64 Riscv::r_stvec() {
    uint64 volatile stvec;
    asm volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    asm volatile("csrw stvec, %0" :: "r"(stvec));
}

inline uint64 Riscv::r_stval() {
    uint64 volatile stval;
    asm volatile("csrr %0, stval" : "=r"(stval));
    return stval;
}

inline void Riscv::w_stval(uint64 stval) {
    asm volatile("csrw stval, %0" :: "r"(stval));
}

inline void Riscv::ms_sip(uint64 mask) {
    asm volatile("csrs sip, %0" :: "r"(mask));
}

inline void Riscv::mc_sip(uint64 mask) {
    asm volatile("csrc sip, %0" :: "r"(mask));
}

inline uint64 Riscv::r_sip() {
    uint64 volatile sip;
    asm volatile("csrr %0, sip" : "=r"(sip));
    return sip;
}

inline void Riscv::w_sip(uint64 sip) {
    asm volatile("csrw sip, %0" :: "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    asm volatile("csrs sstatus, %0" :: "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask) {
    asm volatile("csrc sstatus, %0" :: "r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    asm volatile("csrr %0, sstatus" : "=r"(sstatus));
    return sstatus;
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    asm volatile("csrw sstatus, %0" :: "r"(sstatus));
}

#endif //PROJECT_BASE_RISCV_HPP