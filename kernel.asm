
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	dd013103          	ld	sp,-560(sp) # 80005dd0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	54d020ef          	jal	ra,80002d68 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <trap_handler>:
.align 4

.extern _ZN5Riscv11trapHandlerEv

trap_handler:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
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
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    sd sp, (framePointer), t0
    80001084:	00005297          	auipc	t0,0x5
    80001088:	dc22be23          	sd	sp,-548(t0) # 80005e60 <framePointer>

    call _ZN5Riscv11trapHandlerEv
    8000108c:	1c1000ef          	jal	ra,80001a4c <_ZN5Riscv11trapHandlerEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    80001090:	00013003          	ld	zero,0(sp)
    80001094:	00813083          	ld	ra,8(sp)
    80001098:	01013103          	ld	sp,16(sp)
    8000109c:	01813183          	ld	gp,24(sp)
    800010a0:	02013203          	ld	tp,32(sp)
    800010a4:	02813283          	ld	t0,40(sp)
    800010a8:	03013303          	ld	t1,48(sp)
    800010ac:	03813383          	ld	t2,56(sp)
    800010b0:	04013403          	ld	s0,64(sp)
    800010b4:	04813483          	ld	s1,72(sp)
    800010b8:	05013503          	ld	a0,80(sp)
    800010bc:	05813583          	ld	a1,88(sp)
    800010c0:	06013603          	ld	a2,96(sp)
    800010c4:	06813683          	ld	a3,104(sp)
    800010c8:	07013703          	ld	a4,112(sp)
    800010cc:	07813783          	ld	a5,120(sp)
    800010d0:	08013803          	ld	a6,128(sp)
    800010d4:	08813883          	ld	a7,136(sp)
    800010d8:	09013903          	ld	s2,144(sp)
    800010dc:	09813983          	ld	s3,152(sp)
    800010e0:	0a013a03          	ld	s4,160(sp)
    800010e4:	0a813a83          	ld	s5,168(sp)
    800010e8:	0b013b03          	ld	s6,176(sp)
    800010ec:	0b813b83          	ld	s7,184(sp)
    800010f0:	0c013c03          	ld	s8,192(sp)
    800010f4:	0c813c83          	ld	s9,200(sp)
    800010f8:	0d013d03          	ld	s10,208(sp)
    800010fc:	0d813d83          	ld	s11,216(sp)
    80001100:	0e013e03          	ld	t3,224(sp)
    80001104:	0e813e83          	ld	t4,232(sp)
    80001108:	0f013f03          	ld	t5,240(sp)
    8000110c:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001110:	10010113          	addi	sp,sp,256
    80001114:	10200073          	sret
	...

0000000080001120 <_ZN6Thread13contextSwitchEPNS_7ContextES1_>:
.align 4

_ZN6Thread13contextSwitchEPNS_7ContextES1_:
    # a0 = &oldContext, a1 = &newContext

    sd ra, 0(a0)
    80001120:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 8(a0)
    80001124:	00253423          	sd	sp,8(a0)

    ld ra, 0(a1)
    80001128:	0005b083          	ld	ra,0(a1)
    ld sp, 8(a1)
    8000112c:	0085b103          	ld	sp,8(a1)

    ret
    80001130:	00008067          	ret

0000000080001134 <_ZN6Thread11initContextEPNS_7ContextEPFvvEPv>:

_ZN6Thread11initContextEPNS_7ContextEPFvvEPv:
    # a0 = context, a1 = entry (Thread::wrapper), a2 = stackTop

    sd a1, 0(a0)
    80001134:	00b53023          	sd	a1,0(a0)
    sd a2, 8(a0)
    80001138:	00c53423          	sd	a2,8(a0)

    8000113c:	00008067          	ret
    80001140:	0000                	unimp
	...

0000000080001144 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001144:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001148:	00b29a63          	bne	t0,a1,8000115c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000114c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001150:	fe029ae3          	bnez	t0,80001144 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001154:	00000513          	li	a0,0
    jr ra                  # Return.
    80001158:	00008067          	ret

000000008000115c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000115c:	00100513          	li	a0,1
    80001160:	00008067          	ret

0000000080001164 <_Z9mem_allocm>:
// Created by os on 10/7/25.
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size) {
    80001164:	ff010113          	addi	sp,sp,-16
    80001168:	00813423          	sd	s0,8(sp)
    8000116c:	01010413          	addi	s0,sp,16
    if (size == 0) return nullptr;
    80001170:	02050863          	beqz	a0,800011a0 <_Z9mem_allocm+0x3c>

    size_t blocks = size / MEM_BLOCK_SIZE;
    80001174:	00655793          	srli	a5,a0,0x6
    if (size % MEM_BLOCK_SIZE != 0) blocks++;
    80001178:	03f57513          	andi	a0,a0,63
    8000117c:	00050463          	beqz	a0,80001184 <_Z9mem_allocm+0x20>
    80001180:	00178793          	addi	a5,a5,1

    void* result;
    asm volatile("mv a1, %0" :: "r"(blocks));
    80001184:	00078593          	mv	a1,a5
    asm volatile("li a0, 0x01");
    80001188:	00100513          	li	a0,1
    asm volatile("ecall");
    8000118c:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    80001190:	00050513          	mv	a0,a0
    return result;
}
    80001194:	00813403          	ld	s0,8(sp)
    80001198:	01010113          	addi	sp,sp,16
    8000119c:	00008067          	ret
    if (size == 0) return nullptr;
    800011a0:	00000513          	li	a0,0
    800011a4:	ff1ff06f          	j	80001194 <_Z9mem_allocm+0x30>

00000000800011a8 <_Z8mem_freePv>:

int mem_free(void* addr) {
    800011a8:	ff010113          	addi	sp,sp,-16
    800011ac:	00813423          	sd	s0,8(sp)
    800011b0:	01010413          	addi	s0,sp,16
    int result;
    asm volatile("mv a1, %0" :: "r"(addr));
    800011b4:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x02");
    800011b8:	00200513          	li	a0,2
    asm volatile("ecall");
    800011bc:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800011c0:	00050513          	mv	a0,a0
    return result;
}
    800011c4:	0005051b          	sext.w	a0,a0
    800011c8:	00813403          	ld	s0,8(sp)
    800011cc:	01010113          	addi	sp,sp,16
    800011d0:	00008067          	ret

00000000800011d4 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    800011d4:	ff010113          	addi	sp,sp,-16
    800011d8:	00813423          	sd	s0,8(sp)
    800011dc:	01010413          	addi	s0,sp,16
    size_t result;
    asm volatile("li a0, 0x03");
    800011e0:	00300513          	li	a0,3
    asm volatile("ecall");
    800011e4:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800011e8:	00050513          	mv	a0,a0
    return result;
}
    800011ec:	00813403          	ld	s0,8(sp)
    800011f0:	01010113          	addi	sp,sp,16
    800011f4:	00008067          	ret

00000000800011f8 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    800011f8:	ff010113          	addi	sp,sp,-16
    800011fc:	00813423          	sd	s0,8(sp)
    80001200:	01010413          	addi	s0,sp,16
    size_t result;
    asm volatile("li a0, 0x04");
    80001204:	00400513          	li	a0,4
    asm volatile("ecall");
    80001208:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    8000120c:	00050513          	mv	a0,a0
    return result;
}
    80001210:	00813403          	ld	s0,8(sp)
    80001214:	01010113          	addi	sp,sp,16
    80001218:	00008067          	ret

000000008000121c <_Z13thread_createPP6ThreadPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg) {
    8000121c:	fd010113          	addi	sp,sp,-48
    80001220:	02113423          	sd	ra,40(sp)
    80001224:	02813023          	sd	s0,32(sp)
    80001228:	00913c23          	sd	s1,24(sp)
    8000122c:	01213823          	sd	s2,16(sp)
    80001230:	01313423          	sd	s3,8(sp)
    80001234:	03010413          	addi	s0,sp,48
    if (!handle || !start_routine) return -1;
    80001238:	06050c63          	beqz	a0,800012b0 <_Z13thread_createPP6ThreadPFvPvES2_+0x94>
    8000123c:	00050493          	mv	s1,a0
    80001240:	00058913          	mv	s2,a1
    80001244:	00060993          	mv	s3,a2
    80001248:	06058863          	beqz	a1,800012b8 <_Z13thread_createPP6ThreadPFvPvES2_+0x9c>

    size_t stackBytes = DEFAULT_STACK_SIZE;
    void* stack = mem_alloc(stackBytes);
    8000124c:	00001537          	lui	a0,0x1
    80001250:	00000097          	auipc	ra,0x0
    80001254:	f14080e7          	jalr	-236(ra) # 80001164 <_Z9mem_allocm>
    if (!stack) return -1;
    80001258:	06050463          	beqz	a0,800012c0 <_Z13thread_createPP6ThreadPFvPvES2_+0xa4>

    // void* stackTop = (char*)stack + stackBytes;

    int result;

    asm volatile("mv a1, %0" :: "r"(handle));
    8000125c:	00048593          	mv	a1,s1
    asm volatile("mv a2, %0" :: "r"(start_routine));
    80001260:	00090613          	mv	a2,s2
    asm volatile("mv a3, %0" :: "r"(arg));
    80001264:	00098693          	mv	a3,s3
    asm volatile("mv a4, %0" :: "r"(stack));
    80001268:	00050713          	mv	a4,a0
    asm volatile("li a0, 0x11");
    8000126c:	01100513          	li	a0,17
    asm volatile("ecall");
    80001270:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    80001274:	00050793          	mv	a5,a0
    80001278:	0007849b          	sext.w	s1,a5

    if (result < 0) {
    8000127c:	02079713          	slli	a4,a5,0x20
    80001280:	02074263          	bltz	a4,800012a4 <_Z13thread_createPP6ThreadPFvPvES2_+0x88>
        mem_free(stack);
    }

    return result;
}
    80001284:	00048513          	mv	a0,s1
    80001288:	02813083          	ld	ra,40(sp)
    8000128c:	02013403          	ld	s0,32(sp)
    80001290:	01813483          	ld	s1,24(sp)
    80001294:	01013903          	ld	s2,16(sp)
    80001298:	00813983          	ld	s3,8(sp)
    8000129c:	03010113          	addi	sp,sp,48
    800012a0:	00008067          	ret
        mem_free(stack);
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	f04080e7          	jalr	-252(ra) # 800011a8 <_Z8mem_freePv>
    800012ac:	fd9ff06f          	j	80001284 <_Z13thread_createPP6ThreadPFvPvES2_+0x68>
    if (!handle || !start_routine) return -1;
    800012b0:	fff00493          	li	s1,-1
    800012b4:	fd1ff06f          	j	80001284 <_Z13thread_createPP6ThreadPFvPvES2_+0x68>
    800012b8:	fff00493          	li	s1,-1
    800012bc:	fc9ff06f          	j	80001284 <_Z13thread_createPP6ThreadPFvPvES2_+0x68>
    if (!stack) return -1;
    800012c0:	fff00493          	li	s1,-1
    800012c4:	fc1ff06f          	j	80001284 <_Z13thread_createPP6ThreadPFvPvES2_+0x68>

00000000800012c8 <_Z11thread_exitv>:

int thread_exit() {
    800012c8:	ff010113          	addi	sp,sp,-16
    800012cc:	00813423          	sd	s0,8(sp)
    800012d0:	01010413          	addi	s0,sp,16
    int result;
    asm volatile("li a0, 0x12");
    800012d4:	01200513          	li	a0,18
    asm volatile("ecall");
    800012d8:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800012dc:	00050513          	mv	a0,a0
    return result;
}
    800012e0:	0005051b          	sext.w	a0,a0
    800012e4:	00813403          	ld	s0,8(sp)
    800012e8:	01010113          	addi	sp,sp,16
    800012ec:	00008067          	ret

00000000800012f0 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00813423          	sd	s0,8(sp)
    800012f8:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x13");
    800012fc:	01300513          	li	a0,19
    asm volatile("ecall");
    80001300:	00000073          	ecall
    80001304:	00813403          	ld	s0,8(sp)
    80001308:	01010113          	addi	sp,sp,16
    8000130c:	00008067          	ret

0000000080001310 <_ZN9Semaphore15createSemaphoreEm>:

#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"

