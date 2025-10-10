#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Thread.hpp"

extern void userMain();
extern void printString(const char* s);

void threadBody(void* arg) {
    const char* name = (const char*)arg;

    for (int i = 0; i < 5; i++) {
        printString(name);
        printString(": working... \n");
        thread_dispatch();
        // Thread::yield();
    }

    printString(name);
    printString(": finished.\n");

    thread_exit();
}

void main() {
    MemoryAllocator::initHeap();
    Riscv::setupTrapHandler();

    thread_t t1, t2;

    thread_t mainThread = Thread::createThread(nullptr, nullptr);
    Thread::running = mainThread;
    mainThread->setState(RUNNING);

    thread_create(&t1, threadBody, (void*)"Thread 1");
    thread_create(&t2, threadBody, (void*)"Thread 2");
    // t1 = Thread::createThread(threadBody, (void*)"Thread 1");
    // t2 = Thread::createThread(threadBody, (void*)"Thread 2");
    // t1->start();
    // t2->start();

    for (int i = 0; i < 15; i++) {
        printString("Main: yielding...\n");
        thread_dispatch();
    }

    // while (!Scheduler::isEmpty()) {
    //     Thread::yield();
    // }

    printString("All threads done!\n");

    userMain();
}