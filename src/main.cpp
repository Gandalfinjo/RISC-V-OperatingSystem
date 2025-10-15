#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Thread.hpp"

uint64 framePointer;

void userMain();
void userWrapper(void* arg) {
    userMain();
}

void main() {
    MemoryAllocator::initHeap();
    Riscv::setupTrapHandler();

    thread_t mainThread, userBody;

    mainThread = Thread::createThread(nullptr, nullptr);
    Thread::running = mainThread;
    mainThread->setState(RUNNING);

    thread_create(&userBody, &userWrapper, nullptr);

    while (!Scheduler::isEmpty()) {
        Thread::yield();
    }
}