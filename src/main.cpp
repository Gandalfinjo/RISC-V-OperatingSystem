#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"
#include "../h/Thread.hpp"

extern void userMain();
extern void printString(const char* s);

void threadBody(void* arg) {
    printString("Hello from thread body!\n");
}

void main() {
    MemoryAllocator::initHeap();
    Riscv::setupTrapHandler();

    Thread t1(threadBody, nullptr);
    t1.start();

    if (!Scheduler::isEmpty()) {
        Thread* next = Scheduler::get();
        if (next == &t1) {
            printString("Scheduler working OK\n");
        }
        else {
            printString("Scheduler empty\n");
        }
    }

    userMain();
}