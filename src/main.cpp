#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Thread.hpp"

uint64 framePointer;

extern void userMain();
extern void printString(const char* s);

void threadBody(void* arg) {
    const char* name = (const char*)arg;

    for (int i = 0; i < 5; i++) {
        printString(name);
        printString(": working... \n");
        thread_dispatch();
    }

    printString(name);
    printString(": finished.\n");

    thread_exit();
}

void main() {
    MemoryAllocator::initHeap();
    Riscv::setupTrapHandler();

    thread_t mainThread, t1, t2;

    mainThread = Thread::createThread(nullptr, nullptr);
    Thread::running = mainThread;
    mainThread->setState(RUNNING);

    thread_create(&t1, threadBody, (void*)"Thread 1");
    thread_create(&t2, threadBody, (void*)"Thread 2");

    for (int i = 0; i < 15; i++) {
        printString("Main: yielding...\n");
        thread_dispatch();
    }

    printString("All threads done!\n");

    // userMain();
}