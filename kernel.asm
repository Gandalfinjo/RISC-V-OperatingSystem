
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	fb013103          	ld	sp,-80(sp) # 80006fb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	20c030ef          	jal	ra,80003228 <start>

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
    80001084:	00006297          	auipc	t0,0x6
    80001088:	fa22be23          	sd	sp,-68(t0) # 80007040 <framePointer>

    call _ZN5Riscv11trapHandlerEv
    8000108c:	27d000ef          	jal	ra,80001b08 <_ZN5Riscv11trapHandlerEv>

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
}
    80001304:	00813403          	ld	s0,8(sp)
    80001308:	01010113          	addi	sp,sp,16
    8000130c:	00008067          	ret

0000000080001310 <_Z8sem_openPP9Semaphorej>:

int sem_open(sem_t* handle, unsigned init) {
    80001310:	ff010113          	addi	sp,sp,-16
    80001314:	00813423          	sd	s0,8(sp)
    80001318:	01010413          	addi	s0,sp,16
    int result;

    asm volatile("mv a2, %0" :: "r"((uint64)init));
    8000131c:	02059593          	slli	a1,a1,0x20
    80001320:	0205d593          	srli	a1,a1,0x20
    80001324:	00058613          	mv	a2,a1
    asm volatile("mv a1, %0" :: "r"((uint64)handle));
    80001328:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x21");
    8000132c:	02100513          	li	a0,33
    asm volatile("ecall");
    80001330:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    80001334:	00050513          	mv	a0,a0

    return result;
}
    80001338:	0005051b          	sext.w	a0,a0
    8000133c:	00813403          	ld	s0,8(sp)
    80001340:	01010113          	addi	sp,sp,16
    80001344:	00008067          	ret

0000000080001348 <_Z9sem_closeP9Semaphore>:

int sem_close(sem_t handle) {
    80001348:	ff010113          	addi	sp,sp,-16
    8000134c:	00813423          	sd	s0,8(sp)
    80001350:	01010413          	addi	s0,sp,16
    int result;

    asm volatile("mv a1, %0" :: "r"(handle));
    80001354:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x22");
    80001358:	02200513          	li	a0,34
    asm volatile("ecall");
    8000135c:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    80001360:	00050513          	mv	a0,a0

    return result;
}
    80001364:	0005051b          	sext.w	a0,a0
    80001368:	00813403          	ld	s0,8(sp)
    8000136c:	01010113          	addi	sp,sp,16
    80001370:	00008067          	ret

0000000080001374 <_Z8sem_waitP9Semaphore>:

int sem_wait(sem_t id) {
    80001374:	ff010113          	addi	sp,sp,-16
    80001378:	00813423          	sd	s0,8(sp)
    8000137c:	01010413          	addi	s0,sp,16
    int result;

    asm volatile("mv a1, %0" :: "r"(id));
    80001380:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x23");
    80001384:	02300513          	li	a0,35
    asm volatile("ecall");
    80001388:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    8000138c:	00050513          	mv	a0,a0

    return result;
}
    80001390:	0005051b          	sext.w	a0,a0
    80001394:	00813403          	ld	s0,8(sp)
    80001398:	01010113          	addi	sp,sp,16
    8000139c:	00008067          	ret

00000000800013a0 <_Z10sem_signalP9Semaphore>:

