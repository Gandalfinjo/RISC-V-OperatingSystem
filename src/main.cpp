#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"
#include "../lib/hw.h"

void test_ecall() {
    asm volatile (
        "li a0, 0\n"
        "li a7, 0xDE\n"
        "ecall\n"
    );
}

void printChar(char c) { __putc(c); }
void printString(const char* s) { while(*s) __putc(*s++); }
void printNumber(size_t num) {
    if (num == 0) { __putc('0'); return; }
    char buf[20];
    int i = 0;
    while(num) { buf[i++] = '0' + (num % 10); num /= 10; }
    while(i--) __putc(buf[i]);
}

void printPointer(void* ptr) {
    printNumber((size_t)ptr);
}

void main() {
    MemoryAllocator::initHeap();
    Riscv::setupTrapHandler();

    BlockHeader* curr = MemoryAllocator::freeListHead;
    while(curr) {
        printString("Free block at "); printPointer(curr);
        printString(" size "); printNumber(curr->size); printString("\n");
        curr = curr->next;
    }

    void* p1 = MemoryAllocator::mem_alloc(10);
    void* p2 = MemoryAllocator::mem_alloc(20);

    printString("p1: "); printPointer(p1); printString("\n");
    printString("p2: "); printPointer(p2); printString("\n");

    MemoryAllocator::mem_free(p1);
    printString("Freed p1\n");

    curr = MemoryAllocator::freeListHead;
    while(curr) {
        printString("Free block at "); printPointer(curr);
        printString(" size "); printNumber(curr->size); printString("\n");
        curr = curr->next;
    }

    MemoryAllocator::mem_free(p2);
    printString("Freed p2\n");

    curr = MemoryAllocator::freeListHead;
    while(curr) {
        printString("Free block at "); printPointer(curr);
        printString(" size "); printNumber(curr->size); printString("\n");
        curr = curr->next;
    }

    printString("Pre ecall\n");

    test_ecall();

    printString("After ecall\n");
}