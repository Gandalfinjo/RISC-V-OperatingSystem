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
};

#endif //PROJECT_BASE_RISCV_HPP