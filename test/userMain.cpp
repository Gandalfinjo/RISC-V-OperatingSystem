//
// Created by os on 10/7/25.
//

#include "../h/syscall_c.hpp"
#include "../lib/console.h"

void test_ecall() {
    asm volatile (
        "li a0, 0\n"
        "li a7, 0xDE\n"
        "ecall\n"
    );
}

void printChar(char c) { __putc(c); }
void printString(const char* s) { while (*s) __putc(*s++); }
void printNumber(size_t num) {
    if (num == 0) { __putc('0'); return; }
    char buf[20]; int i = 0;
    while (num) { buf[i++] = '0' + (num % 10); num /= 10; }
    while (i--) __putc(buf[i]);
}

void printPointer(void* ptr) {
    printNumber((size_t)ptr);
}

void userMain() {
    printString("UserMain started\n");

    printString("Free space: ");
    printNumber(mem_get_free_space());
    printString("\n");

    void* p1 = mem_alloc(160);
    printString("Allocated: "); printNumber((size_t)p1); printString("\n");

    printString("Free space after alloc: ");
    printNumber(mem_get_free_space());
    printString("\n");

    mem_free(p1);
    printString("Freed p1\n");

    printString("Free space after free: ");
    printNumber(mem_get_free_space());
    printString("\n");

    // BlockHeader* curr = MemoryAllocator::freeListHead;
    // while(curr) {
    //     printString("Free block at "); printPointer(curr);
    //     printString(" size "); printNumber(curr->size); printString("\n");
    //     curr = curr->next;
    // }
    //
    // void* p1 = MemoryAllocator::mem_alloc(10);
    // void* p2 = MemoryAllocator::mem_alloc(20);
    //
    // printString("p1: "); printPointer(p1); printString("\n");
    // printString("p2: "); printPointer(p2); printString("\n");
    //
    // MemoryAllocator::mem_free(p1);
    // printString("Freed p1\n");
    //
    // curr = MemoryAllocator::freeListHead;
    // while(curr) {
    //     printString("Free block at "); printPointer(curr);
    //     printString(" size "); printNumber(curr->size); printString("\n");
    //     curr = curr->next;
    // }
    //
    // printString("Total free space: ");
    // printNumber(MemoryAllocator::mem_get_free_space());
    // printString("\n");
    //
    // printString("Largest free block: ");
    // printNumber(MemoryAllocator::mem_get_largest_free_block());
    // printString("\n");
    //
    // MemoryAllocator::mem_free(p2);
    // printString("Freed p2\n");
    //
    // curr = MemoryAllocator::freeListHead;
    // while(curr) {
    //     printString("Free block at "); printPointer(curr);
    //     printString(" size "); printNumber(curr->size); printString("\n");
    //     curr = curr->next;
    // }
    //
    // printString("Total free space: ");
    // printNumber(MemoryAllocator::mem_get_free_space());
    // printString("\n");
    //
    // printString("Largest free block: ");
    // printNumber(MemoryAllocator::mem_get_largest_free_block());
    // printString("\n");
    //
    // printString("Pre ecall\n");
    //
    // test_ecall();
    //
    // printString("After ecall\n");
}