int sem_signal(sem_t id) {
    800013a0:	ff010113          	addi	sp,sp,-16
    800013a4:	00813423          	sd	s0,8(sp)
    800013a8:	01010413          	addi	s0,sp,16
    int result;

    asm volatile("mv a1, %0" :: "r"(id));
    800013ac:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x24");
    800013b0:	02400513          	li	a0,36
    asm volatile("ecall");
    800013b4:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800013b8:	00050513          	mv	a0,a0

    return result;
    800013bc:	0005051b          	sext.w	a0,a0
    800013c0:	00813403          	ld	s0,8(sp)
    800013c4:	01010113          	addi	sp,sp,16
    800013c8:	00008067          	ret

00000000800013cc <_ZN9Semaphore15createSemaphoreEm>:

#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"

Semaphore *Semaphore::createSemaphore(uint64 init) {
    800013cc:	fe010113          	addi	sp,sp,-32
    800013d0:	00113c23          	sd	ra,24(sp)
    800013d4:	00813823          	sd	s0,16(sp)
    800013d8:	00913423          	sd	s1,8(sp)
    800013dc:	02010413          	addi	s0,sp,32
    800013e0:	00050493          	mv	s1,a0

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    800013e4:	00100513          	li	a0,1
    800013e8:	00001097          	auipc	ra,0x1
    800013ec:	a0c080e7          	jalr	-1524(ra) # 80001df4 <_ZN15MemoryAllocator9mem_allocEm>
    void operator delete[](void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    explicit Semaphore(uint64 init) : val(init) {}
    800013f0:	00952023          	sw	s1,0(a0) # 1000 <_entry-0x7ffff000>
    800013f4:	00053423          	sd	zero,8(a0)
    800013f8:	00053823          	sd	zero,16(a0)
    return new Semaphore(init);
}
    800013fc:	01813083          	ld	ra,24(sp)
    80001400:	01013403          	ld	s0,16(sp)
    80001404:	00813483          	ld	s1,8(sp)
    80001408:	02010113          	addi	sp,sp,32
    8000140c:	00008067          	ret

0000000080001410 <_ZN9Semaphore3getEv>:

Thread* Semaphore::get() {
    80001410:	ff010113          	addi	sp,sp,-16
    80001414:	00813423          	sd	s0,8(sp)
    80001418:	01010413          	addi	s0,sp,16
    8000141c:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80001420:	00853503          	ld	a0,8(a0)
    80001424:	00050a63          	beqz	a0,80001438 <_ZN9Semaphore3getEv+0x28>

    Thread* thread = head;
    head = head->semaphoreNext;
    80001428:	04853703          	ld	a4,72(a0)
    8000142c:	00e7b423          	sd	a4,8(a5)

    if (!head) tail = nullptr;
    80001430:	00070a63          	beqz	a4,80001444 <_ZN9Semaphore3getEv+0x34>
    thread->semaphoreNext = nullptr;
    80001434:	04053423          	sd	zero,72(a0)

    return thread;
}
    80001438:	00813403          	ld	s0,8(sp)
    8000143c:	01010113          	addi	sp,sp,16
    80001440:	00008067          	ret
    if (!head) tail = nullptr;
    80001444:	0007b823          	sd	zero,16(a5)
    80001448:	fedff06f          	j	80001434 <_ZN9Semaphore3getEv+0x24>

000000008000144c <_ZN9Semaphore3putEP6Thread>:


void Semaphore::put(Thread *thread) {
    8000144c:	ff010113          	addi	sp,sp,-16
    80001450:	00813423          	sd	s0,8(sp)
    80001454:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    80001458:	00853783          	ld	a5,8(a0)
    8000145c:	00078e63          	beqz	a5,80001478 <_ZN9Semaphore3putEP6Thread+0x2c>
    else tail->semaphoreNext = thread;
    80001460:	01053783          	ld	a5,16(a0)
    80001464:	04b7b423          	sd	a1,72(a5)
    tail = thread;
    80001468:	00b53823          	sd	a1,16(a0)
}
    8000146c:	00813403          	ld	s0,8(sp)
    80001470:	01010113          	addi	sp,sp,16
    80001474:	00008067          	ret
    if (!head) head = thread;
    80001478:	00b53423          	sd	a1,8(a0)
    8000147c:	fedff06f          	j	80001468 <_ZN9Semaphore3putEP6Thread+0x1c>

0000000080001480 <_ZN9Semaphore4waitEv>:

void Semaphore::wait() {
    val--;
    80001480:	00052783          	lw	a5,0(a0)
    80001484:	fff7879b          	addiw	a5,a5,-1
    80001488:	00f52023          	sw	a5,0(a0)

    if (val < 0) {
    8000148c:	02079713          	slli	a4,a5,0x20
    80001490:	00074463          	bltz	a4,80001498 <_ZN9Semaphore4waitEv+0x18>
    80001494:	00008067          	ret
void Semaphore::wait() {
    80001498:	ff010113          	addi	sp,sp,-16
    8000149c:	00113423          	sd	ra,8(sp)
    800014a0:	00813023          	sd	s0,0(sp)
    800014a4:	01010413          	addi	s0,sp,16
        Thread::running->setState(BLOCKED);
    800014a8:	00006797          	auipc	a5,0x6
    800014ac:	b187b783          	ld	a5,-1256(a5) # 80006fc0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800014b0:	0007b583          	ld	a1,0(a5)
    void start();                       // prepare and put in the Scheduler
    void exit();                        // mark as finished (could be called from wrapper)
    static void wrapper();              // static function - entry which calls body(arg) and exit

    ThreadState getState() const { return state; }
    void setState(ThreadState s) { state = s; }
    800014b4:	00300793          	li	a5,3
    800014b8:	02f5ac23          	sw	a5,56(a1)
        put(Thread::running);
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	f90080e7          	jalr	-112(ra) # 8000144c <_ZN9Semaphore3putEP6Thread>
        Thread::dispatch();
    800014c4:	00000097          	auipc	ra,0x0
    800014c8:	3a0080e7          	jalr	928(ra) # 80001864 <_ZN6Thread8dispatchEv>
    }
}
    800014cc:	00813083          	ld	ra,8(sp)
    800014d0:	00013403          	ld	s0,0(sp)
    800014d4:	01010113          	addi	sp,sp,16
    800014d8:	00008067          	ret

00000000800014dc <_ZN9Semaphore6signalEv>:

void Semaphore::signal() {
    val++;
    800014dc:	00052783          	lw	a5,0(a0)
    800014e0:	0017879b          	addiw	a5,a5,1
    800014e4:	0007871b          	sext.w	a4,a5
    800014e8:	00f52023          	sw	a5,0(a0)

    if (val <= 0) {
    800014ec:	00e05463          	blez	a4,800014f4 <_ZN9Semaphore6signalEv+0x18>
    800014f0:	00008067          	ret
void Semaphore::signal() {
    800014f4:	ff010113          	addi	sp,sp,-16
    800014f8:	00113423          	sd	ra,8(sp)
    800014fc:	00813023          	sd	s0,0(sp)
    80001500:	01010413          	addi	s0,sp,16
        Thread* thread = get();
    80001504:	00000097          	auipc	ra,0x0
    80001508:	f0c080e7          	jalr	-244(ra) # 80001410 <_ZN9Semaphore3getEv>

        if (thread) {
    8000150c:	00050a63          	beqz	a0,80001520 <_ZN9Semaphore6signalEv+0x44>
    80001510:	00100793          	li	a5,1
    80001514:	02f52c23          	sw	a5,56(a0)
            thread->setState(READY);
            Scheduler::put(thread);
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	4b4080e7          	jalr	1204(ra) # 800019cc <_ZN9Scheduler3putEP6Thread>
        }
    }
}
    80001520:	00813083          	ld	ra,8(sp)
    80001524:	00013403          	ld	s0,0(sp)
    80001528:	01010113          	addi	sp,sp,16
    8000152c:	00008067          	ret

0000000080001530 <_ZN9Semaphore5closeEv>:

void Semaphore::close() {
    80001530:	fe010113          	addi	sp,sp,-32
    80001534:	00113c23          	sd	ra,24(sp)
    80001538:	00813823          	sd	s0,16(sp)
    8000153c:	00913423          	sd	s1,8(sp)
    80001540:	02010413          	addi	s0,sp,32
    80001544:	00050493          	mv	s1,a0
    while (head) {
    80001548:	0084b783          	ld	a5,8(s1)
    8000154c:	02078263          	beqz	a5,80001570 <_ZN9Semaphore5closeEv+0x40>
        Thread* thread = get();
    80001550:	00048513          	mv	a0,s1
    80001554:	00000097          	auipc	ra,0x0
    80001558:	ebc080e7          	jalr	-324(ra) # 80001410 <_ZN9Semaphore3getEv>
    8000155c:	00100793          	li	a5,1
    80001560:	02f52c23          	sw	a5,56(a0)
        thread->setState(READY);
        Scheduler::put(thread);
    80001564:	00000097          	auipc	ra,0x0
    80001568:	468080e7          	jalr	1128(ra) # 800019cc <_ZN9Scheduler3putEP6Thread>
    while (head) {
    8000156c:	fddff06f          	j	80001548 <_ZN9Semaphore5closeEv+0x18>
    }
    80001570:	01813083          	ld	ra,24(sp)
    80001574:	01013403          	ld	s0,16(sp)
    80001578:	00813483          	ld	s1,8(sp)
    8000157c:	02010113          	addi	sp,sp,32
    80001580:	00008067          	ret

0000000080001584 <_ZN6ThreadC1EPFvPvES0_S0_m>:
Thread::Thread(Body b, void* a, size_t stackSizeBytes)
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), schedulerNext(nullptr), semaphoreNext(nullptr) {
    allocateStack(stackSizeBytes);
}

Thread::Thread(Body b, void* a, void* externalStackBase, size_t externalStackSize)
    80001584:	ff010113          	addi	sp,sp,-16
    80001588:	00813423          	sd	s0,8(sp)
    8000158c:	01010413          	addi	s0,sp,16
    : id(staticId++), stack(nullptr), stackSize(0), body(b), args(a), state(NEW), schedulerNext(nullptr), semaphoreNext(nullptr) {
    80001590:	00006817          	auipc	a6,0x6
    80001594:	a9080813          	addi	a6,a6,-1392 # 80007020 <_ZN6Thread8staticIdE>
    80001598:	00082783          	lw	a5,0(a6)
    8000159c:	0017889b          	addiw	a7,a5,1
    800015a0:	01182023          	sw	a7,0(a6)
    800015a4:	00f52023          	sw	a5,0(a0)
    800015a8:	02b53423          	sd	a1,40(a0)
    800015ac:	02c53823          	sd	a2,48(a0)
    800015b0:	02052c23          	sw	zero,56(a0)
    800015b4:	04053023          	sd	zero,64(a0)
    800015b8:	04053423          	sd	zero,72(a0)
    stack = externalStackBase;
    800015bc:	00d53423          	sd	a3,8(a0)
    stackSize = externalStackSize;
    800015c0:	00e53823          	sd	a4,16(a0)
}
    800015c4:	00813403          	ld	s0,8(sp)
    800015c8:	01010113          	addi	sp,sp,16
    800015cc:	00008067          	ret

00000000800015d0 <_ZN6ThreadD1Ev>:

Thread::~Thread() {
    if (stack) {
    800015d0:	00853503          	ld	a0,8(a0)
    800015d4:	02050663          	beqz	a0,80001600 <_ZN6ThreadD1Ev+0x30>
Thread::~Thread() {
    800015d8:	ff010113          	addi	sp,sp,-16
    800015dc:	00113423          	sd	ra,8(sp)
    800015e0:	00813023          	sd	s0,0(sp)
    800015e4:	01010413          	addi	s0,sp,16
        MemoryAllocator::mem_free(stack);
    800015e8:	00001097          	auipc	ra,0x1
    800015ec:	90c080e7          	jalr	-1780(ra) # 80001ef4 <_ZN15MemoryAllocator8mem_freeEPv>
        stack = nullptr;
    }
}
    800015f0:	00813083          	ld	ra,8(sp)
    800015f4:	00013403          	ld	s0,0(sp)
    800015f8:	01010113          	addi	sp,sp,16
    800015fc:	00008067          	ret
    80001600:	00008067          	ret

0000000080001604 <_ZN6Thread12createThreadEPFvPvES0_S0_m>:

Thread* Thread::createThread(Body b, void* a, size_t stackSizeBytes) {
    return new Thread(b, a, stackSizeBytes);
}

Thread* Thread::createThread(Body b, void* a, void* externalStackBase, size_t externalStackSize) {
    80001604:	fc010113          	addi	sp,sp,-64
    80001608:	02113c23          	sd	ra,56(sp)
    8000160c:	02813823          	sd	s0,48(sp)
    80001610:	02913423          	sd	s1,40(sp)
    80001614:	03213023          	sd	s2,32(sp)
    80001618:	01313c23          	sd	s3,24(sp)
    8000161c:	01413823          	sd	s4,16(sp)
    80001620:	01513423          	sd	s5,8(sp)
    80001624:	04010413          	addi	s0,sp,64
    80001628:	00050913          	mv	s2,a0
    8000162c:	00058993          	mv	s3,a1
    80001630:	00060a13          	mv	s4,a2
    80001634:	00068a93          	mv	s5,a3

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    80001638:	00200513          	li	a0,2
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	7b8080e7          	jalr	1976(ra) # 80001df4 <_ZN15MemoryAllocator9mem_allocEm>
    80001644:	00050493          	mv	s1,a0
    return new Thread(b, a, externalStackBase, externalStackSize);
    80001648:	000a8713          	mv	a4,s5
    8000164c:	000a0693          	mv	a3,s4
    80001650:	00098613          	mv	a2,s3
    80001654:	00090593          	mv	a1,s2
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	f2c080e7          	jalr	-212(ra) # 80001584 <_ZN6ThreadC1EPFvPvES0_S0_m>
}
    80001660:	00048513          	mv	a0,s1
    80001664:	03813083          	ld	ra,56(sp)
    80001668:	03013403          	ld	s0,48(sp)
    8000166c:	02813483          	ld	s1,40(sp)
    80001670:	02013903          	ld	s2,32(sp)
    80001674:	01813983          	ld	s3,24(sp)
    80001678:	01013a03          	ld	s4,16(sp)
    8000167c:	00813a83          	ld	s5,8(sp)
    80001680:	04010113          	addi	sp,sp,64
    80001684:	00008067          	ret

0000000080001688 <_ZN6Thread13allocateStackEm>:

void Thread::allocateStack(size_t bytes) {
    80001688:	fe010113          	addi	sp,sp,-32
    8000168c:	00113c23          	sd	ra,24(sp)
    80001690:	00813823          	sd	s0,16(sp)
    80001694:	00913423          	sd	s1,8(sp)
    80001698:	01213023          	sd	s2,0(sp)
    8000169c:	02010413          	addi	s0,sp,32
    800016a0:	00050913          	mv	s2,a0
    size_t blocks = bytes / MEM_BLOCK_SIZE;
    800016a4:	0065d493          	srli	s1,a1,0x6
    if (bytes % MEM_BLOCK_SIZE != 0) blocks++;
    800016a8:	03f5f593          	andi	a1,a1,63
    800016ac:	00058463          	beqz	a1,800016b4 <_ZN6Thread13allocateStackEm+0x2c>
    800016b0:	00148493          	addi	s1,s1,1

    stack = MemoryAllocator::mem_alloc(blocks);
    800016b4:	00048513          	mv	a0,s1
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	73c080e7          	jalr	1852(ra) # 80001df4 <_ZN15MemoryAllocator9mem_allocEm>
    800016c0:	00a93423          	sd	a0,8(s2)
    stackSize = blocks * MEM_BLOCK_SIZE;
    800016c4:	00649493          	slli	s1,s1,0x6
    800016c8:	00993823          	sd	s1,16(s2)
}
    800016cc:	01813083          	ld	ra,24(sp)
    800016d0:	01013403          	ld	s0,16(sp)
    800016d4:	00813483          	ld	s1,8(sp)
    800016d8:	00013903          	ld	s2,0(sp)
    800016dc:	02010113          	addi	sp,sp,32
    800016e0:	00008067          	ret

00000000800016e4 <_ZN6ThreadC1EPFvPvES0_m>:
Thread::Thread(Body b, void* a, size_t stackSizeBytes)
    800016e4:	ff010113          	addi	sp,sp,-16
    800016e8:	00113423          	sd	ra,8(sp)
    800016ec:	00813023          	sd	s0,0(sp)
    800016f0:	01010413          	addi	s0,sp,16
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), schedulerNext(nullptr), semaphoreNext(nullptr) {
    800016f4:	00006817          	auipc	a6,0x6
    800016f8:	92c80813          	addi	a6,a6,-1748 # 80007020 <_ZN6Thread8staticIdE>
    800016fc:	00082703          	lw	a4,0(a6)
    80001700:	0017089b          	addiw	a7,a4,1
    80001704:	01182023          	sw	a7,0(a6)
    80001708:	00e52023          	sw	a4,0(a0)
    8000170c:	00053423          	sd	zero,8(a0)
    80001710:	00d53823          	sd	a3,16(a0)
    80001714:	02b53423          	sd	a1,40(a0)
    80001718:	02c53823          	sd	a2,48(a0)
    8000171c:	02052c23          	sw	zero,56(a0)
    80001720:	04053023          	sd	zero,64(a0)
    80001724:	04053423          	sd	zero,72(a0)
    allocateStack(stackSizeBytes);
    80001728:	00068593          	mv	a1,a3
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	f5c080e7          	jalr	-164(ra) # 80001688 <_ZN6Thread13allocateStackEm>
}
    80001734:	00813083          	ld	ra,8(sp)
    80001738:	00013403          	ld	s0,0(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret

0000000080001744 <_ZN6Thread12createThreadEPFvPvES0_m>:
Thread* Thread::createThread(Body b, void* a, size_t stackSizeBytes) {
    80001744:	fd010113          	addi	sp,sp,-48
    80001748:	02113423          	sd	ra,40(sp)
    8000174c:	02813023          	sd	s0,32(sp)
    80001750:	00913c23          	sd	s1,24(sp)
    80001754:	01213823          	sd	s2,16(sp)
    80001758:	01313423          	sd	s3,8(sp)
    8000175c:	01413023          	sd	s4,0(sp)
    80001760:	03010413          	addi	s0,sp,48
    80001764:	00050913          	mv	s2,a0
    80001768:	00058993          	mv	s3,a1
    8000176c:	00060a13          	mv	s4,a2
    80001770:	00200513          	li	a0,2
    80001774:	00000097          	auipc	ra,0x0
    80001778:	680080e7          	jalr	1664(ra) # 80001df4 <_ZN15MemoryAllocator9mem_allocEm>
    8000177c:	00050493          	mv	s1,a0
    return new Thread(b, a, stackSizeBytes);
    80001780:	000a0693          	mv	a3,s4
    80001784:	00098613          	mv	a2,s3
    80001788:	00090593          	mv	a1,s2
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	f58080e7          	jalr	-168(ra) # 800016e4 <_ZN6ThreadC1EPFvPvES0_m>
    80001794:	0200006f          	j	800017b4 <_ZN6Thread12createThreadEPFvPvES0_m+0x70>
    80001798:	00050913          	mv	s2,a0
    }

    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    8000179c:	00048513          	mv	a0,s1
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	754080e7          	jalr	1876(ra) # 80001ef4 <_ZN15MemoryAllocator8mem_freeEPv>
    800017a8:	00090513          	mv	a0,s2
    800017ac:	00007097          	auipc	ra,0x7
    800017b0:	98c080e7          	jalr	-1652(ra) # 80008138 <_Unwind_Resume>
}
    800017b4:	00048513          	mv	a0,s1
    800017b8:	02813083          	ld	ra,40(sp)
    800017bc:	02013403          	ld	s0,32(sp)
    800017c0:	01813483          	ld	s1,24(sp)
    800017c4:	01013903          	ld	s2,16(sp)
    800017c8:	00813983          	ld	s3,8(sp)
    800017cc:	00013a03          	ld	s4,0(sp)
    800017d0:	03010113          	addi	sp,sp,48
    800017d4:	00008067          	ret

00000000800017d8 <_ZN6Thread5startEv>:

void Thread::start() {
    if (state != NEW) return;
    800017d8:	03852783          	lw	a5,56(a0)
    800017dc:	00078463          	beqz	a5,800017e4 <_ZN6Thread5startEv+0xc>
    800017e0:	00008067          	ret
void Thread::start() {
    800017e4:	fe010113          	addi	sp,sp,-32
    800017e8:	00113c23          	sd	ra,24(sp)
    800017ec:	00813823          	sd	s0,16(sp)
    800017f0:	00913423          	sd	s1,8(sp)
    800017f4:	02010413          	addi	s0,sp,32
    800017f8:	00050493          	mv	s1,a0

    void* stackTop = (char*)stack + stackSize;
    800017fc:	00853603          	ld	a2,8(a0)
    80001800:	01053783          	ld	a5,16(a0)
    initContext(&context, wrapper, stackTop);
    80001804:	00f60633          	add	a2,a2,a5
    80001808:	00000597          	auipc	a1,0x0
    8000180c:	12c58593          	addi	a1,a1,300 # 80001934 <_ZN6Thread7wrapperEv>
    80001810:	01850513          	addi	a0,a0,24
    80001814:	00000097          	auipc	ra,0x0
    80001818:	920080e7          	jalr	-1760(ra) # 80001134 <_ZN6Thread11initContextEPNS_7ContextEPFvvEPv>
    state = READY;
    8000181c:	00100793          	li	a5,1
    80001820:	02f4ac23          	sw	a5,56(s1)
    Scheduler::put(this);
    80001824:	00048513          	mv	a0,s1
    80001828:	00000097          	auipc	ra,0x0
    8000182c:	1a4080e7          	jalr	420(ra) # 800019cc <_ZN9Scheduler3putEP6Thread>
}
    80001830:	01813083          	ld	ra,24(sp)
    80001834:	01013403          	ld	s0,16(sp)
    80001838:	00813483          	ld	s1,8(sp)
    8000183c:	02010113          	addi	sp,sp,32
    80001840:	00008067          	ret

0000000080001844 <_ZN6Thread4exitEv>:

void Thread::exit() {
    80001844:	ff010113          	addi	sp,sp,-16
    80001848:	00813423          	sd	s0,8(sp)
    8000184c:	01010413          	addi	s0,sp,16
    state = FINISHED;
    80001850:	00400793          	li	a5,4
    80001854:	02f52c23          	sw	a5,56(a0)
}
    80001858:	00813403          	ld	s0,8(sp)
    8000185c:	01010113          	addi	sp,sp,16
    80001860:	00008067          	ret

0000000080001864 <_ZN6Thread8dispatchEv>:
    running->body(running->args);
    running->exit();
    yield();
}

void Thread::dispatch() {
    80001864:	fe010113          	addi	sp,sp,-32
    80001868:	00113c23          	sd	ra,24(sp)
    8000186c:	00813823          	sd	s0,16(sp)
    80001870:	00913423          	sd	s1,8(sp)
    80001874:	02010413          	addi	s0,sp,32
    Thread* old = running;
    80001878:	00005497          	auipc	s1,0x5
    8000187c:	7b04b483          	ld	s1,1968(s1) # 80007028 <_ZN6Thread7runningE>

    if (old && old->state != FINISHED) {
    80001880:	00048863          	beqz	s1,80001890 <_ZN6Thread8dispatchEv+0x2c>
    80001884:	0384a703          	lw	a4,56(s1)
    80001888:	00400793          	li	a5,4
    8000188c:	04f71e63          	bne	a4,a5,800018e8 <_ZN6Thread8dispatchEv+0x84>
        old->state = READY;
        Scheduler::put(old);
    }

    running = Scheduler::get();
    80001890:	00000097          	auipc	ra,0x0
    80001894:	0f8080e7          	jalr	248(ra) # 80001988 <_ZN9Scheduler3getEv>
    80001898:	00005797          	auipc	a5,0x5
    8000189c:	78a7b823          	sd	a0,1936(a5) # 80007028 <_ZN6Thread7runningE>
    if (!running) return;
    800018a0:	02050a63          	beqz	a0,800018d4 <_ZN6Thread8dispatchEv+0x70>

    running->state = RUNNING;
    800018a4:	00200793          	li	a5,2
    800018a8:	02f52c23          	sw	a5,56(a0)

    if (old && old->state == FINISHED) {
    800018ac:	00048863          	beqz	s1,800018bc <_ZN6Thread8dispatchEv+0x58>
    800018b0:	0384a703          	lw	a4,56(s1)
    800018b4:	00400793          	li	a5,4
    800018b8:	04f70463          	beq	a4,a5,80001900 <_ZN6Thread8dispatchEv+0x9c>
        MemoryAllocator::mem_free(old->stack);
        old->stack = nullptr;
    }

    contextSwitch(&old->context, &running->context);
    800018bc:	00005597          	auipc	a1,0x5
    800018c0:	76c5b583          	ld	a1,1900(a1) # 80007028 <_ZN6Thread7runningE>
    800018c4:	01858593          	addi	a1,a1,24
    800018c8:	01848513          	addi	a0,s1,24
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	854080e7          	jalr	-1964(ra) # 80001120 <_ZN6Thread13contextSwitchEPNS_7ContextES1_>
}
    800018d4:	01813083          	ld	ra,24(sp)
    800018d8:	01013403          	ld	s0,16(sp)
    800018dc:	00813483          	ld	s1,8(sp)
    800018e0:	02010113          	addi	sp,sp,32
    800018e4:	00008067          	ret
        old->state = READY;
    800018e8:	00100793          	li	a5,1
    800018ec:	02f4ac23          	sw	a5,56(s1)
        Scheduler::put(old);
    800018f0:	00048513          	mv	a0,s1
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	0d8080e7          	jalr	216(ra) # 800019cc <_ZN9Scheduler3putEP6Thread>
    800018fc:	f95ff06f          	j	80001890 <_ZN6Thread8dispatchEv+0x2c>
        MemoryAllocator::mem_free(old->stack);
    80001900:	0084b503          	ld	a0,8(s1)
    80001904:	00000097          	auipc	ra,0x0
    80001908:	5f0080e7          	jalr	1520(ra) # 80001ef4 <_ZN15MemoryAllocator8mem_freeEPv>
        old->stack = nullptr;
    8000190c:	0004b423          	sd	zero,8(s1)
    80001910:	fadff06f          	j	800018bc <_ZN6Thread8dispatchEv+0x58>

0000000080001914 <_ZN6Thread5yieldEv>:

void Thread::yield() {
    80001914:	ff010113          	addi	sp,sp,-16
    80001918:	00813423          	sd	s0,8(sp)
    8000191c:	01010413          	addi	s0,sp,16
    asm volatile ("li a0, 0x13");
    80001920:	01300513          	li	a0,19
    asm volatile ("ecall");
    80001924:	00000073          	ecall
    80001928:	00813403          	ld	s0,8(sp)
    8000192c:	01010113          	addi	sp,sp,16
    80001930:	00008067          	ret

0000000080001934 <_ZN6Thread7wrapperEv>:
void Thread::wrapper() {
    80001934:	fe010113          	addi	sp,sp,-32
    80001938:	00113c23          	sd	ra,24(sp)
    8000193c:	00813823          	sd	s0,16(sp)
    80001940:	00913423          	sd	s1,8(sp)
    80001944:	02010413          	addi	s0,sp,32
    running->body(running->args);
    80001948:	00005497          	auipc	s1,0x5
    8000194c:	6d848493          	addi	s1,s1,1752 # 80007020 <_ZN6Thread8staticIdE>
    80001950:	0084b783          	ld	a5,8(s1)
    80001954:	0287b703          	ld	a4,40(a5)
    80001958:	0307b503          	ld	a0,48(a5)
    8000195c:	000700e7          	jalr	a4
    running->exit();
    80001960:	0084b503          	ld	a0,8(s1)
    80001964:	00000097          	auipc	ra,0x0
    80001968:	ee0080e7          	jalr	-288(ra) # 80001844 <_ZN6Thread4exitEv>
    yield();
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	fa8080e7          	jalr	-88(ra) # 80001914 <_ZN6Thread5yieldEv>
}
    80001974:	01813083          	ld	ra,24(sp)
    80001978:	01013403          	ld	s0,16(sp)
    8000197c:	00813483          	ld	s1,8(sp)
    80001980:	02010113          	addi	sp,sp,32
    80001984:	00008067          	ret

0000000080001988 <_ZN9Scheduler3getEv>:
#include "../h/Thread.hpp"

Thread* Scheduler::head = nullptr;
Thread* Scheduler::tail = nullptr;

Thread* Scheduler::get() {
    80001988:	ff010113          	addi	sp,sp,-16
    8000198c:	00813423          	sd	s0,8(sp)
    80001990:	01010413          	addi	s0,sp,16
    if (!head) return nullptr;
    80001994:	00005517          	auipc	a0,0x5
    80001998:	69c53503          	ld	a0,1692(a0) # 80007030 <_ZN9Scheduler4headE>
    8000199c:	00050c63          	beqz	a0,800019b4 <_ZN9Scheduler3getEv+0x2c>

    Thread* thread = head;
    head = head->schedulerNext;
    800019a0:	04053783          	ld	a5,64(a0)
    800019a4:	00005717          	auipc	a4,0x5
    800019a8:	68f73623          	sd	a5,1676(a4) # 80007030 <_ZN9Scheduler4headE>

    if (!head) tail = nullptr;
    800019ac:	00078a63          	beqz	a5,800019c0 <_ZN9Scheduler3getEv+0x38>
    thread->schedulerNext = nullptr;
    800019b0:	04053023          	sd	zero,64(a0)

    return thread;
}
    800019b4:	00813403          	ld	s0,8(sp)
    800019b8:	01010113          	addi	sp,sp,16
    800019bc:	00008067          	ret
    if (!head) tail = nullptr;
    800019c0:	00005797          	auipc	a5,0x5
    800019c4:	6607bc23          	sd	zero,1656(a5) # 80007038 <_ZN9Scheduler4tailE>
    800019c8:	fe9ff06f          	j	800019b0 <_ZN9Scheduler3getEv+0x28>

00000000800019cc <_ZN9Scheduler3putEP6Thread>:

void Scheduler::put(Thread* thread) {
    800019cc:	ff010113          	addi	sp,sp,-16
    800019d0:	00813423          	sd	s0,8(sp)
    800019d4:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    800019d8:	00005797          	auipc	a5,0x5
    800019dc:	6587b783          	ld	a5,1624(a5) # 80007030 <_ZN9Scheduler4headE>
    800019e0:	02078263          	beqz	a5,80001a04 <_ZN9Scheduler3putEP6Thread+0x38>
    else tail->schedulerNext = thread;
    800019e4:	00005797          	auipc	a5,0x5
    800019e8:	6547b783          	ld	a5,1620(a5) # 80007038 <_ZN9Scheduler4tailE>
    800019ec:	04a7b023          	sd	a0,64(a5)
    tail = thread;
    800019f0:	00005797          	auipc	a5,0x5
    800019f4:	64a7b423          	sd	a0,1608(a5) # 80007038 <_ZN9Scheduler4tailE>
}
    800019f8:	00813403          	ld	s0,8(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret
    if (!head) head = thread;
    80001a04:	00005797          	auipc	a5,0x5
    80001a08:	62a7b623          	sd	a0,1580(a5) # 80007030 <_ZN9Scheduler4headE>
    80001a0c:	fe5ff06f          	j	800019f0 <_ZN9Scheduler3putEP6Thread+0x24>

0000000080001a10 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80001a10:	ff010113          	addi	sp,sp,-16
    80001a14:	00813423          	sd	s0,8(sp)
    80001a18:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80001a1c:	00005517          	auipc	a0,0x5
    80001a20:	61453503          	ld	a0,1556(a0) # 80007030 <_ZN9Scheduler4headE>
    80001a24:	00153513          	seqz	a0,a0
    80001a28:	00813403          	ld	s0,8(sp)
    80001a2c:	01010113          	addi	sp,sp,16
    80001a30:	00008067          	ret

0000000080001a34 <_Z11userWrapperPv>:
#include "../h/Thread.hpp"

uint64 framePointer;

void userMain();
void userWrapper(void* arg) {
    80001a34:	ff010113          	addi	sp,sp,-16
    80001a38:	00113423          	sd	ra,8(sp)
    80001a3c:	00813023          	sd	s0,0(sp)
    80001a40:	01010413          	addi	s0,sp,16
    userMain();
    80001a44:	00001097          	auipc	ra,0x1
    80001a48:	e94080e7          	jalr	-364(ra) # 800028d8 <_Z8userMainv>
}
    80001a4c:	00813083          	ld	ra,8(sp)
    80001a50:	00013403          	ld	s0,0(sp)
    80001a54:	01010113          	addi	sp,sp,16
    80001a58:	00008067          	ret

0000000080001a5c <main>:
//         sem_signal(sem);
//         Thread::yield();
//     }
// }

void main() {
    80001a5c:	fe010113          	addi	sp,sp,-32
    80001a60:	00113c23          	sd	ra,24(sp)
    80001a64:	00813823          	sd	s0,16(sp)
    80001a68:	02010413          	addi	s0,sp,32
    MemoryAllocator::initHeap();
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	338080e7          	jalr	824(ra) # 80001da4 <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	070080e7          	jalr	112(ra) # 80001ae4 <_ZN5Riscv16setupTrapHandlerEv>

    thread_t mainThread, userBody;

    mainThread = Thread::createThread(nullptr, nullptr);
    80001a7c:	00001637          	lui	a2,0x1
    80001a80:	00000593          	li	a1,0
    80001a84:	00000513          	li	a0,0
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	cbc080e7          	jalr	-836(ra) # 80001744 <_ZN6Thread12createThreadEPFvPvES0_m>
    Thread::running = mainThread;
    80001a90:	00005797          	auipc	a5,0x5
    80001a94:	5307b783          	ld	a5,1328(a5) # 80006fc0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a98:	00a7b023          	sd	a0,0(a5)
    void setState(ThreadState s) { state = s; }
    80001a9c:	00200793          	li	a5,2
    80001aa0:	02f52c23          	sw	a5,56(a0)
    mainThread->setState(RUNNING);

    thread_create(&userBody, &userWrapper, nullptr);
    80001aa4:	00000613          	li	a2,0
    80001aa8:	00000597          	auipc	a1,0x0
    80001aac:	f8c58593          	addi	a1,a1,-116 # 80001a34 <_Z11userWrapperPv>
    80001ab0:	fe840513          	addi	a0,s0,-24
    80001ab4:	fffff097          	auipc	ra,0xfffff
    80001ab8:	768080e7          	jalr	1896(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>

    while (!Scheduler::isEmpty()) {
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	f54080e7          	jalr	-172(ra) # 80001a10 <_ZN9Scheduler7isEmptyEv>
    80001ac4:	00051863          	bnez	a0,80001ad4 <main+0x78>
        Thread::yield();
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	e4c080e7          	jalr	-436(ra) # 80001914 <_ZN6Thread5yieldEv>
    80001ad0:	fedff06f          	j	80001abc <main+0x60>
    // while (!Scheduler::isEmpty()) {
    //     Thread::yield();
    // }
    //
    // sem_close(sem);
    80001ad4:	01813083          	ld	ra,24(sp)
    80001ad8:	01013403          	ld	s0,16(sp)
    80001adc:	02010113          	addi	sp,sp,32
    80001ae0:	00008067          	ret

0000000080001ae4 <_ZN5Riscv16setupTrapHandlerEv>:
constexpr uint64 SEM_OPEN = 0x21;
constexpr uint64 SEM_CLOSE = 0x22;
constexpr uint64 SEM_WAIT = 0x23;
constexpr uint64 SEM_SIGNAL = 0x24;

void Riscv::setupTrapHandler() {
    80001ae4:	ff010113          	addi	sp,sp,-16
    80001ae8:	00813423          	sd	s0,8(sp)
    80001aec:	01010413          	addi	s0,sp,16
    unsigned long addr = (unsigned long)&trap_handler;
    80001af0:	00005797          	auipc	a5,0x5
    80001af4:	4c87b783          	ld	a5,1224(a5) # 80006fb8 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(addr));
    80001af8:	10579073          	csrw	stvec,a5
}
    80001afc:	00813403          	ld	s0,8(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret

0000000080001b08 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001b08:	fe010113          	addi	sp,sp,-32
    80001b0c:	00113c23          	sd	ra,24(sp)
    80001b10:	00813823          	sd	s0,16(sp)
    80001b14:	00913423          	sd	s1,8(sp)
    80001b18:	01213023          	sd	s2,0(sp)
    80001b1c:	02010413          	addi	s0,sp,32
    uint64 scause = 0, sepc = 0;
    asm volatile("csrr %0, scause" : "=r"(scause));
    80001b20:	14202773          	csrr	a4,scause
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    80001b24:	141024f3          	csrr	s1,sepc

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    80001b28:	fff00793          	li	a5,-1
    80001b2c:	0017d793          	srli	a5,a5,0x1
    80001b30:	00f777b3          	and	a5,a4,a5

    if (interrupt == 0 && (cause == 8 || cause == 9)) {
    80001b34:	00074863          	bltz	a4,80001b44 <_ZN5Riscv11trapHandlerEv+0x3c>
    80001b38:	ff878793          	addi	a5,a5,-8
    80001b3c:	00100713          	li	a4,1
    80001b40:	00f77e63          	bgeu	a4,a5,80001b5c <_ZN5Riscv11trapHandlerEv+0x54>
        }

        sepc += 4;
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    }
    80001b44:	01813083          	ld	ra,24(sp)
    80001b48:	01013403          	ld	s0,16(sp)
    80001b4c:	00813483          	ld	s1,8(sp)
    80001b50:	00013903          	ld	s2,0(sp)
    80001b54:	02010113          	addi	sp,sp,32
    80001b58:	00008067          	ret
        asm volatile("mv %0, a0" : "=r"(code));
    80001b5c:	00050793          	mv	a5,a0
        switch (code) {
    80001b60:	02400713          	li	a4,36
    80001b64:	04f76463          	bltu	a4,a5,80001bac <_ZN5Riscv11trapHandlerEv+0xa4>
    80001b68:	00279793          	slli	a5,a5,0x2
    80001b6c:	00004717          	auipc	a4,0x4
    80001b70:	4b470713          	addi	a4,a4,1204 # 80006020 <CONSOLE_STATUS+0x10>
    80001b74:	00e787b3          	add	a5,a5,a4
    80001b78:	0007a783          	lw	a5,0(a5)
    80001b7c:	00e787b3          	add	a5,a5,a4
    80001b80:	00078067          	jr	a5
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001b84:	00005917          	auipc	s2,0x5
    80001b88:	44c93903          	ld	s2,1100(s2) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b8c:	00093783          	ld	a5,0(s2)
    80001b90:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(size));
    80001b94:	00058513          	mv	a0,a1
                void* ptr = MemoryAllocator::mem_alloc(size);
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	25c080e7          	jalr	604(ra) # 80001df4 <_ZN15MemoryAllocator9mem_allocEm>
                asm volatile("mv a0, %0" :: "r"(ptr));
    80001ba0:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001ba4:	00093783          	ld	a5,0(s2)
    80001ba8:	04a7b823          	sd	a0,80(a5)
        sepc += 4;
    80001bac:	00448493          	addi	s1,s1,4
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    80001bb0:	14149073          	csrw	sepc,s1
    80001bb4:	f91ff06f          	j	80001b44 <_ZN5Riscv11trapHandlerEv+0x3c>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001bb8:	00005917          	auipc	s2,0x5
    80001bbc:	41893903          	ld	s2,1048(s2) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bc0:	00093783          	ld	a5,0(s2)
    80001bc4:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(addr));
    80001bc8:	00058513          	mv	a0,a1
                int status = MemoryAllocator::mem_free(addr);
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	328080e7          	jalr	808(ra) # 80001ef4 <_ZN15MemoryAllocator8mem_freeEPv>
                asm volatile("mv a0, %0" :: "r"(status));
    80001bd4:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001bd8:	00093783          	ld	a5,0(s2)
    80001bdc:	04a7b823          	sd	a0,80(a5)
                break;
    80001be0:	fcdff06f          	j	80001bac <_ZN5Riscv11trapHandlerEv+0xa4>
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	3b4080e7          	jalr	948(ra) # 80001f98 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                asm volatile("mv a0, %0" :: "r"(freeSpace));
    80001bec:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001bf0:	00005797          	auipc	a5,0x5
    80001bf4:	3e07b783          	ld	a5,992(a5) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bf8:	0007b783          	ld	a5,0(a5)
    80001bfc:	04a7b823          	sd	a0,80(a5)
                break;
    80001c00:	fadff06f          	j	80001bac <_ZN5Riscv11trapHandlerEv+0xa4>
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	3dc080e7          	jalr	988(ra) # 80001fe0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                asm volatile("mv a0, %0" :: "r"(largest));
    80001c0c:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001c10:	00005797          	auipc	a5,0x5
    80001c14:	3c07b783          	ld	a5,960(a5) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c18:	0007b783          	ld	a5,0(a5)
    80001c1c:	04a7b823          	sd	a0,80(a5)
                break;
    80001c20:	f8dff06f          	j	80001bac <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001c24:	00005797          	auipc	a5,0x5
    80001c28:	3ac7b783          	ld	a5,940(a5) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c2c:	0007b783          	ld	a5,0(a5)
    80001c30:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001c34:	00058913          	mv	s2,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001c38:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(start_routine));
    80001c3c:	00060513          	mv	a0,a2
                asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
    80001c40:	0687b683          	ld	a3,104(a5)
                asm volatile("mv %0, a3" : "=r"(args));
    80001c44:	00068593          	mv	a1,a3
                asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
    80001c48:	0707b703          	ld	a4,112(a5)
                asm volatile("mv %0, a4" : "=r"(stack));
    80001c4c:	00070613          	mv	a2,a4
                *handle = Thread::createThread(start_routine, args, stack, stackSize);
    80001c50:	000016b7          	lui	a3,0x1
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	9b0080e7          	jalr	-1616(ra) # 80001604 <_ZN6Thread12createThreadEPFvPvES0_S0_m>
    80001c5c:	00a93023          	sd	a0,0(s2)
                if (*handle != nullptr) {
    80001c60:	02050263          	beqz	a0,80001c84 <_ZN5Riscv11trapHandlerEv+0x17c>
                    (*handle)->start();
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	b74080e7          	jalr	-1164(ra) # 800017d8 <_ZN6Thread5startEv>
                    asm volatile("li a0, 0");
    80001c6c:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001c70:	00005797          	auipc	a5,0x5
    80001c74:	3607b783          	ld	a5,864(a5) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c78:	0007b783          	ld	a5,0(a5)
    80001c7c:	04a7b823          	sd	a0,80(a5)
                break;
    80001c80:	f2dff06f          	j	80001bac <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001c84:	fff00513          	li	a0,-1
    80001c88:	fe9ff06f          	j	80001c70 <_ZN5Riscv11trapHandlerEv+0x168>
                if (Thread::running) {
    80001c8c:	00005797          	auipc	a5,0x5
    80001c90:	3347b783          	ld	a5,820(a5) # 80006fc0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c94:	0007b503          	ld	a0,0(a5)
    80001c98:	00050663          	beqz	a0,80001ca4 <_ZN5Riscv11trapHandlerEv+0x19c>
                    Thread::running->exit();
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	ba8080e7          	jalr	-1112(ra) # 80001844 <_ZN6Thread4exitEv>
                Thread::dispatch();
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	bc0080e7          	jalr	-1088(ra) # 80001864 <_ZN6Thread8dispatchEv>
                asm volatile("li a0, 0");
    80001cac:	00000513          	li	a0,0
                break;
    80001cb0:	efdff06f          	j	80001bac <_ZN5Riscv11trapHandlerEv+0xa4>
                Thread::dispatch();
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	bb0080e7          	jalr	-1104(ra) # 80001864 <_ZN6Thread8dispatchEv>
                break;
    80001cbc:	ef1ff06f          	j	80001bac <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001cc0:	00005797          	auipc	a5,0x5
    80001cc4:	3107b783          	ld	a5,784(a5) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cc8:	0007b783          	ld	a5,0(a5)
    80001ccc:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001cd0:	00058913          	mv	s2,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001cd4:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(init));
    80001cd8:	00060513          	mv	a0,a2
                *handle = Semaphore::createSemaphore(init);
    80001cdc:	02051513          	slli	a0,a0,0x20
    80001ce0:	02055513          	srli	a0,a0,0x20
    80001ce4:	fffff097          	auipc	ra,0xfffff
    80001ce8:	6e8080e7          	jalr	1768(ra) # 800013cc <_ZN9Semaphore15createSemaphoreEm>
    80001cec:	00a93023          	sd	a0,0(s2)
                if (*handle != nullptr) asm volatile("li a0, 0");
    80001cf0:	00050e63          	beqz	a0,80001d0c <_ZN5Riscv11trapHandlerEv+0x204>
    80001cf4:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001cf8:	00005797          	auipc	a5,0x5
    80001cfc:	2d87b783          	ld	a5,728(a5) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d00:	0007b783          	ld	a5,0(a5)
    80001d04:	04a7b823          	sd	a0,80(a5)
                break;
    80001d08:	ea5ff06f          	j	80001bac <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001d0c:	fff00513          	li	a0,-1
    80001d10:	fe9ff06f          	j	80001cf8 <_ZN5Riscv11trapHandlerEv+0x1f0>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001d14:	00005797          	auipc	a5,0x5
    80001d18:	2bc7b783          	ld	a5,700(a5) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d1c:	0007b783          	ld	a5,0(a5)
    80001d20:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001d24:	00058513          	mv	a0,a1
                if (handle) {
    80001d28:	00050a63          	beqz	a0,80001d3c <_ZN5Riscv11trapHandlerEv+0x234>
                    handle->close();
    80001d2c:	00000097          	auipc	ra,0x0
    80001d30:	804080e7          	jalr	-2044(ra) # 80001530 <_ZN9Semaphore5closeEv>
                    asm volatile("li a0, 0");
    80001d34:	00000513          	li	a0,0
    80001d38:	e75ff06f          	j	80001bac <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001d3c:	fff00513          	li	a0,-1
    80001d40:	e6dff06f          	j	80001bac <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001d44:	00005797          	auipc	a5,0x5
    80001d48:	28c7b783          	ld	a5,652(a5) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d4c:	0007b783          	ld	a5,0(a5)
    80001d50:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001d54:	00058513          	mv	a0,a1
                if (handle) {
    80001d58:	00050a63          	beqz	a0,80001d6c <_ZN5Riscv11trapHandlerEv+0x264>
                    handle->wait();
    80001d5c:	fffff097          	auipc	ra,0xfffff
    80001d60:	724080e7          	jalr	1828(ra) # 80001480 <_ZN9Semaphore4waitEv>
                    asm volatile("li a0, 0");
    80001d64:	00000513          	li	a0,0
    80001d68:	e45ff06f          	j	80001bac <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001d6c:	fff00513          	li	a0,-1
    80001d70:	e3dff06f          	j	80001bac <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001d74:	00005797          	auipc	a5,0x5
    80001d78:	25c7b783          	ld	a5,604(a5) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d7c:	0007b783          	ld	a5,0(a5)
    80001d80:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001d84:	00058513          	mv	a0,a1
                if (handle) {
    80001d88:	00050a63          	beqz	a0,80001d9c <_ZN5Riscv11trapHandlerEv+0x294>
                    handle->signal();
    80001d8c:	fffff097          	auipc	ra,0xfffff
    80001d90:	750080e7          	jalr	1872(ra) # 800014dc <_ZN9Semaphore6signalEv>
                    asm volatile("li a0, 0");
    80001d94:	00000513          	li	a0,0
    80001d98:	e15ff06f          	j	80001bac <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001d9c:	fff00513          	li	a0,-1
    80001da0:	e0dff06f          	j	80001bac <_ZN5Riscv11trapHandlerEv+0xa4>

0000000080001da4 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00813423          	sd	s0,8(sp)
    80001dac:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80001db0:	00005697          	auipc	a3,0x5
    80001db4:	1f86b683          	ld	a3,504(a3) # 80006fa8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001db8:	0006b783          	ld	a5,0(a3)
    80001dbc:	00005717          	auipc	a4,0x5
    80001dc0:	28c70713          	addi	a4,a4,652 # 80007048 <_ZN15MemoryAllocator12freeListHeadE>
    80001dc4:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    80001dc8:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80001dcc:	00005797          	auipc	a5,0x5
    80001dd0:	1fc7b783          	ld	a5,508(a5) # 80006fc8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001dd4:	0007b783          	ld	a5,0(a5)
    80001dd8:	0006b683          	ld	a3,0(a3)
    80001ddc:	00073703          	ld	a4,0(a4)
    80001de0:	40d787b3          	sub	a5,a5,a3
    80001de4:	00f73423          	sd	a5,8(a4)
}
    80001de8:	00813403          	ld	s0,8(sp)
    80001dec:	01010113          	addi	sp,sp,16
    80001df0:	00008067          	ret

0000000080001df4 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    80001df4:	ff010113          	addi	sp,sp,-16
    80001df8:	00813423          	sd	s0,8(sp)
    80001dfc:	01010413          	addi	s0,sp,16
    80001e00:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    80001e04:	00005517          	auipc	a0,0x5
    80001e08:	24453503          	ld	a0,580(a0) # 80007048 <_ZN15MemoryAllocator12freeListHeadE>
    80001e0c:	06050063          	beqz	a0,80001e6c <_ZN15MemoryAllocator9mem_allocEm+0x78>
    80001e10:	08078a63          	beqz	a5,80001ea4 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    80001e14:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    80001e18:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    80001e1c:	00000613          	li	a2,0
    80001e20:	00c0006f          	j	80001e2c <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    80001e24:	00050613          	mv	a2,a0
        curr = curr->next;
    80001e28:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    80001e2c:	00050663          	beqz	a0,80001e38 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    80001e30:	00853783          	ld	a5,8(a0)
    80001e34:	fee7e8e3          	bltu	a5,a4,80001e24 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    80001e38:	02050a63          	beqz	a0,80001e6c <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    80001e3c:	00853583          	ld	a1,8(a0)
    80001e40:	02068793          	addi	a5,a3,32
    80001e44:	04f5e063          	bltu	a1,a5,80001e84 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    80001e48:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    80001e4c:	40e585b3          	sub	a1,a1,a4
    80001e50:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    80001e54:	00053683          	ld	a3,0(a0)
    80001e58:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    80001e5c:	00060e63          	beqz	a2,80001e78 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80001e60:	00f63023          	sd	a5,0(a2) # 1000 <_entry-0x7ffff000>
        else freeListHead = newBlock;

        curr->size = totalSize;
    80001e64:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
    80001e68:	01050513          	addi	a0,a0,16
}
    80001e6c:	00813403          	ld	s0,8(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret
        else freeListHead = newBlock;
    80001e78:	00005697          	auipc	a3,0x5
    80001e7c:	1cf6b823          	sd	a5,464(a3) # 80007048 <_ZN15MemoryAllocator12freeListHeadE>
    80001e80:	fe5ff06f          	j	80001e64 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    80001e84:	00060863          	beqz	a2,80001e94 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80001e88:	00053783          	ld	a5,0(a0)
    80001e8c:	00f63023          	sd	a5,0(a2)
    80001e90:	fd9ff06f          	j	80001e68 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    80001e94:	00053783          	ld	a5,0(a0)
    80001e98:	00005717          	auipc	a4,0x5
    80001e9c:	1af73823          	sd	a5,432(a4) # 80007048 <_ZN15MemoryAllocator12freeListHeadE>
    80001ea0:	fc9ff06f          	j	80001e68 <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    80001ea4:	00000513          	li	a0,0
    80001ea8:	fc5ff06f          	j	80001e6c <_ZN15MemoryAllocator9mem_allocEm+0x78>

0000000080001eac <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    80001eac:	ff010113          	addi	sp,sp,-16
    80001eb0:	00813423          	sd	s0,8(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80001eb8:	00050c63          	beqz	a0,80001ed0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    80001ebc:	00053783          	ld	a5,0(a0)
    80001ec0:	00078863          	beqz	a5,80001ed0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    80001ec4:	00853703          	ld	a4,8(a0)
    80001ec8:	00e506b3          	add	a3,a0,a4
    80001ecc:	00d78863          	beq	a5,a3,80001edc <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    80001ed0:	00813403          	ld	s0,8(sp)
    80001ed4:	01010113          	addi	sp,sp,16
    80001ed8:	00008067          	ret
        curr->size += curr->next->size;
    80001edc:	0087b683          	ld	a3,8(a5)
    80001ee0:	00d70733          	add	a4,a4,a3
    80001ee4:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    80001ee8:	0007b783          	ld	a5,0(a5)
    80001eec:	00f53023          	sd	a5,0(a0)
    80001ef0:	fe1ff06f          	j	80001ed0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

0000000080001ef4 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    80001ef4:	08050e63          	beqz	a0,80001f90 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80001ef8:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    80001efc:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    80001f00:	00005797          	auipc	a5,0x5
    80001f04:	1487b783          	ld	a5,328(a5) # 80007048 <_ZN15MemoryAllocator12freeListHeadE>
    80001f08:	02078863          	beqz	a5,80001f38 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    80001f0c:	fe010113          	addi	sp,sp,-32
    80001f10:	00113c23          	sd	ra,24(sp)
    80001f14:	00813823          	sd	s0,16(sp)
    80001f18:	00913423          	sd	s1,8(sp)
    80001f1c:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    80001f20:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    80001f24:	02078463          	beqz	a5,80001f4c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001f28:	02a7f263          	bgeu	a5,a0,80001f4c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    80001f2c:	00078493          	mv	s1,a5
        curr = curr->next;
    80001f30:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    80001f34:	ff1ff06f          	j	80001f24 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    80001f38:	00005797          	auipc	a5,0x5
    80001f3c:	10a7b823          	sd	a0,272(a5) # 80007048 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    80001f40:	fe073823          	sd	zero,-16(a4)
        return 0;
    80001f44:	00000513          	li	a0,0
    80001f48:	00008067          	ret
    blockToFree->next = curr;
    80001f4c:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    80001f50:	02048a63          	beqz	s1,80001f84 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80001f54:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	f54080e7          	jalr	-172(ra) # 80001eac <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    80001f60:	00048513          	mv	a0,s1
    80001f64:	00000097          	auipc	ra,0x0
    80001f68:	f48080e7          	jalr	-184(ra) # 80001eac <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    80001f6c:	00000513          	li	a0,0
}
    80001f70:	01813083          	ld	ra,24(sp)
    80001f74:	01013403          	ld	s0,16(sp)
    80001f78:	00813483          	ld	s1,8(sp)
    80001f7c:	02010113          	addi	sp,sp,32
    80001f80:	00008067          	ret
    else freeListHead = blockToFree;
    80001f84:	00005797          	auipc	a5,0x5
    80001f88:	0ca7b223          	sd	a0,196(a5) # 80007048 <_ZN15MemoryAllocator12freeListHeadE>
    80001f8c:	fcdff06f          	j	80001f58 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    80001f90:	fff00513          	li	a0,-1
}
    80001f94:	00008067          	ret

0000000080001f98 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00813423          	sd	s0,8(sp)
    80001fa0:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001fa4:	00005797          	auipc	a5,0x5
    80001fa8:	0a47b783          	ld	a5,164(a5) # 80007048 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    80001fac:	00000513          	li	a0,0
    80001fb0:	0080006f          	j	80001fb8 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001fb4:	0007b783          	ld	a5,0(a5)
    80001fb8:	00078e63          	beqz	a5,80001fd4 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    80001fbc:	0087b703          	ld	a4,8(a5)
    80001fc0:	01000693          	li	a3,16
    80001fc4:	fee6f8e3          	bgeu	a3,a4,80001fb4 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    80001fc8:	00a70533          	add	a0,a4,a0
    80001fcc:	ff050513          	addi	a0,a0,-16
    80001fd0:	fe5ff06f          	j	80001fb4 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    80001fd4:	00813403          	ld	s0,8(sp)
    80001fd8:	01010113          	addi	sp,sp,16
    80001fdc:	00008067          	ret

0000000080001fe0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80001fe0:	ff010113          	addi	sp,sp,-16
    80001fe4:	00813423          	sd	s0,8(sp)
    80001fe8:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001fec:	00005717          	auipc	a4,0x5
    80001ff0:	05c73703          	ld	a4,92(a4) # 80007048 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    80001ff4:	00000513          	li	a0,0
    80001ff8:	0080006f          	j	80002000 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001ffc:	00073703          	ld	a4,0(a4)
    80002000:	02070263          	beqz	a4,80002024 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    80002004:	00873783          	ld	a5,8(a4)
    80002008:	01000693          	li	a3,16
    8000200c:	00d7f463          	bgeu	a5,a3,80002014 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    80002010:	01000793          	li	a5,16
    80002014:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    80002018:	fef572e3          	bgeu	a0,a5,80001ffc <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    8000201c:	00078513          	mv	a0,a5
    80002020:	fddff06f          	j	80001ffc <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    80002024:	00813403          	ld	s0,8(sp)
    80002028:	01010113          	addi	sp,sp,16
    8000202c:	00008067          	ret

0000000080002030 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002030:	fe010113          	addi	sp,sp,-32
    80002034:	00113c23          	sd	ra,24(sp)
    80002038:	00813823          	sd	s0,16(sp)
    8000203c:	00913423          	sd	s1,8(sp)
    80002040:	01213023          	sd	s2,0(sp)
    80002044:	02010413          	addi	s0,sp,32
    80002048:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000204c:	00100793          	li	a5,1
    80002050:	02a7f863          	bgeu	a5,a0,80002080 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002054:	00a00793          	li	a5,10
    80002058:	02f577b3          	remu	a5,a0,a5
    8000205c:	02078e63          	beqz	a5,80002098 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002060:	fff48513          	addi	a0,s1,-1
    80002064:	00000097          	auipc	ra,0x0
    80002068:	fcc080e7          	jalr	-52(ra) # 80002030 <_ZL9fibonaccim>
    8000206c:	00050913          	mv	s2,a0
    80002070:	ffe48513          	addi	a0,s1,-2
    80002074:	00000097          	auipc	ra,0x0
    80002078:	fbc080e7          	jalr	-68(ra) # 80002030 <_ZL9fibonaccim>
    8000207c:	00a90533          	add	a0,s2,a0
}
    80002080:	01813083          	ld	ra,24(sp)
    80002084:	01013403          	ld	s0,16(sp)
    80002088:	00813483          	ld	s1,8(sp)
    8000208c:	00013903          	ld	s2,0(sp)
    80002090:	02010113          	addi	sp,sp,32
    80002094:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002098:	fffff097          	auipc	ra,0xfffff
    8000209c:	258080e7          	jalr	600(ra) # 800012f0 <_Z15thread_dispatchv>
    800020a0:	fc1ff06f          	j	80002060 <_ZL9fibonaccim+0x30>

00000000800020a4 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800020a4:	fe010113          	addi	sp,sp,-32
    800020a8:	00113c23          	sd	ra,24(sp)
    800020ac:	00813823          	sd	s0,16(sp)
    800020b0:	00913423          	sd	s1,8(sp)
    800020b4:	01213023          	sd	s2,0(sp)
    800020b8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800020bc:	00a00493          	li	s1,10
    800020c0:	0400006f          	j	80002100 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800020c4:	00004517          	auipc	a0,0x4
    800020c8:	ff450513          	addi	a0,a0,-12 # 800060b8 <CONSOLE_STATUS+0xa8>
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	53c080e7          	jalr	1340(ra) # 80002608 <_Z11printStringPKc>
    800020d4:	00000613          	li	a2,0
    800020d8:	00a00593          	li	a1,10
    800020dc:	00048513          	mv	a0,s1
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	6d8080e7          	jalr	1752(ra) # 800027b8 <_Z8printIntiii>
    800020e8:	00004517          	auipc	a0,0x4
    800020ec:	26050513          	addi	a0,a0,608 # 80006348 <CONSOLE_STATUS+0x338>
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	518080e7          	jalr	1304(ra) # 80002608 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800020f8:	0014849b          	addiw	s1,s1,1
    800020fc:	0ff4f493          	andi	s1,s1,255
    80002100:	00c00793          	li	a5,12
    80002104:	fc97f0e3          	bgeu	a5,s1,800020c4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002108:	00004517          	auipc	a0,0x4
    8000210c:	fb850513          	addi	a0,a0,-72 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002110:	00000097          	auipc	ra,0x0
    80002114:	4f8080e7          	jalr	1272(ra) # 80002608 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002118:	00500313          	li	t1,5
    thread_dispatch();
    8000211c:	fffff097          	auipc	ra,0xfffff
    80002120:	1d4080e7          	jalr	468(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002124:	01000513          	li	a0,16
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	f08080e7          	jalr	-248(ra) # 80002030 <_ZL9fibonaccim>
    80002130:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002134:	00004517          	auipc	a0,0x4
    80002138:	f9c50513          	addi	a0,a0,-100 # 800060d0 <CONSOLE_STATUS+0xc0>
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	4cc080e7          	jalr	1228(ra) # 80002608 <_Z11printStringPKc>
    80002144:	00000613          	li	a2,0
    80002148:	00a00593          	li	a1,10
    8000214c:	0009051b          	sext.w	a0,s2
    80002150:	00000097          	auipc	ra,0x0
    80002154:	668080e7          	jalr	1640(ra) # 800027b8 <_Z8printIntiii>
    80002158:	00004517          	auipc	a0,0x4
    8000215c:	1f050513          	addi	a0,a0,496 # 80006348 <CONSOLE_STATUS+0x338>
    80002160:	00000097          	auipc	ra,0x0
    80002164:	4a8080e7          	jalr	1192(ra) # 80002608 <_Z11printStringPKc>
    80002168:	0400006f          	j	800021a8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000216c:	00004517          	auipc	a0,0x4
    80002170:	f4c50513          	addi	a0,a0,-180 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002174:	00000097          	auipc	ra,0x0
    80002178:	494080e7          	jalr	1172(ra) # 80002608 <_Z11printStringPKc>
    8000217c:	00000613          	li	a2,0
    80002180:	00a00593          	li	a1,10
    80002184:	00048513          	mv	a0,s1
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	630080e7          	jalr	1584(ra) # 800027b8 <_Z8printIntiii>
    80002190:	00004517          	auipc	a0,0x4
    80002194:	1b850513          	addi	a0,a0,440 # 80006348 <CONSOLE_STATUS+0x338>
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	470080e7          	jalr	1136(ra) # 80002608 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800021a0:	0014849b          	addiw	s1,s1,1
    800021a4:	0ff4f493          	andi	s1,s1,255
    800021a8:	00f00793          	li	a5,15
    800021ac:	fc97f0e3          	bgeu	a5,s1,8000216c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800021b0:	00004517          	auipc	a0,0x4
    800021b4:	f3050513          	addi	a0,a0,-208 # 800060e0 <CONSOLE_STATUS+0xd0>
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	450080e7          	jalr	1104(ra) # 80002608 <_Z11printStringPKc>
    finishedD = true;
    800021c0:	00100793          	li	a5,1
    800021c4:	00005717          	auipc	a4,0x5
    800021c8:	e8f70623          	sb	a5,-372(a4) # 80007050 <_ZL9finishedD>
    thread_dispatch();
    800021cc:	fffff097          	auipc	ra,0xfffff
    800021d0:	124080e7          	jalr	292(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800021d4:	01813083          	ld	ra,24(sp)
    800021d8:	01013403          	ld	s0,16(sp)
    800021dc:	00813483          	ld	s1,8(sp)
    800021e0:	00013903          	ld	s2,0(sp)
    800021e4:	02010113          	addi	sp,sp,32
    800021e8:	00008067          	ret

00000000800021ec <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800021ec:	fe010113          	addi	sp,sp,-32
    800021f0:	00113c23          	sd	ra,24(sp)
    800021f4:	00813823          	sd	s0,16(sp)
    800021f8:	00913423          	sd	s1,8(sp)
    800021fc:	01213023          	sd	s2,0(sp)
    80002200:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002204:	00000493          	li	s1,0
    80002208:	0400006f          	j	80002248 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000220c:	00004517          	auipc	a0,0x4
    80002210:	ee450513          	addi	a0,a0,-284 # 800060f0 <CONSOLE_STATUS+0xe0>
    80002214:	00000097          	auipc	ra,0x0
    80002218:	3f4080e7          	jalr	1012(ra) # 80002608 <_Z11printStringPKc>
    8000221c:	00000613          	li	a2,0
    80002220:	00a00593          	li	a1,10
    80002224:	00048513          	mv	a0,s1
    80002228:	00000097          	auipc	ra,0x0
    8000222c:	590080e7          	jalr	1424(ra) # 800027b8 <_Z8printIntiii>
    80002230:	00004517          	auipc	a0,0x4
    80002234:	11850513          	addi	a0,a0,280 # 80006348 <CONSOLE_STATUS+0x338>
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	3d0080e7          	jalr	976(ra) # 80002608 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002240:	0014849b          	addiw	s1,s1,1
    80002244:	0ff4f493          	andi	s1,s1,255
    80002248:	00200793          	li	a5,2
    8000224c:	fc97f0e3          	bgeu	a5,s1,8000220c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002250:	00004517          	auipc	a0,0x4
    80002254:	ea850513          	addi	a0,a0,-344 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	3b0080e7          	jalr	944(ra) # 80002608 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002260:	00700313          	li	t1,7
    thread_dispatch();
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	08c080e7          	jalr	140(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000226c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002270:	00004517          	auipc	a0,0x4
    80002274:	e9850513          	addi	a0,a0,-360 # 80006108 <CONSOLE_STATUS+0xf8>
    80002278:	00000097          	auipc	ra,0x0
    8000227c:	390080e7          	jalr	912(ra) # 80002608 <_Z11printStringPKc>
    80002280:	00000613          	li	a2,0
    80002284:	00a00593          	li	a1,10
    80002288:	0009051b          	sext.w	a0,s2
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	52c080e7          	jalr	1324(ra) # 800027b8 <_Z8printIntiii>
    80002294:	00004517          	auipc	a0,0x4
    80002298:	0b450513          	addi	a0,a0,180 # 80006348 <CONSOLE_STATUS+0x338>
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	36c080e7          	jalr	876(ra) # 80002608 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800022a4:	00c00513          	li	a0,12
    800022a8:	00000097          	auipc	ra,0x0
    800022ac:	d88080e7          	jalr	-632(ra) # 80002030 <_ZL9fibonaccim>
    800022b0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800022b4:	00004517          	auipc	a0,0x4
    800022b8:	e5c50513          	addi	a0,a0,-420 # 80006110 <CONSOLE_STATUS+0x100>
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	34c080e7          	jalr	844(ra) # 80002608 <_Z11printStringPKc>
    800022c4:	00000613          	li	a2,0
    800022c8:	00a00593          	li	a1,10
    800022cc:	0009051b          	sext.w	a0,s2
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	4e8080e7          	jalr	1256(ra) # 800027b8 <_Z8printIntiii>
    800022d8:	00004517          	auipc	a0,0x4
    800022dc:	07050513          	addi	a0,a0,112 # 80006348 <CONSOLE_STATUS+0x338>
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	328080e7          	jalr	808(ra) # 80002608 <_Z11printStringPKc>
    800022e8:	0400006f          	j	80002328 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800022ec:	00004517          	auipc	a0,0x4
    800022f0:	e0450513          	addi	a0,a0,-508 # 800060f0 <CONSOLE_STATUS+0xe0>
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	314080e7          	jalr	788(ra) # 80002608 <_Z11printStringPKc>
    800022fc:	00000613          	li	a2,0
    80002300:	00a00593          	li	a1,10
    80002304:	00048513          	mv	a0,s1
    80002308:	00000097          	auipc	ra,0x0
    8000230c:	4b0080e7          	jalr	1200(ra) # 800027b8 <_Z8printIntiii>
    80002310:	00004517          	auipc	a0,0x4
    80002314:	03850513          	addi	a0,a0,56 # 80006348 <CONSOLE_STATUS+0x338>
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	2f0080e7          	jalr	752(ra) # 80002608 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002320:	0014849b          	addiw	s1,s1,1
    80002324:	0ff4f493          	andi	s1,s1,255
    80002328:	00500793          	li	a5,5
    8000232c:	fc97f0e3          	bgeu	a5,s1,800022ec <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80002330:	00004517          	auipc	a0,0x4
    80002334:	df050513          	addi	a0,a0,-528 # 80006120 <CONSOLE_STATUS+0x110>
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	2d0080e7          	jalr	720(ra) # 80002608 <_Z11printStringPKc>
    finishedC = true;
    80002340:	00100793          	li	a5,1
    80002344:	00005717          	auipc	a4,0x5
    80002348:	d0f706a3          	sb	a5,-755(a4) # 80007051 <_ZL9finishedC>
    thread_dispatch();
    8000234c:	fffff097          	auipc	ra,0xfffff
    80002350:	fa4080e7          	jalr	-92(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002354:	01813083          	ld	ra,24(sp)
    80002358:	01013403          	ld	s0,16(sp)
    8000235c:	00813483          	ld	s1,8(sp)
    80002360:	00013903          	ld	s2,0(sp)
    80002364:	02010113          	addi	sp,sp,32
    80002368:	00008067          	ret

000000008000236c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000236c:	fe010113          	addi	sp,sp,-32
    80002370:	00113c23          	sd	ra,24(sp)
    80002374:	00813823          	sd	s0,16(sp)
    80002378:	00913423          	sd	s1,8(sp)
    8000237c:	01213023          	sd	s2,0(sp)
    80002380:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002384:	00000913          	li	s2,0
    80002388:	0380006f          	j	800023c0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000238c:	fffff097          	auipc	ra,0xfffff
    80002390:	f64080e7          	jalr	-156(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002394:	00148493          	addi	s1,s1,1
    80002398:	000027b7          	lui	a5,0x2
    8000239c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800023a0:	0097ee63          	bltu	a5,s1,800023bc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800023a4:	00000713          	li	a4,0
    800023a8:	000077b7          	lui	a5,0x7
    800023ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800023b0:	fce7eee3          	bltu	a5,a4,8000238c <_ZL11workerBodyBPv+0x20>
    800023b4:	00170713          	addi	a4,a4,1
    800023b8:	ff1ff06f          	j	800023a8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800023bc:	00190913          	addi	s2,s2,1
    800023c0:	00f00793          	li	a5,15
    800023c4:	0527e063          	bltu	a5,s2,80002404 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800023c8:	00004517          	auipc	a0,0x4
    800023cc:	d6850513          	addi	a0,a0,-664 # 80006130 <CONSOLE_STATUS+0x120>
    800023d0:	00000097          	auipc	ra,0x0
    800023d4:	238080e7          	jalr	568(ra) # 80002608 <_Z11printStringPKc>
    800023d8:	00000613          	li	a2,0
    800023dc:	00a00593          	li	a1,10
    800023e0:	0009051b          	sext.w	a0,s2
    800023e4:	00000097          	auipc	ra,0x0
    800023e8:	3d4080e7          	jalr	980(ra) # 800027b8 <_Z8printIntiii>
    800023ec:	00004517          	auipc	a0,0x4
    800023f0:	f5c50513          	addi	a0,a0,-164 # 80006348 <CONSOLE_STATUS+0x338>
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	214080e7          	jalr	532(ra) # 80002608 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800023fc:	00000493          	li	s1,0
    80002400:	f99ff06f          	j	80002398 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002404:	00004517          	auipc	a0,0x4
    80002408:	d3450513          	addi	a0,a0,-716 # 80006138 <CONSOLE_STATUS+0x128>
    8000240c:	00000097          	auipc	ra,0x0
    80002410:	1fc080e7          	jalr	508(ra) # 80002608 <_Z11printStringPKc>
    finishedB = true;
    80002414:	00100793          	li	a5,1
    80002418:	00005717          	auipc	a4,0x5
    8000241c:	c2f70d23          	sb	a5,-966(a4) # 80007052 <_ZL9finishedB>
    thread_dispatch();
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	ed0080e7          	jalr	-304(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002428:	01813083          	ld	ra,24(sp)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	00813483          	ld	s1,8(sp)
    80002434:	00013903          	ld	s2,0(sp)
    80002438:	02010113          	addi	sp,sp,32
    8000243c:	00008067          	ret

0000000080002440 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002440:	fe010113          	addi	sp,sp,-32
    80002444:	00113c23          	sd	ra,24(sp)
    80002448:	00813823          	sd	s0,16(sp)
    8000244c:	00913423          	sd	s1,8(sp)
    80002450:	01213023          	sd	s2,0(sp)
    80002454:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002458:	00000913          	li	s2,0
    8000245c:	0380006f          	j	80002494 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002460:	fffff097          	auipc	ra,0xfffff
    80002464:	e90080e7          	jalr	-368(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002468:	00148493          	addi	s1,s1,1
    8000246c:	000027b7          	lui	a5,0x2
    80002470:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002474:	0097ee63          	bltu	a5,s1,80002490 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002478:	00000713          	li	a4,0
    8000247c:	000077b7          	lui	a5,0x7
    80002480:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002484:	fce7eee3          	bltu	a5,a4,80002460 <_ZL11workerBodyAPv+0x20>
    80002488:	00170713          	addi	a4,a4,1
    8000248c:	ff1ff06f          	j	8000247c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002490:	00190913          	addi	s2,s2,1
    80002494:	00900793          	li	a5,9
    80002498:	0527e063          	bltu	a5,s2,800024d8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000249c:	00004517          	auipc	a0,0x4
    800024a0:	cac50513          	addi	a0,a0,-852 # 80006148 <CONSOLE_STATUS+0x138>
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	164080e7          	jalr	356(ra) # 80002608 <_Z11printStringPKc>
    800024ac:	00000613          	li	a2,0
    800024b0:	00a00593          	li	a1,10
    800024b4:	0009051b          	sext.w	a0,s2
    800024b8:	00000097          	auipc	ra,0x0
    800024bc:	300080e7          	jalr	768(ra) # 800027b8 <_Z8printIntiii>
    800024c0:	00004517          	auipc	a0,0x4
    800024c4:	e8850513          	addi	a0,a0,-376 # 80006348 <CONSOLE_STATUS+0x338>
    800024c8:	00000097          	auipc	ra,0x0
    800024cc:	140080e7          	jalr	320(ra) # 80002608 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800024d0:	00000493          	li	s1,0
    800024d4:	f99ff06f          	j	8000246c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800024d8:	00004517          	auipc	a0,0x4
    800024dc:	c7850513          	addi	a0,a0,-904 # 80006150 <CONSOLE_STATUS+0x140>
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	128080e7          	jalr	296(ra) # 80002608 <_Z11printStringPKc>
    finishedA = true;
    800024e8:	00100793          	li	a5,1
    800024ec:	00005717          	auipc	a4,0x5
    800024f0:	b6f703a3          	sb	a5,-1177(a4) # 80007053 <_ZL9finishedA>
}
    800024f4:	01813083          	ld	ra,24(sp)
    800024f8:	01013403          	ld	s0,16(sp)
    800024fc:	00813483          	ld	s1,8(sp)
    80002500:	00013903          	ld	s2,0(sp)
    80002504:	02010113          	addi	sp,sp,32
    80002508:	00008067          	ret

000000008000250c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000250c:	fd010113          	addi	sp,sp,-48
    80002510:	02113423          	sd	ra,40(sp)
    80002514:	02813023          	sd	s0,32(sp)
    80002518:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000251c:	00000613          	li	a2,0
    80002520:	00000597          	auipc	a1,0x0
    80002524:	f2058593          	addi	a1,a1,-224 # 80002440 <_ZL11workerBodyAPv>
    80002528:	fd040513          	addi	a0,s0,-48
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	cf0080e7          	jalr	-784(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadA created\n");
    80002534:	00004517          	auipc	a0,0x4
    80002538:	c2c50513          	addi	a0,a0,-980 # 80006160 <CONSOLE_STATUS+0x150>
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	0cc080e7          	jalr	204(ra) # 80002608 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002544:	00000613          	li	a2,0
    80002548:	00000597          	auipc	a1,0x0
    8000254c:	e2458593          	addi	a1,a1,-476 # 8000236c <_ZL11workerBodyBPv>
    80002550:	fd840513          	addi	a0,s0,-40
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	cc8080e7          	jalr	-824(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadB created\n");
    8000255c:	00004517          	auipc	a0,0x4
    80002560:	c1c50513          	addi	a0,a0,-996 # 80006178 <CONSOLE_STATUS+0x168>
    80002564:	00000097          	auipc	ra,0x0
    80002568:	0a4080e7          	jalr	164(ra) # 80002608 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000256c:	00000613          	li	a2,0
    80002570:	00000597          	auipc	a1,0x0
    80002574:	c7c58593          	addi	a1,a1,-900 # 800021ec <_ZL11workerBodyCPv>
    80002578:	fe040513          	addi	a0,s0,-32
    8000257c:	fffff097          	auipc	ra,0xfffff
    80002580:	ca0080e7          	jalr	-864(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadC created\n");
    80002584:	00004517          	auipc	a0,0x4
    80002588:	c0c50513          	addi	a0,a0,-1012 # 80006190 <CONSOLE_STATUS+0x180>
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	07c080e7          	jalr	124(ra) # 80002608 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002594:	00000613          	li	a2,0
    80002598:	00000597          	auipc	a1,0x0
    8000259c:	b0c58593          	addi	a1,a1,-1268 # 800020a4 <_ZL11workerBodyDPv>
    800025a0:	fe840513          	addi	a0,s0,-24
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	c78080e7          	jalr	-904(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadD created\n");
    800025ac:	00004517          	auipc	a0,0x4
    800025b0:	bfc50513          	addi	a0,a0,-1028 # 800061a8 <CONSOLE_STATUS+0x198>
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	054080e7          	jalr	84(ra) # 80002608 <_Z11printStringPKc>
    800025bc:	00c0006f          	j	800025c8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800025c0:	fffff097          	auipc	ra,0xfffff
    800025c4:	d30080e7          	jalr	-720(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800025c8:	00005797          	auipc	a5,0x5
    800025cc:	a8b7c783          	lbu	a5,-1397(a5) # 80007053 <_ZL9finishedA>
    800025d0:	fe0788e3          	beqz	a5,800025c0 <_Z18Threads_C_API_testv+0xb4>
    800025d4:	00005797          	auipc	a5,0x5
    800025d8:	a7e7c783          	lbu	a5,-1410(a5) # 80007052 <_ZL9finishedB>
    800025dc:	fe0782e3          	beqz	a5,800025c0 <_Z18Threads_C_API_testv+0xb4>
    800025e0:	00005797          	auipc	a5,0x5
    800025e4:	a717c783          	lbu	a5,-1423(a5) # 80007051 <_ZL9finishedC>
    800025e8:	fc078ce3          	beqz	a5,800025c0 <_Z18Threads_C_API_testv+0xb4>
    800025ec:	00005797          	auipc	a5,0x5
    800025f0:	a647c783          	lbu	a5,-1436(a5) # 80007050 <_ZL9finishedD>
    800025f4:	fc0786e3          	beqz	a5,800025c0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800025f8:	02813083          	ld	ra,40(sp)
    800025fc:	02013403          	ld	s0,32(sp)
    80002600:	03010113          	addi	sp,sp,48
    80002604:	00008067          	ret

0000000080002608 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002608:	fe010113          	addi	sp,sp,-32
    8000260c:	00113c23          	sd	ra,24(sp)
    80002610:	00813823          	sd	s0,16(sp)
    80002614:	00913423          	sd	s1,8(sp)
    80002618:	02010413          	addi	s0,sp,32
    8000261c:	00050493          	mv	s1,a0
    LOCK();
    80002620:	00100613          	li	a2,1
    80002624:	00000593          	li	a1,0
    80002628:	00005517          	auipc	a0,0x5
    8000262c:	a3050513          	addi	a0,a0,-1488 # 80007058 <lockPrint>
    80002630:	fffff097          	auipc	ra,0xfffff
    80002634:	b14080e7          	jalr	-1260(ra) # 80001144 <copy_and_swap>
    80002638:	00050863          	beqz	a0,80002648 <_Z11printStringPKc+0x40>
    8000263c:	fffff097          	auipc	ra,0xfffff
    80002640:	cb4080e7          	jalr	-844(ra) # 800012f0 <_Z15thread_dispatchv>
    80002644:	fddff06f          	j	80002620 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002648:	0004c503          	lbu	a0,0(s1)
    8000264c:	00050a63          	beqz	a0,80002660 <_Z11printStringPKc+0x58>
    {
        __putc(*string);
    80002650:	00003097          	auipc	ra,0x3
    80002654:	c9c080e7          	jalr	-868(ra) # 800052ec <__putc>
        string++;
    80002658:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000265c:	fedff06f          	j	80002648 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80002660:	00000613          	li	a2,0
    80002664:	00100593          	li	a1,1
    80002668:	00005517          	auipc	a0,0x5
    8000266c:	9f050513          	addi	a0,a0,-1552 # 80007058 <lockPrint>
    80002670:	fffff097          	auipc	ra,0xfffff
    80002674:	ad4080e7          	jalr	-1324(ra) # 80001144 <copy_and_swap>
    80002678:	fe0514e3          	bnez	a0,80002660 <_Z11printStringPKc+0x58>
}
    8000267c:	01813083          	ld	ra,24(sp)
    80002680:	01013403          	ld	s0,16(sp)
    80002684:	00813483          	ld	s1,8(sp)
    80002688:	02010113          	addi	sp,sp,32
    8000268c:	00008067          	ret

0000000080002690 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002690:	fd010113          	addi	sp,sp,-48
    80002694:	02113423          	sd	ra,40(sp)
    80002698:	02813023          	sd	s0,32(sp)
    8000269c:	00913c23          	sd	s1,24(sp)
    800026a0:	01213823          	sd	s2,16(sp)
    800026a4:	01313423          	sd	s3,8(sp)
    800026a8:	01413023          	sd	s4,0(sp)
    800026ac:	03010413          	addi	s0,sp,48
    800026b0:	00050993          	mv	s3,a0
    800026b4:	00058a13          	mv	s4,a1
    LOCK();
    800026b8:	00100613          	li	a2,1
    800026bc:	00000593          	li	a1,0
    800026c0:	00005517          	auipc	a0,0x5
    800026c4:	99850513          	addi	a0,a0,-1640 # 80007058 <lockPrint>
    800026c8:	fffff097          	auipc	ra,0xfffff
    800026cc:	a7c080e7          	jalr	-1412(ra) # 80001144 <copy_and_swap>
    800026d0:	00050863          	beqz	a0,800026e0 <_Z9getStringPci+0x50>
    800026d4:	fffff097          	auipc	ra,0xfffff
    800026d8:	c1c080e7          	jalr	-996(ra) # 800012f0 <_Z15thread_dispatchv>
    800026dc:	fddff06f          	j	800026b8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800026e0:	00000913          	li	s2,0
    800026e4:	00090493          	mv	s1,s2
    800026e8:	0019091b          	addiw	s2,s2,1
    800026ec:	03495a63          	bge	s2,s4,80002720 <_Z9getStringPci+0x90>
        cc = __getc();
    800026f0:	00003097          	auipc	ra,0x3
    800026f4:	c38080e7          	jalr	-968(ra) # 80005328 <__getc>
        if(cc < 1)
    800026f8:	02050463          	beqz	a0,80002720 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800026fc:	009984b3          	add	s1,s3,s1
    80002700:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002704:	00a00793          	li	a5,10
    80002708:	00f50a63          	beq	a0,a5,8000271c <_Z9getStringPci+0x8c>
    8000270c:	00d00793          	li	a5,13
    80002710:	fcf51ae3          	bne	a0,a5,800026e4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80002714:	00090493          	mv	s1,s2
    80002718:	0080006f          	j	80002720 <_Z9getStringPci+0x90>
    8000271c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002720:	009984b3          	add	s1,s3,s1
    80002724:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002728:	00000613          	li	a2,0
    8000272c:	00100593          	li	a1,1
    80002730:	00005517          	auipc	a0,0x5
    80002734:	92850513          	addi	a0,a0,-1752 # 80007058 <lockPrint>
    80002738:	fffff097          	auipc	ra,0xfffff
    8000273c:	a0c080e7          	jalr	-1524(ra) # 80001144 <copy_and_swap>
    80002740:	fe0514e3          	bnez	a0,80002728 <_Z9getStringPci+0x98>
    return buf;
}
    80002744:	00098513          	mv	a0,s3
    80002748:	02813083          	ld	ra,40(sp)
    8000274c:	02013403          	ld	s0,32(sp)
    80002750:	01813483          	ld	s1,24(sp)
    80002754:	01013903          	ld	s2,16(sp)
    80002758:	00813983          	ld	s3,8(sp)
    8000275c:	00013a03          	ld	s4,0(sp)
    80002760:	03010113          	addi	sp,sp,48
    80002764:	00008067          	ret

0000000080002768 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002768:	ff010113          	addi	sp,sp,-16
    8000276c:	00813423          	sd	s0,8(sp)
    80002770:	01010413          	addi	s0,sp,16
    80002774:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002778:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000277c:	0006c603          	lbu	a2,0(a3)
    80002780:	fd06071b          	addiw	a4,a2,-48
    80002784:	0ff77713          	andi	a4,a4,255
    80002788:	00900793          	li	a5,9
    8000278c:	02e7e063          	bltu	a5,a4,800027ac <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002790:	0025179b          	slliw	a5,a0,0x2
    80002794:	00a787bb          	addw	a5,a5,a0
    80002798:	0017979b          	slliw	a5,a5,0x1
    8000279c:	00168693          	addi	a3,a3,1
    800027a0:	00c787bb          	addw	a5,a5,a2
    800027a4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800027a8:	fd5ff06f          	j	8000277c <_Z11stringToIntPKc+0x14>
    return n;
}
    800027ac:	00813403          	ld	s0,8(sp)
    800027b0:	01010113          	addi	sp,sp,16
    800027b4:	00008067          	ret

00000000800027b8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800027b8:	fc010113          	addi	sp,sp,-64
    800027bc:	02113c23          	sd	ra,56(sp)
    800027c0:	02813823          	sd	s0,48(sp)
    800027c4:	02913423          	sd	s1,40(sp)
    800027c8:	03213023          	sd	s2,32(sp)
    800027cc:	01313c23          	sd	s3,24(sp)
    800027d0:	04010413          	addi	s0,sp,64
    800027d4:	00050493          	mv	s1,a0
    800027d8:	00058913          	mv	s2,a1
    800027dc:	00060993          	mv	s3,a2
    LOCK();
    800027e0:	00100613          	li	a2,1
    800027e4:	00000593          	li	a1,0
    800027e8:	00005517          	auipc	a0,0x5
    800027ec:	87050513          	addi	a0,a0,-1936 # 80007058 <lockPrint>
    800027f0:	fffff097          	auipc	ra,0xfffff
    800027f4:	954080e7          	jalr	-1708(ra) # 80001144 <copy_and_swap>
    800027f8:	00050863          	beqz	a0,80002808 <_Z8printIntiii+0x50>
    800027fc:	fffff097          	auipc	ra,0xfffff
    80002800:	af4080e7          	jalr	-1292(ra) # 800012f0 <_Z15thread_dispatchv>
    80002804:	fddff06f          	j	800027e0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002808:	00098463          	beqz	s3,80002810 <_Z8printIntiii+0x58>
    8000280c:	0804c463          	bltz	s1,80002894 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002810:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002814:	00000593          	li	a1,0
    }

    i = 0;
    80002818:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000281c:	0009079b          	sext.w	a5,s2
    80002820:	0325773b          	remuw	a4,a0,s2
    80002824:	00048613          	mv	a2,s1
    80002828:	0014849b          	addiw	s1,s1,1
    8000282c:	02071693          	slli	a3,a4,0x20
    80002830:	0206d693          	srli	a3,a3,0x20
    80002834:	00004717          	auipc	a4,0x4
    80002838:	75470713          	addi	a4,a4,1876 # 80006f88 <digits>
    8000283c:	00d70733          	add	a4,a4,a3
    80002840:	00074683          	lbu	a3,0(a4)
    80002844:	fd040713          	addi	a4,s0,-48
    80002848:	00c70733          	add	a4,a4,a2
    8000284c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002850:	0005071b          	sext.w	a4,a0
    80002854:	0325553b          	divuw	a0,a0,s2
    80002858:	fcf772e3          	bgeu	a4,a5,8000281c <_Z8printIntiii+0x64>
    if(neg)
    8000285c:	00058c63          	beqz	a1,80002874 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80002860:	fd040793          	addi	a5,s0,-48
    80002864:	009784b3          	add	s1,a5,s1
    80002868:	02d00793          	li	a5,45
    8000286c:	fef48823          	sb	a5,-16(s1)
    80002870:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002874:	fff4849b          	addiw	s1,s1,-1
    80002878:	0204c463          	bltz	s1,800028a0 <_Z8printIntiii+0xe8>
        __putc(buf[i]);
    8000287c:	fd040793          	addi	a5,s0,-48
    80002880:	009787b3          	add	a5,a5,s1
    80002884:	ff07c503          	lbu	a0,-16(a5)
    80002888:	00003097          	auipc	ra,0x3
    8000288c:	a64080e7          	jalr	-1436(ra) # 800052ec <__putc>
    80002890:	fe5ff06f          	j	80002874 <_Z8printIntiii+0xbc>
        x = -xx;
    80002894:	4090053b          	negw	a0,s1
        neg = 1;
    80002898:	00100593          	li	a1,1
        x = -xx;
    8000289c:	f7dff06f          	j	80002818 <_Z8printIntiii+0x60>

    UNLOCK();
    800028a0:	00000613          	li	a2,0
    800028a4:	00100593          	li	a1,1
    800028a8:	00004517          	auipc	a0,0x4
    800028ac:	7b050513          	addi	a0,a0,1968 # 80007058 <lockPrint>
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	894080e7          	jalr	-1900(ra) # 80001144 <copy_and_swap>
    800028b8:	fe0514e3          	bnez	a0,800028a0 <_Z8printIntiii+0xe8>
    800028bc:	03813083          	ld	ra,56(sp)
    800028c0:	03013403          	ld	s0,48(sp)
    800028c4:	02813483          	ld	s1,40(sp)
    800028c8:	02013903          	ld	s2,32(sp)
    800028cc:	01813983          	ld	s3,24(sp)
    800028d0:	04010113          	addi	sp,sp,64
    800028d4:	00008067          	ret

00000000800028d8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800028d8:	ff010113          	addi	sp,sp,-16
    800028dc:	00113423          	sd	ra,8(sp)
    800028e0:	00813023          	sd	s0,0(sp)
    800028e4:	01010413          	addi	s0,sp,16
    printString("Unesite broj testa? [1-7]\n");
    800028e8:	00004517          	auipc	a0,0x4
    800028ec:	8d850513          	addi	a0,a0,-1832 # 800061c0 <CONSOLE_STATUS+0x1b0>
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	d18080e7          	jalr	-744(ra) # 80002608 <_Z11printStringPKc>
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800028f8:	00000097          	auipc	ra,0x0
    800028fc:	c14080e7          	jalr	-1004(ra) # 8000250c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80002900:	00004517          	auipc	a0,0x4
    80002904:	8e050513          	addi	a0,a0,-1824 # 800061e0 <CONSOLE_STATUS+0x1d0>
    80002908:	00000097          	auipc	ra,0x0
    8000290c:	d00080e7          	jalr	-768(ra) # 80002608 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80002910:	00813083          	ld	ra,8(sp)
    80002914:	00013403          	ld	s0,0(sp)
    80002918:	01010113          	addi	sp,sp,16
    8000291c:	00008067          	ret

0000000080002920 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002920:	fe010113          	addi	sp,sp,-32
    80002924:	00113c23          	sd	ra,24(sp)
    80002928:	00813823          	sd	s0,16(sp)
    8000292c:	00913423          	sd	s1,8(sp)
    80002930:	01213023          	sd	s2,0(sp)
    80002934:	02010413          	addi	s0,sp,32
    80002938:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000293c:	00100793          	li	a5,1
    80002940:	02a7f863          	bgeu	a5,a0,80002970 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002944:	00a00793          	li	a5,10
    80002948:	02f577b3          	remu	a5,a0,a5
    8000294c:	02078e63          	beqz	a5,80002988 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002950:	fff48513          	addi	a0,s1,-1
    80002954:	00000097          	auipc	ra,0x0
    80002958:	fcc080e7          	jalr	-52(ra) # 80002920 <_ZL9fibonaccim>
    8000295c:	00050913          	mv	s2,a0
    80002960:	ffe48513          	addi	a0,s1,-2
    80002964:	00000097          	auipc	ra,0x0
    80002968:	fbc080e7          	jalr	-68(ra) # 80002920 <_ZL9fibonaccim>
    8000296c:	00a90533          	add	a0,s2,a0
}
    80002970:	01813083          	ld	ra,24(sp)
    80002974:	01013403          	ld	s0,16(sp)
    80002978:	00813483          	ld	s1,8(sp)
    8000297c:	00013903          	ld	s2,0(sp)
    80002980:	02010113          	addi	sp,sp,32
    80002984:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002988:	fffff097          	auipc	ra,0xfffff
    8000298c:	968080e7          	jalr	-1688(ra) # 800012f0 <_Z15thread_dispatchv>
    80002990:	fc1ff06f          	j	80002950 <_ZL9fibonaccim+0x30>

0000000080002994 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002994:	fe010113          	addi	sp,sp,-32
    80002998:	00113c23          	sd	ra,24(sp)
    8000299c:	00813823          	sd	s0,16(sp)
    800029a0:	00913423          	sd	s1,8(sp)
    800029a4:	01213023          	sd	s2,0(sp)
    800029a8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800029ac:	00a00493          	li	s1,10
    800029b0:	0400006f          	j	800029f0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800029b4:	00003517          	auipc	a0,0x3
    800029b8:	70450513          	addi	a0,a0,1796 # 800060b8 <CONSOLE_STATUS+0xa8>
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	c4c080e7          	jalr	-948(ra) # 80002608 <_Z11printStringPKc>
    800029c4:	00000613          	li	a2,0
    800029c8:	00a00593          	li	a1,10
    800029cc:	00048513          	mv	a0,s1
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	de8080e7          	jalr	-536(ra) # 800027b8 <_Z8printIntiii>
    800029d8:	00004517          	auipc	a0,0x4
    800029dc:	97050513          	addi	a0,a0,-1680 # 80006348 <CONSOLE_STATUS+0x338>
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	c28080e7          	jalr	-984(ra) # 80002608 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800029e8:	0014849b          	addiw	s1,s1,1
    800029ec:	0ff4f493          	andi	s1,s1,255
    800029f0:	00c00793          	li	a5,12
    800029f4:	fc97f0e3          	bgeu	a5,s1,800029b4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800029f8:	00003517          	auipc	a0,0x3
    800029fc:	6c850513          	addi	a0,a0,1736 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	c08080e7          	jalr	-1016(ra) # 80002608 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002a08:	00500313          	li	t1,5
    thread_dispatch();
    80002a0c:	fffff097          	auipc	ra,0xfffff
    80002a10:	8e4080e7          	jalr	-1820(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002a14:	01000513          	li	a0,16
    80002a18:	00000097          	auipc	ra,0x0
    80002a1c:	f08080e7          	jalr	-248(ra) # 80002920 <_ZL9fibonaccim>
    80002a20:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002a24:	00003517          	auipc	a0,0x3
    80002a28:	6ac50513          	addi	a0,a0,1708 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	bdc080e7          	jalr	-1060(ra) # 80002608 <_Z11printStringPKc>
    80002a34:	00000613          	li	a2,0
    80002a38:	00a00593          	li	a1,10
    80002a3c:	0009051b          	sext.w	a0,s2
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	d78080e7          	jalr	-648(ra) # 800027b8 <_Z8printIntiii>
    80002a48:	00004517          	auipc	a0,0x4
    80002a4c:	90050513          	addi	a0,a0,-1792 # 80006348 <CONSOLE_STATUS+0x338>
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	bb8080e7          	jalr	-1096(ra) # 80002608 <_Z11printStringPKc>
    80002a58:	0400006f          	j	80002a98 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002a5c:	00003517          	auipc	a0,0x3
    80002a60:	65c50513          	addi	a0,a0,1628 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	ba4080e7          	jalr	-1116(ra) # 80002608 <_Z11printStringPKc>
    80002a6c:	00000613          	li	a2,0
    80002a70:	00a00593          	li	a1,10
    80002a74:	00048513          	mv	a0,s1
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	d40080e7          	jalr	-704(ra) # 800027b8 <_Z8printIntiii>
    80002a80:	00004517          	auipc	a0,0x4
    80002a84:	8c850513          	addi	a0,a0,-1848 # 80006348 <CONSOLE_STATUS+0x338>
    80002a88:	00000097          	auipc	ra,0x0
    80002a8c:	b80080e7          	jalr	-1152(ra) # 80002608 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002a90:	0014849b          	addiw	s1,s1,1
    80002a94:	0ff4f493          	andi	s1,s1,255
    80002a98:	00f00793          	li	a5,15
    80002a9c:	fc97f0e3          	bgeu	a5,s1,80002a5c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002aa0:	00003517          	auipc	a0,0x3
    80002aa4:	64050513          	addi	a0,a0,1600 # 800060e0 <CONSOLE_STATUS+0xd0>
    80002aa8:	00000097          	auipc	ra,0x0
    80002aac:	b60080e7          	jalr	-1184(ra) # 80002608 <_Z11printStringPKc>
    finishedD = true;
    80002ab0:	00100793          	li	a5,1
    80002ab4:	00004717          	auipc	a4,0x4
    80002ab8:	5af70623          	sb	a5,1452(a4) # 80007060 <_ZL9finishedD>
    thread_dispatch();
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	834080e7          	jalr	-1996(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002ac4:	01813083          	ld	ra,24(sp)
    80002ac8:	01013403          	ld	s0,16(sp)
    80002acc:	00813483          	ld	s1,8(sp)
    80002ad0:	00013903          	ld	s2,0(sp)
    80002ad4:	02010113          	addi	sp,sp,32
    80002ad8:	00008067          	ret

0000000080002adc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002adc:	fe010113          	addi	sp,sp,-32
    80002ae0:	00113c23          	sd	ra,24(sp)
    80002ae4:	00813823          	sd	s0,16(sp)
    80002ae8:	00913423          	sd	s1,8(sp)
    80002aec:	01213023          	sd	s2,0(sp)
    80002af0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002af4:	00000493          	li	s1,0
    80002af8:	0400006f          	j	80002b38 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002afc:	00003517          	auipc	a0,0x3
    80002b00:	5f450513          	addi	a0,a0,1524 # 800060f0 <CONSOLE_STATUS+0xe0>
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	b04080e7          	jalr	-1276(ra) # 80002608 <_Z11printStringPKc>
    80002b0c:	00000613          	li	a2,0
    80002b10:	00a00593          	li	a1,10
    80002b14:	00048513          	mv	a0,s1
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	ca0080e7          	jalr	-864(ra) # 800027b8 <_Z8printIntiii>
    80002b20:	00004517          	auipc	a0,0x4
    80002b24:	82850513          	addi	a0,a0,-2008 # 80006348 <CONSOLE_STATUS+0x338>
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	ae0080e7          	jalr	-1312(ra) # 80002608 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002b30:	0014849b          	addiw	s1,s1,1
    80002b34:	0ff4f493          	andi	s1,s1,255
    80002b38:	00200793          	li	a5,2
    80002b3c:	fc97f0e3          	bgeu	a5,s1,80002afc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002b40:	00003517          	auipc	a0,0x3
    80002b44:	5b850513          	addi	a0,a0,1464 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	ac0080e7          	jalr	-1344(ra) # 80002608 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002b50:	00700313          	li	t1,7
    thread_dispatch();
    80002b54:	ffffe097          	auipc	ra,0xffffe
    80002b58:	79c080e7          	jalr	1948(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002b5c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002b60:	00003517          	auipc	a0,0x3
    80002b64:	5a850513          	addi	a0,a0,1448 # 80006108 <CONSOLE_STATUS+0xf8>
    80002b68:	00000097          	auipc	ra,0x0
    80002b6c:	aa0080e7          	jalr	-1376(ra) # 80002608 <_Z11printStringPKc>
    80002b70:	00000613          	li	a2,0
    80002b74:	00a00593          	li	a1,10
    80002b78:	0009051b          	sext.w	a0,s2
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	c3c080e7          	jalr	-964(ra) # 800027b8 <_Z8printIntiii>
    80002b84:	00003517          	auipc	a0,0x3
    80002b88:	7c450513          	addi	a0,a0,1988 # 80006348 <CONSOLE_STATUS+0x338>
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	a7c080e7          	jalr	-1412(ra) # 80002608 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002b94:	00c00513          	li	a0,12
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	d88080e7          	jalr	-632(ra) # 80002920 <_ZL9fibonaccim>
    80002ba0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002ba4:	00003517          	auipc	a0,0x3
    80002ba8:	56c50513          	addi	a0,a0,1388 # 80006110 <CONSOLE_STATUS+0x100>
    80002bac:	00000097          	auipc	ra,0x0
    80002bb0:	a5c080e7          	jalr	-1444(ra) # 80002608 <_Z11printStringPKc>
    80002bb4:	00000613          	li	a2,0
    80002bb8:	00a00593          	li	a1,10
    80002bbc:	0009051b          	sext.w	a0,s2
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	bf8080e7          	jalr	-1032(ra) # 800027b8 <_Z8printIntiii>
    80002bc8:	00003517          	auipc	a0,0x3
    80002bcc:	78050513          	addi	a0,a0,1920 # 80006348 <CONSOLE_STATUS+0x338>
    80002bd0:	00000097          	auipc	ra,0x0
    80002bd4:	a38080e7          	jalr	-1480(ra) # 80002608 <_Z11printStringPKc>
    80002bd8:	0400006f          	j	80002c18 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002bdc:	00003517          	auipc	a0,0x3
    80002be0:	51450513          	addi	a0,a0,1300 # 800060f0 <CONSOLE_STATUS+0xe0>
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	a24080e7          	jalr	-1500(ra) # 80002608 <_Z11printStringPKc>
    80002bec:	00000613          	li	a2,0
    80002bf0:	00a00593          	li	a1,10
    80002bf4:	00048513          	mv	a0,s1
    80002bf8:	00000097          	auipc	ra,0x0
    80002bfc:	bc0080e7          	jalr	-1088(ra) # 800027b8 <_Z8printIntiii>
    80002c00:	00003517          	auipc	a0,0x3
    80002c04:	74850513          	addi	a0,a0,1864 # 80006348 <CONSOLE_STATUS+0x338>
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	a00080e7          	jalr	-1536(ra) # 80002608 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002c10:	0014849b          	addiw	s1,s1,1
    80002c14:	0ff4f493          	andi	s1,s1,255
    80002c18:	00500793          	li	a5,5
    80002c1c:	fc97f0e3          	bgeu	a5,s1,80002bdc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80002c20:	00003517          	auipc	a0,0x3
    80002c24:	53050513          	addi	a0,a0,1328 # 80006150 <CONSOLE_STATUS+0x140>
    80002c28:	00000097          	auipc	ra,0x0
    80002c2c:	9e0080e7          	jalr	-1568(ra) # 80002608 <_Z11printStringPKc>
    finishedC = true;
    80002c30:	00100793          	li	a5,1
    80002c34:	00004717          	auipc	a4,0x4
    80002c38:	42f706a3          	sb	a5,1069(a4) # 80007061 <_ZL9finishedC>
    thread_dispatch();
    80002c3c:	ffffe097          	auipc	ra,0xffffe
    80002c40:	6b4080e7          	jalr	1716(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002c44:	01813083          	ld	ra,24(sp)
    80002c48:	01013403          	ld	s0,16(sp)
    80002c4c:	00813483          	ld	s1,8(sp)
    80002c50:	00013903          	ld	s2,0(sp)
    80002c54:	02010113          	addi	sp,sp,32
    80002c58:	00008067          	ret

0000000080002c5c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002c5c:	fe010113          	addi	sp,sp,-32
    80002c60:	00113c23          	sd	ra,24(sp)
    80002c64:	00813823          	sd	s0,16(sp)
    80002c68:	00913423          	sd	s1,8(sp)
    80002c6c:	01213023          	sd	s2,0(sp)
    80002c70:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002c74:	00000913          	li	s2,0
    80002c78:	0400006f          	j	80002cb8 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80002c7c:	ffffe097          	auipc	ra,0xffffe
    80002c80:	674080e7          	jalr	1652(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002c84:	00148493          	addi	s1,s1,1
    80002c88:	000027b7          	lui	a5,0x2
    80002c8c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002c90:	0097ee63          	bltu	a5,s1,80002cac <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002c94:	00000713          	li	a4,0
    80002c98:	000077b7          	lui	a5,0x7
    80002c9c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002ca0:	fce7eee3          	bltu	a5,a4,80002c7c <_ZL11workerBodyBPv+0x20>
    80002ca4:	00170713          	addi	a4,a4,1
    80002ca8:	ff1ff06f          	j	80002c98 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80002cac:	00a00793          	li	a5,10
    80002cb0:	04f90663          	beq	s2,a5,80002cfc <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80002cb4:	00190913          	addi	s2,s2,1
    80002cb8:	00f00793          	li	a5,15
    80002cbc:	0527e463          	bltu	a5,s2,80002d04 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80002cc0:	00003517          	auipc	a0,0x3
    80002cc4:	47050513          	addi	a0,a0,1136 # 80006130 <CONSOLE_STATUS+0x120>
    80002cc8:	00000097          	auipc	ra,0x0
    80002ccc:	940080e7          	jalr	-1728(ra) # 80002608 <_Z11printStringPKc>
    80002cd0:	00000613          	li	a2,0
    80002cd4:	00a00593          	li	a1,10
    80002cd8:	0009051b          	sext.w	a0,s2
    80002cdc:	00000097          	auipc	ra,0x0
    80002ce0:	adc080e7          	jalr	-1316(ra) # 800027b8 <_Z8printIntiii>
    80002ce4:	00003517          	auipc	a0,0x3
    80002ce8:	66450513          	addi	a0,a0,1636 # 80006348 <CONSOLE_STATUS+0x338>
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	91c080e7          	jalr	-1764(ra) # 80002608 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002cf4:	00000493          	li	s1,0
    80002cf8:	f91ff06f          	j	80002c88 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80002cfc:	14102ff3          	csrr	t6,sepc
    80002d00:	fb5ff06f          	j	80002cb4 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80002d04:	00003517          	auipc	a0,0x3
    80002d08:	43450513          	addi	a0,a0,1076 # 80006138 <CONSOLE_STATUS+0x128>
    80002d0c:	00000097          	auipc	ra,0x0
    80002d10:	8fc080e7          	jalr	-1796(ra) # 80002608 <_Z11printStringPKc>
    finishedB = true;
    80002d14:	00100793          	li	a5,1
    80002d18:	00004717          	auipc	a4,0x4
    80002d1c:	34f70523          	sb	a5,842(a4) # 80007062 <_ZL9finishedB>
    thread_dispatch();
    80002d20:	ffffe097          	auipc	ra,0xffffe
    80002d24:	5d0080e7          	jalr	1488(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002d28:	01813083          	ld	ra,24(sp)
    80002d2c:	01013403          	ld	s0,16(sp)
    80002d30:	00813483          	ld	s1,8(sp)
    80002d34:	00013903          	ld	s2,0(sp)
    80002d38:	02010113          	addi	sp,sp,32
    80002d3c:	00008067          	ret

0000000080002d40 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002d40:	fe010113          	addi	sp,sp,-32
    80002d44:	00113c23          	sd	ra,24(sp)
    80002d48:	00813823          	sd	s0,16(sp)
    80002d4c:	00913423          	sd	s1,8(sp)
    80002d50:	01213023          	sd	s2,0(sp)
    80002d54:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002d58:	00000913          	li	s2,0
    80002d5c:	0380006f          	j	80002d94 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002d60:	ffffe097          	auipc	ra,0xffffe
    80002d64:	590080e7          	jalr	1424(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002d68:	00148493          	addi	s1,s1,1
    80002d6c:	000027b7          	lui	a5,0x2
    80002d70:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002d74:	0097ee63          	bltu	a5,s1,80002d90 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002d78:	00000713          	li	a4,0
    80002d7c:	000077b7          	lui	a5,0x7
    80002d80:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002d84:	fce7eee3          	bltu	a5,a4,80002d60 <_ZL11workerBodyAPv+0x20>
    80002d88:	00170713          	addi	a4,a4,1
    80002d8c:	ff1ff06f          	j	80002d7c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002d90:	00190913          	addi	s2,s2,1
    80002d94:	00900793          	li	a5,9
    80002d98:	0527e063          	bltu	a5,s2,80002dd8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002d9c:	00003517          	auipc	a0,0x3
    80002da0:	3ac50513          	addi	a0,a0,940 # 80006148 <CONSOLE_STATUS+0x138>
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	864080e7          	jalr	-1948(ra) # 80002608 <_Z11printStringPKc>
    80002dac:	00000613          	li	a2,0
    80002db0:	00a00593          	li	a1,10
    80002db4:	0009051b          	sext.w	a0,s2
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	a00080e7          	jalr	-1536(ra) # 800027b8 <_Z8printIntiii>
    80002dc0:	00003517          	auipc	a0,0x3
    80002dc4:	58850513          	addi	a0,a0,1416 # 80006348 <CONSOLE_STATUS+0x338>
    80002dc8:	00000097          	auipc	ra,0x0
    80002dcc:	840080e7          	jalr	-1984(ra) # 80002608 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002dd0:	00000493          	li	s1,0
    80002dd4:	f99ff06f          	j	80002d6c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002dd8:	00003517          	auipc	a0,0x3
    80002ddc:	37850513          	addi	a0,a0,888 # 80006150 <CONSOLE_STATUS+0x140>
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	828080e7          	jalr	-2008(ra) # 80002608 <_Z11printStringPKc>
    finishedA = true;
    80002de8:	00100793          	li	a5,1
    80002dec:	00004717          	auipc	a4,0x4
    80002df0:	26f70ba3          	sb	a5,631(a4) # 80007063 <_ZL9finishedA>
}
    80002df4:	01813083          	ld	ra,24(sp)
    80002df8:	01013403          	ld	s0,16(sp)
    80002dfc:	00813483          	ld	s1,8(sp)
    80002e00:	00013903          	ld	s2,0(sp)
    80002e04:	02010113          	addi	sp,sp,32
    80002e08:	00008067          	ret

0000000080002e0c <_Z16System_Mode_testv>:


void System_Mode_test() {
    80002e0c:	fd010113          	addi	sp,sp,-48
    80002e10:	02113423          	sd	ra,40(sp)
    80002e14:	02813023          	sd	s0,32(sp)
    80002e18:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002e1c:	00000613          	li	a2,0
    80002e20:	00000597          	auipc	a1,0x0
    80002e24:	f2058593          	addi	a1,a1,-224 # 80002d40 <_ZL11workerBodyAPv>
    80002e28:	fd040513          	addi	a0,s0,-48
    80002e2c:	ffffe097          	auipc	ra,0xffffe
    80002e30:	3f0080e7          	jalr	1008(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadA created\n");
    80002e34:	00003517          	auipc	a0,0x3
    80002e38:	32c50513          	addi	a0,a0,812 # 80006160 <CONSOLE_STATUS+0x150>
    80002e3c:	fffff097          	auipc	ra,0xfffff
    80002e40:	7cc080e7          	jalr	1996(ra) # 80002608 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002e44:	00000613          	li	a2,0
    80002e48:	00000597          	auipc	a1,0x0
    80002e4c:	e1458593          	addi	a1,a1,-492 # 80002c5c <_ZL11workerBodyBPv>
    80002e50:	fd840513          	addi	a0,s0,-40
    80002e54:	ffffe097          	auipc	ra,0xffffe
    80002e58:	3c8080e7          	jalr	968(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadB created\n");
    80002e5c:	00003517          	auipc	a0,0x3
    80002e60:	31c50513          	addi	a0,a0,796 # 80006178 <CONSOLE_STATUS+0x168>
    80002e64:	fffff097          	auipc	ra,0xfffff
    80002e68:	7a4080e7          	jalr	1956(ra) # 80002608 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002e6c:	00000613          	li	a2,0
    80002e70:	00000597          	auipc	a1,0x0
    80002e74:	c6c58593          	addi	a1,a1,-916 # 80002adc <_ZL11workerBodyCPv>
    80002e78:	fe040513          	addi	a0,s0,-32
    80002e7c:	ffffe097          	auipc	ra,0xffffe
    80002e80:	3a0080e7          	jalr	928(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadC created\n");
    80002e84:	00003517          	auipc	a0,0x3
    80002e88:	30c50513          	addi	a0,a0,780 # 80006190 <CONSOLE_STATUS+0x180>
    80002e8c:	fffff097          	auipc	ra,0xfffff
    80002e90:	77c080e7          	jalr	1916(ra) # 80002608 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002e94:	00000613          	li	a2,0
    80002e98:	00000597          	auipc	a1,0x0
    80002e9c:	afc58593          	addi	a1,a1,-1284 # 80002994 <_ZL11workerBodyDPv>
    80002ea0:	fe840513          	addi	a0,s0,-24
    80002ea4:	ffffe097          	auipc	ra,0xffffe
    80002ea8:	378080e7          	jalr	888(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadD created\n");
    80002eac:	00003517          	auipc	a0,0x3
    80002eb0:	2fc50513          	addi	a0,a0,764 # 800061a8 <CONSOLE_STATUS+0x198>
    80002eb4:	fffff097          	auipc	ra,0xfffff
    80002eb8:	754080e7          	jalr	1876(ra) # 80002608 <_Z11printStringPKc>
    80002ebc:	00c0006f          	j	80002ec8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002ec0:	ffffe097          	auipc	ra,0xffffe
    80002ec4:	430080e7          	jalr	1072(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002ec8:	00004797          	auipc	a5,0x4
    80002ecc:	19b7c783          	lbu	a5,411(a5) # 80007063 <_ZL9finishedA>
    80002ed0:	fe0788e3          	beqz	a5,80002ec0 <_Z16System_Mode_testv+0xb4>
    80002ed4:	00004797          	auipc	a5,0x4
    80002ed8:	18e7c783          	lbu	a5,398(a5) # 80007062 <_ZL9finishedB>
    80002edc:	fe0782e3          	beqz	a5,80002ec0 <_Z16System_Mode_testv+0xb4>
    80002ee0:	00004797          	auipc	a5,0x4
    80002ee4:	1817c783          	lbu	a5,385(a5) # 80007061 <_ZL9finishedC>
    80002ee8:	fc078ce3          	beqz	a5,80002ec0 <_Z16System_Mode_testv+0xb4>
    80002eec:	00004797          	auipc	a5,0x4
    80002ef0:	1747c783          	lbu	a5,372(a5) # 80007060 <_ZL9finishedD>
    80002ef4:	fc0786e3          	beqz	a5,80002ec0 <_Z16System_Mode_testv+0xb4>
    }

}
    80002ef8:	02813083          	ld	ra,40(sp)
    80002efc:	02013403          	ld	s0,32(sp)
    80002f00:	03010113          	addi	sp,sp,48
    80002f04:	00008067          	ret

0000000080002f08 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002f08:	fe010113          	addi	sp,sp,-32
    80002f0c:	00113c23          	sd	ra,24(sp)
    80002f10:	00813823          	sd	s0,16(sp)
    80002f14:	00913423          	sd	s1,8(sp)
    80002f18:	01213023          	sd	s2,0(sp)
    80002f1c:	02010413          	addi	s0,sp,32
    80002f20:	00050493          	mv	s1,a0
    80002f24:	00058913          	mv	s2,a1
    80002f28:	0015879b          	addiw	a5,a1,1
    80002f2c:	0007851b          	sext.w	a0,a5
    80002f30:	00f4a023          	sw	a5,0(s1)
    80002f34:	0004a823          	sw	zero,16(s1)
    80002f38:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002f3c:	00251513          	slli	a0,a0,0x2
    80002f40:	ffffe097          	auipc	ra,0xffffe
    80002f44:	224080e7          	jalr	548(ra) # 80001164 <_Z9mem_allocm>
    80002f48:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002f4c:	00000593          	li	a1,0
    80002f50:	02048513          	addi	a0,s1,32
    80002f54:	ffffe097          	auipc	ra,0xffffe
    80002f58:	3bc080e7          	jalr	956(ra) # 80001310 <_Z8sem_openPP9Semaphorej>
    sem_open(&spaceAvailable, _cap);
    80002f5c:	00090593          	mv	a1,s2
    80002f60:	01848513          	addi	a0,s1,24
    80002f64:	ffffe097          	auipc	ra,0xffffe
    80002f68:	3ac080e7          	jalr	940(ra) # 80001310 <_Z8sem_openPP9Semaphorej>
    sem_open(&mutexHead, 1);
    80002f6c:	00100593          	li	a1,1
    80002f70:	02848513          	addi	a0,s1,40
    80002f74:	ffffe097          	auipc	ra,0xffffe
    80002f78:	39c080e7          	jalr	924(ra) # 80001310 <_Z8sem_openPP9Semaphorej>
    sem_open(&mutexTail, 1);
    80002f7c:	00100593          	li	a1,1
    80002f80:	03048513          	addi	a0,s1,48
    80002f84:	ffffe097          	auipc	ra,0xffffe
    80002f88:	38c080e7          	jalr	908(ra) # 80001310 <_Z8sem_openPP9Semaphorej>
}
    80002f8c:	01813083          	ld	ra,24(sp)
    80002f90:	01013403          	ld	s0,16(sp)
    80002f94:	00813483          	ld	s1,8(sp)
    80002f98:	00013903          	ld	s2,0(sp)
    80002f9c:	02010113          	addi	sp,sp,32
    80002fa0:	00008067          	ret

0000000080002fa4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002fa4:	fe010113          	addi	sp,sp,-32
    80002fa8:	00113c23          	sd	ra,24(sp)
    80002fac:	00813823          	sd	s0,16(sp)
    80002fb0:	00913423          	sd	s1,8(sp)
    80002fb4:	01213023          	sd	s2,0(sp)
    80002fb8:	02010413          	addi	s0,sp,32
    80002fbc:	00050493          	mv	s1,a0
    80002fc0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002fc4:	01853503          	ld	a0,24(a0)
    80002fc8:	ffffe097          	auipc	ra,0xffffe
    80002fcc:	3ac080e7          	jalr	940(ra) # 80001374 <_Z8sem_waitP9Semaphore>

    sem_wait(mutexTail);
    80002fd0:	0304b503          	ld	a0,48(s1)
    80002fd4:	ffffe097          	auipc	ra,0xffffe
    80002fd8:	3a0080e7          	jalr	928(ra) # 80001374 <_Z8sem_waitP9Semaphore>
    buffer[tail] = val;
    80002fdc:	0084b783          	ld	a5,8(s1)
    80002fe0:	0144a703          	lw	a4,20(s1)
    80002fe4:	00271713          	slli	a4,a4,0x2
    80002fe8:	00e787b3          	add	a5,a5,a4
    80002fec:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002ff0:	0144a783          	lw	a5,20(s1)
    80002ff4:	0017879b          	addiw	a5,a5,1
    80002ff8:	0004a703          	lw	a4,0(s1)
    80002ffc:	02e7e7bb          	remw	a5,a5,a4
    80003000:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003004:	0304b503          	ld	a0,48(s1)
    80003008:	ffffe097          	auipc	ra,0xffffe
    8000300c:	398080e7          	jalr	920(ra) # 800013a0 <_Z10sem_signalP9Semaphore>

    sem_signal(itemAvailable);
    80003010:	0204b503          	ld	a0,32(s1)
    80003014:	ffffe097          	auipc	ra,0xffffe
    80003018:	38c080e7          	jalr	908(ra) # 800013a0 <_Z10sem_signalP9Semaphore>

}
    8000301c:	01813083          	ld	ra,24(sp)
    80003020:	01013403          	ld	s0,16(sp)
    80003024:	00813483          	ld	s1,8(sp)
    80003028:	00013903          	ld	s2,0(sp)
    8000302c:	02010113          	addi	sp,sp,32
    80003030:	00008067          	ret

0000000080003034 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003034:	fe010113          	addi	sp,sp,-32
    80003038:	00113c23          	sd	ra,24(sp)
    8000303c:	00813823          	sd	s0,16(sp)
    80003040:	00913423          	sd	s1,8(sp)
    80003044:	01213023          	sd	s2,0(sp)
    80003048:	02010413          	addi	s0,sp,32
    8000304c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003050:	02053503          	ld	a0,32(a0)
    80003054:	ffffe097          	auipc	ra,0xffffe
    80003058:	320080e7          	jalr	800(ra) # 80001374 <_Z8sem_waitP9Semaphore>

    sem_wait(mutexHead);
    8000305c:	0284b503          	ld	a0,40(s1)
    80003060:	ffffe097          	auipc	ra,0xffffe
    80003064:	314080e7          	jalr	788(ra) # 80001374 <_Z8sem_waitP9Semaphore>

    int ret = buffer[head];
    80003068:	0084b703          	ld	a4,8(s1)
    8000306c:	0104a783          	lw	a5,16(s1)
    80003070:	00279693          	slli	a3,a5,0x2
    80003074:	00d70733          	add	a4,a4,a3
    80003078:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000307c:	0017879b          	addiw	a5,a5,1
    80003080:	0004a703          	lw	a4,0(s1)
    80003084:	02e7e7bb          	remw	a5,a5,a4
    80003088:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000308c:	0284b503          	ld	a0,40(s1)
    80003090:	ffffe097          	auipc	ra,0xffffe
    80003094:	310080e7          	jalr	784(ra) # 800013a0 <_Z10sem_signalP9Semaphore>

    sem_signal(spaceAvailable);
    80003098:	0184b503          	ld	a0,24(s1)
    8000309c:	ffffe097          	auipc	ra,0xffffe
    800030a0:	304080e7          	jalr	772(ra) # 800013a0 <_Z10sem_signalP9Semaphore>

    return ret;
}
    800030a4:	00090513          	mv	a0,s2
    800030a8:	01813083          	ld	ra,24(sp)
    800030ac:	01013403          	ld	s0,16(sp)
    800030b0:	00813483          	ld	s1,8(sp)
    800030b4:	00013903          	ld	s2,0(sp)
    800030b8:	02010113          	addi	sp,sp,32
    800030bc:	00008067          	ret

00000000800030c0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800030c0:	fe010113          	addi	sp,sp,-32
    800030c4:	00113c23          	sd	ra,24(sp)
    800030c8:	00813823          	sd	s0,16(sp)
    800030cc:	00913423          	sd	s1,8(sp)
    800030d0:	01213023          	sd	s2,0(sp)
    800030d4:	02010413          	addi	s0,sp,32
    800030d8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800030dc:	02853503          	ld	a0,40(a0)
    800030e0:	ffffe097          	auipc	ra,0xffffe
    800030e4:	294080e7          	jalr	660(ra) # 80001374 <_Z8sem_waitP9Semaphore>
    sem_wait(mutexTail);
    800030e8:	0304b503          	ld	a0,48(s1)
    800030ec:	ffffe097          	auipc	ra,0xffffe
    800030f0:	288080e7          	jalr	648(ra) # 80001374 <_Z8sem_waitP9Semaphore>

    if (tail >= head) {
    800030f4:	0144a783          	lw	a5,20(s1)
    800030f8:	0104a903          	lw	s2,16(s1)
    800030fc:	0327ce63          	blt	a5,s2,80003138 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003100:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003104:	0304b503          	ld	a0,48(s1)
    80003108:	ffffe097          	auipc	ra,0xffffe
    8000310c:	298080e7          	jalr	664(ra) # 800013a0 <_Z10sem_signalP9Semaphore>
    sem_signal(mutexHead);
    80003110:	0284b503          	ld	a0,40(s1)
    80003114:	ffffe097          	auipc	ra,0xffffe
    80003118:	28c080e7          	jalr	652(ra) # 800013a0 <_Z10sem_signalP9Semaphore>

    return ret;
}
    8000311c:	00090513          	mv	a0,s2
    80003120:	01813083          	ld	ra,24(sp)
    80003124:	01013403          	ld	s0,16(sp)
    80003128:	00813483          	ld	s1,8(sp)
    8000312c:	00013903          	ld	s2,0(sp)
    80003130:	02010113          	addi	sp,sp,32
    80003134:	00008067          	ret
        ret = cap - head + tail;
    80003138:	0004a703          	lw	a4,0(s1)
    8000313c:	4127093b          	subw	s2,a4,s2
    80003140:	00f9093b          	addw	s2,s2,a5
    80003144:	fc1ff06f          	j	80003104 <_ZN6Buffer6getCntEv+0x44>

0000000080003148 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003148:	fe010113          	addi	sp,sp,-32
    8000314c:	00113c23          	sd	ra,24(sp)
    80003150:	00813823          	sd	s0,16(sp)
    80003154:	00913423          	sd	s1,8(sp)
    80003158:	02010413          	addi	s0,sp,32
    8000315c:	00050493          	mv	s1,a0
    __putc('\n');
    80003160:	00a00513          	li	a0,10
    80003164:	00002097          	auipc	ra,0x2
    80003168:	188080e7          	jalr	392(ra) # 800052ec <__putc>
    printString("Buffer deleted!\n");
    8000316c:	00003517          	auipc	a0,0x3
    80003170:	0b450513          	addi	a0,a0,180 # 80006220 <CONSOLE_STATUS+0x210>
    80003174:	fffff097          	auipc	ra,0xfffff
    80003178:	494080e7          	jalr	1172(ra) # 80002608 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000317c:	00048513          	mv	a0,s1
    80003180:	00000097          	auipc	ra,0x0
    80003184:	f40080e7          	jalr	-192(ra) # 800030c0 <_ZN6Buffer6getCntEv>
    80003188:	02a05c63          	blez	a0,800031c0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000318c:	0084b783          	ld	a5,8(s1)
    80003190:	0104a703          	lw	a4,16(s1)
    80003194:	00271713          	slli	a4,a4,0x2
    80003198:	00e787b3          	add	a5,a5,a4
        __putc(ch);
    8000319c:	0007c503          	lbu	a0,0(a5)
    800031a0:	00002097          	auipc	ra,0x2
    800031a4:	14c080e7          	jalr	332(ra) # 800052ec <__putc>
        head = (head + 1) % cap;
    800031a8:	0104a783          	lw	a5,16(s1)
    800031ac:	0017879b          	addiw	a5,a5,1
    800031b0:	0004a703          	lw	a4,0(s1)
    800031b4:	02e7e7bb          	remw	a5,a5,a4
    800031b8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800031bc:	fc1ff06f          	j	8000317c <_ZN6BufferD1Ev+0x34>
    __putc('!');
    800031c0:	02100513          	li	a0,33
    800031c4:	00002097          	auipc	ra,0x2
    800031c8:	128080e7          	jalr	296(ra) # 800052ec <__putc>
    __putc('\n');
    800031cc:	00a00513          	li	a0,10
    800031d0:	00002097          	auipc	ra,0x2
    800031d4:	11c080e7          	jalr	284(ra) # 800052ec <__putc>
    mem_free(buffer);
    800031d8:	0084b503          	ld	a0,8(s1)
    800031dc:	ffffe097          	auipc	ra,0xffffe
    800031e0:	fcc080e7          	jalr	-52(ra) # 800011a8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800031e4:	0204b503          	ld	a0,32(s1)
    800031e8:	ffffe097          	auipc	ra,0xffffe
    800031ec:	160080e7          	jalr	352(ra) # 80001348 <_Z9sem_closeP9Semaphore>
    sem_close(spaceAvailable);
    800031f0:	0184b503          	ld	a0,24(s1)
    800031f4:	ffffe097          	auipc	ra,0xffffe
    800031f8:	154080e7          	jalr	340(ra) # 80001348 <_Z9sem_closeP9Semaphore>
    sem_close(mutexTail);
    800031fc:	0304b503          	ld	a0,48(s1)
    80003200:	ffffe097          	auipc	ra,0xffffe
    80003204:	148080e7          	jalr	328(ra) # 80001348 <_Z9sem_closeP9Semaphore>
    sem_close(mutexHead);
    80003208:	0284b503          	ld	a0,40(s1)
    8000320c:	ffffe097          	auipc	ra,0xffffe
    80003210:	13c080e7          	jalr	316(ra) # 80001348 <_Z9sem_closeP9Semaphore>
}
    80003214:	01813083          	ld	ra,24(sp)
    80003218:	01013403          	ld	s0,16(sp)
    8000321c:	00813483          	ld	s1,8(sp)
    80003220:	02010113          	addi	sp,sp,32
    80003224:	00008067          	ret

0000000080003228 <start>:
    80003228:	ff010113          	addi	sp,sp,-16
    8000322c:	00813423          	sd	s0,8(sp)
    80003230:	01010413          	addi	s0,sp,16
    80003234:	300027f3          	csrr	a5,mstatus
    80003238:	ffffe737          	lui	a4,0xffffe
    8000323c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff652f>
    80003240:	00e7f7b3          	and	a5,a5,a4
    80003244:	00001737          	lui	a4,0x1
    80003248:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000324c:	00e7e7b3          	or	a5,a5,a4
    80003250:	30079073          	csrw	mstatus,a5
    80003254:	00000797          	auipc	a5,0x0
    80003258:	16078793          	addi	a5,a5,352 # 800033b4 <system_main>
    8000325c:	34179073          	csrw	mepc,a5
    80003260:	00000793          	li	a5,0
    80003264:	18079073          	csrw	satp,a5
    80003268:	000107b7          	lui	a5,0x10
    8000326c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003270:	30279073          	csrw	medeleg,a5
    80003274:	30379073          	csrw	mideleg,a5
    80003278:	104027f3          	csrr	a5,sie
    8000327c:	2227e793          	ori	a5,a5,546
    80003280:	10479073          	csrw	sie,a5
    80003284:	fff00793          	li	a5,-1
    80003288:	00a7d793          	srli	a5,a5,0xa
    8000328c:	3b079073          	csrw	pmpaddr0,a5
    80003290:	00f00793          	li	a5,15
    80003294:	3a079073          	csrw	pmpcfg0,a5
    80003298:	f14027f3          	csrr	a5,mhartid
    8000329c:	0200c737          	lui	a4,0x200c
    800032a0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800032a4:	0007869b          	sext.w	a3,a5
    800032a8:	00269713          	slli	a4,a3,0x2
    800032ac:	000f4637          	lui	a2,0xf4
    800032b0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800032b4:	00d70733          	add	a4,a4,a3
    800032b8:	0037979b          	slliw	a5,a5,0x3
    800032bc:	020046b7          	lui	a3,0x2004
    800032c0:	00d787b3          	add	a5,a5,a3
    800032c4:	00c585b3          	add	a1,a1,a2
    800032c8:	00371693          	slli	a3,a4,0x3
    800032cc:	00004717          	auipc	a4,0x4
    800032d0:	da470713          	addi	a4,a4,-604 # 80007070 <timer_scratch>
    800032d4:	00b7b023          	sd	a1,0(a5)
    800032d8:	00d70733          	add	a4,a4,a3
    800032dc:	00f73c23          	sd	a5,24(a4)
    800032e0:	02c73023          	sd	a2,32(a4)
    800032e4:	34071073          	csrw	mscratch,a4
    800032e8:	00000797          	auipc	a5,0x0
    800032ec:	6e878793          	addi	a5,a5,1768 # 800039d0 <timervec>
    800032f0:	30579073          	csrw	mtvec,a5
    800032f4:	300027f3          	csrr	a5,mstatus
    800032f8:	0087e793          	ori	a5,a5,8
    800032fc:	30079073          	csrw	mstatus,a5
    80003300:	304027f3          	csrr	a5,mie
    80003304:	0807e793          	ori	a5,a5,128
    80003308:	30479073          	csrw	mie,a5
    8000330c:	f14027f3          	csrr	a5,mhartid
    80003310:	0007879b          	sext.w	a5,a5
    80003314:	00078213          	mv	tp,a5
    80003318:	30200073          	mret
    8000331c:	00813403          	ld	s0,8(sp)
    80003320:	01010113          	addi	sp,sp,16
    80003324:	00008067          	ret

0000000080003328 <timerinit>:
    80003328:	ff010113          	addi	sp,sp,-16
    8000332c:	00813423          	sd	s0,8(sp)
    80003330:	01010413          	addi	s0,sp,16
    80003334:	f14027f3          	csrr	a5,mhartid
    80003338:	0200c737          	lui	a4,0x200c
    8000333c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003340:	0007869b          	sext.w	a3,a5
    80003344:	00269713          	slli	a4,a3,0x2
    80003348:	000f4637          	lui	a2,0xf4
    8000334c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003350:	00d70733          	add	a4,a4,a3
    80003354:	0037979b          	slliw	a5,a5,0x3
    80003358:	020046b7          	lui	a3,0x2004
    8000335c:	00d787b3          	add	a5,a5,a3
    80003360:	00c585b3          	add	a1,a1,a2
    80003364:	00371693          	slli	a3,a4,0x3
    80003368:	00004717          	auipc	a4,0x4
    8000336c:	d0870713          	addi	a4,a4,-760 # 80007070 <timer_scratch>
    80003370:	00b7b023          	sd	a1,0(a5)
    80003374:	00d70733          	add	a4,a4,a3
    80003378:	00f73c23          	sd	a5,24(a4)
    8000337c:	02c73023          	sd	a2,32(a4)
    80003380:	34071073          	csrw	mscratch,a4
    80003384:	00000797          	auipc	a5,0x0
    80003388:	64c78793          	addi	a5,a5,1612 # 800039d0 <timervec>
    8000338c:	30579073          	csrw	mtvec,a5
    80003390:	300027f3          	csrr	a5,mstatus
    80003394:	0087e793          	ori	a5,a5,8
    80003398:	30079073          	csrw	mstatus,a5
    8000339c:	304027f3          	csrr	a5,mie
    800033a0:	0807e793          	ori	a5,a5,128
    800033a4:	30479073          	csrw	mie,a5
    800033a8:	00813403          	ld	s0,8(sp)
    800033ac:	01010113          	addi	sp,sp,16
    800033b0:	00008067          	ret

00000000800033b4 <system_main>:
    800033b4:	fe010113          	addi	sp,sp,-32
    800033b8:	00813823          	sd	s0,16(sp)
    800033bc:	00913423          	sd	s1,8(sp)
    800033c0:	00113c23          	sd	ra,24(sp)
    800033c4:	02010413          	addi	s0,sp,32
    800033c8:	00000097          	auipc	ra,0x0
    800033cc:	0c4080e7          	jalr	196(ra) # 8000348c <cpuid>
    800033d0:	00004497          	auipc	s1,0x4
    800033d4:	c2048493          	addi	s1,s1,-992 # 80006ff0 <started>
    800033d8:	02050263          	beqz	a0,800033fc <system_main+0x48>
    800033dc:	0004a783          	lw	a5,0(s1)
    800033e0:	0007879b          	sext.w	a5,a5
    800033e4:	fe078ce3          	beqz	a5,800033dc <system_main+0x28>
    800033e8:	0ff0000f          	fence
    800033ec:	00003517          	auipc	a0,0x3
    800033f0:	e7c50513          	addi	a0,a0,-388 # 80006268 <CONSOLE_STATUS+0x258>
    800033f4:	00001097          	auipc	ra,0x1
    800033f8:	a78080e7          	jalr	-1416(ra) # 80003e6c <panic>
    800033fc:	00001097          	auipc	ra,0x1
    80003400:	9cc080e7          	jalr	-1588(ra) # 80003dc8 <consoleinit>
    80003404:	00001097          	auipc	ra,0x1
    80003408:	158080e7          	jalr	344(ra) # 8000455c <printfinit>
    8000340c:	00003517          	auipc	a0,0x3
    80003410:	f3c50513          	addi	a0,a0,-196 # 80006348 <CONSOLE_STATUS+0x338>
    80003414:	00001097          	auipc	ra,0x1
    80003418:	ab4080e7          	jalr	-1356(ra) # 80003ec8 <__printf>
    8000341c:	00003517          	auipc	a0,0x3
    80003420:	e1c50513          	addi	a0,a0,-484 # 80006238 <CONSOLE_STATUS+0x228>
    80003424:	00001097          	auipc	ra,0x1
    80003428:	aa4080e7          	jalr	-1372(ra) # 80003ec8 <__printf>
    8000342c:	00003517          	auipc	a0,0x3
    80003430:	f1c50513          	addi	a0,a0,-228 # 80006348 <CONSOLE_STATUS+0x338>
    80003434:	00001097          	auipc	ra,0x1
    80003438:	a94080e7          	jalr	-1388(ra) # 80003ec8 <__printf>
    8000343c:	00001097          	auipc	ra,0x1
    80003440:	4ac080e7          	jalr	1196(ra) # 800048e8 <kinit>
    80003444:	00000097          	auipc	ra,0x0
    80003448:	148080e7          	jalr	328(ra) # 8000358c <trapinit>
    8000344c:	00000097          	auipc	ra,0x0
    80003450:	16c080e7          	jalr	364(ra) # 800035b8 <trapinithart>
    80003454:	00000097          	auipc	ra,0x0
    80003458:	5bc080e7          	jalr	1468(ra) # 80003a10 <plicinit>
    8000345c:	00000097          	auipc	ra,0x0
    80003460:	5dc080e7          	jalr	1500(ra) # 80003a38 <plicinithart>
    80003464:	00000097          	auipc	ra,0x0
    80003468:	078080e7          	jalr	120(ra) # 800034dc <userinit>
    8000346c:	0ff0000f          	fence
    80003470:	00100793          	li	a5,1
    80003474:	00003517          	auipc	a0,0x3
    80003478:	ddc50513          	addi	a0,a0,-548 # 80006250 <CONSOLE_STATUS+0x240>
    8000347c:	00f4a023          	sw	a5,0(s1)
    80003480:	00001097          	auipc	ra,0x1
    80003484:	a48080e7          	jalr	-1464(ra) # 80003ec8 <__printf>
    80003488:	0000006f          	j	80003488 <system_main+0xd4>

000000008000348c <cpuid>:
    8000348c:	ff010113          	addi	sp,sp,-16
    80003490:	00813423          	sd	s0,8(sp)
    80003494:	01010413          	addi	s0,sp,16
    80003498:	00020513          	mv	a0,tp
    8000349c:	00813403          	ld	s0,8(sp)
    800034a0:	0005051b          	sext.w	a0,a0
    800034a4:	01010113          	addi	sp,sp,16
    800034a8:	00008067          	ret

00000000800034ac <mycpu>:
    800034ac:	ff010113          	addi	sp,sp,-16
    800034b0:	00813423          	sd	s0,8(sp)
    800034b4:	01010413          	addi	s0,sp,16
    800034b8:	00020793          	mv	a5,tp
    800034bc:	00813403          	ld	s0,8(sp)
    800034c0:	0007879b          	sext.w	a5,a5
    800034c4:	00779793          	slli	a5,a5,0x7
    800034c8:	00005517          	auipc	a0,0x5
    800034cc:	bd850513          	addi	a0,a0,-1064 # 800080a0 <cpus>
    800034d0:	00f50533          	add	a0,a0,a5
    800034d4:	01010113          	addi	sp,sp,16
    800034d8:	00008067          	ret

00000000800034dc <userinit>:
    800034dc:	ff010113          	addi	sp,sp,-16
    800034e0:	00813423          	sd	s0,8(sp)
    800034e4:	01010413          	addi	s0,sp,16
    800034e8:	00813403          	ld	s0,8(sp)
    800034ec:	01010113          	addi	sp,sp,16
    800034f0:	ffffe317          	auipc	t1,0xffffe
    800034f4:	56c30067          	jr	1388(t1) # 80001a5c <main>

00000000800034f8 <either_copyout>:
    800034f8:	ff010113          	addi	sp,sp,-16
    800034fc:	00813023          	sd	s0,0(sp)
    80003500:	00113423          	sd	ra,8(sp)
    80003504:	01010413          	addi	s0,sp,16
    80003508:	02051663          	bnez	a0,80003534 <either_copyout+0x3c>
    8000350c:	00058513          	mv	a0,a1
    80003510:	00060593          	mv	a1,a2
    80003514:	0006861b          	sext.w	a2,a3
    80003518:	00002097          	auipc	ra,0x2
    8000351c:	c5c080e7          	jalr	-932(ra) # 80005174 <__memmove>
    80003520:	00813083          	ld	ra,8(sp)
    80003524:	00013403          	ld	s0,0(sp)
    80003528:	00000513          	li	a0,0
    8000352c:	01010113          	addi	sp,sp,16
    80003530:	00008067          	ret
    80003534:	00003517          	auipc	a0,0x3
    80003538:	d5c50513          	addi	a0,a0,-676 # 80006290 <CONSOLE_STATUS+0x280>
    8000353c:	00001097          	auipc	ra,0x1
    80003540:	930080e7          	jalr	-1744(ra) # 80003e6c <panic>

0000000080003544 <either_copyin>:
    80003544:	ff010113          	addi	sp,sp,-16
    80003548:	00813023          	sd	s0,0(sp)
    8000354c:	00113423          	sd	ra,8(sp)
    80003550:	01010413          	addi	s0,sp,16
    80003554:	02059463          	bnez	a1,8000357c <either_copyin+0x38>
    80003558:	00060593          	mv	a1,a2
    8000355c:	0006861b          	sext.w	a2,a3
    80003560:	00002097          	auipc	ra,0x2
    80003564:	c14080e7          	jalr	-1004(ra) # 80005174 <__memmove>
    80003568:	00813083          	ld	ra,8(sp)
    8000356c:	00013403          	ld	s0,0(sp)
    80003570:	00000513          	li	a0,0
    80003574:	01010113          	addi	sp,sp,16
    80003578:	00008067          	ret
    8000357c:	00003517          	auipc	a0,0x3
    80003580:	d3c50513          	addi	a0,a0,-708 # 800062b8 <CONSOLE_STATUS+0x2a8>
    80003584:	00001097          	auipc	ra,0x1
    80003588:	8e8080e7          	jalr	-1816(ra) # 80003e6c <panic>

000000008000358c <trapinit>:
    8000358c:	ff010113          	addi	sp,sp,-16
    80003590:	00813423          	sd	s0,8(sp)
    80003594:	01010413          	addi	s0,sp,16
    80003598:	00813403          	ld	s0,8(sp)
    8000359c:	00003597          	auipc	a1,0x3
    800035a0:	d4458593          	addi	a1,a1,-700 # 800062e0 <CONSOLE_STATUS+0x2d0>
    800035a4:	00005517          	auipc	a0,0x5
    800035a8:	b7c50513          	addi	a0,a0,-1156 # 80008120 <tickslock>
    800035ac:	01010113          	addi	sp,sp,16
    800035b0:	00001317          	auipc	t1,0x1
    800035b4:	5c830067          	jr	1480(t1) # 80004b78 <initlock>

00000000800035b8 <trapinithart>:
    800035b8:	ff010113          	addi	sp,sp,-16
    800035bc:	00813423          	sd	s0,8(sp)
    800035c0:	01010413          	addi	s0,sp,16
    800035c4:	00000797          	auipc	a5,0x0
    800035c8:	2fc78793          	addi	a5,a5,764 # 800038c0 <kernelvec>
    800035cc:	10579073          	csrw	stvec,a5
    800035d0:	00813403          	ld	s0,8(sp)
    800035d4:	01010113          	addi	sp,sp,16
    800035d8:	00008067          	ret

00000000800035dc <usertrap>:
    800035dc:	ff010113          	addi	sp,sp,-16
    800035e0:	00813423          	sd	s0,8(sp)
    800035e4:	01010413          	addi	s0,sp,16
    800035e8:	00813403          	ld	s0,8(sp)
    800035ec:	01010113          	addi	sp,sp,16
    800035f0:	00008067          	ret

00000000800035f4 <usertrapret>:
    800035f4:	ff010113          	addi	sp,sp,-16
    800035f8:	00813423          	sd	s0,8(sp)
    800035fc:	01010413          	addi	s0,sp,16
    80003600:	00813403          	ld	s0,8(sp)
    80003604:	01010113          	addi	sp,sp,16
    80003608:	00008067          	ret

000000008000360c <kerneltrap>:
    8000360c:	fe010113          	addi	sp,sp,-32
    80003610:	00813823          	sd	s0,16(sp)
    80003614:	00113c23          	sd	ra,24(sp)
    80003618:	00913423          	sd	s1,8(sp)
    8000361c:	02010413          	addi	s0,sp,32
    80003620:	142025f3          	csrr	a1,scause
    80003624:	100027f3          	csrr	a5,sstatus
    80003628:	0027f793          	andi	a5,a5,2
    8000362c:	10079c63          	bnez	a5,80003744 <kerneltrap+0x138>
    80003630:	142027f3          	csrr	a5,scause
    80003634:	0207ce63          	bltz	a5,80003670 <kerneltrap+0x64>
    80003638:	00003517          	auipc	a0,0x3
    8000363c:	cf050513          	addi	a0,a0,-784 # 80006328 <CONSOLE_STATUS+0x318>
    80003640:	00001097          	auipc	ra,0x1
    80003644:	888080e7          	jalr	-1912(ra) # 80003ec8 <__printf>
    80003648:	141025f3          	csrr	a1,sepc
    8000364c:	14302673          	csrr	a2,stval
    80003650:	00003517          	auipc	a0,0x3
    80003654:	ce850513          	addi	a0,a0,-792 # 80006338 <CONSOLE_STATUS+0x328>
    80003658:	00001097          	auipc	ra,0x1
    8000365c:	870080e7          	jalr	-1936(ra) # 80003ec8 <__printf>
    80003660:	00003517          	auipc	a0,0x3
    80003664:	cf050513          	addi	a0,a0,-784 # 80006350 <CONSOLE_STATUS+0x340>
    80003668:	00001097          	auipc	ra,0x1
    8000366c:	804080e7          	jalr	-2044(ra) # 80003e6c <panic>
    80003670:	0ff7f713          	andi	a4,a5,255
    80003674:	00900693          	li	a3,9
    80003678:	04d70063          	beq	a4,a3,800036b8 <kerneltrap+0xac>
    8000367c:	fff00713          	li	a4,-1
    80003680:	03f71713          	slli	a4,a4,0x3f
    80003684:	00170713          	addi	a4,a4,1
    80003688:	fae798e3          	bne	a5,a4,80003638 <kerneltrap+0x2c>
    8000368c:	00000097          	auipc	ra,0x0
    80003690:	e00080e7          	jalr	-512(ra) # 8000348c <cpuid>
    80003694:	06050663          	beqz	a0,80003700 <kerneltrap+0xf4>
    80003698:	144027f3          	csrr	a5,sip
    8000369c:	ffd7f793          	andi	a5,a5,-3
    800036a0:	14479073          	csrw	sip,a5
    800036a4:	01813083          	ld	ra,24(sp)
    800036a8:	01013403          	ld	s0,16(sp)
    800036ac:	00813483          	ld	s1,8(sp)
    800036b0:	02010113          	addi	sp,sp,32
    800036b4:	00008067          	ret
    800036b8:	00000097          	auipc	ra,0x0
    800036bc:	3cc080e7          	jalr	972(ra) # 80003a84 <plic_claim>
    800036c0:	00a00793          	li	a5,10
    800036c4:	00050493          	mv	s1,a0
    800036c8:	06f50863          	beq	a0,a5,80003738 <kerneltrap+0x12c>
    800036cc:	fc050ce3          	beqz	a0,800036a4 <kerneltrap+0x98>
    800036d0:	00050593          	mv	a1,a0
    800036d4:	00003517          	auipc	a0,0x3
    800036d8:	c3450513          	addi	a0,a0,-972 # 80006308 <CONSOLE_STATUS+0x2f8>
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	7ec080e7          	jalr	2028(ra) # 80003ec8 <__printf>
    800036e4:	01013403          	ld	s0,16(sp)
    800036e8:	01813083          	ld	ra,24(sp)
    800036ec:	00048513          	mv	a0,s1
    800036f0:	00813483          	ld	s1,8(sp)
    800036f4:	02010113          	addi	sp,sp,32
    800036f8:	00000317          	auipc	t1,0x0
    800036fc:	3c430067          	jr	964(t1) # 80003abc <plic_complete>
    80003700:	00005517          	auipc	a0,0x5
    80003704:	a2050513          	addi	a0,a0,-1504 # 80008120 <tickslock>
    80003708:	00001097          	auipc	ra,0x1
    8000370c:	494080e7          	jalr	1172(ra) # 80004b9c <acquire>
    80003710:	00004717          	auipc	a4,0x4
    80003714:	8e470713          	addi	a4,a4,-1820 # 80006ff4 <ticks>
    80003718:	00072783          	lw	a5,0(a4)
    8000371c:	00005517          	auipc	a0,0x5
    80003720:	a0450513          	addi	a0,a0,-1532 # 80008120 <tickslock>
    80003724:	0017879b          	addiw	a5,a5,1
    80003728:	00f72023          	sw	a5,0(a4)
    8000372c:	00001097          	auipc	ra,0x1
    80003730:	53c080e7          	jalr	1340(ra) # 80004c68 <release>
    80003734:	f65ff06f          	j	80003698 <kerneltrap+0x8c>
    80003738:	00001097          	auipc	ra,0x1
    8000373c:	098080e7          	jalr	152(ra) # 800047d0 <uartintr>
    80003740:	fa5ff06f          	j	800036e4 <kerneltrap+0xd8>
    80003744:	00003517          	auipc	a0,0x3
    80003748:	ba450513          	addi	a0,a0,-1116 # 800062e8 <CONSOLE_STATUS+0x2d8>
    8000374c:	00000097          	auipc	ra,0x0
    80003750:	720080e7          	jalr	1824(ra) # 80003e6c <panic>

0000000080003754 <clockintr>:
    80003754:	fe010113          	addi	sp,sp,-32
    80003758:	00813823          	sd	s0,16(sp)
    8000375c:	00913423          	sd	s1,8(sp)
    80003760:	00113c23          	sd	ra,24(sp)
    80003764:	02010413          	addi	s0,sp,32
    80003768:	00005497          	auipc	s1,0x5
    8000376c:	9b848493          	addi	s1,s1,-1608 # 80008120 <tickslock>
    80003770:	00048513          	mv	a0,s1
    80003774:	00001097          	auipc	ra,0x1
    80003778:	428080e7          	jalr	1064(ra) # 80004b9c <acquire>
    8000377c:	00004717          	auipc	a4,0x4
    80003780:	87870713          	addi	a4,a4,-1928 # 80006ff4 <ticks>
    80003784:	00072783          	lw	a5,0(a4)
    80003788:	01013403          	ld	s0,16(sp)
    8000378c:	01813083          	ld	ra,24(sp)
    80003790:	00048513          	mv	a0,s1
    80003794:	0017879b          	addiw	a5,a5,1
    80003798:	00813483          	ld	s1,8(sp)
    8000379c:	00f72023          	sw	a5,0(a4)
    800037a0:	02010113          	addi	sp,sp,32
    800037a4:	00001317          	auipc	t1,0x1
    800037a8:	4c430067          	jr	1220(t1) # 80004c68 <release>

00000000800037ac <devintr>:
    800037ac:	142027f3          	csrr	a5,scause
    800037b0:	00000513          	li	a0,0
    800037b4:	0007c463          	bltz	a5,800037bc <devintr+0x10>
    800037b8:	00008067          	ret
    800037bc:	fe010113          	addi	sp,sp,-32
    800037c0:	00813823          	sd	s0,16(sp)
    800037c4:	00113c23          	sd	ra,24(sp)
    800037c8:	00913423          	sd	s1,8(sp)
    800037cc:	02010413          	addi	s0,sp,32
    800037d0:	0ff7f713          	andi	a4,a5,255
    800037d4:	00900693          	li	a3,9
    800037d8:	04d70c63          	beq	a4,a3,80003830 <devintr+0x84>
    800037dc:	fff00713          	li	a4,-1
    800037e0:	03f71713          	slli	a4,a4,0x3f
    800037e4:	00170713          	addi	a4,a4,1
    800037e8:	00e78c63          	beq	a5,a4,80003800 <devintr+0x54>
    800037ec:	01813083          	ld	ra,24(sp)
    800037f0:	01013403          	ld	s0,16(sp)
    800037f4:	00813483          	ld	s1,8(sp)
    800037f8:	02010113          	addi	sp,sp,32
    800037fc:	00008067          	ret
    80003800:	00000097          	auipc	ra,0x0
    80003804:	c8c080e7          	jalr	-884(ra) # 8000348c <cpuid>
    80003808:	06050663          	beqz	a0,80003874 <devintr+0xc8>
    8000380c:	144027f3          	csrr	a5,sip
    80003810:	ffd7f793          	andi	a5,a5,-3
    80003814:	14479073          	csrw	sip,a5
    80003818:	01813083          	ld	ra,24(sp)
    8000381c:	01013403          	ld	s0,16(sp)
    80003820:	00813483          	ld	s1,8(sp)
    80003824:	00200513          	li	a0,2
    80003828:	02010113          	addi	sp,sp,32
    8000382c:	00008067          	ret
    80003830:	00000097          	auipc	ra,0x0
    80003834:	254080e7          	jalr	596(ra) # 80003a84 <plic_claim>
    80003838:	00a00793          	li	a5,10
    8000383c:	00050493          	mv	s1,a0
    80003840:	06f50663          	beq	a0,a5,800038ac <devintr+0x100>
    80003844:	00100513          	li	a0,1
    80003848:	fa0482e3          	beqz	s1,800037ec <devintr+0x40>
    8000384c:	00048593          	mv	a1,s1
    80003850:	00003517          	auipc	a0,0x3
    80003854:	ab850513          	addi	a0,a0,-1352 # 80006308 <CONSOLE_STATUS+0x2f8>
    80003858:	00000097          	auipc	ra,0x0
    8000385c:	670080e7          	jalr	1648(ra) # 80003ec8 <__printf>
    80003860:	00048513          	mv	a0,s1
    80003864:	00000097          	auipc	ra,0x0
    80003868:	258080e7          	jalr	600(ra) # 80003abc <plic_complete>
    8000386c:	00100513          	li	a0,1
    80003870:	f7dff06f          	j	800037ec <devintr+0x40>
    80003874:	00005517          	auipc	a0,0x5
    80003878:	8ac50513          	addi	a0,a0,-1876 # 80008120 <tickslock>
    8000387c:	00001097          	auipc	ra,0x1
    80003880:	320080e7          	jalr	800(ra) # 80004b9c <acquire>
    80003884:	00003717          	auipc	a4,0x3
    80003888:	77070713          	addi	a4,a4,1904 # 80006ff4 <ticks>
    8000388c:	00072783          	lw	a5,0(a4)
    80003890:	00005517          	auipc	a0,0x5
    80003894:	89050513          	addi	a0,a0,-1904 # 80008120 <tickslock>
    80003898:	0017879b          	addiw	a5,a5,1
    8000389c:	00f72023          	sw	a5,0(a4)
    800038a0:	00001097          	auipc	ra,0x1
    800038a4:	3c8080e7          	jalr	968(ra) # 80004c68 <release>
    800038a8:	f65ff06f          	j	8000380c <devintr+0x60>
    800038ac:	00001097          	auipc	ra,0x1
    800038b0:	f24080e7          	jalr	-220(ra) # 800047d0 <uartintr>
    800038b4:	fadff06f          	j	80003860 <devintr+0xb4>
	...

00000000800038c0 <kernelvec>:
    800038c0:	f0010113          	addi	sp,sp,-256
    800038c4:	00113023          	sd	ra,0(sp)
    800038c8:	00213423          	sd	sp,8(sp)
    800038cc:	00313823          	sd	gp,16(sp)
    800038d0:	00413c23          	sd	tp,24(sp)
    800038d4:	02513023          	sd	t0,32(sp)
    800038d8:	02613423          	sd	t1,40(sp)
    800038dc:	02713823          	sd	t2,48(sp)
    800038e0:	02813c23          	sd	s0,56(sp)
    800038e4:	04913023          	sd	s1,64(sp)
    800038e8:	04a13423          	sd	a0,72(sp)
    800038ec:	04b13823          	sd	a1,80(sp)
    800038f0:	04c13c23          	sd	a2,88(sp)
    800038f4:	06d13023          	sd	a3,96(sp)
    800038f8:	06e13423          	sd	a4,104(sp)
    800038fc:	06f13823          	sd	a5,112(sp)
    80003900:	07013c23          	sd	a6,120(sp)
    80003904:	09113023          	sd	a7,128(sp)
    80003908:	09213423          	sd	s2,136(sp)
    8000390c:	09313823          	sd	s3,144(sp)
    80003910:	09413c23          	sd	s4,152(sp)
    80003914:	0b513023          	sd	s5,160(sp)
    80003918:	0b613423          	sd	s6,168(sp)
    8000391c:	0b713823          	sd	s7,176(sp)
    80003920:	0b813c23          	sd	s8,184(sp)
    80003924:	0d913023          	sd	s9,192(sp)
    80003928:	0da13423          	sd	s10,200(sp)
    8000392c:	0db13823          	sd	s11,208(sp)
    80003930:	0dc13c23          	sd	t3,216(sp)
    80003934:	0fd13023          	sd	t4,224(sp)
    80003938:	0fe13423          	sd	t5,232(sp)
    8000393c:	0ff13823          	sd	t6,240(sp)
    80003940:	ccdff0ef          	jal	ra,8000360c <kerneltrap>
    80003944:	00013083          	ld	ra,0(sp)
    80003948:	00813103          	ld	sp,8(sp)
    8000394c:	01013183          	ld	gp,16(sp)
    80003950:	02013283          	ld	t0,32(sp)
    80003954:	02813303          	ld	t1,40(sp)
    80003958:	03013383          	ld	t2,48(sp)
    8000395c:	03813403          	ld	s0,56(sp)
    80003960:	04013483          	ld	s1,64(sp)
    80003964:	04813503          	ld	a0,72(sp)
    80003968:	05013583          	ld	a1,80(sp)
    8000396c:	05813603          	ld	a2,88(sp)
    80003970:	06013683          	ld	a3,96(sp)
    80003974:	06813703          	ld	a4,104(sp)
    80003978:	07013783          	ld	a5,112(sp)
    8000397c:	07813803          	ld	a6,120(sp)
    80003980:	08013883          	ld	a7,128(sp)
    80003984:	08813903          	ld	s2,136(sp)
    80003988:	09013983          	ld	s3,144(sp)
    8000398c:	09813a03          	ld	s4,152(sp)
    80003990:	0a013a83          	ld	s5,160(sp)
    80003994:	0a813b03          	ld	s6,168(sp)
    80003998:	0b013b83          	ld	s7,176(sp)
    8000399c:	0b813c03          	ld	s8,184(sp)
    800039a0:	0c013c83          	ld	s9,192(sp)
    800039a4:	0c813d03          	ld	s10,200(sp)
    800039a8:	0d013d83          	ld	s11,208(sp)
    800039ac:	0d813e03          	ld	t3,216(sp)
    800039b0:	0e013e83          	ld	t4,224(sp)
    800039b4:	0e813f03          	ld	t5,232(sp)
    800039b8:	0f013f83          	ld	t6,240(sp)
    800039bc:	10010113          	addi	sp,sp,256
    800039c0:	10200073          	sret
    800039c4:	00000013          	nop
    800039c8:	00000013          	nop
    800039cc:	00000013          	nop

00000000800039d0 <timervec>:
    800039d0:	34051573          	csrrw	a0,mscratch,a0
    800039d4:	00b53023          	sd	a1,0(a0)
    800039d8:	00c53423          	sd	a2,8(a0)
    800039dc:	00d53823          	sd	a3,16(a0)
    800039e0:	01853583          	ld	a1,24(a0)
    800039e4:	02053603          	ld	a2,32(a0)
    800039e8:	0005b683          	ld	a3,0(a1)
    800039ec:	00c686b3          	add	a3,a3,a2
    800039f0:	00d5b023          	sd	a3,0(a1)
    800039f4:	00200593          	li	a1,2
    800039f8:	14459073          	csrw	sip,a1
    800039fc:	01053683          	ld	a3,16(a0)
    80003a00:	00853603          	ld	a2,8(a0)
    80003a04:	00053583          	ld	a1,0(a0)
    80003a08:	34051573          	csrrw	a0,mscratch,a0
    80003a0c:	30200073          	mret

0000000080003a10 <plicinit>:
    80003a10:	ff010113          	addi	sp,sp,-16
    80003a14:	00813423          	sd	s0,8(sp)
    80003a18:	01010413          	addi	s0,sp,16
    80003a1c:	00813403          	ld	s0,8(sp)
    80003a20:	0c0007b7          	lui	a5,0xc000
    80003a24:	00100713          	li	a4,1
    80003a28:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003a2c:	00e7a223          	sw	a4,4(a5)
    80003a30:	01010113          	addi	sp,sp,16
    80003a34:	00008067          	ret

0000000080003a38 <plicinithart>:
    80003a38:	ff010113          	addi	sp,sp,-16
    80003a3c:	00813023          	sd	s0,0(sp)
    80003a40:	00113423          	sd	ra,8(sp)
    80003a44:	01010413          	addi	s0,sp,16
    80003a48:	00000097          	auipc	ra,0x0
    80003a4c:	a44080e7          	jalr	-1468(ra) # 8000348c <cpuid>
    80003a50:	0085171b          	slliw	a4,a0,0x8
    80003a54:	0c0027b7          	lui	a5,0xc002
    80003a58:	00e787b3          	add	a5,a5,a4
    80003a5c:	40200713          	li	a4,1026
    80003a60:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003a64:	00813083          	ld	ra,8(sp)
    80003a68:	00013403          	ld	s0,0(sp)
    80003a6c:	00d5151b          	slliw	a0,a0,0xd
    80003a70:	0c2017b7          	lui	a5,0xc201
    80003a74:	00a78533          	add	a0,a5,a0
    80003a78:	00052023          	sw	zero,0(a0)
    80003a7c:	01010113          	addi	sp,sp,16
    80003a80:	00008067          	ret

0000000080003a84 <plic_claim>:
    80003a84:	ff010113          	addi	sp,sp,-16
    80003a88:	00813023          	sd	s0,0(sp)
    80003a8c:	00113423          	sd	ra,8(sp)
    80003a90:	01010413          	addi	s0,sp,16
    80003a94:	00000097          	auipc	ra,0x0
    80003a98:	9f8080e7          	jalr	-1544(ra) # 8000348c <cpuid>
    80003a9c:	00813083          	ld	ra,8(sp)
    80003aa0:	00013403          	ld	s0,0(sp)
    80003aa4:	00d5151b          	slliw	a0,a0,0xd
    80003aa8:	0c2017b7          	lui	a5,0xc201
    80003aac:	00a78533          	add	a0,a5,a0
    80003ab0:	00452503          	lw	a0,4(a0)
    80003ab4:	01010113          	addi	sp,sp,16
    80003ab8:	00008067          	ret

0000000080003abc <plic_complete>:
    80003abc:	fe010113          	addi	sp,sp,-32
    80003ac0:	00813823          	sd	s0,16(sp)
    80003ac4:	00913423          	sd	s1,8(sp)
    80003ac8:	00113c23          	sd	ra,24(sp)
    80003acc:	02010413          	addi	s0,sp,32
    80003ad0:	00050493          	mv	s1,a0
    80003ad4:	00000097          	auipc	ra,0x0
    80003ad8:	9b8080e7          	jalr	-1608(ra) # 8000348c <cpuid>
    80003adc:	01813083          	ld	ra,24(sp)
    80003ae0:	01013403          	ld	s0,16(sp)
    80003ae4:	00d5179b          	slliw	a5,a0,0xd
    80003ae8:	0c201737          	lui	a4,0xc201
    80003aec:	00f707b3          	add	a5,a4,a5
    80003af0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003af4:	00813483          	ld	s1,8(sp)
    80003af8:	02010113          	addi	sp,sp,32
    80003afc:	00008067          	ret

0000000080003b00 <consolewrite>:
    80003b00:	fb010113          	addi	sp,sp,-80
    80003b04:	04813023          	sd	s0,64(sp)
    80003b08:	04113423          	sd	ra,72(sp)
    80003b0c:	02913c23          	sd	s1,56(sp)
    80003b10:	03213823          	sd	s2,48(sp)
    80003b14:	03313423          	sd	s3,40(sp)
    80003b18:	03413023          	sd	s4,32(sp)
    80003b1c:	01513c23          	sd	s5,24(sp)
    80003b20:	05010413          	addi	s0,sp,80
    80003b24:	06c05c63          	blez	a2,80003b9c <consolewrite+0x9c>
    80003b28:	00060993          	mv	s3,a2
    80003b2c:	00050a13          	mv	s4,a0
    80003b30:	00058493          	mv	s1,a1
    80003b34:	00000913          	li	s2,0
    80003b38:	fff00a93          	li	s5,-1
    80003b3c:	01c0006f          	j	80003b58 <consolewrite+0x58>
    80003b40:	fbf44503          	lbu	a0,-65(s0)
    80003b44:	0019091b          	addiw	s2,s2,1
    80003b48:	00148493          	addi	s1,s1,1
    80003b4c:	00001097          	auipc	ra,0x1
    80003b50:	a9c080e7          	jalr	-1380(ra) # 800045e8 <uartputc>
    80003b54:	03298063          	beq	s3,s2,80003b74 <consolewrite+0x74>
    80003b58:	00048613          	mv	a2,s1
    80003b5c:	00100693          	li	a3,1
    80003b60:	000a0593          	mv	a1,s4
    80003b64:	fbf40513          	addi	a0,s0,-65
    80003b68:	00000097          	auipc	ra,0x0
    80003b6c:	9dc080e7          	jalr	-1572(ra) # 80003544 <either_copyin>
    80003b70:	fd5518e3          	bne	a0,s5,80003b40 <consolewrite+0x40>
    80003b74:	04813083          	ld	ra,72(sp)
    80003b78:	04013403          	ld	s0,64(sp)
    80003b7c:	03813483          	ld	s1,56(sp)
    80003b80:	02813983          	ld	s3,40(sp)
    80003b84:	02013a03          	ld	s4,32(sp)
    80003b88:	01813a83          	ld	s5,24(sp)
    80003b8c:	00090513          	mv	a0,s2
    80003b90:	03013903          	ld	s2,48(sp)
    80003b94:	05010113          	addi	sp,sp,80
    80003b98:	00008067          	ret
    80003b9c:	00000913          	li	s2,0
    80003ba0:	fd5ff06f          	j	80003b74 <consolewrite+0x74>

0000000080003ba4 <consoleread>:
    80003ba4:	f9010113          	addi	sp,sp,-112
    80003ba8:	06813023          	sd	s0,96(sp)
    80003bac:	04913c23          	sd	s1,88(sp)
    80003bb0:	05213823          	sd	s2,80(sp)
    80003bb4:	05313423          	sd	s3,72(sp)
    80003bb8:	05413023          	sd	s4,64(sp)
    80003bbc:	03513c23          	sd	s5,56(sp)
    80003bc0:	03613823          	sd	s6,48(sp)
    80003bc4:	03713423          	sd	s7,40(sp)
    80003bc8:	03813023          	sd	s8,32(sp)
    80003bcc:	06113423          	sd	ra,104(sp)
    80003bd0:	01913c23          	sd	s9,24(sp)
    80003bd4:	07010413          	addi	s0,sp,112
    80003bd8:	00060b93          	mv	s7,a2
    80003bdc:	00050913          	mv	s2,a0
    80003be0:	00058c13          	mv	s8,a1
    80003be4:	00060b1b          	sext.w	s6,a2
    80003be8:	00004497          	auipc	s1,0x4
    80003bec:	56048493          	addi	s1,s1,1376 # 80008148 <cons>
    80003bf0:	00400993          	li	s3,4
    80003bf4:	fff00a13          	li	s4,-1
    80003bf8:	00a00a93          	li	s5,10
    80003bfc:	05705e63          	blez	s7,80003c58 <consoleread+0xb4>
    80003c00:	09c4a703          	lw	a4,156(s1)
    80003c04:	0984a783          	lw	a5,152(s1)
    80003c08:	0007071b          	sext.w	a4,a4
    80003c0c:	08e78463          	beq	a5,a4,80003c94 <consoleread+0xf0>
    80003c10:	07f7f713          	andi	a4,a5,127
    80003c14:	00e48733          	add	a4,s1,a4
    80003c18:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003c1c:	0017869b          	addiw	a3,a5,1
    80003c20:	08d4ac23          	sw	a3,152(s1)
    80003c24:	00070c9b          	sext.w	s9,a4
    80003c28:	0b370663          	beq	a4,s3,80003cd4 <consoleread+0x130>
    80003c2c:	00100693          	li	a3,1
    80003c30:	f9f40613          	addi	a2,s0,-97
    80003c34:	000c0593          	mv	a1,s8
    80003c38:	00090513          	mv	a0,s2
    80003c3c:	f8e40fa3          	sb	a4,-97(s0)
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	8b8080e7          	jalr	-1864(ra) # 800034f8 <either_copyout>
    80003c48:	01450863          	beq	a0,s4,80003c58 <consoleread+0xb4>
    80003c4c:	001c0c13          	addi	s8,s8,1
    80003c50:	fffb8b9b          	addiw	s7,s7,-1
    80003c54:	fb5c94e3          	bne	s9,s5,80003bfc <consoleread+0x58>
    80003c58:	000b851b          	sext.w	a0,s7
    80003c5c:	06813083          	ld	ra,104(sp)
    80003c60:	06013403          	ld	s0,96(sp)
    80003c64:	05813483          	ld	s1,88(sp)
    80003c68:	05013903          	ld	s2,80(sp)
    80003c6c:	04813983          	ld	s3,72(sp)
    80003c70:	04013a03          	ld	s4,64(sp)
    80003c74:	03813a83          	ld	s5,56(sp)
    80003c78:	02813b83          	ld	s7,40(sp)
    80003c7c:	02013c03          	ld	s8,32(sp)
    80003c80:	01813c83          	ld	s9,24(sp)
    80003c84:	40ab053b          	subw	a0,s6,a0
    80003c88:	03013b03          	ld	s6,48(sp)
    80003c8c:	07010113          	addi	sp,sp,112
    80003c90:	00008067          	ret
    80003c94:	00001097          	auipc	ra,0x1
    80003c98:	1d8080e7          	jalr	472(ra) # 80004e6c <push_on>
    80003c9c:	0984a703          	lw	a4,152(s1)
    80003ca0:	09c4a783          	lw	a5,156(s1)
    80003ca4:	0007879b          	sext.w	a5,a5
    80003ca8:	fef70ce3          	beq	a4,a5,80003ca0 <consoleread+0xfc>
    80003cac:	00001097          	auipc	ra,0x1
    80003cb0:	234080e7          	jalr	564(ra) # 80004ee0 <pop_on>
    80003cb4:	0984a783          	lw	a5,152(s1)
    80003cb8:	07f7f713          	andi	a4,a5,127
    80003cbc:	00e48733          	add	a4,s1,a4
    80003cc0:	01874703          	lbu	a4,24(a4)
    80003cc4:	0017869b          	addiw	a3,a5,1
    80003cc8:	08d4ac23          	sw	a3,152(s1)
    80003ccc:	00070c9b          	sext.w	s9,a4
    80003cd0:	f5371ee3          	bne	a4,s3,80003c2c <consoleread+0x88>
    80003cd4:	000b851b          	sext.w	a0,s7
    80003cd8:	f96bf2e3          	bgeu	s7,s6,80003c5c <consoleread+0xb8>
    80003cdc:	08f4ac23          	sw	a5,152(s1)
    80003ce0:	f7dff06f          	j	80003c5c <consoleread+0xb8>

0000000080003ce4 <consputc>:
    80003ce4:	10000793          	li	a5,256
    80003ce8:	00f50663          	beq	a0,a5,80003cf4 <consputc+0x10>
    80003cec:	00001317          	auipc	t1,0x1
    80003cf0:	9f430067          	jr	-1548(t1) # 800046e0 <uartputc_sync>
    80003cf4:	ff010113          	addi	sp,sp,-16
    80003cf8:	00113423          	sd	ra,8(sp)
    80003cfc:	00813023          	sd	s0,0(sp)
    80003d00:	01010413          	addi	s0,sp,16
    80003d04:	00800513          	li	a0,8
    80003d08:	00001097          	auipc	ra,0x1
    80003d0c:	9d8080e7          	jalr	-1576(ra) # 800046e0 <uartputc_sync>
    80003d10:	02000513          	li	a0,32
    80003d14:	00001097          	auipc	ra,0x1
    80003d18:	9cc080e7          	jalr	-1588(ra) # 800046e0 <uartputc_sync>
    80003d1c:	00013403          	ld	s0,0(sp)
    80003d20:	00813083          	ld	ra,8(sp)
    80003d24:	00800513          	li	a0,8
    80003d28:	01010113          	addi	sp,sp,16
    80003d2c:	00001317          	auipc	t1,0x1
    80003d30:	9b430067          	jr	-1612(t1) # 800046e0 <uartputc_sync>

0000000080003d34 <consoleintr>:
    80003d34:	fe010113          	addi	sp,sp,-32
    80003d38:	00813823          	sd	s0,16(sp)
    80003d3c:	00913423          	sd	s1,8(sp)
    80003d40:	01213023          	sd	s2,0(sp)
    80003d44:	00113c23          	sd	ra,24(sp)
    80003d48:	02010413          	addi	s0,sp,32
    80003d4c:	00004917          	auipc	s2,0x4
    80003d50:	3fc90913          	addi	s2,s2,1020 # 80008148 <cons>
    80003d54:	00050493          	mv	s1,a0
    80003d58:	00090513          	mv	a0,s2
    80003d5c:	00001097          	auipc	ra,0x1
    80003d60:	e40080e7          	jalr	-448(ra) # 80004b9c <acquire>
    80003d64:	02048c63          	beqz	s1,80003d9c <consoleintr+0x68>
    80003d68:	0a092783          	lw	a5,160(s2)
    80003d6c:	09892703          	lw	a4,152(s2)
    80003d70:	07f00693          	li	a3,127
    80003d74:	40e7873b          	subw	a4,a5,a4
    80003d78:	02e6e263          	bltu	a3,a4,80003d9c <consoleintr+0x68>
    80003d7c:	00d00713          	li	a4,13
    80003d80:	04e48063          	beq	s1,a4,80003dc0 <consoleintr+0x8c>
    80003d84:	07f7f713          	andi	a4,a5,127
    80003d88:	00e90733          	add	a4,s2,a4
    80003d8c:	0017879b          	addiw	a5,a5,1
    80003d90:	0af92023          	sw	a5,160(s2)
    80003d94:	00970c23          	sb	s1,24(a4)
    80003d98:	08f92e23          	sw	a5,156(s2)
    80003d9c:	01013403          	ld	s0,16(sp)
    80003da0:	01813083          	ld	ra,24(sp)
    80003da4:	00813483          	ld	s1,8(sp)
    80003da8:	00013903          	ld	s2,0(sp)
    80003dac:	00004517          	auipc	a0,0x4
    80003db0:	39c50513          	addi	a0,a0,924 # 80008148 <cons>
    80003db4:	02010113          	addi	sp,sp,32
    80003db8:	00001317          	auipc	t1,0x1
    80003dbc:	eb030067          	jr	-336(t1) # 80004c68 <release>
    80003dc0:	00a00493          	li	s1,10
    80003dc4:	fc1ff06f          	j	80003d84 <consoleintr+0x50>

0000000080003dc8 <consoleinit>:
    80003dc8:	fe010113          	addi	sp,sp,-32
    80003dcc:	00113c23          	sd	ra,24(sp)
    80003dd0:	00813823          	sd	s0,16(sp)
    80003dd4:	00913423          	sd	s1,8(sp)
    80003dd8:	02010413          	addi	s0,sp,32
    80003ddc:	00004497          	auipc	s1,0x4
    80003de0:	36c48493          	addi	s1,s1,876 # 80008148 <cons>
    80003de4:	00048513          	mv	a0,s1
    80003de8:	00002597          	auipc	a1,0x2
    80003dec:	57858593          	addi	a1,a1,1400 # 80006360 <CONSOLE_STATUS+0x350>
    80003df0:	00001097          	auipc	ra,0x1
    80003df4:	d88080e7          	jalr	-632(ra) # 80004b78 <initlock>
    80003df8:	00000097          	auipc	ra,0x0
    80003dfc:	7ac080e7          	jalr	1964(ra) # 800045a4 <uartinit>
    80003e00:	01813083          	ld	ra,24(sp)
    80003e04:	01013403          	ld	s0,16(sp)
    80003e08:	00000797          	auipc	a5,0x0
    80003e0c:	d9c78793          	addi	a5,a5,-612 # 80003ba4 <consoleread>
    80003e10:	0af4bc23          	sd	a5,184(s1)
    80003e14:	00000797          	auipc	a5,0x0
    80003e18:	cec78793          	addi	a5,a5,-788 # 80003b00 <consolewrite>
    80003e1c:	0cf4b023          	sd	a5,192(s1)
    80003e20:	00813483          	ld	s1,8(sp)
    80003e24:	02010113          	addi	sp,sp,32
    80003e28:	00008067          	ret

0000000080003e2c <console_read>:
    80003e2c:	ff010113          	addi	sp,sp,-16
    80003e30:	00813423          	sd	s0,8(sp)
    80003e34:	01010413          	addi	s0,sp,16
    80003e38:	00813403          	ld	s0,8(sp)
    80003e3c:	00004317          	auipc	t1,0x4
    80003e40:	3c433303          	ld	t1,964(t1) # 80008200 <devsw+0x10>
    80003e44:	01010113          	addi	sp,sp,16
    80003e48:	00030067          	jr	t1

0000000080003e4c <console_write>:
    80003e4c:	ff010113          	addi	sp,sp,-16
    80003e50:	00813423          	sd	s0,8(sp)
    80003e54:	01010413          	addi	s0,sp,16
    80003e58:	00813403          	ld	s0,8(sp)
    80003e5c:	00004317          	auipc	t1,0x4
    80003e60:	3ac33303          	ld	t1,940(t1) # 80008208 <devsw+0x18>
    80003e64:	01010113          	addi	sp,sp,16
    80003e68:	00030067          	jr	t1

0000000080003e6c <panic>:
    80003e6c:	fe010113          	addi	sp,sp,-32
    80003e70:	00113c23          	sd	ra,24(sp)
    80003e74:	00813823          	sd	s0,16(sp)
    80003e78:	00913423          	sd	s1,8(sp)
    80003e7c:	02010413          	addi	s0,sp,32
    80003e80:	00050493          	mv	s1,a0
    80003e84:	00002517          	auipc	a0,0x2
    80003e88:	4e450513          	addi	a0,a0,1252 # 80006368 <CONSOLE_STATUS+0x358>
    80003e8c:	00004797          	auipc	a5,0x4
    80003e90:	4007ae23          	sw	zero,1052(a5) # 800082a8 <pr+0x18>
    80003e94:	00000097          	auipc	ra,0x0
    80003e98:	034080e7          	jalr	52(ra) # 80003ec8 <__printf>
    80003e9c:	00048513          	mv	a0,s1
    80003ea0:	00000097          	auipc	ra,0x0
    80003ea4:	028080e7          	jalr	40(ra) # 80003ec8 <__printf>
    80003ea8:	00002517          	auipc	a0,0x2
    80003eac:	4a050513          	addi	a0,a0,1184 # 80006348 <CONSOLE_STATUS+0x338>
    80003eb0:	00000097          	auipc	ra,0x0
    80003eb4:	018080e7          	jalr	24(ra) # 80003ec8 <__printf>
    80003eb8:	00100793          	li	a5,1
    80003ebc:	00003717          	auipc	a4,0x3
    80003ec0:	12f72e23          	sw	a5,316(a4) # 80006ff8 <panicked>
    80003ec4:	0000006f          	j	80003ec4 <panic+0x58>

0000000080003ec8 <__printf>:
    80003ec8:	f3010113          	addi	sp,sp,-208
    80003ecc:	08813023          	sd	s0,128(sp)
    80003ed0:	07313423          	sd	s3,104(sp)
    80003ed4:	09010413          	addi	s0,sp,144
    80003ed8:	05813023          	sd	s8,64(sp)
    80003edc:	08113423          	sd	ra,136(sp)
    80003ee0:	06913c23          	sd	s1,120(sp)
    80003ee4:	07213823          	sd	s2,112(sp)
    80003ee8:	07413023          	sd	s4,96(sp)
    80003eec:	05513c23          	sd	s5,88(sp)
    80003ef0:	05613823          	sd	s6,80(sp)
    80003ef4:	05713423          	sd	s7,72(sp)
    80003ef8:	03913c23          	sd	s9,56(sp)
    80003efc:	03a13823          	sd	s10,48(sp)
    80003f00:	03b13423          	sd	s11,40(sp)
    80003f04:	00004317          	auipc	t1,0x4
    80003f08:	38c30313          	addi	t1,t1,908 # 80008290 <pr>
    80003f0c:	01832c03          	lw	s8,24(t1)
    80003f10:	00b43423          	sd	a1,8(s0)
    80003f14:	00c43823          	sd	a2,16(s0)
    80003f18:	00d43c23          	sd	a3,24(s0)
    80003f1c:	02e43023          	sd	a4,32(s0)
    80003f20:	02f43423          	sd	a5,40(s0)
    80003f24:	03043823          	sd	a6,48(s0)
    80003f28:	03143c23          	sd	a7,56(s0)
    80003f2c:	00050993          	mv	s3,a0
    80003f30:	4a0c1663          	bnez	s8,800043dc <__printf+0x514>
    80003f34:	60098c63          	beqz	s3,8000454c <__printf+0x684>
    80003f38:	0009c503          	lbu	a0,0(s3)
    80003f3c:	00840793          	addi	a5,s0,8
    80003f40:	f6f43c23          	sd	a5,-136(s0)
    80003f44:	00000493          	li	s1,0
    80003f48:	22050063          	beqz	a0,80004168 <__printf+0x2a0>
    80003f4c:	00002a37          	lui	s4,0x2
    80003f50:	00018ab7          	lui	s5,0x18
    80003f54:	000f4b37          	lui	s6,0xf4
    80003f58:	00989bb7          	lui	s7,0x989
    80003f5c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003f60:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003f64:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003f68:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003f6c:	00148c9b          	addiw	s9,s1,1
    80003f70:	02500793          	li	a5,37
    80003f74:	01998933          	add	s2,s3,s9
    80003f78:	38f51263          	bne	a0,a5,800042fc <__printf+0x434>
    80003f7c:	00094783          	lbu	a5,0(s2)
    80003f80:	00078c9b          	sext.w	s9,a5
    80003f84:	1e078263          	beqz	a5,80004168 <__printf+0x2a0>
    80003f88:	0024849b          	addiw	s1,s1,2
    80003f8c:	07000713          	li	a4,112
    80003f90:	00998933          	add	s2,s3,s1
    80003f94:	38e78a63          	beq	a5,a4,80004328 <__printf+0x460>
    80003f98:	20f76863          	bltu	a4,a5,800041a8 <__printf+0x2e0>
    80003f9c:	42a78863          	beq	a5,a0,800043cc <__printf+0x504>
    80003fa0:	06400713          	li	a4,100
    80003fa4:	40e79663          	bne	a5,a4,800043b0 <__printf+0x4e8>
    80003fa8:	f7843783          	ld	a5,-136(s0)
    80003fac:	0007a603          	lw	a2,0(a5)
    80003fb0:	00878793          	addi	a5,a5,8
    80003fb4:	f6f43c23          	sd	a5,-136(s0)
    80003fb8:	42064a63          	bltz	a2,800043ec <__printf+0x524>
    80003fbc:	00a00713          	li	a4,10
    80003fc0:	02e677bb          	remuw	a5,a2,a4
    80003fc4:	00002d97          	auipc	s11,0x2
    80003fc8:	3ccd8d93          	addi	s11,s11,972 # 80006390 <digits>
    80003fcc:	00900593          	li	a1,9
    80003fd0:	0006051b          	sext.w	a0,a2
    80003fd4:	00000c93          	li	s9,0
    80003fd8:	02079793          	slli	a5,a5,0x20
    80003fdc:	0207d793          	srli	a5,a5,0x20
    80003fe0:	00fd87b3          	add	a5,s11,a5
    80003fe4:	0007c783          	lbu	a5,0(a5)
    80003fe8:	02e656bb          	divuw	a3,a2,a4
    80003fec:	f8f40023          	sb	a5,-128(s0)
    80003ff0:	14c5d863          	bge	a1,a2,80004140 <__printf+0x278>
    80003ff4:	06300593          	li	a1,99
    80003ff8:	00100c93          	li	s9,1
    80003ffc:	02e6f7bb          	remuw	a5,a3,a4
    80004000:	02079793          	slli	a5,a5,0x20
    80004004:	0207d793          	srli	a5,a5,0x20
    80004008:	00fd87b3          	add	a5,s11,a5
    8000400c:	0007c783          	lbu	a5,0(a5)
    80004010:	02e6d73b          	divuw	a4,a3,a4
    80004014:	f8f400a3          	sb	a5,-127(s0)
    80004018:	12a5f463          	bgeu	a1,a0,80004140 <__printf+0x278>
    8000401c:	00a00693          	li	a3,10
    80004020:	00900593          	li	a1,9
    80004024:	02d777bb          	remuw	a5,a4,a3
    80004028:	02079793          	slli	a5,a5,0x20
    8000402c:	0207d793          	srli	a5,a5,0x20
    80004030:	00fd87b3          	add	a5,s11,a5
    80004034:	0007c503          	lbu	a0,0(a5)
    80004038:	02d757bb          	divuw	a5,a4,a3
    8000403c:	f8a40123          	sb	a0,-126(s0)
    80004040:	48e5f263          	bgeu	a1,a4,800044c4 <__printf+0x5fc>
    80004044:	06300513          	li	a0,99
    80004048:	02d7f5bb          	remuw	a1,a5,a3
    8000404c:	02059593          	slli	a1,a1,0x20
    80004050:	0205d593          	srli	a1,a1,0x20
    80004054:	00bd85b3          	add	a1,s11,a1
    80004058:	0005c583          	lbu	a1,0(a1)
    8000405c:	02d7d7bb          	divuw	a5,a5,a3
    80004060:	f8b401a3          	sb	a1,-125(s0)
    80004064:	48e57263          	bgeu	a0,a4,800044e8 <__printf+0x620>
    80004068:	3e700513          	li	a0,999
    8000406c:	02d7f5bb          	remuw	a1,a5,a3
    80004070:	02059593          	slli	a1,a1,0x20
    80004074:	0205d593          	srli	a1,a1,0x20
    80004078:	00bd85b3          	add	a1,s11,a1
    8000407c:	0005c583          	lbu	a1,0(a1)
    80004080:	02d7d7bb          	divuw	a5,a5,a3
    80004084:	f8b40223          	sb	a1,-124(s0)
    80004088:	46e57663          	bgeu	a0,a4,800044f4 <__printf+0x62c>
    8000408c:	02d7f5bb          	remuw	a1,a5,a3
    80004090:	02059593          	slli	a1,a1,0x20
    80004094:	0205d593          	srli	a1,a1,0x20
    80004098:	00bd85b3          	add	a1,s11,a1
    8000409c:	0005c583          	lbu	a1,0(a1)
    800040a0:	02d7d7bb          	divuw	a5,a5,a3
    800040a4:	f8b402a3          	sb	a1,-123(s0)
    800040a8:	46ea7863          	bgeu	s4,a4,80004518 <__printf+0x650>
    800040ac:	02d7f5bb          	remuw	a1,a5,a3
    800040b0:	02059593          	slli	a1,a1,0x20
    800040b4:	0205d593          	srli	a1,a1,0x20
    800040b8:	00bd85b3          	add	a1,s11,a1
    800040bc:	0005c583          	lbu	a1,0(a1)
    800040c0:	02d7d7bb          	divuw	a5,a5,a3
    800040c4:	f8b40323          	sb	a1,-122(s0)
    800040c8:	3eeaf863          	bgeu	s5,a4,800044b8 <__printf+0x5f0>
    800040cc:	02d7f5bb          	remuw	a1,a5,a3
    800040d0:	02059593          	slli	a1,a1,0x20
    800040d4:	0205d593          	srli	a1,a1,0x20
    800040d8:	00bd85b3          	add	a1,s11,a1
    800040dc:	0005c583          	lbu	a1,0(a1)
    800040e0:	02d7d7bb          	divuw	a5,a5,a3
    800040e4:	f8b403a3          	sb	a1,-121(s0)
    800040e8:	42eb7e63          	bgeu	s6,a4,80004524 <__printf+0x65c>
    800040ec:	02d7f5bb          	remuw	a1,a5,a3
    800040f0:	02059593          	slli	a1,a1,0x20
    800040f4:	0205d593          	srli	a1,a1,0x20
    800040f8:	00bd85b3          	add	a1,s11,a1
    800040fc:	0005c583          	lbu	a1,0(a1)
    80004100:	02d7d7bb          	divuw	a5,a5,a3
    80004104:	f8b40423          	sb	a1,-120(s0)
    80004108:	42ebfc63          	bgeu	s7,a4,80004540 <__printf+0x678>
    8000410c:	02079793          	slli	a5,a5,0x20
    80004110:	0207d793          	srli	a5,a5,0x20
    80004114:	00fd8db3          	add	s11,s11,a5
    80004118:	000dc703          	lbu	a4,0(s11)
    8000411c:	00a00793          	li	a5,10
    80004120:	00900c93          	li	s9,9
    80004124:	f8e404a3          	sb	a4,-119(s0)
    80004128:	00065c63          	bgez	a2,80004140 <__printf+0x278>
    8000412c:	f9040713          	addi	a4,s0,-112
    80004130:	00f70733          	add	a4,a4,a5
    80004134:	02d00693          	li	a3,45
    80004138:	fed70823          	sb	a3,-16(a4)
    8000413c:	00078c93          	mv	s9,a5
    80004140:	f8040793          	addi	a5,s0,-128
    80004144:	01978cb3          	add	s9,a5,s9
    80004148:	f7f40d13          	addi	s10,s0,-129
    8000414c:	000cc503          	lbu	a0,0(s9)
    80004150:	fffc8c93          	addi	s9,s9,-1
    80004154:	00000097          	auipc	ra,0x0
    80004158:	b90080e7          	jalr	-1136(ra) # 80003ce4 <consputc>
    8000415c:	ffac98e3          	bne	s9,s10,8000414c <__printf+0x284>
    80004160:	00094503          	lbu	a0,0(s2)
    80004164:	e00514e3          	bnez	a0,80003f6c <__printf+0xa4>
    80004168:	1a0c1663          	bnez	s8,80004314 <__printf+0x44c>
    8000416c:	08813083          	ld	ra,136(sp)
    80004170:	08013403          	ld	s0,128(sp)
    80004174:	07813483          	ld	s1,120(sp)
    80004178:	07013903          	ld	s2,112(sp)
    8000417c:	06813983          	ld	s3,104(sp)
    80004180:	06013a03          	ld	s4,96(sp)
    80004184:	05813a83          	ld	s5,88(sp)
    80004188:	05013b03          	ld	s6,80(sp)
    8000418c:	04813b83          	ld	s7,72(sp)
    80004190:	04013c03          	ld	s8,64(sp)
    80004194:	03813c83          	ld	s9,56(sp)
    80004198:	03013d03          	ld	s10,48(sp)
    8000419c:	02813d83          	ld	s11,40(sp)
    800041a0:	0d010113          	addi	sp,sp,208
    800041a4:	00008067          	ret
    800041a8:	07300713          	li	a4,115
    800041ac:	1ce78a63          	beq	a5,a4,80004380 <__printf+0x4b8>
    800041b0:	07800713          	li	a4,120
    800041b4:	1ee79e63          	bne	a5,a4,800043b0 <__printf+0x4e8>
    800041b8:	f7843783          	ld	a5,-136(s0)
    800041bc:	0007a703          	lw	a4,0(a5)
    800041c0:	00878793          	addi	a5,a5,8
    800041c4:	f6f43c23          	sd	a5,-136(s0)
    800041c8:	28074263          	bltz	a4,8000444c <__printf+0x584>
    800041cc:	00002d97          	auipc	s11,0x2
    800041d0:	1c4d8d93          	addi	s11,s11,452 # 80006390 <digits>
    800041d4:	00f77793          	andi	a5,a4,15
    800041d8:	00fd87b3          	add	a5,s11,a5
    800041dc:	0007c683          	lbu	a3,0(a5)
    800041e0:	00f00613          	li	a2,15
    800041e4:	0007079b          	sext.w	a5,a4
    800041e8:	f8d40023          	sb	a3,-128(s0)
    800041ec:	0047559b          	srliw	a1,a4,0x4
    800041f0:	0047569b          	srliw	a3,a4,0x4
    800041f4:	00000c93          	li	s9,0
    800041f8:	0ee65063          	bge	a2,a4,800042d8 <__printf+0x410>
    800041fc:	00f6f693          	andi	a3,a3,15
    80004200:	00dd86b3          	add	a3,s11,a3
    80004204:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004208:	0087d79b          	srliw	a5,a5,0x8
    8000420c:	00100c93          	li	s9,1
    80004210:	f8d400a3          	sb	a3,-127(s0)
    80004214:	0cb67263          	bgeu	a2,a1,800042d8 <__printf+0x410>
    80004218:	00f7f693          	andi	a3,a5,15
    8000421c:	00dd86b3          	add	a3,s11,a3
    80004220:	0006c583          	lbu	a1,0(a3)
    80004224:	00f00613          	li	a2,15
    80004228:	0047d69b          	srliw	a3,a5,0x4
    8000422c:	f8b40123          	sb	a1,-126(s0)
    80004230:	0047d593          	srli	a1,a5,0x4
    80004234:	28f67e63          	bgeu	a2,a5,800044d0 <__printf+0x608>
    80004238:	00f6f693          	andi	a3,a3,15
    8000423c:	00dd86b3          	add	a3,s11,a3
    80004240:	0006c503          	lbu	a0,0(a3)
    80004244:	0087d813          	srli	a6,a5,0x8
    80004248:	0087d69b          	srliw	a3,a5,0x8
    8000424c:	f8a401a3          	sb	a0,-125(s0)
    80004250:	28b67663          	bgeu	a2,a1,800044dc <__printf+0x614>
    80004254:	00f6f693          	andi	a3,a3,15
    80004258:	00dd86b3          	add	a3,s11,a3
    8000425c:	0006c583          	lbu	a1,0(a3)
    80004260:	00c7d513          	srli	a0,a5,0xc
    80004264:	00c7d69b          	srliw	a3,a5,0xc
    80004268:	f8b40223          	sb	a1,-124(s0)
    8000426c:	29067a63          	bgeu	a2,a6,80004500 <__printf+0x638>
    80004270:	00f6f693          	andi	a3,a3,15
    80004274:	00dd86b3          	add	a3,s11,a3
    80004278:	0006c583          	lbu	a1,0(a3)
    8000427c:	0107d813          	srli	a6,a5,0x10
    80004280:	0107d69b          	srliw	a3,a5,0x10
    80004284:	f8b402a3          	sb	a1,-123(s0)
    80004288:	28a67263          	bgeu	a2,a0,8000450c <__printf+0x644>
    8000428c:	00f6f693          	andi	a3,a3,15
    80004290:	00dd86b3          	add	a3,s11,a3
    80004294:	0006c683          	lbu	a3,0(a3)
    80004298:	0147d79b          	srliw	a5,a5,0x14
    8000429c:	f8d40323          	sb	a3,-122(s0)
    800042a0:	21067663          	bgeu	a2,a6,800044ac <__printf+0x5e4>
    800042a4:	02079793          	slli	a5,a5,0x20
    800042a8:	0207d793          	srli	a5,a5,0x20
    800042ac:	00fd8db3          	add	s11,s11,a5
    800042b0:	000dc683          	lbu	a3,0(s11)
    800042b4:	00800793          	li	a5,8
    800042b8:	00700c93          	li	s9,7
    800042bc:	f8d403a3          	sb	a3,-121(s0)
    800042c0:	00075c63          	bgez	a4,800042d8 <__printf+0x410>
    800042c4:	f9040713          	addi	a4,s0,-112
    800042c8:	00f70733          	add	a4,a4,a5
    800042cc:	02d00693          	li	a3,45
    800042d0:	fed70823          	sb	a3,-16(a4)
    800042d4:	00078c93          	mv	s9,a5
    800042d8:	f8040793          	addi	a5,s0,-128
    800042dc:	01978cb3          	add	s9,a5,s9
    800042e0:	f7f40d13          	addi	s10,s0,-129
    800042e4:	000cc503          	lbu	a0,0(s9)
    800042e8:	fffc8c93          	addi	s9,s9,-1
    800042ec:	00000097          	auipc	ra,0x0
    800042f0:	9f8080e7          	jalr	-1544(ra) # 80003ce4 <consputc>
    800042f4:	ff9d18e3          	bne	s10,s9,800042e4 <__printf+0x41c>
    800042f8:	0100006f          	j	80004308 <__printf+0x440>
    800042fc:	00000097          	auipc	ra,0x0
    80004300:	9e8080e7          	jalr	-1560(ra) # 80003ce4 <consputc>
    80004304:	000c8493          	mv	s1,s9
    80004308:	00094503          	lbu	a0,0(s2)
    8000430c:	c60510e3          	bnez	a0,80003f6c <__printf+0xa4>
    80004310:	e40c0ee3          	beqz	s8,8000416c <__printf+0x2a4>
    80004314:	00004517          	auipc	a0,0x4
    80004318:	f7c50513          	addi	a0,a0,-132 # 80008290 <pr>
    8000431c:	00001097          	auipc	ra,0x1
    80004320:	94c080e7          	jalr	-1716(ra) # 80004c68 <release>
    80004324:	e49ff06f          	j	8000416c <__printf+0x2a4>
    80004328:	f7843783          	ld	a5,-136(s0)
    8000432c:	03000513          	li	a0,48
    80004330:	01000d13          	li	s10,16
    80004334:	00878713          	addi	a4,a5,8
    80004338:	0007bc83          	ld	s9,0(a5)
    8000433c:	f6e43c23          	sd	a4,-136(s0)
    80004340:	00000097          	auipc	ra,0x0
    80004344:	9a4080e7          	jalr	-1628(ra) # 80003ce4 <consputc>
    80004348:	07800513          	li	a0,120
    8000434c:	00000097          	auipc	ra,0x0
    80004350:	998080e7          	jalr	-1640(ra) # 80003ce4 <consputc>
    80004354:	00002d97          	auipc	s11,0x2
    80004358:	03cd8d93          	addi	s11,s11,60 # 80006390 <digits>
    8000435c:	03ccd793          	srli	a5,s9,0x3c
    80004360:	00fd87b3          	add	a5,s11,a5
    80004364:	0007c503          	lbu	a0,0(a5)
    80004368:	fffd0d1b          	addiw	s10,s10,-1
    8000436c:	004c9c93          	slli	s9,s9,0x4
    80004370:	00000097          	auipc	ra,0x0
    80004374:	974080e7          	jalr	-1676(ra) # 80003ce4 <consputc>
    80004378:	fe0d12e3          	bnez	s10,8000435c <__printf+0x494>
    8000437c:	f8dff06f          	j	80004308 <__printf+0x440>
    80004380:	f7843783          	ld	a5,-136(s0)
    80004384:	0007bc83          	ld	s9,0(a5)
    80004388:	00878793          	addi	a5,a5,8
    8000438c:	f6f43c23          	sd	a5,-136(s0)
    80004390:	000c9a63          	bnez	s9,800043a4 <__printf+0x4dc>
    80004394:	1080006f          	j	8000449c <__printf+0x5d4>
    80004398:	001c8c93          	addi	s9,s9,1
    8000439c:	00000097          	auipc	ra,0x0
    800043a0:	948080e7          	jalr	-1720(ra) # 80003ce4 <consputc>
    800043a4:	000cc503          	lbu	a0,0(s9)
    800043a8:	fe0518e3          	bnez	a0,80004398 <__printf+0x4d0>
    800043ac:	f5dff06f          	j	80004308 <__printf+0x440>
    800043b0:	02500513          	li	a0,37
    800043b4:	00000097          	auipc	ra,0x0
    800043b8:	930080e7          	jalr	-1744(ra) # 80003ce4 <consputc>
    800043bc:	000c8513          	mv	a0,s9
    800043c0:	00000097          	auipc	ra,0x0
    800043c4:	924080e7          	jalr	-1756(ra) # 80003ce4 <consputc>
    800043c8:	f41ff06f          	j	80004308 <__printf+0x440>
    800043cc:	02500513          	li	a0,37
    800043d0:	00000097          	auipc	ra,0x0
    800043d4:	914080e7          	jalr	-1772(ra) # 80003ce4 <consputc>
    800043d8:	f31ff06f          	j	80004308 <__printf+0x440>
    800043dc:	00030513          	mv	a0,t1
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	7bc080e7          	jalr	1980(ra) # 80004b9c <acquire>
    800043e8:	b4dff06f          	j	80003f34 <__printf+0x6c>
    800043ec:	40c0053b          	negw	a0,a2
    800043f0:	00a00713          	li	a4,10
    800043f4:	02e576bb          	remuw	a3,a0,a4
    800043f8:	00002d97          	auipc	s11,0x2
    800043fc:	f98d8d93          	addi	s11,s11,-104 # 80006390 <digits>
    80004400:	ff700593          	li	a1,-9
    80004404:	02069693          	slli	a3,a3,0x20
    80004408:	0206d693          	srli	a3,a3,0x20
    8000440c:	00dd86b3          	add	a3,s11,a3
    80004410:	0006c683          	lbu	a3,0(a3)
    80004414:	02e557bb          	divuw	a5,a0,a4
    80004418:	f8d40023          	sb	a3,-128(s0)
    8000441c:	10b65e63          	bge	a2,a1,80004538 <__printf+0x670>
    80004420:	06300593          	li	a1,99
    80004424:	02e7f6bb          	remuw	a3,a5,a4
    80004428:	02069693          	slli	a3,a3,0x20
    8000442c:	0206d693          	srli	a3,a3,0x20
    80004430:	00dd86b3          	add	a3,s11,a3
    80004434:	0006c683          	lbu	a3,0(a3)
    80004438:	02e7d73b          	divuw	a4,a5,a4
    8000443c:	00200793          	li	a5,2
    80004440:	f8d400a3          	sb	a3,-127(s0)
    80004444:	bca5ece3          	bltu	a1,a0,8000401c <__printf+0x154>
    80004448:	ce5ff06f          	j	8000412c <__printf+0x264>
    8000444c:	40e007bb          	negw	a5,a4
    80004450:	00002d97          	auipc	s11,0x2
    80004454:	f40d8d93          	addi	s11,s11,-192 # 80006390 <digits>
    80004458:	00f7f693          	andi	a3,a5,15
    8000445c:	00dd86b3          	add	a3,s11,a3
    80004460:	0006c583          	lbu	a1,0(a3)
    80004464:	ff100613          	li	a2,-15
    80004468:	0047d69b          	srliw	a3,a5,0x4
    8000446c:	f8b40023          	sb	a1,-128(s0)
    80004470:	0047d59b          	srliw	a1,a5,0x4
    80004474:	0ac75e63          	bge	a4,a2,80004530 <__printf+0x668>
    80004478:	00f6f693          	andi	a3,a3,15
    8000447c:	00dd86b3          	add	a3,s11,a3
    80004480:	0006c603          	lbu	a2,0(a3)
    80004484:	00f00693          	li	a3,15
    80004488:	0087d79b          	srliw	a5,a5,0x8
    8000448c:	f8c400a3          	sb	a2,-127(s0)
    80004490:	d8b6e4e3          	bltu	a3,a1,80004218 <__printf+0x350>
    80004494:	00200793          	li	a5,2
    80004498:	e2dff06f          	j	800042c4 <__printf+0x3fc>
    8000449c:	00002c97          	auipc	s9,0x2
    800044a0:	ed4c8c93          	addi	s9,s9,-300 # 80006370 <CONSOLE_STATUS+0x360>
    800044a4:	02800513          	li	a0,40
    800044a8:	ef1ff06f          	j	80004398 <__printf+0x4d0>
    800044ac:	00700793          	li	a5,7
    800044b0:	00600c93          	li	s9,6
    800044b4:	e0dff06f          	j	800042c0 <__printf+0x3f8>
    800044b8:	00700793          	li	a5,7
    800044bc:	00600c93          	li	s9,6
    800044c0:	c69ff06f          	j	80004128 <__printf+0x260>
    800044c4:	00300793          	li	a5,3
    800044c8:	00200c93          	li	s9,2
    800044cc:	c5dff06f          	j	80004128 <__printf+0x260>
    800044d0:	00300793          	li	a5,3
    800044d4:	00200c93          	li	s9,2
    800044d8:	de9ff06f          	j	800042c0 <__printf+0x3f8>
    800044dc:	00400793          	li	a5,4
    800044e0:	00300c93          	li	s9,3
    800044e4:	dddff06f          	j	800042c0 <__printf+0x3f8>
    800044e8:	00400793          	li	a5,4
    800044ec:	00300c93          	li	s9,3
    800044f0:	c39ff06f          	j	80004128 <__printf+0x260>
    800044f4:	00500793          	li	a5,5
    800044f8:	00400c93          	li	s9,4
    800044fc:	c2dff06f          	j	80004128 <__printf+0x260>
    80004500:	00500793          	li	a5,5
    80004504:	00400c93          	li	s9,4
    80004508:	db9ff06f          	j	800042c0 <__printf+0x3f8>
    8000450c:	00600793          	li	a5,6
    80004510:	00500c93          	li	s9,5
    80004514:	dadff06f          	j	800042c0 <__printf+0x3f8>
    80004518:	00600793          	li	a5,6
    8000451c:	00500c93          	li	s9,5
    80004520:	c09ff06f          	j	80004128 <__printf+0x260>
    80004524:	00800793          	li	a5,8
    80004528:	00700c93          	li	s9,7
    8000452c:	bfdff06f          	j	80004128 <__printf+0x260>
    80004530:	00100793          	li	a5,1
    80004534:	d91ff06f          	j	800042c4 <__printf+0x3fc>
    80004538:	00100793          	li	a5,1
    8000453c:	bf1ff06f          	j	8000412c <__printf+0x264>
    80004540:	00900793          	li	a5,9
    80004544:	00800c93          	li	s9,8
    80004548:	be1ff06f          	j	80004128 <__printf+0x260>
    8000454c:	00002517          	auipc	a0,0x2
    80004550:	e2c50513          	addi	a0,a0,-468 # 80006378 <CONSOLE_STATUS+0x368>
    80004554:	00000097          	auipc	ra,0x0
    80004558:	918080e7          	jalr	-1768(ra) # 80003e6c <panic>

000000008000455c <printfinit>:
    8000455c:	fe010113          	addi	sp,sp,-32
    80004560:	00813823          	sd	s0,16(sp)
    80004564:	00913423          	sd	s1,8(sp)
    80004568:	00113c23          	sd	ra,24(sp)
    8000456c:	02010413          	addi	s0,sp,32
    80004570:	00004497          	auipc	s1,0x4
    80004574:	d2048493          	addi	s1,s1,-736 # 80008290 <pr>
    80004578:	00048513          	mv	a0,s1
    8000457c:	00002597          	auipc	a1,0x2
    80004580:	e0c58593          	addi	a1,a1,-500 # 80006388 <CONSOLE_STATUS+0x378>
    80004584:	00000097          	auipc	ra,0x0
    80004588:	5f4080e7          	jalr	1524(ra) # 80004b78 <initlock>
    8000458c:	01813083          	ld	ra,24(sp)
    80004590:	01013403          	ld	s0,16(sp)
    80004594:	0004ac23          	sw	zero,24(s1)
    80004598:	00813483          	ld	s1,8(sp)
    8000459c:	02010113          	addi	sp,sp,32
    800045a0:	00008067          	ret

00000000800045a4 <uartinit>:
    800045a4:	ff010113          	addi	sp,sp,-16
    800045a8:	00813423          	sd	s0,8(sp)
    800045ac:	01010413          	addi	s0,sp,16
    800045b0:	100007b7          	lui	a5,0x10000
    800045b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800045b8:	f8000713          	li	a4,-128
    800045bc:	00e781a3          	sb	a4,3(a5)
    800045c0:	00300713          	li	a4,3
    800045c4:	00e78023          	sb	a4,0(a5)
    800045c8:	000780a3          	sb	zero,1(a5)
    800045cc:	00e781a3          	sb	a4,3(a5)
    800045d0:	00700693          	li	a3,7
    800045d4:	00d78123          	sb	a3,2(a5)
    800045d8:	00e780a3          	sb	a4,1(a5)
    800045dc:	00813403          	ld	s0,8(sp)
    800045e0:	01010113          	addi	sp,sp,16
    800045e4:	00008067          	ret

00000000800045e8 <uartputc>:
    800045e8:	00003797          	auipc	a5,0x3
    800045ec:	a107a783          	lw	a5,-1520(a5) # 80006ff8 <panicked>
    800045f0:	00078463          	beqz	a5,800045f8 <uartputc+0x10>
    800045f4:	0000006f          	j	800045f4 <uartputc+0xc>
    800045f8:	fd010113          	addi	sp,sp,-48
    800045fc:	02813023          	sd	s0,32(sp)
    80004600:	00913c23          	sd	s1,24(sp)
    80004604:	01213823          	sd	s2,16(sp)
    80004608:	01313423          	sd	s3,8(sp)
    8000460c:	02113423          	sd	ra,40(sp)
    80004610:	03010413          	addi	s0,sp,48
    80004614:	00003917          	auipc	s2,0x3
    80004618:	9ec90913          	addi	s2,s2,-1556 # 80007000 <uart_tx_r>
    8000461c:	00093783          	ld	a5,0(s2)
    80004620:	00003497          	auipc	s1,0x3
    80004624:	9e848493          	addi	s1,s1,-1560 # 80007008 <uart_tx_w>
    80004628:	0004b703          	ld	a4,0(s1)
    8000462c:	02078693          	addi	a3,a5,32
    80004630:	00050993          	mv	s3,a0
    80004634:	02e69c63          	bne	a3,a4,8000466c <uartputc+0x84>
    80004638:	00001097          	auipc	ra,0x1
    8000463c:	834080e7          	jalr	-1996(ra) # 80004e6c <push_on>
    80004640:	00093783          	ld	a5,0(s2)
    80004644:	0004b703          	ld	a4,0(s1)
    80004648:	02078793          	addi	a5,a5,32
    8000464c:	00e79463          	bne	a5,a4,80004654 <uartputc+0x6c>
    80004650:	0000006f          	j	80004650 <uartputc+0x68>
    80004654:	00001097          	auipc	ra,0x1
    80004658:	88c080e7          	jalr	-1908(ra) # 80004ee0 <pop_on>
    8000465c:	00093783          	ld	a5,0(s2)
    80004660:	0004b703          	ld	a4,0(s1)
    80004664:	02078693          	addi	a3,a5,32
    80004668:	fce688e3          	beq	a3,a4,80004638 <uartputc+0x50>
    8000466c:	01f77693          	andi	a3,a4,31
    80004670:	00004597          	auipc	a1,0x4
    80004674:	c4058593          	addi	a1,a1,-960 # 800082b0 <uart_tx_buf>
    80004678:	00d586b3          	add	a3,a1,a3
    8000467c:	00170713          	addi	a4,a4,1
    80004680:	01368023          	sb	s3,0(a3)
    80004684:	00e4b023          	sd	a4,0(s1)
    80004688:	10000637          	lui	a2,0x10000
    8000468c:	02f71063          	bne	a4,a5,800046ac <uartputc+0xc4>
    80004690:	0340006f          	j	800046c4 <uartputc+0xdc>
    80004694:	00074703          	lbu	a4,0(a4)
    80004698:	00f93023          	sd	a5,0(s2)
    8000469c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800046a0:	00093783          	ld	a5,0(s2)
    800046a4:	0004b703          	ld	a4,0(s1)
    800046a8:	00f70e63          	beq	a4,a5,800046c4 <uartputc+0xdc>
    800046ac:	00564683          	lbu	a3,5(a2)
    800046b0:	01f7f713          	andi	a4,a5,31
    800046b4:	00e58733          	add	a4,a1,a4
    800046b8:	0206f693          	andi	a3,a3,32
    800046bc:	00178793          	addi	a5,a5,1
    800046c0:	fc069ae3          	bnez	a3,80004694 <uartputc+0xac>
    800046c4:	02813083          	ld	ra,40(sp)
    800046c8:	02013403          	ld	s0,32(sp)
    800046cc:	01813483          	ld	s1,24(sp)
    800046d0:	01013903          	ld	s2,16(sp)
    800046d4:	00813983          	ld	s3,8(sp)
    800046d8:	03010113          	addi	sp,sp,48
    800046dc:	00008067          	ret

00000000800046e0 <uartputc_sync>:
    800046e0:	ff010113          	addi	sp,sp,-16
    800046e4:	00813423          	sd	s0,8(sp)
    800046e8:	01010413          	addi	s0,sp,16
    800046ec:	00003717          	auipc	a4,0x3
    800046f0:	90c72703          	lw	a4,-1780(a4) # 80006ff8 <panicked>
    800046f4:	02071663          	bnez	a4,80004720 <uartputc_sync+0x40>
    800046f8:	00050793          	mv	a5,a0
    800046fc:	100006b7          	lui	a3,0x10000
    80004700:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004704:	02077713          	andi	a4,a4,32
    80004708:	fe070ce3          	beqz	a4,80004700 <uartputc_sync+0x20>
    8000470c:	0ff7f793          	andi	a5,a5,255
    80004710:	00f68023          	sb	a5,0(a3)
    80004714:	00813403          	ld	s0,8(sp)
    80004718:	01010113          	addi	sp,sp,16
    8000471c:	00008067          	ret
    80004720:	0000006f          	j	80004720 <uartputc_sync+0x40>

0000000080004724 <uartstart>:
    80004724:	ff010113          	addi	sp,sp,-16
    80004728:	00813423          	sd	s0,8(sp)
    8000472c:	01010413          	addi	s0,sp,16
    80004730:	00003617          	auipc	a2,0x3
    80004734:	8d060613          	addi	a2,a2,-1840 # 80007000 <uart_tx_r>
    80004738:	00003517          	auipc	a0,0x3
    8000473c:	8d050513          	addi	a0,a0,-1840 # 80007008 <uart_tx_w>
    80004740:	00063783          	ld	a5,0(a2)
    80004744:	00053703          	ld	a4,0(a0)
    80004748:	04f70263          	beq	a4,a5,8000478c <uartstart+0x68>
    8000474c:	100005b7          	lui	a1,0x10000
    80004750:	00004817          	auipc	a6,0x4
    80004754:	b6080813          	addi	a6,a6,-1184 # 800082b0 <uart_tx_buf>
    80004758:	01c0006f          	j	80004774 <uartstart+0x50>
    8000475c:	0006c703          	lbu	a4,0(a3)
    80004760:	00f63023          	sd	a5,0(a2)
    80004764:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004768:	00063783          	ld	a5,0(a2)
    8000476c:	00053703          	ld	a4,0(a0)
    80004770:	00f70e63          	beq	a4,a5,8000478c <uartstart+0x68>
    80004774:	01f7f713          	andi	a4,a5,31
    80004778:	00e806b3          	add	a3,a6,a4
    8000477c:	0055c703          	lbu	a4,5(a1)
    80004780:	00178793          	addi	a5,a5,1
    80004784:	02077713          	andi	a4,a4,32
    80004788:	fc071ae3          	bnez	a4,8000475c <uartstart+0x38>
    8000478c:	00813403          	ld	s0,8(sp)
    80004790:	01010113          	addi	sp,sp,16
    80004794:	00008067          	ret

0000000080004798 <uartgetc>:
    80004798:	ff010113          	addi	sp,sp,-16
    8000479c:	00813423          	sd	s0,8(sp)
    800047a0:	01010413          	addi	s0,sp,16
    800047a4:	10000737          	lui	a4,0x10000
    800047a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800047ac:	0017f793          	andi	a5,a5,1
    800047b0:	00078c63          	beqz	a5,800047c8 <uartgetc+0x30>
    800047b4:	00074503          	lbu	a0,0(a4)
    800047b8:	0ff57513          	andi	a0,a0,255
    800047bc:	00813403          	ld	s0,8(sp)
    800047c0:	01010113          	addi	sp,sp,16
    800047c4:	00008067          	ret
    800047c8:	fff00513          	li	a0,-1
    800047cc:	ff1ff06f          	j	800047bc <uartgetc+0x24>

00000000800047d0 <uartintr>:
    800047d0:	100007b7          	lui	a5,0x10000
    800047d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800047d8:	0017f793          	andi	a5,a5,1
    800047dc:	0a078463          	beqz	a5,80004884 <uartintr+0xb4>
    800047e0:	fe010113          	addi	sp,sp,-32
    800047e4:	00813823          	sd	s0,16(sp)
    800047e8:	00913423          	sd	s1,8(sp)
    800047ec:	00113c23          	sd	ra,24(sp)
    800047f0:	02010413          	addi	s0,sp,32
    800047f4:	100004b7          	lui	s1,0x10000
    800047f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800047fc:	0ff57513          	andi	a0,a0,255
    80004800:	fffff097          	auipc	ra,0xfffff
    80004804:	534080e7          	jalr	1332(ra) # 80003d34 <consoleintr>
    80004808:	0054c783          	lbu	a5,5(s1)
    8000480c:	0017f793          	andi	a5,a5,1
    80004810:	fe0794e3          	bnez	a5,800047f8 <uartintr+0x28>
    80004814:	00002617          	auipc	a2,0x2
    80004818:	7ec60613          	addi	a2,a2,2028 # 80007000 <uart_tx_r>
    8000481c:	00002517          	auipc	a0,0x2
    80004820:	7ec50513          	addi	a0,a0,2028 # 80007008 <uart_tx_w>
    80004824:	00063783          	ld	a5,0(a2)
    80004828:	00053703          	ld	a4,0(a0)
    8000482c:	04f70263          	beq	a4,a5,80004870 <uartintr+0xa0>
    80004830:	100005b7          	lui	a1,0x10000
    80004834:	00004817          	auipc	a6,0x4
    80004838:	a7c80813          	addi	a6,a6,-1412 # 800082b0 <uart_tx_buf>
    8000483c:	01c0006f          	j	80004858 <uartintr+0x88>
    80004840:	0006c703          	lbu	a4,0(a3)
    80004844:	00f63023          	sd	a5,0(a2)
    80004848:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000484c:	00063783          	ld	a5,0(a2)
    80004850:	00053703          	ld	a4,0(a0)
    80004854:	00f70e63          	beq	a4,a5,80004870 <uartintr+0xa0>
    80004858:	01f7f713          	andi	a4,a5,31
    8000485c:	00e806b3          	add	a3,a6,a4
    80004860:	0055c703          	lbu	a4,5(a1)
    80004864:	00178793          	addi	a5,a5,1
    80004868:	02077713          	andi	a4,a4,32
    8000486c:	fc071ae3          	bnez	a4,80004840 <uartintr+0x70>
    80004870:	01813083          	ld	ra,24(sp)
    80004874:	01013403          	ld	s0,16(sp)
    80004878:	00813483          	ld	s1,8(sp)
    8000487c:	02010113          	addi	sp,sp,32
    80004880:	00008067          	ret
    80004884:	00002617          	auipc	a2,0x2
    80004888:	77c60613          	addi	a2,a2,1916 # 80007000 <uart_tx_r>
    8000488c:	00002517          	auipc	a0,0x2
    80004890:	77c50513          	addi	a0,a0,1916 # 80007008 <uart_tx_w>
    80004894:	00063783          	ld	a5,0(a2)
    80004898:	00053703          	ld	a4,0(a0)
    8000489c:	04f70263          	beq	a4,a5,800048e0 <uartintr+0x110>
    800048a0:	100005b7          	lui	a1,0x10000
    800048a4:	00004817          	auipc	a6,0x4
    800048a8:	a0c80813          	addi	a6,a6,-1524 # 800082b0 <uart_tx_buf>
    800048ac:	01c0006f          	j	800048c8 <uartintr+0xf8>
    800048b0:	0006c703          	lbu	a4,0(a3)
    800048b4:	00f63023          	sd	a5,0(a2)
    800048b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800048bc:	00063783          	ld	a5,0(a2)
    800048c0:	00053703          	ld	a4,0(a0)
    800048c4:	02f70063          	beq	a4,a5,800048e4 <uartintr+0x114>
    800048c8:	01f7f713          	andi	a4,a5,31
    800048cc:	00e806b3          	add	a3,a6,a4
    800048d0:	0055c703          	lbu	a4,5(a1)
    800048d4:	00178793          	addi	a5,a5,1
    800048d8:	02077713          	andi	a4,a4,32
    800048dc:	fc071ae3          	bnez	a4,800048b0 <uartintr+0xe0>
    800048e0:	00008067          	ret
    800048e4:	00008067          	ret

00000000800048e8 <kinit>:
    800048e8:	fc010113          	addi	sp,sp,-64
    800048ec:	02913423          	sd	s1,40(sp)
    800048f0:	fffff7b7          	lui	a5,0xfffff
    800048f4:	00005497          	auipc	s1,0x5
    800048f8:	9db48493          	addi	s1,s1,-1573 # 800092cf <end+0xfff>
    800048fc:	02813823          	sd	s0,48(sp)
    80004900:	01313c23          	sd	s3,24(sp)
    80004904:	00f4f4b3          	and	s1,s1,a5
    80004908:	02113c23          	sd	ra,56(sp)
    8000490c:	03213023          	sd	s2,32(sp)
    80004910:	01413823          	sd	s4,16(sp)
    80004914:	01513423          	sd	s5,8(sp)
    80004918:	04010413          	addi	s0,sp,64
    8000491c:	000017b7          	lui	a5,0x1
    80004920:	01100993          	li	s3,17
    80004924:	00f487b3          	add	a5,s1,a5
    80004928:	01b99993          	slli	s3,s3,0x1b
    8000492c:	06f9e063          	bltu	s3,a5,8000498c <kinit+0xa4>
    80004930:	00004a97          	auipc	s5,0x4
    80004934:	9a0a8a93          	addi	s5,s5,-1632 # 800082d0 <end>
    80004938:	0754ec63          	bltu	s1,s5,800049b0 <kinit+0xc8>
    8000493c:	0734fa63          	bgeu	s1,s3,800049b0 <kinit+0xc8>
    80004940:	00088a37          	lui	s4,0x88
    80004944:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004948:	00002917          	auipc	s2,0x2
    8000494c:	6c890913          	addi	s2,s2,1736 # 80007010 <kmem>
    80004950:	00ca1a13          	slli	s4,s4,0xc
    80004954:	0140006f          	j	80004968 <kinit+0x80>
    80004958:	000017b7          	lui	a5,0x1
    8000495c:	00f484b3          	add	s1,s1,a5
    80004960:	0554e863          	bltu	s1,s5,800049b0 <kinit+0xc8>
    80004964:	0534f663          	bgeu	s1,s3,800049b0 <kinit+0xc8>
    80004968:	00001637          	lui	a2,0x1
    8000496c:	00100593          	li	a1,1
    80004970:	00048513          	mv	a0,s1
    80004974:	00000097          	auipc	ra,0x0
    80004978:	5e4080e7          	jalr	1508(ra) # 80004f58 <__memset>
    8000497c:	00093783          	ld	a5,0(s2)
    80004980:	00f4b023          	sd	a5,0(s1)
    80004984:	00993023          	sd	s1,0(s2)
    80004988:	fd4498e3          	bne	s1,s4,80004958 <kinit+0x70>
    8000498c:	03813083          	ld	ra,56(sp)
    80004990:	03013403          	ld	s0,48(sp)
    80004994:	02813483          	ld	s1,40(sp)
    80004998:	02013903          	ld	s2,32(sp)
    8000499c:	01813983          	ld	s3,24(sp)
    800049a0:	01013a03          	ld	s4,16(sp)
    800049a4:	00813a83          	ld	s5,8(sp)
    800049a8:	04010113          	addi	sp,sp,64
    800049ac:	00008067          	ret
    800049b0:	00002517          	auipc	a0,0x2
    800049b4:	9f850513          	addi	a0,a0,-1544 # 800063a8 <digits+0x18>
    800049b8:	fffff097          	auipc	ra,0xfffff
    800049bc:	4b4080e7          	jalr	1204(ra) # 80003e6c <panic>

00000000800049c0 <freerange>:
    800049c0:	fc010113          	addi	sp,sp,-64
    800049c4:	000017b7          	lui	a5,0x1
    800049c8:	02913423          	sd	s1,40(sp)
    800049cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800049d0:	009504b3          	add	s1,a0,s1
    800049d4:	fffff537          	lui	a0,0xfffff
    800049d8:	02813823          	sd	s0,48(sp)
    800049dc:	02113c23          	sd	ra,56(sp)
    800049e0:	03213023          	sd	s2,32(sp)
    800049e4:	01313c23          	sd	s3,24(sp)
    800049e8:	01413823          	sd	s4,16(sp)
    800049ec:	01513423          	sd	s5,8(sp)
    800049f0:	01613023          	sd	s6,0(sp)
    800049f4:	04010413          	addi	s0,sp,64
    800049f8:	00a4f4b3          	and	s1,s1,a0
    800049fc:	00f487b3          	add	a5,s1,a5
    80004a00:	06f5e463          	bltu	a1,a5,80004a68 <freerange+0xa8>
    80004a04:	00004a97          	auipc	s5,0x4
    80004a08:	8cca8a93          	addi	s5,s5,-1844 # 800082d0 <end>
    80004a0c:	0954e263          	bltu	s1,s5,80004a90 <freerange+0xd0>
    80004a10:	01100993          	li	s3,17
    80004a14:	01b99993          	slli	s3,s3,0x1b
    80004a18:	0734fc63          	bgeu	s1,s3,80004a90 <freerange+0xd0>
    80004a1c:	00058a13          	mv	s4,a1
    80004a20:	00002917          	auipc	s2,0x2
    80004a24:	5f090913          	addi	s2,s2,1520 # 80007010 <kmem>
    80004a28:	00002b37          	lui	s6,0x2
    80004a2c:	0140006f          	j	80004a40 <freerange+0x80>
    80004a30:	000017b7          	lui	a5,0x1
    80004a34:	00f484b3          	add	s1,s1,a5
    80004a38:	0554ec63          	bltu	s1,s5,80004a90 <freerange+0xd0>
    80004a3c:	0534fa63          	bgeu	s1,s3,80004a90 <freerange+0xd0>
    80004a40:	00001637          	lui	a2,0x1
    80004a44:	00100593          	li	a1,1
    80004a48:	00048513          	mv	a0,s1
    80004a4c:	00000097          	auipc	ra,0x0
    80004a50:	50c080e7          	jalr	1292(ra) # 80004f58 <__memset>
    80004a54:	00093703          	ld	a4,0(s2)
    80004a58:	016487b3          	add	a5,s1,s6
    80004a5c:	00e4b023          	sd	a4,0(s1)
    80004a60:	00993023          	sd	s1,0(s2)
    80004a64:	fcfa76e3          	bgeu	s4,a5,80004a30 <freerange+0x70>
    80004a68:	03813083          	ld	ra,56(sp)
    80004a6c:	03013403          	ld	s0,48(sp)
    80004a70:	02813483          	ld	s1,40(sp)
    80004a74:	02013903          	ld	s2,32(sp)
    80004a78:	01813983          	ld	s3,24(sp)
    80004a7c:	01013a03          	ld	s4,16(sp)
    80004a80:	00813a83          	ld	s5,8(sp)
    80004a84:	00013b03          	ld	s6,0(sp)
    80004a88:	04010113          	addi	sp,sp,64
    80004a8c:	00008067          	ret
    80004a90:	00002517          	auipc	a0,0x2
    80004a94:	91850513          	addi	a0,a0,-1768 # 800063a8 <digits+0x18>
    80004a98:	fffff097          	auipc	ra,0xfffff
    80004a9c:	3d4080e7          	jalr	980(ra) # 80003e6c <panic>

0000000080004aa0 <kfree>:
    80004aa0:	fe010113          	addi	sp,sp,-32
    80004aa4:	00813823          	sd	s0,16(sp)
    80004aa8:	00113c23          	sd	ra,24(sp)
    80004aac:	00913423          	sd	s1,8(sp)
    80004ab0:	02010413          	addi	s0,sp,32
    80004ab4:	03451793          	slli	a5,a0,0x34
    80004ab8:	04079c63          	bnez	a5,80004b10 <kfree+0x70>
    80004abc:	00004797          	auipc	a5,0x4
    80004ac0:	81478793          	addi	a5,a5,-2028 # 800082d0 <end>
    80004ac4:	00050493          	mv	s1,a0
    80004ac8:	04f56463          	bltu	a0,a5,80004b10 <kfree+0x70>
    80004acc:	01100793          	li	a5,17
    80004ad0:	01b79793          	slli	a5,a5,0x1b
    80004ad4:	02f57e63          	bgeu	a0,a5,80004b10 <kfree+0x70>
    80004ad8:	00001637          	lui	a2,0x1
    80004adc:	00100593          	li	a1,1
    80004ae0:	00000097          	auipc	ra,0x0
    80004ae4:	478080e7          	jalr	1144(ra) # 80004f58 <__memset>
    80004ae8:	00002797          	auipc	a5,0x2
    80004aec:	52878793          	addi	a5,a5,1320 # 80007010 <kmem>
    80004af0:	0007b703          	ld	a4,0(a5)
    80004af4:	01813083          	ld	ra,24(sp)
    80004af8:	01013403          	ld	s0,16(sp)
    80004afc:	00e4b023          	sd	a4,0(s1)
    80004b00:	0097b023          	sd	s1,0(a5)
    80004b04:	00813483          	ld	s1,8(sp)
    80004b08:	02010113          	addi	sp,sp,32
    80004b0c:	00008067          	ret
    80004b10:	00002517          	auipc	a0,0x2
    80004b14:	89850513          	addi	a0,a0,-1896 # 800063a8 <digits+0x18>
    80004b18:	fffff097          	auipc	ra,0xfffff
    80004b1c:	354080e7          	jalr	852(ra) # 80003e6c <panic>

0000000080004b20 <kalloc>:
    80004b20:	fe010113          	addi	sp,sp,-32
    80004b24:	00813823          	sd	s0,16(sp)
    80004b28:	00913423          	sd	s1,8(sp)
    80004b2c:	00113c23          	sd	ra,24(sp)
    80004b30:	02010413          	addi	s0,sp,32
    80004b34:	00002797          	auipc	a5,0x2
    80004b38:	4dc78793          	addi	a5,a5,1244 # 80007010 <kmem>
    80004b3c:	0007b483          	ld	s1,0(a5)
    80004b40:	02048063          	beqz	s1,80004b60 <kalloc+0x40>
    80004b44:	0004b703          	ld	a4,0(s1)
    80004b48:	00001637          	lui	a2,0x1
    80004b4c:	00500593          	li	a1,5
    80004b50:	00048513          	mv	a0,s1
    80004b54:	00e7b023          	sd	a4,0(a5)
    80004b58:	00000097          	auipc	ra,0x0
    80004b5c:	400080e7          	jalr	1024(ra) # 80004f58 <__memset>
    80004b60:	01813083          	ld	ra,24(sp)
    80004b64:	01013403          	ld	s0,16(sp)
    80004b68:	00048513          	mv	a0,s1
    80004b6c:	00813483          	ld	s1,8(sp)
    80004b70:	02010113          	addi	sp,sp,32
    80004b74:	00008067          	ret

0000000080004b78 <initlock>:
    80004b78:	ff010113          	addi	sp,sp,-16
    80004b7c:	00813423          	sd	s0,8(sp)
    80004b80:	01010413          	addi	s0,sp,16
    80004b84:	00813403          	ld	s0,8(sp)
    80004b88:	00b53423          	sd	a1,8(a0)
    80004b8c:	00052023          	sw	zero,0(a0)
    80004b90:	00053823          	sd	zero,16(a0)
    80004b94:	01010113          	addi	sp,sp,16
    80004b98:	00008067          	ret

0000000080004b9c <acquire>:
    80004b9c:	fe010113          	addi	sp,sp,-32
    80004ba0:	00813823          	sd	s0,16(sp)
    80004ba4:	00913423          	sd	s1,8(sp)
    80004ba8:	00113c23          	sd	ra,24(sp)
    80004bac:	01213023          	sd	s2,0(sp)
    80004bb0:	02010413          	addi	s0,sp,32
    80004bb4:	00050493          	mv	s1,a0
    80004bb8:	10002973          	csrr	s2,sstatus
    80004bbc:	100027f3          	csrr	a5,sstatus
    80004bc0:	ffd7f793          	andi	a5,a5,-3
    80004bc4:	10079073          	csrw	sstatus,a5
    80004bc8:	fffff097          	auipc	ra,0xfffff
    80004bcc:	8e4080e7          	jalr	-1820(ra) # 800034ac <mycpu>
    80004bd0:	07852783          	lw	a5,120(a0)
    80004bd4:	06078e63          	beqz	a5,80004c50 <acquire+0xb4>
    80004bd8:	fffff097          	auipc	ra,0xfffff
    80004bdc:	8d4080e7          	jalr	-1836(ra) # 800034ac <mycpu>
    80004be0:	07852783          	lw	a5,120(a0)
    80004be4:	0004a703          	lw	a4,0(s1)
    80004be8:	0017879b          	addiw	a5,a5,1
    80004bec:	06f52c23          	sw	a5,120(a0)
    80004bf0:	04071063          	bnez	a4,80004c30 <acquire+0x94>
    80004bf4:	00100713          	li	a4,1
    80004bf8:	00070793          	mv	a5,a4
    80004bfc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004c00:	0007879b          	sext.w	a5,a5
    80004c04:	fe079ae3          	bnez	a5,80004bf8 <acquire+0x5c>
    80004c08:	0ff0000f          	fence
    80004c0c:	fffff097          	auipc	ra,0xfffff
    80004c10:	8a0080e7          	jalr	-1888(ra) # 800034ac <mycpu>
    80004c14:	01813083          	ld	ra,24(sp)
    80004c18:	01013403          	ld	s0,16(sp)
    80004c1c:	00a4b823          	sd	a0,16(s1)
    80004c20:	00013903          	ld	s2,0(sp)
    80004c24:	00813483          	ld	s1,8(sp)
    80004c28:	02010113          	addi	sp,sp,32
    80004c2c:	00008067          	ret
    80004c30:	0104b903          	ld	s2,16(s1)
    80004c34:	fffff097          	auipc	ra,0xfffff
    80004c38:	878080e7          	jalr	-1928(ra) # 800034ac <mycpu>
    80004c3c:	faa91ce3          	bne	s2,a0,80004bf4 <acquire+0x58>
    80004c40:	00001517          	auipc	a0,0x1
    80004c44:	77050513          	addi	a0,a0,1904 # 800063b0 <digits+0x20>
    80004c48:	fffff097          	auipc	ra,0xfffff
    80004c4c:	224080e7          	jalr	548(ra) # 80003e6c <panic>
    80004c50:	00195913          	srli	s2,s2,0x1
    80004c54:	fffff097          	auipc	ra,0xfffff
    80004c58:	858080e7          	jalr	-1960(ra) # 800034ac <mycpu>
    80004c5c:	00197913          	andi	s2,s2,1
    80004c60:	07252e23          	sw	s2,124(a0)
    80004c64:	f75ff06f          	j	80004bd8 <acquire+0x3c>

0000000080004c68 <release>:
    80004c68:	fe010113          	addi	sp,sp,-32
    80004c6c:	00813823          	sd	s0,16(sp)
    80004c70:	00113c23          	sd	ra,24(sp)
    80004c74:	00913423          	sd	s1,8(sp)
    80004c78:	01213023          	sd	s2,0(sp)
    80004c7c:	02010413          	addi	s0,sp,32
    80004c80:	00052783          	lw	a5,0(a0)
    80004c84:	00079a63          	bnez	a5,80004c98 <release+0x30>
    80004c88:	00001517          	auipc	a0,0x1
    80004c8c:	73050513          	addi	a0,a0,1840 # 800063b8 <digits+0x28>
    80004c90:	fffff097          	auipc	ra,0xfffff
    80004c94:	1dc080e7          	jalr	476(ra) # 80003e6c <panic>
    80004c98:	01053903          	ld	s2,16(a0)
    80004c9c:	00050493          	mv	s1,a0
    80004ca0:	fffff097          	auipc	ra,0xfffff
    80004ca4:	80c080e7          	jalr	-2036(ra) # 800034ac <mycpu>
    80004ca8:	fea910e3          	bne	s2,a0,80004c88 <release+0x20>
    80004cac:	0004b823          	sd	zero,16(s1)
    80004cb0:	0ff0000f          	fence
    80004cb4:	0f50000f          	fence	iorw,ow
    80004cb8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004cbc:	ffffe097          	auipc	ra,0xffffe
    80004cc0:	7f0080e7          	jalr	2032(ra) # 800034ac <mycpu>
    80004cc4:	100027f3          	csrr	a5,sstatus
    80004cc8:	0027f793          	andi	a5,a5,2
    80004ccc:	04079a63          	bnez	a5,80004d20 <release+0xb8>
    80004cd0:	07852783          	lw	a5,120(a0)
    80004cd4:	02f05e63          	blez	a5,80004d10 <release+0xa8>
    80004cd8:	fff7871b          	addiw	a4,a5,-1
    80004cdc:	06e52c23          	sw	a4,120(a0)
    80004ce0:	00071c63          	bnez	a4,80004cf8 <release+0x90>
    80004ce4:	07c52783          	lw	a5,124(a0)
    80004ce8:	00078863          	beqz	a5,80004cf8 <release+0x90>
    80004cec:	100027f3          	csrr	a5,sstatus
    80004cf0:	0027e793          	ori	a5,a5,2
    80004cf4:	10079073          	csrw	sstatus,a5
    80004cf8:	01813083          	ld	ra,24(sp)
    80004cfc:	01013403          	ld	s0,16(sp)
    80004d00:	00813483          	ld	s1,8(sp)
    80004d04:	00013903          	ld	s2,0(sp)
    80004d08:	02010113          	addi	sp,sp,32
    80004d0c:	00008067          	ret
    80004d10:	00001517          	auipc	a0,0x1
    80004d14:	6c850513          	addi	a0,a0,1736 # 800063d8 <digits+0x48>
    80004d18:	fffff097          	auipc	ra,0xfffff
    80004d1c:	154080e7          	jalr	340(ra) # 80003e6c <panic>
    80004d20:	00001517          	auipc	a0,0x1
    80004d24:	6a050513          	addi	a0,a0,1696 # 800063c0 <digits+0x30>
    80004d28:	fffff097          	auipc	ra,0xfffff
    80004d2c:	144080e7          	jalr	324(ra) # 80003e6c <panic>

0000000080004d30 <holding>:
    80004d30:	00052783          	lw	a5,0(a0)
    80004d34:	00079663          	bnez	a5,80004d40 <holding+0x10>
    80004d38:	00000513          	li	a0,0
    80004d3c:	00008067          	ret
    80004d40:	fe010113          	addi	sp,sp,-32
    80004d44:	00813823          	sd	s0,16(sp)
    80004d48:	00913423          	sd	s1,8(sp)
    80004d4c:	00113c23          	sd	ra,24(sp)
    80004d50:	02010413          	addi	s0,sp,32
    80004d54:	01053483          	ld	s1,16(a0)
    80004d58:	ffffe097          	auipc	ra,0xffffe
    80004d5c:	754080e7          	jalr	1876(ra) # 800034ac <mycpu>
    80004d60:	01813083          	ld	ra,24(sp)
    80004d64:	01013403          	ld	s0,16(sp)
    80004d68:	40a48533          	sub	a0,s1,a0
    80004d6c:	00153513          	seqz	a0,a0
    80004d70:	00813483          	ld	s1,8(sp)
    80004d74:	02010113          	addi	sp,sp,32
    80004d78:	00008067          	ret

0000000080004d7c <push_off>:
    80004d7c:	fe010113          	addi	sp,sp,-32
    80004d80:	00813823          	sd	s0,16(sp)
    80004d84:	00113c23          	sd	ra,24(sp)
    80004d88:	00913423          	sd	s1,8(sp)
    80004d8c:	02010413          	addi	s0,sp,32
    80004d90:	100024f3          	csrr	s1,sstatus
    80004d94:	100027f3          	csrr	a5,sstatus
    80004d98:	ffd7f793          	andi	a5,a5,-3
    80004d9c:	10079073          	csrw	sstatus,a5
    80004da0:	ffffe097          	auipc	ra,0xffffe
    80004da4:	70c080e7          	jalr	1804(ra) # 800034ac <mycpu>
    80004da8:	07852783          	lw	a5,120(a0)
    80004dac:	02078663          	beqz	a5,80004dd8 <push_off+0x5c>
    80004db0:	ffffe097          	auipc	ra,0xffffe
    80004db4:	6fc080e7          	jalr	1788(ra) # 800034ac <mycpu>
    80004db8:	07852783          	lw	a5,120(a0)
    80004dbc:	01813083          	ld	ra,24(sp)
    80004dc0:	01013403          	ld	s0,16(sp)
    80004dc4:	0017879b          	addiw	a5,a5,1
    80004dc8:	06f52c23          	sw	a5,120(a0)
    80004dcc:	00813483          	ld	s1,8(sp)
    80004dd0:	02010113          	addi	sp,sp,32
    80004dd4:	00008067          	ret
    80004dd8:	0014d493          	srli	s1,s1,0x1
    80004ddc:	ffffe097          	auipc	ra,0xffffe
    80004de0:	6d0080e7          	jalr	1744(ra) # 800034ac <mycpu>
    80004de4:	0014f493          	andi	s1,s1,1
    80004de8:	06952e23          	sw	s1,124(a0)
    80004dec:	fc5ff06f          	j	80004db0 <push_off+0x34>

0000000080004df0 <pop_off>:
    80004df0:	ff010113          	addi	sp,sp,-16
    80004df4:	00813023          	sd	s0,0(sp)
    80004df8:	00113423          	sd	ra,8(sp)
    80004dfc:	01010413          	addi	s0,sp,16
    80004e00:	ffffe097          	auipc	ra,0xffffe
    80004e04:	6ac080e7          	jalr	1708(ra) # 800034ac <mycpu>
    80004e08:	100027f3          	csrr	a5,sstatus
    80004e0c:	0027f793          	andi	a5,a5,2
    80004e10:	04079663          	bnez	a5,80004e5c <pop_off+0x6c>
    80004e14:	07852783          	lw	a5,120(a0)
    80004e18:	02f05a63          	blez	a5,80004e4c <pop_off+0x5c>
    80004e1c:	fff7871b          	addiw	a4,a5,-1
    80004e20:	06e52c23          	sw	a4,120(a0)
    80004e24:	00071c63          	bnez	a4,80004e3c <pop_off+0x4c>
    80004e28:	07c52783          	lw	a5,124(a0)
    80004e2c:	00078863          	beqz	a5,80004e3c <pop_off+0x4c>
    80004e30:	100027f3          	csrr	a5,sstatus
    80004e34:	0027e793          	ori	a5,a5,2
    80004e38:	10079073          	csrw	sstatus,a5
    80004e3c:	00813083          	ld	ra,8(sp)
    80004e40:	00013403          	ld	s0,0(sp)
    80004e44:	01010113          	addi	sp,sp,16
    80004e48:	00008067          	ret
    80004e4c:	00001517          	auipc	a0,0x1
    80004e50:	58c50513          	addi	a0,a0,1420 # 800063d8 <digits+0x48>
    80004e54:	fffff097          	auipc	ra,0xfffff
    80004e58:	018080e7          	jalr	24(ra) # 80003e6c <panic>
    80004e5c:	00001517          	auipc	a0,0x1
    80004e60:	56450513          	addi	a0,a0,1380 # 800063c0 <digits+0x30>
    80004e64:	fffff097          	auipc	ra,0xfffff
    80004e68:	008080e7          	jalr	8(ra) # 80003e6c <panic>

0000000080004e6c <push_on>:
    80004e6c:	fe010113          	addi	sp,sp,-32
    80004e70:	00813823          	sd	s0,16(sp)
    80004e74:	00113c23          	sd	ra,24(sp)
    80004e78:	00913423          	sd	s1,8(sp)
    80004e7c:	02010413          	addi	s0,sp,32
    80004e80:	100024f3          	csrr	s1,sstatus
    80004e84:	100027f3          	csrr	a5,sstatus
    80004e88:	0027e793          	ori	a5,a5,2
    80004e8c:	10079073          	csrw	sstatus,a5
    80004e90:	ffffe097          	auipc	ra,0xffffe
    80004e94:	61c080e7          	jalr	1564(ra) # 800034ac <mycpu>
    80004e98:	07852783          	lw	a5,120(a0)
    80004e9c:	02078663          	beqz	a5,80004ec8 <push_on+0x5c>
    80004ea0:	ffffe097          	auipc	ra,0xffffe
    80004ea4:	60c080e7          	jalr	1548(ra) # 800034ac <mycpu>
    80004ea8:	07852783          	lw	a5,120(a0)
    80004eac:	01813083          	ld	ra,24(sp)
    80004eb0:	01013403          	ld	s0,16(sp)
    80004eb4:	0017879b          	addiw	a5,a5,1
    80004eb8:	06f52c23          	sw	a5,120(a0)
    80004ebc:	00813483          	ld	s1,8(sp)
    80004ec0:	02010113          	addi	sp,sp,32
    80004ec4:	00008067          	ret
    80004ec8:	0014d493          	srli	s1,s1,0x1
    80004ecc:	ffffe097          	auipc	ra,0xffffe
    80004ed0:	5e0080e7          	jalr	1504(ra) # 800034ac <mycpu>
    80004ed4:	0014f493          	andi	s1,s1,1
    80004ed8:	06952e23          	sw	s1,124(a0)
    80004edc:	fc5ff06f          	j	80004ea0 <push_on+0x34>

0000000080004ee0 <pop_on>:
    80004ee0:	ff010113          	addi	sp,sp,-16
    80004ee4:	00813023          	sd	s0,0(sp)
    80004ee8:	00113423          	sd	ra,8(sp)
    80004eec:	01010413          	addi	s0,sp,16
    80004ef0:	ffffe097          	auipc	ra,0xffffe
    80004ef4:	5bc080e7          	jalr	1468(ra) # 800034ac <mycpu>
    80004ef8:	100027f3          	csrr	a5,sstatus
    80004efc:	0027f793          	andi	a5,a5,2
    80004f00:	04078463          	beqz	a5,80004f48 <pop_on+0x68>
    80004f04:	07852783          	lw	a5,120(a0)
    80004f08:	02f05863          	blez	a5,80004f38 <pop_on+0x58>
    80004f0c:	fff7879b          	addiw	a5,a5,-1
    80004f10:	06f52c23          	sw	a5,120(a0)
    80004f14:	07853783          	ld	a5,120(a0)
    80004f18:	00079863          	bnez	a5,80004f28 <pop_on+0x48>
    80004f1c:	100027f3          	csrr	a5,sstatus
    80004f20:	ffd7f793          	andi	a5,a5,-3
    80004f24:	10079073          	csrw	sstatus,a5
    80004f28:	00813083          	ld	ra,8(sp)
    80004f2c:	00013403          	ld	s0,0(sp)
    80004f30:	01010113          	addi	sp,sp,16
    80004f34:	00008067          	ret
    80004f38:	00001517          	auipc	a0,0x1
    80004f3c:	4c850513          	addi	a0,a0,1224 # 80006400 <digits+0x70>
    80004f40:	fffff097          	auipc	ra,0xfffff
    80004f44:	f2c080e7          	jalr	-212(ra) # 80003e6c <panic>
    80004f48:	00001517          	auipc	a0,0x1
    80004f4c:	49850513          	addi	a0,a0,1176 # 800063e0 <digits+0x50>
    80004f50:	fffff097          	auipc	ra,0xfffff
    80004f54:	f1c080e7          	jalr	-228(ra) # 80003e6c <panic>

0000000080004f58 <__memset>:
    80004f58:	ff010113          	addi	sp,sp,-16
    80004f5c:	00813423          	sd	s0,8(sp)
    80004f60:	01010413          	addi	s0,sp,16
    80004f64:	1a060e63          	beqz	a2,80005120 <__memset+0x1c8>
    80004f68:	40a007b3          	neg	a5,a0
    80004f6c:	0077f793          	andi	a5,a5,7
    80004f70:	00778693          	addi	a3,a5,7
    80004f74:	00b00813          	li	a6,11
    80004f78:	0ff5f593          	andi	a1,a1,255
    80004f7c:	fff6071b          	addiw	a4,a2,-1
    80004f80:	1b06e663          	bltu	a3,a6,8000512c <__memset+0x1d4>
    80004f84:	1cd76463          	bltu	a4,a3,8000514c <__memset+0x1f4>
    80004f88:	1a078e63          	beqz	a5,80005144 <__memset+0x1ec>
    80004f8c:	00b50023          	sb	a1,0(a0)
    80004f90:	00100713          	li	a4,1
    80004f94:	1ae78463          	beq	a5,a4,8000513c <__memset+0x1e4>
    80004f98:	00b500a3          	sb	a1,1(a0)
    80004f9c:	00200713          	li	a4,2
    80004fa0:	1ae78a63          	beq	a5,a4,80005154 <__memset+0x1fc>
    80004fa4:	00b50123          	sb	a1,2(a0)
    80004fa8:	00300713          	li	a4,3
    80004fac:	18e78463          	beq	a5,a4,80005134 <__memset+0x1dc>
    80004fb0:	00b501a3          	sb	a1,3(a0)
    80004fb4:	00400713          	li	a4,4
    80004fb8:	1ae78263          	beq	a5,a4,8000515c <__memset+0x204>
    80004fbc:	00b50223          	sb	a1,4(a0)
    80004fc0:	00500713          	li	a4,5
    80004fc4:	1ae78063          	beq	a5,a4,80005164 <__memset+0x20c>
    80004fc8:	00b502a3          	sb	a1,5(a0)
    80004fcc:	00700713          	li	a4,7
    80004fd0:	18e79e63          	bne	a5,a4,8000516c <__memset+0x214>
    80004fd4:	00b50323          	sb	a1,6(a0)
    80004fd8:	00700e93          	li	t4,7
    80004fdc:	00859713          	slli	a4,a1,0x8
    80004fe0:	00e5e733          	or	a4,a1,a4
    80004fe4:	01059e13          	slli	t3,a1,0x10
    80004fe8:	01c76e33          	or	t3,a4,t3
    80004fec:	01859313          	slli	t1,a1,0x18
    80004ff0:	006e6333          	or	t1,t3,t1
    80004ff4:	02059893          	slli	a7,a1,0x20
    80004ff8:	40f60e3b          	subw	t3,a2,a5
    80004ffc:	011368b3          	or	a7,t1,a7
    80005000:	02859813          	slli	a6,a1,0x28
    80005004:	0108e833          	or	a6,a7,a6
    80005008:	03059693          	slli	a3,a1,0x30
    8000500c:	003e589b          	srliw	a7,t3,0x3
    80005010:	00d866b3          	or	a3,a6,a3
    80005014:	03859713          	slli	a4,a1,0x38
    80005018:	00389813          	slli	a6,a7,0x3
    8000501c:	00f507b3          	add	a5,a0,a5
    80005020:	00e6e733          	or	a4,a3,a4
    80005024:	000e089b          	sext.w	a7,t3
    80005028:	00f806b3          	add	a3,a6,a5
    8000502c:	00e7b023          	sd	a4,0(a5)
    80005030:	00878793          	addi	a5,a5,8
    80005034:	fed79ce3          	bne	a5,a3,8000502c <__memset+0xd4>
    80005038:	ff8e7793          	andi	a5,t3,-8
    8000503c:	0007871b          	sext.w	a4,a5
    80005040:	01d787bb          	addw	a5,a5,t4
    80005044:	0ce88e63          	beq	a7,a4,80005120 <__memset+0x1c8>
    80005048:	00f50733          	add	a4,a0,a5
    8000504c:	00b70023          	sb	a1,0(a4)
    80005050:	0017871b          	addiw	a4,a5,1
    80005054:	0cc77663          	bgeu	a4,a2,80005120 <__memset+0x1c8>
    80005058:	00e50733          	add	a4,a0,a4
    8000505c:	00b70023          	sb	a1,0(a4)
    80005060:	0027871b          	addiw	a4,a5,2
    80005064:	0ac77e63          	bgeu	a4,a2,80005120 <__memset+0x1c8>
    80005068:	00e50733          	add	a4,a0,a4
    8000506c:	00b70023          	sb	a1,0(a4)
    80005070:	0037871b          	addiw	a4,a5,3
    80005074:	0ac77663          	bgeu	a4,a2,80005120 <__memset+0x1c8>
    80005078:	00e50733          	add	a4,a0,a4
    8000507c:	00b70023          	sb	a1,0(a4)
    80005080:	0047871b          	addiw	a4,a5,4
    80005084:	08c77e63          	bgeu	a4,a2,80005120 <__memset+0x1c8>
    80005088:	00e50733          	add	a4,a0,a4
    8000508c:	00b70023          	sb	a1,0(a4)
    80005090:	0057871b          	addiw	a4,a5,5
    80005094:	08c77663          	bgeu	a4,a2,80005120 <__memset+0x1c8>
    80005098:	00e50733          	add	a4,a0,a4
    8000509c:	00b70023          	sb	a1,0(a4)
    800050a0:	0067871b          	addiw	a4,a5,6
    800050a4:	06c77e63          	bgeu	a4,a2,80005120 <__memset+0x1c8>
    800050a8:	00e50733          	add	a4,a0,a4
    800050ac:	00b70023          	sb	a1,0(a4)
    800050b0:	0077871b          	addiw	a4,a5,7
    800050b4:	06c77663          	bgeu	a4,a2,80005120 <__memset+0x1c8>
    800050b8:	00e50733          	add	a4,a0,a4
    800050bc:	00b70023          	sb	a1,0(a4)
    800050c0:	0087871b          	addiw	a4,a5,8
    800050c4:	04c77e63          	bgeu	a4,a2,80005120 <__memset+0x1c8>
    800050c8:	00e50733          	add	a4,a0,a4
    800050cc:	00b70023          	sb	a1,0(a4)
    800050d0:	0097871b          	addiw	a4,a5,9
    800050d4:	04c77663          	bgeu	a4,a2,80005120 <__memset+0x1c8>
    800050d8:	00e50733          	add	a4,a0,a4
    800050dc:	00b70023          	sb	a1,0(a4)
    800050e0:	00a7871b          	addiw	a4,a5,10
    800050e4:	02c77e63          	bgeu	a4,a2,80005120 <__memset+0x1c8>
    800050e8:	00e50733          	add	a4,a0,a4
    800050ec:	00b70023          	sb	a1,0(a4)
    800050f0:	00b7871b          	addiw	a4,a5,11
    800050f4:	02c77663          	bgeu	a4,a2,80005120 <__memset+0x1c8>
    800050f8:	00e50733          	add	a4,a0,a4
    800050fc:	00b70023          	sb	a1,0(a4)
    80005100:	00c7871b          	addiw	a4,a5,12
    80005104:	00c77e63          	bgeu	a4,a2,80005120 <__memset+0x1c8>
    80005108:	00e50733          	add	a4,a0,a4
    8000510c:	00b70023          	sb	a1,0(a4)
    80005110:	00d7879b          	addiw	a5,a5,13
    80005114:	00c7f663          	bgeu	a5,a2,80005120 <__memset+0x1c8>
    80005118:	00f507b3          	add	a5,a0,a5
    8000511c:	00b78023          	sb	a1,0(a5)
    80005120:	00813403          	ld	s0,8(sp)
    80005124:	01010113          	addi	sp,sp,16
    80005128:	00008067          	ret
    8000512c:	00b00693          	li	a3,11
    80005130:	e55ff06f          	j	80004f84 <__memset+0x2c>
    80005134:	00300e93          	li	t4,3
    80005138:	ea5ff06f          	j	80004fdc <__memset+0x84>
    8000513c:	00100e93          	li	t4,1
    80005140:	e9dff06f          	j	80004fdc <__memset+0x84>
    80005144:	00000e93          	li	t4,0
    80005148:	e95ff06f          	j	80004fdc <__memset+0x84>
    8000514c:	00000793          	li	a5,0
    80005150:	ef9ff06f          	j	80005048 <__memset+0xf0>
    80005154:	00200e93          	li	t4,2
    80005158:	e85ff06f          	j	80004fdc <__memset+0x84>
    8000515c:	00400e93          	li	t4,4
    80005160:	e7dff06f          	j	80004fdc <__memset+0x84>
    80005164:	00500e93          	li	t4,5
    80005168:	e75ff06f          	j	80004fdc <__memset+0x84>
    8000516c:	00600e93          	li	t4,6
    80005170:	e6dff06f          	j	80004fdc <__memset+0x84>

0000000080005174 <__memmove>:
    80005174:	ff010113          	addi	sp,sp,-16
    80005178:	00813423          	sd	s0,8(sp)
    8000517c:	01010413          	addi	s0,sp,16
    80005180:	0e060863          	beqz	a2,80005270 <__memmove+0xfc>
    80005184:	fff6069b          	addiw	a3,a2,-1
    80005188:	0006881b          	sext.w	a6,a3
    8000518c:	0ea5e863          	bltu	a1,a0,8000527c <__memmove+0x108>
    80005190:	00758713          	addi	a4,a1,7
    80005194:	00a5e7b3          	or	a5,a1,a0
    80005198:	40a70733          	sub	a4,a4,a0
    8000519c:	0077f793          	andi	a5,a5,7
    800051a0:	00f73713          	sltiu	a4,a4,15
    800051a4:	00174713          	xori	a4,a4,1
    800051a8:	0017b793          	seqz	a5,a5
    800051ac:	00e7f7b3          	and	a5,a5,a4
    800051b0:	10078863          	beqz	a5,800052c0 <__memmove+0x14c>
    800051b4:	00900793          	li	a5,9
    800051b8:	1107f463          	bgeu	a5,a6,800052c0 <__memmove+0x14c>
    800051bc:	0036581b          	srliw	a6,a2,0x3
    800051c0:	fff8081b          	addiw	a6,a6,-1
    800051c4:	02081813          	slli	a6,a6,0x20
    800051c8:	01d85893          	srli	a7,a6,0x1d
    800051cc:	00858813          	addi	a6,a1,8
    800051d0:	00058793          	mv	a5,a1
    800051d4:	00050713          	mv	a4,a0
    800051d8:	01088833          	add	a6,a7,a6
    800051dc:	0007b883          	ld	a7,0(a5)
    800051e0:	00878793          	addi	a5,a5,8
    800051e4:	00870713          	addi	a4,a4,8
    800051e8:	ff173c23          	sd	a7,-8(a4)
    800051ec:	ff0798e3          	bne	a5,a6,800051dc <__memmove+0x68>
    800051f0:	ff867713          	andi	a4,a2,-8
    800051f4:	02071793          	slli	a5,a4,0x20
    800051f8:	0207d793          	srli	a5,a5,0x20
    800051fc:	00f585b3          	add	a1,a1,a5
    80005200:	40e686bb          	subw	a3,a3,a4
    80005204:	00f507b3          	add	a5,a0,a5
    80005208:	06e60463          	beq	a2,a4,80005270 <__memmove+0xfc>
    8000520c:	0005c703          	lbu	a4,0(a1)
    80005210:	00e78023          	sb	a4,0(a5)
    80005214:	04068e63          	beqz	a3,80005270 <__memmove+0xfc>
    80005218:	0015c603          	lbu	a2,1(a1)
    8000521c:	00100713          	li	a4,1
    80005220:	00c780a3          	sb	a2,1(a5)
    80005224:	04e68663          	beq	a3,a4,80005270 <__memmove+0xfc>
    80005228:	0025c603          	lbu	a2,2(a1)
    8000522c:	00200713          	li	a4,2
    80005230:	00c78123          	sb	a2,2(a5)
    80005234:	02e68e63          	beq	a3,a4,80005270 <__memmove+0xfc>
    80005238:	0035c603          	lbu	a2,3(a1)
    8000523c:	00300713          	li	a4,3
    80005240:	00c781a3          	sb	a2,3(a5)
    80005244:	02e68663          	beq	a3,a4,80005270 <__memmove+0xfc>
    80005248:	0045c603          	lbu	a2,4(a1)
    8000524c:	00400713          	li	a4,4
    80005250:	00c78223          	sb	a2,4(a5)
    80005254:	00e68e63          	beq	a3,a4,80005270 <__memmove+0xfc>
    80005258:	0055c603          	lbu	a2,5(a1)
    8000525c:	00500713          	li	a4,5
    80005260:	00c782a3          	sb	a2,5(a5)
    80005264:	00e68663          	beq	a3,a4,80005270 <__memmove+0xfc>
    80005268:	0065c703          	lbu	a4,6(a1)
    8000526c:	00e78323          	sb	a4,6(a5)
    80005270:	00813403          	ld	s0,8(sp)
    80005274:	01010113          	addi	sp,sp,16
    80005278:	00008067          	ret
    8000527c:	02061713          	slli	a4,a2,0x20
    80005280:	02075713          	srli	a4,a4,0x20
    80005284:	00e587b3          	add	a5,a1,a4
    80005288:	f0f574e3          	bgeu	a0,a5,80005190 <__memmove+0x1c>
    8000528c:	02069613          	slli	a2,a3,0x20
    80005290:	02065613          	srli	a2,a2,0x20
    80005294:	fff64613          	not	a2,a2
    80005298:	00e50733          	add	a4,a0,a4
    8000529c:	00c78633          	add	a2,a5,a2
    800052a0:	fff7c683          	lbu	a3,-1(a5)
    800052a4:	fff78793          	addi	a5,a5,-1
    800052a8:	fff70713          	addi	a4,a4,-1
    800052ac:	00d70023          	sb	a3,0(a4)
    800052b0:	fec798e3          	bne	a5,a2,800052a0 <__memmove+0x12c>
    800052b4:	00813403          	ld	s0,8(sp)
    800052b8:	01010113          	addi	sp,sp,16
    800052bc:	00008067          	ret
    800052c0:	02069713          	slli	a4,a3,0x20
    800052c4:	02075713          	srli	a4,a4,0x20
    800052c8:	00170713          	addi	a4,a4,1
    800052cc:	00e50733          	add	a4,a0,a4
    800052d0:	00050793          	mv	a5,a0
    800052d4:	0005c683          	lbu	a3,0(a1)
    800052d8:	00178793          	addi	a5,a5,1
    800052dc:	00158593          	addi	a1,a1,1
    800052e0:	fed78fa3          	sb	a3,-1(a5)
    800052e4:	fee798e3          	bne	a5,a4,800052d4 <__memmove+0x160>
    800052e8:	f89ff06f          	j	80005270 <__memmove+0xfc>

00000000800052ec <__putc>:
    800052ec:	fe010113          	addi	sp,sp,-32
    800052f0:	00813823          	sd	s0,16(sp)
    800052f4:	00113c23          	sd	ra,24(sp)
    800052f8:	02010413          	addi	s0,sp,32
    800052fc:	00050793          	mv	a5,a0
    80005300:	fef40593          	addi	a1,s0,-17
    80005304:	00100613          	li	a2,1
    80005308:	00000513          	li	a0,0
    8000530c:	fef407a3          	sb	a5,-17(s0)
    80005310:	fffff097          	auipc	ra,0xfffff
    80005314:	b3c080e7          	jalr	-1220(ra) # 80003e4c <console_write>
    80005318:	01813083          	ld	ra,24(sp)
    8000531c:	01013403          	ld	s0,16(sp)
    80005320:	02010113          	addi	sp,sp,32
    80005324:	00008067          	ret

0000000080005328 <__getc>:
    80005328:	fe010113          	addi	sp,sp,-32
    8000532c:	00813823          	sd	s0,16(sp)
    80005330:	00113c23          	sd	ra,24(sp)
    80005334:	02010413          	addi	s0,sp,32
    80005338:	fe840593          	addi	a1,s0,-24
    8000533c:	00100613          	li	a2,1
    80005340:	00000513          	li	a0,0
    80005344:	fffff097          	auipc	ra,0xfffff
    80005348:	ae8080e7          	jalr	-1304(ra) # 80003e2c <console_read>
    8000534c:	fe844503          	lbu	a0,-24(s0)
    80005350:	01813083          	ld	ra,24(sp)
    80005354:	01013403          	ld	s0,16(sp)
    80005358:	02010113          	addi	sp,sp,32
    8000535c:	00008067          	ret

0000000080005360 <console_handler>:
    80005360:	fe010113          	addi	sp,sp,-32
    80005364:	00813823          	sd	s0,16(sp)
    80005368:	00113c23          	sd	ra,24(sp)
    8000536c:	00913423          	sd	s1,8(sp)
    80005370:	02010413          	addi	s0,sp,32
    80005374:	14202773          	csrr	a4,scause
    80005378:	100027f3          	csrr	a5,sstatus
    8000537c:	0027f793          	andi	a5,a5,2
    80005380:	06079e63          	bnez	a5,800053fc <console_handler+0x9c>
    80005384:	00074c63          	bltz	a4,8000539c <console_handler+0x3c>
    80005388:	01813083          	ld	ra,24(sp)
    8000538c:	01013403          	ld	s0,16(sp)
    80005390:	00813483          	ld	s1,8(sp)
    80005394:	02010113          	addi	sp,sp,32
    80005398:	00008067          	ret
    8000539c:	0ff77713          	andi	a4,a4,255
    800053a0:	00900793          	li	a5,9
    800053a4:	fef712e3          	bne	a4,a5,80005388 <console_handler+0x28>
    800053a8:	ffffe097          	auipc	ra,0xffffe
    800053ac:	6dc080e7          	jalr	1756(ra) # 80003a84 <plic_claim>
    800053b0:	00a00793          	li	a5,10
    800053b4:	00050493          	mv	s1,a0
    800053b8:	02f50c63          	beq	a0,a5,800053f0 <console_handler+0x90>
    800053bc:	fc0506e3          	beqz	a0,80005388 <console_handler+0x28>
    800053c0:	00050593          	mv	a1,a0
    800053c4:	00001517          	auipc	a0,0x1
    800053c8:	f4450513          	addi	a0,a0,-188 # 80006308 <CONSOLE_STATUS+0x2f8>
    800053cc:	fffff097          	auipc	ra,0xfffff
    800053d0:	afc080e7          	jalr	-1284(ra) # 80003ec8 <__printf>
    800053d4:	01013403          	ld	s0,16(sp)
    800053d8:	01813083          	ld	ra,24(sp)
    800053dc:	00048513          	mv	a0,s1
    800053e0:	00813483          	ld	s1,8(sp)
    800053e4:	02010113          	addi	sp,sp,32
    800053e8:	ffffe317          	auipc	t1,0xffffe
    800053ec:	6d430067          	jr	1748(t1) # 80003abc <plic_complete>
    800053f0:	fffff097          	auipc	ra,0xfffff
    800053f4:	3e0080e7          	jalr	992(ra) # 800047d0 <uartintr>
    800053f8:	fddff06f          	j	800053d4 <console_handler+0x74>
    800053fc:	00001517          	auipc	a0,0x1
    80005400:	00c50513          	addi	a0,a0,12 # 80006408 <digits+0x78>
    80005404:	fffff097          	auipc	ra,0xfffff
    80005408:	a68080e7          	jalr	-1432(ra) # 80003e6c <panic>
	...
