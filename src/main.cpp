#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"

extern void userMain();

void main() {
    MemoryAllocator::initHeap();
    Riscv::setupTrapHandler();

    userMain();
}