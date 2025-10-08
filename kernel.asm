
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	5e013103          	ld	sp,1504(sp) # 800045e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7b8010ef          	jal	ra,800017d4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <trap_handler>:
.align 4

.extern _ZN5Riscv11trapHandlerEv

trap_handler:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256

    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04b13c23          	sd	a1,88(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    80001040:	09013023          	sd	a6,128(sp)
    80001044:	09113423          	sd	a7,136(sp)
    80001048:	09213823          	sd	s2,144(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv11trapHandlerEv
    80001080:	1a4000ef          	jal	ra,80001224 <_ZN5Riscv11trapHandlerEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    80001084:	00013003          	ld	zero,0(sp)
    80001088:	00813083          	ld	ra,8(sp)
    8000108c:	01013103          	ld	sp,16(sp)
    80001090:	01813183          	ld	gp,24(sp)
    80001094:	02013203          	ld	tp,32(sp)
    80001098:	02813283          	ld	t0,40(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    800010ac:	05813583          	ld	a1,88(sp)
    800010b0:	06013603          	ld	a2,96(sp)
    800010b4:	06813683          	ld	a3,104(sp)
    800010b8:	07013703          	ld	a4,112(sp)
    800010bc:	07813783          	ld	a5,120(sp)
    800010c0:	08013803          	ld	a6,128(sp)
    800010c4:	08813883          	ld	a7,136(sp)
    800010c8:	09013903          	ld	s2,144(sp)
    800010cc:	09813983          	ld	s3,152(sp)
    800010d0:	0a013a03          	ld	s4,160(sp)
    800010d4:	0a813a83          	ld	s5,168(sp)
    800010d8:	0b013b03          	ld	s6,176(sp)
    800010dc:	0b813b83          	ld	s7,184(sp)
    800010e0:	0c013c03          	ld	s8,192(sp)
    800010e4:	0c813c83          	ld	s9,200(sp)
    800010e8:	0d013d03          	ld	s10,208(sp)
    800010ec:	0d813d83          	ld	s11,216(sp)
    800010f0:	0e013e03          	ld	t3,224(sp)
    800010f4:	0e813e83          	ld	t4,232(sp)
    800010f8:	0f013f03          	ld	t5,240(sp)
    800010fc:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001100:	10010113          	addi	sp,sp,256
    80001104:	10200073          	sret
	...

0000000080001110 <_Z9mem_allocm>:
// Created by os on 10/7/25.
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size) {
    80001110:	ff010113          	addi	sp,sp,-16
    80001114:	00813423          	sd	s0,8(sp)
    80001118:	01010413          	addi	s0,sp,16
    if (size == 0) return nullptr;
    8000111c:	02050863          	beqz	a0,8000114c <_Z9mem_allocm+0x3c>

    size_t blocks = size / MEM_BLOCK_SIZE;
    80001120:	00655793          	srli	a5,a0,0x6
    if (size % MEM_BLOCK_SIZE != 0) blocks++;
    80001124:	03f57513          	andi	a0,a0,63
    80001128:	00050463          	beqz	a0,80001130 <_Z9mem_allocm+0x20>
    8000112c:	00178793          	addi	a5,a5,1

    void* result;
    asm volatile("mv a1, %0" :: "r"(blocks));
    80001130:	00078593          	mv	a1,a5
    asm volatile("li a0, 0x01");
    80001134:	00100513          	li	a0,1
    asm volatile("ecall");
    80001138:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    8000113c:	00050513          	mv	a0,a0
    return result;
}
    80001140:	00813403          	ld	s0,8(sp)
    80001144:	01010113          	addi	sp,sp,16
    80001148:	00008067          	ret
    if (size == 0) return nullptr;
    8000114c:	00000513          	li	a0,0
    80001150:	ff1ff06f          	j	80001140 <_Z9mem_allocm+0x30>

0000000080001154 <_Z8mem_freePv>:

int mem_free(void* addr) {
    80001154:	ff010113          	addi	sp,sp,-16
    80001158:	00813423          	sd	s0,8(sp)
    8000115c:	01010413          	addi	s0,sp,16
    int result;
    asm volatile("mv a1, %0" :: "r"(addr));
    80001160:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x02");
    80001164:	00200513          	li	a0,2
    asm volatile("ecall");
    80001168:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    8000116c:	00050513          	mv	a0,a0
    return result;
}
    80001170:	0005051b          	sext.w	a0,a0
    80001174:	00813403          	ld	s0,8(sp)
    80001178:	01010113          	addi	sp,sp,16
    8000117c:	00008067          	ret

0000000080001180 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    80001180:	ff010113          	addi	sp,sp,-16
    80001184:	00813423          	sd	s0,8(sp)
    80001188:	01010413          	addi	s0,sp,16
    size_t result;
    asm volatile("li a0, 0x03");
    8000118c:	00300513          	li	a0,3
    asm volatile("ecall");
    80001190:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    80001194:	00050513          	mv	a0,a0
    return result;
}
    80001198:	00813403          	ld	s0,8(sp)
    8000119c:	01010113          	addi	sp,sp,16
    800011a0:	00008067          	ret

00000000800011a4 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    800011a4:	ff010113          	addi	sp,sp,-16
    800011a8:	00813423          	sd	s0,8(sp)
    800011ac:	01010413          	addi	s0,sp,16
    size_t result;
    asm volatile("li a0, 0x04");
    800011b0:	00400513          	li	a0,4
    asm volatile("ecall");
    800011b4:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800011b8:	00050513          	mv	a0,a0
    return result;
    800011bc:	00813403          	ld	s0,8(sp)
    800011c0:	01010113          	addi	sp,sp,16
    800011c4:	00008067          	ret

00000000800011c8 <main>:
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"

extern void userMain();

void main() {
    800011c8:	ff010113          	addi	sp,sp,-16
    800011cc:	00113423          	sd	ra,8(sp)
    800011d0:	00813023          	sd	s0,0(sp)
    800011d4:	01010413          	addi	s0,sp,16
    MemoryAllocator::initHeap();
    800011d8:	00000097          	auipc	ra,0x0
    800011dc:	110080e7          	jalr	272(ra) # 800012e8 <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    800011e0:	00000097          	auipc	ra,0x0
    800011e4:	020080e7          	jalr	32(ra) # 80001200 <_ZN5Riscv16setupTrapHandlerEv>

    userMain();
    800011e8:	00000097          	auipc	ra,0x0
    800011ec:	4cc080e7          	jalr	1228(ra) # 800016b4 <_Z8userMainv>
    800011f0:	00813083          	ld	ra,8(sp)
    800011f4:	00013403          	ld	s0,0(sp)
    800011f8:	01010113          	addi	sp,sp,16
    800011fc:	00008067          	ret

0000000080001200 <_ZN5Riscv16setupTrapHandlerEv>:
constexpr uint64 MEM_ALLOC = 0x01;
constexpr uint64 MEM_FREE = 0x02;
constexpr uint64 MEM_GET_FREE_SPACE = 0x03;
constexpr uint64 MEM_GET_LARGEST_FREE_BLOCK = 0x04;

void Riscv::setupTrapHandler() {
    80001200:	ff010113          	addi	sp,sp,-16
    80001204:	00813423          	sd	s0,8(sp)
    80001208:	01010413          	addi	s0,sp,16
    unsigned long addr = (unsigned long)&trap_handler;
    8000120c:	00003797          	auipc	a5,0x3
    80001210:	3dc7b783          	ld	a5,988(a5) # 800045e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(addr));
    80001214:	10579073          	csrw	stvec,a5
}
    80001218:	00813403          	ld	s0,8(sp)
    8000121c:	01010113          	addi	sp,sp,16
    80001220:	00008067          	ret

0000000080001224 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001224:	fe010113          	addi	sp,sp,-32
    80001228:	00113c23          	sd	ra,24(sp)
    8000122c:	00813823          	sd	s0,16(sp)
    80001230:	00913423          	sd	s1,8(sp)
    80001234:	02010413          	addi	s0,sp,32
    uint64 scause = 0, sepc = 0;
    asm volatile("csrr %0, scause" : "=r"(scause));
    80001238:	14202773          	csrr	a4,scause
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    8000123c:	141024f3          	csrr	s1,sepc

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    80001240:	fff00793          	li	a5,-1
    80001244:	0017d793          	srli	a5,a5,0x1
    80001248:	00f777b3          	and	a5,a4,a5

    if (interrupt == 0 && (cause == 8 || cause == 9)) {
    8000124c:	00074863          	bltz	a4,8000125c <_ZN5Riscv11trapHandlerEv+0x38>
    80001250:	ff878793          	addi	a5,a5,-8
    80001254:	00100713          	li	a4,1
    80001258:	00f77c63          	bgeu	a4,a5,80001270 <_ZN5Riscv11trapHandlerEv+0x4c>
        }

        sepc += 4;
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    }
    8000125c:	01813083          	ld	ra,24(sp)
    80001260:	01013403          	ld	s0,16(sp)
    80001264:	00813483          	ld	s1,8(sp)
    80001268:	02010113          	addi	sp,sp,32
    8000126c:	00008067          	ret
        asm volatile("mv %0, a0" : "=r"(code));
    80001270:	00050793          	mv	a5,a0
        switch (code) {
    80001274:	00300713          	li	a4,3
    80001278:	06e78063          	beq	a5,a4,800012d8 <_ZN5Riscv11trapHandlerEv+0xb4>
    8000127c:	02f76463          	bltu	a4,a5,800012a4 <_ZN5Riscv11trapHandlerEv+0x80>
    80001280:	00100713          	li	a4,1
    80001284:	02e78c63          	beq	a5,a4,800012bc <_ZN5Riscv11trapHandlerEv+0x98>
    80001288:	00200713          	li	a4,2
    8000128c:	04e79063          	bne	a5,a4,800012cc <_ZN5Riscv11trapHandlerEv+0xa8>
                asm volatile("mv %0, a1" : "=r"(addr));
    80001290:	00058513          	mv	a0,a1
                int status = MemoryAllocator::mem_free(addr);
    80001294:	00000097          	auipc	ra,0x0
    80001298:	1a4080e7          	jalr	420(ra) # 80001438 <_ZN15MemoryAllocator8mem_freeEPv>
                asm volatile("mv a0, %0" :: "r"(status));
    8000129c:	00050513          	mv	a0,a0
                break;
    800012a0:	02c0006f          	j	800012cc <_ZN5Riscv11trapHandlerEv+0xa8>
        switch (code) {
    800012a4:	00400713          	li	a4,4
    800012a8:	02e79263          	bne	a5,a4,800012cc <_ZN5Riscv11trapHandlerEv+0xa8>
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	278080e7          	jalr	632(ra) # 80001524 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                asm volatile("mv a0, %0" :: "r"(largest));
    800012b4:	00050513          	mv	a0,a0
                break;
    800012b8:	0140006f          	j	800012cc <_ZN5Riscv11trapHandlerEv+0xa8>
                asm volatile("mv %0, a1" : "=r"(size));
    800012bc:	00058513          	mv	a0,a1
                void* ptr = MemoryAllocator::mem_alloc(size);
    800012c0:	00000097          	auipc	ra,0x0
    800012c4:	078080e7          	jalr	120(ra) # 80001338 <_ZN15MemoryAllocator9mem_allocEm>
                asm volatile("mv a0, %0" :: "r"(ptr));
    800012c8:	00050513          	mv	a0,a0
        sepc += 4;
    800012cc:	00448493          	addi	s1,s1,4
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    800012d0:	14149073          	csrw	sepc,s1
    800012d4:	f89ff06f          	j	8000125c <_ZN5Riscv11trapHandlerEv+0x38>
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	204080e7          	jalr	516(ra) # 800014dc <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                asm volatile("mv a0, %0" :: "r"(freeSpace));
    800012e0:	00050513          	mv	a0,a0
                break;
    800012e4:	fe9ff06f          	j	800012cc <_ZN5Riscv11trapHandlerEv+0xa8>

00000000800012e8 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    800012e8:	ff010113          	addi	sp,sp,-16
    800012ec:	00813423          	sd	s0,8(sp)
    800012f0:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    800012f4:	00003697          	auipc	a3,0x3
    800012f8:	2e46b683          	ld	a3,740(a3) # 800045d8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800012fc:	0006b783          	ld	a5,0(a3)
    80001300:	00003717          	auipc	a4,0x3
    80001304:	34070713          	addi	a4,a4,832 # 80004640 <_ZN15MemoryAllocator12freeListHeadE>
    80001308:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    8000130c:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80001310:	00003797          	auipc	a5,0x3
    80001314:	2e07b783          	ld	a5,736(a5) # 800045f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001318:	0007b783          	ld	a5,0(a5)
    8000131c:	0006b683          	ld	a3,0(a3)
    80001320:	00073703          	ld	a4,0(a4)
    80001324:	40d787b3          	sub	a5,a5,a3
    80001328:	00f73423          	sd	a5,8(a4)
}
    8000132c:	00813403          	ld	s0,8(sp)
    80001330:	01010113          	addi	sp,sp,16
    80001334:	00008067          	ret

0000000080001338 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    80001338:	ff010113          	addi	sp,sp,-16
    8000133c:	00813423          	sd	s0,8(sp)
    80001340:	01010413          	addi	s0,sp,16
    80001344:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    80001348:	00003517          	auipc	a0,0x3
    8000134c:	2f853503          	ld	a0,760(a0) # 80004640 <_ZN15MemoryAllocator12freeListHeadE>
    80001350:	06050063          	beqz	a0,800013b0 <_ZN15MemoryAllocator9mem_allocEm+0x78>
    80001354:	08078a63          	beqz	a5,800013e8 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    80001358:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    8000135c:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    80001360:	00000613          	li	a2,0
    80001364:	00c0006f          	j	80001370 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    80001368:	00050613          	mv	a2,a0
        curr = curr->next;
    8000136c:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    80001370:	00050663          	beqz	a0,8000137c <_ZN15MemoryAllocator9mem_allocEm+0x44>
    80001374:	00853783          	ld	a5,8(a0)
    80001378:	fee7e8e3          	bltu	a5,a4,80001368 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    8000137c:	02050a63          	beqz	a0,800013b0 <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    80001380:	00853583          	ld	a1,8(a0)
    80001384:	02068793          	addi	a5,a3,32
    80001388:	04f5e063          	bltu	a1,a5,800013c8 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    8000138c:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    80001390:	40e585b3          	sub	a1,a1,a4
    80001394:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    80001398:	00053683          	ld	a3,0(a0)
    8000139c:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    800013a0:	00060e63          	beqz	a2,800013bc <_ZN15MemoryAllocator9mem_allocEm+0x84>
    800013a4:	00f63023          	sd	a5,0(a2)
        else freeListHead = newBlock;

        curr->size = totalSize;
    800013a8:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
    800013ac:	01050513          	addi	a0,a0,16
}
    800013b0:	00813403          	ld	s0,8(sp)
    800013b4:	01010113          	addi	sp,sp,16
    800013b8:	00008067          	ret
        else freeListHead = newBlock;
    800013bc:	00003697          	auipc	a3,0x3
    800013c0:	28f6b223          	sd	a5,644(a3) # 80004640 <_ZN15MemoryAllocator12freeListHeadE>
    800013c4:	fe5ff06f          	j	800013a8 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    800013c8:	00060863          	beqz	a2,800013d8 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    800013cc:	00053783          	ld	a5,0(a0)
    800013d0:	00f63023          	sd	a5,0(a2)
    800013d4:	fd9ff06f          	j	800013ac <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    800013d8:	00053783          	ld	a5,0(a0)
    800013dc:	00003717          	auipc	a4,0x3
    800013e0:	26f73223          	sd	a5,612(a4) # 80004640 <_ZN15MemoryAllocator12freeListHeadE>
    800013e4:	fc9ff06f          	j	800013ac <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    800013e8:	00000513          	li	a0,0
    800013ec:	fc5ff06f          	j	800013b0 <_ZN15MemoryAllocator9mem_allocEm+0x78>

00000000800013f0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    800013f0:	ff010113          	addi	sp,sp,-16
    800013f4:	00813423          	sd	s0,8(sp)
    800013f8:	01010413          	addi	s0,sp,16
    if (!curr) return;
    800013fc:	00050c63          	beqz	a0,80001414 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    80001400:	00053783          	ld	a5,0(a0)
    80001404:	00078863          	beqz	a5,80001414 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    80001408:	00853703          	ld	a4,8(a0)
    8000140c:	00e506b3          	add	a3,a0,a4
    80001410:	00d78863          	beq	a5,a3,80001420 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    80001414:	00813403          	ld	s0,8(sp)
    80001418:	01010113          	addi	sp,sp,16
    8000141c:	00008067          	ret
        curr->size += curr->next->size;
    80001420:	0087b683          	ld	a3,8(a5)
    80001424:	00d70733          	add	a4,a4,a3
    80001428:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    8000142c:	0007b783          	ld	a5,0(a5)
    80001430:	00f53023          	sd	a5,0(a0)
    80001434:	fe1ff06f          	j	80001414 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

0000000080001438 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    80001438:	08050e63          	beqz	a0,800014d4 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    8000143c:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    80001440:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    80001444:	00003797          	auipc	a5,0x3
    80001448:	1fc7b783          	ld	a5,508(a5) # 80004640 <_ZN15MemoryAllocator12freeListHeadE>
    8000144c:	02078863          	beqz	a5,8000147c <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    80001450:	fe010113          	addi	sp,sp,-32
    80001454:	00113c23          	sd	ra,24(sp)
    80001458:	00813823          	sd	s0,16(sp)
    8000145c:	00913423          	sd	s1,8(sp)
    80001460:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    80001464:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    80001468:	02078463          	beqz	a5,80001490 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    8000146c:	02a7f263          	bgeu	a5,a0,80001490 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    80001470:	00078493          	mv	s1,a5
        curr = curr->next;
    80001474:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    80001478:	ff1ff06f          	j	80001468 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    8000147c:	00003797          	auipc	a5,0x3
    80001480:	1ca7b223          	sd	a0,452(a5) # 80004640 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    80001484:	fe073823          	sd	zero,-16(a4)
        return 0;
    80001488:	00000513          	li	a0,0
    8000148c:	00008067          	ret
    blockToFree->next = curr;
    80001490:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    80001494:	02048a63          	beqz	s1,800014c8 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80001498:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    8000149c:	00000097          	auipc	ra,0x0
    800014a0:	f54080e7          	jalr	-172(ra) # 800013f0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    800014a4:	00048513          	mv	a0,s1
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	f48080e7          	jalr	-184(ra) # 800013f0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    800014b0:	00000513          	li	a0,0
}
    800014b4:	01813083          	ld	ra,24(sp)
    800014b8:	01013403          	ld	s0,16(sp)
    800014bc:	00813483          	ld	s1,8(sp)
    800014c0:	02010113          	addi	sp,sp,32
    800014c4:	00008067          	ret
    else freeListHead = blockToFree;
    800014c8:	00003797          	auipc	a5,0x3
    800014cc:	16a7bc23          	sd	a0,376(a5) # 80004640 <_ZN15MemoryAllocator12freeListHeadE>
    800014d0:	fcdff06f          	j	8000149c <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    800014d4:	fff00513          	li	a0,-1
}
    800014d8:	00008067          	ret

00000000800014dc <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    800014dc:	ff010113          	addi	sp,sp,-16
    800014e0:	00813423          	sd	s0,8(sp)
    800014e4:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    800014e8:	00003797          	auipc	a5,0x3
    800014ec:	1587b783          	ld	a5,344(a5) # 80004640 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    800014f0:	00000513          	li	a0,0
    800014f4:	0080006f          	j	800014fc <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    800014f8:	0007b783          	ld	a5,0(a5)
    800014fc:	00078e63          	beqz	a5,80001518 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    80001500:	0087b703          	ld	a4,8(a5)
    80001504:	01000693          	li	a3,16
    80001508:	fee6f8e3          	bgeu	a3,a4,800014f8 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    8000150c:	00a70533          	add	a0,a4,a0
    80001510:	ff050513          	addi	a0,a0,-16
    80001514:	fe5ff06f          	j	800014f8 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    80001518:	00813403          	ld	s0,8(sp)
    8000151c:	01010113          	addi	sp,sp,16
    80001520:	00008067          	ret

0000000080001524 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80001524:	ff010113          	addi	sp,sp,-16
    80001528:	00813423          	sd	s0,8(sp)
    8000152c:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001530:	00003717          	auipc	a4,0x3
    80001534:	11073703          	ld	a4,272(a4) # 80004640 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    80001538:	00000513          	li	a0,0
    8000153c:	0080006f          	j	80001544 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001540:	00073703          	ld	a4,0(a4)
    80001544:	02070263          	beqz	a4,80001568 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    80001548:	00873783          	ld	a5,8(a4)
    8000154c:	01000693          	li	a3,16
    80001550:	00d7f463          	bgeu	a5,a3,80001558 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    80001554:	01000793          	li	a5,16
    80001558:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    8000155c:	fef572e3          	bgeu	a0,a5,80001540 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    80001560:	00078513          	mv	a0,a5
    80001564:	fddff06f          	j	80001540 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    80001568:	00813403          	ld	s0,8(sp)
    8000156c:	01010113          	addi	sp,sp,16
    80001570:	00008067          	ret

0000000080001574 <_Z10test_ecallv>:
//