Semaphore *Semaphore::createSemaphore(uint64 init) {
    80001310:	fe010113          	addi	sp,sp,-32
    80001314:	00113c23          	sd	ra,24(sp)
    80001318:	00813823          	sd	s0,16(sp)
    8000131c:	00913423          	sd	s1,8(sp)
    80001320:	02010413          	addi	s0,sp,32
    80001324:	00050493          	mv	s1,a0

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    80001328:	00100513          	li	a0,1
    8000132c:	00001097          	auipc	ra,0x1
    80001330:	928080e7          	jalr	-1752(ra) # 80001c54 <_ZN15MemoryAllocator9mem_allocEm>
    void operator delete[](void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    explicit Semaphore(uint64 init) : val(init) {}
    80001334:	00952023          	sw	s1,0(a0) # 1000 <_entry-0x7ffff000>
    80001338:	00053423          	sd	zero,8(a0)
    8000133c:	00053823          	sd	zero,16(a0)
    return new Semaphore(init);
}
    80001340:	01813083          	ld	ra,24(sp)
    80001344:	01013403          	ld	s0,16(sp)
    80001348:	00813483          	ld	s1,8(sp)
    8000134c:	02010113          	addi	sp,sp,32
    80001350:	00008067          	ret

0000000080001354 <_ZN9Semaphore3getEv>:

Thread* Semaphore::get() {
    80001354:	ff010113          	addi	sp,sp,-16
    80001358:	00813423          	sd	s0,8(sp)
    8000135c:	01010413          	addi	s0,sp,16
    80001360:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80001364:	00853503          	ld	a0,8(a0)
    80001368:	00050a63          	beqz	a0,8000137c <_ZN9Semaphore3getEv+0x28>

    Thread* thread = head;
    head = head->semaphoreNext;
    8000136c:	04853703          	ld	a4,72(a0)
    80001370:	00e7b423          	sd	a4,8(a5)

    if (!head) tail = nullptr;
    80001374:	00070a63          	beqz	a4,80001388 <_ZN9Semaphore3getEv+0x34>
    thread->semaphoreNext = nullptr;
    80001378:	04053423          	sd	zero,72(a0)

    return thread;
}
    8000137c:	00813403          	ld	s0,8(sp)
    80001380:	01010113          	addi	sp,sp,16
    80001384:	00008067          	ret
    if (!head) tail = nullptr;
    80001388:	0007b823          	sd	zero,16(a5)
    8000138c:	fedff06f          	j	80001378 <_ZN9Semaphore3getEv+0x24>

0000000080001390 <_ZN9Semaphore3putEP6Thread>:


void Semaphore::put(Thread *thread) {
    80001390:	ff010113          	addi	sp,sp,-16
    80001394:	00813423          	sd	s0,8(sp)
    80001398:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    8000139c:	00853783          	ld	a5,8(a0)
    800013a0:	00078e63          	beqz	a5,800013bc <_ZN9Semaphore3putEP6Thread+0x2c>
    else tail->semaphoreNext = thread;
    800013a4:	01053783          	ld	a5,16(a0)
    800013a8:	04b7b423          	sd	a1,72(a5)
    tail = thread;
    800013ac:	00b53823          	sd	a1,16(a0)
}
    800013b0:	00813403          	ld	s0,8(sp)
    800013b4:	01010113          	addi	sp,sp,16
    800013b8:	00008067          	ret
    if (!head) head = thread;
    800013bc:	00b53423          	sd	a1,8(a0)
    800013c0:	fedff06f          	j	800013ac <_ZN9Semaphore3putEP6Thread+0x1c>

00000000800013c4 <_ZN9Semaphore4waitEv>:

void Semaphore::wait() {
    val--;
    800013c4:	00052783          	lw	a5,0(a0)
    800013c8:	fff7879b          	addiw	a5,a5,-1
    800013cc:	00f52023          	sw	a5,0(a0)

    if (val < 0) {
    800013d0:	02079713          	slli	a4,a5,0x20
    800013d4:	00074463          	bltz	a4,800013dc <_ZN9Semaphore4waitEv+0x18>
    800013d8:	00008067          	ret
void Semaphore::wait() {
    800013dc:	ff010113          	addi	sp,sp,-16
    800013e0:	00113423          	sd	ra,8(sp)
    800013e4:	00813023          	sd	s0,0(sp)
    800013e8:	01010413          	addi	s0,sp,16
        Thread::running->setState(BLOCKED);
    800013ec:	00005797          	auipc	a5,0x5
    800013f0:	9f47b783          	ld	a5,-1548(a5) # 80005de0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800013f4:	0007b583          	ld	a1,0(a5)
    void start();                       // prepare and put in the Scheduler
    void exit();                        // mark as finished (could be called from wrapper)
    static void wrapper();              // static function - entry which calls body(arg) and exit

    ThreadState getState() const { return state; }
    void setState(ThreadState s) { state = s; }
    800013f8:	00300793          	li	a5,3
    800013fc:	02f5ac23          	sw	a5,56(a1)
        put(Thread::running);
    80001400:	00000097          	auipc	ra,0x0
    80001404:	f90080e7          	jalr	-112(ra) # 80001390 <_ZN9Semaphore3putEP6Thread>
        Thread::dispatch();
    80001408:	00000097          	auipc	ra,0x0
    8000140c:	3a0080e7          	jalr	928(ra) # 800017a8 <_ZN6Thread8dispatchEv>
    }
}
    80001410:	00813083          	ld	ra,8(sp)
    80001414:	00013403          	ld	s0,0(sp)
    80001418:	01010113          	addi	sp,sp,16
    8000141c:	00008067          	ret

0000000080001420 <_ZN9Semaphore6signalEv>:

void Semaphore::signal() {
    val++;
    80001420:	00052783          	lw	a5,0(a0)
    80001424:	0017879b          	addiw	a5,a5,1
    80001428:	0007871b          	sext.w	a4,a5
    8000142c:	00f52023          	sw	a5,0(a0)

    if (val <= 0) {
    80001430:	00e05463          	blez	a4,80001438 <_ZN9Semaphore6signalEv+0x18>
    80001434:	00008067          	ret
void Semaphore::signal() {
    80001438:	ff010113          	addi	sp,sp,-16
    8000143c:	00113423          	sd	ra,8(sp)
    80001440:	00813023          	sd	s0,0(sp)
    80001444:	01010413          	addi	s0,sp,16
        Thread* thread = get();
    80001448:	00000097          	auipc	ra,0x0
    8000144c:	f0c080e7          	jalr	-244(ra) # 80001354 <_ZN9Semaphore3getEv>

        if (thread) {
    80001450:	00050a63          	beqz	a0,80001464 <_ZN9Semaphore6signalEv+0x44>
    80001454:	00100793          	li	a5,1
    80001458:	02f52c23          	sw	a5,56(a0)
            thread->setState(READY);
            Scheduler::put(thread);
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	4b4080e7          	jalr	1204(ra) # 80001910 <_ZN9Scheduler3putEP6Thread>
        }
    }
}
    80001464:	00813083          	ld	ra,8(sp)
    80001468:	00013403          	ld	s0,0(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <_ZN9Semaphore5closeEv>:

void Semaphore::close() {
    80001474:	fe010113          	addi	sp,sp,-32
    80001478:	00113c23          	sd	ra,24(sp)
    8000147c:	00813823          	sd	s0,16(sp)
    80001480:	00913423          	sd	s1,8(sp)
    80001484:	02010413          	addi	s0,sp,32
    80001488:	00050493          	mv	s1,a0
    while (head) {
    8000148c:	0084b783          	ld	a5,8(s1)
    80001490:	02078263          	beqz	a5,800014b4 <_ZN9Semaphore5closeEv+0x40>
        Thread* thread = get();
    80001494:	00048513          	mv	a0,s1
    80001498:	00000097          	auipc	ra,0x0
    8000149c:	ebc080e7          	jalr	-324(ra) # 80001354 <_ZN9Semaphore3getEv>
    800014a0:	00100793          	li	a5,1
    800014a4:	02f52c23          	sw	a5,56(a0)
        thread->setState(READY);
        Scheduler::put(thread);
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	468080e7          	jalr	1128(ra) # 80001910 <_ZN9Scheduler3putEP6Thread>
    while (head) {
    800014b0:	fddff06f          	j	8000148c <_ZN9Semaphore5closeEv+0x18>
    }
    800014b4:	01813083          	ld	ra,24(sp)
    800014b8:	01013403          	ld	s0,16(sp)
    800014bc:	00813483          	ld	s1,8(sp)
    800014c0:	02010113          	addi	sp,sp,32
    800014c4:	00008067          	ret

00000000800014c8 <_ZN6ThreadC1EPFvPvES0_S0_m>:
Thread::Thread(Body b, void* a, size_t stackSizeBytes)
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), schedulerNext(nullptr), semaphoreNext(nullptr) {
    allocateStack(stackSizeBytes);
}

Thread::Thread(Body b, void* a, void* externalStackBase, size_t externalStackSize)
    800014c8:	ff010113          	addi	sp,sp,-16
    800014cc:	00813423          	sd	s0,8(sp)
    800014d0:	01010413          	addi	s0,sp,16
    : id(staticId++), stack(nullptr), stackSize(0), body(b), args(a), state(NEW), schedulerNext(nullptr), semaphoreNext(nullptr) {
    800014d4:	00005817          	auipc	a6,0x5
    800014d8:	96c80813          	addi	a6,a6,-1684 # 80005e40 <_ZN6Thread8staticIdE>
    800014dc:	00082783          	lw	a5,0(a6)
    800014e0:	0017889b          	addiw	a7,a5,1
    800014e4:	01182023          	sw	a7,0(a6)
    800014e8:	00f52023          	sw	a5,0(a0)
    800014ec:	02b53423          	sd	a1,40(a0)
    800014f0:	02c53823          	sd	a2,48(a0)
    800014f4:	02052c23          	sw	zero,56(a0)
    800014f8:	04053023          	sd	zero,64(a0)
    800014fc:	04053423          	sd	zero,72(a0)
    stack = externalStackBase;
    80001500:	00d53423          	sd	a3,8(a0)
    stackSize = externalStackSize;
    80001504:	00e53823          	sd	a4,16(a0)
}
    80001508:	00813403          	ld	s0,8(sp)
    8000150c:	01010113          	addi	sp,sp,16
    80001510:	00008067          	ret

0000000080001514 <_ZN6ThreadD1Ev>:

Thread::~Thread() {
    if (stack) {
    80001514:	00853503          	ld	a0,8(a0)
    80001518:	02050663          	beqz	a0,80001544 <_ZN6ThreadD1Ev+0x30>
Thread::~Thread() {
    8000151c:	ff010113          	addi	sp,sp,-16
    80001520:	00113423          	sd	ra,8(sp)
    80001524:	00813023          	sd	s0,0(sp)
    80001528:	01010413          	addi	s0,sp,16
        MemoryAllocator::mem_free(stack);
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	828080e7          	jalr	-2008(ra) # 80001d54 <_ZN15MemoryAllocator8mem_freeEPv>
        stack = nullptr;
    }
}
    80001534:	00813083          	ld	ra,8(sp)
    80001538:	00013403          	ld	s0,0(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret
    80001544:	00008067          	ret

0000000080001548 <_ZN6Thread12createThreadEPFvPvES0_S0_m>:

Thread* Thread::createThread(Body b, void* a, size_t stackSizeBytes) {
    return new Thread(b, a, stackSizeBytes);
}

Thread* Thread::createThread(Body b, void* a, void* externalStackBase, size_t externalStackSize) {
    80001548:	fc010113          	addi	sp,sp,-64
    8000154c:	02113c23          	sd	ra,56(sp)
    80001550:	02813823          	sd	s0,48(sp)
    80001554:	02913423          	sd	s1,40(sp)
    80001558:	03213023          	sd	s2,32(sp)
    8000155c:	01313c23          	sd	s3,24(sp)
    80001560:	01413823          	sd	s4,16(sp)
    80001564:	01513423          	sd	s5,8(sp)
    80001568:	04010413          	addi	s0,sp,64
    8000156c:	00050913          	mv	s2,a0
    80001570:	00058993          	mv	s3,a1
    80001574:	00060a13          	mv	s4,a2
    80001578:	00068a93          	mv	s5,a3

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    8000157c:	00200513          	li	a0,2
    80001580:	00000097          	auipc	ra,0x0
    80001584:	6d4080e7          	jalr	1748(ra) # 80001c54 <_ZN15MemoryAllocator9mem_allocEm>
    80001588:	00050493          	mv	s1,a0
    return new Thread(b, a, externalStackBase, externalStackSize);
    8000158c:	000a8713          	mv	a4,s5
    80001590:	000a0693          	mv	a3,s4
    80001594:	00098613          	mv	a2,s3
    80001598:	00090593          	mv	a1,s2
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	f2c080e7          	jalr	-212(ra) # 800014c8 <_ZN6ThreadC1EPFvPvES0_S0_m>
}
    800015a4:	00048513          	mv	a0,s1
    800015a8:	03813083          	ld	ra,56(sp)
    800015ac:	03013403          	ld	s0,48(sp)
    800015b0:	02813483          	ld	s1,40(sp)
    800015b4:	02013903          	ld	s2,32(sp)
    800015b8:	01813983          	ld	s3,24(sp)
    800015bc:	01013a03          	ld	s4,16(sp)
    800015c0:	00813a83          	ld	s5,8(sp)
    800015c4:	04010113          	addi	sp,sp,64
    800015c8:	00008067          	ret

00000000800015cc <_ZN6Thread13allocateStackEm>:

void Thread::allocateStack(size_t bytes) {
    800015cc:	fe010113          	addi	sp,sp,-32
    800015d0:	00113c23          	sd	ra,24(sp)
    800015d4:	00813823          	sd	s0,16(sp)
    800015d8:	00913423          	sd	s1,8(sp)
    800015dc:	01213023          	sd	s2,0(sp)
    800015e0:	02010413          	addi	s0,sp,32
    800015e4:	00050913          	mv	s2,a0
    size_t blocks = bytes / MEM_BLOCK_SIZE;
    800015e8:	0065d493          	srli	s1,a1,0x6
    if (bytes % MEM_BLOCK_SIZE != 0) blocks++;
    800015ec:	03f5f593          	andi	a1,a1,63
    800015f0:	00058463          	beqz	a1,800015f8 <_ZN6Thread13allocateStackEm+0x2c>
    800015f4:	00148493          	addi	s1,s1,1

    stack = MemoryAllocator::mem_alloc(blocks);
    800015f8:	00048513          	mv	a0,s1
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	658080e7          	jalr	1624(ra) # 80001c54 <_ZN15MemoryAllocator9mem_allocEm>
    80001604:	00a93423          	sd	a0,8(s2)
    stackSize = blocks * MEM_BLOCK_SIZE;
    80001608:	00649493          	slli	s1,s1,0x6
    8000160c:	00993823          	sd	s1,16(s2)
}
    80001610:	01813083          	ld	ra,24(sp)
    80001614:	01013403          	ld	s0,16(sp)
    80001618:	00813483          	ld	s1,8(sp)
    8000161c:	00013903          	ld	s2,0(sp)
    80001620:	02010113          	addi	sp,sp,32
    80001624:	00008067          	ret

0000000080001628 <_ZN6ThreadC1EPFvPvES0_m>:
Thread::Thread(Body b, void* a, size_t stackSizeBytes)
    80001628:	ff010113          	addi	sp,sp,-16
    8000162c:	00113423          	sd	ra,8(sp)
    80001630:	00813023          	sd	s0,0(sp)
    80001634:	01010413          	addi	s0,sp,16
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), schedulerNext(nullptr), semaphoreNext(nullptr) {
    80001638:	00005817          	auipc	a6,0x5
    8000163c:	80880813          	addi	a6,a6,-2040 # 80005e40 <_ZN6Thread8staticIdE>
    80001640:	00082703          	lw	a4,0(a6)
    80001644:	0017089b          	addiw	a7,a4,1
    80001648:	01182023          	sw	a7,0(a6)
    8000164c:	00e52023          	sw	a4,0(a0)
    80001650:	00053423          	sd	zero,8(a0)
    80001654:	00d53823          	sd	a3,16(a0)
    80001658:	02b53423          	sd	a1,40(a0)
    8000165c:	02c53823          	sd	a2,48(a0)
    80001660:	02052c23          	sw	zero,56(a0)
    80001664:	04053023          	sd	zero,64(a0)
    80001668:	04053423          	sd	zero,72(a0)
    allocateStack(stackSizeBytes);
    8000166c:	00068593          	mv	a1,a3
    80001670:	00000097          	auipc	ra,0x0
    80001674:	f5c080e7          	jalr	-164(ra) # 800015cc <_ZN6Thread13allocateStackEm>
}
    80001678:	00813083          	ld	ra,8(sp)
    8000167c:	00013403          	ld	s0,0(sp)
    80001680:	01010113          	addi	sp,sp,16
    80001684:	00008067          	ret

0000000080001688 <_ZN6Thread12createThreadEPFvPvES0_m>:
Thread* Thread::createThread(Body b, void* a, size_t stackSizeBytes) {
    80001688:	fd010113          	addi	sp,sp,-48
    8000168c:	02113423          	sd	ra,40(sp)
    80001690:	02813023          	sd	s0,32(sp)
    80001694:	00913c23          	sd	s1,24(sp)
    80001698:	01213823          	sd	s2,16(sp)
    8000169c:	01313423          	sd	s3,8(sp)
    800016a0:	01413023          	sd	s4,0(sp)
    800016a4:	03010413          	addi	s0,sp,48
    800016a8:	00050913          	mv	s2,a0
    800016ac:	00058993          	mv	s3,a1
    800016b0:	00060a13          	mv	s4,a2
    800016b4:	00200513          	li	a0,2
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	59c080e7          	jalr	1436(ra) # 80001c54 <_ZN15MemoryAllocator9mem_allocEm>
    800016c0:	00050493          	mv	s1,a0
    return new Thread(b, a, stackSizeBytes);
    800016c4:	000a0693          	mv	a3,s4
    800016c8:	00098613          	mv	a2,s3
    800016cc:	00090593          	mv	a1,s2
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	f58080e7          	jalr	-168(ra) # 80001628 <_ZN6ThreadC1EPFvPvES0_m>
    800016d8:	0200006f          	j	800016f8 <_ZN6Thread12createThreadEPFvPvES0_m+0x70>
    800016dc:	00050913          	mv	s2,a0
    }

    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    800016e0:	00048513          	mv	a0,s1
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	670080e7          	jalr	1648(ra) # 80001d54 <_ZN15MemoryAllocator8mem_freeEPv>
    800016ec:	00090513          	mv	a0,s2
    800016f0:	00006097          	auipc	ra,0x6
    800016f4:	868080e7          	jalr	-1944(ra) # 80006f58 <_Unwind_Resume>
}
    800016f8:	00048513          	mv	a0,s1
    800016fc:	02813083          	ld	ra,40(sp)
    80001700:	02013403          	ld	s0,32(sp)
    80001704:	01813483          	ld	s1,24(sp)
    80001708:	01013903          	ld	s2,16(sp)
    8000170c:	00813983          	ld	s3,8(sp)
    80001710:	00013a03          	ld	s4,0(sp)
    80001714:	03010113          	addi	sp,sp,48
    80001718:	00008067          	ret

000000008000171c <_ZN6Thread5startEv>:

void Thread::start() {
    if (state != NEW) return;
    8000171c:	03852783          	lw	a5,56(a0)
    80001720:	00078463          	beqz	a5,80001728 <_ZN6Thread5startEv+0xc>
    80001724:	00008067          	ret
void Thread::start() {
    80001728:	fe010113          	addi	sp,sp,-32
    8000172c:	00113c23          	sd	ra,24(sp)
    80001730:	00813823          	sd	s0,16(sp)
    80001734:	00913423          	sd	s1,8(sp)
    80001738:	02010413          	addi	s0,sp,32
    8000173c:	00050493          	mv	s1,a0

    void* stackTop = (char*)stack + stackSize;
    80001740:	00853603          	ld	a2,8(a0)
    80001744:	01053783          	ld	a5,16(a0)
    initContext(&context, wrapper, stackTop);
    80001748:	00f60633          	add	a2,a2,a5
    8000174c:	00000597          	auipc	a1,0x0
    80001750:	12c58593          	addi	a1,a1,300 # 80001878 <_ZN6Thread7wrapperEv>
    80001754:	01850513          	addi	a0,a0,24
    80001758:	00000097          	auipc	ra,0x0
    8000175c:	9dc080e7          	jalr	-1572(ra) # 80001134 <_ZN6Thread11initContextEPNS_7ContextEPFvvEPv>
    state = READY;
    80001760:	00100793          	li	a5,1
    80001764:	02f4ac23          	sw	a5,56(s1)
    Scheduler::put(this);
    80001768:	00048513          	mv	a0,s1
    8000176c:	00000097          	auipc	ra,0x0
    80001770:	1a4080e7          	jalr	420(ra) # 80001910 <_ZN9Scheduler3putEP6Thread>
}
    80001774:	01813083          	ld	ra,24(sp)
    80001778:	01013403          	ld	s0,16(sp)
    8000177c:	00813483          	ld	s1,8(sp)
    80001780:	02010113          	addi	sp,sp,32
    80001784:	00008067          	ret

0000000080001788 <_ZN6Thread4exitEv>:

void Thread::exit() {
    80001788:	ff010113          	addi	sp,sp,-16
    8000178c:	00813423          	sd	s0,8(sp)
    80001790:	01010413          	addi	s0,sp,16
    state = FINISHED;
    80001794:	00400793          	li	a5,4
    80001798:	02f52c23          	sw	a5,56(a0)
}
    8000179c:	00813403          	ld	s0,8(sp)
    800017a0:	01010113          	addi	sp,sp,16
    800017a4:	00008067          	ret

00000000800017a8 <_ZN6Thread8dispatchEv>:
    running->body(running->args);
    running->exit();
    yield();
}

void Thread::dispatch() {
    800017a8:	fe010113          	addi	sp,sp,-32
    800017ac:	00113c23          	sd	ra,24(sp)
    800017b0:	00813823          	sd	s0,16(sp)
    800017b4:	00913423          	sd	s1,8(sp)
    800017b8:	02010413          	addi	s0,sp,32
    Thread* old = running;
    800017bc:	00004497          	auipc	s1,0x4
    800017c0:	68c4b483          	ld	s1,1676(s1) # 80005e48 <_ZN6Thread7runningE>

    if (old && old->state != FINISHED) {
    800017c4:	00048863          	beqz	s1,800017d4 <_ZN6Thread8dispatchEv+0x2c>
    800017c8:	0384a703          	lw	a4,56(s1)
    800017cc:	00400793          	li	a5,4
    800017d0:	04f71e63          	bne	a4,a5,8000182c <_ZN6Thread8dispatchEv+0x84>
        old->state = READY;
        Scheduler::put(old);
    }

    running = Scheduler::get();
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	0f8080e7          	jalr	248(ra) # 800018cc <_ZN9Scheduler3getEv>
    800017dc:	00004797          	auipc	a5,0x4
    800017e0:	66a7b623          	sd	a0,1644(a5) # 80005e48 <_ZN6Thread7runningE>
    if (!running) return;
    800017e4:	02050a63          	beqz	a0,80001818 <_ZN6Thread8dispatchEv+0x70>

    running->state = RUNNING;
    800017e8:	00200793          	li	a5,2
    800017ec:	02f52c23          	sw	a5,56(a0)

    if (old && old->state == FINISHED) {
    800017f0:	00048863          	beqz	s1,80001800 <_ZN6Thread8dispatchEv+0x58>
    800017f4:	0384a703          	lw	a4,56(s1)
    800017f8:	00400793          	li	a5,4
    800017fc:	04f70463          	beq	a4,a5,80001844 <_ZN6Thread8dispatchEv+0x9c>
        MemoryAllocator::mem_free(old->stack);
        old->stack = nullptr;
    }

    contextSwitch(&old->context, &running->context);
    80001800:	00004597          	auipc	a1,0x4
    80001804:	6485b583          	ld	a1,1608(a1) # 80005e48 <_ZN6Thread7runningE>
    80001808:	01858593          	addi	a1,a1,24
    8000180c:	01848513          	addi	a0,s1,24
    80001810:	00000097          	auipc	ra,0x0
    80001814:	910080e7          	jalr	-1776(ra) # 80001120 <_ZN6Thread13contextSwitchEPNS_7ContextES1_>
}
    80001818:	01813083          	ld	ra,24(sp)
    8000181c:	01013403          	ld	s0,16(sp)
    80001820:	00813483          	ld	s1,8(sp)
    80001824:	02010113          	addi	sp,sp,32
    80001828:	00008067          	ret
        old->state = READY;
    8000182c:	00100793          	li	a5,1
    80001830:	02f4ac23          	sw	a5,56(s1)
        Scheduler::put(old);
    80001834:	00048513          	mv	a0,s1
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	0d8080e7          	jalr	216(ra) # 80001910 <_ZN9Scheduler3putEP6Thread>
    80001840:	f95ff06f          	j	800017d4 <_ZN6Thread8dispatchEv+0x2c>
        MemoryAllocator::mem_free(old->stack);
    80001844:	0084b503          	ld	a0,8(s1)
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	50c080e7          	jalr	1292(ra) # 80001d54 <_ZN15MemoryAllocator8mem_freeEPv>
        old->stack = nullptr;
    80001850:	0004b423          	sd	zero,8(s1)
    80001854:	fadff06f          	j	80001800 <_ZN6Thread8dispatchEv+0x58>

0000000080001858 <_ZN6Thread5yieldEv>:

void Thread::yield() {
    80001858:	ff010113          	addi	sp,sp,-16
    8000185c:	00813423          	sd	s0,8(sp)
    80001860:	01010413          	addi	s0,sp,16
    asm volatile ("li a0, 0x13");
    80001864:	01300513          	li	a0,19
    asm volatile ("ecall");
    80001868:	00000073          	ecall
    8000186c:	00813403          	ld	s0,8(sp)
    80001870:	01010113          	addi	sp,sp,16
    80001874:	00008067          	ret

0000000080001878 <_ZN6Thread7wrapperEv>:
void Thread::wrapper() {
    80001878:	fe010113          	addi	sp,sp,-32
    8000187c:	00113c23          	sd	ra,24(sp)
    80001880:	00813823          	sd	s0,16(sp)
    80001884:	00913423          	sd	s1,8(sp)
    80001888:	02010413          	addi	s0,sp,32
    running->body(running->args);
    8000188c:	00004497          	auipc	s1,0x4
    80001890:	5b448493          	addi	s1,s1,1460 # 80005e40 <_ZN6Thread8staticIdE>
    80001894:	0084b783          	ld	a5,8(s1)
    80001898:	0287b703          	ld	a4,40(a5)
    8000189c:	0307b503          	ld	a0,48(a5)
    800018a0:	000700e7          	jalr	a4
    running->exit();
    800018a4:	0084b503          	ld	a0,8(s1)
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	ee0080e7          	jalr	-288(ra) # 80001788 <_ZN6Thread4exitEv>
    yield();
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	fa8080e7          	jalr	-88(ra) # 80001858 <_ZN6Thread5yieldEv>
}
    800018b8:	01813083          	ld	ra,24(sp)
    800018bc:	01013403          	ld	s0,16(sp)
    800018c0:	00813483          	ld	s1,8(sp)
    800018c4:	02010113          	addi	sp,sp,32
    800018c8:	00008067          	ret

00000000800018cc <_ZN9Scheduler3getEv>:
#include "../h/Thread.hpp"

Thread* Scheduler::head = nullptr;
Thread* Scheduler::tail = nullptr;

Thread* Scheduler::get() {
    800018cc:	ff010113          	addi	sp,sp,-16
    800018d0:	00813423          	sd	s0,8(sp)
    800018d4:	01010413          	addi	s0,sp,16
    if (!head) return nullptr;
    800018d8:	00004517          	auipc	a0,0x4
    800018dc:	57853503          	ld	a0,1400(a0) # 80005e50 <_ZN9Scheduler4headE>
    800018e0:	00050c63          	beqz	a0,800018f8 <_ZN9Scheduler3getEv+0x2c>

    Thread* thread = head;
    head = head->schedulerNext;
    800018e4:	04053783          	ld	a5,64(a0)
    800018e8:	00004717          	auipc	a4,0x4
    800018ec:	56f73423          	sd	a5,1384(a4) # 80005e50 <_ZN9Scheduler4headE>

    if (!head) tail = nullptr;
    800018f0:	00078a63          	beqz	a5,80001904 <_ZN9Scheduler3getEv+0x38>
    thread->schedulerNext = nullptr;
    800018f4:	04053023          	sd	zero,64(a0)

    return thread;
}
    800018f8:	00813403          	ld	s0,8(sp)
    800018fc:	01010113          	addi	sp,sp,16
    80001900:	00008067          	ret
    if (!head) tail = nullptr;
    80001904:	00004797          	auipc	a5,0x4
    80001908:	5407ba23          	sd	zero,1364(a5) # 80005e58 <_ZN9Scheduler4tailE>
    8000190c:	fe9ff06f          	j	800018f4 <_ZN9Scheduler3getEv+0x28>

0000000080001910 <_ZN9Scheduler3putEP6Thread>:

void Scheduler::put(Thread* thread) {
    80001910:	ff010113          	addi	sp,sp,-16
    80001914:	00813423          	sd	s0,8(sp)
    80001918:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    8000191c:	00004797          	auipc	a5,0x4
    80001920:	5347b783          	ld	a5,1332(a5) # 80005e50 <_ZN9Scheduler4headE>
    80001924:	02078263          	beqz	a5,80001948 <_ZN9Scheduler3putEP6Thread+0x38>
    else tail->schedulerNext = thread;
    80001928:	00004797          	auipc	a5,0x4
    8000192c:	5307b783          	ld	a5,1328(a5) # 80005e58 <_ZN9Scheduler4tailE>
    80001930:	04a7b023          	sd	a0,64(a5)
    tail = thread;
    80001934:	00004797          	auipc	a5,0x4
    80001938:	52a7b223          	sd	a0,1316(a5) # 80005e58 <_ZN9Scheduler4tailE>
}
    8000193c:	00813403          	ld	s0,8(sp)
    80001940:	01010113          	addi	sp,sp,16
    80001944:	00008067          	ret
    if (!head) head = thread;
    80001948:	00004797          	auipc	a5,0x4
    8000194c:	50a7b423          	sd	a0,1288(a5) # 80005e50 <_ZN9Scheduler4headE>
    80001950:	fe5ff06f          	j	80001934 <_ZN9Scheduler3putEP6Thread+0x24>

0000000080001954 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00813423          	sd	s0,8(sp)
    8000195c:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80001960:	00004517          	auipc	a0,0x4
    80001964:	4f053503          	ld	a0,1264(a0) # 80005e50 <_ZN9Scheduler4headE>
    80001968:	00153513          	seqz	a0,a0
    8000196c:	00813403          	ld	s0,8(sp)
    80001970:	01010113          	addi	sp,sp,16
    80001974:	00008067          	ret

0000000080001978 <_Z11userWrapperPv>:
#include "../h/Thread.hpp"

uint64 framePointer;

void userMain();
void userWrapper(void* arg) {
    80001978:	ff010113          	addi	sp,sp,-16
    8000197c:	00113423          	sd	ra,8(sp)
    80001980:	00813023          	sd	s0,0(sp)
    80001984:	01010413          	addi	s0,sp,16
    userMain();
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	db0080e7          	jalr	-592(ra) # 80002738 <_Z8userMainv>
}
    80001990:	00813083          	ld	ra,8(sp)
    80001994:	00013403          	ld	s0,0(sp)
    80001998:	01010113          	addi	sp,sp,16
    8000199c:	00008067          	ret

00000000800019a0 <main>:

void main() {
    800019a0:	fe010113          	addi	sp,sp,-32
    800019a4:	00113c23          	sd	ra,24(sp)
    800019a8:	00813823          	sd	s0,16(sp)
    800019ac:	02010413          	addi	s0,sp,32
    MemoryAllocator::initHeap();
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	254080e7          	jalr	596(ra) # 80001c04 <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	070080e7          	jalr	112(ra) # 80001a28 <_ZN5Riscv16setupTrapHandlerEv>

    thread_t mainThread, userBody;

    mainThread = Thread::createThread(nullptr, nullptr);
    800019c0:	00001637          	lui	a2,0x1
    800019c4:	00000593          	li	a1,0
    800019c8:	00000513          	li	a0,0
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	cbc080e7          	jalr	-836(ra) # 80001688 <_ZN6Thread12createThreadEPFvPvES0_m>
    Thread::running = mainThread;
    800019d4:	00004797          	auipc	a5,0x4
    800019d8:	40c7b783          	ld	a5,1036(a5) # 80005de0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019dc:	00a7b023          	sd	a0,0(a5)
    ThreadState getState() const { return state; }
    800019e0:	00200793          	li	a5,2
    800019e4:	02f52c23          	sw	a5,56(a0)
    mainThread->setState(RUNNING);

    thread_create(&userBody, &userWrapper, nullptr);
    800019e8:	00000613          	li	a2,0
    800019ec:	00000597          	auipc	a1,0x0
    800019f0:	f8c58593          	addi	a1,a1,-116 # 80001978 <_Z11userWrapperPv>
    800019f4:	fe840513          	addi	a0,s0,-24
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	824080e7          	jalr	-2012(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>

    while (!Scheduler::isEmpty()) {
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	f54080e7          	jalr	-172(ra) # 80001954 <_ZN9Scheduler7isEmptyEv>
    80001a08:	00051863          	bnez	a0,80001a18 <main+0x78>
        Thread::yield();
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	e4c080e7          	jalr	-436(ra) # 80001858 <_ZN6Thread5yieldEv>
    80001a14:	fedff06f          	j	80001a00 <main+0x60>
    }
    80001a18:	01813083          	ld	ra,24(sp)
    80001a1c:	01013403          	ld	s0,16(sp)
    80001a20:	02010113          	addi	sp,sp,32
    80001a24:	00008067          	ret

0000000080001a28 <_ZN5Riscv16setupTrapHandlerEv>:

constexpr uint64 THREAD_CREATE = 0x11;
constexpr uint64 THREAD_EXIT = 0x12;
constexpr uint64 THREAD_DISPATCH = 0x13;

void Riscv::setupTrapHandler() {
    80001a28:	ff010113          	addi	sp,sp,-16
    80001a2c:	00813423          	sd	s0,8(sp)
    80001a30:	01010413          	addi	s0,sp,16
    unsigned long addr = (unsigned long)&trap_handler;
    80001a34:	00004797          	auipc	a5,0x4
    80001a38:	3a47b783          	ld	a5,932(a5) # 80005dd8 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(addr));
    80001a3c:	10579073          	csrw	stvec,a5
}
    80001a40:	00813403          	ld	s0,8(sp)
    80001a44:	01010113          	addi	sp,sp,16
    80001a48:	00008067          	ret

0000000080001a4c <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001a4c:	fe010113          	addi	sp,sp,-32
    80001a50:	00113c23          	sd	ra,24(sp)
    80001a54:	00813823          	sd	s0,16(sp)
    80001a58:	00913423          	sd	s1,8(sp)
    80001a5c:	01213023          	sd	s2,0(sp)
    80001a60:	02010413          	addi	s0,sp,32
    uint64 scause = 0, sepc = 0;
    asm volatile("csrr %0, scause" : "=r"(scause));
    80001a64:	14202773          	csrr	a4,scause
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    80001a68:	141024f3          	csrr	s1,sepc

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    80001a6c:	fff00793          	li	a5,-1
    80001a70:	0017d793          	srli	a5,a5,0x1
    80001a74:	00f777b3          	and	a5,a4,a5

    if (interrupt == 0 && (cause == 8 || cause == 9)) {
    80001a78:	00074863          	bltz	a4,80001a88 <_ZN5Riscv11trapHandlerEv+0x3c>
    80001a7c:	ff878793          	addi	a5,a5,-8
    80001a80:	00100713          	li	a4,1
    80001a84:	00f77e63          	bgeu	a4,a5,80001aa0 <_ZN5Riscv11trapHandlerEv+0x54>
        }

        sepc += 4;
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    }
    80001a88:	01813083          	ld	ra,24(sp)
    80001a8c:	01013403          	ld	s0,16(sp)
    80001a90:	00813483          	ld	s1,8(sp)
    80001a94:	00013903          	ld	s2,0(sp)
    80001a98:	02010113          	addi	sp,sp,32
    80001a9c:	00008067          	ret
        asm volatile("mv %0, a0" : "=r"(code));
    80001aa0:	00050793          	mv	a5,a0
        switch (code) {
    80001aa4:	01300713          	li	a4,19
    80001aa8:	04f76463          	bltu	a4,a5,80001af0 <_ZN5Riscv11trapHandlerEv+0xa4>
    80001aac:	00279793          	slli	a5,a5,0x2
    80001ab0:	00003717          	auipc	a4,0x3
    80001ab4:	57070713          	addi	a4,a4,1392 # 80005020 <CONSOLE_STATUS+0x10>
    80001ab8:	00e787b3          	add	a5,a5,a4
    80001abc:	0007a783          	lw	a5,0(a5)
    80001ac0:	00e787b3          	add	a5,a5,a4
    80001ac4:	00078067          	jr	a5
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001ac8:	00004917          	auipc	s2,0x4
    80001acc:	32893903          	ld	s2,808(s2) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ad0:	00093783          	ld	a5,0(s2)
    80001ad4:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(size));
    80001ad8:	00058513          	mv	a0,a1
                void* ptr = MemoryAllocator::mem_alloc(size);
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	178080e7          	jalr	376(ra) # 80001c54 <_ZN15MemoryAllocator9mem_allocEm>
                asm volatile("mv a0, %0" :: "r"(ptr));
    80001ae4:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001ae8:	00093783          	ld	a5,0(s2)
    80001aec:	04a7b823          	sd	a0,80(a5)
        sepc += 4;
    80001af0:	00448493          	addi	s1,s1,4
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    80001af4:	14149073          	csrw	sepc,s1
    80001af8:	f91ff06f          	j	80001a88 <_ZN5Riscv11trapHandlerEv+0x3c>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001afc:	00004917          	auipc	s2,0x4
    80001b00:	2f493903          	ld	s2,756(s2) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b04:	00093783          	ld	a5,0(s2)
    80001b08:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(addr));
    80001b0c:	00058513          	mv	a0,a1
                int status = MemoryAllocator::mem_free(addr);
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	244080e7          	jalr	580(ra) # 80001d54 <_ZN15MemoryAllocator8mem_freeEPv>
                asm volatile("mv a0, %0" :: "r"(status));
    80001b18:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001b1c:	00093783          	ld	a5,0(s2)
    80001b20:	04a7b823          	sd	a0,80(a5)
                break;
    80001b24:	fcdff06f          	j	80001af0 <_ZN5Riscv11trapHandlerEv+0xa4>
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	2d0080e7          	jalr	720(ra) # 80001df8 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                asm volatile("mv a0, %0" :: "r"(freeSpace));
    80001b30:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001b34:	00004797          	auipc	a5,0x4
    80001b38:	2bc7b783          	ld	a5,700(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b3c:	0007b783          	ld	a5,0(a5)
    80001b40:	04a7b823          	sd	a0,80(a5)
                break;
    80001b44:	fadff06f          	j	80001af0 <_ZN5Riscv11trapHandlerEv+0xa4>
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	2f8080e7          	jalr	760(ra) # 80001e40 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                asm volatile("mv a0, %0" :: "r"(largest));
    80001b50:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001b54:	00004797          	auipc	a5,0x4
    80001b58:	29c7b783          	ld	a5,668(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b5c:	0007b783          	ld	a5,0(a5)
    80001b60:	04a7b823          	sd	a0,80(a5)
                break;
    80001b64:	f8dff06f          	j	80001af0 <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001b68:	00004797          	auipc	a5,0x4
    80001b6c:	2887b783          	ld	a5,648(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b70:	0007b783          	ld	a5,0(a5)
    80001b74:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001b78:	00058913          	mv	s2,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001b7c:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(start_routine));
    80001b80:	00060513          	mv	a0,a2
                asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
    80001b84:	0687b683          	ld	a3,104(a5)
                asm volatile("mv %0, a3" : "=r"(args));
    80001b88:	00068593          	mv	a1,a3
                asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
    80001b8c:	0707b703          	ld	a4,112(a5)
                asm volatile("mv %0, a4" : "=r"(stack));
    80001b90:	00070613          	mv	a2,a4
                *handle = Thread::createThread(start_routine, args, stack, stackSize);
    80001b94:	000016b7          	lui	a3,0x1
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	9b0080e7          	jalr	-1616(ra) # 80001548 <_ZN6Thread12createThreadEPFvPvES0_S0_m>
    80001ba0:	00a93023          	sd	a0,0(s2)
                if (*handle != nullptr) {
    80001ba4:	02050263          	beqz	a0,80001bc8 <_ZN5Riscv11trapHandlerEv+0x17c>
                    (*handle)->start();
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	b74080e7          	jalr	-1164(ra) # 8000171c <_ZN6Thread5startEv>
                    asm volatile("li a0, 0");
    80001bb0:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001bb4:	00004797          	auipc	a5,0x4
    80001bb8:	23c7b783          	ld	a5,572(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bbc:	0007b783          	ld	a5,0(a5)
    80001bc0:	04a7b823          	sd	a0,80(a5)
                break;
    80001bc4:	f2dff06f          	j	80001af0 <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001bc8:	fff00513          	li	a0,-1
    80001bcc:	fe9ff06f          	j	80001bb4 <_ZN5Riscv11trapHandlerEv+0x168>
                if (Thread::running) {
    80001bd0:	00004797          	auipc	a5,0x4
    80001bd4:	2107b783          	ld	a5,528(a5) # 80005de0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001bd8:	0007b503          	ld	a0,0(a5)
    80001bdc:	00050663          	beqz	a0,80001be8 <_ZN5Riscv11trapHandlerEv+0x19c>
                    Thread::running->exit();
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	ba8080e7          	jalr	-1112(ra) # 80001788 <_ZN6Thread4exitEv>
                Thread::dispatch();
    80001be8:	00000097          	auipc	ra,0x0
    80001bec:	bc0080e7          	jalr	-1088(ra) # 800017a8 <_ZN6Thread8dispatchEv>
                asm volatile("li a0, 0");
    80001bf0:	00000513          	li	a0,0
                break;
    80001bf4:	efdff06f          	j	80001af0 <_ZN5Riscv11trapHandlerEv+0xa4>
                Thread::dispatch();
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	bb0080e7          	jalr	-1104(ra) # 800017a8 <_ZN6Thread8dispatchEv>
                break;
    80001c00:	ef1ff06f          	j	80001af0 <_ZN5Riscv11trapHandlerEv+0xa4>

0000000080001c04 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00813423          	sd	s0,8(sp)
    80001c0c:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80001c10:	00004697          	auipc	a3,0x4
    80001c14:	1b86b683          	ld	a3,440(a3) # 80005dc8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c18:	0006b783          	ld	a5,0(a3)
    80001c1c:	00004717          	auipc	a4,0x4
    80001c20:	24c70713          	addi	a4,a4,588 # 80005e68 <_ZN15MemoryAllocator12freeListHeadE>
    80001c24:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    80001c28:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80001c2c:	00004797          	auipc	a5,0x4
    80001c30:	1bc7b783          	ld	a5,444(a5) # 80005de8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c34:	0007b783          	ld	a5,0(a5)
    80001c38:	0006b683          	ld	a3,0(a3)
    80001c3c:	00073703          	ld	a4,0(a4)
    80001c40:	40d787b3          	sub	a5,a5,a3
    80001c44:	00f73423          	sd	a5,8(a4)
}
    80001c48:	00813403          	ld	s0,8(sp)
    80001c4c:	01010113          	addi	sp,sp,16
    80001c50:	00008067          	ret

0000000080001c54 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    80001c54:	ff010113          	addi	sp,sp,-16
    80001c58:	00813423          	sd	s0,8(sp)
    80001c5c:	01010413          	addi	s0,sp,16
    80001c60:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    80001c64:	00004517          	auipc	a0,0x4
    80001c68:	20453503          	ld	a0,516(a0) # 80005e68 <_ZN15MemoryAllocator12freeListHeadE>
    80001c6c:	06050063          	beqz	a0,80001ccc <_ZN15MemoryAllocator9mem_allocEm+0x78>
    80001c70:	08078a63          	beqz	a5,80001d04 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    80001c74:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    80001c78:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    80001c7c:	00000613          	li	a2,0
    80001c80:	00c0006f          	j	80001c8c <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    80001c84:	00050613          	mv	a2,a0
        curr = curr->next;
    80001c88:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    80001c8c:	00050663          	beqz	a0,80001c98 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    80001c90:	00853783          	ld	a5,8(a0)
    80001c94:	fee7e8e3          	bltu	a5,a4,80001c84 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    80001c98:	02050a63          	beqz	a0,80001ccc <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    80001c9c:	00853583          	ld	a1,8(a0)
    80001ca0:	02068793          	addi	a5,a3,32
    80001ca4:	04f5e063          	bltu	a1,a5,80001ce4 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    80001ca8:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    80001cac:	40e585b3          	sub	a1,a1,a4
    80001cb0:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    80001cb4:	00053683          	ld	a3,0(a0)
    80001cb8:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    80001cbc:	00060e63          	beqz	a2,80001cd8 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80001cc0:	00f63023          	sd	a5,0(a2) # 1000 <_entry-0x7ffff000>
        else freeListHead = newBlock;

        curr->size = totalSize;
    80001cc4:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
    80001cc8:	01050513          	addi	a0,a0,16
}
    80001ccc:	00813403          	ld	s0,8(sp)
    80001cd0:	01010113          	addi	sp,sp,16
    80001cd4:	00008067          	ret
        else freeListHead = newBlock;
    80001cd8:	00004697          	auipc	a3,0x4
    80001cdc:	18f6b823          	sd	a5,400(a3) # 80005e68 <_ZN15MemoryAllocator12freeListHeadE>
    80001ce0:	fe5ff06f          	j	80001cc4 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    80001ce4:	00060863          	beqz	a2,80001cf4 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80001ce8:	00053783          	ld	a5,0(a0)
    80001cec:	00f63023          	sd	a5,0(a2)
    80001cf0:	fd9ff06f          	j	80001cc8 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    80001cf4:	00053783          	ld	a5,0(a0)
    80001cf8:	00004717          	auipc	a4,0x4
    80001cfc:	16f73823          	sd	a5,368(a4) # 80005e68 <_ZN15MemoryAllocator12freeListHeadE>
    80001d00:	fc9ff06f          	j	80001cc8 <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    80001d04:	00000513          	li	a0,0
    80001d08:	fc5ff06f          	j	80001ccc <_ZN15MemoryAllocator9mem_allocEm+0x78>

0000000080001d0c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00813423          	sd	s0,8(sp)
    80001d14:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80001d18:	00050c63          	beqz	a0,80001d30 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    80001d1c:	00053783          	ld	a5,0(a0)
    80001d20:	00078863          	beqz	a5,80001d30 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    80001d24:	00853703          	ld	a4,8(a0)
    80001d28:	00e506b3          	add	a3,a0,a4
    80001d2c:	00d78863          	beq	a5,a3,80001d3c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    80001d30:	00813403          	ld	s0,8(sp)
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret
        curr->size += curr->next->size;
    80001d3c:	0087b683          	ld	a3,8(a5)
    80001d40:	00d70733          	add	a4,a4,a3
    80001d44:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    80001d48:	0007b783          	ld	a5,0(a5)
    80001d4c:	00f53023          	sd	a5,0(a0)
    80001d50:	fe1ff06f          	j	80001d30 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

0000000080001d54 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    80001d54:	08050e63          	beqz	a0,80001df0 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80001d58:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    80001d5c:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    80001d60:	00004797          	auipc	a5,0x4
    80001d64:	1087b783          	ld	a5,264(a5) # 80005e68 <_ZN15MemoryAllocator12freeListHeadE>
    80001d68:	02078863          	beqz	a5,80001d98 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    80001d6c:	fe010113          	addi	sp,sp,-32
    80001d70:	00113c23          	sd	ra,24(sp)
    80001d74:	00813823          	sd	s0,16(sp)
    80001d78:	00913423          	sd	s1,8(sp)
    80001d7c:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    80001d80:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    80001d84:	02078463          	beqz	a5,80001dac <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001d88:	02a7f263          	bgeu	a5,a0,80001dac <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    80001d8c:	00078493          	mv	s1,a5
        curr = curr->next;
    80001d90:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    80001d94:	ff1ff06f          	j	80001d84 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    80001d98:	00004797          	auipc	a5,0x4
    80001d9c:	0ca7b823          	sd	a0,208(a5) # 80005e68 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    80001da0:	fe073823          	sd	zero,-16(a4)
        return 0;
    80001da4:	00000513          	li	a0,0
    80001da8:	00008067          	ret
    blockToFree->next = curr;
    80001dac:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    80001db0:	02048a63          	beqz	s1,80001de4 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80001db4:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	f54080e7          	jalr	-172(ra) # 80001d0c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    80001dc0:	00048513          	mv	a0,s1
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	f48080e7          	jalr	-184(ra) # 80001d0c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    80001dcc:	00000513          	li	a0,0
}
    80001dd0:	01813083          	ld	ra,24(sp)
    80001dd4:	01013403          	ld	s0,16(sp)
    80001dd8:	00813483          	ld	s1,8(sp)
    80001ddc:	02010113          	addi	sp,sp,32
    80001de0:	00008067          	ret
    else freeListHead = blockToFree;
    80001de4:	00004797          	auipc	a5,0x4
    80001de8:	08a7b223          	sd	a0,132(a5) # 80005e68 <_ZN15MemoryAllocator12freeListHeadE>
    80001dec:	fcdff06f          	j	80001db8 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    80001df0:	fff00513          	li	a0,-1
}
    80001df4:	00008067          	ret

0000000080001df8 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80001df8:	ff010113          	addi	sp,sp,-16
    80001dfc:	00813423          	sd	s0,8(sp)
    80001e00:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001e04:	00004797          	auipc	a5,0x4
    80001e08:	0647b783          	ld	a5,100(a5) # 80005e68 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    80001e0c:	00000513          	li	a0,0
    80001e10:	0080006f          	j	80001e18 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001e14:	0007b783          	ld	a5,0(a5)
    80001e18:	00078e63          	beqz	a5,80001e34 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    80001e1c:	0087b703          	ld	a4,8(a5)
    80001e20:	01000693          	li	a3,16
    80001e24:	fee6f8e3          	bgeu	a3,a4,80001e14 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    80001e28:	00a70533          	add	a0,a4,a0
    80001e2c:	ff050513          	addi	a0,a0,-16
    80001e30:	fe5ff06f          	j	80001e14 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    80001e34:	00813403          	ld	s0,8(sp)
    80001e38:	01010113          	addi	sp,sp,16
    80001e3c:	00008067          	ret

0000000080001e40 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00813423          	sd	s0,8(sp)
    80001e48:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001e4c:	00004717          	auipc	a4,0x4
    80001e50:	01c73703          	ld	a4,28(a4) # 80005e68 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    80001e54:	00000513          	li	a0,0
    80001e58:	0080006f          	j	80001e60 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001e5c:	00073703          	ld	a4,0(a4)
    80001e60:	02070263          	beqz	a4,80001e84 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    80001e64:	00873783          	ld	a5,8(a4)
    80001e68:	01000693          	li	a3,16
    80001e6c:	00d7f463          	bgeu	a5,a3,80001e74 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    80001e70:	01000793          	li	a5,16
    80001e74:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    80001e78:	fef572e3          	bgeu	a0,a5,80001e5c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    80001e7c:	00078513          	mv	a0,a5
    80001e80:	fddff06f          	j	80001e5c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    80001e84:	00813403          	ld	s0,8(sp)
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret

0000000080001e90 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80001e90:	fe010113          	addi	sp,sp,-32
    80001e94:	00113c23          	sd	ra,24(sp)
    80001e98:	00813823          	sd	s0,16(sp)
    80001e9c:	00913423          	sd	s1,8(sp)
    80001ea0:	01213023          	sd	s2,0(sp)
    80001ea4:	02010413          	addi	s0,sp,32
    80001ea8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001eac:	00100793          	li	a5,1
    80001eb0:	02a7f863          	bgeu	a5,a0,80001ee0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001eb4:	00a00793          	li	a5,10
    80001eb8:	02f577b3          	remu	a5,a0,a5
    80001ebc:	02078e63          	beqz	a5,80001ef8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001ec0:	fff48513          	addi	a0,s1,-1
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	fcc080e7          	jalr	-52(ra) # 80001e90 <_ZL9fibonaccim>
    80001ecc:	00050913          	mv	s2,a0
    80001ed0:	ffe48513          	addi	a0,s1,-2
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	fbc080e7          	jalr	-68(ra) # 80001e90 <_ZL9fibonaccim>
    80001edc:	00a90533          	add	a0,s2,a0
}
    80001ee0:	01813083          	ld	ra,24(sp)
    80001ee4:	01013403          	ld	s0,16(sp)
    80001ee8:	00813483          	ld	s1,8(sp)
    80001eec:	00013903          	ld	s2,0(sp)
    80001ef0:	02010113          	addi	sp,sp,32
    80001ef4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001ef8:	fffff097          	auipc	ra,0xfffff
    80001efc:	3f8080e7          	jalr	1016(ra) # 800012f0 <_Z15thread_dispatchv>
    80001f00:	fc1ff06f          	j	80001ec0 <_ZL9fibonaccim+0x30>

0000000080001f04 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80001f04:	fe010113          	addi	sp,sp,-32
    80001f08:	00113c23          	sd	ra,24(sp)
    80001f0c:	00813823          	sd	s0,16(sp)
    80001f10:	00913423          	sd	s1,8(sp)
    80001f14:	01213023          	sd	s2,0(sp)
    80001f18:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001f1c:	00a00493          	li	s1,10
    80001f20:	0400006f          	j	80001f60 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001f24:	00003517          	auipc	a0,0x3
    80001f28:	14c50513          	addi	a0,a0,332 # 80005070 <CONSOLE_STATUS+0x60>
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	53c080e7          	jalr	1340(ra) # 80002468 <_Z11printStringPKc>
    80001f34:	00000613          	li	a2,0
    80001f38:	00a00593          	li	a1,10
    80001f3c:	00048513          	mv	a0,s1
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	6d8080e7          	jalr	1752(ra) # 80002618 <_Z8printIntiii>
    80001f48:	00003517          	auipc	a0,0x3
    80001f4c:	3a050513          	addi	a0,a0,928 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	518080e7          	jalr	1304(ra) # 80002468 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001f58:	0014849b          	addiw	s1,s1,1
    80001f5c:	0ff4f493          	andi	s1,s1,255
    80001f60:	00c00793          	li	a5,12
    80001f64:	fc97f0e3          	bgeu	a5,s1,80001f24 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80001f68:	00003517          	auipc	a0,0x3
    80001f6c:	11050513          	addi	a0,a0,272 # 80005078 <CONSOLE_STATUS+0x68>
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	4f8080e7          	jalr	1272(ra) # 80002468 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001f78:	00500313          	li	t1,5
    thread_dispatch();
    80001f7c:	fffff097          	auipc	ra,0xfffff
    80001f80:	374080e7          	jalr	884(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001f84:	01000513          	li	a0,16
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	f08080e7          	jalr	-248(ra) # 80001e90 <_ZL9fibonaccim>
    80001f90:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80001f94:	00003517          	auipc	a0,0x3
    80001f98:	0f450513          	addi	a0,a0,244 # 80005088 <CONSOLE_STATUS+0x78>
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	4cc080e7          	jalr	1228(ra) # 80002468 <_Z11printStringPKc>
    80001fa4:	00000613          	li	a2,0
    80001fa8:	00a00593          	li	a1,10
    80001fac:	0009051b          	sext.w	a0,s2
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	668080e7          	jalr	1640(ra) # 80002618 <_Z8printIntiii>
    80001fb8:	00003517          	auipc	a0,0x3
    80001fbc:	33050513          	addi	a0,a0,816 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80001fc0:	00000097          	auipc	ra,0x0
    80001fc4:	4a8080e7          	jalr	1192(ra) # 80002468 <_Z11printStringPKc>
    80001fc8:	0400006f          	j	80002008 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001fcc:	00003517          	auipc	a0,0x3
    80001fd0:	0a450513          	addi	a0,a0,164 # 80005070 <CONSOLE_STATUS+0x60>
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	494080e7          	jalr	1172(ra) # 80002468 <_Z11printStringPKc>
    80001fdc:	00000613          	li	a2,0
    80001fe0:	00a00593          	li	a1,10
    80001fe4:	00048513          	mv	a0,s1
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	630080e7          	jalr	1584(ra) # 80002618 <_Z8printIntiii>
    80001ff0:	00003517          	auipc	a0,0x3
    80001ff4:	2f850513          	addi	a0,a0,760 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80001ff8:	00000097          	auipc	ra,0x0
    80001ffc:	470080e7          	jalr	1136(ra) # 80002468 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002000:	0014849b          	addiw	s1,s1,1
    80002004:	0ff4f493          	andi	s1,s1,255
    80002008:	00f00793          	li	a5,15
    8000200c:	fc97f0e3          	bgeu	a5,s1,80001fcc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002010:	00003517          	auipc	a0,0x3
    80002014:	08850513          	addi	a0,a0,136 # 80005098 <CONSOLE_STATUS+0x88>
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	450080e7          	jalr	1104(ra) # 80002468 <_Z11printStringPKc>
    finishedD = true;
    80002020:	00100793          	li	a5,1
    80002024:	00004717          	auipc	a4,0x4
    80002028:	e4f70623          	sb	a5,-436(a4) # 80005e70 <_ZL9finishedD>
    thread_dispatch();
    8000202c:	fffff097          	auipc	ra,0xfffff
    80002030:	2c4080e7          	jalr	708(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002034:	01813083          	ld	ra,24(sp)
    80002038:	01013403          	ld	s0,16(sp)
    8000203c:	00813483          	ld	s1,8(sp)
    80002040:	00013903          	ld	s2,0(sp)
    80002044:	02010113          	addi	sp,sp,32
    80002048:	00008067          	ret

000000008000204c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000204c:	fe010113          	addi	sp,sp,-32
    80002050:	00113c23          	sd	ra,24(sp)
    80002054:	00813823          	sd	s0,16(sp)
    80002058:	00913423          	sd	s1,8(sp)
    8000205c:	01213023          	sd	s2,0(sp)
    80002060:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002064:	00000493          	li	s1,0
    80002068:	0400006f          	j	800020a8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000206c:	00003517          	auipc	a0,0x3
    80002070:	03c50513          	addi	a0,a0,60 # 800050a8 <CONSOLE_STATUS+0x98>
    80002074:	00000097          	auipc	ra,0x0
    80002078:	3f4080e7          	jalr	1012(ra) # 80002468 <_Z11printStringPKc>
    8000207c:	00000613          	li	a2,0
    80002080:	00a00593          	li	a1,10
    80002084:	00048513          	mv	a0,s1
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	590080e7          	jalr	1424(ra) # 80002618 <_Z8printIntiii>
    80002090:	00003517          	auipc	a0,0x3
    80002094:	25850513          	addi	a0,a0,600 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	3d0080e7          	jalr	976(ra) # 80002468 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800020a0:	0014849b          	addiw	s1,s1,1
    800020a4:	0ff4f493          	andi	s1,s1,255
    800020a8:	00200793          	li	a5,2
    800020ac:	fc97f0e3          	bgeu	a5,s1,8000206c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800020b0:	00003517          	auipc	a0,0x3
    800020b4:	00050513          	mv	a0,a0
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	3b0080e7          	jalr	944(ra) # 80002468 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800020c0:	00700313          	li	t1,7
    thread_dispatch();
    800020c4:	fffff097          	auipc	ra,0xfffff
    800020c8:	22c080e7          	jalr	556(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800020cc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800020d0:	00003517          	auipc	a0,0x3
    800020d4:	ff050513          	addi	a0,a0,-16 # 800050c0 <CONSOLE_STATUS+0xb0>
    800020d8:	00000097          	auipc	ra,0x0
    800020dc:	390080e7          	jalr	912(ra) # 80002468 <_Z11printStringPKc>
    800020e0:	00000613          	li	a2,0
    800020e4:	00a00593          	li	a1,10
    800020e8:	0009051b          	sext.w	a0,s2
    800020ec:	00000097          	auipc	ra,0x0
    800020f0:	52c080e7          	jalr	1324(ra) # 80002618 <_Z8printIntiii>
    800020f4:	00003517          	auipc	a0,0x3
    800020f8:	1f450513          	addi	a0,a0,500 # 800052e8 <CONSOLE_STATUS+0x2d8>
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	36c080e7          	jalr	876(ra) # 80002468 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002104:	00c00513          	li	a0,12
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	d88080e7          	jalr	-632(ra) # 80001e90 <_ZL9fibonaccim>
    80002110:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002114:	00003517          	auipc	a0,0x3
    80002118:	fb450513          	addi	a0,a0,-76 # 800050c8 <CONSOLE_STATUS+0xb8>
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	34c080e7          	jalr	844(ra) # 80002468 <_Z11printStringPKc>
    80002124:	00000613          	li	a2,0
    80002128:	00a00593          	li	a1,10
    8000212c:	0009051b          	sext.w	a0,s2
    80002130:	00000097          	auipc	ra,0x0
    80002134:	4e8080e7          	jalr	1256(ra) # 80002618 <_Z8printIntiii>
    80002138:	00003517          	auipc	a0,0x3
    8000213c:	1b050513          	addi	a0,a0,432 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002140:	00000097          	auipc	ra,0x0
    80002144:	328080e7          	jalr	808(ra) # 80002468 <_Z11printStringPKc>
    80002148:	0400006f          	j	80002188 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000214c:	00003517          	auipc	a0,0x3
    80002150:	f5c50513          	addi	a0,a0,-164 # 800050a8 <CONSOLE_STATUS+0x98>
    80002154:	00000097          	auipc	ra,0x0
    80002158:	314080e7          	jalr	788(ra) # 80002468 <_Z11printStringPKc>
    8000215c:	00000613          	li	a2,0
    80002160:	00a00593          	li	a1,10
    80002164:	00048513          	mv	a0,s1
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	4b0080e7          	jalr	1200(ra) # 80002618 <_Z8printIntiii>
    80002170:	00003517          	auipc	a0,0x3
    80002174:	17850513          	addi	a0,a0,376 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002178:	00000097          	auipc	ra,0x0
    8000217c:	2f0080e7          	jalr	752(ra) # 80002468 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002180:	0014849b          	addiw	s1,s1,1
    80002184:	0ff4f493          	andi	s1,s1,255
    80002188:	00500793          	li	a5,5
    8000218c:	fc97f0e3          	bgeu	a5,s1,8000214c <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80002190:	00003517          	auipc	a0,0x3
    80002194:	f4850513          	addi	a0,a0,-184 # 800050d8 <CONSOLE_STATUS+0xc8>
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	2d0080e7          	jalr	720(ra) # 80002468 <_Z11printStringPKc>
    finishedC = true;
    800021a0:	00100793          	li	a5,1
    800021a4:	00004717          	auipc	a4,0x4
    800021a8:	ccf706a3          	sb	a5,-819(a4) # 80005e71 <_ZL9finishedC>
    thread_dispatch();
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	144080e7          	jalr	324(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800021b4:	01813083          	ld	ra,24(sp)
    800021b8:	01013403          	ld	s0,16(sp)
    800021bc:	00813483          	ld	s1,8(sp)
    800021c0:	00013903          	ld	s2,0(sp)
    800021c4:	02010113          	addi	sp,sp,32
    800021c8:	00008067          	ret

00000000800021cc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800021cc:	fe010113          	addi	sp,sp,-32
    800021d0:	00113c23          	sd	ra,24(sp)
    800021d4:	00813823          	sd	s0,16(sp)
    800021d8:	00913423          	sd	s1,8(sp)
    800021dc:	01213023          	sd	s2,0(sp)
    800021e0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800021e4:	00000913          	li	s2,0
    800021e8:	0380006f          	j	80002220 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800021ec:	fffff097          	auipc	ra,0xfffff
    800021f0:	104080e7          	jalr	260(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800021f4:	00148493          	addi	s1,s1,1
    800021f8:	000027b7          	lui	a5,0x2
    800021fc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002200:	0097ee63          	bltu	a5,s1,8000221c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002204:	00000713          	li	a4,0
    80002208:	000077b7          	lui	a5,0x7
    8000220c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002210:	fce7eee3          	bltu	a5,a4,800021ec <_ZL11workerBodyBPv+0x20>
    80002214:	00170713          	addi	a4,a4,1
    80002218:	ff1ff06f          	j	80002208 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000221c:	00190913          	addi	s2,s2,1
    80002220:	00f00793          	li	a5,15
    80002224:	0527e063          	bltu	a5,s2,80002264 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002228:	00003517          	auipc	a0,0x3
    8000222c:	ec050513          	addi	a0,a0,-320 # 800050e8 <CONSOLE_STATUS+0xd8>
    80002230:	00000097          	auipc	ra,0x0
    80002234:	238080e7          	jalr	568(ra) # 80002468 <_Z11printStringPKc>
    80002238:	00000613          	li	a2,0
    8000223c:	00a00593          	li	a1,10
    80002240:	0009051b          	sext.w	a0,s2
    80002244:	00000097          	auipc	ra,0x0
    80002248:	3d4080e7          	jalr	980(ra) # 80002618 <_Z8printIntiii>
    8000224c:	00003517          	auipc	a0,0x3
    80002250:	09c50513          	addi	a0,a0,156 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002254:	00000097          	auipc	ra,0x0
    80002258:	214080e7          	jalr	532(ra) # 80002468 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000225c:	00000493          	li	s1,0
    80002260:	f99ff06f          	j	800021f8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002264:	00003517          	auipc	a0,0x3
    80002268:	e8c50513          	addi	a0,a0,-372 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000226c:	00000097          	auipc	ra,0x0
    80002270:	1fc080e7          	jalr	508(ra) # 80002468 <_Z11printStringPKc>
    finishedB = true;
    80002274:	00100793          	li	a5,1
    80002278:	00004717          	auipc	a4,0x4
    8000227c:	bef70d23          	sb	a5,-1030(a4) # 80005e72 <_ZL9finishedB>
    thread_dispatch();
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	070080e7          	jalr	112(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002288:	01813083          	ld	ra,24(sp)
    8000228c:	01013403          	ld	s0,16(sp)
    80002290:	00813483          	ld	s1,8(sp)
    80002294:	00013903          	ld	s2,0(sp)
    80002298:	02010113          	addi	sp,sp,32
    8000229c:	00008067          	ret

00000000800022a0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800022a0:	fe010113          	addi	sp,sp,-32
    800022a4:	00113c23          	sd	ra,24(sp)
    800022a8:	00813823          	sd	s0,16(sp)
    800022ac:	00913423          	sd	s1,8(sp)
    800022b0:	01213023          	sd	s2,0(sp)
    800022b4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800022b8:	00000913          	li	s2,0
    800022bc:	0380006f          	j	800022f4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800022c0:	fffff097          	auipc	ra,0xfffff
    800022c4:	030080e7          	jalr	48(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800022c8:	00148493          	addi	s1,s1,1
    800022cc:	000027b7          	lui	a5,0x2
    800022d0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800022d4:	0097ee63          	bltu	a5,s1,800022f0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800022d8:	00000713          	li	a4,0
    800022dc:	000077b7          	lui	a5,0x7
    800022e0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800022e4:	fce7eee3          	bltu	a5,a4,800022c0 <_ZL11workerBodyAPv+0x20>
    800022e8:	00170713          	addi	a4,a4,1
    800022ec:	ff1ff06f          	j	800022dc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800022f0:	00190913          	addi	s2,s2,1
    800022f4:	00900793          	li	a5,9
    800022f8:	0527e063          	bltu	a5,s2,80002338 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800022fc:	00003517          	auipc	a0,0x3
    80002300:	e0450513          	addi	a0,a0,-508 # 80005100 <CONSOLE_STATUS+0xf0>
    80002304:	00000097          	auipc	ra,0x0
    80002308:	164080e7          	jalr	356(ra) # 80002468 <_Z11printStringPKc>
    8000230c:	00000613          	li	a2,0
    80002310:	00a00593          	li	a1,10
    80002314:	0009051b          	sext.w	a0,s2
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	300080e7          	jalr	768(ra) # 80002618 <_Z8printIntiii>
    80002320:	00003517          	auipc	a0,0x3
    80002324:	fc850513          	addi	a0,a0,-56 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	140080e7          	jalr	320(ra) # 80002468 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002330:	00000493          	li	s1,0
    80002334:	f99ff06f          	j	800022cc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002338:	00003517          	auipc	a0,0x3
    8000233c:	dd050513          	addi	a0,a0,-560 # 80005108 <CONSOLE_STATUS+0xf8>
    80002340:	00000097          	auipc	ra,0x0
    80002344:	128080e7          	jalr	296(ra) # 80002468 <_Z11printStringPKc>
    finishedA = true;
    80002348:	00100793          	li	a5,1
    8000234c:	00004717          	auipc	a4,0x4
    80002350:	b2f703a3          	sb	a5,-1241(a4) # 80005e73 <_ZL9finishedA>
}
    80002354:	01813083          	ld	ra,24(sp)
    80002358:	01013403          	ld	s0,16(sp)
    8000235c:	00813483          	ld	s1,8(sp)
    80002360:	00013903          	ld	s2,0(sp)
    80002364:	02010113          	addi	sp,sp,32
    80002368:	00008067          	ret

000000008000236c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000236c:	fd010113          	addi	sp,sp,-48
    80002370:	02113423          	sd	ra,40(sp)
    80002374:	02813023          	sd	s0,32(sp)
    80002378:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000237c:	00000613          	li	a2,0
    80002380:	00000597          	auipc	a1,0x0
    80002384:	f2058593          	addi	a1,a1,-224 # 800022a0 <_ZL11workerBodyAPv>
    80002388:	fd040513          	addi	a0,s0,-48
    8000238c:	fffff097          	auipc	ra,0xfffff
    80002390:	e90080e7          	jalr	-368(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadA created\n");
    80002394:	00003517          	auipc	a0,0x3
    80002398:	d8450513          	addi	a0,a0,-636 # 80005118 <CONSOLE_STATUS+0x108>
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	0cc080e7          	jalr	204(ra) # 80002468 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800023a4:	00000613          	li	a2,0
    800023a8:	00000597          	auipc	a1,0x0
    800023ac:	e2458593          	addi	a1,a1,-476 # 800021cc <_ZL11workerBodyBPv>
    800023b0:	fd840513          	addi	a0,s0,-40
    800023b4:	fffff097          	auipc	ra,0xfffff
    800023b8:	e68080e7          	jalr	-408(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadB created\n");
    800023bc:	00003517          	auipc	a0,0x3
    800023c0:	d7450513          	addi	a0,a0,-652 # 80005130 <CONSOLE_STATUS+0x120>
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	0a4080e7          	jalr	164(ra) # 80002468 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800023cc:	00000613          	li	a2,0
    800023d0:	00000597          	auipc	a1,0x0
    800023d4:	c7c58593          	addi	a1,a1,-900 # 8000204c <_ZL11workerBodyCPv>
    800023d8:	fe040513          	addi	a0,s0,-32
    800023dc:	fffff097          	auipc	ra,0xfffff
    800023e0:	e40080e7          	jalr	-448(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadC created\n");
    800023e4:	00003517          	auipc	a0,0x3
    800023e8:	d6450513          	addi	a0,a0,-668 # 80005148 <CONSOLE_STATUS+0x138>
    800023ec:	00000097          	auipc	ra,0x0
    800023f0:	07c080e7          	jalr	124(ra) # 80002468 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800023f4:	00000613          	li	a2,0
    800023f8:	00000597          	auipc	a1,0x0
    800023fc:	b0c58593          	addi	a1,a1,-1268 # 80001f04 <_ZL11workerBodyDPv>
    80002400:	fe840513          	addi	a0,s0,-24
    80002404:	fffff097          	auipc	ra,0xfffff
    80002408:	e18080e7          	jalr	-488(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadD created\n");
    8000240c:	00003517          	auipc	a0,0x3
    80002410:	d5450513          	addi	a0,a0,-684 # 80005160 <CONSOLE_STATUS+0x150>
    80002414:	00000097          	auipc	ra,0x0
    80002418:	054080e7          	jalr	84(ra) # 80002468 <_Z11printStringPKc>
    8000241c:	00c0006f          	j	80002428 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	ed0080e7          	jalr	-304(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002428:	00004797          	auipc	a5,0x4
    8000242c:	a4b7c783          	lbu	a5,-1461(a5) # 80005e73 <_ZL9finishedA>
    80002430:	fe0788e3          	beqz	a5,80002420 <_Z18Threads_C_API_testv+0xb4>
    80002434:	00004797          	auipc	a5,0x4
    80002438:	a3e7c783          	lbu	a5,-1474(a5) # 80005e72 <_ZL9finishedB>
    8000243c:	fe0782e3          	beqz	a5,80002420 <_Z18Threads_C_API_testv+0xb4>
    80002440:	00004797          	auipc	a5,0x4
    80002444:	a317c783          	lbu	a5,-1487(a5) # 80005e71 <_ZL9finishedC>
    80002448:	fc078ce3          	beqz	a5,80002420 <_Z18Threads_C_API_testv+0xb4>
    8000244c:	00004797          	auipc	a5,0x4
    80002450:	a247c783          	lbu	a5,-1500(a5) # 80005e70 <_ZL9finishedD>
    80002454:	fc0786e3          	beqz	a5,80002420 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002458:	02813083          	ld	ra,40(sp)
    8000245c:	02013403          	ld	s0,32(sp)
    80002460:	03010113          	addi	sp,sp,48
    80002464:	00008067          	ret

0000000080002468 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002468:	fe010113          	addi	sp,sp,-32
    8000246c:	00113c23          	sd	ra,24(sp)
    80002470:	00813823          	sd	s0,16(sp)
    80002474:	00913423          	sd	s1,8(sp)
    80002478:	02010413          	addi	s0,sp,32
    8000247c:	00050493          	mv	s1,a0
    LOCK();
    80002480:	00100613          	li	a2,1
    80002484:	00000593          	li	a1,0
    80002488:	00004517          	auipc	a0,0x4
    8000248c:	9f050513          	addi	a0,a0,-1552 # 80005e78 <lockPrint>
    80002490:	fffff097          	auipc	ra,0xfffff
    80002494:	cb4080e7          	jalr	-844(ra) # 80001144 <copy_and_swap>
    80002498:	00050863          	beqz	a0,800024a8 <_Z11printStringPKc+0x40>
    8000249c:	fffff097          	auipc	ra,0xfffff
    800024a0:	e54080e7          	jalr	-428(ra) # 800012f0 <_Z15thread_dispatchv>
    800024a4:	fddff06f          	j	80002480 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800024a8:	0004c503          	lbu	a0,0(s1)
    800024ac:	00050a63          	beqz	a0,800024c0 <_Z11printStringPKc+0x58>
    {
        __putc(*string);
    800024b0:	00003097          	auipc	ra,0x3
    800024b4:	97c080e7          	jalr	-1668(ra) # 80004e2c <__putc>
        string++;
    800024b8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800024bc:	fedff06f          	j	800024a8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800024c0:	00000613          	li	a2,0
    800024c4:	00100593          	li	a1,1
    800024c8:	00004517          	auipc	a0,0x4
    800024cc:	9b050513          	addi	a0,a0,-1616 # 80005e78 <lockPrint>
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	c74080e7          	jalr	-908(ra) # 80001144 <copy_and_swap>
    800024d8:	fe0514e3          	bnez	a0,800024c0 <_Z11printStringPKc+0x58>
}
    800024dc:	01813083          	ld	ra,24(sp)
    800024e0:	01013403          	ld	s0,16(sp)
    800024e4:	00813483          	ld	s1,8(sp)
    800024e8:	02010113          	addi	sp,sp,32
    800024ec:	00008067          	ret

00000000800024f0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800024f0:	fd010113          	addi	sp,sp,-48
    800024f4:	02113423          	sd	ra,40(sp)
    800024f8:	02813023          	sd	s0,32(sp)
    800024fc:	00913c23          	sd	s1,24(sp)
    80002500:	01213823          	sd	s2,16(sp)
    80002504:	01313423          	sd	s3,8(sp)
    80002508:	01413023          	sd	s4,0(sp)
    8000250c:	03010413          	addi	s0,sp,48
    80002510:	00050993          	mv	s3,a0
    80002514:	00058a13          	mv	s4,a1
    LOCK();
    80002518:	00100613          	li	a2,1
    8000251c:	00000593          	li	a1,0
    80002520:	00004517          	auipc	a0,0x4
    80002524:	95850513          	addi	a0,a0,-1704 # 80005e78 <lockPrint>
    80002528:	fffff097          	auipc	ra,0xfffff
    8000252c:	c1c080e7          	jalr	-996(ra) # 80001144 <copy_and_swap>
    80002530:	00050863          	beqz	a0,80002540 <_Z9getStringPci+0x50>
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	dbc080e7          	jalr	-580(ra) # 800012f0 <_Z15thread_dispatchv>
    8000253c:	fddff06f          	j	80002518 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002540:	00000913          	li	s2,0
    80002544:	00090493          	mv	s1,s2
    80002548:	0019091b          	addiw	s2,s2,1
    8000254c:	03495a63          	bge	s2,s4,80002580 <_Z9getStringPci+0x90>
        cc = __getc();
    80002550:	00003097          	auipc	ra,0x3
    80002554:	918080e7          	jalr	-1768(ra) # 80004e68 <__getc>
        if(cc < 1)
    80002558:	02050463          	beqz	a0,80002580 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000255c:	009984b3          	add	s1,s3,s1
    80002560:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002564:	00a00793          	li	a5,10
    80002568:	00f50a63          	beq	a0,a5,8000257c <_Z9getStringPci+0x8c>
    8000256c:	00d00793          	li	a5,13
    80002570:	fcf51ae3          	bne	a0,a5,80002544 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80002574:	00090493          	mv	s1,s2
    80002578:	0080006f          	j	80002580 <_Z9getStringPci+0x90>
    8000257c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002580:	009984b3          	add	s1,s3,s1
    80002584:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002588:	00000613          	li	a2,0
    8000258c:	00100593          	li	a1,1
    80002590:	00004517          	auipc	a0,0x4
    80002594:	8e850513          	addi	a0,a0,-1816 # 80005e78 <lockPrint>
    80002598:	fffff097          	auipc	ra,0xfffff
    8000259c:	bac080e7          	jalr	-1108(ra) # 80001144 <copy_and_swap>
    800025a0:	fe0514e3          	bnez	a0,80002588 <_Z9getStringPci+0x98>
    return buf;
}
    800025a4:	00098513          	mv	a0,s3
    800025a8:	02813083          	ld	ra,40(sp)
    800025ac:	02013403          	ld	s0,32(sp)
    800025b0:	01813483          	ld	s1,24(sp)
    800025b4:	01013903          	ld	s2,16(sp)
    800025b8:	00813983          	ld	s3,8(sp)
    800025bc:	00013a03          	ld	s4,0(sp)
    800025c0:	03010113          	addi	sp,sp,48
    800025c4:	00008067          	ret

00000000800025c8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00813423          	sd	s0,8(sp)
    800025d0:	01010413          	addi	s0,sp,16
    800025d4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800025d8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800025dc:	0006c603          	lbu	a2,0(a3)
    800025e0:	fd06071b          	addiw	a4,a2,-48
    800025e4:	0ff77713          	andi	a4,a4,255
    800025e8:	00900793          	li	a5,9
    800025ec:	02e7e063          	bltu	a5,a4,8000260c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800025f0:	0025179b          	slliw	a5,a0,0x2
    800025f4:	00a787bb          	addw	a5,a5,a0
    800025f8:	0017979b          	slliw	a5,a5,0x1
    800025fc:	00168693          	addi	a3,a3,1
    80002600:	00c787bb          	addw	a5,a5,a2
    80002604:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002608:	fd5ff06f          	j	800025dc <_Z11stringToIntPKc+0x14>
    return n;
}
    8000260c:	00813403          	ld	s0,8(sp)
    80002610:	01010113          	addi	sp,sp,16
    80002614:	00008067          	ret

0000000080002618 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002618:	fc010113          	addi	sp,sp,-64
    8000261c:	02113c23          	sd	ra,56(sp)
    80002620:	02813823          	sd	s0,48(sp)
    80002624:	02913423          	sd	s1,40(sp)
    80002628:	03213023          	sd	s2,32(sp)
    8000262c:	01313c23          	sd	s3,24(sp)
    80002630:	04010413          	addi	s0,sp,64
    80002634:	00050493          	mv	s1,a0
    80002638:	00058913          	mv	s2,a1
    8000263c:	00060993          	mv	s3,a2
    LOCK();
    80002640:	00100613          	li	a2,1
    80002644:	00000593          	li	a1,0
    80002648:	00004517          	auipc	a0,0x4
    8000264c:	83050513          	addi	a0,a0,-2000 # 80005e78 <lockPrint>
    80002650:	fffff097          	auipc	ra,0xfffff
    80002654:	af4080e7          	jalr	-1292(ra) # 80001144 <copy_and_swap>
    80002658:	00050863          	beqz	a0,80002668 <_Z8printIntiii+0x50>
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	c94080e7          	jalr	-876(ra) # 800012f0 <_Z15thread_dispatchv>
    80002664:	fddff06f          	j	80002640 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002668:	00098463          	beqz	s3,80002670 <_Z8printIntiii+0x58>
    8000266c:	0804c463          	bltz	s1,800026f4 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002670:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002674:	00000593          	li	a1,0
    }

    i = 0;
    80002678:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000267c:	0009079b          	sext.w	a5,s2
    80002680:	0325773b          	remuw	a4,a0,s2
    80002684:	00048613          	mv	a2,s1
    80002688:	0014849b          	addiw	s1,s1,1
    8000268c:	02071693          	slli	a3,a4,0x20
    80002690:	0206d693          	srli	a3,a3,0x20
    80002694:	00003717          	auipc	a4,0x3
    80002698:	71470713          	addi	a4,a4,1812 # 80005da8 <digits>
    8000269c:	00d70733          	add	a4,a4,a3
    800026a0:	00074683          	lbu	a3,0(a4)
    800026a4:	fd040713          	addi	a4,s0,-48
    800026a8:	00c70733          	add	a4,a4,a2
    800026ac:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800026b0:	0005071b          	sext.w	a4,a0
    800026b4:	0325553b          	divuw	a0,a0,s2
    800026b8:	fcf772e3          	bgeu	a4,a5,8000267c <_Z8printIntiii+0x64>
    if(neg)
    800026bc:	00058c63          	beqz	a1,800026d4 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800026c0:	fd040793          	addi	a5,s0,-48
    800026c4:	009784b3          	add	s1,a5,s1
    800026c8:	02d00793          	li	a5,45
    800026cc:	fef48823          	sb	a5,-16(s1)
    800026d0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800026d4:	fff4849b          	addiw	s1,s1,-1
    800026d8:	0204c463          	bltz	s1,80002700 <_Z8printIntiii+0xe8>
        __putc(buf[i]);
    800026dc:	fd040793          	addi	a5,s0,-48
    800026e0:	009787b3          	add	a5,a5,s1
    800026e4:	ff07c503          	lbu	a0,-16(a5)
    800026e8:	00002097          	auipc	ra,0x2
    800026ec:	744080e7          	jalr	1860(ra) # 80004e2c <__putc>
    800026f0:	fe5ff06f          	j	800026d4 <_Z8printIntiii+0xbc>
        x = -xx;
    800026f4:	4090053b          	negw	a0,s1
        neg = 1;
    800026f8:	00100593          	li	a1,1
        x = -xx;
    800026fc:	f7dff06f          	j	80002678 <_Z8printIntiii+0x60>

    UNLOCK();
    80002700:	00000613          	li	a2,0
    80002704:	00100593          	li	a1,1
    80002708:	00003517          	auipc	a0,0x3
    8000270c:	77050513          	addi	a0,a0,1904 # 80005e78 <lockPrint>
    80002710:	fffff097          	auipc	ra,0xfffff
    80002714:	a34080e7          	jalr	-1484(ra) # 80001144 <copy_and_swap>
    80002718:	fe0514e3          	bnez	a0,80002700 <_Z8printIntiii+0xe8>
    8000271c:	03813083          	ld	ra,56(sp)
    80002720:	03013403          	ld	s0,48(sp)
    80002724:	02813483          	ld	s1,40(sp)
    80002728:	02013903          	ld	s2,32(sp)
    8000272c:	01813983          	ld	s3,24(sp)
    80002730:	04010113          	addi	sp,sp,64
    80002734:	00008067          	ret

0000000080002738 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80002738:	ff010113          	addi	sp,sp,-16
    8000273c:	00113423          	sd	ra,8(sp)
    80002740:	00813023          	sd	s0,0(sp)
    80002744:	01010413          	addi	s0,sp,16
    printString("Unesite broj testa? [1-7]\n");
    80002748:	00003517          	auipc	a0,0x3
    8000274c:	a3050513          	addi	a0,a0,-1488 # 80005178 <CONSOLE_STATUS+0x168>
    80002750:	00000097          	auipc	ra,0x0
    80002754:	d18080e7          	jalr	-744(ra) # 80002468 <_Z11printStringPKc>
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	c14080e7          	jalr	-1004(ra) # 8000236c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80002760:	00003517          	auipc	a0,0x3
    80002764:	a3850513          	addi	a0,a0,-1480 # 80005198 <CONSOLE_STATUS+0x188>
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	d00080e7          	jalr	-768(ra) # 80002468 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80002770:	00813083          	ld	ra,8(sp)
    80002774:	00013403          	ld	s0,0(sp)
    80002778:	01010113          	addi	sp,sp,16
    8000277c:	00008067          	ret

0000000080002780 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002780:	fe010113          	addi	sp,sp,-32
    80002784:	00113c23          	sd	ra,24(sp)
    80002788:	00813823          	sd	s0,16(sp)
    8000278c:	00913423          	sd	s1,8(sp)
    80002790:	01213023          	sd	s2,0(sp)
    80002794:	02010413          	addi	s0,sp,32
    80002798:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000279c:	00100793          	li	a5,1
    800027a0:	02a7f863          	bgeu	a5,a0,800027d0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800027a4:	00a00793          	li	a5,10
    800027a8:	02f577b3          	remu	a5,a0,a5
    800027ac:	02078e63          	beqz	a5,800027e8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800027b0:	fff48513          	addi	a0,s1,-1
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	fcc080e7          	jalr	-52(ra) # 80002780 <_ZL9fibonaccim>
    800027bc:	00050913          	mv	s2,a0
    800027c0:	ffe48513          	addi	a0,s1,-2
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	fbc080e7          	jalr	-68(ra) # 80002780 <_ZL9fibonaccim>
    800027cc:	00a90533          	add	a0,s2,a0
}
    800027d0:	01813083          	ld	ra,24(sp)
    800027d4:	01013403          	ld	s0,16(sp)
    800027d8:	00813483          	ld	s1,8(sp)
    800027dc:	00013903          	ld	s2,0(sp)
    800027e0:	02010113          	addi	sp,sp,32
    800027e4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	b08080e7          	jalr	-1272(ra) # 800012f0 <_Z15thread_dispatchv>
    800027f0:	fc1ff06f          	j	800027b0 <_ZL9fibonaccim+0x30>

00000000800027f4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800027f4:	fe010113          	addi	sp,sp,-32
    800027f8:	00113c23          	sd	ra,24(sp)
    800027fc:	00813823          	sd	s0,16(sp)
    80002800:	00913423          	sd	s1,8(sp)
    80002804:	01213023          	sd	s2,0(sp)
    80002808:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000280c:	00a00493          	li	s1,10
    80002810:	0400006f          	j	80002850 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002814:	00003517          	auipc	a0,0x3
    80002818:	85c50513          	addi	a0,a0,-1956 # 80005070 <CONSOLE_STATUS+0x60>
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	c4c080e7          	jalr	-948(ra) # 80002468 <_Z11printStringPKc>
    80002824:	00000613          	li	a2,0
    80002828:	00a00593          	li	a1,10
    8000282c:	00048513          	mv	a0,s1
    80002830:	00000097          	auipc	ra,0x0
    80002834:	de8080e7          	jalr	-536(ra) # 80002618 <_Z8printIntiii>
    80002838:	00003517          	auipc	a0,0x3
    8000283c:	ab050513          	addi	a0,a0,-1360 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002840:	00000097          	auipc	ra,0x0
    80002844:	c28080e7          	jalr	-984(ra) # 80002468 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002848:	0014849b          	addiw	s1,s1,1
    8000284c:	0ff4f493          	andi	s1,s1,255
    80002850:	00c00793          	li	a5,12
    80002854:	fc97f0e3          	bgeu	a5,s1,80002814 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002858:	00003517          	auipc	a0,0x3
    8000285c:	82050513          	addi	a0,a0,-2016 # 80005078 <CONSOLE_STATUS+0x68>
    80002860:	00000097          	auipc	ra,0x0
    80002864:	c08080e7          	jalr	-1016(ra) # 80002468 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002868:	00500313          	li	t1,5
    thread_dispatch();
    8000286c:	fffff097          	auipc	ra,0xfffff
    80002870:	a84080e7          	jalr	-1404(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002874:	01000513          	li	a0,16
    80002878:	00000097          	auipc	ra,0x0
    8000287c:	f08080e7          	jalr	-248(ra) # 80002780 <_ZL9fibonaccim>
    80002880:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002884:	00003517          	auipc	a0,0x3
    80002888:	80450513          	addi	a0,a0,-2044 # 80005088 <CONSOLE_STATUS+0x78>
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	bdc080e7          	jalr	-1060(ra) # 80002468 <_Z11printStringPKc>
    80002894:	00000613          	li	a2,0
    80002898:	00a00593          	li	a1,10
    8000289c:	0009051b          	sext.w	a0,s2
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	d78080e7          	jalr	-648(ra) # 80002618 <_Z8printIntiii>
    800028a8:	00003517          	auipc	a0,0x3
    800028ac:	a4050513          	addi	a0,a0,-1472 # 800052e8 <CONSOLE_STATUS+0x2d8>
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	bb8080e7          	jalr	-1096(ra) # 80002468 <_Z11printStringPKc>
    800028b8:	0400006f          	j	800028f8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800028bc:	00002517          	auipc	a0,0x2
    800028c0:	7b450513          	addi	a0,a0,1972 # 80005070 <CONSOLE_STATUS+0x60>
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	ba4080e7          	jalr	-1116(ra) # 80002468 <_Z11printStringPKc>
    800028cc:	00000613          	li	a2,0
    800028d0:	00a00593          	li	a1,10
    800028d4:	00048513          	mv	a0,s1
    800028d8:	00000097          	auipc	ra,0x0
    800028dc:	d40080e7          	jalr	-704(ra) # 80002618 <_Z8printIntiii>
    800028e0:	00003517          	auipc	a0,0x3
    800028e4:	a0850513          	addi	a0,a0,-1528 # 800052e8 <CONSOLE_STATUS+0x2d8>
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	b80080e7          	jalr	-1152(ra) # 80002468 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800028f0:	0014849b          	addiw	s1,s1,1
    800028f4:	0ff4f493          	andi	s1,s1,255
    800028f8:	00f00793          	li	a5,15
    800028fc:	fc97f0e3          	bgeu	a5,s1,800028bc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002900:	00002517          	auipc	a0,0x2
    80002904:	79850513          	addi	a0,a0,1944 # 80005098 <CONSOLE_STATUS+0x88>
    80002908:	00000097          	auipc	ra,0x0
    8000290c:	b60080e7          	jalr	-1184(ra) # 80002468 <_Z11printStringPKc>
    finishedD = true;
    80002910:	00100793          	li	a5,1
    80002914:	00003717          	auipc	a4,0x3
    80002918:	56f70623          	sb	a5,1388(a4) # 80005e80 <_ZL9finishedD>
    thread_dispatch();
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	9d4080e7          	jalr	-1580(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002924:	01813083          	ld	ra,24(sp)
    80002928:	01013403          	ld	s0,16(sp)
    8000292c:	00813483          	ld	s1,8(sp)
    80002930:	00013903          	ld	s2,0(sp)
    80002934:	02010113          	addi	sp,sp,32
    80002938:	00008067          	ret

000000008000293c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000293c:	fe010113          	addi	sp,sp,-32
    80002940:	00113c23          	sd	ra,24(sp)
    80002944:	00813823          	sd	s0,16(sp)
    80002948:	00913423          	sd	s1,8(sp)
    8000294c:	01213023          	sd	s2,0(sp)
    80002950:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002954:	00000493          	li	s1,0
    80002958:	0400006f          	j	80002998 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000295c:	00002517          	auipc	a0,0x2
    80002960:	74c50513          	addi	a0,a0,1868 # 800050a8 <CONSOLE_STATUS+0x98>
    80002964:	00000097          	auipc	ra,0x0
    80002968:	b04080e7          	jalr	-1276(ra) # 80002468 <_Z11printStringPKc>
    8000296c:	00000613          	li	a2,0
    80002970:	00a00593          	li	a1,10
    80002974:	00048513          	mv	a0,s1
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	ca0080e7          	jalr	-864(ra) # 80002618 <_Z8printIntiii>
    80002980:	00003517          	auipc	a0,0x3
    80002984:	96850513          	addi	a0,a0,-1688 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	ae0080e7          	jalr	-1312(ra) # 80002468 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002990:	0014849b          	addiw	s1,s1,1
    80002994:	0ff4f493          	andi	s1,s1,255
    80002998:	00200793          	li	a5,2
    8000299c:	fc97f0e3          	bgeu	a5,s1,8000295c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800029a0:	00002517          	auipc	a0,0x2
    800029a4:	71050513          	addi	a0,a0,1808 # 800050b0 <CONSOLE_STATUS+0xa0>
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	ac0080e7          	jalr	-1344(ra) # 80002468 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800029b0:	00700313          	li	t1,7
    thread_dispatch();
    800029b4:	fffff097          	auipc	ra,0xfffff
    800029b8:	93c080e7          	jalr	-1732(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800029bc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800029c0:	00002517          	auipc	a0,0x2
    800029c4:	70050513          	addi	a0,a0,1792 # 800050c0 <CONSOLE_STATUS+0xb0>
    800029c8:	00000097          	auipc	ra,0x0
    800029cc:	aa0080e7          	jalr	-1376(ra) # 80002468 <_Z11printStringPKc>
    800029d0:	00000613          	li	a2,0
    800029d4:	00a00593          	li	a1,10
    800029d8:	0009051b          	sext.w	a0,s2
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	c3c080e7          	jalr	-964(ra) # 80002618 <_Z8printIntiii>
    800029e4:	00003517          	auipc	a0,0x3
    800029e8:	90450513          	addi	a0,a0,-1788 # 800052e8 <CONSOLE_STATUS+0x2d8>
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	a7c080e7          	jalr	-1412(ra) # 80002468 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800029f4:	00c00513          	li	a0,12
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	d88080e7          	jalr	-632(ra) # 80002780 <_ZL9fibonaccim>
    80002a00:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002a04:	00002517          	auipc	a0,0x2
    80002a08:	6c450513          	addi	a0,a0,1732 # 800050c8 <CONSOLE_STATUS+0xb8>
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	a5c080e7          	jalr	-1444(ra) # 80002468 <_Z11printStringPKc>
    80002a14:	00000613          	li	a2,0
    80002a18:	00a00593          	li	a1,10
    80002a1c:	0009051b          	sext.w	a0,s2
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	bf8080e7          	jalr	-1032(ra) # 80002618 <_Z8printIntiii>
    80002a28:	00003517          	auipc	a0,0x3
    80002a2c:	8c050513          	addi	a0,a0,-1856 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002a30:	00000097          	auipc	ra,0x0
    80002a34:	a38080e7          	jalr	-1480(ra) # 80002468 <_Z11printStringPKc>
    80002a38:	0400006f          	j	80002a78 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002a3c:	00002517          	auipc	a0,0x2
    80002a40:	66c50513          	addi	a0,a0,1644 # 800050a8 <CONSOLE_STATUS+0x98>
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	a24080e7          	jalr	-1500(ra) # 80002468 <_Z11printStringPKc>
    80002a4c:	00000613          	li	a2,0
    80002a50:	00a00593          	li	a1,10
    80002a54:	00048513          	mv	a0,s1
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	bc0080e7          	jalr	-1088(ra) # 80002618 <_Z8printIntiii>
    80002a60:	00003517          	auipc	a0,0x3
    80002a64:	88850513          	addi	a0,a0,-1912 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	a00080e7          	jalr	-1536(ra) # 80002468 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002a70:	0014849b          	addiw	s1,s1,1
    80002a74:	0ff4f493          	andi	s1,s1,255
    80002a78:	00500793          	li	a5,5
    80002a7c:	fc97f0e3          	bgeu	a5,s1,80002a3c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80002a80:	00002517          	auipc	a0,0x2
    80002a84:	68850513          	addi	a0,a0,1672 # 80005108 <CONSOLE_STATUS+0xf8>
    80002a88:	00000097          	auipc	ra,0x0
    80002a8c:	9e0080e7          	jalr	-1568(ra) # 80002468 <_Z11printStringPKc>
    finishedC = true;
    80002a90:	00100793          	li	a5,1
    80002a94:	00003717          	auipc	a4,0x3
    80002a98:	3ef706a3          	sb	a5,1005(a4) # 80005e81 <_ZL9finishedC>
    thread_dispatch();
    80002a9c:	fffff097          	auipc	ra,0xfffff
    80002aa0:	854080e7          	jalr	-1964(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002aa4:	01813083          	ld	ra,24(sp)
    80002aa8:	01013403          	ld	s0,16(sp)
    80002aac:	00813483          	ld	s1,8(sp)
    80002ab0:	00013903          	ld	s2,0(sp)
    80002ab4:	02010113          	addi	sp,sp,32
    80002ab8:	00008067          	ret

0000000080002abc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002abc:	fe010113          	addi	sp,sp,-32
    80002ac0:	00113c23          	sd	ra,24(sp)
    80002ac4:	00813823          	sd	s0,16(sp)
    80002ac8:	00913423          	sd	s1,8(sp)
    80002acc:	01213023          	sd	s2,0(sp)
    80002ad0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002ad4:	00000913          	li	s2,0
    80002ad8:	0400006f          	j	80002b18 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	814080e7          	jalr	-2028(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002ae4:	00148493          	addi	s1,s1,1
    80002ae8:	000027b7          	lui	a5,0x2
    80002aec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002af0:	0097ee63          	bltu	a5,s1,80002b0c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002af4:	00000713          	li	a4,0
    80002af8:	000077b7          	lui	a5,0x7
    80002afc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b00:	fce7eee3          	bltu	a5,a4,80002adc <_ZL11workerBodyBPv+0x20>
    80002b04:	00170713          	addi	a4,a4,1
    80002b08:	ff1ff06f          	j	80002af8 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80002b0c:	00a00793          	li	a5,10
    80002b10:	04f90663          	beq	s2,a5,80002b5c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80002b14:	00190913          	addi	s2,s2,1
    80002b18:	00f00793          	li	a5,15
    80002b1c:	0527e463          	bltu	a5,s2,80002b64 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80002b20:	00002517          	auipc	a0,0x2
    80002b24:	5c850513          	addi	a0,a0,1480 # 800050e8 <CONSOLE_STATUS+0xd8>
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	940080e7          	jalr	-1728(ra) # 80002468 <_Z11printStringPKc>
    80002b30:	00000613          	li	a2,0
    80002b34:	00a00593          	li	a1,10
    80002b38:	0009051b          	sext.w	a0,s2
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	adc080e7          	jalr	-1316(ra) # 80002618 <_Z8printIntiii>
    80002b44:	00002517          	auipc	a0,0x2
    80002b48:	7a450513          	addi	a0,a0,1956 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	91c080e7          	jalr	-1764(ra) # 80002468 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b54:	00000493          	li	s1,0
    80002b58:	f91ff06f          	j	80002ae8 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80002b5c:	14102ff3          	csrr	t6,sepc
    80002b60:	fb5ff06f          	j	80002b14 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80002b64:	00002517          	auipc	a0,0x2
    80002b68:	58c50513          	addi	a0,a0,1420 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	8fc080e7          	jalr	-1796(ra) # 80002468 <_Z11printStringPKc>
    finishedB = true;
    80002b74:	00100793          	li	a5,1
    80002b78:	00003717          	auipc	a4,0x3
    80002b7c:	30f70523          	sb	a5,778(a4) # 80005e82 <_ZL9finishedB>
    thread_dispatch();
    80002b80:	ffffe097          	auipc	ra,0xffffe
    80002b84:	770080e7          	jalr	1904(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002b88:	01813083          	ld	ra,24(sp)
    80002b8c:	01013403          	ld	s0,16(sp)
    80002b90:	00813483          	ld	s1,8(sp)
    80002b94:	00013903          	ld	s2,0(sp)
    80002b98:	02010113          	addi	sp,sp,32
    80002b9c:	00008067          	ret

0000000080002ba0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002ba0:	fe010113          	addi	sp,sp,-32
    80002ba4:	00113c23          	sd	ra,24(sp)
    80002ba8:	00813823          	sd	s0,16(sp)
    80002bac:	00913423          	sd	s1,8(sp)
    80002bb0:	01213023          	sd	s2,0(sp)
    80002bb4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002bb8:	00000913          	li	s2,0
    80002bbc:	0380006f          	j	80002bf4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002bc0:	ffffe097          	auipc	ra,0xffffe
    80002bc4:	730080e7          	jalr	1840(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002bc8:	00148493          	addi	s1,s1,1
    80002bcc:	000027b7          	lui	a5,0x2
    80002bd0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002bd4:	0097ee63          	bltu	a5,s1,80002bf0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002bd8:	00000713          	li	a4,0
    80002bdc:	000077b7          	lui	a5,0x7
    80002be0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002be4:	fce7eee3          	bltu	a5,a4,80002bc0 <_ZL11workerBodyAPv+0x20>
    80002be8:	00170713          	addi	a4,a4,1
    80002bec:	ff1ff06f          	j	80002bdc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002bf0:	00190913          	addi	s2,s2,1
    80002bf4:	00900793          	li	a5,9
    80002bf8:	0527e063          	bltu	a5,s2,80002c38 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002bfc:	00002517          	auipc	a0,0x2
    80002c00:	50450513          	addi	a0,a0,1284 # 80005100 <CONSOLE_STATUS+0xf0>
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	864080e7          	jalr	-1948(ra) # 80002468 <_Z11printStringPKc>
    80002c0c:	00000613          	li	a2,0
    80002c10:	00a00593          	li	a1,10
    80002c14:	0009051b          	sext.w	a0,s2
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	a00080e7          	jalr	-1536(ra) # 80002618 <_Z8printIntiii>
    80002c20:	00002517          	auipc	a0,0x2
    80002c24:	6c850513          	addi	a0,a0,1736 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002c28:	00000097          	auipc	ra,0x0
    80002c2c:	840080e7          	jalr	-1984(ra) # 80002468 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002c30:	00000493          	li	s1,0
    80002c34:	f99ff06f          	j	80002bcc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002c38:	00002517          	auipc	a0,0x2
    80002c3c:	4d050513          	addi	a0,a0,1232 # 80005108 <CONSOLE_STATUS+0xf8>
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	828080e7          	jalr	-2008(ra) # 80002468 <_Z11printStringPKc>
    finishedA = true;
    80002c48:	00100793          	li	a5,1
    80002c4c:	00003717          	auipc	a4,0x3
    80002c50:	22f70ba3          	sb	a5,567(a4) # 80005e83 <_ZL9finishedA>
}
    80002c54:	01813083          	ld	ra,24(sp)
    80002c58:	01013403          	ld	s0,16(sp)
    80002c5c:	00813483          	ld	s1,8(sp)
    80002c60:	00013903          	ld	s2,0(sp)
    80002c64:	02010113          	addi	sp,sp,32
    80002c68:	00008067          	ret

0000000080002c6c <_Z16System_Mode_testv>:


void System_Mode_test() {
    80002c6c:	fd010113          	addi	sp,sp,-48
    80002c70:	02113423          	sd	ra,40(sp)
    80002c74:	02813023          	sd	s0,32(sp)
    80002c78:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002c7c:	00000613          	li	a2,0
    80002c80:	00000597          	auipc	a1,0x0
    80002c84:	f2058593          	addi	a1,a1,-224 # 80002ba0 <_ZL11workerBodyAPv>
    80002c88:	fd040513          	addi	a0,s0,-48
    80002c8c:	ffffe097          	auipc	ra,0xffffe
    80002c90:	590080e7          	jalr	1424(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadA created\n");
    80002c94:	00002517          	auipc	a0,0x2
    80002c98:	48450513          	addi	a0,a0,1156 # 80005118 <CONSOLE_STATUS+0x108>
    80002c9c:	fffff097          	auipc	ra,0xfffff
    80002ca0:	7cc080e7          	jalr	1996(ra) # 80002468 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002ca4:	00000613          	li	a2,0
    80002ca8:	00000597          	auipc	a1,0x0
    80002cac:	e1458593          	addi	a1,a1,-492 # 80002abc <_ZL11workerBodyBPv>
    80002cb0:	fd840513          	addi	a0,s0,-40
    80002cb4:	ffffe097          	auipc	ra,0xffffe
    80002cb8:	568080e7          	jalr	1384(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadB created\n");
    80002cbc:	00002517          	auipc	a0,0x2
    80002cc0:	47450513          	addi	a0,a0,1140 # 80005130 <CONSOLE_STATUS+0x120>
    80002cc4:	fffff097          	auipc	ra,0xfffff
    80002cc8:	7a4080e7          	jalr	1956(ra) # 80002468 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002ccc:	00000613          	li	a2,0
    80002cd0:	00000597          	auipc	a1,0x0
    80002cd4:	c6c58593          	addi	a1,a1,-916 # 8000293c <_ZL11workerBodyCPv>
    80002cd8:	fe040513          	addi	a0,s0,-32
    80002cdc:	ffffe097          	auipc	ra,0xffffe
    80002ce0:	540080e7          	jalr	1344(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadC created\n");
    80002ce4:	00002517          	auipc	a0,0x2
    80002ce8:	46450513          	addi	a0,a0,1124 # 80005148 <CONSOLE_STATUS+0x138>
    80002cec:	fffff097          	auipc	ra,0xfffff
    80002cf0:	77c080e7          	jalr	1916(ra) # 80002468 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002cf4:	00000613          	li	a2,0
    80002cf8:	00000597          	auipc	a1,0x0
    80002cfc:	afc58593          	addi	a1,a1,-1284 # 800027f4 <_ZL11workerBodyDPv>
    80002d00:	fe840513          	addi	a0,s0,-24
    80002d04:	ffffe097          	auipc	ra,0xffffe
    80002d08:	518080e7          	jalr	1304(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadD created\n");
    80002d0c:	00002517          	auipc	a0,0x2
    80002d10:	45450513          	addi	a0,a0,1108 # 80005160 <CONSOLE_STATUS+0x150>
    80002d14:	fffff097          	auipc	ra,0xfffff
    80002d18:	754080e7          	jalr	1876(ra) # 80002468 <_Z11printStringPKc>
    80002d1c:	00c0006f          	j	80002d28 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002d20:	ffffe097          	auipc	ra,0xffffe
    80002d24:	5d0080e7          	jalr	1488(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002d28:	00003797          	auipc	a5,0x3
    80002d2c:	15b7c783          	lbu	a5,347(a5) # 80005e83 <_ZL9finishedA>
    80002d30:	fe0788e3          	beqz	a5,80002d20 <_Z16System_Mode_testv+0xb4>
    80002d34:	00003797          	auipc	a5,0x3
    80002d38:	14e7c783          	lbu	a5,334(a5) # 80005e82 <_ZL9finishedB>
    80002d3c:	fe0782e3          	beqz	a5,80002d20 <_Z16System_Mode_testv+0xb4>
    80002d40:	00003797          	auipc	a5,0x3
    80002d44:	1417c783          	lbu	a5,321(a5) # 80005e81 <_ZL9finishedC>
    80002d48:	fc078ce3          	beqz	a5,80002d20 <_Z16System_Mode_testv+0xb4>
    80002d4c:	00003797          	auipc	a5,0x3
    80002d50:	1347c783          	lbu	a5,308(a5) # 80005e80 <_ZL9finishedD>
    80002d54:	fc0786e3          	beqz	a5,80002d20 <_Z16System_Mode_testv+0xb4>
    }

}
    80002d58:	02813083          	ld	ra,40(sp)
    80002d5c:	02013403          	ld	s0,32(sp)
    80002d60:	03010113          	addi	sp,sp,48
    80002d64:	00008067          	ret

0000000080002d68 <start>:
    80002d68:	ff010113          	addi	sp,sp,-16
    80002d6c:	00813423          	sd	s0,8(sp)
    80002d70:	01010413          	addi	s0,sp,16
    80002d74:	300027f3          	csrr	a5,mstatus
    80002d78:	ffffe737          	lui	a4,0xffffe
    80002d7c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff770f>
    80002d80:	00e7f7b3          	and	a5,a5,a4
    80002d84:	00001737          	lui	a4,0x1
    80002d88:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002d8c:	00e7e7b3          	or	a5,a5,a4
    80002d90:	30079073          	csrw	mstatus,a5
    80002d94:	00000797          	auipc	a5,0x0
    80002d98:	16078793          	addi	a5,a5,352 # 80002ef4 <system_main>
    80002d9c:	34179073          	csrw	mepc,a5
    80002da0:	00000793          	li	a5,0
    80002da4:	18079073          	csrw	satp,a5
    80002da8:	000107b7          	lui	a5,0x10
    80002dac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002db0:	30279073          	csrw	medeleg,a5
    80002db4:	30379073          	csrw	mideleg,a5
    80002db8:	104027f3          	csrr	a5,sie
    80002dbc:	2227e793          	ori	a5,a5,546
    80002dc0:	10479073          	csrw	sie,a5
    80002dc4:	fff00793          	li	a5,-1
    80002dc8:	00a7d793          	srli	a5,a5,0xa
    80002dcc:	3b079073          	csrw	pmpaddr0,a5
    80002dd0:	00f00793          	li	a5,15
    80002dd4:	3a079073          	csrw	pmpcfg0,a5
    80002dd8:	f14027f3          	csrr	a5,mhartid
    80002ddc:	0200c737          	lui	a4,0x200c
    80002de0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002de4:	0007869b          	sext.w	a3,a5
    80002de8:	00269713          	slli	a4,a3,0x2
    80002dec:	000f4637          	lui	a2,0xf4
    80002df0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002df4:	00d70733          	add	a4,a4,a3
    80002df8:	0037979b          	slliw	a5,a5,0x3
    80002dfc:	020046b7          	lui	a3,0x2004
    80002e00:	00d787b3          	add	a5,a5,a3
    80002e04:	00c585b3          	add	a1,a1,a2
    80002e08:	00371693          	slli	a3,a4,0x3
    80002e0c:	00003717          	auipc	a4,0x3
    80002e10:	08470713          	addi	a4,a4,132 # 80005e90 <timer_scratch>
    80002e14:	00b7b023          	sd	a1,0(a5)
    80002e18:	00d70733          	add	a4,a4,a3
    80002e1c:	00f73c23          	sd	a5,24(a4)
    80002e20:	02c73023          	sd	a2,32(a4)
    80002e24:	34071073          	csrw	mscratch,a4
    80002e28:	00000797          	auipc	a5,0x0
    80002e2c:	6e878793          	addi	a5,a5,1768 # 80003510 <timervec>
    80002e30:	30579073          	csrw	mtvec,a5
    80002e34:	300027f3          	csrr	a5,mstatus
    80002e38:	0087e793          	ori	a5,a5,8
    80002e3c:	30079073          	csrw	mstatus,a5
    80002e40:	304027f3          	csrr	a5,mie
    80002e44:	0807e793          	ori	a5,a5,128
    80002e48:	30479073          	csrw	mie,a5
    80002e4c:	f14027f3          	csrr	a5,mhartid
    80002e50:	0007879b          	sext.w	a5,a5
    80002e54:	00078213          	mv	tp,a5
    80002e58:	30200073          	mret
    80002e5c:	00813403          	ld	s0,8(sp)
    80002e60:	01010113          	addi	sp,sp,16
    80002e64:	00008067          	ret

0000000080002e68 <timerinit>:
    80002e68:	ff010113          	addi	sp,sp,-16
    80002e6c:	00813423          	sd	s0,8(sp)
    80002e70:	01010413          	addi	s0,sp,16
    80002e74:	f14027f3          	csrr	a5,mhartid
    80002e78:	0200c737          	lui	a4,0x200c
    80002e7c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002e80:	0007869b          	sext.w	a3,a5
    80002e84:	00269713          	slli	a4,a3,0x2
    80002e88:	000f4637          	lui	a2,0xf4
    80002e8c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002e90:	00d70733          	add	a4,a4,a3
    80002e94:	0037979b          	slliw	a5,a5,0x3
    80002e98:	020046b7          	lui	a3,0x2004
    80002e9c:	00d787b3          	add	a5,a5,a3
    80002ea0:	00c585b3          	add	a1,a1,a2
    80002ea4:	00371693          	slli	a3,a4,0x3
    80002ea8:	00003717          	auipc	a4,0x3
    80002eac:	fe870713          	addi	a4,a4,-24 # 80005e90 <timer_scratch>
    80002eb0:	00b7b023          	sd	a1,0(a5)
    80002eb4:	00d70733          	add	a4,a4,a3
    80002eb8:	00f73c23          	sd	a5,24(a4)
    80002ebc:	02c73023          	sd	a2,32(a4)
    80002ec0:	34071073          	csrw	mscratch,a4
    80002ec4:	00000797          	auipc	a5,0x0
    80002ec8:	64c78793          	addi	a5,a5,1612 # 80003510 <timervec>
    80002ecc:	30579073          	csrw	mtvec,a5
    80002ed0:	300027f3          	csrr	a5,mstatus
    80002ed4:	0087e793          	ori	a5,a5,8
    80002ed8:	30079073          	csrw	mstatus,a5
    80002edc:	304027f3          	csrr	a5,mie
    80002ee0:	0807e793          	ori	a5,a5,128
    80002ee4:	30479073          	csrw	mie,a5
    80002ee8:	00813403          	ld	s0,8(sp)
    80002eec:	01010113          	addi	sp,sp,16
    80002ef0:	00008067          	ret

0000000080002ef4 <system_main>:
    80002ef4:	fe010113          	addi	sp,sp,-32
    80002ef8:	00813823          	sd	s0,16(sp)
    80002efc:	00913423          	sd	s1,8(sp)
    80002f00:	00113c23          	sd	ra,24(sp)
    80002f04:	02010413          	addi	s0,sp,32
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	0c4080e7          	jalr	196(ra) # 80002fcc <cpuid>
    80002f10:	00003497          	auipc	s1,0x3
    80002f14:	f0048493          	addi	s1,s1,-256 # 80005e10 <started>
    80002f18:	02050263          	beqz	a0,80002f3c <system_main+0x48>
    80002f1c:	0004a783          	lw	a5,0(s1)
    80002f20:	0007879b          	sext.w	a5,a5
    80002f24:	fe078ce3          	beqz	a5,80002f1c <system_main+0x28>
    80002f28:	0ff0000f          	fence
    80002f2c:	00002517          	auipc	a0,0x2
    80002f30:	2dc50513          	addi	a0,a0,732 # 80005208 <CONSOLE_STATUS+0x1f8>
    80002f34:	00001097          	auipc	ra,0x1
    80002f38:	a78080e7          	jalr	-1416(ra) # 800039ac <panic>
    80002f3c:	00001097          	auipc	ra,0x1
    80002f40:	9cc080e7          	jalr	-1588(ra) # 80003908 <consoleinit>
    80002f44:	00001097          	auipc	ra,0x1
    80002f48:	158080e7          	jalr	344(ra) # 8000409c <printfinit>
    80002f4c:	00002517          	auipc	a0,0x2
    80002f50:	39c50513          	addi	a0,a0,924 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002f54:	00001097          	auipc	ra,0x1
    80002f58:	ab4080e7          	jalr	-1356(ra) # 80003a08 <__printf>
    80002f5c:	00002517          	auipc	a0,0x2
    80002f60:	27c50513          	addi	a0,a0,636 # 800051d8 <CONSOLE_STATUS+0x1c8>
    80002f64:	00001097          	auipc	ra,0x1
    80002f68:	aa4080e7          	jalr	-1372(ra) # 80003a08 <__printf>
    80002f6c:	00002517          	auipc	a0,0x2
    80002f70:	37c50513          	addi	a0,a0,892 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002f74:	00001097          	auipc	ra,0x1
    80002f78:	a94080e7          	jalr	-1388(ra) # 80003a08 <__printf>
    80002f7c:	00001097          	auipc	ra,0x1
    80002f80:	4ac080e7          	jalr	1196(ra) # 80004428 <kinit>
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	148080e7          	jalr	328(ra) # 800030cc <trapinit>
    80002f8c:	00000097          	auipc	ra,0x0
    80002f90:	16c080e7          	jalr	364(ra) # 800030f8 <trapinithart>
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	5bc080e7          	jalr	1468(ra) # 80003550 <plicinit>
    80002f9c:	00000097          	auipc	ra,0x0
    80002fa0:	5dc080e7          	jalr	1500(ra) # 80003578 <plicinithart>
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	078080e7          	jalr	120(ra) # 8000301c <userinit>
    80002fac:	0ff0000f          	fence
    80002fb0:	00100793          	li	a5,1
    80002fb4:	00002517          	auipc	a0,0x2
    80002fb8:	23c50513          	addi	a0,a0,572 # 800051f0 <CONSOLE_STATUS+0x1e0>
    80002fbc:	00f4a023          	sw	a5,0(s1)
    80002fc0:	00001097          	auipc	ra,0x1
    80002fc4:	a48080e7          	jalr	-1464(ra) # 80003a08 <__printf>
    80002fc8:	0000006f          	j	80002fc8 <system_main+0xd4>

0000000080002fcc <cpuid>:
    80002fcc:	ff010113          	addi	sp,sp,-16
    80002fd0:	00813423          	sd	s0,8(sp)
    80002fd4:	01010413          	addi	s0,sp,16
    80002fd8:	00020513          	mv	a0,tp
    80002fdc:	00813403          	ld	s0,8(sp)
    80002fe0:	0005051b          	sext.w	a0,a0
    80002fe4:	01010113          	addi	sp,sp,16
    80002fe8:	00008067          	ret

0000000080002fec <mycpu>:
    80002fec:	ff010113          	addi	sp,sp,-16
    80002ff0:	00813423          	sd	s0,8(sp)
    80002ff4:	01010413          	addi	s0,sp,16
    80002ff8:	00020793          	mv	a5,tp
    80002ffc:	00813403          	ld	s0,8(sp)
    80003000:	0007879b          	sext.w	a5,a5
    80003004:	00779793          	slli	a5,a5,0x7
    80003008:	00004517          	auipc	a0,0x4
    8000300c:	eb850513          	addi	a0,a0,-328 # 80006ec0 <cpus>
    80003010:	00f50533          	add	a0,a0,a5
    80003014:	01010113          	addi	sp,sp,16
    80003018:	00008067          	ret

000000008000301c <userinit>:
    8000301c:	ff010113          	addi	sp,sp,-16
    80003020:	00813423          	sd	s0,8(sp)
    80003024:	01010413          	addi	s0,sp,16
    80003028:	00813403          	ld	s0,8(sp)
    8000302c:	01010113          	addi	sp,sp,16
    80003030:	fffff317          	auipc	t1,0xfffff
    80003034:	97030067          	jr	-1680(t1) # 800019a0 <main>

0000000080003038 <either_copyout>:
    80003038:	ff010113          	addi	sp,sp,-16
    8000303c:	00813023          	sd	s0,0(sp)
    80003040:	00113423          	sd	ra,8(sp)
    80003044:	01010413          	addi	s0,sp,16
    80003048:	02051663          	bnez	a0,80003074 <either_copyout+0x3c>
    8000304c:	00058513          	mv	a0,a1
    80003050:	00060593          	mv	a1,a2
    80003054:	0006861b          	sext.w	a2,a3
    80003058:	00002097          	auipc	ra,0x2
    8000305c:	c5c080e7          	jalr	-932(ra) # 80004cb4 <__memmove>
    80003060:	00813083          	ld	ra,8(sp)
    80003064:	00013403          	ld	s0,0(sp)
    80003068:	00000513          	li	a0,0
    8000306c:	01010113          	addi	sp,sp,16
    80003070:	00008067          	ret
    80003074:	00002517          	auipc	a0,0x2
    80003078:	1bc50513          	addi	a0,a0,444 # 80005230 <CONSOLE_STATUS+0x220>
    8000307c:	00001097          	auipc	ra,0x1
    80003080:	930080e7          	jalr	-1744(ra) # 800039ac <panic>

0000000080003084 <either_copyin>:
    80003084:	ff010113          	addi	sp,sp,-16
    80003088:	00813023          	sd	s0,0(sp)
    8000308c:	00113423          	sd	ra,8(sp)
    80003090:	01010413          	addi	s0,sp,16
    80003094:	02059463          	bnez	a1,800030bc <either_copyin+0x38>
    80003098:	00060593          	mv	a1,a2
    8000309c:	0006861b          	sext.w	a2,a3
    800030a0:	00002097          	auipc	ra,0x2
    800030a4:	c14080e7          	jalr	-1004(ra) # 80004cb4 <__memmove>
    800030a8:	00813083          	ld	ra,8(sp)
    800030ac:	00013403          	ld	s0,0(sp)
    800030b0:	00000513          	li	a0,0
    800030b4:	01010113          	addi	sp,sp,16
    800030b8:	00008067          	ret
    800030bc:	00002517          	auipc	a0,0x2
    800030c0:	19c50513          	addi	a0,a0,412 # 80005258 <CONSOLE_STATUS+0x248>
    800030c4:	00001097          	auipc	ra,0x1
    800030c8:	8e8080e7          	jalr	-1816(ra) # 800039ac <panic>

00000000800030cc <trapinit>:
    800030cc:	ff010113          	addi	sp,sp,-16
    800030d0:	00813423          	sd	s0,8(sp)
    800030d4:	01010413          	addi	s0,sp,16
    800030d8:	00813403          	ld	s0,8(sp)
    800030dc:	00002597          	auipc	a1,0x2
    800030e0:	1a458593          	addi	a1,a1,420 # 80005280 <CONSOLE_STATUS+0x270>
    800030e4:	00004517          	auipc	a0,0x4
    800030e8:	e5c50513          	addi	a0,a0,-420 # 80006f40 <tickslock>
    800030ec:	01010113          	addi	sp,sp,16
    800030f0:	00001317          	auipc	t1,0x1
    800030f4:	5c830067          	jr	1480(t1) # 800046b8 <initlock>

00000000800030f8 <trapinithart>:
    800030f8:	ff010113          	addi	sp,sp,-16
    800030fc:	00813423          	sd	s0,8(sp)
    80003100:	01010413          	addi	s0,sp,16
    80003104:	00000797          	auipc	a5,0x0
    80003108:	2fc78793          	addi	a5,a5,764 # 80003400 <kernelvec>
    8000310c:	10579073          	csrw	stvec,a5
    80003110:	00813403          	ld	s0,8(sp)
    80003114:	01010113          	addi	sp,sp,16
    80003118:	00008067          	ret

000000008000311c <usertrap>:
    8000311c:	ff010113          	addi	sp,sp,-16
    80003120:	00813423          	sd	s0,8(sp)
    80003124:	01010413          	addi	s0,sp,16
    80003128:	00813403          	ld	s0,8(sp)
    8000312c:	01010113          	addi	sp,sp,16
    80003130:	00008067          	ret

0000000080003134 <usertrapret>:
    80003134:	ff010113          	addi	sp,sp,-16
    80003138:	00813423          	sd	s0,8(sp)
    8000313c:	01010413          	addi	s0,sp,16
    80003140:	00813403          	ld	s0,8(sp)
    80003144:	01010113          	addi	sp,sp,16
    80003148:	00008067          	ret

000000008000314c <kerneltrap>:
    8000314c:	fe010113          	addi	sp,sp,-32
    80003150:	00813823          	sd	s0,16(sp)
    80003154:	00113c23          	sd	ra,24(sp)
    80003158:	00913423          	sd	s1,8(sp)
    8000315c:	02010413          	addi	s0,sp,32
    80003160:	142025f3          	csrr	a1,scause
    80003164:	100027f3          	csrr	a5,sstatus
    80003168:	0027f793          	andi	a5,a5,2
    8000316c:	10079c63          	bnez	a5,80003284 <kerneltrap+0x138>
    80003170:	142027f3          	csrr	a5,scause
    80003174:	0207ce63          	bltz	a5,800031b0 <kerneltrap+0x64>
    80003178:	00002517          	auipc	a0,0x2
    8000317c:	15050513          	addi	a0,a0,336 # 800052c8 <CONSOLE_STATUS+0x2b8>
    80003180:	00001097          	auipc	ra,0x1
    80003184:	888080e7          	jalr	-1912(ra) # 80003a08 <__printf>
    80003188:	141025f3          	csrr	a1,sepc
    8000318c:	14302673          	csrr	a2,stval
    80003190:	00002517          	auipc	a0,0x2
    80003194:	14850513          	addi	a0,a0,328 # 800052d8 <CONSOLE_STATUS+0x2c8>
    80003198:	00001097          	auipc	ra,0x1
    8000319c:	870080e7          	jalr	-1936(ra) # 80003a08 <__printf>
    800031a0:	00002517          	auipc	a0,0x2
    800031a4:	15050513          	addi	a0,a0,336 # 800052f0 <CONSOLE_STATUS+0x2e0>
    800031a8:	00001097          	auipc	ra,0x1
    800031ac:	804080e7          	jalr	-2044(ra) # 800039ac <panic>
    800031b0:	0ff7f713          	andi	a4,a5,255
    800031b4:	00900693          	li	a3,9
    800031b8:	04d70063          	beq	a4,a3,800031f8 <kerneltrap+0xac>
    800031bc:	fff00713          	li	a4,-1
    800031c0:	03f71713          	slli	a4,a4,0x3f
    800031c4:	00170713          	addi	a4,a4,1
    800031c8:	fae798e3          	bne	a5,a4,80003178 <kerneltrap+0x2c>
    800031cc:	00000097          	auipc	ra,0x0
    800031d0:	e00080e7          	jalr	-512(ra) # 80002fcc <cpuid>
    800031d4:	06050663          	beqz	a0,80003240 <kerneltrap+0xf4>
    800031d8:	144027f3          	csrr	a5,sip
    800031dc:	ffd7f793          	andi	a5,a5,-3
    800031e0:	14479073          	csrw	sip,a5
    800031e4:	01813083          	ld	ra,24(sp)
    800031e8:	01013403          	ld	s0,16(sp)
    800031ec:	00813483          	ld	s1,8(sp)
    800031f0:	02010113          	addi	sp,sp,32
    800031f4:	00008067          	ret
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	3cc080e7          	jalr	972(ra) # 800035c4 <plic_claim>
    80003200:	00a00793          	li	a5,10
    80003204:	00050493          	mv	s1,a0
    80003208:	06f50863          	beq	a0,a5,80003278 <kerneltrap+0x12c>
    8000320c:	fc050ce3          	beqz	a0,800031e4 <kerneltrap+0x98>
    80003210:	00050593          	mv	a1,a0
    80003214:	00002517          	auipc	a0,0x2
    80003218:	09450513          	addi	a0,a0,148 # 800052a8 <CONSOLE_STATUS+0x298>
    8000321c:	00000097          	auipc	ra,0x0
    80003220:	7ec080e7          	jalr	2028(ra) # 80003a08 <__printf>
    80003224:	01013403          	ld	s0,16(sp)
    80003228:	01813083          	ld	ra,24(sp)
    8000322c:	00048513          	mv	a0,s1
    80003230:	00813483          	ld	s1,8(sp)
    80003234:	02010113          	addi	sp,sp,32
    80003238:	00000317          	auipc	t1,0x0
    8000323c:	3c430067          	jr	964(t1) # 800035fc <plic_complete>
    80003240:	00004517          	auipc	a0,0x4
    80003244:	d0050513          	addi	a0,a0,-768 # 80006f40 <tickslock>
    80003248:	00001097          	auipc	ra,0x1
    8000324c:	494080e7          	jalr	1172(ra) # 800046dc <acquire>
    80003250:	00003717          	auipc	a4,0x3
    80003254:	bc470713          	addi	a4,a4,-1084 # 80005e14 <ticks>
    80003258:	00072783          	lw	a5,0(a4)
    8000325c:	00004517          	auipc	a0,0x4
    80003260:	ce450513          	addi	a0,a0,-796 # 80006f40 <tickslock>
    80003264:	0017879b          	addiw	a5,a5,1
    80003268:	00f72023          	sw	a5,0(a4)
    8000326c:	00001097          	auipc	ra,0x1
    80003270:	53c080e7          	jalr	1340(ra) # 800047a8 <release>
    80003274:	f65ff06f          	j	800031d8 <kerneltrap+0x8c>
    80003278:	00001097          	auipc	ra,0x1
    8000327c:	098080e7          	jalr	152(ra) # 80004310 <uartintr>
    80003280:	fa5ff06f          	j	80003224 <kerneltrap+0xd8>
    80003284:	00002517          	auipc	a0,0x2
    80003288:	00450513          	addi	a0,a0,4 # 80005288 <CONSOLE_STATUS+0x278>
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	720080e7          	jalr	1824(ra) # 800039ac <panic>

0000000080003294 <clockintr>:
    80003294:	fe010113          	addi	sp,sp,-32
    80003298:	00813823          	sd	s0,16(sp)
    8000329c:	00913423          	sd	s1,8(sp)
    800032a0:	00113c23          	sd	ra,24(sp)
    800032a4:	02010413          	addi	s0,sp,32
    800032a8:	00004497          	auipc	s1,0x4
    800032ac:	c9848493          	addi	s1,s1,-872 # 80006f40 <tickslock>
    800032b0:	00048513          	mv	a0,s1
    800032b4:	00001097          	auipc	ra,0x1
    800032b8:	428080e7          	jalr	1064(ra) # 800046dc <acquire>
    800032bc:	00003717          	auipc	a4,0x3
    800032c0:	b5870713          	addi	a4,a4,-1192 # 80005e14 <ticks>
    800032c4:	00072783          	lw	a5,0(a4)
    800032c8:	01013403          	ld	s0,16(sp)
    800032cc:	01813083          	ld	ra,24(sp)
    800032d0:	00048513          	mv	a0,s1
    800032d4:	0017879b          	addiw	a5,a5,1
    800032d8:	00813483          	ld	s1,8(sp)
    800032dc:	00f72023          	sw	a5,0(a4)
    800032e0:	02010113          	addi	sp,sp,32
    800032e4:	00001317          	auipc	t1,0x1
    800032e8:	4c430067          	jr	1220(t1) # 800047a8 <release>

00000000800032ec <devintr>:
    800032ec:	142027f3          	csrr	a5,scause
    800032f0:	00000513          	li	a0,0
    800032f4:	0007c463          	bltz	a5,800032fc <devintr+0x10>
    800032f8:	00008067          	ret
    800032fc:	fe010113          	addi	sp,sp,-32
    80003300:	00813823          	sd	s0,16(sp)
    80003304:	00113c23          	sd	ra,24(sp)
    80003308:	00913423          	sd	s1,8(sp)
    8000330c:	02010413          	addi	s0,sp,32
    80003310:	0ff7f713          	andi	a4,a5,255
    80003314:	00900693          	li	a3,9
    80003318:	04d70c63          	beq	a4,a3,80003370 <devintr+0x84>
    8000331c:	fff00713          	li	a4,-1
    80003320:	03f71713          	slli	a4,a4,0x3f
    80003324:	00170713          	addi	a4,a4,1
    80003328:	00e78c63          	beq	a5,a4,80003340 <devintr+0x54>
    8000332c:	01813083          	ld	ra,24(sp)
    80003330:	01013403          	ld	s0,16(sp)
    80003334:	00813483          	ld	s1,8(sp)
    80003338:	02010113          	addi	sp,sp,32
    8000333c:	00008067          	ret
    80003340:	00000097          	auipc	ra,0x0
    80003344:	c8c080e7          	jalr	-884(ra) # 80002fcc <cpuid>
    80003348:	06050663          	beqz	a0,800033b4 <devintr+0xc8>
    8000334c:	144027f3          	csrr	a5,sip
    80003350:	ffd7f793          	andi	a5,a5,-3
    80003354:	14479073          	csrw	sip,a5
    80003358:	01813083          	ld	ra,24(sp)
    8000335c:	01013403          	ld	s0,16(sp)
    80003360:	00813483          	ld	s1,8(sp)
    80003364:	00200513          	li	a0,2
    80003368:	02010113          	addi	sp,sp,32
    8000336c:	00008067          	ret
    80003370:	00000097          	auipc	ra,0x0
    80003374:	254080e7          	jalr	596(ra) # 800035c4 <plic_claim>
    80003378:	00a00793          	li	a5,10
    8000337c:	00050493          	mv	s1,a0
    80003380:	06f50663          	beq	a0,a5,800033ec <devintr+0x100>
    80003384:	00100513          	li	a0,1
    80003388:	fa0482e3          	beqz	s1,8000332c <devintr+0x40>
    8000338c:	00048593          	mv	a1,s1
    80003390:	00002517          	auipc	a0,0x2
    80003394:	f1850513          	addi	a0,a0,-232 # 800052a8 <CONSOLE_STATUS+0x298>
    80003398:	00000097          	auipc	ra,0x0
    8000339c:	670080e7          	jalr	1648(ra) # 80003a08 <__printf>
    800033a0:	00048513          	mv	a0,s1
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	258080e7          	jalr	600(ra) # 800035fc <plic_complete>
    800033ac:	00100513          	li	a0,1
    800033b0:	f7dff06f          	j	8000332c <devintr+0x40>
    800033b4:	00004517          	auipc	a0,0x4
    800033b8:	b8c50513          	addi	a0,a0,-1140 # 80006f40 <tickslock>
    800033bc:	00001097          	auipc	ra,0x1
    800033c0:	320080e7          	jalr	800(ra) # 800046dc <acquire>
    800033c4:	00003717          	auipc	a4,0x3
    800033c8:	a5070713          	addi	a4,a4,-1456 # 80005e14 <ticks>
    800033cc:	00072783          	lw	a5,0(a4)
    800033d0:	00004517          	auipc	a0,0x4
    800033d4:	b7050513          	addi	a0,a0,-1168 # 80006f40 <tickslock>
    800033d8:	0017879b          	addiw	a5,a5,1
    800033dc:	00f72023          	sw	a5,0(a4)
    800033e0:	00001097          	auipc	ra,0x1
    800033e4:	3c8080e7          	jalr	968(ra) # 800047a8 <release>
    800033e8:	f65ff06f          	j	8000334c <devintr+0x60>
    800033ec:	00001097          	auipc	ra,0x1
    800033f0:	f24080e7          	jalr	-220(ra) # 80004310 <uartintr>
    800033f4:	fadff06f          	j	800033a0 <devintr+0xb4>
	...

0000000080003400 <kernelvec>:
    80003400:	f0010113          	addi	sp,sp,-256
    80003404:	00113023          	sd	ra,0(sp)
    80003408:	00213423          	sd	sp,8(sp)
    8000340c:	00313823          	sd	gp,16(sp)
    80003410:	00413c23          	sd	tp,24(sp)
    80003414:	02513023          	sd	t0,32(sp)
    80003418:	02613423          	sd	t1,40(sp)
    8000341c:	02713823          	sd	t2,48(sp)
    80003420:	02813c23          	sd	s0,56(sp)
    80003424:	04913023          	sd	s1,64(sp)
    80003428:	04a13423          	sd	a0,72(sp)
    8000342c:	04b13823          	sd	a1,80(sp)
    80003430:	04c13c23          	sd	a2,88(sp)
    80003434:	06d13023          	sd	a3,96(sp)
    80003438:	06e13423          	sd	a4,104(sp)
    8000343c:	06f13823          	sd	a5,112(sp)
    80003440:	07013c23          	sd	a6,120(sp)
    80003444:	09113023          	sd	a7,128(sp)
    80003448:	09213423          	sd	s2,136(sp)
    8000344c:	09313823          	sd	s3,144(sp)
    80003450:	09413c23          	sd	s4,152(sp)
    80003454:	0b513023          	sd	s5,160(sp)
    80003458:	0b613423          	sd	s6,168(sp)
    8000345c:	0b713823          	sd	s7,176(sp)
    80003460:	0b813c23          	sd	s8,184(sp)
    80003464:	0d913023          	sd	s9,192(sp)
    80003468:	0da13423          	sd	s10,200(sp)
    8000346c:	0db13823          	sd	s11,208(sp)
    80003470:	0dc13c23          	sd	t3,216(sp)
    80003474:	0fd13023          	sd	t4,224(sp)
    80003478:	0fe13423          	sd	t5,232(sp)
    8000347c:	0ff13823          	sd	t6,240(sp)
    80003480:	ccdff0ef          	jal	ra,8000314c <kerneltrap>
    80003484:	00013083          	ld	ra,0(sp)
    80003488:	00813103          	ld	sp,8(sp)
    8000348c:	01013183          	ld	gp,16(sp)
    80003490:	02013283          	ld	t0,32(sp)
    80003494:	02813303          	ld	t1,40(sp)
    80003498:	03013383          	ld	t2,48(sp)
    8000349c:	03813403          	ld	s0,56(sp)
    800034a0:	04013483          	ld	s1,64(sp)
    800034a4:	04813503          	ld	a0,72(sp)
    800034a8:	05013583          	ld	a1,80(sp)
    800034ac:	05813603          	ld	a2,88(sp)
    800034b0:	06013683          	ld	a3,96(sp)
    800034b4:	06813703          	ld	a4,104(sp)
    800034b8:	07013783          	ld	a5,112(sp)
    800034bc:	07813803          	ld	a6,120(sp)
    800034c0:	08013883          	ld	a7,128(sp)
    800034c4:	08813903          	ld	s2,136(sp)
    800034c8:	09013983          	ld	s3,144(sp)
    800034cc:	09813a03          	ld	s4,152(sp)
    800034d0:	0a013a83          	ld	s5,160(sp)
    800034d4:	0a813b03          	ld	s6,168(sp)
    800034d8:	0b013b83          	ld	s7,176(sp)
    800034dc:	0b813c03          	ld	s8,184(sp)
    800034e0:	0c013c83          	ld	s9,192(sp)
    800034e4:	0c813d03          	ld	s10,200(sp)
    800034e8:	0d013d83          	ld	s11,208(sp)
    800034ec:	0d813e03          	ld	t3,216(sp)
    800034f0:	0e013e83          	ld	t4,224(sp)
    800034f4:	0e813f03          	ld	t5,232(sp)
    800034f8:	0f013f83          	ld	t6,240(sp)
    800034fc:	10010113          	addi	sp,sp,256
    80003500:	10200073          	sret
    80003504:	00000013          	nop
    80003508:	00000013          	nop
    8000350c:	00000013          	nop

0000000080003510 <timervec>:
    80003510:	34051573          	csrrw	a0,mscratch,a0
    80003514:	00b53023          	sd	a1,0(a0)
    80003518:	00c53423          	sd	a2,8(a0)
    8000351c:	00d53823          	sd	a3,16(a0)
    80003520:	01853583          	ld	a1,24(a0)
    80003524:	02053603          	ld	a2,32(a0)
    80003528:	0005b683          	ld	a3,0(a1)
    8000352c:	00c686b3          	add	a3,a3,a2
    80003530:	00d5b023          	sd	a3,0(a1)
    80003534:	00200593          	li	a1,2
    80003538:	14459073          	csrw	sip,a1
    8000353c:	01053683          	ld	a3,16(a0)
    80003540:	00853603          	ld	a2,8(a0)
    80003544:	00053583          	ld	a1,0(a0)
    80003548:	34051573          	csrrw	a0,mscratch,a0
    8000354c:	30200073          	mret

0000000080003550 <plicinit>:
    80003550:	ff010113          	addi	sp,sp,-16
    80003554:	00813423          	sd	s0,8(sp)
    80003558:	01010413          	addi	s0,sp,16
    8000355c:	00813403          	ld	s0,8(sp)
    80003560:	0c0007b7          	lui	a5,0xc000
    80003564:	00100713          	li	a4,1
    80003568:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000356c:	00e7a223          	sw	a4,4(a5)
    80003570:	01010113          	addi	sp,sp,16
    80003574:	00008067          	ret

0000000080003578 <plicinithart>:
    80003578:	ff010113          	addi	sp,sp,-16
    8000357c:	00813023          	sd	s0,0(sp)
    80003580:	00113423          	sd	ra,8(sp)
    80003584:	01010413          	addi	s0,sp,16
    80003588:	00000097          	auipc	ra,0x0
    8000358c:	a44080e7          	jalr	-1468(ra) # 80002fcc <cpuid>
    80003590:	0085171b          	slliw	a4,a0,0x8
    80003594:	0c0027b7          	lui	a5,0xc002
    80003598:	00e787b3          	add	a5,a5,a4
    8000359c:	40200713          	li	a4,1026
    800035a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800035a4:	00813083          	ld	ra,8(sp)
    800035a8:	00013403          	ld	s0,0(sp)
    800035ac:	00d5151b          	slliw	a0,a0,0xd
    800035b0:	0c2017b7          	lui	a5,0xc201
    800035b4:	00a78533          	add	a0,a5,a0
    800035b8:	00052023          	sw	zero,0(a0)
    800035bc:	01010113          	addi	sp,sp,16
    800035c0:	00008067          	ret

00000000800035c4 <plic_claim>:
    800035c4:	ff010113          	addi	sp,sp,-16
    800035c8:	00813023          	sd	s0,0(sp)
    800035cc:	00113423          	sd	ra,8(sp)
    800035d0:	01010413          	addi	s0,sp,16
    800035d4:	00000097          	auipc	ra,0x0
    800035d8:	9f8080e7          	jalr	-1544(ra) # 80002fcc <cpuid>
    800035dc:	00813083          	ld	ra,8(sp)
    800035e0:	00013403          	ld	s0,0(sp)
    800035e4:	00d5151b          	slliw	a0,a0,0xd
    800035e8:	0c2017b7          	lui	a5,0xc201
    800035ec:	00a78533          	add	a0,a5,a0
    800035f0:	00452503          	lw	a0,4(a0)
    800035f4:	01010113          	addi	sp,sp,16
    800035f8:	00008067          	ret

00000000800035fc <plic_complete>:
    800035fc:	fe010113          	addi	sp,sp,-32
    80003600:	00813823          	sd	s0,16(sp)
    80003604:	00913423          	sd	s1,8(sp)
    80003608:	00113c23          	sd	ra,24(sp)
    8000360c:	02010413          	addi	s0,sp,32
    80003610:	00050493          	mv	s1,a0
    80003614:	00000097          	auipc	ra,0x0
    80003618:	9b8080e7          	jalr	-1608(ra) # 80002fcc <cpuid>
    8000361c:	01813083          	ld	ra,24(sp)
    80003620:	01013403          	ld	s0,16(sp)
    80003624:	00d5179b          	slliw	a5,a0,0xd
    80003628:	0c201737          	lui	a4,0xc201
    8000362c:	00f707b3          	add	a5,a4,a5
    80003630:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003634:	00813483          	ld	s1,8(sp)
    80003638:	02010113          	addi	sp,sp,32
    8000363c:	00008067          	ret

0000000080003640 <consolewrite>:
    80003640:	fb010113          	addi	sp,sp,-80
    80003644:	04813023          	sd	s0,64(sp)
    80003648:	04113423          	sd	ra,72(sp)
    8000364c:	02913c23          	sd	s1,56(sp)
    80003650:	03213823          	sd	s2,48(sp)
    80003654:	03313423          	sd	s3,40(sp)
    80003658:	03413023          	sd	s4,32(sp)
    8000365c:	01513c23          	sd	s5,24(sp)
    80003660:	05010413          	addi	s0,sp,80
    80003664:	06c05c63          	blez	a2,800036dc <consolewrite+0x9c>
    80003668:	00060993          	mv	s3,a2
    8000366c:	00050a13          	mv	s4,a0
    80003670:	00058493          	mv	s1,a1
    80003674:	00000913          	li	s2,0
    80003678:	fff00a93          	li	s5,-1
    8000367c:	01c0006f          	j	80003698 <consolewrite+0x58>
    80003680:	fbf44503          	lbu	a0,-65(s0)
    80003684:	0019091b          	addiw	s2,s2,1
    80003688:	00148493          	addi	s1,s1,1
    8000368c:	00001097          	auipc	ra,0x1
    80003690:	a9c080e7          	jalr	-1380(ra) # 80004128 <uartputc>
    80003694:	03298063          	beq	s3,s2,800036b4 <consolewrite+0x74>
    80003698:	00048613          	mv	a2,s1
    8000369c:	00100693          	li	a3,1
    800036a0:	000a0593          	mv	a1,s4
    800036a4:	fbf40513          	addi	a0,s0,-65
    800036a8:	00000097          	auipc	ra,0x0
    800036ac:	9dc080e7          	jalr	-1572(ra) # 80003084 <either_copyin>
    800036b0:	fd5518e3          	bne	a0,s5,80003680 <consolewrite+0x40>
    800036b4:	04813083          	ld	ra,72(sp)
    800036b8:	04013403          	ld	s0,64(sp)
    800036bc:	03813483          	ld	s1,56(sp)
    800036c0:	02813983          	ld	s3,40(sp)
    800036c4:	02013a03          	ld	s4,32(sp)
    800036c8:	01813a83          	ld	s5,24(sp)
    800036cc:	00090513          	mv	a0,s2
    800036d0:	03013903          	ld	s2,48(sp)
    800036d4:	05010113          	addi	sp,sp,80
    800036d8:	00008067          	ret
    800036dc:	00000913          	li	s2,0
    800036e0:	fd5ff06f          	j	800036b4 <consolewrite+0x74>

00000000800036e4 <consoleread>:
    800036e4:	f9010113          	addi	sp,sp,-112
    800036e8:	06813023          	sd	s0,96(sp)
    800036ec:	04913c23          	sd	s1,88(sp)
    800036f0:	05213823          	sd	s2,80(sp)
    800036f4:	05313423          	sd	s3,72(sp)
    800036f8:	05413023          	sd	s4,64(sp)
    800036fc:	03513c23          	sd	s5,56(sp)
    80003700:	03613823          	sd	s6,48(sp)
    80003704:	03713423          	sd	s7,40(sp)
    80003708:	03813023          	sd	s8,32(sp)
    8000370c:	06113423          	sd	ra,104(sp)
    80003710:	01913c23          	sd	s9,24(sp)
    80003714:	07010413          	addi	s0,sp,112
    80003718:	00060b93          	mv	s7,a2
    8000371c:	00050913          	mv	s2,a0
    80003720:	00058c13          	mv	s8,a1
    80003724:	00060b1b          	sext.w	s6,a2
    80003728:	00004497          	auipc	s1,0x4
    8000372c:	84048493          	addi	s1,s1,-1984 # 80006f68 <cons>
    80003730:	00400993          	li	s3,4
    80003734:	fff00a13          	li	s4,-1
    80003738:	00a00a93          	li	s5,10
    8000373c:	05705e63          	blez	s7,80003798 <consoleread+0xb4>
    80003740:	09c4a703          	lw	a4,156(s1)
    80003744:	0984a783          	lw	a5,152(s1)
    80003748:	0007071b          	sext.w	a4,a4
    8000374c:	08e78463          	beq	a5,a4,800037d4 <consoleread+0xf0>
    80003750:	07f7f713          	andi	a4,a5,127
    80003754:	00e48733          	add	a4,s1,a4
    80003758:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000375c:	0017869b          	addiw	a3,a5,1
    80003760:	08d4ac23          	sw	a3,152(s1)
    80003764:	00070c9b          	sext.w	s9,a4
    80003768:	0b370663          	beq	a4,s3,80003814 <consoleread+0x130>
    8000376c:	00100693          	li	a3,1
    80003770:	f9f40613          	addi	a2,s0,-97
    80003774:	000c0593          	mv	a1,s8
    80003778:	00090513          	mv	a0,s2
    8000377c:	f8e40fa3          	sb	a4,-97(s0)
    80003780:	00000097          	auipc	ra,0x0
    80003784:	8b8080e7          	jalr	-1864(ra) # 80003038 <either_copyout>
    80003788:	01450863          	beq	a0,s4,80003798 <consoleread+0xb4>
    8000378c:	001c0c13          	addi	s8,s8,1
    80003790:	fffb8b9b          	addiw	s7,s7,-1
    80003794:	fb5c94e3          	bne	s9,s5,8000373c <consoleread+0x58>
    80003798:	000b851b          	sext.w	a0,s7
    8000379c:	06813083          	ld	ra,104(sp)
    800037a0:	06013403          	ld	s0,96(sp)
    800037a4:	05813483          	ld	s1,88(sp)
    800037a8:	05013903          	ld	s2,80(sp)
    800037ac:	04813983          	ld	s3,72(sp)
    800037b0:	04013a03          	ld	s4,64(sp)
    800037b4:	03813a83          	ld	s5,56(sp)
    800037b8:	02813b83          	ld	s7,40(sp)
    800037bc:	02013c03          	ld	s8,32(sp)
    800037c0:	01813c83          	ld	s9,24(sp)
    800037c4:	40ab053b          	subw	a0,s6,a0
    800037c8:	03013b03          	ld	s6,48(sp)
    800037cc:	07010113          	addi	sp,sp,112
    800037d0:	00008067          	ret
    800037d4:	00001097          	auipc	ra,0x1
    800037d8:	1d8080e7          	jalr	472(ra) # 800049ac <push_on>
    800037dc:	0984a703          	lw	a4,152(s1)
    800037e0:	09c4a783          	lw	a5,156(s1)
    800037e4:	0007879b          	sext.w	a5,a5
    800037e8:	fef70ce3          	beq	a4,a5,800037e0 <consoleread+0xfc>
    800037ec:	00001097          	auipc	ra,0x1
    800037f0:	234080e7          	jalr	564(ra) # 80004a20 <pop_on>
    800037f4:	0984a783          	lw	a5,152(s1)
    800037f8:	07f7f713          	andi	a4,a5,127
    800037fc:	00e48733          	add	a4,s1,a4
    80003800:	01874703          	lbu	a4,24(a4)
    80003804:	0017869b          	addiw	a3,a5,1
    80003808:	08d4ac23          	sw	a3,152(s1)
    8000380c:	00070c9b          	sext.w	s9,a4
    80003810:	f5371ee3          	bne	a4,s3,8000376c <consoleread+0x88>
    80003814:	000b851b          	sext.w	a0,s7
    80003818:	f96bf2e3          	bgeu	s7,s6,8000379c <consoleread+0xb8>
    8000381c:	08f4ac23          	sw	a5,152(s1)
    80003820:	f7dff06f          	j	8000379c <consoleread+0xb8>

0000000080003824 <consputc>:
    80003824:	10000793          	li	a5,256
    80003828:	00f50663          	beq	a0,a5,80003834 <consputc+0x10>
    8000382c:	00001317          	auipc	t1,0x1
    80003830:	9f430067          	jr	-1548(t1) # 80004220 <uartputc_sync>
    80003834:	ff010113          	addi	sp,sp,-16
    80003838:	00113423          	sd	ra,8(sp)
    8000383c:	00813023          	sd	s0,0(sp)
    80003840:	01010413          	addi	s0,sp,16
    80003844:	00800513          	li	a0,8
    80003848:	00001097          	auipc	ra,0x1
    8000384c:	9d8080e7          	jalr	-1576(ra) # 80004220 <uartputc_sync>
    80003850:	02000513          	li	a0,32
    80003854:	00001097          	auipc	ra,0x1
    80003858:	9cc080e7          	jalr	-1588(ra) # 80004220 <uartputc_sync>
    8000385c:	00013403          	ld	s0,0(sp)
    80003860:	00813083          	ld	ra,8(sp)
    80003864:	00800513          	li	a0,8
    80003868:	01010113          	addi	sp,sp,16
    8000386c:	00001317          	auipc	t1,0x1
    80003870:	9b430067          	jr	-1612(t1) # 80004220 <uartputc_sync>

0000000080003874 <consoleintr>:
    80003874:	fe010113          	addi	sp,sp,-32
    80003878:	00813823          	sd	s0,16(sp)
    8000387c:	00913423          	sd	s1,8(sp)
    80003880:	01213023          	sd	s2,0(sp)
    80003884:	00113c23          	sd	ra,24(sp)
    80003888:	02010413          	addi	s0,sp,32
    8000388c:	00003917          	auipc	s2,0x3
    80003890:	6dc90913          	addi	s2,s2,1756 # 80006f68 <cons>
    80003894:	00050493          	mv	s1,a0
    80003898:	00090513          	mv	a0,s2
    8000389c:	00001097          	auipc	ra,0x1
    800038a0:	e40080e7          	jalr	-448(ra) # 800046dc <acquire>
    800038a4:	02048c63          	beqz	s1,800038dc <consoleintr+0x68>
    800038a8:	0a092783          	lw	a5,160(s2)
    800038ac:	09892703          	lw	a4,152(s2)
    800038b0:	07f00693          	li	a3,127
    800038b4:	40e7873b          	subw	a4,a5,a4
    800038b8:	02e6e263          	bltu	a3,a4,800038dc <consoleintr+0x68>
    800038bc:	00d00713          	li	a4,13
    800038c0:	04e48063          	beq	s1,a4,80003900 <consoleintr+0x8c>
    800038c4:	07f7f713          	andi	a4,a5,127
    800038c8:	00e90733          	add	a4,s2,a4
    800038cc:	0017879b          	addiw	a5,a5,1
    800038d0:	0af92023          	sw	a5,160(s2)
    800038d4:	00970c23          	sb	s1,24(a4)
    800038d8:	08f92e23          	sw	a5,156(s2)
    800038dc:	01013403          	ld	s0,16(sp)
    800038e0:	01813083          	ld	ra,24(sp)
    800038e4:	00813483          	ld	s1,8(sp)
    800038e8:	00013903          	ld	s2,0(sp)
    800038ec:	00003517          	auipc	a0,0x3
    800038f0:	67c50513          	addi	a0,a0,1660 # 80006f68 <cons>
    800038f4:	02010113          	addi	sp,sp,32
    800038f8:	00001317          	auipc	t1,0x1
    800038fc:	eb030067          	jr	-336(t1) # 800047a8 <release>
    80003900:	00a00493          	li	s1,10
    80003904:	fc1ff06f          	j	800038c4 <consoleintr+0x50>

0000000080003908 <consoleinit>:
    80003908:	fe010113          	addi	sp,sp,-32
    8000390c:	00113c23          	sd	ra,24(sp)
    80003910:	00813823          	sd	s0,16(sp)
    80003914:	00913423          	sd	s1,8(sp)
    80003918:	02010413          	addi	s0,sp,32
    8000391c:	00003497          	auipc	s1,0x3
    80003920:	64c48493          	addi	s1,s1,1612 # 80006f68 <cons>
    80003924:	00048513          	mv	a0,s1
    80003928:	00002597          	auipc	a1,0x2
    8000392c:	9d858593          	addi	a1,a1,-1576 # 80005300 <CONSOLE_STATUS+0x2f0>
    80003930:	00001097          	auipc	ra,0x1
    80003934:	d88080e7          	jalr	-632(ra) # 800046b8 <initlock>
    80003938:	00000097          	auipc	ra,0x0
    8000393c:	7ac080e7          	jalr	1964(ra) # 800040e4 <uartinit>
    80003940:	01813083          	ld	ra,24(sp)
    80003944:	01013403          	ld	s0,16(sp)
    80003948:	00000797          	auipc	a5,0x0
    8000394c:	d9c78793          	addi	a5,a5,-612 # 800036e4 <consoleread>
    80003950:	0af4bc23          	sd	a5,184(s1)
    80003954:	00000797          	auipc	a5,0x0
    80003958:	cec78793          	addi	a5,a5,-788 # 80003640 <consolewrite>
    8000395c:	0cf4b023          	sd	a5,192(s1)
    80003960:	00813483          	ld	s1,8(sp)
    80003964:	02010113          	addi	sp,sp,32
    80003968:	00008067          	ret

000000008000396c <console_read>:
    8000396c:	ff010113          	addi	sp,sp,-16
    80003970:	00813423          	sd	s0,8(sp)
    80003974:	01010413          	addi	s0,sp,16
    80003978:	00813403          	ld	s0,8(sp)
    8000397c:	00003317          	auipc	t1,0x3
    80003980:	6a433303          	ld	t1,1700(t1) # 80007020 <devsw+0x10>
    80003984:	01010113          	addi	sp,sp,16
    80003988:	00030067          	jr	t1

000000008000398c <console_write>:
    8000398c:	ff010113          	addi	sp,sp,-16
    80003990:	00813423          	sd	s0,8(sp)
    80003994:	01010413          	addi	s0,sp,16
    80003998:	00813403          	ld	s0,8(sp)
    8000399c:	00003317          	auipc	t1,0x3
    800039a0:	68c33303          	ld	t1,1676(t1) # 80007028 <devsw+0x18>
    800039a4:	01010113          	addi	sp,sp,16
    800039a8:	00030067          	jr	t1

00000000800039ac <panic>:
    800039ac:	fe010113          	addi	sp,sp,-32
    800039b0:	00113c23          	sd	ra,24(sp)
    800039b4:	00813823          	sd	s0,16(sp)
    800039b8:	00913423          	sd	s1,8(sp)
    800039bc:	02010413          	addi	s0,sp,32
    800039c0:	00050493          	mv	s1,a0
    800039c4:	00002517          	auipc	a0,0x2
    800039c8:	94450513          	addi	a0,a0,-1724 # 80005308 <CONSOLE_STATUS+0x2f8>
    800039cc:	00003797          	auipc	a5,0x3
    800039d0:	6e07ae23          	sw	zero,1788(a5) # 800070c8 <pr+0x18>
    800039d4:	00000097          	auipc	ra,0x0
    800039d8:	034080e7          	jalr	52(ra) # 80003a08 <__printf>
    800039dc:	00048513          	mv	a0,s1
    800039e0:	00000097          	auipc	ra,0x0
    800039e4:	028080e7          	jalr	40(ra) # 80003a08 <__printf>
    800039e8:	00002517          	auipc	a0,0x2
    800039ec:	90050513          	addi	a0,a0,-1792 # 800052e8 <CONSOLE_STATUS+0x2d8>
    800039f0:	00000097          	auipc	ra,0x0
    800039f4:	018080e7          	jalr	24(ra) # 80003a08 <__printf>
    800039f8:	00100793          	li	a5,1
    800039fc:	00002717          	auipc	a4,0x2
    80003a00:	40f72e23          	sw	a5,1052(a4) # 80005e18 <panicked>
    80003a04:	0000006f          	j	80003a04 <panic+0x58>

0000000080003a08 <__printf>:
    80003a08:	f3010113          	addi	sp,sp,-208
    80003a0c:	08813023          	sd	s0,128(sp)
    80003a10:	07313423          	sd	s3,104(sp)
    80003a14:	09010413          	addi	s0,sp,144
    80003a18:	05813023          	sd	s8,64(sp)
    80003a1c:	08113423          	sd	ra,136(sp)
    80003a20:	06913c23          	sd	s1,120(sp)
    80003a24:	07213823          	sd	s2,112(sp)
    80003a28:	07413023          	sd	s4,96(sp)
    80003a2c:	05513c23          	sd	s5,88(sp)
    80003a30:	05613823          	sd	s6,80(sp)
    80003a34:	05713423          	sd	s7,72(sp)
    80003a38:	03913c23          	sd	s9,56(sp)
    80003a3c:	03a13823          	sd	s10,48(sp)
    80003a40:	03b13423          	sd	s11,40(sp)
    80003a44:	00003317          	auipc	t1,0x3
    80003a48:	66c30313          	addi	t1,t1,1644 # 800070b0 <pr>
    80003a4c:	01832c03          	lw	s8,24(t1)
    80003a50:	00b43423          	sd	a1,8(s0)
    80003a54:	00c43823          	sd	a2,16(s0)
    80003a58:	00d43c23          	sd	a3,24(s0)
    80003a5c:	02e43023          	sd	a4,32(s0)
    80003a60:	02f43423          	sd	a5,40(s0)
    80003a64:	03043823          	sd	a6,48(s0)
    80003a68:	03143c23          	sd	a7,56(s0)
    80003a6c:	00050993          	mv	s3,a0
    80003a70:	4a0c1663          	bnez	s8,80003f1c <__printf+0x514>
    80003a74:	60098c63          	beqz	s3,8000408c <__printf+0x684>
    80003a78:	0009c503          	lbu	a0,0(s3)
    80003a7c:	00840793          	addi	a5,s0,8
    80003a80:	f6f43c23          	sd	a5,-136(s0)
    80003a84:	00000493          	li	s1,0
    80003a88:	22050063          	beqz	a0,80003ca8 <__printf+0x2a0>
    80003a8c:	00002a37          	lui	s4,0x2
    80003a90:	00018ab7          	lui	s5,0x18
    80003a94:	000f4b37          	lui	s6,0xf4
    80003a98:	00989bb7          	lui	s7,0x989
    80003a9c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003aa0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003aa4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003aa8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003aac:	00148c9b          	addiw	s9,s1,1
    80003ab0:	02500793          	li	a5,37
    80003ab4:	01998933          	add	s2,s3,s9
    80003ab8:	38f51263          	bne	a0,a5,80003e3c <__printf+0x434>
    80003abc:	00094783          	lbu	a5,0(s2)
    80003ac0:	00078c9b          	sext.w	s9,a5
    80003ac4:	1e078263          	beqz	a5,80003ca8 <__printf+0x2a0>
    80003ac8:	0024849b          	addiw	s1,s1,2
    80003acc:	07000713          	li	a4,112
    80003ad0:	00998933          	add	s2,s3,s1
    80003ad4:	38e78a63          	beq	a5,a4,80003e68 <__printf+0x460>
    80003ad8:	20f76863          	bltu	a4,a5,80003ce8 <__printf+0x2e0>
    80003adc:	42a78863          	beq	a5,a0,80003f0c <__printf+0x504>
    80003ae0:	06400713          	li	a4,100
    80003ae4:	40e79663          	bne	a5,a4,80003ef0 <__printf+0x4e8>
    80003ae8:	f7843783          	ld	a5,-136(s0)
    80003aec:	0007a603          	lw	a2,0(a5)
    80003af0:	00878793          	addi	a5,a5,8
    80003af4:	f6f43c23          	sd	a5,-136(s0)
    80003af8:	42064a63          	bltz	a2,80003f2c <__printf+0x524>
    80003afc:	00a00713          	li	a4,10
    80003b00:	02e677bb          	remuw	a5,a2,a4
    80003b04:	00002d97          	auipc	s11,0x2
    80003b08:	82cd8d93          	addi	s11,s11,-2004 # 80005330 <digits>
    80003b0c:	00900593          	li	a1,9
    80003b10:	0006051b          	sext.w	a0,a2
    80003b14:	00000c93          	li	s9,0
    80003b18:	02079793          	slli	a5,a5,0x20
    80003b1c:	0207d793          	srli	a5,a5,0x20
    80003b20:	00fd87b3          	add	a5,s11,a5
    80003b24:	0007c783          	lbu	a5,0(a5)
    80003b28:	02e656bb          	divuw	a3,a2,a4
    80003b2c:	f8f40023          	sb	a5,-128(s0)
    80003b30:	14c5d863          	bge	a1,a2,80003c80 <__printf+0x278>
    80003b34:	06300593          	li	a1,99
    80003b38:	00100c93          	li	s9,1
    80003b3c:	02e6f7bb          	remuw	a5,a3,a4
    80003b40:	02079793          	slli	a5,a5,0x20
    80003b44:	0207d793          	srli	a5,a5,0x20
    80003b48:	00fd87b3          	add	a5,s11,a5
    80003b4c:	0007c783          	lbu	a5,0(a5)
    80003b50:	02e6d73b          	divuw	a4,a3,a4
    80003b54:	f8f400a3          	sb	a5,-127(s0)
    80003b58:	12a5f463          	bgeu	a1,a0,80003c80 <__printf+0x278>
    80003b5c:	00a00693          	li	a3,10
    80003b60:	00900593          	li	a1,9
    80003b64:	02d777bb          	remuw	a5,a4,a3
    80003b68:	02079793          	slli	a5,a5,0x20
    80003b6c:	0207d793          	srli	a5,a5,0x20
    80003b70:	00fd87b3          	add	a5,s11,a5
    80003b74:	0007c503          	lbu	a0,0(a5)
    80003b78:	02d757bb          	divuw	a5,a4,a3
    80003b7c:	f8a40123          	sb	a0,-126(s0)
    80003b80:	48e5f263          	bgeu	a1,a4,80004004 <__printf+0x5fc>
    80003b84:	06300513          	li	a0,99
    80003b88:	02d7f5bb          	remuw	a1,a5,a3
    80003b8c:	02059593          	slli	a1,a1,0x20
    80003b90:	0205d593          	srli	a1,a1,0x20
    80003b94:	00bd85b3          	add	a1,s11,a1
    80003b98:	0005c583          	lbu	a1,0(a1)
    80003b9c:	02d7d7bb          	divuw	a5,a5,a3
    80003ba0:	f8b401a3          	sb	a1,-125(s0)
    80003ba4:	48e57263          	bgeu	a0,a4,80004028 <__printf+0x620>
    80003ba8:	3e700513          	li	a0,999
    80003bac:	02d7f5bb          	remuw	a1,a5,a3
    80003bb0:	02059593          	slli	a1,a1,0x20
    80003bb4:	0205d593          	srli	a1,a1,0x20
    80003bb8:	00bd85b3          	add	a1,s11,a1
    80003bbc:	0005c583          	lbu	a1,0(a1)
    80003bc0:	02d7d7bb          	divuw	a5,a5,a3
    80003bc4:	f8b40223          	sb	a1,-124(s0)
    80003bc8:	46e57663          	bgeu	a0,a4,80004034 <__printf+0x62c>
    80003bcc:	02d7f5bb          	remuw	a1,a5,a3
    80003bd0:	02059593          	slli	a1,a1,0x20
    80003bd4:	0205d593          	srli	a1,a1,0x20
    80003bd8:	00bd85b3          	add	a1,s11,a1
    80003bdc:	0005c583          	lbu	a1,0(a1)
    80003be0:	02d7d7bb          	divuw	a5,a5,a3
    80003be4:	f8b402a3          	sb	a1,-123(s0)
    80003be8:	46ea7863          	bgeu	s4,a4,80004058 <__printf+0x650>
    80003bec:	02d7f5bb          	remuw	a1,a5,a3
    80003bf0:	02059593          	slli	a1,a1,0x20
    80003bf4:	0205d593          	srli	a1,a1,0x20
    80003bf8:	00bd85b3          	add	a1,s11,a1
    80003bfc:	0005c583          	lbu	a1,0(a1)
    80003c00:	02d7d7bb          	divuw	a5,a5,a3
    80003c04:	f8b40323          	sb	a1,-122(s0)
    80003c08:	3eeaf863          	bgeu	s5,a4,80003ff8 <__printf+0x5f0>
    80003c0c:	02d7f5bb          	remuw	a1,a5,a3
    80003c10:	02059593          	slli	a1,a1,0x20
    80003c14:	0205d593          	srli	a1,a1,0x20
    80003c18:	00bd85b3          	add	a1,s11,a1
    80003c1c:	0005c583          	lbu	a1,0(a1)
    80003c20:	02d7d7bb          	divuw	a5,a5,a3
    80003c24:	f8b403a3          	sb	a1,-121(s0)
    80003c28:	42eb7e63          	bgeu	s6,a4,80004064 <__printf+0x65c>
    80003c2c:	02d7f5bb          	remuw	a1,a5,a3
    80003c30:	02059593          	slli	a1,a1,0x20
    80003c34:	0205d593          	srli	a1,a1,0x20
    80003c38:	00bd85b3          	add	a1,s11,a1
    80003c3c:	0005c583          	lbu	a1,0(a1)
    80003c40:	02d7d7bb          	divuw	a5,a5,a3
    80003c44:	f8b40423          	sb	a1,-120(s0)
    80003c48:	42ebfc63          	bgeu	s7,a4,80004080 <__printf+0x678>
    80003c4c:	02079793          	slli	a5,a5,0x20
    80003c50:	0207d793          	srli	a5,a5,0x20
    80003c54:	00fd8db3          	add	s11,s11,a5
    80003c58:	000dc703          	lbu	a4,0(s11)
    80003c5c:	00a00793          	li	a5,10
    80003c60:	00900c93          	li	s9,9
    80003c64:	f8e404a3          	sb	a4,-119(s0)
    80003c68:	00065c63          	bgez	a2,80003c80 <__printf+0x278>
    80003c6c:	f9040713          	addi	a4,s0,-112
    80003c70:	00f70733          	add	a4,a4,a5
    80003c74:	02d00693          	li	a3,45
    80003c78:	fed70823          	sb	a3,-16(a4)
    80003c7c:	00078c93          	mv	s9,a5
    80003c80:	f8040793          	addi	a5,s0,-128
    80003c84:	01978cb3          	add	s9,a5,s9
    80003c88:	f7f40d13          	addi	s10,s0,-129
    80003c8c:	000cc503          	lbu	a0,0(s9)
    80003c90:	fffc8c93          	addi	s9,s9,-1
    80003c94:	00000097          	auipc	ra,0x0
    80003c98:	b90080e7          	jalr	-1136(ra) # 80003824 <consputc>
    80003c9c:	ffac98e3          	bne	s9,s10,80003c8c <__printf+0x284>
    80003ca0:	00094503          	lbu	a0,0(s2)
    80003ca4:	e00514e3          	bnez	a0,80003aac <__printf+0xa4>
    80003ca8:	1a0c1663          	bnez	s8,80003e54 <__printf+0x44c>
    80003cac:	08813083          	ld	ra,136(sp)
    80003cb0:	08013403          	ld	s0,128(sp)
    80003cb4:	07813483          	ld	s1,120(sp)
    80003cb8:	07013903          	ld	s2,112(sp)
    80003cbc:	06813983          	ld	s3,104(sp)
    80003cc0:	06013a03          	ld	s4,96(sp)
    80003cc4:	05813a83          	ld	s5,88(sp)
    80003cc8:	05013b03          	ld	s6,80(sp)
    80003ccc:	04813b83          	ld	s7,72(sp)
    80003cd0:	04013c03          	ld	s8,64(sp)
    80003cd4:	03813c83          	ld	s9,56(sp)
    80003cd8:	03013d03          	ld	s10,48(sp)
    80003cdc:	02813d83          	ld	s11,40(sp)
    80003ce0:	0d010113          	addi	sp,sp,208
    80003ce4:	00008067          	ret
    80003ce8:	07300713          	li	a4,115
    80003cec:	1ce78a63          	beq	a5,a4,80003ec0 <__printf+0x4b8>
    80003cf0:	07800713          	li	a4,120
    80003cf4:	1ee79e63          	bne	a5,a4,80003ef0 <__printf+0x4e8>
    80003cf8:	f7843783          	ld	a5,-136(s0)
    80003cfc:	0007a703          	lw	a4,0(a5)
    80003d00:	00878793          	addi	a5,a5,8
    80003d04:	f6f43c23          	sd	a5,-136(s0)
    80003d08:	28074263          	bltz	a4,80003f8c <__printf+0x584>
    80003d0c:	00001d97          	auipc	s11,0x1
    80003d10:	624d8d93          	addi	s11,s11,1572 # 80005330 <digits>
    80003d14:	00f77793          	andi	a5,a4,15
    80003d18:	00fd87b3          	add	a5,s11,a5
    80003d1c:	0007c683          	lbu	a3,0(a5)
    80003d20:	00f00613          	li	a2,15
    80003d24:	0007079b          	sext.w	a5,a4
    80003d28:	f8d40023          	sb	a3,-128(s0)
    80003d2c:	0047559b          	srliw	a1,a4,0x4
    80003d30:	0047569b          	srliw	a3,a4,0x4
    80003d34:	00000c93          	li	s9,0
    80003d38:	0ee65063          	bge	a2,a4,80003e18 <__printf+0x410>
    80003d3c:	00f6f693          	andi	a3,a3,15
    80003d40:	00dd86b3          	add	a3,s11,a3
    80003d44:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003d48:	0087d79b          	srliw	a5,a5,0x8
    80003d4c:	00100c93          	li	s9,1
    80003d50:	f8d400a3          	sb	a3,-127(s0)
    80003d54:	0cb67263          	bgeu	a2,a1,80003e18 <__printf+0x410>
    80003d58:	00f7f693          	andi	a3,a5,15
    80003d5c:	00dd86b3          	add	a3,s11,a3
    80003d60:	0006c583          	lbu	a1,0(a3)
    80003d64:	00f00613          	li	a2,15
    80003d68:	0047d69b          	srliw	a3,a5,0x4
    80003d6c:	f8b40123          	sb	a1,-126(s0)
    80003d70:	0047d593          	srli	a1,a5,0x4
    80003d74:	28f67e63          	bgeu	a2,a5,80004010 <__printf+0x608>
    80003d78:	00f6f693          	andi	a3,a3,15
    80003d7c:	00dd86b3          	add	a3,s11,a3
    80003d80:	0006c503          	lbu	a0,0(a3)
    80003d84:	0087d813          	srli	a6,a5,0x8
    80003d88:	0087d69b          	srliw	a3,a5,0x8
    80003d8c:	f8a401a3          	sb	a0,-125(s0)
    80003d90:	28b67663          	bgeu	a2,a1,8000401c <__printf+0x614>
    80003d94:	00f6f693          	andi	a3,a3,15
    80003d98:	00dd86b3          	add	a3,s11,a3
    80003d9c:	0006c583          	lbu	a1,0(a3)
    80003da0:	00c7d513          	srli	a0,a5,0xc
    80003da4:	00c7d69b          	srliw	a3,a5,0xc
    80003da8:	f8b40223          	sb	a1,-124(s0)
    80003dac:	29067a63          	bgeu	a2,a6,80004040 <__printf+0x638>
    80003db0:	00f6f693          	andi	a3,a3,15
    80003db4:	00dd86b3          	add	a3,s11,a3
    80003db8:	0006c583          	lbu	a1,0(a3)
    80003dbc:	0107d813          	srli	a6,a5,0x10
    80003dc0:	0107d69b          	srliw	a3,a5,0x10
    80003dc4:	f8b402a3          	sb	a1,-123(s0)
    80003dc8:	28a67263          	bgeu	a2,a0,8000404c <__printf+0x644>
    80003dcc:	00f6f693          	andi	a3,a3,15
    80003dd0:	00dd86b3          	add	a3,s11,a3
    80003dd4:	0006c683          	lbu	a3,0(a3)
    80003dd8:	0147d79b          	srliw	a5,a5,0x14
    80003ddc:	f8d40323          	sb	a3,-122(s0)
    80003de0:	21067663          	bgeu	a2,a6,80003fec <__printf+0x5e4>
    80003de4:	02079793          	slli	a5,a5,0x20
    80003de8:	0207d793          	srli	a5,a5,0x20
    80003dec:	00fd8db3          	add	s11,s11,a5
    80003df0:	000dc683          	lbu	a3,0(s11)
    80003df4:	00800793          	li	a5,8
    80003df8:	00700c93          	li	s9,7
    80003dfc:	f8d403a3          	sb	a3,-121(s0)
    80003e00:	00075c63          	bgez	a4,80003e18 <__printf+0x410>
    80003e04:	f9040713          	addi	a4,s0,-112
    80003e08:	00f70733          	add	a4,a4,a5
    80003e0c:	02d00693          	li	a3,45
    80003e10:	fed70823          	sb	a3,-16(a4)
    80003e14:	00078c93          	mv	s9,a5
    80003e18:	f8040793          	addi	a5,s0,-128
    80003e1c:	01978cb3          	add	s9,a5,s9
    80003e20:	f7f40d13          	addi	s10,s0,-129
    80003e24:	000cc503          	lbu	a0,0(s9)
    80003e28:	fffc8c93          	addi	s9,s9,-1
    80003e2c:	00000097          	auipc	ra,0x0
    80003e30:	9f8080e7          	jalr	-1544(ra) # 80003824 <consputc>
    80003e34:	ff9d18e3          	bne	s10,s9,80003e24 <__printf+0x41c>
    80003e38:	0100006f          	j	80003e48 <__printf+0x440>
    80003e3c:	00000097          	auipc	ra,0x0
    80003e40:	9e8080e7          	jalr	-1560(ra) # 80003824 <consputc>
    80003e44:	000c8493          	mv	s1,s9
    80003e48:	00094503          	lbu	a0,0(s2)
    80003e4c:	c60510e3          	bnez	a0,80003aac <__printf+0xa4>
    80003e50:	e40c0ee3          	beqz	s8,80003cac <__printf+0x2a4>
    80003e54:	00003517          	auipc	a0,0x3
    80003e58:	25c50513          	addi	a0,a0,604 # 800070b0 <pr>
    80003e5c:	00001097          	auipc	ra,0x1
    80003e60:	94c080e7          	jalr	-1716(ra) # 800047a8 <release>
    80003e64:	e49ff06f          	j	80003cac <__printf+0x2a4>
    80003e68:	f7843783          	ld	a5,-136(s0)
    80003e6c:	03000513          	li	a0,48
    80003e70:	01000d13          	li	s10,16
    80003e74:	00878713          	addi	a4,a5,8
    80003e78:	0007bc83          	ld	s9,0(a5)
    80003e7c:	f6e43c23          	sd	a4,-136(s0)
    80003e80:	00000097          	auipc	ra,0x0
    80003e84:	9a4080e7          	jalr	-1628(ra) # 80003824 <consputc>
    80003e88:	07800513          	li	a0,120
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	998080e7          	jalr	-1640(ra) # 80003824 <consputc>
    80003e94:	00001d97          	auipc	s11,0x1
    80003e98:	49cd8d93          	addi	s11,s11,1180 # 80005330 <digits>
    80003e9c:	03ccd793          	srli	a5,s9,0x3c
    80003ea0:	00fd87b3          	add	a5,s11,a5
    80003ea4:	0007c503          	lbu	a0,0(a5)
    80003ea8:	fffd0d1b          	addiw	s10,s10,-1
    80003eac:	004c9c93          	slli	s9,s9,0x4
    80003eb0:	00000097          	auipc	ra,0x0
    80003eb4:	974080e7          	jalr	-1676(ra) # 80003824 <consputc>
    80003eb8:	fe0d12e3          	bnez	s10,80003e9c <__printf+0x494>
    80003ebc:	f8dff06f          	j	80003e48 <__printf+0x440>
    80003ec0:	f7843783          	ld	a5,-136(s0)
    80003ec4:	0007bc83          	ld	s9,0(a5)
    80003ec8:	00878793          	addi	a5,a5,8
    80003ecc:	f6f43c23          	sd	a5,-136(s0)
    80003ed0:	000c9a63          	bnez	s9,80003ee4 <__printf+0x4dc>
    80003ed4:	1080006f          	j	80003fdc <__printf+0x5d4>
    80003ed8:	001c8c93          	addi	s9,s9,1
    80003edc:	00000097          	auipc	ra,0x0
    80003ee0:	948080e7          	jalr	-1720(ra) # 80003824 <consputc>
    80003ee4:	000cc503          	lbu	a0,0(s9)
    80003ee8:	fe0518e3          	bnez	a0,80003ed8 <__printf+0x4d0>
    80003eec:	f5dff06f          	j	80003e48 <__printf+0x440>
    80003ef0:	02500513          	li	a0,37
    80003ef4:	00000097          	auipc	ra,0x0
    80003ef8:	930080e7          	jalr	-1744(ra) # 80003824 <consputc>
    80003efc:	000c8513          	mv	a0,s9
    80003f00:	00000097          	auipc	ra,0x0
    80003f04:	924080e7          	jalr	-1756(ra) # 80003824 <consputc>
    80003f08:	f41ff06f          	j	80003e48 <__printf+0x440>
    80003f0c:	02500513          	li	a0,37
    80003f10:	00000097          	auipc	ra,0x0
    80003f14:	914080e7          	jalr	-1772(ra) # 80003824 <consputc>
    80003f18:	f31ff06f          	j	80003e48 <__printf+0x440>
    80003f1c:	00030513          	mv	a0,t1
    80003f20:	00000097          	auipc	ra,0x0
    80003f24:	7bc080e7          	jalr	1980(ra) # 800046dc <acquire>
    80003f28:	b4dff06f          	j	80003a74 <__printf+0x6c>
    80003f2c:	40c0053b          	negw	a0,a2
    80003f30:	00a00713          	li	a4,10
    80003f34:	02e576bb          	remuw	a3,a0,a4
    80003f38:	00001d97          	auipc	s11,0x1
    80003f3c:	3f8d8d93          	addi	s11,s11,1016 # 80005330 <digits>
    80003f40:	ff700593          	li	a1,-9
    80003f44:	02069693          	slli	a3,a3,0x20
    80003f48:	0206d693          	srli	a3,a3,0x20
    80003f4c:	00dd86b3          	add	a3,s11,a3
    80003f50:	0006c683          	lbu	a3,0(a3)
    80003f54:	02e557bb          	divuw	a5,a0,a4
    80003f58:	f8d40023          	sb	a3,-128(s0)
    80003f5c:	10b65e63          	bge	a2,a1,80004078 <__printf+0x670>
    80003f60:	06300593          	li	a1,99
    80003f64:	02e7f6bb          	remuw	a3,a5,a4
    80003f68:	02069693          	slli	a3,a3,0x20
    80003f6c:	0206d693          	srli	a3,a3,0x20
    80003f70:	00dd86b3          	add	a3,s11,a3
    80003f74:	0006c683          	lbu	a3,0(a3)
    80003f78:	02e7d73b          	divuw	a4,a5,a4
    80003f7c:	00200793          	li	a5,2
    80003f80:	f8d400a3          	sb	a3,-127(s0)
    80003f84:	bca5ece3          	bltu	a1,a0,80003b5c <__printf+0x154>
    80003f88:	ce5ff06f          	j	80003c6c <__printf+0x264>
    80003f8c:	40e007bb          	negw	a5,a4
    80003f90:	00001d97          	auipc	s11,0x1
    80003f94:	3a0d8d93          	addi	s11,s11,928 # 80005330 <digits>
    80003f98:	00f7f693          	andi	a3,a5,15
    80003f9c:	00dd86b3          	add	a3,s11,a3
    80003fa0:	0006c583          	lbu	a1,0(a3)
    80003fa4:	ff100613          	li	a2,-15
    80003fa8:	0047d69b          	srliw	a3,a5,0x4
    80003fac:	f8b40023          	sb	a1,-128(s0)
    80003fb0:	0047d59b          	srliw	a1,a5,0x4
    80003fb4:	0ac75e63          	bge	a4,a2,80004070 <__printf+0x668>
    80003fb8:	00f6f693          	andi	a3,a3,15
    80003fbc:	00dd86b3          	add	a3,s11,a3
    80003fc0:	0006c603          	lbu	a2,0(a3)
    80003fc4:	00f00693          	li	a3,15
    80003fc8:	0087d79b          	srliw	a5,a5,0x8
    80003fcc:	f8c400a3          	sb	a2,-127(s0)
    80003fd0:	d8b6e4e3          	bltu	a3,a1,80003d58 <__printf+0x350>
    80003fd4:	00200793          	li	a5,2
    80003fd8:	e2dff06f          	j	80003e04 <__printf+0x3fc>
    80003fdc:	00001c97          	auipc	s9,0x1
    80003fe0:	334c8c93          	addi	s9,s9,820 # 80005310 <CONSOLE_STATUS+0x300>
    80003fe4:	02800513          	li	a0,40
    80003fe8:	ef1ff06f          	j	80003ed8 <__printf+0x4d0>
    80003fec:	00700793          	li	a5,7
    80003ff0:	00600c93          	li	s9,6
    80003ff4:	e0dff06f          	j	80003e00 <__printf+0x3f8>
    80003ff8:	00700793          	li	a5,7
    80003ffc:	00600c93          	li	s9,6
    80004000:	c69ff06f          	j	80003c68 <__printf+0x260>
    80004004:	00300793          	li	a5,3
    80004008:	00200c93          	li	s9,2
    8000400c:	c5dff06f          	j	80003c68 <__printf+0x260>
    80004010:	00300793          	li	a5,3
    80004014:	00200c93          	li	s9,2
    80004018:	de9ff06f          	j	80003e00 <__printf+0x3f8>
    8000401c:	00400793          	li	a5,4
    80004020:	00300c93          	li	s9,3
    80004024:	dddff06f          	j	80003e00 <__printf+0x3f8>
    80004028:	00400793          	li	a5,4
    8000402c:	00300c93          	li	s9,3
    80004030:	c39ff06f          	j	80003c68 <__printf+0x260>
    80004034:	00500793          	li	a5,5
    80004038:	00400c93          	li	s9,4
    8000403c:	c2dff06f          	j	80003c68 <__printf+0x260>
    80004040:	00500793          	li	a5,5
    80004044:	00400c93          	li	s9,4
    80004048:	db9ff06f          	j	80003e00 <__printf+0x3f8>
    8000404c:	00600793          	li	a5,6
    80004050:	00500c93          	li	s9,5
    80004054:	dadff06f          	j	80003e00 <__printf+0x3f8>
    80004058:	00600793          	li	a5,6
    8000405c:	00500c93          	li	s9,5
    80004060:	c09ff06f          	j	80003c68 <__printf+0x260>
    80004064:	00800793          	li	a5,8
    80004068:	00700c93          	li	s9,7
    8000406c:	bfdff06f          	j	80003c68 <__printf+0x260>
    80004070:	00100793          	li	a5,1
    80004074:	d91ff06f          	j	80003e04 <__printf+0x3fc>
    80004078:	00100793          	li	a5,1
    8000407c:	bf1ff06f          	j	80003c6c <__printf+0x264>
    80004080:	00900793          	li	a5,9
    80004084:	00800c93          	li	s9,8
    80004088:	be1ff06f          	j	80003c68 <__printf+0x260>
    8000408c:	00001517          	auipc	a0,0x1
    80004090:	28c50513          	addi	a0,a0,652 # 80005318 <CONSOLE_STATUS+0x308>
    80004094:	00000097          	auipc	ra,0x0
    80004098:	918080e7          	jalr	-1768(ra) # 800039ac <panic>

000000008000409c <printfinit>:
    8000409c:	fe010113          	addi	sp,sp,-32
    800040a0:	00813823          	sd	s0,16(sp)
    800040a4:	00913423          	sd	s1,8(sp)
    800040a8:	00113c23          	sd	ra,24(sp)
    800040ac:	02010413          	addi	s0,sp,32
    800040b0:	00003497          	auipc	s1,0x3
    800040b4:	00048493          	mv	s1,s1
    800040b8:	00048513          	mv	a0,s1
    800040bc:	00001597          	auipc	a1,0x1
    800040c0:	26c58593          	addi	a1,a1,620 # 80005328 <CONSOLE_STATUS+0x318>
    800040c4:	00000097          	auipc	ra,0x0
    800040c8:	5f4080e7          	jalr	1524(ra) # 800046b8 <initlock>
    800040cc:	01813083          	ld	ra,24(sp)
    800040d0:	01013403          	ld	s0,16(sp)
    800040d4:	0004ac23          	sw	zero,24(s1) # 800070c8 <pr+0x18>
    800040d8:	00813483          	ld	s1,8(sp)
    800040dc:	02010113          	addi	sp,sp,32
    800040e0:	00008067          	ret

00000000800040e4 <uartinit>:
    800040e4:	ff010113          	addi	sp,sp,-16
    800040e8:	00813423          	sd	s0,8(sp)
    800040ec:	01010413          	addi	s0,sp,16
    800040f0:	100007b7          	lui	a5,0x10000
    800040f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800040f8:	f8000713          	li	a4,-128
    800040fc:	00e781a3          	sb	a4,3(a5)
    80004100:	00300713          	li	a4,3
    80004104:	00e78023          	sb	a4,0(a5)
    80004108:	000780a3          	sb	zero,1(a5)
    8000410c:	00e781a3          	sb	a4,3(a5)
    80004110:	00700693          	li	a3,7
    80004114:	00d78123          	sb	a3,2(a5)
    80004118:	00e780a3          	sb	a4,1(a5)
    8000411c:	00813403          	ld	s0,8(sp)
    80004120:	01010113          	addi	sp,sp,16
    80004124:	00008067          	ret

0000000080004128 <uartputc>:
    80004128:	00002797          	auipc	a5,0x2
    8000412c:	cf07a783          	lw	a5,-784(a5) # 80005e18 <panicked>
    80004130:	00078463          	beqz	a5,80004138 <uartputc+0x10>
    80004134:	0000006f          	j	80004134 <uartputc+0xc>
    80004138:	fd010113          	addi	sp,sp,-48
    8000413c:	02813023          	sd	s0,32(sp)
    80004140:	00913c23          	sd	s1,24(sp)
    80004144:	01213823          	sd	s2,16(sp)
    80004148:	01313423          	sd	s3,8(sp)
    8000414c:	02113423          	sd	ra,40(sp)
    80004150:	03010413          	addi	s0,sp,48
    80004154:	00002917          	auipc	s2,0x2
    80004158:	ccc90913          	addi	s2,s2,-820 # 80005e20 <uart_tx_r>
    8000415c:	00093783          	ld	a5,0(s2)
    80004160:	00002497          	auipc	s1,0x2
    80004164:	cc848493          	addi	s1,s1,-824 # 80005e28 <uart_tx_w>
    80004168:	0004b703          	ld	a4,0(s1)
    8000416c:	02078693          	addi	a3,a5,32
    80004170:	00050993          	mv	s3,a0
    80004174:	02e69c63          	bne	a3,a4,800041ac <uartputc+0x84>
    80004178:	00001097          	auipc	ra,0x1
    8000417c:	834080e7          	jalr	-1996(ra) # 800049ac <push_on>
    80004180:	00093783          	ld	a5,0(s2)
    80004184:	0004b703          	ld	a4,0(s1)
    80004188:	02078793          	addi	a5,a5,32
    8000418c:	00e79463          	bne	a5,a4,80004194 <uartputc+0x6c>
    80004190:	0000006f          	j	80004190 <uartputc+0x68>
    80004194:	00001097          	auipc	ra,0x1
    80004198:	88c080e7          	jalr	-1908(ra) # 80004a20 <pop_on>
    8000419c:	00093783          	ld	a5,0(s2)
    800041a0:	0004b703          	ld	a4,0(s1)
    800041a4:	02078693          	addi	a3,a5,32
    800041a8:	fce688e3          	beq	a3,a4,80004178 <uartputc+0x50>
    800041ac:	01f77693          	andi	a3,a4,31
    800041b0:	00003597          	auipc	a1,0x3
    800041b4:	f2058593          	addi	a1,a1,-224 # 800070d0 <uart_tx_buf>
    800041b8:	00d586b3          	add	a3,a1,a3
    800041bc:	00170713          	addi	a4,a4,1
    800041c0:	01368023          	sb	s3,0(a3)
    800041c4:	00e4b023          	sd	a4,0(s1)
    800041c8:	10000637          	lui	a2,0x10000
    800041cc:	02f71063          	bne	a4,a5,800041ec <uartputc+0xc4>
    800041d0:	0340006f          	j	80004204 <uartputc+0xdc>
    800041d4:	00074703          	lbu	a4,0(a4)
    800041d8:	00f93023          	sd	a5,0(s2)
    800041dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800041e0:	00093783          	ld	a5,0(s2)
    800041e4:	0004b703          	ld	a4,0(s1)
    800041e8:	00f70e63          	beq	a4,a5,80004204 <uartputc+0xdc>
    800041ec:	00564683          	lbu	a3,5(a2)
    800041f0:	01f7f713          	andi	a4,a5,31
    800041f4:	00e58733          	add	a4,a1,a4
    800041f8:	0206f693          	andi	a3,a3,32
    800041fc:	00178793          	addi	a5,a5,1
    80004200:	fc069ae3          	bnez	a3,800041d4 <uartputc+0xac>
    80004204:	02813083          	ld	ra,40(sp)
    80004208:	02013403          	ld	s0,32(sp)
    8000420c:	01813483          	ld	s1,24(sp)
    80004210:	01013903          	ld	s2,16(sp)
    80004214:	00813983          	ld	s3,8(sp)
    80004218:	03010113          	addi	sp,sp,48
    8000421c:	00008067          	ret

0000000080004220 <uartputc_sync>:
    80004220:	ff010113          	addi	sp,sp,-16
    80004224:	00813423          	sd	s0,8(sp)
    80004228:	01010413          	addi	s0,sp,16
    8000422c:	00002717          	auipc	a4,0x2
    80004230:	bec72703          	lw	a4,-1044(a4) # 80005e18 <panicked>
    80004234:	02071663          	bnez	a4,80004260 <uartputc_sync+0x40>
    80004238:	00050793          	mv	a5,a0
    8000423c:	100006b7          	lui	a3,0x10000
    80004240:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004244:	02077713          	andi	a4,a4,32
    80004248:	fe070ce3          	beqz	a4,80004240 <uartputc_sync+0x20>
    8000424c:	0ff7f793          	andi	a5,a5,255
    80004250:	00f68023          	sb	a5,0(a3)
    80004254:	00813403          	ld	s0,8(sp)
    80004258:	01010113          	addi	sp,sp,16
    8000425c:	00008067          	ret
    80004260:	0000006f          	j	80004260 <uartputc_sync+0x40>

0000000080004264 <uartstart>:
    80004264:	ff010113          	addi	sp,sp,-16
    80004268:	00813423          	sd	s0,8(sp)
    8000426c:	01010413          	addi	s0,sp,16
    80004270:	00002617          	auipc	a2,0x2
    80004274:	bb060613          	addi	a2,a2,-1104 # 80005e20 <uart_tx_r>
    80004278:	00002517          	auipc	a0,0x2
    8000427c:	bb050513          	addi	a0,a0,-1104 # 80005e28 <uart_tx_w>
    80004280:	00063783          	ld	a5,0(a2)
    80004284:	00053703          	ld	a4,0(a0)
    80004288:	04f70263          	beq	a4,a5,800042cc <uartstart+0x68>
    8000428c:	100005b7          	lui	a1,0x10000
    80004290:	00003817          	auipc	a6,0x3
    80004294:	e4080813          	addi	a6,a6,-448 # 800070d0 <uart_tx_buf>
    80004298:	01c0006f          	j	800042b4 <uartstart+0x50>
    8000429c:	0006c703          	lbu	a4,0(a3)
    800042a0:	00f63023          	sd	a5,0(a2)
    800042a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800042a8:	00063783          	ld	a5,0(a2)
    800042ac:	00053703          	ld	a4,0(a0)
    800042b0:	00f70e63          	beq	a4,a5,800042cc <uartstart+0x68>
    800042b4:	01f7f713          	andi	a4,a5,31
    800042b8:	00e806b3          	add	a3,a6,a4
    800042bc:	0055c703          	lbu	a4,5(a1)
    800042c0:	00178793          	addi	a5,a5,1
    800042c4:	02077713          	andi	a4,a4,32
    800042c8:	fc071ae3          	bnez	a4,8000429c <uartstart+0x38>
    800042cc:	00813403          	ld	s0,8(sp)
    800042d0:	01010113          	addi	sp,sp,16
    800042d4:	00008067          	ret

00000000800042d8 <uartgetc>:
    800042d8:	ff010113          	addi	sp,sp,-16
    800042dc:	00813423          	sd	s0,8(sp)
    800042e0:	01010413          	addi	s0,sp,16
    800042e4:	10000737          	lui	a4,0x10000
    800042e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800042ec:	0017f793          	andi	a5,a5,1
    800042f0:	00078c63          	beqz	a5,80004308 <uartgetc+0x30>
    800042f4:	00074503          	lbu	a0,0(a4)
    800042f8:	0ff57513          	andi	a0,a0,255
    800042fc:	00813403          	ld	s0,8(sp)
    80004300:	01010113          	addi	sp,sp,16
    80004304:	00008067          	ret
    80004308:	fff00513          	li	a0,-1
    8000430c:	ff1ff06f          	j	800042fc <uartgetc+0x24>

0000000080004310 <uartintr>:
    80004310:	100007b7          	lui	a5,0x10000
    80004314:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004318:	0017f793          	andi	a5,a5,1
    8000431c:	0a078463          	beqz	a5,800043c4 <uartintr+0xb4>
    80004320:	fe010113          	addi	sp,sp,-32
    80004324:	00813823          	sd	s0,16(sp)
    80004328:	00913423          	sd	s1,8(sp)
    8000432c:	00113c23          	sd	ra,24(sp)
    80004330:	02010413          	addi	s0,sp,32
    80004334:	100004b7          	lui	s1,0x10000
    80004338:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000433c:	0ff57513          	andi	a0,a0,255
    80004340:	fffff097          	auipc	ra,0xfffff
    80004344:	534080e7          	jalr	1332(ra) # 80003874 <consoleintr>
    80004348:	0054c783          	lbu	a5,5(s1)
    8000434c:	0017f793          	andi	a5,a5,1
    80004350:	fe0794e3          	bnez	a5,80004338 <uartintr+0x28>
    80004354:	00002617          	auipc	a2,0x2
    80004358:	acc60613          	addi	a2,a2,-1332 # 80005e20 <uart_tx_r>
    8000435c:	00002517          	auipc	a0,0x2
    80004360:	acc50513          	addi	a0,a0,-1332 # 80005e28 <uart_tx_w>
    80004364:	00063783          	ld	a5,0(a2)
    80004368:	00053703          	ld	a4,0(a0)
    8000436c:	04f70263          	beq	a4,a5,800043b0 <uartintr+0xa0>
    80004370:	100005b7          	lui	a1,0x10000
    80004374:	00003817          	auipc	a6,0x3
    80004378:	d5c80813          	addi	a6,a6,-676 # 800070d0 <uart_tx_buf>
    8000437c:	01c0006f          	j	80004398 <uartintr+0x88>
    80004380:	0006c703          	lbu	a4,0(a3)
    80004384:	00f63023          	sd	a5,0(a2)
    80004388:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000438c:	00063783          	ld	a5,0(a2)
    80004390:	00053703          	ld	a4,0(a0)
    80004394:	00f70e63          	beq	a4,a5,800043b0 <uartintr+0xa0>
    80004398:	01f7f713          	andi	a4,a5,31
    8000439c:	00e806b3          	add	a3,a6,a4
    800043a0:	0055c703          	lbu	a4,5(a1)
    800043a4:	00178793          	addi	a5,a5,1
    800043a8:	02077713          	andi	a4,a4,32
    800043ac:	fc071ae3          	bnez	a4,80004380 <uartintr+0x70>
    800043b0:	01813083          	ld	ra,24(sp)
    800043b4:	01013403          	ld	s0,16(sp)
    800043b8:	00813483          	ld	s1,8(sp)
    800043bc:	02010113          	addi	sp,sp,32
    800043c0:	00008067          	ret
    800043c4:	00002617          	auipc	a2,0x2
    800043c8:	a5c60613          	addi	a2,a2,-1444 # 80005e20 <uart_tx_r>
    800043cc:	00002517          	auipc	a0,0x2
    800043d0:	a5c50513          	addi	a0,a0,-1444 # 80005e28 <uart_tx_w>
    800043d4:	00063783          	ld	a5,0(a2)
    800043d8:	00053703          	ld	a4,0(a0)
    800043dc:	04f70263          	beq	a4,a5,80004420 <uartintr+0x110>
    800043e0:	100005b7          	lui	a1,0x10000
    800043e4:	00003817          	auipc	a6,0x3
    800043e8:	cec80813          	addi	a6,a6,-788 # 800070d0 <uart_tx_buf>
    800043ec:	01c0006f          	j	80004408 <uartintr+0xf8>
    800043f0:	0006c703          	lbu	a4,0(a3)
    800043f4:	00f63023          	sd	a5,0(a2)
    800043f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800043fc:	00063783          	ld	a5,0(a2)
    80004400:	00053703          	ld	a4,0(a0)
    80004404:	02f70063          	beq	a4,a5,80004424 <uartintr+0x114>
    80004408:	01f7f713          	andi	a4,a5,31
    8000440c:	00e806b3          	add	a3,a6,a4
    80004410:	0055c703          	lbu	a4,5(a1)
    80004414:	00178793          	addi	a5,a5,1
    80004418:	02077713          	andi	a4,a4,32
    8000441c:	fc071ae3          	bnez	a4,800043f0 <uartintr+0xe0>
    80004420:	00008067          	ret
    80004424:	00008067          	ret

0000000080004428 <kinit>:
    80004428:	fc010113          	addi	sp,sp,-64
    8000442c:	02913423          	sd	s1,40(sp)
    80004430:	fffff7b7          	lui	a5,0xfffff
    80004434:	00004497          	auipc	s1,0x4
    80004438:	cbb48493          	addi	s1,s1,-837 # 800080ef <end+0xfff>
    8000443c:	02813823          	sd	s0,48(sp)
    80004440:	01313c23          	sd	s3,24(sp)
    80004444:	00f4f4b3          	and	s1,s1,a5
    80004448:	02113c23          	sd	ra,56(sp)
    8000444c:	03213023          	sd	s2,32(sp)
    80004450:	01413823          	sd	s4,16(sp)
    80004454:	01513423          	sd	s5,8(sp)
    80004458:	04010413          	addi	s0,sp,64
    8000445c:	000017b7          	lui	a5,0x1
    80004460:	01100993          	li	s3,17
    80004464:	00f487b3          	add	a5,s1,a5
    80004468:	01b99993          	slli	s3,s3,0x1b
    8000446c:	06f9e063          	bltu	s3,a5,800044cc <kinit+0xa4>
    80004470:	00003a97          	auipc	s5,0x3
    80004474:	c80a8a93          	addi	s5,s5,-896 # 800070f0 <end>
    80004478:	0754ec63          	bltu	s1,s5,800044f0 <kinit+0xc8>
    8000447c:	0734fa63          	bgeu	s1,s3,800044f0 <kinit+0xc8>
    80004480:	00088a37          	lui	s4,0x88
    80004484:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004488:	00002917          	auipc	s2,0x2
    8000448c:	9a890913          	addi	s2,s2,-1624 # 80005e30 <kmem>
    80004490:	00ca1a13          	slli	s4,s4,0xc
    80004494:	0140006f          	j	800044a8 <kinit+0x80>
    80004498:	000017b7          	lui	a5,0x1
    8000449c:	00f484b3          	add	s1,s1,a5
    800044a0:	0554e863          	bltu	s1,s5,800044f0 <kinit+0xc8>
    800044a4:	0534f663          	bgeu	s1,s3,800044f0 <kinit+0xc8>
    800044a8:	00001637          	lui	a2,0x1
    800044ac:	00100593          	li	a1,1
    800044b0:	00048513          	mv	a0,s1
    800044b4:	00000097          	auipc	ra,0x0
    800044b8:	5e4080e7          	jalr	1508(ra) # 80004a98 <__memset>
    800044bc:	00093783          	ld	a5,0(s2)
    800044c0:	00f4b023          	sd	a5,0(s1)
    800044c4:	00993023          	sd	s1,0(s2)
    800044c8:	fd4498e3          	bne	s1,s4,80004498 <kinit+0x70>
    800044cc:	03813083          	ld	ra,56(sp)
    800044d0:	03013403          	ld	s0,48(sp)
    800044d4:	02813483          	ld	s1,40(sp)
    800044d8:	02013903          	ld	s2,32(sp)
    800044dc:	01813983          	ld	s3,24(sp)
    800044e0:	01013a03          	ld	s4,16(sp)
    800044e4:	00813a83          	ld	s5,8(sp)
    800044e8:	04010113          	addi	sp,sp,64
    800044ec:	00008067          	ret
    800044f0:	00001517          	auipc	a0,0x1
    800044f4:	e5850513          	addi	a0,a0,-424 # 80005348 <digits+0x18>
    800044f8:	fffff097          	auipc	ra,0xfffff
    800044fc:	4b4080e7          	jalr	1204(ra) # 800039ac <panic>

0000000080004500 <freerange>:
    80004500:	fc010113          	addi	sp,sp,-64
    80004504:	000017b7          	lui	a5,0x1
    80004508:	02913423          	sd	s1,40(sp)
    8000450c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004510:	009504b3          	add	s1,a0,s1
    80004514:	fffff537          	lui	a0,0xfffff
    80004518:	02813823          	sd	s0,48(sp)
    8000451c:	02113c23          	sd	ra,56(sp)
    80004520:	03213023          	sd	s2,32(sp)
    80004524:	01313c23          	sd	s3,24(sp)
    80004528:	01413823          	sd	s4,16(sp)
    8000452c:	01513423          	sd	s5,8(sp)
    80004530:	01613023          	sd	s6,0(sp)
    80004534:	04010413          	addi	s0,sp,64
    80004538:	00a4f4b3          	and	s1,s1,a0
    8000453c:	00f487b3          	add	a5,s1,a5
    80004540:	06f5e463          	bltu	a1,a5,800045a8 <freerange+0xa8>
    80004544:	00003a97          	auipc	s5,0x3
    80004548:	baca8a93          	addi	s5,s5,-1108 # 800070f0 <end>
    8000454c:	0954e263          	bltu	s1,s5,800045d0 <freerange+0xd0>
    80004550:	01100993          	li	s3,17
    80004554:	01b99993          	slli	s3,s3,0x1b
    80004558:	0734fc63          	bgeu	s1,s3,800045d0 <freerange+0xd0>
    8000455c:	00058a13          	mv	s4,a1
    80004560:	00002917          	auipc	s2,0x2
    80004564:	8d090913          	addi	s2,s2,-1840 # 80005e30 <kmem>
    80004568:	00002b37          	lui	s6,0x2
    8000456c:	0140006f          	j	80004580 <freerange+0x80>
    80004570:	000017b7          	lui	a5,0x1
    80004574:	00f484b3          	add	s1,s1,a5
    80004578:	0554ec63          	bltu	s1,s5,800045d0 <freerange+0xd0>
    8000457c:	0534fa63          	bgeu	s1,s3,800045d0 <freerange+0xd0>
    80004580:	00001637          	lui	a2,0x1
    80004584:	00100593          	li	a1,1
    80004588:	00048513          	mv	a0,s1
    8000458c:	00000097          	auipc	ra,0x0
    80004590:	50c080e7          	jalr	1292(ra) # 80004a98 <__memset>
    80004594:	00093703          	ld	a4,0(s2)
    80004598:	016487b3          	add	a5,s1,s6
    8000459c:	00e4b023          	sd	a4,0(s1)
    800045a0:	00993023          	sd	s1,0(s2)
    800045a4:	fcfa76e3          	bgeu	s4,a5,80004570 <freerange+0x70>
    800045a8:	03813083          	ld	ra,56(sp)
    800045ac:	03013403          	ld	s0,48(sp)
    800045b0:	02813483          	ld	s1,40(sp)
    800045b4:	02013903          	ld	s2,32(sp)
    800045b8:	01813983          	ld	s3,24(sp)
    800045bc:	01013a03          	ld	s4,16(sp)
    800045c0:	00813a83          	ld	s5,8(sp)
    800045c4:	00013b03          	ld	s6,0(sp)
    800045c8:	04010113          	addi	sp,sp,64
    800045cc:	00008067          	ret
    800045d0:	00001517          	auipc	a0,0x1
    800045d4:	d7850513          	addi	a0,a0,-648 # 80005348 <digits+0x18>
    800045d8:	fffff097          	auipc	ra,0xfffff
    800045dc:	3d4080e7          	jalr	980(ra) # 800039ac <panic>

00000000800045e0 <kfree>:
    800045e0:	fe010113          	addi	sp,sp,-32
    800045e4:	00813823          	sd	s0,16(sp)
    800045e8:	00113c23          	sd	ra,24(sp)
    800045ec:	00913423          	sd	s1,8(sp)
    800045f0:	02010413          	addi	s0,sp,32
    800045f4:	03451793          	slli	a5,a0,0x34
    800045f8:	04079c63          	bnez	a5,80004650 <kfree+0x70>
    800045fc:	00003797          	auipc	a5,0x3
    80004600:	af478793          	addi	a5,a5,-1292 # 800070f0 <end>
    80004604:	00050493          	mv	s1,a0
    80004608:	04f56463          	bltu	a0,a5,80004650 <kfree+0x70>
    8000460c:	01100793          	li	a5,17
    80004610:	01b79793          	slli	a5,a5,0x1b
    80004614:	02f57e63          	bgeu	a0,a5,80004650 <kfree+0x70>
    80004618:	00001637          	lui	a2,0x1
    8000461c:	00100593          	li	a1,1
    80004620:	00000097          	auipc	ra,0x0
    80004624:	478080e7          	jalr	1144(ra) # 80004a98 <__memset>
    80004628:	00002797          	auipc	a5,0x2
    8000462c:	80878793          	addi	a5,a5,-2040 # 80005e30 <kmem>
    80004630:	0007b703          	ld	a4,0(a5)
    80004634:	01813083          	ld	ra,24(sp)
    80004638:	01013403          	ld	s0,16(sp)
    8000463c:	00e4b023          	sd	a4,0(s1)
    80004640:	0097b023          	sd	s1,0(a5)
    80004644:	00813483          	ld	s1,8(sp)
    80004648:	02010113          	addi	sp,sp,32
    8000464c:	00008067          	ret
    80004650:	00001517          	auipc	a0,0x1
    80004654:	cf850513          	addi	a0,a0,-776 # 80005348 <digits+0x18>
    80004658:	fffff097          	auipc	ra,0xfffff
    8000465c:	354080e7          	jalr	852(ra) # 800039ac <panic>

0000000080004660 <kalloc>:
    80004660:	fe010113          	addi	sp,sp,-32
    80004664:	00813823          	sd	s0,16(sp)
    80004668:	00913423          	sd	s1,8(sp)
    8000466c:	00113c23          	sd	ra,24(sp)
    80004670:	02010413          	addi	s0,sp,32
    80004674:	00001797          	auipc	a5,0x1
    80004678:	7bc78793          	addi	a5,a5,1980 # 80005e30 <kmem>
    8000467c:	0007b483          	ld	s1,0(a5)
    80004680:	02048063          	beqz	s1,800046a0 <kalloc+0x40>
    80004684:	0004b703          	ld	a4,0(s1)
    80004688:	00001637          	lui	a2,0x1
    8000468c:	00500593          	li	a1,5
    80004690:	00048513          	mv	a0,s1
    80004694:	00e7b023          	sd	a4,0(a5)
    80004698:	00000097          	auipc	ra,0x0
    8000469c:	400080e7          	jalr	1024(ra) # 80004a98 <__memset>
    800046a0:	01813083          	ld	ra,24(sp)
    800046a4:	01013403          	ld	s0,16(sp)
    800046a8:	00048513          	mv	a0,s1
    800046ac:	00813483          	ld	s1,8(sp)
    800046b0:	02010113          	addi	sp,sp,32
    800046b4:	00008067          	ret

00000000800046b8 <initlock>:
    800046b8:	ff010113          	addi	sp,sp,-16
    800046bc:	00813423          	sd	s0,8(sp)
    800046c0:	01010413          	addi	s0,sp,16
    800046c4:	00813403          	ld	s0,8(sp)
    800046c8:	00b53423          	sd	a1,8(a0)
    800046cc:	00052023          	sw	zero,0(a0)
    800046d0:	00053823          	sd	zero,16(a0)
    800046d4:	01010113          	addi	sp,sp,16
    800046d8:	00008067          	ret

00000000800046dc <acquire>:
    800046dc:	fe010113          	addi	sp,sp,-32
    800046e0:	00813823          	sd	s0,16(sp)
    800046e4:	00913423          	sd	s1,8(sp)
    800046e8:	00113c23          	sd	ra,24(sp)
    800046ec:	01213023          	sd	s2,0(sp)
    800046f0:	02010413          	addi	s0,sp,32
    800046f4:	00050493          	mv	s1,a0
    800046f8:	10002973          	csrr	s2,sstatus
    800046fc:	100027f3          	csrr	a5,sstatus
    80004700:	ffd7f793          	andi	a5,a5,-3
    80004704:	10079073          	csrw	sstatus,a5
    80004708:	fffff097          	auipc	ra,0xfffff
    8000470c:	8e4080e7          	jalr	-1820(ra) # 80002fec <mycpu>
    80004710:	07852783          	lw	a5,120(a0)
    80004714:	06078e63          	beqz	a5,80004790 <acquire+0xb4>
    80004718:	fffff097          	auipc	ra,0xfffff
    8000471c:	8d4080e7          	jalr	-1836(ra) # 80002fec <mycpu>
    80004720:	07852783          	lw	a5,120(a0)
    80004724:	0004a703          	lw	a4,0(s1)
    80004728:	0017879b          	addiw	a5,a5,1
    8000472c:	06f52c23          	sw	a5,120(a0)
    80004730:	04071063          	bnez	a4,80004770 <acquire+0x94>
    80004734:	00100713          	li	a4,1
    80004738:	00070793          	mv	a5,a4
    8000473c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004740:	0007879b          	sext.w	a5,a5
    80004744:	fe079ae3          	bnez	a5,80004738 <acquire+0x5c>
    80004748:	0ff0000f          	fence
    8000474c:	fffff097          	auipc	ra,0xfffff
    80004750:	8a0080e7          	jalr	-1888(ra) # 80002fec <mycpu>
    80004754:	01813083          	ld	ra,24(sp)
    80004758:	01013403          	ld	s0,16(sp)
    8000475c:	00a4b823          	sd	a0,16(s1)
    80004760:	00013903          	ld	s2,0(sp)
    80004764:	00813483          	ld	s1,8(sp)
    80004768:	02010113          	addi	sp,sp,32
    8000476c:	00008067          	ret
    80004770:	0104b903          	ld	s2,16(s1)
    80004774:	fffff097          	auipc	ra,0xfffff
    80004778:	878080e7          	jalr	-1928(ra) # 80002fec <mycpu>
    8000477c:	faa91ce3          	bne	s2,a0,80004734 <acquire+0x58>
    80004780:	00001517          	auipc	a0,0x1
    80004784:	bd050513          	addi	a0,a0,-1072 # 80005350 <digits+0x20>
    80004788:	fffff097          	auipc	ra,0xfffff
    8000478c:	224080e7          	jalr	548(ra) # 800039ac <panic>
    80004790:	00195913          	srli	s2,s2,0x1
    80004794:	fffff097          	auipc	ra,0xfffff
    80004798:	858080e7          	jalr	-1960(ra) # 80002fec <mycpu>
    8000479c:	00197913          	andi	s2,s2,1
    800047a0:	07252e23          	sw	s2,124(a0)
    800047a4:	f75ff06f          	j	80004718 <acquire+0x3c>

00000000800047a8 <release>:
    800047a8:	fe010113          	addi	sp,sp,-32
    800047ac:	00813823          	sd	s0,16(sp)
    800047b0:	00113c23          	sd	ra,24(sp)
    800047b4:	00913423          	sd	s1,8(sp)
    800047b8:	01213023          	sd	s2,0(sp)
    800047bc:	02010413          	addi	s0,sp,32
    800047c0:	00052783          	lw	a5,0(a0)
    800047c4:	00079a63          	bnez	a5,800047d8 <release+0x30>
    800047c8:	00001517          	auipc	a0,0x1
    800047cc:	b9050513          	addi	a0,a0,-1136 # 80005358 <digits+0x28>
    800047d0:	fffff097          	auipc	ra,0xfffff
    800047d4:	1dc080e7          	jalr	476(ra) # 800039ac <panic>
    800047d8:	01053903          	ld	s2,16(a0)
    800047dc:	00050493          	mv	s1,a0
    800047e0:	fffff097          	auipc	ra,0xfffff
    800047e4:	80c080e7          	jalr	-2036(ra) # 80002fec <mycpu>
    800047e8:	fea910e3          	bne	s2,a0,800047c8 <release+0x20>
    800047ec:	0004b823          	sd	zero,16(s1)
    800047f0:	0ff0000f          	fence
    800047f4:	0f50000f          	fence	iorw,ow
    800047f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800047fc:	ffffe097          	auipc	ra,0xffffe
    80004800:	7f0080e7          	jalr	2032(ra) # 80002fec <mycpu>
    80004804:	100027f3          	csrr	a5,sstatus
    80004808:	0027f793          	andi	a5,a5,2
    8000480c:	04079a63          	bnez	a5,80004860 <release+0xb8>
    80004810:	07852783          	lw	a5,120(a0)
    80004814:	02f05e63          	blez	a5,80004850 <release+0xa8>
    80004818:	fff7871b          	addiw	a4,a5,-1
    8000481c:	06e52c23          	sw	a4,120(a0)
    80004820:	00071c63          	bnez	a4,80004838 <release+0x90>
    80004824:	07c52783          	lw	a5,124(a0)
    80004828:	00078863          	beqz	a5,80004838 <release+0x90>
    8000482c:	100027f3          	csrr	a5,sstatus
    80004830:	0027e793          	ori	a5,a5,2
    80004834:	10079073          	csrw	sstatus,a5
    80004838:	01813083          	ld	ra,24(sp)
    8000483c:	01013403          	ld	s0,16(sp)
    80004840:	00813483          	ld	s1,8(sp)
    80004844:	00013903          	ld	s2,0(sp)
    80004848:	02010113          	addi	sp,sp,32
    8000484c:	00008067          	ret
    80004850:	00001517          	auipc	a0,0x1
    80004854:	b2850513          	addi	a0,a0,-1240 # 80005378 <digits+0x48>
    80004858:	fffff097          	auipc	ra,0xfffff
    8000485c:	154080e7          	jalr	340(ra) # 800039ac <panic>
    80004860:	00001517          	auipc	a0,0x1
    80004864:	b0050513          	addi	a0,a0,-1280 # 80005360 <digits+0x30>
    80004868:	fffff097          	auipc	ra,0xfffff
    8000486c:	144080e7          	jalr	324(ra) # 800039ac <panic>

0000000080004870 <holding>:
    80004870:	00052783          	lw	a5,0(a0)
    80004874:	00079663          	bnez	a5,80004880 <holding+0x10>
    80004878:	00000513          	li	a0,0
    8000487c:	00008067          	ret
    80004880:	fe010113          	addi	sp,sp,-32
    80004884:	00813823          	sd	s0,16(sp)
    80004888:	00913423          	sd	s1,8(sp)
    8000488c:	00113c23          	sd	ra,24(sp)
    80004890:	02010413          	addi	s0,sp,32
    80004894:	01053483          	ld	s1,16(a0)
    80004898:	ffffe097          	auipc	ra,0xffffe
    8000489c:	754080e7          	jalr	1876(ra) # 80002fec <mycpu>
    800048a0:	01813083          	ld	ra,24(sp)
    800048a4:	01013403          	ld	s0,16(sp)
    800048a8:	40a48533          	sub	a0,s1,a0
    800048ac:	00153513          	seqz	a0,a0
    800048b0:	00813483          	ld	s1,8(sp)
    800048b4:	02010113          	addi	sp,sp,32
    800048b8:	00008067          	ret

00000000800048bc <push_off>:
    800048bc:	fe010113          	addi	sp,sp,-32
    800048c0:	00813823          	sd	s0,16(sp)
    800048c4:	00113c23          	sd	ra,24(sp)
    800048c8:	00913423          	sd	s1,8(sp)
    800048cc:	02010413          	addi	s0,sp,32
    800048d0:	100024f3          	csrr	s1,sstatus
    800048d4:	100027f3          	csrr	a5,sstatus
    800048d8:	ffd7f793          	andi	a5,a5,-3
    800048dc:	10079073          	csrw	sstatus,a5
    800048e0:	ffffe097          	auipc	ra,0xffffe
    800048e4:	70c080e7          	jalr	1804(ra) # 80002fec <mycpu>
    800048e8:	07852783          	lw	a5,120(a0)
    800048ec:	02078663          	beqz	a5,80004918 <push_off+0x5c>
    800048f0:	ffffe097          	auipc	ra,0xffffe
    800048f4:	6fc080e7          	jalr	1788(ra) # 80002fec <mycpu>
    800048f8:	07852783          	lw	a5,120(a0)
    800048fc:	01813083          	ld	ra,24(sp)
    80004900:	01013403          	ld	s0,16(sp)
    80004904:	0017879b          	addiw	a5,a5,1
    80004908:	06f52c23          	sw	a5,120(a0)
    8000490c:	00813483          	ld	s1,8(sp)
    80004910:	02010113          	addi	sp,sp,32
    80004914:	00008067          	ret
    80004918:	0014d493          	srli	s1,s1,0x1
    8000491c:	ffffe097          	auipc	ra,0xffffe
    80004920:	6d0080e7          	jalr	1744(ra) # 80002fec <mycpu>
    80004924:	0014f493          	andi	s1,s1,1
    80004928:	06952e23          	sw	s1,124(a0)
    8000492c:	fc5ff06f          	j	800048f0 <push_off+0x34>

0000000080004930 <pop_off>:
    80004930:	ff010113          	addi	sp,sp,-16
    80004934:	00813023          	sd	s0,0(sp)
    80004938:	00113423          	sd	ra,8(sp)
    8000493c:	01010413          	addi	s0,sp,16
    80004940:	ffffe097          	auipc	ra,0xffffe
    80004944:	6ac080e7          	jalr	1708(ra) # 80002fec <mycpu>
    80004948:	100027f3          	csrr	a5,sstatus
    8000494c:	0027f793          	andi	a5,a5,2
    80004950:	04079663          	bnez	a5,8000499c <pop_off+0x6c>
    80004954:	07852783          	lw	a5,120(a0)
    80004958:	02f05a63          	blez	a5,8000498c <pop_off+0x5c>
    8000495c:	fff7871b          	addiw	a4,a5,-1
    80004960:	06e52c23          	sw	a4,120(a0)
    80004964:	00071c63          	bnez	a4,8000497c <pop_off+0x4c>
    80004968:	07c52783          	lw	a5,124(a0)
    8000496c:	00078863          	beqz	a5,8000497c <pop_off+0x4c>
    80004970:	100027f3          	csrr	a5,sstatus
    80004974:	0027e793          	ori	a5,a5,2
    80004978:	10079073          	csrw	sstatus,a5
    8000497c:	00813083          	ld	ra,8(sp)
    80004980:	00013403          	ld	s0,0(sp)
    80004984:	01010113          	addi	sp,sp,16
    80004988:	00008067          	ret
    8000498c:	00001517          	auipc	a0,0x1
    80004990:	9ec50513          	addi	a0,a0,-1556 # 80005378 <digits+0x48>
    80004994:	fffff097          	auipc	ra,0xfffff
    80004998:	018080e7          	jalr	24(ra) # 800039ac <panic>
    8000499c:	00001517          	auipc	a0,0x1
    800049a0:	9c450513          	addi	a0,a0,-1596 # 80005360 <digits+0x30>
    800049a4:	fffff097          	auipc	ra,0xfffff
    800049a8:	008080e7          	jalr	8(ra) # 800039ac <panic>

00000000800049ac <push_on>:
    800049ac:	fe010113          	addi	sp,sp,-32
    800049b0:	00813823          	sd	s0,16(sp)
    800049b4:	00113c23          	sd	ra,24(sp)
    800049b8:	00913423          	sd	s1,8(sp)
    800049bc:	02010413          	addi	s0,sp,32
    800049c0:	100024f3          	csrr	s1,sstatus
    800049c4:	100027f3          	csrr	a5,sstatus
    800049c8:	0027e793          	ori	a5,a5,2
    800049cc:	10079073          	csrw	sstatus,a5
    800049d0:	ffffe097          	auipc	ra,0xffffe
    800049d4:	61c080e7          	jalr	1564(ra) # 80002fec <mycpu>
    800049d8:	07852783          	lw	a5,120(a0)
    800049dc:	02078663          	beqz	a5,80004a08 <push_on+0x5c>
    800049e0:	ffffe097          	auipc	ra,0xffffe
    800049e4:	60c080e7          	jalr	1548(ra) # 80002fec <mycpu>
    800049e8:	07852783          	lw	a5,120(a0)
    800049ec:	01813083          	ld	ra,24(sp)
    800049f0:	01013403          	ld	s0,16(sp)
    800049f4:	0017879b          	addiw	a5,a5,1
    800049f8:	06f52c23          	sw	a5,120(a0)
    800049fc:	00813483          	ld	s1,8(sp)
    80004a00:	02010113          	addi	sp,sp,32
    80004a04:	00008067          	ret
    80004a08:	0014d493          	srli	s1,s1,0x1
    80004a0c:	ffffe097          	auipc	ra,0xffffe
    80004a10:	5e0080e7          	jalr	1504(ra) # 80002fec <mycpu>
    80004a14:	0014f493          	andi	s1,s1,1
    80004a18:	06952e23          	sw	s1,124(a0)
    80004a1c:	fc5ff06f          	j	800049e0 <push_on+0x34>

0000000080004a20 <pop_on>:
    80004a20:	ff010113          	addi	sp,sp,-16
    80004a24:	00813023          	sd	s0,0(sp)
    80004a28:	00113423          	sd	ra,8(sp)
    80004a2c:	01010413          	addi	s0,sp,16
    80004a30:	ffffe097          	auipc	ra,0xffffe
    80004a34:	5bc080e7          	jalr	1468(ra) # 80002fec <mycpu>
    80004a38:	100027f3          	csrr	a5,sstatus
    80004a3c:	0027f793          	andi	a5,a5,2
    80004a40:	04078463          	beqz	a5,80004a88 <pop_on+0x68>
    80004a44:	07852783          	lw	a5,120(a0)
    80004a48:	02f05863          	blez	a5,80004a78 <pop_on+0x58>
    80004a4c:	fff7879b          	addiw	a5,a5,-1
    80004a50:	06f52c23          	sw	a5,120(a0)
    80004a54:	07853783          	ld	a5,120(a0)
    80004a58:	00079863          	bnez	a5,80004a68 <pop_on+0x48>
    80004a5c:	100027f3          	csrr	a5,sstatus
    80004a60:	ffd7f793          	andi	a5,a5,-3
    80004a64:	10079073          	csrw	sstatus,a5
    80004a68:	00813083          	ld	ra,8(sp)
    80004a6c:	00013403          	ld	s0,0(sp)
    80004a70:	01010113          	addi	sp,sp,16
    80004a74:	00008067          	ret
    80004a78:	00001517          	auipc	a0,0x1
    80004a7c:	92850513          	addi	a0,a0,-1752 # 800053a0 <digits+0x70>
    80004a80:	fffff097          	auipc	ra,0xfffff
    80004a84:	f2c080e7          	jalr	-212(ra) # 800039ac <panic>
    80004a88:	00001517          	auipc	a0,0x1
    80004a8c:	8f850513          	addi	a0,a0,-1800 # 80005380 <digits+0x50>
    80004a90:	fffff097          	auipc	ra,0xfffff
    80004a94:	f1c080e7          	jalr	-228(ra) # 800039ac <panic>

0000000080004a98 <__memset>:
    80004a98:	ff010113          	addi	sp,sp,-16
    80004a9c:	00813423          	sd	s0,8(sp)
    80004aa0:	01010413          	addi	s0,sp,16
    80004aa4:	1a060e63          	beqz	a2,80004c60 <__memset+0x1c8>
    80004aa8:	40a007b3          	neg	a5,a0
    80004aac:	0077f793          	andi	a5,a5,7
    80004ab0:	00778693          	addi	a3,a5,7
    80004ab4:	00b00813          	li	a6,11
    80004ab8:	0ff5f593          	andi	a1,a1,255
    80004abc:	fff6071b          	addiw	a4,a2,-1
    80004ac0:	1b06e663          	bltu	a3,a6,80004c6c <__memset+0x1d4>
    80004ac4:	1cd76463          	bltu	a4,a3,80004c8c <__memset+0x1f4>
    80004ac8:	1a078e63          	beqz	a5,80004c84 <__memset+0x1ec>
    80004acc:	00b50023          	sb	a1,0(a0)
    80004ad0:	00100713          	li	a4,1
    80004ad4:	1ae78463          	beq	a5,a4,80004c7c <__memset+0x1e4>
    80004ad8:	00b500a3          	sb	a1,1(a0)
    80004adc:	00200713          	li	a4,2
    80004ae0:	1ae78a63          	beq	a5,a4,80004c94 <__memset+0x1fc>
    80004ae4:	00b50123          	sb	a1,2(a0)
    80004ae8:	00300713          	li	a4,3
    80004aec:	18e78463          	beq	a5,a4,80004c74 <__memset+0x1dc>
    80004af0:	00b501a3          	sb	a1,3(a0)
    80004af4:	00400713          	li	a4,4
    80004af8:	1ae78263          	beq	a5,a4,80004c9c <__memset+0x204>
    80004afc:	00b50223          	sb	a1,4(a0)
    80004b00:	00500713          	li	a4,5
    80004b04:	1ae78063          	beq	a5,a4,80004ca4 <__memset+0x20c>
    80004b08:	00b502a3          	sb	a1,5(a0)
    80004b0c:	00700713          	li	a4,7
    80004b10:	18e79e63          	bne	a5,a4,80004cac <__memset+0x214>
    80004b14:	00b50323          	sb	a1,6(a0)
    80004b18:	00700e93          	li	t4,7
    80004b1c:	00859713          	slli	a4,a1,0x8
    80004b20:	00e5e733          	or	a4,a1,a4
    80004b24:	01059e13          	slli	t3,a1,0x10
    80004b28:	01c76e33          	or	t3,a4,t3
    80004b2c:	01859313          	slli	t1,a1,0x18
    80004b30:	006e6333          	or	t1,t3,t1
    80004b34:	02059893          	slli	a7,a1,0x20
    80004b38:	40f60e3b          	subw	t3,a2,a5
    80004b3c:	011368b3          	or	a7,t1,a7
    80004b40:	02859813          	slli	a6,a1,0x28
    80004b44:	0108e833          	or	a6,a7,a6
    80004b48:	03059693          	slli	a3,a1,0x30
    80004b4c:	003e589b          	srliw	a7,t3,0x3
    80004b50:	00d866b3          	or	a3,a6,a3
    80004b54:	03859713          	slli	a4,a1,0x38
    80004b58:	00389813          	slli	a6,a7,0x3
    80004b5c:	00f507b3          	add	a5,a0,a5
    80004b60:	00e6e733          	or	a4,a3,a4
    80004b64:	000e089b          	sext.w	a7,t3
    80004b68:	00f806b3          	add	a3,a6,a5
    80004b6c:	00e7b023          	sd	a4,0(a5)
    80004b70:	00878793          	addi	a5,a5,8
    80004b74:	fed79ce3          	bne	a5,a3,80004b6c <__memset+0xd4>
    80004b78:	ff8e7793          	andi	a5,t3,-8
    80004b7c:	0007871b          	sext.w	a4,a5
    80004b80:	01d787bb          	addw	a5,a5,t4
    80004b84:	0ce88e63          	beq	a7,a4,80004c60 <__memset+0x1c8>
    80004b88:	00f50733          	add	a4,a0,a5
    80004b8c:	00b70023          	sb	a1,0(a4)
    80004b90:	0017871b          	addiw	a4,a5,1
    80004b94:	0cc77663          	bgeu	a4,a2,80004c60 <__memset+0x1c8>
    80004b98:	00e50733          	add	a4,a0,a4
    80004b9c:	00b70023          	sb	a1,0(a4)
    80004ba0:	0027871b          	addiw	a4,a5,2
    80004ba4:	0ac77e63          	bgeu	a4,a2,80004c60 <__memset+0x1c8>
    80004ba8:	00e50733          	add	a4,a0,a4
    80004bac:	00b70023          	sb	a1,0(a4)
    80004bb0:	0037871b          	addiw	a4,a5,3
    80004bb4:	0ac77663          	bgeu	a4,a2,80004c60 <__memset+0x1c8>
    80004bb8:	00e50733          	add	a4,a0,a4
    80004bbc:	00b70023          	sb	a1,0(a4)
    80004bc0:	0047871b          	addiw	a4,a5,4
    80004bc4:	08c77e63          	bgeu	a4,a2,80004c60 <__memset+0x1c8>
    80004bc8:	00e50733          	add	a4,a0,a4
    80004bcc:	00b70023          	sb	a1,0(a4)
    80004bd0:	0057871b          	addiw	a4,a5,5
    80004bd4:	08c77663          	bgeu	a4,a2,80004c60 <__memset+0x1c8>
    80004bd8:	00e50733          	add	a4,a0,a4
    80004bdc:	00b70023          	sb	a1,0(a4)
    80004be0:	0067871b          	addiw	a4,a5,6
    80004be4:	06c77e63          	bgeu	a4,a2,80004c60 <__memset+0x1c8>
    80004be8:	00e50733          	add	a4,a0,a4
    80004bec:	00b70023          	sb	a1,0(a4)
    80004bf0:	0077871b          	addiw	a4,a5,7
    80004bf4:	06c77663          	bgeu	a4,a2,80004c60 <__memset+0x1c8>
    80004bf8:	00e50733          	add	a4,a0,a4
    80004bfc:	00b70023          	sb	a1,0(a4)
    80004c00:	0087871b          	addiw	a4,a5,8
    80004c04:	04c77e63          	bgeu	a4,a2,80004c60 <__memset+0x1c8>
    80004c08:	00e50733          	add	a4,a0,a4
    80004c0c:	00b70023          	sb	a1,0(a4)
    80004c10:	0097871b          	addiw	a4,a5,9
    80004c14:	04c77663          	bgeu	a4,a2,80004c60 <__memset+0x1c8>
    80004c18:	00e50733          	add	a4,a0,a4
    80004c1c:	00b70023          	sb	a1,0(a4)
    80004c20:	00a7871b          	addiw	a4,a5,10
    80004c24:	02c77e63          	bgeu	a4,a2,80004c60 <__memset+0x1c8>
    80004c28:	00e50733          	add	a4,a0,a4
    80004c2c:	00b70023          	sb	a1,0(a4)
    80004c30:	00b7871b          	addiw	a4,a5,11
    80004c34:	02c77663          	bgeu	a4,a2,80004c60 <__memset+0x1c8>
    80004c38:	00e50733          	add	a4,a0,a4
    80004c3c:	00b70023          	sb	a1,0(a4)
    80004c40:	00c7871b          	addiw	a4,a5,12
    80004c44:	00c77e63          	bgeu	a4,a2,80004c60 <__memset+0x1c8>
    80004c48:	00e50733          	add	a4,a0,a4
    80004c4c:	00b70023          	sb	a1,0(a4)
    80004c50:	00d7879b          	addiw	a5,a5,13
    80004c54:	00c7f663          	bgeu	a5,a2,80004c60 <__memset+0x1c8>
    80004c58:	00f507b3          	add	a5,a0,a5
    80004c5c:	00b78023          	sb	a1,0(a5)
    80004c60:	00813403          	ld	s0,8(sp)
    80004c64:	01010113          	addi	sp,sp,16
    80004c68:	00008067          	ret
    80004c6c:	00b00693          	li	a3,11
    80004c70:	e55ff06f          	j	80004ac4 <__memset+0x2c>
    80004c74:	00300e93          	li	t4,3
    80004c78:	ea5ff06f          	j	80004b1c <__memset+0x84>
    80004c7c:	00100e93          	li	t4,1
    80004c80:	e9dff06f          	j	80004b1c <__memset+0x84>
    80004c84:	00000e93          	li	t4,0
    80004c88:	e95ff06f          	j	80004b1c <__memset+0x84>
    80004c8c:	00000793          	li	a5,0
    80004c90:	ef9ff06f          	j	80004b88 <__memset+0xf0>
    80004c94:	00200e93          	li	t4,2
    80004c98:	e85ff06f          	j	80004b1c <__memset+0x84>
    80004c9c:	00400e93          	li	t4,4
    80004ca0:	e7dff06f          	j	80004b1c <__memset+0x84>
    80004ca4:	00500e93          	li	t4,5
    80004ca8:	e75ff06f          	j	80004b1c <__memset+0x84>
    80004cac:	00600e93          	li	t4,6
    80004cb0:	e6dff06f          	j	80004b1c <__memset+0x84>

0000000080004cb4 <__memmove>:
    80004cb4:	ff010113          	addi	sp,sp,-16
    80004cb8:	00813423          	sd	s0,8(sp)
    80004cbc:	01010413          	addi	s0,sp,16
    80004cc0:	0e060863          	beqz	a2,80004db0 <__memmove+0xfc>
    80004cc4:	fff6069b          	addiw	a3,a2,-1
    80004cc8:	0006881b          	sext.w	a6,a3
    80004ccc:	0ea5e863          	bltu	a1,a0,80004dbc <__memmove+0x108>
    80004cd0:	00758713          	addi	a4,a1,7
    80004cd4:	00a5e7b3          	or	a5,a1,a0
    80004cd8:	40a70733          	sub	a4,a4,a0
    80004cdc:	0077f793          	andi	a5,a5,7
    80004ce0:	00f73713          	sltiu	a4,a4,15
    80004ce4:	00174713          	xori	a4,a4,1
    80004ce8:	0017b793          	seqz	a5,a5
    80004cec:	00e7f7b3          	and	a5,a5,a4
    80004cf0:	10078863          	beqz	a5,80004e00 <__memmove+0x14c>
    80004cf4:	00900793          	li	a5,9
    80004cf8:	1107f463          	bgeu	a5,a6,80004e00 <__memmove+0x14c>
    80004cfc:	0036581b          	srliw	a6,a2,0x3
    80004d00:	fff8081b          	addiw	a6,a6,-1
    80004d04:	02081813          	slli	a6,a6,0x20
    80004d08:	01d85893          	srli	a7,a6,0x1d
    80004d0c:	00858813          	addi	a6,a1,8
    80004d10:	00058793          	mv	a5,a1
    80004d14:	00050713          	mv	a4,a0
    80004d18:	01088833          	add	a6,a7,a6
    80004d1c:	0007b883          	ld	a7,0(a5)
    80004d20:	00878793          	addi	a5,a5,8
    80004d24:	00870713          	addi	a4,a4,8
    80004d28:	ff173c23          	sd	a7,-8(a4)
    80004d2c:	ff0798e3          	bne	a5,a6,80004d1c <__memmove+0x68>
    80004d30:	ff867713          	andi	a4,a2,-8
    80004d34:	02071793          	slli	a5,a4,0x20
    80004d38:	0207d793          	srli	a5,a5,0x20
    80004d3c:	00f585b3          	add	a1,a1,a5
    80004d40:	40e686bb          	subw	a3,a3,a4
    80004d44:	00f507b3          	add	a5,a0,a5
    80004d48:	06e60463          	beq	a2,a4,80004db0 <__memmove+0xfc>
    80004d4c:	0005c703          	lbu	a4,0(a1)
    80004d50:	00e78023          	sb	a4,0(a5)
    80004d54:	04068e63          	beqz	a3,80004db0 <__memmove+0xfc>
    80004d58:	0015c603          	lbu	a2,1(a1)
    80004d5c:	00100713          	li	a4,1
    80004d60:	00c780a3          	sb	a2,1(a5)
    80004d64:	04e68663          	beq	a3,a4,80004db0 <__memmove+0xfc>
    80004d68:	0025c603          	lbu	a2,2(a1)
    80004d6c:	00200713          	li	a4,2
    80004d70:	00c78123          	sb	a2,2(a5)
    80004d74:	02e68e63          	beq	a3,a4,80004db0 <__memmove+0xfc>
    80004d78:	0035c603          	lbu	a2,3(a1)
    80004d7c:	00300713          	li	a4,3
    80004d80:	00c781a3          	sb	a2,3(a5)
    80004d84:	02e68663          	beq	a3,a4,80004db0 <__memmove+0xfc>
    80004d88:	0045c603          	lbu	a2,4(a1)
    80004d8c:	00400713          	li	a4,4
    80004d90:	00c78223          	sb	a2,4(a5)
    80004d94:	00e68e63          	beq	a3,a4,80004db0 <__memmove+0xfc>
    80004d98:	0055c603          	lbu	a2,5(a1)
    80004d9c:	00500713          	li	a4,5
    80004da0:	00c782a3          	sb	a2,5(a5)
    80004da4:	00e68663          	beq	a3,a4,80004db0 <__memmove+0xfc>
    80004da8:	0065c703          	lbu	a4,6(a1)
    80004dac:	00e78323          	sb	a4,6(a5)
    80004db0:	00813403          	ld	s0,8(sp)
    80004db4:	01010113          	addi	sp,sp,16
    80004db8:	00008067          	ret
    80004dbc:	02061713          	slli	a4,a2,0x20
    80004dc0:	02075713          	srli	a4,a4,0x20
    80004dc4:	00e587b3          	add	a5,a1,a4
    80004dc8:	f0f574e3          	bgeu	a0,a5,80004cd0 <__memmove+0x1c>
    80004dcc:	02069613          	slli	a2,a3,0x20
    80004dd0:	02065613          	srli	a2,a2,0x20
    80004dd4:	fff64613          	not	a2,a2
    80004dd8:	00e50733          	add	a4,a0,a4
    80004ddc:	00c78633          	add	a2,a5,a2
    80004de0:	fff7c683          	lbu	a3,-1(a5)
    80004de4:	fff78793          	addi	a5,a5,-1
    80004de8:	fff70713          	addi	a4,a4,-1
    80004dec:	00d70023          	sb	a3,0(a4)
    80004df0:	fec798e3          	bne	a5,a2,80004de0 <__memmove+0x12c>
    80004df4:	00813403          	ld	s0,8(sp)
    80004df8:	01010113          	addi	sp,sp,16
    80004dfc:	00008067          	ret
    80004e00:	02069713          	slli	a4,a3,0x20
    80004e04:	02075713          	srli	a4,a4,0x20
    80004e08:	00170713          	addi	a4,a4,1
    80004e0c:	00e50733          	add	a4,a0,a4
    80004e10:	00050793          	mv	a5,a0
    80004e14:	0005c683          	lbu	a3,0(a1)
    80004e18:	00178793          	addi	a5,a5,1
    80004e1c:	00158593          	addi	a1,a1,1
    80004e20:	fed78fa3          	sb	a3,-1(a5)
    80004e24:	fee798e3          	bne	a5,a4,80004e14 <__memmove+0x160>
    80004e28:	f89ff06f          	j	80004db0 <__memmove+0xfc>

0000000080004e2c <__putc>:
    80004e2c:	fe010113          	addi	sp,sp,-32
    80004e30:	00813823          	sd	s0,16(sp)
    80004e34:	00113c23          	sd	ra,24(sp)
    80004e38:	02010413          	addi	s0,sp,32
    80004e3c:	00050793          	mv	a5,a0
    80004e40:	fef40593          	addi	a1,s0,-17
    80004e44:	00100613          	li	a2,1
    80004e48:	00000513          	li	a0,0
    80004e4c:	fef407a3          	sb	a5,-17(s0)
    80004e50:	fffff097          	auipc	ra,0xfffff
    80004e54:	b3c080e7          	jalr	-1220(ra) # 8000398c <console_write>
    80004e58:	01813083          	ld	ra,24(sp)
    80004e5c:	01013403          	ld	s0,16(sp)
    80004e60:	02010113          	addi	sp,sp,32
    80004e64:	00008067          	ret

0000000080004e68 <__getc>:
    80004e68:	fe010113          	addi	sp,sp,-32
    80004e6c:	00813823          	sd	s0,16(sp)
    80004e70:	00113c23          	sd	ra,24(sp)
    80004e74:	02010413          	addi	s0,sp,32
    80004e78:	fe840593          	addi	a1,s0,-24
    80004e7c:	00100613          	li	a2,1
    80004e80:	00000513          	li	a0,0
    80004e84:	fffff097          	auipc	ra,0xfffff
    80004e88:	ae8080e7          	jalr	-1304(ra) # 8000396c <console_read>
    80004e8c:	fe844503          	lbu	a0,-24(s0)
    80004e90:	01813083          	ld	ra,24(sp)
    80004e94:	01013403          	ld	s0,16(sp)
    80004e98:	02010113          	addi	sp,sp,32
    80004e9c:	00008067          	ret

0000000080004ea0 <console_handler>:
    80004ea0:	fe010113          	addi	sp,sp,-32
    80004ea4:	00813823          	sd	s0,16(sp)
    80004ea8:	00113c23          	sd	ra,24(sp)
    80004eac:	00913423          	sd	s1,8(sp)
    80004eb0:	02010413          	addi	s0,sp,32
    80004eb4:	14202773          	csrr	a4,scause
    80004eb8:	100027f3          	csrr	a5,sstatus
    80004ebc:	0027f793          	andi	a5,a5,2
    80004ec0:	06079e63          	bnez	a5,80004f3c <console_handler+0x9c>
    80004ec4:	00074c63          	bltz	a4,80004edc <console_handler+0x3c>
    80004ec8:	01813083          	ld	ra,24(sp)
    80004ecc:	01013403          	ld	s0,16(sp)
    80004ed0:	00813483          	ld	s1,8(sp)
    80004ed4:	02010113          	addi	sp,sp,32
    80004ed8:	00008067          	ret
    80004edc:	0ff77713          	andi	a4,a4,255
    80004ee0:	00900793          	li	a5,9
    80004ee4:	fef712e3          	bne	a4,a5,80004ec8 <console_handler+0x28>
    80004ee8:	ffffe097          	auipc	ra,0xffffe
    80004eec:	6dc080e7          	jalr	1756(ra) # 800035c4 <plic_claim>
    80004ef0:	00a00793          	li	a5,10
    80004ef4:	00050493          	mv	s1,a0
    80004ef8:	02f50c63          	beq	a0,a5,80004f30 <console_handler+0x90>
    80004efc:	fc0506e3          	beqz	a0,80004ec8 <console_handler+0x28>
    80004f00:	00050593          	mv	a1,a0
    80004f04:	00000517          	auipc	a0,0x0
    80004f08:	3a450513          	addi	a0,a0,932 # 800052a8 <CONSOLE_STATUS+0x298>
    80004f0c:	fffff097          	auipc	ra,0xfffff
    80004f10:	afc080e7          	jalr	-1284(ra) # 80003a08 <__printf>
    80004f14:	01013403          	ld	s0,16(sp)
    80004f18:	01813083          	ld	ra,24(sp)
    80004f1c:	00048513          	mv	a0,s1
    80004f20:	00813483          	ld	s1,8(sp)
    80004f24:	02010113          	addi	sp,sp,32
    80004f28:	ffffe317          	auipc	t1,0xffffe
    80004f2c:	6d430067          	jr	1748(t1) # 800035fc <plic_complete>
    80004f30:	fffff097          	auipc	ra,0xfffff
    80004f34:	3e0080e7          	jalr	992(ra) # 80004310 <uartintr>
    80004f38:	fddff06f          	j	80004f14 <console_handler+0x74>
    80004f3c:	00000517          	auipc	a0,0x0
    80004f40:	46c50513          	addi	a0,a0,1132 # 800053a8 <digits+0x78>
    80004f44:	fffff097          	auipc	ra,0xfffff
    80004f48:	a68080e7          	jalr	-1432(ra) # 800039ac <panic>
	...
