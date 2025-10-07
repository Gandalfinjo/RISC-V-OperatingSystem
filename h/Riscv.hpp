//
// Created by os on 10/7/25.
//

#ifndef PROJECT_BASE_RISCV_HPP
#define PROJECT_BASE_RISCV_HPP

extern "C" void trap_handler();

class Riscv {
public:
    static void setupTrapHandler();
    static void trapHandler();
};

#endif //PROJECT_BASE_RISCV_HPP