#include "../h/syscall_c.hpp"
#include "../lib/console.h"

void test_ecall() {
    80001574:	ff010113          	addi	sp,sp,-16
    80001578:	00813423          	sd	s0,8(sp)
    8000157c:	01010413          	addi	s0,sp,16
    asm volatile (
        "li a0, 0\n"
        "li a7, 0xDE\n"
        "ecall\n"
    );
    80001580:	00000513          	li	a0,0
    80001584:	0de00893          	li	a7,222
    80001588:	00000073          	ecall
}
    8000158c:	00813403          	ld	s0,8(sp)
    80001590:	01010113          	addi	sp,sp,16
    80001594:	00008067          	ret

0000000080001598 <_Z9printCharc>:

void printChar(char c) { __putc(c); }
    80001598:	ff010113          	addi	sp,sp,-16
    8000159c:	00113423          	sd	ra,8(sp)
    800015a0:	00813023          	sd	s0,0(sp)
    800015a4:	01010413          	addi	s0,sp,16
    800015a8:	00002097          	auipc	ra,0x2
    800015ac:	2f4080e7          	jalr	756(ra) # 8000389c <__putc>
    800015b0:	00813083          	ld	ra,8(sp)
    800015b4:	00013403          	ld	s0,0(sp)
    800015b8:	01010113          	addi	sp,sp,16
    800015bc:	00008067          	ret

00000000800015c0 <_Z11printStringPKc>:
void printString(const char* s) { while (*s) __putc(*s++); }
    800015c0:	fe010113          	addi	sp,sp,-32
    800015c4:	00113c23          	sd	ra,24(sp)
    800015c8:	00813823          	sd	s0,16(sp)
    800015cc:	00913423          	sd	s1,8(sp)
    800015d0:	02010413          	addi	s0,sp,32
    800015d4:	00050493          	mv	s1,a0
    800015d8:	0004c503          	lbu	a0,0(s1)
    800015dc:	00050a63          	beqz	a0,800015f0 <_Z11printStringPKc+0x30>
    800015e0:	00148493          	addi	s1,s1,1
    800015e4:	00002097          	auipc	ra,0x2
    800015e8:	2b8080e7          	jalr	696(ra) # 8000389c <__putc>
    800015ec:	fedff06f          	j	800015d8 <_Z11printStringPKc+0x18>
    800015f0:	01813083          	ld	ra,24(sp)
    800015f4:	01013403          	ld	s0,16(sp)
    800015f8:	00813483          	ld	s1,8(sp)
    800015fc:	02010113          	addi	sp,sp,32
    80001600:	00008067          	ret

0000000080001604 <_Z11printNumberm>:
void printNumber(size_t num) {
    80001604:	fc010113          	addi	sp,sp,-64
    80001608:	02113c23          	sd	ra,56(sp)
    8000160c:	02813823          	sd	s0,48(sp)
    80001610:	02913423          	sd	s1,40(sp)
    80001614:	04010413          	addi	s0,sp,64
    if (num == 0) { __putc('0'); return; }
    80001618:	02050863          	beqz	a0,80001648 <_Z11printNumberm+0x44>
    char buf[20]; int i = 0;
    8000161c:	00000793          	li	a5,0
    while (num) { buf[i++] = '0' + (num % 10); num /= 10; }
    80001620:	04050863          	beqz	a0,80001670 <_Z11printNumberm+0x6c>
    80001624:	00a00693          	li	a3,10
    80001628:	02d57733          	remu	a4,a0,a3
    8000162c:	03070713          	addi	a4,a4,48
    80001630:	fe040613          	addi	a2,s0,-32
    80001634:	00f60633          	add	a2,a2,a5
    80001638:	fee60423          	sb	a4,-24(a2)
    8000163c:	02d55533          	divu	a0,a0,a3
    80001640:	0017879b          	addiw	a5,a5,1
    80001644:	fddff06f          	j	80001620 <_Z11printNumberm+0x1c>
    if (num == 0) { __putc('0'); return; }
    80001648:	03000513          	li	a0,48
    8000164c:	00002097          	auipc	ra,0x2
    80001650:	250080e7          	jalr	592(ra) # 8000389c <__putc>
    80001654:	0240006f          	j	80001678 <_Z11printNumberm+0x74>
    while (i--) __putc(buf[i]);
    80001658:	fe040793          	addi	a5,s0,-32
    8000165c:	009787b3          	add	a5,a5,s1
    80001660:	fe87c503          	lbu	a0,-24(a5)
    80001664:	00002097          	auipc	ra,0x2
    80001668:	238080e7          	jalr	568(ra) # 8000389c <__putc>
    8000166c:	00048793          	mv	a5,s1
    80001670:	fff7849b          	addiw	s1,a5,-1
    80001674:	fe0792e3          	bnez	a5,80001658 <_Z11printNumberm+0x54>
}
    80001678:	03813083          	ld	ra,56(sp)
    8000167c:	03013403          	ld	s0,48(sp)
    80001680:	02813483          	ld	s1,40(sp)
    80001684:	04010113          	addi	sp,sp,64
    80001688:	00008067          	ret

000000008000168c <_Z12printPointerPv>:

void printPointer(void* ptr) {
    8000168c:	ff010113          	addi	sp,sp,-16
    80001690:	00113423          	sd	ra,8(sp)
    80001694:	00813023          	sd	s0,0(sp)
    80001698:	01010413          	addi	s0,sp,16
    printNumber((size_t)ptr);
    8000169c:	00000097          	auipc	ra,0x0
    800016a0:	f68080e7          	jalr	-152(ra) # 80001604 <_Z11printNumberm>
}
    800016a4:	00813083          	ld	ra,8(sp)
    800016a8:	00013403          	ld	s0,0(sp)
    800016ac:	01010113          	addi	sp,sp,16
    800016b0:	00008067          	ret

00000000800016b4 <_Z8userMainv>:

void userMain() {
    800016b4:	fe010113          	addi	sp,sp,-32
    800016b8:	00113c23          	sd	ra,24(sp)
    800016bc:	00813823          	sd	s0,16(sp)
    800016c0:	00913423          	sd	s1,8(sp)
    800016c4:	02010413          	addi	s0,sp,32
    printString("UserMain started\n");
    800016c8:	00003517          	auipc	a0,0x3
    800016cc:	95850513          	addi	a0,a0,-1704 # 80004020 <CONSOLE_STATUS+0x10>
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	ef0080e7          	jalr	-272(ra) # 800015c0 <_Z11printStringPKc>

    printString("Free space: ");
    800016d8:	00003517          	auipc	a0,0x3
    800016dc:	96050513          	addi	a0,a0,-1696 # 80004038 <CONSOLE_STATUS+0x28>
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	ee0080e7          	jalr	-288(ra) # 800015c0 <_Z11printStringPKc>
    printNumber(mem_get_free_space());
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	a98080e7          	jalr	-1384(ra) # 80001180 <_Z18mem_get_free_spacev>
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	f14080e7          	jalr	-236(ra) # 80001604 <_Z11printNumberm>
    printString("\n");
    800016f8:	00003517          	auipc	a0,0x3
    800016fc:	98850513          	addi	a0,a0,-1656 # 80004080 <CONSOLE_STATUS+0x70>
    80001700:	00000097          	auipc	ra,0x0
    80001704:	ec0080e7          	jalr	-320(ra) # 800015c0 <_Z11printStringPKc>

    void* p1 = mem_alloc(160);
    80001708:	0a000513          	li	a0,160
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	a04080e7          	jalr	-1532(ra) # 80001110 <_Z9mem_allocm>
    80001714:	00050493          	mv	s1,a0
    printString("Allocated: "); printNumber((size_t)p1); printString("\n");
    80001718:	00003517          	auipc	a0,0x3
    8000171c:	93050513          	addi	a0,a0,-1744 # 80004048 <CONSOLE_STATUS+0x38>
    80001720:	00000097          	auipc	ra,0x0
    80001724:	ea0080e7          	jalr	-352(ra) # 800015c0 <_Z11printStringPKc>
    80001728:	00048513          	mv	a0,s1
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	ed8080e7          	jalr	-296(ra) # 80001604 <_Z11printNumberm>
    80001734:	00003517          	auipc	a0,0x3
    80001738:	94c50513          	addi	a0,a0,-1716 # 80004080 <CONSOLE_STATUS+0x70>
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	e84080e7          	jalr	-380(ra) # 800015c0 <_Z11printStringPKc>

    printString("Free space after alloc: ");
    80001744:	00003517          	auipc	a0,0x3
    80001748:	91450513          	addi	a0,a0,-1772 # 80004058 <CONSOLE_STATUS+0x48>
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	e74080e7          	jalr	-396(ra) # 800015c0 <_Z11printStringPKc>
    printNumber(mem_get_free_space());
    80001754:	00000097          	auipc	ra,0x0
    80001758:	a2c080e7          	jalr	-1492(ra) # 80001180 <_Z18mem_get_free_spacev>
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	ea8080e7          	jalr	-344(ra) # 80001604 <_Z11printNumberm>
    printString("\n");
    80001764:	00003517          	auipc	a0,0x3
    80001768:	91c50513          	addi	a0,a0,-1764 # 80004080 <CONSOLE_STATUS+0x70>
    8000176c:	00000097          	auipc	ra,0x0
    80001770:	e54080e7          	jalr	-428(ra) # 800015c0 <_Z11printStringPKc>

    mem_free(p1);
    80001774:	00048513          	mv	a0,s1
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	9dc080e7          	jalr	-1572(ra) # 80001154 <_Z8mem_freePv>
    printString("Freed p1\n");
    80001780:	00003517          	auipc	a0,0x3
    80001784:	8f850513          	addi	a0,a0,-1800 # 80004078 <CONSOLE_STATUS+0x68>
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	e38080e7          	jalr	-456(ra) # 800015c0 <_Z11printStringPKc>

    printString("Free space after free: ");
    80001790:	00003517          	auipc	a0,0x3
    80001794:	8f850513          	addi	a0,a0,-1800 # 80004088 <CONSOLE_STATUS+0x78>
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	e28080e7          	jalr	-472(ra) # 800015c0 <_Z11printStringPKc>
    printNumber(mem_get_free_space());
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	9e0080e7          	jalr	-1568(ra) # 80001180 <_Z18mem_get_free_spacev>
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	e5c080e7          	jalr	-420(ra) # 80001604 <_Z11printNumberm>
    printString("\n");
    800017b0:	00003517          	auipc	a0,0x3
    800017b4:	8d050513          	addi	a0,a0,-1840 # 80004080 <CONSOLE_STATUS+0x70>
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	e08080e7          	jalr	-504(ra) # 800015c0 <_Z11printStringPKc>
    // printString("Pre ecall\n");
    //
    // test_ecall();
    //
    // printString("After ecall\n");
}
    800017c0:	01813083          	ld	ra,24(sp)
    800017c4:	01013403          	ld	s0,16(sp)
    800017c8:	00813483          	ld	s1,8(sp)
    800017cc:	02010113          	addi	sp,sp,32
    800017d0:	00008067          	ret

00000000800017d4 <start>:
    800017d4:	ff010113          	addi	sp,sp,-16
    800017d8:	00813423          	sd	s0,8(sp)
    800017dc:	01010413          	addi	s0,sp,16
    800017e0:	300027f3          	csrr	a5,mstatus
    800017e4:	ffffe737          	lui	a4,0xffffe
    800017e8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8f5f>
    800017ec:	00e7f7b3          	and	a5,a5,a4
    800017f0:	00001737          	lui	a4,0x1
    800017f4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800017f8:	00e7e7b3          	or	a5,a5,a4
    800017fc:	30079073          	csrw	mstatus,a5
    80001800:	00000797          	auipc	a5,0x0
    80001804:	16078793          	addi	a5,a5,352 # 80001960 <system_main>
    80001808:	34179073          	csrw	mepc,a5
    8000180c:	00000793          	li	a5,0
    80001810:	18079073          	csrw	satp,a5
    80001814:	000107b7          	lui	a5,0x10
    80001818:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000181c:	30279073          	csrw	medeleg,a5
    80001820:	30379073          	csrw	mideleg,a5
    80001824:	104027f3          	csrr	a5,sie
    80001828:	2227e793          	ori	a5,a5,546
    8000182c:	10479073          	csrw	sie,a5
    80001830:	fff00793          	li	a5,-1
    80001834:	00a7d793          	srli	a5,a5,0xa
    80001838:	3b079073          	csrw	pmpaddr0,a5
    8000183c:	00f00793          	li	a5,15
    80001840:	3a079073          	csrw	pmpcfg0,a5
    80001844:	f14027f3          	csrr	a5,mhartid
    80001848:	0200c737          	lui	a4,0x200c
    8000184c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001850:	0007869b          	sext.w	a3,a5
    80001854:	00269713          	slli	a4,a3,0x2
    80001858:	000f4637          	lui	a2,0xf4
    8000185c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001860:	00d70733          	add	a4,a4,a3
    80001864:	0037979b          	slliw	a5,a5,0x3
    80001868:	020046b7          	lui	a3,0x2004
    8000186c:	00d787b3          	add	a5,a5,a3
    80001870:	00c585b3          	add	a1,a1,a2
    80001874:	00371693          	slli	a3,a4,0x3
    80001878:	00003717          	auipc	a4,0x3
    8000187c:	dd870713          	addi	a4,a4,-552 # 80004650 <timer_scratch>
    80001880:	00b7b023          	sd	a1,0(a5)
    80001884:	00d70733          	add	a4,a4,a3
    80001888:	00f73c23          	sd	a5,24(a4)
    8000188c:	02c73023          	sd	a2,32(a4)
    80001890:	34071073          	csrw	mscratch,a4
    80001894:	00000797          	auipc	a5,0x0
    80001898:	6ec78793          	addi	a5,a5,1772 # 80001f80 <timervec>
    8000189c:	30579073          	csrw	mtvec,a5
    800018a0:	300027f3          	csrr	a5,mstatus
    800018a4:	0087e793          	ori	a5,a5,8
    800018a8:	30079073          	csrw	mstatus,a5
    800018ac:	304027f3          	csrr	a5,mie
    800018b0:	0807e793          	ori	a5,a5,128
    800018b4:	30479073          	csrw	mie,a5
    800018b8:	f14027f3          	csrr	a5,mhartid
    800018bc:	0007879b          	sext.w	a5,a5
    800018c0:	00078213          	mv	tp,a5
    800018c4:	30200073          	mret
    800018c8:	00813403          	ld	s0,8(sp)
    800018cc:	01010113          	addi	sp,sp,16
    800018d0:	00008067          	ret

00000000800018d4 <timerinit>:
    800018d4:	ff010113          	addi	sp,sp,-16
    800018d8:	00813423          	sd	s0,8(sp)
    800018dc:	01010413          	addi	s0,sp,16
    800018e0:	f14027f3          	csrr	a5,mhartid
    800018e4:	0200c737          	lui	a4,0x200c
    800018e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800018ec:	0007869b          	sext.w	a3,a5
    800018f0:	00269713          	slli	a4,a3,0x2
    800018f4:	000f4637          	lui	a2,0xf4
    800018f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800018fc:	00d70733          	add	a4,a4,a3
    80001900:	0037979b          	slliw	a5,a5,0x3
    80001904:	020046b7          	lui	a3,0x2004
    80001908:	00d787b3          	add	a5,a5,a3
    8000190c:	00c585b3          	add	a1,a1,a2
    80001910:	00371693          	slli	a3,a4,0x3
    80001914:	00003717          	auipc	a4,0x3
    80001918:	d3c70713          	addi	a4,a4,-708 # 80004650 <timer_scratch>
    8000191c:	00b7b023          	sd	a1,0(a5)
    80001920:	00d70733          	add	a4,a4,a3
    80001924:	00f73c23          	sd	a5,24(a4)
    80001928:	02c73023          	sd	a2,32(a4)
    8000192c:	34071073          	csrw	mscratch,a4
    80001930:	00000797          	auipc	a5,0x0
    80001934:	65078793          	addi	a5,a5,1616 # 80001f80 <timervec>
    80001938:	30579073          	csrw	mtvec,a5
    8000193c:	300027f3          	csrr	a5,mstatus
    80001940:	0087e793          	ori	a5,a5,8
    80001944:	30079073          	csrw	mstatus,a5
    80001948:	304027f3          	csrr	a5,mie
    8000194c:	0807e793          	ori	a5,a5,128
    80001950:	30479073          	csrw	mie,a5
    80001954:	00813403          	ld	s0,8(sp)
    80001958:	01010113          	addi	sp,sp,16
    8000195c:	00008067          	ret

0000000080001960 <system_main>:
    80001960:	fe010113          	addi	sp,sp,-32
    80001964:	00813823          	sd	s0,16(sp)
    80001968:	00913423          	sd	s1,8(sp)
    8000196c:	00113c23          	sd	ra,24(sp)
    80001970:	02010413          	addi	s0,sp,32
    80001974:	00000097          	auipc	ra,0x0
    80001978:	0c4080e7          	jalr	196(ra) # 80001a38 <cpuid>
    8000197c:	00003497          	auipc	s1,0x3
    80001980:	c9448493          	addi	s1,s1,-876 # 80004610 <started>
    80001984:	02050263          	beqz	a0,800019a8 <system_main+0x48>
    80001988:	0004a783          	lw	a5,0(s1)
    8000198c:	0007879b          	sext.w	a5,a5
    80001990:	fe078ce3          	beqz	a5,80001988 <system_main+0x28>
    80001994:	0ff0000f          	fence
    80001998:	00002517          	auipc	a0,0x2
    8000199c:	73850513          	addi	a0,a0,1848 # 800040d0 <CONSOLE_STATUS+0xc0>
    800019a0:	00001097          	auipc	ra,0x1
    800019a4:	a7c080e7          	jalr	-1412(ra) # 8000241c <panic>
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	9d0080e7          	jalr	-1584(ra) # 80002378 <consoleinit>
    800019b0:	00001097          	auipc	ra,0x1
    800019b4:	15c080e7          	jalr	348(ra) # 80002b0c <printfinit>
    800019b8:	00002517          	auipc	a0,0x2
    800019bc:	6c850513          	addi	a0,a0,1736 # 80004080 <CONSOLE_STATUS+0x70>
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	ab8080e7          	jalr	-1352(ra) # 80002478 <__printf>
    800019c8:	00002517          	auipc	a0,0x2
    800019cc:	6d850513          	addi	a0,a0,1752 # 800040a0 <CONSOLE_STATUS+0x90>
    800019d0:	00001097          	auipc	ra,0x1
    800019d4:	aa8080e7          	jalr	-1368(ra) # 80002478 <__printf>
    800019d8:	00002517          	auipc	a0,0x2
    800019dc:	6a850513          	addi	a0,a0,1704 # 80004080 <CONSOLE_STATUS+0x70>
    800019e0:	00001097          	auipc	ra,0x1
    800019e4:	a98080e7          	jalr	-1384(ra) # 80002478 <__printf>
    800019e8:	00001097          	auipc	ra,0x1
    800019ec:	4b0080e7          	jalr	1200(ra) # 80002e98 <kinit>
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	148080e7          	jalr	328(ra) # 80001b38 <trapinit>
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	16c080e7          	jalr	364(ra) # 80001b64 <trapinithart>
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	5c0080e7          	jalr	1472(ra) # 80001fc0 <plicinit>
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	5e0080e7          	jalr	1504(ra) # 80001fe8 <plicinithart>
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	078080e7          	jalr	120(ra) # 80001a88 <userinit>
    80001a18:	0ff0000f          	fence
    80001a1c:	00100793          	li	a5,1
    80001a20:	00002517          	auipc	a0,0x2
    80001a24:	69850513          	addi	a0,a0,1688 # 800040b8 <CONSOLE_STATUS+0xa8>
    80001a28:	00f4a023          	sw	a5,0(s1)
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	a4c080e7          	jalr	-1460(ra) # 80002478 <__printf>
    80001a34:	0000006f          	j	80001a34 <system_main+0xd4>

0000000080001a38 <cpuid>:
    80001a38:	ff010113          	addi	sp,sp,-16
    80001a3c:	00813423          	sd	s0,8(sp)
    80001a40:	01010413          	addi	s0,sp,16
    80001a44:	00020513          	mv	a0,tp
    80001a48:	00813403          	ld	s0,8(sp)
    80001a4c:	0005051b          	sext.w	a0,a0
    80001a50:	01010113          	addi	sp,sp,16
    80001a54:	00008067          	ret

0000000080001a58 <mycpu>:
    80001a58:	ff010113          	addi	sp,sp,-16
    80001a5c:	00813423          	sd	s0,8(sp)
    80001a60:	01010413          	addi	s0,sp,16
    80001a64:	00020793          	mv	a5,tp
    80001a68:	00813403          	ld	s0,8(sp)
    80001a6c:	0007879b          	sext.w	a5,a5
    80001a70:	00779793          	slli	a5,a5,0x7
    80001a74:	00004517          	auipc	a0,0x4
    80001a78:	c0c50513          	addi	a0,a0,-1012 # 80005680 <cpus>
    80001a7c:	00f50533          	add	a0,a0,a5
    80001a80:	01010113          	addi	sp,sp,16
    80001a84:	00008067          	ret

