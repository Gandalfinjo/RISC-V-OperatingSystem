#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"
#include "../h/Thread.hpp"

extern void userMain();
extern void printString(const char* s);

void threadBody(void* arg) {
    for (int i = 0; i < 5; i++) {
        printString("Thread running\n");
        // Thread::yield();
    }
}

void main() {
    MemoryAllocator::initHeap();
    Riscv::setupTrapHandler();

    Thread* mainThread = new Thread(nullptr, nullptr);
    Thread::running = mainThread;
    mainThread->setState(RUNNING);

    Thread* t1 = new Thread(threadBody, nullptr);
    Thread* t2 = new Thread(threadBody, nullptr);
    t1->start();
    t2->start();

    while (!Scheduler::isEmpty()) {
        Thread::yield();
    }

    printString("All threads done!\n");

    userMain();
}