0000000080001a88 <userinit>:
    80001a88:	ff010113          	addi	sp,sp,-16
    80001a8c:	00813423          	sd	s0,8(sp)
    80001a90:	01010413          	addi	s0,sp,16
    80001a94:	00813403          	ld	s0,8(sp)
    80001a98:	01010113          	addi	sp,sp,16
    80001a9c:	fffff317          	auipc	t1,0xfffff
    80001aa0:	72c30067          	jr	1836(t1) # 800011c8 <main>

0000000080001aa4 <either_copyout>:
    80001aa4:	ff010113          	addi	sp,sp,-16
    80001aa8:	00813023          	sd	s0,0(sp)
    80001aac:	00113423          	sd	ra,8(sp)
    80001ab0:	01010413          	addi	s0,sp,16
    80001ab4:	02051663          	bnez	a0,80001ae0 <either_copyout+0x3c>
    80001ab8:	00058513          	mv	a0,a1
    80001abc:	00060593          	mv	a1,a2
    80001ac0:	0006861b          	sext.w	a2,a3
    80001ac4:	00002097          	auipc	ra,0x2
    80001ac8:	c60080e7          	jalr	-928(ra) # 80003724 <__memmove>
    80001acc:	00813083          	ld	ra,8(sp)
    80001ad0:	00013403          	ld	s0,0(sp)
    80001ad4:	00000513          	li	a0,0
    80001ad8:	01010113          	addi	sp,sp,16
    80001adc:	00008067          	ret
    80001ae0:	00002517          	auipc	a0,0x2
    80001ae4:	61850513          	addi	a0,a0,1560 # 800040f8 <CONSOLE_STATUS+0xe8>
    80001ae8:	00001097          	auipc	ra,0x1
    80001aec:	934080e7          	jalr	-1740(ra) # 8000241c <panic>

0000000080001af0 <either_copyin>:
    80001af0:	ff010113          	addi	sp,sp,-16
    80001af4:	00813023          	sd	s0,0(sp)
    80001af8:	00113423          	sd	ra,8(sp)
    80001afc:	01010413          	addi	s0,sp,16
    80001b00:	02059463          	bnez	a1,80001b28 <either_copyin+0x38>
    80001b04:	00060593          	mv	a1,a2
    80001b08:	0006861b          	sext.w	a2,a3
    80001b0c:	00002097          	auipc	ra,0x2
    80001b10:	c18080e7          	jalr	-1000(ra) # 80003724 <__memmove>
    80001b14:	00813083          	ld	ra,8(sp)
    80001b18:	00013403          	ld	s0,0(sp)
    80001b1c:	00000513          	li	a0,0
    80001b20:	01010113          	addi	sp,sp,16
    80001b24:	00008067          	ret
    80001b28:	00002517          	auipc	a0,0x2
    80001b2c:	5f850513          	addi	a0,a0,1528 # 80004120 <CONSOLE_STATUS+0x110>
    80001b30:	00001097          	auipc	ra,0x1
    80001b34:	8ec080e7          	jalr	-1812(ra) # 8000241c <panic>

0000000080001b38 <trapinit>:
    80001b38:	ff010113          	addi	sp,sp,-16
    80001b3c:	00813423          	sd	s0,8(sp)
    80001b40:	01010413          	addi	s0,sp,16
    80001b44:	00813403          	ld	s0,8(sp)
    80001b48:	00002597          	auipc	a1,0x2
    80001b4c:	60058593          	addi	a1,a1,1536 # 80004148 <CONSOLE_STATUS+0x138>
    80001b50:	00004517          	auipc	a0,0x4
    80001b54:	bb050513          	addi	a0,a0,-1104 # 80005700 <tickslock>
    80001b58:	01010113          	addi	sp,sp,16
    80001b5c:	00001317          	auipc	t1,0x1
    80001b60:	5cc30067          	jr	1484(t1) # 80003128 <initlock>

0000000080001b64 <trapinithart>:
    80001b64:	ff010113          	addi	sp,sp,-16
    80001b68:	00813423          	sd	s0,8(sp)
    80001b6c:	01010413          	addi	s0,sp,16
    80001b70:	00000797          	auipc	a5,0x0
    80001b74:	30078793          	addi	a5,a5,768 # 80001e70 <kernelvec>
    80001b78:	10579073          	csrw	stvec,a5
    80001b7c:	00813403          	ld	s0,8(sp)
    80001b80:	01010113          	addi	sp,sp,16
    80001b84:	00008067          	ret

0000000080001b88 <usertrap>:
    80001b88:	ff010113          	addi	sp,sp,-16
    80001b8c:	00813423          	sd	s0,8(sp)
    80001b90:	01010413          	addi	s0,sp,16
    80001b94:	00813403          	ld	s0,8(sp)
    80001b98:	01010113          	addi	sp,sp,16
    80001b9c:	00008067          	ret

0000000080001ba0 <usertrapret>:
    80001ba0:	ff010113          	addi	sp,sp,-16
    80001ba4:	00813423          	sd	s0,8(sp)
    80001ba8:	01010413          	addi	s0,sp,16
    80001bac:	00813403          	ld	s0,8(sp)
    80001bb0:	01010113          	addi	sp,sp,16
    80001bb4:	00008067          	ret

0000000080001bb8 <kerneltrap>:
    80001bb8:	fe010113          	addi	sp,sp,-32
    80001bbc:	00813823          	sd	s0,16(sp)
    80001bc0:	00113c23          	sd	ra,24(sp)
    80001bc4:	00913423          	sd	s1,8(sp)
    80001bc8:	02010413          	addi	s0,sp,32
    80001bcc:	142025f3          	csrr	a1,scause
    80001bd0:	100027f3          	csrr	a5,sstatus
    80001bd4:	0027f793          	andi	a5,a5,2
    80001bd8:	10079c63          	bnez	a5,80001cf0 <kerneltrap+0x138>
    80001bdc:	142027f3          	csrr	a5,scause
    80001be0:	0207ce63          	bltz	a5,80001c1c <kerneltrap+0x64>
    80001be4:	00002517          	auipc	a0,0x2
    80001be8:	5ac50513          	addi	a0,a0,1452 # 80004190 <CONSOLE_STATUS+0x180>
    80001bec:	00001097          	auipc	ra,0x1
    80001bf0:	88c080e7          	jalr	-1908(ra) # 80002478 <__printf>
    80001bf4:	141025f3          	csrr	a1,sepc
    80001bf8:	14302673          	csrr	a2,stval
    80001bfc:	00002517          	auipc	a0,0x2
    80001c00:	5a450513          	addi	a0,a0,1444 # 800041a0 <CONSOLE_STATUS+0x190>
    80001c04:	00001097          	auipc	ra,0x1
    80001c08:	874080e7          	jalr	-1932(ra) # 80002478 <__printf>
    80001c0c:	00002517          	auipc	a0,0x2
    80001c10:	5ac50513          	addi	a0,a0,1452 # 800041b8 <CONSOLE_STATUS+0x1a8>
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	808080e7          	jalr	-2040(ra) # 8000241c <panic>
    80001c1c:	0ff7f713          	andi	a4,a5,255
    80001c20:	00900693          	li	a3,9
    80001c24:	04d70063          	beq	a4,a3,80001c64 <kerneltrap+0xac>
    80001c28:	fff00713          	li	a4,-1
    80001c2c:	03f71713          	slli	a4,a4,0x3f
    80001c30:	00170713          	addi	a4,a4,1
    80001c34:	fae798e3          	bne	a5,a4,80001be4 <kerneltrap+0x2c>
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	e00080e7          	jalr	-512(ra) # 80001a38 <cpuid>
    80001c40:	06050663          	beqz	a0,80001cac <kerneltrap+0xf4>
    80001c44:	144027f3          	csrr	a5,sip
    80001c48:	ffd7f793          	andi	a5,a5,-3
    80001c4c:	14479073          	csrw	sip,a5
    80001c50:	01813083          	ld	ra,24(sp)
    80001c54:	01013403          	ld	s0,16(sp)
    80001c58:	00813483          	ld	s1,8(sp)
    80001c5c:	02010113          	addi	sp,sp,32
    80001c60:	00008067          	ret
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	3d0080e7          	jalr	976(ra) # 80002034 <plic_claim>
    80001c6c:	00a00793          	li	a5,10
    80001c70:	00050493          	mv	s1,a0
    80001c74:	06f50863          	beq	a0,a5,80001ce4 <kerneltrap+0x12c>
    80001c78:	fc050ce3          	beqz	a0,80001c50 <kerneltrap+0x98>
    80001c7c:	00050593          	mv	a1,a0
    80001c80:	00002517          	auipc	a0,0x2
    80001c84:	4f050513          	addi	a0,a0,1264 # 80004170 <CONSOLE_STATUS+0x160>
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	7f0080e7          	jalr	2032(ra) # 80002478 <__printf>
    80001c90:	01013403          	ld	s0,16(sp)
    80001c94:	01813083          	ld	ra,24(sp)
    80001c98:	00048513          	mv	a0,s1
    80001c9c:	00813483          	ld	s1,8(sp)
    80001ca0:	02010113          	addi	sp,sp,32
    80001ca4:	00000317          	auipc	t1,0x0
    80001ca8:	3c830067          	jr	968(t1) # 8000206c <plic_complete>
    80001cac:	00004517          	auipc	a0,0x4
    80001cb0:	a5450513          	addi	a0,a0,-1452 # 80005700 <tickslock>
    80001cb4:	00001097          	auipc	ra,0x1
    80001cb8:	498080e7          	jalr	1176(ra) # 8000314c <acquire>
    80001cbc:	00003717          	auipc	a4,0x3
    80001cc0:	95870713          	addi	a4,a4,-1704 # 80004614 <ticks>
    80001cc4:	00072783          	lw	a5,0(a4)
    80001cc8:	00004517          	auipc	a0,0x4
    80001ccc:	a3850513          	addi	a0,a0,-1480 # 80005700 <tickslock>
    80001cd0:	0017879b          	addiw	a5,a5,1
    80001cd4:	00f72023          	sw	a5,0(a4)
    80001cd8:	00001097          	auipc	ra,0x1
    80001cdc:	540080e7          	jalr	1344(ra) # 80003218 <release>
    80001ce0:	f65ff06f          	j	80001c44 <kerneltrap+0x8c>
    80001ce4:	00001097          	auipc	ra,0x1
    80001ce8:	09c080e7          	jalr	156(ra) # 80002d80 <uartintr>
    80001cec:	fa5ff06f          	j	80001c90 <kerneltrap+0xd8>
    80001cf0:	00002517          	auipc	a0,0x2
    80001cf4:	46050513          	addi	a0,a0,1120 # 80004150 <CONSOLE_STATUS+0x140>
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	724080e7          	jalr	1828(ra) # 8000241c <panic>

0000000080001d00 <clockintr>:
    80001d00:	fe010113          	addi	sp,sp,-32
    80001d04:	00813823          	sd	s0,16(sp)
    80001d08:	00913423          	sd	s1,8(sp)
    80001d0c:	00113c23          	sd	ra,24(sp)
    80001d10:	02010413          	addi	s0,sp,32
    80001d14:	00004497          	auipc	s1,0x4
    80001d18:	9ec48493          	addi	s1,s1,-1556 # 80005700 <tickslock>
    80001d1c:	00048513          	mv	a0,s1
    80001d20:	00001097          	auipc	ra,0x1
    80001d24:	42c080e7          	jalr	1068(ra) # 8000314c <acquire>
    80001d28:	00003717          	auipc	a4,0x3
    80001d2c:	8ec70713          	addi	a4,a4,-1812 # 80004614 <ticks>
    80001d30:	00072783          	lw	a5,0(a4)
    80001d34:	01013403          	ld	s0,16(sp)
    80001d38:	01813083          	ld	ra,24(sp)
    80001d3c:	00048513          	mv	a0,s1
    80001d40:	0017879b          	addiw	a5,a5,1
    80001d44:	00813483          	ld	s1,8(sp)
    80001d48:	00f72023          	sw	a5,0(a4)
    80001d4c:	02010113          	addi	sp,sp,32
    80001d50:	00001317          	auipc	t1,0x1
    80001d54:	4c830067          	jr	1224(t1) # 80003218 <release>

0000000080001d58 <devintr>:
    80001d58:	142027f3          	csrr	a5,scause
    80001d5c:	00000513          	li	a0,0
    80001d60:	0007c463          	bltz	a5,80001d68 <devintr+0x10>
    80001d64:	00008067          	ret
    80001d68:	fe010113          	addi	sp,sp,-32
    80001d6c:	00813823          	sd	s0,16(sp)
    80001d70:	00113c23          	sd	ra,24(sp)
    80001d74:	00913423          	sd	s1,8(sp)
    80001d78:	02010413          	addi	s0,sp,32
    80001d7c:	0ff7f713          	andi	a4,a5,255
    80001d80:	00900693          	li	a3,9
    80001d84:	04d70c63          	beq	a4,a3,80001ddc <devintr+0x84>
    80001d88:	fff00713          	li	a4,-1
    80001d8c:	03f71713          	slli	a4,a4,0x3f
    80001d90:	00170713          	addi	a4,a4,1
    80001d94:	00e78c63          	beq	a5,a4,80001dac <devintr+0x54>
    80001d98:	01813083          	ld	ra,24(sp)
    80001d9c:	01013403          	ld	s0,16(sp)
    80001da0:	00813483          	ld	s1,8(sp)
    80001da4:	02010113          	addi	sp,sp,32
    80001da8:	00008067          	ret
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	c8c080e7          	jalr	-884(ra) # 80001a38 <cpuid>
    80001db4:	06050663          	beqz	a0,80001e20 <devintr+0xc8>
    80001db8:	144027f3          	csrr	a5,sip
    80001dbc:	ffd7f793          	andi	a5,a5,-3
    80001dc0:	14479073          	csrw	sip,a5
    80001dc4:	01813083          	ld	ra,24(sp)
    80001dc8:	01013403          	ld	s0,16(sp)
    80001dcc:	00813483          	ld	s1,8(sp)
    80001dd0:	00200513          	li	a0,2
    80001dd4:	02010113          	addi	sp,sp,32
    80001dd8:	00008067          	ret
    80001ddc:	00000097          	auipc	ra,0x0
    80001de0:	258080e7          	jalr	600(ra) # 80002034 <plic_claim>
    80001de4:	00a00793          	li	a5,10
    80001de8:	00050493          	mv	s1,a0
    80001dec:	06f50663          	beq	a0,a5,80001e58 <devintr+0x100>
    80001df0:	00100513          	li	a0,1
    80001df4:	fa0482e3          	beqz	s1,80001d98 <devintr+0x40>
    80001df8:	00048593          	mv	a1,s1
    80001dfc:	00002517          	auipc	a0,0x2
    80001e00:	37450513          	addi	a0,a0,884 # 80004170 <CONSOLE_STATUS+0x160>
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	674080e7          	jalr	1652(ra) # 80002478 <__printf>
    80001e0c:	00048513          	mv	a0,s1
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	25c080e7          	jalr	604(ra) # 8000206c <plic_complete>
    80001e18:	00100513          	li	a0,1
    80001e1c:	f7dff06f          	j	80001d98 <devintr+0x40>
    80001e20:	00004517          	auipc	a0,0x4
    80001e24:	8e050513          	addi	a0,a0,-1824 # 80005700 <tickslock>
    80001e28:	00001097          	auipc	ra,0x1
    80001e2c:	324080e7          	jalr	804(ra) # 8000314c <acquire>
    80001e30:	00002717          	auipc	a4,0x2
    80001e34:	7e470713          	addi	a4,a4,2020 # 80004614 <ticks>
    80001e38:	00072783          	lw	a5,0(a4)
    80001e3c:	00004517          	auipc	a0,0x4
    80001e40:	8c450513          	addi	a0,a0,-1852 # 80005700 <tickslock>
    80001e44:	0017879b          	addiw	a5,a5,1
    80001e48:	00f72023          	sw	a5,0(a4)
    80001e4c:	00001097          	auipc	ra,0x1
    80001e50:	3cc080e7          	jalr	972(ra) # 80003218 <release>
    80001e54:	f65ff06f          	j	80001db8 <devintr+0x60>
    80001e58:	00001097          	auipc	ra,0x1
    80001e5c:	f28080e7          	jalr	-216(ra) # 80002d80 <uartintr>
    80001e60:	fadff06f          	j	80001e0c <devintr+0xb4>
	...

0000000080001e70 <kernelvec>:
    80001e70:	f0010113          	addi	sp,sp,-256
    80001e74:	00113023          	sd	ra,0(sp)
    80001e78:	00213423          	sd	sp,8(sp)
    80001e7c:	00313823          	sd	gp,16(sp)
    80001e80:	00413c23          	sd	tp,24(sp)
    80001e84:	02513023          	sd	t0,32(sp)
    80001e88:	02613423          	sd	t1,40(sp)
    80001e8c:	02713823          	sd	t2,48(sp)
    80001e90:	02813c23          	sd	s0,56(sp)
    80001e94:	04913023          	sd	s1,64(sp)
    80001e98:	04a13423          	sd	a0,72(sp)
    80001e9c:	04b13823          	sd	a1,80(sp)
    80001ea0:	04c13c23          	sd	a2,88(sp)
    80001ea4:	06d13023          	sd	a3,96(sp)
    80001ea8:	06e13423          	sd	a4,104(sp)
    80001eac:	06f13823          	sd	a5,112(sp)
    80001eb0:	07013c23          	sd	a6,120(sp)
    80001eb4:	09113023          	sd	a7,128(sp)
    80001eb8:	09213423          	sd	s2,136(sp)
    80001ebc:	09313823          	sd	s3,144(sp)
    80001ec0:	09413c23          	sd	s4,152(sp)
    80001ec4:	0b513023          	sd	s5,160(sp)
    80001ec8:	0b613423          	sd	s6,168(sp)
    80001ecc:	0b713823          	sd	s7,176(sp)
    80001ed0:	0b813c23          	sd	s8,184(sp)
    80001ed4:	0d913023          	sd	s9,192(sp)
    80001ed8:	0da13423          	sd	s10,200(sp)
    80001edc:	0db13823          	sd	s11,208(sp)
    80001ee0:	0dc13c23          	sd	t3,216(sp)
    80001ee4:	0fd13023          	sd	t4,224(sp)
    80001ee8:	0fe13423          	sd	t5,232(sp)
    80001eec:	0ff13823          	sd	t6,240(sp)
    80001ef0:	cc9ff0ef          	jal	ra,80001bb8 <kerneltrap>
    80001ef4:	00013083          	ld	ra,0(sp)
    80001ef8:	00813103          	ld	sp,8(sp)
    80001efc:	01013183          	ld	gp,16(sp)
    80001f00:	02013283          	ld	t0,32(sp)
    80001f04:	02813303          	ld	t1,40(sp)
    80001f08:	03013383          	ld	t2,48(sp)
    80001f0c:	03813403          	ld	s0,56(sp)
    80001f10:	04013483          	ld	s1,64(sp)
    80001f14:	04813503          	ld	a0,72(sp)
    80001f18:	05013583          	ld	a1,80(sp)
    80001f1c:	05813603          	ld	a2,88(sp)
    80001f20:	06013683          	ld	a3,96(sp)
    80001f24:	06813703          	ld	a4,104(sp)
    80001f28:	07013783          	ld	a5,112(sp)
    80001f2c:	07813803          	ld	a6,120(sp)
    80001f30:	08013883          	ld	a7,128(sp)
    80001f34:	08813903          	ld	s2,136(sp)
    80001f38:	09013983          	ld	s3,144(sp)
    80001f3c:	09813a03          	ld	s4,152(sp)
    80001f40:	0a013a83          	ld	s5,160(sp)
    80001f44:	0a813b03          	ld	s6,168(sp)
    80001f48:	0b013b83          	ld	s7,176(sp)
    80001f4c:	0b813c03          	ld	s8,184(sp)
    80001f50:	0c013c83          	ld	s9,192(sp)
    80001f54:	0c813d03          	ld	s10,200(sp)
    80001f58:	0d013d83          	ld	s11,208(sp)
    80001f5c:	0d813e03          	ld	t3,216(sp)
    80001f60:	0e013e83          	ld	t4,224(sp)
    80001f64:	0e813f03          	ld	t5,232(sp)
    80001f68:	0f013f83          	ld	t6,240(sp)
    80001f6c:	10010113          	addi	sp,sp,256
    80001f70:	10200073          	sret
    80001f74:	00000013          	nop
    80001f78:	00000013          	nop
    80001f7c:	00000013          	nop

0000000080001f80 <timervec>:
    80001f80:	34051573          	csrrw	a0,mscratch,a0
    80001f84:	00b53023          	sd	a1,0(a0)
    80001f88:	00c53423          	sd	a2,8(a0)
    80001f8c:	00d53823          	sd	a3,16(a0)
    80001f90:	01853583          	ld	a1,24(a0)
    80001f94:	02053603          	ld	a2,32(a0)
    80001f98:	0005b683          	ld	a3,0(a1)
    80001f9c:	00c686b3          	add	a3,a3,a2
    80001fa0:	00d5b023          	sd	a3,0(a1)
    80001fa4:	00200593          	li	a1,2
    80001fa8:	14459073          	csrw	sip,a1
    80001fac:	01053683          	ld	a3,16(a0)
    80001fb0:	00853603          	ld	a2,8(a0)
    80001fb4:	00053583          	ld	a1,0(a0)
    80001fb8:	34051573          	csrrw	a0,mscratch,a0
    80001fbc:	30200073          	mret

0000000080001fc0 <plicinit>:
    80001fc0:	ff010113          	addi	sp,sp,-16
    80001fc4:	00813423          	sd	s0,8(sp)
    80001fc8:	01010413          	addi	s0,sp,16
    80001fcc:	00813403          	ld	s0,8(sp)
    80001fd0:	0c0007b7          	lui	a5,0xc000
    80001fd4:	00100713          	li	a4,1
    80001fd8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001fdc:	00e7a223          	sw	a4,4(a5)
    80001fe0:	01010113          	addi	sp,sp,16
    80001fe4:	00008067          	ret

0000000080001fe8 <plicinithart>:
    80001fe8:	ff010113          	addi	sp,sp,-16
    80001fec:	00813023          	sd	s0,0(sp)
    80001ff0:	00113423          	sd	ra,8(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    80001ff8:	00000097          	auipc	ra,0x0
    80001ffc:	a40080e7          	jalr	-1472(ra) # 80001a38 <cpuid>
    80002000:	0085171b          	slliw	a4,a0,0x8
    80002004:	0c0027b7          	lui	a5,0xc002
    80002008:	00e787b3          	add	a5,a5,a4
    8000200c:	40200713          	li	a4,1026
    80002010:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002014:	00813083          	ld	ra,8(sp)
    80002018:	00013403          	ld	s0,0(sp)
    8000201c:	00d5151b          	slliw	a0,a0,0xd
    80002020:	0c2017b7          	lui	a5,0xc201
    80002024:	00a78533          	add	a0,a5,a0
    80002028:	00052023          	sw	zero,0(a0)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <plic_claim>:
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00813023          	sd	s0,0(sp)
    8000203c:	00113423          	sd	ra,8(sp)
    80002040:	01010413          	addi	s0,sp,16
    80002044:	00000097          	auipc	ra,0x0
    80002048:	9f4080e7          	jalr	-1548(ra) # 80001a38 <cpuid>
    8000204c:	00813083          	ld	ra,8(sp)
    80002050:	00013403          	ld	s0,0(sp)
    80002054:	00d5151b          	slliw	a0,a0,0xd
    80002058:	0c2017b7          	lui	a5,0xc201
    8000205c:	00a78533          	add	a0,a5,a0
    80002060:	00452503          	lw	a0,4(a0)
    80002064:	01010113          	addi	sp,sp,16
    80002068:	00008067          	ret

000000008000206c <plic_complete>:
    8000206c:	fe010113          	addi	sp,sp,-32
    80002070:	00813823          	sd	s0,16(sp)
    80002074:	00913423          	sd	s1,8(sp)
    80002078:	00113c23          	sd	ra,24(sp)
    8000207c:	02010413          	addi	s0,sp,32
    80002080:	00050493          	mv	s1,a0
    80002084:	00000097          	auipc	ra,0x0
    80002088:	9b4080e7          	jalr	-1612(ra) # 80001a38 <cpuid>
    8000208c:	01813083          	ld	ra,24(sp)
    80002090:	01013403          	ld	s0,16(sp)
    80002094:	00d5179b          	slliw	a5,a0,0xd
    80002098:	0c201737          	lui	a4,0xc201
    8000209c:	00f707b3          	add	a5,a4,a5
    800020a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800020a4:	00813483          	ld	s1,8(sp)
    800020a8:	02010113          	addi	sp,sp,32
    800020ac:	00008067          	ret

00000000800020b0 <consolewrite>:
    800020b0:	fb010113          	addi	sp,sp,-80
    800020b4:	04813023          	sd	s0,64(sp)
    800020b8:	04113423          	sd	ra,72(sp)
    800020bc:	02913c23          	sd	s1,56(sp)
    800020c0:	03213823          	sd	s2,48(sp)
    800020c4:	03313423          	sd	s3,40(sp)
    800020c8:	03413023          	sd	s4,32(sp)
    800020cc:	01513c23          	sd	s5,24(sp)
    800020d0:	05010413          	addi	s0,sp,80
    800020d4:	06c05c63          	blez	a2,8000214c <consolewrite+0x9c>
    800020d8:	00060993          	mv	s3,a2
    800020dc:	00050a13          	mv	s4,a0
    800020e0:	00058493          	mv	s1,a1
    800020e4:	00000913          	li	s2,0
    800020e8:	fff00a93          	li	s5,-1
    800020ec:	01c0006f          	j	80002108 <consolewrite+0x58>
    800020f0:	fbf44503          	lbu	a0,-65(s0)
    800020f4:	0019091b          	addiw	s2,s2,1
    800020f8:	00148493          	addi	s1,s1,1
    800020fc:	00001097          	auipc	ra,0x1
    80002100:	a9c080e7          	jalr	-1380(ra) # 80002b98 <uartputc>
    80002104:	03298063          	beq	s3,s2,80002124 <consolewrite+0x74>
    80002108:	00048613          	mv	a2,s1
    8000210c:	00100693          	li	a3,1
    80002110:	000a0593          	mv	a1,s4
    80002114:	fbf40513          	addi	a0,s0,-65
    80002118:	00000097          	auipc	ra,0x0
    8000211c:	9d8080e7          	jalr	-1576(ra) # 80001af0 <either_copyin>
    80002120:	fd5518e3          	bne	a0,s5,800020f0 <consolewrite+0x40>
    80002124:	04813083          	ld	ra,72(sp)
    80002128:	04013403          	ld	s0,64(sp)
    8000212c:	03813483          	ld	s1,56(sp)
    80002130:	02813983          	ld	s3,40(sp)
    80002134:	02013a03          	ld	s4,32(sp)
    80002138:	01813a83          	ld	s5,24(sp)
    8000213c:	00090513          	mv	a0,s2
    80002140:	03013903          	ld	s2,48(sp)
    80002144:	05010113          	addi	sp,sp,80
    80002148:	00008067          	ret
    8000214c:	00000913          	li	s2,0
    80002150:	fd5ff06f          	j	80002124 <consolewrite+0x74>

0000000080002154 <consoleread>:
    80002154:	f9010113          	addi	sp,sp,-112
    80002158:	06813023          	sd	s0,96(sp)
    8000215c:	04913c23          	sd	s1,88(sp)
    80002160:	05213823          	sd	s2,80(sp)
    80002164:	05313423          	sd	s3,72(sp)
    80002168:	05413023          	sd	s4,64(sp)
    8000216c:	03513c23          	sd	s5,56(sp)
    80002170:	03613823          	sd	s6,48(sp)
    80002174:	03713423          	sd	s7,40(sp)
    80002178:	03813023          	sd	s8,32(sp)
    8000217c:	06113423          	sd	ra,104(sp)
    80002180:	01913c23          	sd	s9,24(sp)
    80002184:	07010413          	addi	s0,sp,112
    80002188:	00060b93          	mv	s7,a2
    8000218c:	00050913          	mv	s2,a0
    80002190:	00058c13          	mv	s8,a1
    80002194:	00060b1b          	sext.w	s6,a2
    80002198:	00003497          	auipc	s1,0x3
    8000219c:	58048493          	addi	s1,s1,1408 # 80005718 <cons>
    800021a0:	00400993          	li	s3,4
    800021a4:	fff00a13          	li	s4,-1
    800021a8:	00a00a93          	li	s5,10
    800021ac:	05705e63          	blez	s7,80002208 <consoleread+0xb4>
    800021b0:	09c4a703          	lw	a4,156(s1)
    800021b4:	0984a783          	lw	a5,152(s1)
    800021b8:	0007071b          	sext.w	a4,a4
    800021bc:	08e78463          	beq	a5,a4,80002244 <consoleread+0xf0>
    800021c0:	07f7f713          	andi	a4,a5,127
    800021c4:	00e48733          	add	a4,s1,a4
    800021c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800021cc:	0017869b          	addiw	a3,a5,1
    800021d0:	08d4ac23          	sw	a3,152(s1)
    800021d4:	00070c9b          	sext.w	s9,a4
    800021d8:	0b370663          	beq	a4,s3,80002284 <consoleread+0x130>
    800021dc:	00100693          	li	a3,1
    800021e0:	f9f40613          	addi	a2,s0,-97
    800021e4:	000c0593          	mv	a1,s8
    800021e8:	00090513          	mv	a0,s2
    800021ec:	f8e40fa3          	sb	a4,-97(s0)
    800021f0:	00000097          	auipc	ra,0x0
    800021f4:	8b4080e7          	jalr	-1868(ra) # 80001aa4 <either_copyout>
    800021f8:	01450863          	beq	a0,s4,80002208 <consoleread+0xb4>
    800021fc:	001c0c13          	addi	s8,s8,1
    80002200:	fffb8b9b          	addiw	s7,s7,-1
    80002204:	fb5c94e3          	bne	s9,s5,800021ac <consoleread+0x58>
    80002208:	000b851b          	sext.w	a0,s7
    8000220c:	06813083          	ld	ra,104(sp)
    80002210:	06013403          	ld	s0,96(sp)
    80002214:	05813483          	ld	s1,88(sp)
    80002218:	05013903          	ld	s2,80(sp)
    8000221c:	04813983          	ld	s3,72(sp)
    80002220:	04013a03          	ld	s4,64(sp)
    80002224:	03813a83          	ld	s5,56(sp)
    80002228:	02813b83          	ld	s7,40(sp)
    8000222c:	02013c03          	ld	s8,32(sp)
    80002230:	01813c83          	ld	s9,24(sp)
    80002234:	40ab053b          	subw	a0,s6,a0
    80002238:	03013b03          	ld	s6,48(sp)
    8000223c:	07010113          	addi	sp,sp,112
    80002240:	00008067          	ret
    80002244:	00001097          	auipc	ra,0x1
    80002248:	1d8080e7          	jalr	472(ra) # 8000341c <push_on>
    8000224c:	0984a703          	lw	a4,152(s1)
    80002250:	09c4a783          	lw	a5,156(s1)
    80002254:	0007879b          	sext.w	a5,a5
    80002258:	fef70ce3          	beq	a4,a5,80002250 <consoleread+0xfc>
    8000225c:	00001097          	auipc	ra,0x1
    80002260:	234080e7          	jalr	564(ra) # 80003490 <pop_on>
    80002264:	0984a783          	lw	a5,152(s1)
    80002268:	07f7f713          	andi	a4,a5,127
    8000226c:	00e48733          	add	a4,s1,a4
    80002270:	01874703          	lbu	a4,24(a4)
    80002274:	0017869b          	addiw	a3,a5,1
    80002278:	08d4ac23          	sw	a3,152(s1)
    8000227c:	00070c9b          	sext.w	s9,a4
    80002280:	f5371ee3          	bne	a4,s3,800021dc <consoleread+0x88>
    80002284:	000b851b          	sext.w	a0,s7
    80002288:	f96bf2e3          	bgeu	s7,s6,8000220c <consoleread+0xb8>
    8000228c:	08f4ac23          	sw	a5,152(s1)
    80002290:	f7dff06f          	j	8000220c <consoleread+0xb8>

0000000080002294 <consputc>:
    80002294:	10000793          	li	a5,256
    80002298:	00f50663          	beq	a0,a5,800022a4 <consputc+0x10>
    8000229c:	00001317          	auipc	t1,0x1
    800022a0:	9f430067          	jr	-1548(t1) # 80002c90 <uartputc_sync>
    800022a4:	ff010113          	addi	sp,sp,-16
    800022a8:	00113423          	sd	ra,8(sp)
    800022ac:	00813023          	sd	s0,0(sp)
    800022b0:	01010413          	addi	s0,sp,16
    800022b4:	00800513          	li	a0,8
    800022b8:	00001097          	auipc	ra,0x1
    800022bc:	9d8080e7          	jalr	-1576(ra) # 80002c90 <uartputc_sync>
    800022c0:	02000513          	li	a0,32
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	9cc080e7          	jalr	-1588(ra) # 80002c90 <uartputc_sync>
    800022cc:	00013403          	ld	s0,0(sp)
    800022d0:	00813083          	ld	ra,8(sp)
    800022d4:	00800513          	li	a0,8
    800022d8:	01010113          	addi	sp,sp,16
    800022dc:	00001317          	auipc	t1,0x1
    800022e0:	9b430067          	jr	-1612(t1) # 80002c90 <uartputc_sync>

00000000800022e4 <consoleintr>:
    800022e4:	fe010113          	addi	sp,sp,-32
    800022e8:	00813823          	sd	s0,16(sp)
    800022ec:	00913423          	sd	s1,8(sp)
    800022f0:	01213023          	sd	s2,0(sp)
    800022f4:	00113c23          	sd	ra,24(sp)
    800022f8:	02010413          	addi	s0,sp,32
    800022fc:	00003917          	auipc	s2,0x3
    80002300:	41c90913          	addi	s2,s2,1052 # 80005718 <cons>
    80002304:	00050493          	mv	s1,a0
    80002308:	00090513          	mv	a0,s2
    8000230c:	00001097          	auipc	ra,0x1
    80002310:	e40080e7          	jalr	-448(ra) # 8000314c <acquire>
    80002314:	02048c63          	beqz	s1,8000234c <consoleintr+0x68>
    80002318:	0a092783          	lw	a5,160(s2)
    8000231c:	09892703          	lw	a4,152(s2)
    80002320:	07f00693          	li	a3,127
    80002324:	40e7873b          	subw	a4,a5,a4
    80002328:	02e6e263          	bltu	a3,a4,8000234c <consoleintr+0x68>
    8000232c:	00d00713          	li	a4,13
    80002330:	04e48063          	beq	s1,a4,80002370 <consoleintr+0x8c>
    80002334:	07f7f713          	andi	a4,a5,127
    80002338:	00e90733          	add	a4,s2,a4
    8000233c:	0017879b          	addiw	a5,a5,1
    80002340:	0af92023          	sw	a5,160(s2)
    80002344:	00970c23          	sb	s1,24(a4)
    80002348:	08f92e23          	sw	a5,156(s2)
    8000234c:	01013403          	ld	s0,16(sp)
    80002350:	01813083          	ld	ra,24(sp)
    80002354:	00813483          	ld	s1,8(sp)
    80002358:	00013903          	ld	s2,0(sp)
    8000235c:	00003517          	auipc	a0,0x3
    80002360:	3bc50513          	addi	a0,a0,956 # 80005718 <cons>
    80002364:	02010113          	addi	sp,sp,32
    80002368:	00001317          	auipc	t1,0x1
    8000236c:	eb030067          	jr	-336(t1) # 80003218 <release>
    80002370:	00a00493          	li	s1,10
    80002374:	fc1ff06f          	j	80002334 <consoleintr+0x50>

0000000080002378 <consoleinit>:
    80002378:	fe010113          	addi	sp,sp,-32
    8000237c:	00113c23          	sd	ra,24(sp)
    80002380:	00813823          	sd	s0,16(sp)
    80002384:	00913423          	sd	s1,8(sp)
    80002388:	02010413          	addi	s0,sp,32
    8000238c:	00003497          	auipc	s1,0x3
    80002390:	38c48493          	addi	s1,s1,908 # 80005718 <cons>
    80002394:	00048513          	mv	a0,s1
    80002398:	00002597          	auipc	a1,0x2
    8000239c:	e3058593          	addi	a1,a1,-464 # 800041c8 <CONSOLE_STATUS+0x1b8>
    800023a0:	00001097          	auipc	ra,0x1
    800023a4:	d88080e7          	jalr	-632(ra) # 80003128 <initlock>
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	7ac080e7          	jalr	1964(ra) # 80002b54 <uartinit>
    800023b0:	01813083          	ld	ra,24(sp)
    800023b4:	01013403          	ld	s0,16(sp)
    800023b8:	00000797          	auipc	a5,0x0
    800023bc:	d9c78793          	addi	a5,a5,-612 # 80002154 <consoleread>
    800023c0:	0af4bc23          	sd	a5,184(s1)
    800023c4:	00000797          	auipc	a5,0x0
    800023c8:	cec78793          	addi	a5,a5,-788 # 800020b0 <consolewrite>
    800023cc:	0cf4b023          	sd	a5,192(s1)
    800023d0:	00813483          	ld	s1,8(sp)
    800023d4:	02010113          	addi	sp,sp,32
    800023d8:	00008067          	ret

00000000800023dc <console_read>:
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00813423          	sd	s0,8(sp)
    800023e4:	01010413          	addi	s0,sp,16
    800023e8:	00813403          	ld	s0,8(sp)
    800023ec:	00003317          	auipc	t1,0x3
    800023f0:	3e433303          	ld	t1,996(t1) # 800057d0 <devsw+0x10>
    800023f4:	01010113          	addi	sp,sp,16
    800023f8:	00030067          	jr	t1

00000000800023fc <console_write>:
    800023fc:	ff010113          	addi	sp,sp,-16
    80002400:	00813423          	sd	s0,8(sp)
    80002404:	01010413          	addi	s0,sp,16
    80002408:	00813403          	ld	s0,8(sp)
    8000240c:	00003317          	auipc	t1,0x3
    80002410:	3cc33303          	ld	t1,972(t1) # 800057d8 <devsw+0x18>
    80002414:	01010113          	addi	sp,sp,16
    80002418:	00030067          	jr	t1

000000008000241c <panic>:
    8000241c:	fe010113          	addi	sp,sp,-32
    80002420:	00113c23          	sd	ra,24(sp)
    80002424:	00813823          	sd	s0,16(sp)
    80002428:	00913423          	sd	s1,8(sp)
    8000242c:	02010413          	addi	s0,sp,32
    80002430:	00050493          	mv	s1,a0
    80002434:	00002517          	auipc	a0,0x2
    80002438:	d9c50513          	addi	a0,a0,-612 # 800041d0 <CONSOLE_STATUS+0x1c0>
    8000243c:	00003797          	auipc	a5,0x3
    80002440:	4207ae23          	sw	zero,1084(a5) # 80005878 <pr+0x18>
    80002444:	00000097          	auipc	ra,0x0
    80002448:	034080e7          	jalr	52(ra) # 80002478 <__printf>
    8000244c:	00048513          	mv	a0,s1
    80002450:	00000097          	auipc	ra,0x0
    80002454:	028080e7          	jalr	40(ra) # 80002478 <__printf>
    80002458:	00002517          	auipc	a0,0x2
    8000245c:	c2850513          	addi	a0,a0,-984 # 80004080 <CONSOLE_STATUS+0x70>
    80002460:	00000097          	auipc	ra,0x0
    80002464:	018080e7          	jalr	24(ra) # 80002478 <__printf>
    80002468:	00100793          	li	a5,1
    8000246c:	00002717          	auipc	a4,0x2
    80002470:	1af72623          	sw	a5,428(a4) # 80004618 <panicked>
    80002474:	0000006f          	j	80002474 <panic+0x58>

0000000080002478 <__printf>:
    80002478:	f3010113          	addi	sp,sp,-208
    8000247c:	08813023          	sd	s0,128(sp)
    80002480:	07313423          	sd	s3,104(sp)
    80002484:	09010413          	addi	s0,sp,144
    80002488:	05813023          	sd	s8,64(sp)
    8000248c:	08113423          	sd	ra,136(sp)
    80002490:	06913c23          	sd	s1,120(sp)
    80002494:	07213823          	sd	s2,112(sp)
    80002498:	07413023          	sd	s4,96(sp)
    8000249c:	05513c23          	sd	s5,88(sp)
    800024a0:	05613823          	sd	s6,80(sp)
    800024a4:	05713423          	sd	s7,72(sp)
    800024a8:	03913c23          	sd	s9,56(sp)
    800024ac:	03a13823          	sd	s10,48(sp)
    800024b0:	03b13423          	sd	s11,40(sp)
    800024b4:	00003317          	auipc	t1,0x3
    800024b8:	3ac30313          	addi	t1,t1,940 # 80005860 <pr>
    800024bc:	01832c03          	lw	s8,24(t1)
    800024c0:	00b43423          	sd	a1,8(s0)
    800024c4:	00c43823          	sd	a2,16(s0)
    800024c8:	00d43c23          	sd	a3,24(s0)
    800024cc:	02e43023          	sd	a4,32(s0)
    800024d0:	02f43423          	sd	a5,40(s0)
    800024d4:	03043823          	sd	a6,48(s0)
    800024d8:	03143c23          	sd	a7,56(s0)
    800024dc:	00050993          	mv	s3,a0
    800024e0:	4a0c1663          	bnez	s8,8000298c <__printf+0x514>
    800024e4:	60098c63          	beqz	s3,80002afc <__printf+0x684>
    800024e8:	0009c503          	lbu	a0,0(s3)
    800024ec:	00840793          	addi	a5,s0,8
    800024f0:	f6f43c23          	sd	a5,-136(s0)
    800024f4:	00000493          	li	s1,0
    800024f8:	22050063          	beqz	a0,80002718 <__printf+0x2a0>
    800024fc:	00002a37          	lui	s4,0x2
    80002500:	00018ab7          	lui	s5,0x18
    80002504:	000f4b37          	lui	s6,0xf4
    80002508:	00989bb7          	lui	s7,0x989
    8000250c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002510:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002514:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002518:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000251c:	00148c9b          	addiw	s9,s1,1
    80002520:	02500793          	li	a5,37
    80002524:	01998933          	add	s2,s3,s9
    80002528:	38f51263          	bne	a0,a5,800028ac <__printf+0x434>
    8000252c:	00094783          	lbu	a5,0(s2)
    80002530:	00078c9b          	sext.w	s9,a5
    80002534:	1e078263          	beqz	a5,80002718 <__printf+0x2a0>
    80002538:	0024849b          	addiw	s1,s1,2
    8000253c:	07000713          	li	a4,112
    80002540:	00998933          	add	s2,s3,s1
    80002544:	38e78a63          	beq	a5,a4,800028d8 <__printf+0x460>
    80002548:	20f76863          	bltu	a4,a5,80002758 <__printf+0x2e0>
    8000254c:	42a78863          	beq	a5,a0,8000297c <__printf+0x504>
    80002550:	06400713          	li	a4,100
    80002554:	40e79663          	bne	a5,a4,80002960 <__printf+0x4e8>
    80002558:	f7843783          	ld	a5,-136(s0)
    8000255c:	0007a603          	lw	a2,0(a5)
    80002560:	00878793          	addi	a5,a5,8
    80002564:	f6f43c23          	sd	a5,-136(s0)
    80002568:	42064a63          	bltz	a2,8000299c <__printf+0x524>
    8000256c:	00a00713          	li	a4,10
    80002570:	02e677bb          	remuw	a5,a2,a4
    80002574:	00002d97          	auipc	s11,0x2
    80002578:	c84d8d93          	addi	s11,s11,-892 # 800041f8 <digits>
    8000257c:	00900593          	li	a1,9
    80002580:	0006051b          	sext.w	a0,a2
    80002584:	00000c93          	li	s9,0
    80002588:	02079793          	slli	a5,a5,0x20
    8000258c:	0207d793          	srli	a5,a5,0x20
    80002590:	00fd87b3          	add	a5,s11,a5
    80002594:	0007c783          	lbu	a5,0(a5)
    80002598:	02e656bb          	divuw	a3,a2,a4
    8000259c:	f8f40023          	sb	a5,-128(s0)
    800025a0:	14c5d863          	bge	a1,a2,800026f0 <__printf+0x278>
    800025a4:	06300593          	li	a1,99
    800025a8:	00100c93          	li	s9,1
    800025ac:	02e6f7bb          	remuw	a5,a3,a4
    800025b0:	02079793          	slli	a5,a5,0x20
    800025b4:	0207d793          	srli	a5,a5,0x20
    800025b8:	00fd87b3          	add	a5,s11,a5
    800025bc:	0007c783          	lbu	a5,0(a5)
    800025c0:	02e6d73b          	divuw	a4,a3,a4
    800025c4:	f8f400a3          	sb	a5,-127(s0)
    800025c8:	12a5f463          	bgeu	a1,a0,800026f0 <__printf+0x278>
    800025cc:	00a00693          	li	a3,10
    800025d0:	00900593          	li	a1,9
    800025d4:	02d777bb          	remuw	a5,a4,a3
    800025d8:	02079793          	slli	a5,a5,0x20
    800025dc:	0207d793          	srli	a5,a5,0x20
    800025e0:	00fd87b3          	add	a5,s11,a5
    800025e4:	0007c503          	lbu	a0,0(a5)
    800025e8:	02d757bb          	divuw	a5,a4,a3
    800025ec:	f8a40123          	sb	a0,-126(s0)
    800025f0:	48e5f263          	bgeu	a1,a4,80002a74 <__printf+0x5fc>
    800025f4:	06300513          	li	a0,99
    800025f8:	02d7f5bb          	remuw	a1,a5,a3
    800025fc:	02059593          	slli	a1,a1,0x20
    80002600:	0205d593          	srli	a1,a1,0x20
    80002604:	00bd85b3          	add	a1,s11,a1
    80002608:	0005c583          	lbu	a1,0(a1)
    8000260c:	02d7d7bb          	divuw	a5,a5,a3
    80002610:	f8b401a3          	sb	a1,-125(s0)
    80002614:	48e57263          	bgeu	a0,a4,80002a98 <__printf+0x620>
    80002618:	3e700513          	li	a0,999
    8000261c:	02d7f5bb          	remuw	a1,a5,a3
    80002620:	02059593          	slli	a1,a1,0x20
    80002624:	0205d593          	srli	a1,a1,0x20
    80002628:	00bd85b3          	add	a1,s11,a1
    8000262c:	0005c583          	lbu	a1,0(a1)
    80002630:	02d7d7bb          	divuw	a5,a5,a3
    80002634:	f8b40223          	sb	a1,-124(s0)
    80002638:	46e57663          	bgeu	a0,a4,80002aa4 <__printf+0x62c>
    8000263c:	02d7f5bb          	remuw	a1,a5,a3
    80002640:	02059593          	slli	a1,a1,0x20
    80002644:	0205d593          	srli	a1,a1,0x20
    80002648:	00bd85b3          	add	a1,s11,a1
    8000264c:	0005c583          	lbu	a1,0(a1)
    80002650:	02d7d7bb          	divuw	a5,a5,a3
    80002654:	f8b402a3          	sb	a1,-123(s0)
    80002658:	46ea7863          	bgeu	s4,a4,80002ac8 <__printf+0x650>
    8000265c:	02d7f5bb          	remuw	a1,a5,a3
    80002660:	02059593          	slli	a1,a1,0x20
    80002664:	0205d593          	srli	a1,a1,0x20
    80002668:	00bd85b3          	add	a1,s11,a1
    8000266c:	0005c583          	lbu	a1,0(a1)
    80002670:	02d7d7bb          	divuw	a5,a5,a3
    80002674:	f8b40323          	sb	a1,-122(s0)
    80002678:	3eeaf863          	bgeu	s5,a4,80002a68 <__printf+0x5f0>
    8000267c:	02d7f5bb          	remuw	a1,a5,a3
    80002680:	02059593          	slli	a1,a1,0x20
    80002684:	0205d593          	srli	a1,a1,0x20
    80002688:	00bd85b3          	add	a1,s11,a1
    8000268c:	0005c583          	lbu	a1,0(a1)
    80002690:	02d7d7bb          	divuw	a5,a5,a3
    80002694:	f8b403a3          	sb	a1,-121(s0)
    80002698:	42eb7e63          	bgeu	s6,a4,80002ad4 <__printf+0x65c>
    8000269c:	02d7f5bb          	remuw	a1,a5,a3
    800026a0:	02059593          	slli	a1,a1,0x20
    800026a4:	0205d593          	srli	a1,a1,0x20
    800026a8:	00bd85b3          	add	a1,s11,a1
    800026ac:	0005c583          	lbu	a1,0(a1)
    800026b0:	02d7d7bb          	divuw	a5,a5,a3
    800026b4:	f8b40423          	sb	a1,-120(s0)
    800026b8:	42ebfc63          	bgeu	s7,a4,80002af0 <__printf+0x678>
    800026bc:	02079793          	slli	a5,a5,0x20
    800026c0:	0207d793          	srli	a5,a5,0x20
    800026c4:	00fd8db3          	add	s11,s11,a5
    800026c8:	000dc703          	lbu	a4,0(s11)
    800026cc:	00a00793          	li	a5,10
    800026d0:	00900c93          	li	s9,9
    800026d4:	f8e404a3          	sb	a4,-119(s0)
    800026d8:	00065c63          	bgez	a2,800026f0 <__printf+0x278>
    800026dc:	f9040713          	addi	a4,s0,-112
    800026e0:	00f70733          	add	a4,a4,a5
    800026e4:	02d00693          	li	a3,45
    800026e8:	fed70823          	sb	a3,-16(a4)
    800026ec:	00078c93          	mv	s9,a5
    800026f0:	f8040793          	addi	a5,s0,-128
    800026f4:	01978cb3          	add	s9,a5,s9
    800026f8:	f7f40d13          	addi	s10,s0,-129
    800026fc:	000cc503          	lbu	a0,0(s9)
    80002700:	fffc8c93          	addi	s9,s9,-1
    80002704:	00000097          	auipc	ra,0x0
    80002708:	b90080e7          	jalr	-1136(ra) # 80002294 <consputc>
    8000270c:	ffac98e3          	bne	s9,s10,800026fc <__printf+0x284>
    80002710:	00094503          	lbu	a0,0(s2)
    80002714:	e00514e3          	bnez	a0,8000251c <__printf+0xa4>
    80002718:	1a0c1663          	bnez	s8,800028c4 <__printf+0x44c>
    8000271c:	08813083          	ld	ra,136(sp)
    80002720:	08013403          	ld	s0,128(sp)
    80002724:	07813483          	ld	s1,120(sp)
    80002728:	07013903          	ld	s2,112(sp)
    8000272c:	06813983          	ld	s3,104(sp)
    80002730:	06013a03          	ld	s4,96(sp)
    80002734:	05813a83          	ld	s5,88(sp)
    80002738:	05013b03          	ld	s6,80(sp)
    8000273c:	04813b83          	ld	s7,72(sp)
    80002740:	04013c03          	ld	s8,64(sp)
    80002744:	03813c83          	ld	s9,56(sp)
    80002748:	03013d03          	ld	s10,48(sp)
    8000274c:	02813d83          	ld	s11,40(sp)
    80002750:	0d010113          	addi	sp,sp,208
    80002754:	00008067          	ret
    80002758:	07300713          	li	a4,115
    8000275c:	1ce78a63          	beq	a5,a4,80002930 <__printf+0x4b8>
    80002760:	07800713          	li	a4,120
    80002764:	1ee79e63          	bne	a5,a4,80002960 <__printf+0x4e8>
    80002768:	f7843783          	ld	a5,-136(s0)
    8000276c:	0007a703          	lw	a4,0(a5)
    80002770:	00878793          	addi	a5,a5,8
    80002774:	f6f43c23          	sd	a5,-136(s0)
    80002778:	28074263          	bltz	a4,800029fc <__printf+0x584>
    8000277c:	00002d97          	auipc	s11,0x2
    80002780:	a7cd8d93          	addi	s11,s11,-1412 # 800041f8 <digits>
    80002784:	00f77793          	andi	a5,a4,15
    80002788:	00fd87b3          	add	a5,s11,a5
    8000278c:	0007c683          	lbu	a3,0(a5)
    80002790:	00f00613          	li	a2,15
    80002794:	0007079b          	sext.w	a5,a4
    80002798:	f8d40023          	sb	a3,-128(s0)
    8000279c:	0047559b          	srliw	a1,a4,0x4
    800027a0:	0047569b          	srliw	a3,a4,0x4
    800027a4:	00000c93          	li	s9,0
    800027a8:	0ee65063          	bge	a2,a4,80002888 <__printf+0x410>
    800027ac:	00f6f693          	andi	a3,a3,15
    800027b0:	00dd86b3          	add	a3,s11,a3
    800027b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800027b8:	0087d79b          	srliw	a5,a5,0x8
    800027bc:	00100c93          	li	s9,1
    800027c0:	f8d400a3          	sb	a3,-127(s0)
    800027c4:	0cb67263          	bgeu	a2,a1,80002888 <__printf+0x410>
    800027c8:	00f7f693          	andi	a3,a5,15
    800027cc:	00dd86b3          	add	a3,s11,a3
    800027d0:	0006c583          	lbu	a1,0(a3)
    800027d4:	00f00613          	li	a2,15
    800027d8:	0047d69b          	srliw	a3,a5,0x4
    800027dc:	f8b40123          	sb	a1,-126(s0)
    800027e0:	0047d593          	srli	a1,a5,0x4
    800027e4:	28f67e63          	bgeu	a2,a5,80002a80 <__printf+0x608>
    800027e8:	00f6f693          	andi	a3,a3,15
    800027ec:	00dd86b3          	add	a3,s11,a3
    800027f0:	0006c503          	lbu	a0,0(a3)
    800027f4:	0087d813          	srli	a6,a5,0x8
    800027f8:	0087d69b          	srliw	a3,a5,0x8
    800027fc:	f8a401a3          	sb	a0,-125(s0)
    80002800:	28b67663          	bgeu	a2,a1,80002a8c <__printf+0x614>
    80002804:	00f6f693          	andi	a3,a3,15
    80002808:	00dd86b3          	add	a3,s11,a3
    8000280c:	0006c583          	lbu	a1,0(a3)
    80002810:	00c7d513          	srli	a0,a5,0xc
    80002814:	00c7d69b          	srliw	a3,a5,0xc
    80002818:	f8b40223          	sb	a1,-124(s0)
    8000281c:	29067a63          	bgeu	a2,a6,80002ab0 <__printf+0x638>
    80002820:	00f6f693          	andi	a3,a3,15
    80002824:	00dd86b3          	add	a3,s11,a3
    80002828:	0006c583          	lbu	a1,0(a3)
    8000282c:	0107d813          	srli	a6,a5,0x10
    80002830:	0107d69b          	srliw	a3,a5,0x10
    80002834:	f8b402a3          	sb	a1,-123(s0)
    80002838:	28a67263          	bgeu	a2,a0,80002abc <__printf+0x644>
    8000283c:	00f6f693          	andi	a3,a3,15
    80002840:	00dd86b3          	add	a3,s11,a3
    80002844:	0006c683          	lbu	a3,0(a3)
    80002848:	0147d79b          	srliw	a5,a5,0x14
    8000284c:	f8d40323          	sb	a3,-122(s0)
    80002850:	21067663          	bgeu	a2,a6,80002a5c <__printf+0x5e4>
    80002854:	02079793          	slli	a5,a5,0x20
    80002858:	0207d793          	srli	a5,a5,0x20
    8000285c:	00fd8db3          	add	s11,s11,a5
    80002860:	000dc683          	lbu	a3,0(s11)
    80002864:	00800793          	li	a5,8
    80002868:	00700c93          	li	s9,7
    8000286c:	f8d403a3          	sb	a3,-121(s0)
    80002870:	00075c63          	bgez	a4,80002888 <__printf+0x410>
    80002874:	f9040713          	addi	a4,s0,-112
    80002878:	00f70733          	add	a4,a4,a5
    8000287c:	02d00693          	li	a3,45
    80002880:	fed70823          	sb	a3,-16(a4)
    80002884:	00078c93          	mv	s9,a5
    80002888:	f8040793          	addi	a5,s0,-128
    8000288c:	01978cb3          	add	s9,a5,s9
    80002890:	f7f40d13          	addi	s10,s0,-129
    80002894:	000cc503          	lbu	a0,0(s9)
    80002898:	fffc8c93          	addi	s9,s9,-1
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	9f8080e7          	jalr	-1544(ra) # 80002294 <consputc>
    800028a4:	ff9d18e3          	bne	s10,s9,80002894 <__printf+0x41c>
    800028a8:	0100006f          	j	800028b8 <__printf+0x440>
    800028ac:	00000097          	auipc	ra,0x0
    800028b0:	9e8080e7          	jalr	-1560(ra) # 80002294 <consputc>
    800028b4:	000c8493          	mv	s1,s9
    800028b8:	00094503          	lbu	a0,0(s2)
    800028bc:	c60510e3          	bnez	a0,8000251c <__printf+0xa4>
    800028c0:	e40c0ee3          	beqz	s8,8000271c <__printf+0x2a4>
    800028c4:	00003517          	auipc	a0,0x3
    800028c8:	f9c50513          	addi	a0,a0,-100 # 80005860 <pr>
    800028cc:	00001097          	auipc	ra,0x1
    800028d0:	94c080e7          	jalr	-1716(ra) # 80003218 <release>
    800028d4:	e49ff06f          	j	8000271c <__printf+0x2a4>
    800028d8:	f7843783          	ld	a5,-136(s0)
    800028dc:	03000513          	li	a0,48
    800028e0:	01000d13          	li	s10,16
    800028e4:	00878713          	addi	a4,a5,8
    800028e8:	0007bc83          	ld	s9,0(a5)
    800028ec:	f6e43c23          	sd	a4,-136(s0)
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	9a4080e7          	jalr	-1628(ra) # 80002294 <consputc>
    800028f8:	07800513          	li	a0,120
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	998080e7          	jalr	-1640(ra) # 80002294 <consputc>
    80002904:	00002d97          	auipc	s11,0x2
    80002908:	8f4d8d93          	addi	s11,s11,-1804 # 800041f8 <digits>
    8000290c:	03ccd793          	srli	a5,s9,0x3c
    80002910:	00fd87b3          	add	a5,s11,a5
    80002914:	0007c503          	lbu	a0,0(a5)
    80002918:	fffd0d1b          	addiw	s10,s10,-1
    8000291c:	004c9c93          	slli	s9,s9,0x4
    80002920:	00000097          	auipc	ra,0x0
    80002924:	974080e7          	jalr	-1676(ra) # 80002294 <consputc>
    80002928:	fe0d12e3          	bnez	s10,8000290c <__printf+0x494>
    8000292c:	f8dff06f          	j	800028b8 <__printf+0x440>
    80002930:	f7843783          	ld	a5,-136(s0)
    80002934:	0007bc83          	ld	s9,0(a5)
    80002938:	00878793          	addi	a5,a5,8
    8000293c:	f6f43c23          	sd	a5,-136(s0)
    80002940:	000c9a63          	bnez	s9,80002954 <__printf+0x4dc>
    80002944:	1080006f          	j	80002a4c <__printf+0x5d4>
    80002948:	001c8c93          	addi	s9,s9,1
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	948080e7          	jalr	-1720(ra) # 80002294 <consputc>
    80002954:	000cc503          	lbu	a0,0(s9)
    80002958:	fe0518e3          	bnez	a0,80002948 <__printf+0x4d0>
    8000295c:	f5dff06f          	j	800028b8 <__printf+0x440>
    80002960:	02500513          	li	a0,37
    80002964:	00000097          	auipc	ra,0x0
    80002968:	930080e7          	jalr	-1744(ra) # 80002294 <consputc>
    8000296c:	000c8513          	mv	a0,s9
    80002970:	00000097          	auipc	ra,0x0
    80002974:	924080e7          	jalr	-1756(ra) # 80002294 <consputc>
    80002978:	f41ff06f          	j	800028b8 <__printf+0x440>
    8000297c:	02500513          	li	a0,37
    80002980:	00000097          	auipc	ra,0x0
    80002984:	914080e7          	jalr	-1772(ra) # 80002294 <consputc>
    80002988:	f31ff06f          	j	800028b8 <__printf+0x440>
    8000298c:	00030513          	mv	a0,t1
    80002990:	00000097          	auipc	ra,0x0
    80002994:	7bc080e7          	jalr	1980(ra) # 8000314c <acquire>
    80002998:	b4dff06f          	j	800024e4 <__printf+0x6c>
    8000299c:	40c0053b          	negw	a0,a2
    800029a0:	00a00713          	li	a4,10
    800029a4:	02e576bb          	remuw	a3,a0,a4
    800029a8:	00002d97          	auipc	s11,0x2
    800029ac:	850d8d93          	addi	s11,s11,-1968 # 800041f8 <digits>
    800029b0:	ff700593          	li	a1,-9
    800029b4:	02069693          	slli	a3,a3,0x20
    800029b8:	0206d693          	srli	a3,a3,0x20
    800029bc:	00dd86b3          	add	a3,s11,a3
    800029c0:	0006c683          	lbu	a3,0(a3)
    800029c4:	02e557bb          	divuw	a5,a0,a4
    800029c8:	f8d40023          	sb	a3,-128(s0)
    800029cc:	10b65e63          	bge	a2,a1,80002ae8 <__printf+0x670>
    800029d0:	06300593          	li	a1,99
    800029d4:	02e7f6bb          	remuw	a3,a5,a4
    800029d8:	02069693          	slli	a3,a3,0x20
    800029dc:	0206d693          	srli	a3,a3,0x20
    800029e0:	00dd86b3          	add	a3,s11,a3
    800029e4:	0006c683          	lbu	a3,0(a3)
    800029e8:	02e7d73b          	divuw	a4,a5,a4
    800029ec:	00200793          	li	a5,2
    800029f0:	f8d400a3          	sb	a3,-127(s0)
    800029f4:	bca5ece3          	bltu	a1,a0,800025cc <__printf+0x154>
    800029f8:	ce5ff06f          	j	800026dc <__printf+0x264>
    800029fc:	40e007bb          	negw	a5,a4
    80002a00:	00001d97          	auipc	s11,0x1
    80002a04:	7f8d8d93          	addi	s11,s11,2040 # 800041f8 <digits>
    80002a08:	00f7f693          	andi	a3,a5,15
    80002a0c:	00dd86b3          	add	a3,s11,a3
    80002a10:	0006c583          	lbu	a1,0(a3)
    80002a14:	ff100613          	li	a2,-15
    80002a18:	0047d69b          	srliw	a3,a5,0x4
    80002a1c:	f8b40023          	sb	a1,-128(s0)
    80002a20:	0047d59b          	srliw	a1,a5,0x4
    80002a24:	0ac75e63          	bge	a4,a2,80002ae0 <__printf+0x668>
    80002a28:	00f6f693          	andi	a3,a3,15
    80002a2c:	00dd86b3          	add	a3,s11,a3
    80002a30:	0006c603          	lbu	a2,0(a3)
    80002a34:	00f00693          	li	a3,15
    80002a38:	0087d79b          	srliw	a5,a5,0x8
    80002a3c:	f8c400a3          	sb	a2,-127(s0)
    80002a40:	d8b6e4e3          	bltu	a3,a1,800027c8 <__printf+0x350>
    80002a44:	00200793          	li	a5,2
    80002a48:	e2dff06f          	j	80002874 <__printf+0x3fc>
    80002a4c:	00001c97          	auipc	s9,0x1
    80002a50:	78cc8c93          	addi	s9,s9,1932 # 800041d8 <CONSOLE_STATUS+0x1c8>
    80002a54:	02800513          	li	a0,40
    80002a58:	ef1ff06f          	j	80002948 <__printf+0x4d0>
    80002a5c:	00700793          	li	a5,7
    80002a60:	00600c93          	li	s9,6
    80002a64:	e0dff06f          	j	80002870 <__printf+0x3f8>
    80002a68:	00700793          	li	a5,7
    80002a6c:	00600c93          	li	s9,6
    80002a70:	c69ff06f          	j	800026d8 <__printf+0x260>
    80002a74:	00300793          	li	a5,3
    80002a78:	00200c93          	li	s9,2
    80002a7c:	c5dff06f          	j	800026d8 <__printf+0x260>
    80002a80:	00300793          	li	a5,3
    80002a84:	00200c93          	li	s9,2
    80002a88:	de9ff06f          	j	80002870 <__printf+0x3f8>
    80002a8c:	00400793          	li	a5,4
    80002a90:	00300c93          	li	s9,3
    80002a94:	dddff06f          	j	80002870 <__printf+0x3f8>
    80002a98:	00400793          	li	a5,4
    80002a9c:	00300c93          	li	s9,3
    80002aa0:	c39ff06f          	j	800026d8 <__printf+0x260>
    80002aa4:	00500793          	li	a5,5
    80002aa8:	00400c93          	li	s9,4
    80002aac:	c2dff06f          	j	800026d8 <__printf+0x260>
    80002ab0:	00500793          	li	a5,5
    80002ab4:	00400c93          	li	s9,4
    80002ab8:	db9ff06f          	j	80002870 <__printf+0x3f8>
    80002abc:	00600793          	li	a5,6
    80002ac0:	00500c93          	li	s9,5
    80002ac4:	dadff06f          	j	80002870 <__printf+0x3f8>
    80002ac8:	00600793          	li	a5,6
    80002acc:	00500c93          	li	s9,5
    80002ad0:	c09ff06f          	j	800026d8 <__printf+0x260>
    80002ad4:	00800793          	li	a5,8
    80002ad8:	00700c93          	li	s9,7
    80002adc:	bfdff06f          	j	800026d8 <__printf+0x260>
    80002ae0:	00100793          	li	a5,1
    80002ae4:	d91ff06f          	j	80002874 <__printf+0x3fc>
    80002ae8:	00100793          	li	a5,1
    80002aec:	bf1ff06f          	j	800026dc <__printf+0x264>
    80002af0:	00900793          	li	a5,9
    80002af4:	00800c93          	li	s9,8
    80002af8:	be1ff06f          	j	800026d8 <__printf+0x260>
    80002afc:	00001517          	auipc	a0,0x1
    80002b00:	6e450513          	addi	a0,a0,1764 # 800041e0 <CONSOLE_STATUS+0x1d0>
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	918080e7          	jalr	-1768(ra) # 8000241c <panic>

0000000080002b0c <printfinit>:
    80002b0c:	fe010113          	addi	sp,sp,-32
    80002b10:	00813823          	sd	s0,16(sp)
    80002b14:	00913423          	sd	s1,8(sp)
    80002b18:	00113c23          	sd	ra,24(sp)
    80002b1c:	02010413          	addi	s0,sp,32
    80002b20:	00003497          	auipc	s1,0x3
    80002b24:	d4048493          	addi	s1,s1,-704 # 80005860 <pr>
    80002b28:	00048513          	mv	a0,s1
    80002b2c:	00001597          	auipc	a1,0x1
    80002b30:	6c458593          	addi	a1,a1,1732 # 800041f0 <CONSOLE_STATUS+0x1e0>
    80002b34:	00000097          	auipc	ra,0x0
    80002b38:	5f4080e7          	jalr	1524(ra) # 80003128 <initlock>
    80002b3c:	01813083          	ld	ra,24(sp)
    80002b40:	01013403          	ld	s0,16(sp)
    80002b44:	0004ac23          	sw	zero,24(s1)
    80002b48:	00813483          	ld	s1,8(sp)
    80002b4c:	02010113          	addi	sp,sp,32
    80002b50:	00008067          	ret

0000000080002b54 <uartinit>:
    80002b54:	ff010113          	addi	sp,sp,-16
    80002b58:	00813423          	sd	s0,8(sp)
    80002b5c:	01010413          	addi	s0,sp,16
    80002b60:	100007b7          	lui	a5,0x10000
    80002b64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002b68:	f8000713          	li	a4,-128
    80002b6c:	00e781a3          	sb	a4,3(a5)
    80002b70:	00300713          	li	a4,3
    80002b74:	00e78023          	sb	a4,0(a5)
    80002b78:	000780a3          	sb	zero,1(a5)
    80002b7c:	00e781a3          	sb	a4,3(a5)
    80002b80:	00700693          	li	a3,7
    80002b84:	00d78123          	sb	a3,2(a5)
    80002b88:	00e780a3          	sb	a4,1(a5)
    80002b8c:	00813403          	ld	s0,8(sp)
    80002b90:	01010113          	addi	sp,sp,16
    80002b94:	00008067          	ret

0000000080002b98 <uartputc>:
    80002b98:	00002797          	auipc	a5,0x2
    80002b9c:	a807a783          	lw	a5,-1408(a5) # 80004618 <panicked>
    80002ba0:	00078463          	beqz	a5,80002ba8 <uartputc+0x10>
    80002ba4:	0000006f          	j	80002ba4 <uartputc+0xc>
    80002ba8:	fd010113          	addi	sp,sp,-48
    80002bac:	02813023          	sd	s0,32(sp)
    80002bb0:	00913c23          	sd	s1,24(sp)
    80002bb4:	01213823          	sd	s2,16(sp)
    80002bb8:	01313423          	sd	s3,8(sp)
    80002bbc:	02113423          	sd	ra,40(sp)
    80002bc0:	03010413          	addi	s0,sp,48
    80002bc4:	00002917          	auipc	s2,0x2
    80002bc8:	a5c90913          	addi	s2,s2,-1444 # 80004620 <uart_tx_r>
    80002bcc:	00093783          	ld	a5,0(s2)
    80002bd0:	00002497          	auipc	s1,0x2
    80002bd4:	a5848493          	addi	s1,s1,-1448 # 80004628 <uart_tx_w>
    80002bd8:	0004b703          	ld	a4,0(s1)
    80002bdc:	02078693          	addi	a3,a5,32
    80002be0:	00050993          	mv	s3,a0
    80002be4:	02e69c63          	bne	a3,a4,80002c1c <uartputc+0x84>
    80002be8:	00001097          	auipc	ra,0x1
    80002bec:	834080e7          	jalr	-1996(ra) # 8000341c <push_on>
    80002bf0:	00093783          	ld	a5,0(s2)
    80002bf4:	0004b703          	ld	a4,0(s1)
    80002bf8:	02078793          	addi	a5,a5,32
    80002bfc:	00e79463          	bne	a5,a4,80002c04 <uartputc+0x6c>
    80002c00:	0000006f          	j	80002c00 <uartputc+0x68>
    80002c04:	00001097          	auipc	ra,0x1
    80002c08:	88c080e7          	jalr	-1908(ra) # 80003490 <pop_on>
    80002c0c:	00093783          	ld	a5,0(s2)
    80002c10:	0004b703          	ld	a4,0(s1)
    80002c14:	02078693          	addi	a3,a5,32
    80002c18:	fce688e3          	beq	a3,a4,80002be8 <uartputc+0x50>
    80002c1c:	01f77693          	andi	a3,a4,31
    80002c20:	00003597          	auipc	a1,0x3
    80002c24:	c6058593          	addi	a1,a1,-928 # 80005880 <uart_tx_buf>
    80002c28:	00d586b3          	add	a3,a1,a3
    80002c2c:	00170713          	addi	a4,a4,1
    80002c30:	01368023          	sb	s3,0(a3)
    80002c34:	00e4b023          	sd	a4,0(s1)
    80002c38:	10000637          	lui	a2,0x10000
    80002c3c:	02f71063          	bne	a4,a5,80002c5c <uartputc+0xc4>
    80002c40:	0340006f          	j	80002c74 <uartputc+0xdc>
    80002c44:	00074703          	lbu	a4,0(a4)
    80002c48:	00f93023          	sd	a5,0(s2)
    80002c4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002c50:	00093783          	ld	a5,0(s2)
    80002c54:	0004b703          	ld	a4,0(s1)
    80002c58:	00f70e63          	beq	a4,a5,80002c74 <uartputc+0xdc>
    80002c5c:	00564683          	lbu	a3,5(a2)
    80002c60:	01f7f713          	andi	a4,a5,31
    80002c64:	00e58733          	add	a4,a1,a4
    80002c68:	0206f693          	andi	a3,a3,32
    80002c6c:	00178793          	addi	a5,a5,1
    80002c70:	fc069ae3          	bnez	a3,80002c44 <uartputc+0xac>
    80002c74:	02813083          	ld	ra,40(sp)
    80002c78:	02013403          	ld	s0,32(sp)
    80002c7c:	01813483          	ld	s1,24(sp)
    80002c80:	01013903          	ld	s2,16(sp)
    80002c84:	00813983          	ld	s3,8(sp)
    80002c88:	03010113          	addi	sp,sp,48
    80002c8c:	00008067          	ret

0000000080002c90 <uartputc_sync>:
    80002c90:	ff010113          	addi	sp,sp,-16
    80002c94:	00813423          	sd	s0,8(sp)
    80002c98:	01010413          	addi	s0,sp,16
    80002c9c:	00002717          	auipc	a4,0x2
    80002ca0:	97c72703          	lw	a4,-1668(a4) # 80004618 <panicked>
    80002ca4:	02071663          	bnez	a4,80002cd0 <uartputc_sync+0x40>
    80002ca8:	00050793          	mv	a5,a0
    80002cac:	100006b7          	lui	a3,0x10000
    80002cb0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002cb4:	02077713          	andi	a4,a4,32
    80002cb8:	fe070ce3          	beqz	a4,80002cb0 <uartputc_sync+0x20>
    80002cbc:	0ff7f793          	andi	a5,a5,255
    80002cc0:	00f68023          	sb	a5,0(a3)
    80002cc4:	00813403          	ld	s0,8(sp)
    80002cc8:	01010113          	addi	sp,sp,16
    80002ccc:	00008067          	ret
    80002cd0:	0000006f          	j	80002cd0 <uartputc_sync+0x40>

0000000080002cd4 <uartstart>:
    80002cd4:	ff010113          	addi	sp,sp,-16
    80002cd8:	00813423          	sd	s0,8(sp)
    80002cdc:	01010413          	addi	s0,sp,16
    80002ce0:	00002617          	auipc	a2,0x2
    80002ce4:	94060613          	addi	a2,a2,-1728 # 80004620 <uart_tx_r>
    80002ce8:	00002517          	auipc	a0,0x2
    80002cec:	94050513          	addi	a0,a0,-1728 # 80004628 <uart_tx_w>
    80002cf0:	00063783          	ld	a5,0(a2)
    80002cf4:	00053703          	ld	a4,0(a0)
    80002cf8:	04f70263          	beq	a4,a5,80002d3c <uartstart+0x68>
    80002cfc:	100005b7          	lui	a1,0x10000
    80002d00:	00003817          	auipc	a6,0x3
    80002d04:	b8080813          	addi	a6,a6,-1152 # 80005880 <uart_tx_buf>
    80002d08:	01c0006f          	j	80002d24 <uartstart+0x50>
    80002d0c:	0006c703          	lbu	a4,0(a3)
    80002d10:	00f63023          	sd	a5,0(a2)
    80002d14:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002d18:	00063783          	ld	a5,0(a2)
    80002d1c:	00053703          	ld	a4,0(a0)
    80002d20:	00f70e63          	beq	a4,a5,80002d3c <uartstart+0x68>
    80002d24:	01f7f713          	andi	a4,a5,31
    80002d28:	00e806b3          	add	a3,a6,a4
    80002d2c:	0055c703          	lbu	a4,5(a1)
    80002d30:	00178793          	addi	a5,a5,1
    80002d34:	02077713          	andi	a4,a4,32
    80002d38:	fc071ae3          	bnez	a4,80002d0c <uartstart+0x38>
    80002d3c:	00813403          	ld	s0,8(sp)
    80002d40:	01010113          	addi	sp,sp,16
    80002d44:	00008067          	ret

0000000080002d48 <uartgetc>:
    80002d48:	ff010113          	addi	sp,sp,-16
    80002d4c:	00813423          	sd	s0,8(sp)
    80002d50:	01010413          	addi	s0,sp,16
    80002d54:	10000737          	lui	a4,0x10000
    80002d58:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002d5c:	0017f793          	andi	a5,a5,1
    80002d60:	00078c63          	beqz	a5,80002d78 <uartgetc+0x30>
    80002d64:	00074503          	lbu	a0,0(a4)
    80002d68:	0ff57513          	andi	a0,a0,255
    80002d6c:	00813403          	ld	s0,8(sp)
    80002d70:	01010113          	addi	sp,sp,16
    80002d74:	00008067          	ret
    80002d78:	fff00513          	li	a0,-1
    80002d7c:	ff1ff06f          	j	80002d6c <uartgetc+0x24>

0000000080002d80 <uartintr>:
    80002d80:	100007b7          	lui	a5,0x10000
    80002d84:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002d88:	0017f793          	andi	a5,a5,1
    80002d8c:	0a078463          	beqz	a5,80002e34 <uartintr+0xb4>
    80002d90:	fe010113          	addi	sp,sp,-32
    80002d94:	00813823          	sd	s0,16(sp)
    80002d98:	00913423          	sd	s1,8(sp)
    80002d9c:	00113c23          	sd	ra,24(sp)
    80002da0:	02010413          	addi	s0,sp,32
    80002da4:	100004b7          	lui	s1,0x10000
    80002da8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002dac:	0ff57513          	andi	a0,a0,255
    80002db0:	fffff097          	auipc	ra,0xfffff
    80002db4:	534080e7          	jalr	1332(ra) # 800022e4 <consoleintr>
    80002db8:	0054c783          	lbu	a5,5(s1)
    80002dbc:	0017f793          	andi	a5,a5,1
    80002dc0:	fe0794e3          	bnez	a5,80002da8 <uartintr+0x28>
    80002dc4:	00002617          	auipc	a2,0x2
    80002dc8:	85c60613          	addi	a2,a2,-1956 # 80004620 <uart_tx_r>
    80002dcc:	00002517          	auipc	a0,0x2
    80002dd0:	85c50513          	addi	a0,a0,-1956 # 80004628 <uart_tx_w>
    80002dd4:	00063783          	ld	a5,0(a2)
    80002dd8:	00053703          	ld	a4,0(a0)
    80002ddc:	04f70263          	beq	a4,a5,80002e20 <uartintr+0xa0>
    80002de0:	100005b7          	lui	a1,0x10000
    80002de4:	00003817          	auipc	a6,0x3
    80002de8:	a9c80813          	addi	a6,a6,-1380 # 80005880 <uart_tx_buf>
    80002dec:	01c0006f          	j	80002e08 <uartintr+0x88>
    80002df0:	0006c703          	lbu	a4,0(a3)
    80002df4:	00f63023          	sd	a5,0(a2)
    80002df8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002dfc:	00063783          	ld	a5,0(a2)
    80002e00:	00053703          	ld	a4,0(a0)
    80002e04:	00f70e63          	beq	a4,a5,80002e20 <uartintr+0xa0>
    80002e08:	01f7f713          	andi	a4,a5,31
    80002e0c:	00e806b3          	add	a3,a6,a4
    80002e10:	0055c703          	lbu	a4,5(a1)
    80002e14:	00178793          	addi	a5,a5,1
    80002e18:	02077713          	andi	a4,a4,32
    80002e1c:	fc071ae3          	bnez	a4,80002df0 <uartintr+0x70>
    80002e20:	01813083          	ld	ra,24(sp)
    80002e24:	01013403          	ld	s0,16(sp)
    80002e28:	00813483          	ld	s1,8(sp)
    80002e2c:	02010113          	addi	sp,sp,32
    80002e30:	00008067          	ret
    80002e34:	00001617          	auipc	a2,0x1
    80002e38:	7ec60613          	addi	a2,a2,2028 # 80004620 <uart_tx_r>
    80002e3c:	00001517          	auipc	a0,0x1
    80002e40:	7ec50513          	addi	a0,a0,2028 # 80004628 <uart_tx_w>
    80002e44:	00063783          	ld	a5,0(a2)
    80002e48:	00053703          	ld	a4,0(a0)
    80002e4c:	04f70263          	beq	a4,a5,80002e90 <uartintr+0x110>
    80002e50:	100005b7          	lui	a1,0x10000
    80002e54:	00003817          	auipc	a6,0x3
    80002e58:	a2c80813          	addi	a6,a6,-1492 # 80005880 <uart_tx_buf>
    80002e5c:	01c0006f          	j	80002e78 <uartintr+0xf8>
    80002e60:	0006c703          	lbu	a4,0(a3)
    80002e64:	00f63023          	sd	a5,0(a2)
    80002e68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002e6c:	00063783          	ld	a5,0(a2)
    80002e70:	00053703          	ld	a4,0(a0)
    80002e74:	02f70063          	beq	a4,a5,80002e94 <uartintr+0x114>
    80002e78:	01f7f713          	andi	a4,a5,31
    80002e7c:	00e806b3          	add	a3,a6,a4
    80002e80:	0055c703          	lbu	a4,5(a1)
    80002e84:	00178793          	addi	a5,a5,1
    80002e88:	02077713          	andi	a4,a4,32
    80002e8c:	fc071ae3          	bnez	a4,80002e60 <uartintr+0xe0>
    80002e90:	00008067          	ret
    80002e94:	00008067          	ret

0000000080002e98 <kinit>:
    80002e98:	fc010113          	addi	sp,sp,-64
    80002e9c:	02913423          	sd	s1,40(sp)
    80002ea0:	fffff7b7          	lui	a5,0xfffff
    80002ea4:	00004497          	auipc	s1,0x4
    80002ea8:	9fb48493          	addi	s1,s1,-1541 # 8000689f <end+0xfff>
    80002eac:	02813823          	sd	s0,48(sp)
    80002eb0:	01313c23          	sd	s3,24(sp)
    80002eb4:	00f4f4b3          	and	s1,s1,a5
    80002eb8:	02113c23          	sd	ra,56(sp)
    80002ebc:	03213023          	sd	s2,32(sp)
    80002ec0:	01413823          	sd	s4,16(sp)
    80002ec4:	01513423          	sd	s5,8(sp)
    80002ec8:	04010413          	addi	s0,sp,64
    80002ecc:	000017b7          	lui	a5,0x1
    80002ed0:	01100993          	li	s3,17
    80002ed4:	00f487b3          	add	a5,s1,a5
    80002ed8:	01b99993          	slli	s3,s3,0x1b
    80002edc:	06f9e063          	bltu	s3,a5,80002f3c <kinit+0xa4>
    80002ee0:	00003a97          	auipc	s5,0x3
    80002ee4:	9c0a8a93          	addi	s5,s5,-1600 # 800058a0 <end>
    80002ee8:	0754ec63          	bltu	s1,s5,80002f60 <kinit+0xc8>
    80002eec:	0734fa63          	bgeu	s1,s3,80002f60 <kinit+0xc8>
    80002ef0:	00088a37          	lui	s4,0x88
    80002ef4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002ef8:	00001917          	auipc	s2,0x1
    80002efc:	73890913          	addi	s2,s2,1848 # 80004630 <kmem>
    80002f00:	00ca1a13          	slli	s4,s4,0xc
    80002f04:	0140006f          	j	80002f18 <kinit+0x80>
    80002f08:	000017b7          	lui	a5,0x1
    80002f0c:	00f484b3          	add	s1,s1,a5
    80002f10:	0554e863          	bltu	s1,s5,80002f60 <kinit+0xc8>
    80002f14:	0534f663          	bgeu	s1,s3,80002f60 <kinit+0xc8>
    80002f18:	00001637          	lui	a2,0x1
    80002f1c:	00100593          	li	a1,1
    80002f20:	00048513          	mv	a0,s1
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	5e4080e7          	jalr	1508(ra) # 80003508 <__memset>
    80002f2c:	00093783          	ld	a5,0(s2)
    80002f30:	00f4b023          	sd	a5,0(s1)
    80002f34:	00993023          	sd	s1,0(s2)
    80002f38:	fd4498e3          	bne	s1,s4,80002f08 <kinit+0x70>
    80002f3c:	03813083          	ld	ra,56(sp)
    80002f40:	03013403          	ld	s0,48(sp)
    80002f44:	02813483          	ld	s1,40(sp)
    80002f48:	02013903          	ld	s2,32(sp)
    80002f4c:	01813983          	ld	s3,24(sp)
    80002f50:	01013a03          	ld	s4,16(sp)
    80002f54:	00813a83          	ld	s5,8(sp)
    80002f58:	04010113          	addi	sp,sp,64
    80002f5c:	00008067          	ret
    80002f60:	00001517          	auipc	a0,0x1
    80002f64:	2b050513          	addi	a0,a0,688 # 80004210 <digits+0x18>
    80002f68:	fffff097          	auipc	ra,0xfffff
    80002f6c:	4b4080e7          	jalr	1204(ra) # 8000241c <panic>

0000000080002f70 <freerange>:
    80002f70:	fc010113          	addi	sp,sp,-64
    80002f74:	000017b7          	lui	a5,0x1
    80002f78:	02913423          	sd	s1,40(sp)
    80002f7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002f80:	009504b3          	add	s1,a0,s1
    80002f84:	fffff537          	lui	a0,0xfffff
    80002f88:	02813823          	sd	s0,48(sp)
    80002f8c:	02113c23          	sd	ra,56(sp)
    80002f90:	03213023          	sd	s2,32(sp)
    80002f94:	01313c23          	sd	s3,24(sp)
    80002f98:	01413823          	sd	s4,16(sp)
    80002f9c:	01513423          	sd	s5,8(sp)
    80002fa0:	01613023          	sd	s6,0(sp)
    80002fa4:	04010413          	addi	s0,sp,64
    80002fa8:	00a4f4b3          	and	s1,s1,a0
    80002fac:	00f487b3          	add	a5,s1,a5
    80002fb0:	06f5e463          	bltu	a1,a5,80003018 <freerange+0xa8>
    80002fb4:	00003a97          	auipc	s5,0x3
    80002fb8:	8eca8a93          	addi	s5,s5,-1812 # 800058a0 <end>
    80002fbc:	0954e263          	bltu	s1,s5,80003040 <freerange+0xd0>
    80002fc0:	01100993          	li	s3,17
    80002fc4:	01b99993          	slli	s3,s3,0x1b
    80002fc8:	0734fc63          	bgeu	s1,s3,80003040 <freerange+0xd0>
    80002fcc:	00058a13          	mv	s4,a1
    80002fd0:	00001917          	auipc	s2,0x1
    80002fd4:	66090913          	addi	s2,s2,1632 # 80004630 <kmem>
    80002fd8:	00002b37          	lui	s6,0x2
    80002fdc:	0140006f          	j	80002ff0 <freerange+0x80>
    80002fe0:	000017b7          	lui	a5,0x1
    80002fe4:	00f484b3          	add	s1,s1,a5
    80002fe8:	0554ec63          	bltu	s1,s5,80003040 <freerange+0xd0>
    80002fec:	0534fa63          	bgeu	s1,s3,80003040 <freerange+0xd0>
    80002ff0:	00001637          	lui	a2,0x1
    80002ff4:	00100593          	li	a1,1
    80002ff8:	00048513          	mv	a0,s1
    80002ffc:	00000097          	auipc	ra,0x0
    80003000:	50c080e7          	jalr	1292(ra) # 80003508 <__memset>
    80003004:	00093703          	ld	a4,0(s2)
    80003008:	016487b3          	add	a5,s1,s6
    8000300c:	00e4b023          	sd	a4,0(s1)
    80003010:	00993023          	sd	s1,0(s2)
    80003014:	fcfa76e3          	bgeu	s4,a5,80002fe0 <freerange+0x70>
    80003018:	03813083          	ld	ra,56(sp)
    8000301c:	03013403          	ld	s0,48(sp)
    80003020:	02813483          	ld	s1,40(sp)
    80003024:	02013903          	ld	s2,32(sp)
    80003028:	01813983          	ld	s3,24(sp)
    8000302c:	01013a03          	ld	s4,16(sp)
    80003030:	00813a83          	ld	s5,8(sp)
    80003034:	00013b03          	ld	s6,0(sp)
    80003038:	04010113          	addi	sp,sp,64
    8000303c:	00008067          	ret
    80003040:	00001517          	auipc	a0,0x1
    80003044:	1d050513          	addi	a0,a0,464 # 80004210 <digits+0x18>
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	3d4080e7          	jalr	980(ra) # 8000241c <panic>

0000000080003050 <kfree>:
    80003050:	fe010113          	addi	sp,sp,-32
    80003054:	00813823          	sd	s0,16(sp)
    80003058:	00113c23          	sd	ra,24(sp)
    8000305c:	00913423          	sd	s1,8(sp)
    80003060:	02010413          	addi	s0,sp,32
    80003064:	03451793          	slli	a5,a0,0x34
    80003068:	04079c63          	bnez	a5,800030c0 <kfree+0x70>
    8000306c:	00003797          	auipc	a5,0x3
    80003070:	83478793          	addi	a5,a5,-1996 # 800058a0 <end>
    80003074:	00050493          	mv	s1,a0
    80003078:	04f56463          	bltu	a0,a5,800030c0 <kfree+0x70>
    8000307c:	01100793          	li	a5,17
    80003080:	01b79793          	slli	a5,a5,0x1b
    80003084:	02f57e63          	bgeu	a0,a5,800030c0 <kfree+0x70>
    80003088:	00001637          	lui	a2,0x1
    8000308c:	00100593          	li	a1,1
    80003090:	00000097          	auipc	ra,0x0
    80003094:	478080e7          	jalr	1144(ra) # 80003508 <__memset>
    80003098:	00001797          	auipc	a5,0x1
    8000309c:	59878793          	addi	a5,a5,1432 # 80004630 <kmem>
    800030a0:	0007b703          	ld	a4,0(a5)
    800030a4:	01813083          	ld	ra,24(sp)
    800030a8:	01013403          	ld	s0,16(sp)
    800030ac:	00e4b023          	sd	a4,0(s1)
    800030b0:	0097b023          	sd	s1,0(a5)
    800030b4:	00813483          	ld	s1,8(sp)
    800030b8:	02010113          	addi	sp,sp,32
    800030bc:	00008067          	ret
    800030c0:	00001517          	auipc	a0,0x1
    800030c4:	15050513          	addi	a0,a0,336 # 80004210 <digits+0x18>
    800030c8:	fffff097          	auipc	ra,0xfffff
    800030cc:	354080e7          	jalr	852(ra) # 8000241c <panic>

00000000800030d0 <kalloc>:
    800030d0:	fe010113          	addi	sp,sp,-32
    800030d4:	00813823          	sd	s0,16(sp)
    800030d8:	00913423          	sd	s1,8(sp)
    800030dc:	00113c23          	sd	ra,24(sp)
    800030e0:	02010413          	addi	s0,sp,32
    800030e4:	00001797          	auipc	a5,0x1
    800030e8:	54c78793          	addi	a5,a5,1356 # 80004630 <kmem>
    800030ec:	0007b483          	ld	s1,0(a5)
    800030f0:	02048063          	beqz	s1,80003110 <kalloc+0x40>
    800030f4:	0004b703          	ld	a4,0(s1)
    800030f8:	00001637          	lui	a2,0x1
    800030fc:	00500593          	li	a1,5
    80003100:	00048513          	mv	a0,s1
    80003104:	00e7b023          	sd	a4,0(a5)
    80003108:	00000097          	auipc	ra,0x0
    8000310c:	400080e7          	jalr	1024(ra) # 80003508 <__memset>
    80003110:	01813083          	ld	ra,24(sp)
    80003114:	01013403          	ld	s0,16(sp)
    80003118:	00048513          	mv	a0,s1
    8000311c:	00813483          	ld	s1,8(sp)
    80003120:	02010113          	addi	sp,sp,32
    80003124:	00008067          	ret

0000000080003128 <initlock>:
    80003128:	ff010113          	addi	sp,sp,-16
    8000312c:	00813423          	sd	s0,8(sp)
    80003130:	01010413          	addi	s0,sp,16
    80003134:	00813403          	ld	s0,8(sp)
    80003138:	00b53423          	sd	a1,8(a0)
    8000313c:	00052023          	sw	zero,0(a0)
    80003140:	00053823          	sd	zero,16(a0)
    80003144:	01010113          	addi	sp,sp,16
    80003148:	00008067          	ret

000000008000314c <acquire>:
    8000314c:	fe010113          	addi	sp,sp,-32
    80003150:	00813823          	sd	s0,16(sp)
    80003154:	00913423          	sd	s1,8(sp)
    80003158:	00113c23          	sd	ra,24(sp)
    8000315c:	01213023          	sd	s2,0(sp)
    80003160:	02010413          	addi	s0,sp,32
    80003164:	00050493          	mv	s1,a0
    80003168:	10002973          	csrr	s2,sstatus
    8000316c:	100027f3          	csrr	a5,sstatus
    80003170:	ffd7f793          	andi	a5,a5,-3
    80003174:	10079073          	csrw	sstatus,a5
    80003178:	fffff097          	auipc	ra,0xfffff
    8000317c:	8e0080e7          	jalr	-1824(ra) # 80001a58 <mycpu>
    80003180:	07852783          	lw	a5,120(a0)
    80003184:	06078e63          	beqz	a5,80003200 <acquire+0xb4>
    80003188:	fffff097          	auipc	ra,0xfffff
    8000318c:	8d0080e7          	jalr	-1840(ra) # 80001a58 <mycpu>
    80003190:	07852783          	lw	a5,120(a0)
    80003194:	0004a703          	lw	a4,0(s1)
    80003198:	0017879b          	addiw	a5,a5,1
    8000319c:	06f52c23          	sw	a5,120(a0)
    800031a0:	04071063          	bnez	a4,800031e0 <acquire+0x94>
    800031a4:	00100713          	li	a4,1
    800031a8:	00070793          	mv	a5,a4
    800031ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800031b0:	0007879b          	sext.w	a5,a5
    800031b4:	fe079ae3          	bnez	a5,800031a8 <acquire+0x5c>
    800031b8:	0ff0000f          	fence
    800031bc:	fffff097          	auipc	ra,0xfffff
    800031c0:	89c080e7          	jalr	-1892(ra) # 80001a58 <mycpu>
    800031c4:	01813083          	ld	ra,24(sp)
    800031c8:	01013403          	ld	s0,16(sp)
    800031cc:	00a4b823          	sd	a0,16(s1)
    800031d0:	00013903          	ld	s2,0(sp)
    800031d4:	00813483          	ld	s1,8(sp)
    800031d8:	02010113          	addi	sp,sp,32
    800031dc:	00008067          	ret
    800031e0:	0104b903          	ld	s2,16(s1)
    800031e4:	fffff097          	auipc	ra,0xfffff
    800031e8:	874080e7          	jalr	-1932(ra) # 80001a58 <mycpu>
    800031ec:	faa91ce3          	bne	s2,a0,800031a4 <acquire+0x58>
    800031f0:	00001517          	auipc	a0,0x1
    800031f4:	02850513          	addi	a0,a0,40 # 80004218 <digits+0x20>
    800031f8:	fffff097          	auipc	ra,0xfffff
    800031fc:	224080e7          	jalr	548(ra) # 8000241c <panic>
    80003200:	00195913          	srli	s2,s2,0x1
    80003204:	fffff097          	auipc	ra,0xfffff
    80003208:	854080e7          	jalr	-1964(ra) # 80001a58 <mycpu>
    8000320c:	00197913          	andi	s2,s2,1
    80003210:	07252e23          	sw	s2,124(a0)
    80003214:	f75ff06f          	j	80003188 <acquire+0x3c>

0000000080003218 <release>:
    80003218:	fe010113          	addi	sp,sp,-32
    8000321c:	00813823          	sd	s0,16(sp)
    80003220:	00113c23          	sd	ra,24(sp)
    80003224:	00913423          	sd	s1,8(sp)
    80003228:	01213023          	sd	s2,0(sp)
    8000322c:	02010413          	addi	s0,sp,32
    80003230:	00052783          	lw	a5,0(a0)
    80003234:	00079a63          	bnez	a5,80003248 <release+0x30>
    80003238:	00001517          	auipc	a0,0x1
    8000323c:	fe850513          	addi	a0,a0,-24 # 80004220 <digits+0x28>
    80003240:	fffff097          	auipc	ra,0xfffff
    80003244:	1dc080e7          	jalr	476(ra) # 8000241c <panic>
    80003248:	01053903          	ld	s2,16(a0)
    8000324c:	00050493          	mv	s1,a0
    80003250:	fffff097          	auipc	ra,0xfffff
    80003254:	808080e7          	jalr	-2040(ra) # 80001a58 <mycpu>
    80003258:	fea910e3          	bne	s2,a0,80003238 <release+0x20>
    8000325c:	0004b823          	sd	zero,16(s1)
    80003260:	0ff0000f          	fence
    80003264:	0f50000f          	fence	iorw,ow
    80003268:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000326c:	ffffe097          	auipc	ra,0xffffe
    80003270:	7ec080e7          	jalr	2028(ra) # 80001a58 <mycpu>
    80003274:	100027f3          	csrr	a5,sstatus
    80003278:	0027f793          	andi	a5,a5,2
    8000327c:	04079a63          	bnez	a5,800032d0 <release+0xb8>
    80003280:	07852783          	lw	a5,120(a0)
    80003284:	02f05e63          	blez	a5,800032c0 <release+0xa8>
    80003288:	fff7871b          	addiw	a4,a5,-1
    8000328c:	06e52c23          	sw	a4,120(a0)
    80003290:	00071c63          	bnez	a4,800032a8 <release+0x90>
    80003294:	07c52783          	lw	a5,124(a0)
    80003298:	00078863          	beqz	a5,800032a8 <release+0x90>
    8000329c:	100027f3          	csrr	a5,sstatus
    800032a0:	0027e793          	ori	a5,a5,2
    800032a4:	10079073          	csrw	sstatus,a5
    800032a8:	01813083          	ld	ra,24(sp)
    800032ac:	01013403          	ld	s0,16(sp)
    800032b0:	00813483          	ld	s1,8(sp)
    800032b4:	00013903          	ld	s2,0(sp)
    800032b8:	02010113          	addi	sp,sp,32
    800032bc:	00008067          	ret
    800032c0:	00001517          	auipc	a0,0x1
    800032c4:	f8050513          	addi	a0,a0,-128 # 80004240 <digits+0x48>
    800032c8:	fffff097          	auipc	ra,0xfffff
    800032cc:	154080e7          	jalr	340(ra) # 8000241c <panic>
    800032d0:	00001517          	auipc	a0,0x1
    800032d4:	f5850513          	addi	a0,a0,-168 # 80004228 <digits+0x30>
    800032d8:	fffff097          	auipc	ra,0xfffff
    800032dc:	144080e7          	jalr	324(ra) # 8000241c <panic>

00000000800032e0 <holding>:
    800032e0:	00052783          	lw	a5,0(a0)
    800032e4:	00079663          	bnez	a5,800032f0 <holding+0x10>
    800032e8:	00000513          	li	a0,0
    800032ec:	00008067          	ret
    800032f0:	fe010113          	addi	sp,sp,-32
    800032f4:	00813823          	sd	s0,16(sp)
    800032f8:	00913423          	sd	s1,8(sp)
    800032fc:	00113c23          	sd	ra,24(sp)
    80003300:	02010413          	addi	s0,sp,32
    80003304:	01053483          	ld	s1,16(a0)
    80003308:	ffffe097          	auipc	ra,0xffffe
    8000330c:	750080e7          	jalr	1872(ra) # 80001a58 <mycpu>
    80003310:	01813083          	ld	ra,24(sp)
    80003314:	01013403          	ld	s0,16(sp)
    80003318:	40a48533          	sub	a0,s1,a0
    8000331c:	00153513          	seqz	a0,a0
    80003320:	00813483          	ld	s1,8(sp)
    80003324:	02010113          	addi	sp,sp,32
    80003328:	00008067          	ret

000000008000332c <push_off>:
    8000332c:	fe010113          	addi	sp,sp,-32
    80003330:	00813823          	sd	s0,16(sp)
    80003334:	00113c23          	sd	ra,24(sp)
    80003338:	00913423          	sd	s1,8(sp)
    8000333c:	02010413          	addi	s0,sp,32
    80003340:	100024f3          	csrr	s1,sstatus
    80003344:	100027f3          	csrr	a5,sstatus
    80003348:	ffd7f793          	andi	a5,a5,-3
    8000334c:	10079073          	csrw	sstatus,a5
    80003350:	ffffe097          	auipc	ra,0xffffe
    80003354:	708080e7          	jalr	1800(ra) # 80001a58 <mycpu>
    80003358:	07852783          	lw	a5,120(a0)
    8000335c:	02078663          	beqz	a5,80003388 <push_off+0x5c>
    80003360:	ffffe097          	auipc	ra,0xffffe
    80003364:	6f8080e7          	jalr	1784(ra) # 80001a58 <mycpu>
    80003368:	07852783          	lw	a5,120(a0)
    8000336c:	01813083          	ld	ra,24(sp)
    80003370:	01013403          	ld	s0,16(sp)
    80003374:	0017879b          	addiw	a5,a5,1
    80003378:	06f52c23          	sw	a5,120(a0)
    8000337c:	00813483          	ld	s1,8(sp)
    80003380:	02010113          	addi	sp,sp,32
    80003384:	00008067          	ret
    80003388:	0014d493          	srli	s1,s1,0x1
    8000338c:	ffffe097          	auipc	ra,0xffffe
    80003390:	6cc080e7          	jalr	1740(ra) # 80001a58 <mycpu>
    80003394:	0014f493          	andi	s1,s1,1
    80003398:	06952e23          	sw	s1,124(a0)
    8000339c:	fc5ff06f          	j	80003360 <push_off+0x34>

00000000800033a0 <pop_off>:
    800033a0:	ff010113          	addi	sp,sp,-16
    800033a4:	00813023          	sd	s0,0(sp)
    800033a8:	00113423          	sd	ra,8(sp)
    800033ac:	01010413          	addi	s0,sp,16
    800033b0:	ffffe097          	auipc	ra,0xffffe
    800033b4:	6a8080e7          	jalr	1704(ra) # 80001a58 <mycpu>
    800033b8:	100027f3          	csrr	a5,sstatus
    800033bc:	0027f793          	andi	a5,a5,2
    800033c0:	04079663          	bnez	a5,8000340c <pop_off+0x6c>
    800033c4:	07852783          	lw	a5,120(a0)
    800033c8:	02f05a63          	blez	a5,800033fc <pop_off+0x5c>
    800033cc:	fff7871b          	addiw	a4,a5,-1
    800033d0:	06e52c23          	sw	a4,120(a0)
    800033d4:	00071c63          	bnez	a4,800033ec <pop_off+0x4c>
    800033d8:	07c52783          	lw	a5,124(a0)
    800033dc:	00078863          	beqz	a5,800033ec <pop_off+0x4c>
    800033e0:	100027f3          	csrr	a5,sstatus
    800033e4:	0027e793          	ori	a5,a5,2
    800033e8:	10079073          	csrw	sstatus,a5
    800033ec:	00813083          	ld	ra,8(sp)
    800033f0:	00013403          	ld	s0,0(sp)
    800033f4:	01010113          	addi	sp,sp,16
    800033f8:	00008067          	ret
    800033fc:	00001517          	auipc	a0,0x1
    80003400:	e4450513          	addi	a0,a0,-444 # 80004240 <digits+0x48>
    80003404:	fffff097          	auipc	ra,0xfffff
    80003408:	018080e7          	jalr	24(ra) # 8000241c <panic>
    8000340c:	00001517          	auipc	a0,0x1
    80003410:	e1c50513          	addi	a0,a0,-484 # 80004228 <digits+0x30>
    80003414:	fffff097          	auipc	ra,0xfffff
    80003418:	008080e7          	jalr	8(ra) # 8000241c <panic>

000000008000341c <push_on>:
    8000341c:	fe010113          	addi	sp,sp,-32
    80003420:	00813823          	sd	s0,16(sp)
    80003424:	00113c23          	sd	ra,24(sp)
    80003428:	00913423          	sd	s1,8(sp)
    8000342c:	02010413          	addi	s0,sp,32
    80003430:	100024f3          	csrr	s1,sstatus
    80003434:	100027f3          	csrr	a5,sstatus
    80003438:	0027e793          	ori	a5,a5,2
    8000343c:	10079073          	csrw	sstatus,a5
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	618080e7          	jalr	1560(ra) # 80001a58 <mycpu>
    80003448:	07852783          	lw	a5,120(a0)
    8000344c:	02078663          	beqz	a5,80003478 <push_on+0x5c>
    80003450:	ffffe097          	auipc	ra,0xffffe
    80003454:	608080e7          	jalr	1544(ra) # 80001a58 <mycpu>
    80003458:	07852783          	lw	a5,120(a0)
    8000345c:	01813083          	ld	ra,24(sp)
    80003460:	01013403          	ld	s0,16(sp)
    80003464:	0017879b          	addiw	a5,a5,1
    80003468:	06f52c23          	sw	a5,120(a0)
    8000346c:	00813483          	ld	s1,8(sp)
    80003470:	02010113          	addi	sp,sp,32
    80003474:	00008067          	ret
    80003478:	0014d493          	srli	s1,s1,0x1
    8000347c:	ffffe097          	auipc	ra,0xffffe
    80003480:	5dc080e7          	jalr	1500(ra) # 80001a58 <mycpu>
    80003484:	0014f493          	andi	s1,s1,1
    80003488:	06952e23          	sw	s1,124(a0)
    8000348c:	fc5ff06f          	j	80003450 <push_on+0x34>

0000000080003490 <pop_on>:
    80003490:	ff010113          	addi	sp,sp,-16
    80003494:	00813023          	sd	s0,0(sp)
    80003498:	00113423          	sd	ra,8(sp)
    8000349c:	01010413          	addi	s0,sp,16
    800034a0:	ffffe097          	auipc	ra,0xffffe
    800034a4:	5b8080e7          	jalr	1464(ra) # 80001a58 <mycpu>
    800034a8:	100027f3          	csrr	a5,sstatus
    800034ac:	0027f793          	andi	a5,a5,2
    800034b0:	04078463          	beqz	a5,800034f8 <pop_on+0x68>
    800034b4:	07852783          	lw	a5,120(a0)
    800034b8:	02f05863          	blez	a5,800034e8 <pop_on+0x58>
    800034bc:	fff7879b          	addiw	a5,a5,-1
    800034c0:	06f52c23          	sw	a5,120(a0)
    800034c4:	07853783          	ld	a5,120(a0)
    800034c8:	00079863          	bnez	a5,800034d8 <pop_on+0x48>
    800034cc:	100027f3          	csrr	a5,sstatus
    800034d0:	ffd7f793          	andi	a5,a5,-3
    800034d4:	10079073          	csrw	sstatus,a5
    800034d8:	00813083          	ld	ra,8(sp)
    800034dc:	00013403          	ld	s0,0(sp)
    800034e0:	01010113          	addi	sp,sp,16
    800034e4:	00008067          	ret
    800034e8:	00001517          	auipc	a0,0x1
    800034ec:	d8050513          	addi	a0,a0,-640 # 80004268 <digits+0x70>
    800034f0:	fffff097          	auipc	ra,0xfffff
    800034f4:	f2c080e7          	jalr	-212(ra) # 8000241c <panic>
    800034f8:	00001517          	auipc	a0,0x1
    800034fc:	d5050513          	addi	a0,a0,-688 # 80004248 <digits+0x50>
    80003500:	fffff097          	auipc	ra,0xfffff
    80003504:	f1c080e7          	jalr	-228(ra) # 8000241c <panic>

0000000080003508 <__memset>:
    80003508:	ff010113          	addi	sp,sp,-16
    8000350c:	00813423          	sd	s0,8(sp)
    80003510:	01010413          	addi	s0,sp,16
    80003514:	1a060e63          	beqz	a2,800036d0 <__memset+0x1c8>
    80003518:	40a007b3          	neg	a5,a0
    8000351c:	0077f793          	andi	a5,a5,7
    80003520:	00778693          	addi	a3,a5,7
    80003524:	00b00813          	li	a6,11
    80003528:	0ff5f593          	andi	a1,a1,255
    8000352c:	fff6071b          	addiw	a4,a2,-1
    80003530:	1b06e663          	bltu	a3,a6,800036dc <__memset+0x1d4>
    80003534:	1cd76463          	bltu	a4,a3,800036fc <__memset+0x1f4>
    80003538:	1a078e63          	beqz	a5,800036f4 <__memset+0x1ec>
    8000353c:	00b50023          	sb	a1,0(a0)
    80003540:	00100713          	li	a4,1
    80003544:	1ae78463          	beq	a5,a4,800036ec <__memset+0x1e4>
    80003548:	00b500a3          	sb	a1,1(a0)
    8000354c:	00200713          	li	a4,2
    80003550:	1ae78a63          	beq	a5,a4,80003704 <__memset+0x1fc>
    80003554:	00b50123          	sb	a1,2(a0)
    80003558:	00300713          	li	a4,3
    8000355c:	18e78463          	beq	a5,a4,800036e4 <__memset+0x1dc>
    80003560:	00b501a3          	sb	a1,3(a0)
    80003564:	00400713          	li	a4,4
    80003568:	1ae78263          	beq	a5,a4,8000370c <__memset+0x204>
    8000356c:	00b50223          	sb	a1,4(a0)
    80003570:	00500713          	li	a4,5
    80003574:	1ae78063          	beq	a5,a4,80003714 <__memset+0x20c>
    80003578:	00b502a3          	sb	a1,5(a0)
    8000357c:	00700713          	li	a4,7
    80003580:	18e79e63          	bne	a5,a4,8000371c <__memset+0x214>
    80003584:	00b50323          	sb	a1,6(a0)
    80003588:	00700e93          	li	t4,7
    8000358c:	00859713          	slli	a4,a1,0x8
    80003590:	00e5e733          	or	a4,a1,a4
    80003594:	01059e13          	slli	t3,a1,0x10
    80003598:	01c76e33          	or	t3,a4,t3
    8000359c:	01859313          	slli	t1,a1,0x18
    800035a0:	006e6333          	or	t1,t3,t1
    800035a4:	02059893          	slli	a7,a1,0x20
    800035a8:	40f60e3b          	subw	t3,a2,a5
    800035ac:	011368b3          	or	a7,t1,a7
    800035b0:	02859813          	slli	a6,a1,0x28
    800035b4:	0108e833          	or	a6,a7,a6
    800035b8:	03059693          	slli	a3,a1,0x30
    800035bc:	003e589b          	srliw	a7,t3,0x3
    800035c0:	00d866b3          	or	a3,a6,a3
    800035c4:	03859713          	slli	a4,a1,0x38
    800035c8:	00389813          	slli	a6,a7,0x3
    800035cc:	00f507b3          	add	a5,a0,a5
    800035d0:	00e6e733          	or	a4,a3,a4
    800035d4:	000e089b          	sext.w	a7,t3
    800035d8:	00f806b3          	add	a3,a6,a5
    800035dc:	00e7b023          	sd	a4,0(a5)
    800035e0:	00878793          	addi	a5,a5,8
    800035e4:	fed79ce3          	bne	a5,a3,800035dc <__memset+0xd4>
    800035e8:	ff8e7793          	andi	a5,t3,-8
    800035ec:	0007871b          	sext.w	a4,a5
    800035f0:	01d787bb          	addw	a5,a5,t4
    800035f4:	0ce88e63          	beq	a7,a4,800036d0 <__memset+0x1c8>
    800035f8:	00f50733          	add	a4,a0,a5
    800035fc:	00b70023          	sb	a1,0(a4)
    80003600:	0017871b          	addiw	a4,a5,1
    80003604:	0cc77663          	bgeu	a4,a2,800036d0 <__memset+0x1c8>
    80003608:	00e50733          	add	a4,a0,a4
    8000360c:	00b70023          	sb	a1,0(a4)
    80003610:	0027871b          	addiw	a4,a5,2
    80003614:	0ac77e63          	bgeu	a4,a2,800036d0 <__memset+0x1c8>
    80003618:	00e50733          	add	a4,a0,a4
    8000361c:	00b70023          	sb	a1,0(a4)
    80003620:	0037871b          	addiw	a4,a5,3
    80003624:	0ac77663          	bgeu	a4,a2,800036d0 <__memset+0x1c8>
    80003628:	00e50733          	add	a4,a0,a4
    8000362c:	00b70023          	sb	a1,0(a4)
    80003630:	0047871b          	addiw	a4,a5,4
    80003634:	08c77e63          	bgeu	a4,a2,800036d0 <__memset+0x1c8>
    80003638:	00e50733          	add	a4,a0,a4
    8000363c:	00b70023          	sb	a1,0(a4)
    80003640:	0057871b          	addiw	a4,a5,5
    80003644:	08c77663          	bgeu	a4,a2,800036d0 <__memset+0x1c8>
    80003648:	00e50733          	add	a4,a0,a4
    8000364c:	00b70023          	sb	a1,0(a4)
    80003650:	0067871b          	addiw	a4,a5,6
    80003654:	06c77e63          	bgeu	a4,a2,800036d0 <__memset+0x1c8>
    80003658:	00e50733          	add	a4,a0,a4
    8000365c:	00b70023          	sb	a1,0(a4)
    80003660:	0077871b          	addiw	a4,a5,7
    80003664:	06c77663          	bgeu	a4,a2,800036d0 <__memset+0x1c8>
    80003668:	00e50733          	add	a4,a0,a4
    8000366c:	00b70023          	sb	a1,0(a4)
    80003670:	0087871b          	addiw	a4,a5,8
    80003674:	04c77e63          	bgeu	a4,a2,800036d0 <__memset+0x1c8>
    80003678:	00e50733          	add	a4,a0,a4
    8000367c:	00b70023          	sb	a1,0(a4)
    80003680:	0097871b          	addiw	a4,a5,9
    80003684:	04c77663          	bgeu	a4,a2,800036d0 <__memset+0x1c8>
    80003688:	00e50733          	add	a4,a0,a4
    8000368c:	00b70023          	sb	a1,0(a4)
    80003690:	00a7871b          	addiw	a4,a5,10
    80003694:	02c77e63          	bgeu	a4,a2,800036d0 <__memset+0x1c8>
    80003698:	00e50733          	add	a4,a0,a4
    8000369c:	00b70023          	sb	a1,0(a4)
    800036a0:	00b7871b          	addiw	a4,a5,11
    800036a4:	02c77663          	bgeu	a4,a2,800036d0 <__memset+0x1c8>
    800036a8:	00e50733          	add	a4,a0,a4
    800036ac:	00b70023          	sb	a1,0(a4)
    800036b0:	00c7871b          	addiw	a4,a5,12
    800036b4:	00c77e63          	bgeu	a4,a2,800036d0 <__memset+0x1c8>
    800036b8:	00e50733          	add	a4,a0,a4
    800036bc:	00b70023          	sb	a1,0(a4)
    800036c0:	00d7879b          	addiw	a5,a5,13
    800036c4:	00c7f663          	bgeu	a5,a2,800036d0 <__memset+0x1c8>
    800036c8:	00f507b3          	add	a5,a0,a5
    800036cc:	00b78023          	sb	a1,0(a5)
    800036d0:	00813403          	ld	s0,8(sp)
    800036d4:	01010113          	addi	sp,sp,16
    800036d8:	00008067          	ret
    800036dc:	00b00693          	li	a3,11
    800036e0:	e55ff06f          	j	80003534 <__memset+0x2c>
    800036e4:	00300e93          	li	t4,3
    800036e8:	ea5ff06f          	j	8000358c <__memset+0x84>
    800036ec:	00100e93          	li	t4,1
    800036f0:	e9dff06f          	j	8000358c <__memset+0x84>
    800036f4:	00000e93          	li	t4,0
    800036f8:	e95ff06f          	j	8000358c <__memset+0x84>
    800036fc:	00000793          	li	a5,0
    80003700:	ef9ff06f          	j	800035f8 <__memset+0xf0>
    80003704:	00200e93          	li	t4,2
    80003708:	e85ff06f          	j	8000358c <__memset+0x84>
    8000370c:	00400e93          	li	t4,4
    80003710:	e7dff06f          	j	8000358c <__memset+0x84>
    80003714:	00500e93          	li	t4,5
    80003718:	e75ff06f          	j	8000358c <__memset+0x84>
    8000371c:	00600e93          	li	t4,6
    80003720:	e6dff06f          	j	8000358c <__memset+0x84>

0000000080003724 <__memmove>:
    80003724:	ff010113          	addi	sp,sp,-16
    80003728:	00813423          	sd	s0,8(sp)
    8000372c:	01010413          	addi	s0,sp,16
    80003730:	0e060863          	beqz	a2,80003820 <__memmove+0xfc>
    80003734:	fff6069b          	addiw	a3,a2,-1
    80003738:	0006881b          	sext.w	a6,a3
    8000373c:	0ea5e863          	bltu	a1,a0,8000382c <__memmove+0x108>
    80003740:	00758713          	addi	a4,a1,7
    80003744:	00a5e7b3          	or	a5,a1,a0
    80003748:	40a70733          	sub	a4,a4,a0
    8000374c:	0077f793          	andi	a5,a5,7
    80003750:	00f73713          	sltiu	a4,a4,15
    80003754:	00174713          	xori	a4,a4,1
    80003758:	0017b793          	seqz	a5,a5
    8000375c:	00e7f7b3          	and	a5,a5,a4
    80003760:	10078863          	beqz	a5,80003870 <__memmove+0x14c>
    80003764:	00900793          	li	a5,9
    80003768:	1107f463          	bgeu	a5,a6,80003870 <__memmove+0x14c>
    8000376c:	0036581b          	srliw	a6,a2,0x3
    80003770:	fff8081b          	addiw	a6,a6,-1
    80003774:	02081813          	slli	a6,a6,0x20
    80003778:	01d85893          	srli	a7,a6,0x1d
    8000377c:	00858813          	addi	a6,a1,8
    80003780:	00058793          	mv	a5,a1
    80003784:	00050713          	mv	a4,a0
    80003788:	01088833          	add	a6,a7,a6
    8000378c:	0007b883          	ld	a7,0(a5)
    80003790:	00878793          	addi	a5,a5,8
    80003794:	00870713          	addi	a4,a4,8
    80003798:	ff173c23          	sd	a7,-8(a4)
    8000379c:	ff0798e3          	bne	a5,a6,8000378c <__memmove+0x68>
    800037a0:	ff867713          	andi	a4,a2,-8
    800037a4:	02071793          	slli	a5,a4,0x20
    800037a8:	0207d793          	srli	a5,a5,0x20
    800037ac:	00f585b3          	add	a1,a1,a5
    800037b0:	40e686bb          	subw	a3,a3,a4
    800037b4:	00f507b3          	add	a5,a0,a5
    800037b8:	06e60463          	beq	a2,a4,80003820 <__memmove+0xfc>
    800037bc:	0005c703          	lbu	a4,0(a1)
    800037c0:	00e78023          	sb	a4,0(a5)
    800037c4:	04068e63          	beqz	a3,80003820 <__memmove+0xfc>
    800037c8:	0015c603          	lbu	a2,1(a1)
    800037cc:	00100713          	li	a4,1
    800037d0:	00c780a3          	sb	a2,1(a5)
    800037d4:	04e68663          	beq	a3,a4,80003820 <__memmove+0xfc>
    800037d8:	0025c603          	lbu	a2,2(a1)
    800037dc:	00200713          	li	a4,2
    800037e0:	00c78123          	sb	a2,2(a5)
    800037e4:	02e68e63          	beq	a3,a4,80003820 <__memmove+0xfc>
    800037e8:	0035c603          	lbu	a2,3(a1)
    800037ec:	00300713          	li	a4,3
    800037f0:	00c781a3          	sb	a2,3(a5)
    800037f4:	02e68663          	beq	a3,a4,80003820 <__memmove+0xfc>
    800037f8:	0045c603          	lbu	a2,4(a1)
    800037fc:	00400713          	li	a4,4
    80003800:	00c78223          	sb	a2,4(a5)
    80003804:	00e68e63          	beq	a3,a4,80003820 <__memmove+0xfc>
    80003808:	0055c603          	lbu	a2,5(a1)
    8000380c:	00500713          	li	a4,5
    80003810:	00c782a3          	sb	a2,5(a5)
    80003814:	00e68663          	beq	a3,a4,80003820 <__memmove+0xfc>
    80003818:	0065c703          	lbu	a4,6(a1)
    8000381c:	00e78323          	sb	a4,6(a5)
    80003820:	00813403          	ld	s0,8(sp)
    80003824:	01010113          	addi	sp,sp,16
    80003828:	00008067          	ret
    8000382c:	02061713          	slli	a4,a2,0x20
    80003830:	02075713          	srli	a4,a4,0x20
    80003834:	00e587b3          	add	a5,a1,a4
    80003838:	f0f574e3          	bgeu	a0,a5,80003740 <__memmove+0x1c>
    8000383c:	02069613          	slli	a2,a3,0x20
    80003840:	02065613          	srli	a2,a2,0x20
    80003844:	fff64613          	not	a2,a2
    80003848:	00e50733          	add	a4,a0,a4
    8000384c:	00c78633          	add	a2,a5,a2
    80003850:	fff7c683          	lbu	a3,-1(a5)
    80003854:	fff78793          	addi	a5,a5,-1
    80003858:	fff70713          	addi	a4,a4,-1
    8000385c:	00d70023          	sb	a3,0(a4)
    80003860:	fec798e3          	bne	a5,a2,80003850 <__memmove+0x12c>
    80003864:	00813403          	ld	s0,8(sp)
    80003868:	01010113          	addi	sp,sp,16
    8000386c:	00008067          	ret
    80003870:	02069713          	slli	a4,a3,0x20
    80003874:	02075713          	srli	a4,a4,0x20
    80003878:	00170713          	addi	a4,a4,1
    8000387c:	00e50733          	add	a4,a0,a4
    80003880:	00050793          	mv	a5,a0
    80003884:	0005c683          	lbu	a3,0(a1)
    80003888:	00178793          	addi	a5,a5,1
    8000388c:	00158593          	addi	a1,a1,1
    80003890:	fed78fa3          	sb	a3,-1(a5)
    80003894:	fee798e3          	bne	a5,a4,80003884 <__memmove+0x160>
    80003898:	f89ff06f          	j	80003820 <__memmove+0xfc>

000000008000389c <__putc>:
    8000389c:	fe010113          	addi	sp,sp,-32
    800038a0:	00813823          	sd	s0,16(sp)
    800038a4:	00113c23          	sd	ra,24(sp)
    800038a8:	02010413          	addi	s0,sp,32
    800038ac:	00050793          	mv	a5,a0
    800038b0:	fef40593          	addi	a1,s0,-17
    800038b4:	00100613          	li	a2,1
    800038b8:	00000513          	li	a0,0
    800038bc:	fef407a3          	sb	a5,-17(s0)
    800038c0:	fffff097          	auipc	ra,0xfffff
    800038c4:	b3c080e7          	jalr	-1220(ra) # 800023fc <console_write>
    800038c8:	01813083          	ld	ra,24(sp)
    800038cc:	01013403          	ld	s0,16(sp)
    800038d0:	02010113          	addi	sp,sp,32
    800038d4:	00008067          	ret

00000000800038d8 <__getc>:
    800038d8:	fe010113          	addi	sp,sp,-32
    800038dc:	00813823          	sd	s0,16(sp)
    800038e0:	00113c23          	sd	ra,24(sp)
    800038e4:	02010413          	addi	s0,sp,32
    800038e8:	fe840593          	addi	a1,s0,-24
    800038ec:	00100613          	li	a2,1
    800038f0:	00000513          	li	a0,0
    800038f4:	fffff097          	auipc	ra,0xfffff
    800038f8:	ae8080e7          	jalr	-1304(ra) # 800023dc <console_read>
    800038fc:	fe844503          	lbu	a0,-24(s0)
    80003900:	01813083          	ld	ra,24(sp)
    80003904:	01013403          	ld	s0,16(sp)
    80003908:	02010113          	addi	sp,sp,32
    8000390c:	00008067          	ret

0000000080003910 <console_handler>:
    80003910:	fe010113          	addi	sp,sp,-32
    80003914:	00813823          	sd	s0,16(sp)
    80003918:	00113c23          	sd	ra,24(sp)
    8000391c:	00913423          	sd	s1,8(sp)
    80003920:	02010413          	addi	s0,sp,32
    80003924:	14202773          	csrr	a4,scause
    80003928:	100027f3          	csrr	a5,sstatus
    8000392c:	0027f793          	andi	a5,a5,2
    80003930:	06079e63          	bnez	a5,800039ac <console_handler+0x9c>
    80003934:	00074c63          	bltz	a4,8000394c <console_handler+0x3c>
    80003938:	01813083          	ld	ra,24(sp)
    8000393c:	01013403          	ld	s0,16(sp)
    80003940:	00813483          	ld	s1,8(sp)
    80003944:	02010113          	addi	sp,sp,32
    80003948:	00008067          	ret
    8000394c:	0ff77713          	andi	a4,a4,255
    80003950:	00900793          	li	a5,9
    80003954:	fef712e3          	bne	a4,a5,80003938 <console_handler+0x28>
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	6dc080e7          	jalr	1756(ra) # 80002034 <plic_claim>
    80003960:	00a00793          	li	a5,10
    80003964:	00050493          	mv	s1,a0
    80003968:	02f50c63          	beq	a0,a5,800039a0 <console_handler+0x90>
    8000396c:	fc0506e3          	beqz	a0,80003938 <console_handler+0x28>
    80003970:	00050593          	mv	a1,a0
    80003974:	00000517          	auipc	a0,0x0
    80003978:	7fc50513          	addi	a0,a0,2044 # 80004170 <CONSOLE_STATUS+0x160>
    8000397c:	fffff097          	auipc	ra,0xfffff
    80003980:	afc080e7          	jalr	-1284(ra) # 80002478 <__printf>
    80003984:	01013403          	ld	s0,16(sp)
    80003988:	01813083          	ld	ra,24(sp)
    8000398c:	00048513          	mv	a0,s1
    80003990:	00813483          	ld	s1,8(sp)
    80003994:	02010113          	addi	sp,sp,32
    80003998:	ffffe317          	auipc	t1,0xffffe
    8000399c:	6d430067          	jr	1748(t1) # 8000206c <plic_complete>
    800039a0:	fffff097          	auipc	ra,0xfffff
    800039a4:	3e0080e7          	jalr	992(ra) # 80002d80 <uartintr>
    800039a8:	fddff06f          	j	80003984 <console_handler+0x74>
    800039ac:	00001517          	auipc	a0,0x1
    800039b0:	8c450513          	addi	a0,a0,-1852 # 80004270 <digits+0x78>
    800039b4:	fffff097          	auipc	ra,0xfffff
    800039b8:	a68080e7          	jalr	-1432(ra) # 8000241c <panic>
	...
