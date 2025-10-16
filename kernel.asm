
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	63813103          	ld	sp,1592(sp) # 80007638 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5f1030ef          	jal	ra,80003e0c <start>

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
    80001088:	6222be23          	sd	sp,1596(t0) # 800076c0 <framePointer>

    call _ZN5Riscv11trapHandlerEv
    8000108c:	4c5000ef          	jal	ra,80001d50 <_ZN5Riscv11trapHandlerEv>

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

0000000080001120 <_ZN7KThread13contextSwitchEPNS_7ContextES1_>:
.align 4

_ZN7KThread13contextSwitchEPNS_7ContextES1_:
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

0000000080001134 <_ZN7KThread11initContextEPNS_7ContextEPFvvEPv>:

_ZN7KThread11initContextEPNS_7ContextEPFvvEPv:
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

000000008000121c <_Z13thread_createPP7KThreadPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg) {
    8000121c:	fd010113          	addi	sp,sp,-48
    80001220:	02113423          	sd	ra,40(sp)
    80001224:	02813023          	sd	s0,32(sp)
    80001228:	00913c23          	sd	s1,24(sp)
    8000122c:	01213823          	sd	s2,16(sp)
    80001230:	01313423          	sd	s3,8(sp)
    80001234:	03010413          	addi	s0,sp,48
    if (!handle || !start_routine) return -1;
    80001238:	06050c63          	beqz	a0,800012b0 <_Z13thread_createPP7KThreadPFvPvES2_+0x94>
    8000123c:	00050493          	mv	s1,a0
    80001240:	00058913          	mv	s2,a1
    80001244:	00060993          	mv	s3,a2
    80001248:	06058863          	beqz	a1,800012b8 <_Z13thread_createPP7KThreadPFvPvES2_+0x9c>

    size_t stackBytes = DEFAULT_STACK_SIZE;
    void* stack = mem_alloc(stackBytes);
    8000124c:	00001537          	lui	a0,0x1
    80001250:	00000097          	auipc	ra,0x0
    80001254:	f14080e7          	jalr	-236(ra) # 80001164 <_Z9mem_allocm>
    if (!stack) return -1;
    80001258:	06050463          	beqz	a0,800012c0 <_Z13thread_createPP7KThreadPFvPvES2_+0xa4>

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
    80001280:	02074263          	bltz	a4,800012a4 <_Z13thread_createPP7KThreadPFvPvES2_+0x88>
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
    800012ac:	fd9ff06f          	j	80001284 <_Z13thread_createPP7KThreadPFvPvES2_+0x68>
    if (!handle || !start_routine) return -1;
    800012b0:	fff00493          	li	s1,-1
    800012b4:	fd1ff06f          	j	80001284 <_Z13thread_createPP7KThreadPFvPvES2_+0x68>
    800012b8:	fff00493          	li	s1,-1
    800012bc:	fc9ff06f          	j	80001284 <_Z13thread_createPP7KThreadPFvPvES2_+0x68>
    if (!stack) return -1;
    800012c0:	fff00493          	li	s1,-1
    800012c4:	fc1ff06f          	j	80001284 <_Z13thread_createPP7KThreadPFvPvES2_+0x68>

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

00000000800013cc <_ZN7KThreadC1EPFvPvES0_S0_m>:
KThread::KThread(Body b, void* a, size_t stackSizeBytes)
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), schedulerNext(nullptr), semaphoreNext(nullptr) {
    allocateStack(stackSizeBytes);
}

KThread::KThread(Body b, void* a, void* externalStackBase, size_t externalStackSize)
    800013cc:	ff010113          	addi	sp,sp,-16
    800013d0:	00813423          	sd	s0,8(sp)
    800013d4:	01010413          	addi	s0,sp,16
    : id(staticId++), stack(nullptr), stackSize(0), body(b), args(a), state(NEW), schedulerNext(nullptr), semaphoreNext(nullptr) {
    800013d8:	00006817          	auipc	a6,0x6
    800013dc:	2c880813          	addi	a6,a6,712 # 800076a0 <_ZN7KThread8staticIdE>
    800013e0:	00082783          	lw	a5,0(a6)
    800013e4:	0017889b          	addiw	a7,a5,1
    800013e8:	01182023          	sw	a7,0(a6)
    800013ec:	00f52023          	sw	a5,0(a0) # 1000 <_entry-0x7ffff000>
    800013f0:	02b53423          	sd	a1,40(a0)
    800013f4:	02c53823          	sd	a2,48(a0)
    800013f8:	02052c23          	sw	zero,56(a0)
    800013fc:	04053023          	sd	zero,64(a0)
    80001400:	04053423          	sd	zero,72(a0)
    stack = externalStackBase;
    80001404:	00d53423          	sd	a3,8(a0)
    stackSize = externalStackSize;
    80001408:	00e53823          	sd	a4,16(a0)
}
    8000140c:	00813403          	ld	s0,8(sp)
    80001410:	01010113          	addi	sp,sp,16
    80001414:	00008067          	ret

0000000080001418 <_ZN7KThreadD1Ev>:

KThread::~KThread() {
    if (stack) {
    80001418:	00853503          	ld	a0,8(a0)
    8000141c:	02050663          	beqz	a0,80001448 <_ZN7KThreadD1Ev+0x30>
KThread::~KThread() {
    80001420:	ff010113          	addi	sp,sp,-16
    80001424:	00113423          	sd	ra,8(sp)
    80001428:	00813023          	sd	s0,0(sp)
    8000142c:	01010413          	addi	s0,sp,16
        MemoryAllocator::mem_free(stack);
    80001430:	00001097          	auipc	ra,0x1
    80001434:	d0c080e7          	jalr	-756(ra) # 8000213c <_ZN15MemoryAllocator8mem_freeEPv>
        stack = nullptr;
    }
}
    80001438:	00813083          	ld	ra,8(sp)
    8000143c:	00013403          	ld	s0,0(sp)
    80001440:	01010113          	addi	sp,sp,16
    80001444:	00008067          	ret
    80001448:	00008067          	ret

000000008000144c <_ZN7KThread12createThreadEPFvPvES0_S0_m>:

KThread* KThread::createThread(Body b, void* a, size_t stackSizeBytes) {
    return new KThread(b, a, stackSizeBytes);
}

KThread* KThread::createThread(Body b, void* a, void* externalStackBase, size_t externalStackSize) {
    8000144c:	fc010113          	addi	sp,sp,-64
    80001450:	02113c23          	sd	ra,56(sp)
    80001454:	02813823          	sd	s0,48(sp)
    80001458:	02913423          	sd	s1,40(sp)
    8000145c:	03213023          	sd	s2,32(sp)
    80001460:	01313c23          	sd	s3,24(sp)
    80001464:	01413823          	sd	s4,16(sp)
    80001468:	01513423          	sd	s5,8(sp)
    8000146c:	04010413          	addi	s0,sp,64
    80001470:	00050913          	mv	s2,a0
    80001474:	00058993          	mv	s3,a1
    80001478:	00060a13          	mv	s4,a2
    8000147c:	00068a93          	mv	s5,a3

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    80001480:	00200513          	li	a0,2
    80001484:	00001097          	auipc	ra,0x1
    80001488:	bb8080e7          	jalr	-1096(ra) # 8000203c <_ZN15MemoryAllocator9mem_allocEm>
    8000148c:	00050493          	mv	s1,a0
    return new KThread(b, a, externalStackBase, externalStackSize);
    80001490:	000a8713          	mv	a4,s5
    80001494:	000a0693          	mv	a3,s4
    80001498:	00098613          	mv	a2,s3
    8000149c:	00090593          	mv	a1,s2
    800014a0:	00000097          	auipc	ra,0x0
    800014a4:	f2c080e7          	jalr	-212(ra) # 800013cc <_ZN7KThreadC1EPFvPvES0_S0_m>
}
    800014a8:	00048513          	mv	a0,s1
    800014ac:	03813083          	ld	ra,56(sp)
    800014b0:	03013403          	ld	s0,48(sp)
    800014b4:	02813483          	ld	s1,40(sp)
    800014b8:	02013903          	ld	s2,32(sp)
    800014bc:	01813983          	ld	s3,24(sp)
    800014c0:	01013a03          	ld	s4,16(sp)
    800014c4:	00813a83          	ld	s5,8(sp)
    800014c8:	04010113          	addi	sp,sp,64
    800014cc:	00008067          	ret

00000000800014d0 <_ZN7KThread13allocateStackEm>:

void KThread::allocateStack(size_t bytes) {
    800014d0:	fe010113          	addi	sp,sp,-32
    800014d4:	00113c23          	sd	ra,24(sp)
    800014d8:	00813823          	sd	s0,16(sp)
    800014dc:	00913423          	sd	s1,8(sp)
    800014e0:	01213023          	sd	s2,0(sp)
    800014e4:	02010413          	addi	s0,sp,32
    800014e8:	00050913          	mv	s2,a0
    size_t blocks = bytes / MEM_BLOCK_SIZE;
    800014ec:	0065d493          	srli	s1,a1,0x6
    if (bytes % MEM_BLOCK_SIZE != 0) blocks++;
    800014f0:	03f5f593          	andi	a1,a1,63
    800014f4:	00058463          	beqz	a1,800014fc <_ZN7KThread13allocateStackEm+0x2c>
    800014f8:	00148493          	addi	s1,s1,1

    stack = MemoryAllocator::mem_alloc(blocks);
    800014fc:	00048513          	mv	a0,s1
    80001500:	00001097          	auipc	ra,0x1
    80001504:	b3c080e7          	jalr	-1220(ra) # 8000203c <_ZN15MemoryAllocator9mem_allocEm>
    80001508:	00a93423          	sd	a0,8(s2)
    stackSize = blocks * MEM_BLOCK_SIZE;
    8000150c:	00649493          	slli	s1,s1,0x6
    80001510:	00993823          	sd	s1,16(s2)
}
    80001514:	01813083          	ld	ra,24(sp)
    80001518:	01013403          	ld	s0,16(sp)
    8000151c:	00813483          	ld	s1,8(sp)
    80001520:	00013903          	ld	s2,0(sp)
    80001524:	02010113          	addi	sp,sp,32
    80001528:	00008067          	ret

000000008000152c <_ZN7KThreadC1EPFvPvES0_m>:
KThread::KThread(Body b, void* a, size_t stackSizeBytes)
    8000152c:	ff010113          	addi	sp,sp,-16
    80001530:	00113423          	sd	ra,8(sp)
    80001534:	00813023          	sd	s0,0(sp)
    80001538:	01010413          	addi	s0,sp,16
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), schedulerNext(nullptr), semaphoreNext(nullptr) {
    8000153c:	00006817          	auipc	a6,0x6
    80001540:	16480813          	addi	a6,a6,356 # 800076a0 <_ZN7KThread8staticIdE>
    80001544:	00082703          	lw	a4,0(a6)
    80001548:	0017089b          	addiw	a7,a4,1
    8000154c:	01182023          	sw	a7,0(a6)
    80001550:	00e52023          	sw	a4,0(a0)
    80001554:	00053423          	sd	zero,8(a0)
    80001558:	00d53823          	sd	a3,16(a0)
    8000155c:	02b53423          	sd	a1,40(a0)
    80001560:	02c53823          	sd	a2,48(a0)
    80001564:	02052c23          	sw	zero,56(a0)
    80001568:	04053023          	sd	zero,64(a0)
    8000156c:	04053423          	sd	zero,72(a0)
    allocateStack(stackSizeBytes);
    80001570:	00068593          	mv	a1,a3
    80001574:	00000097          	auipc	ra,0x0
    80001578:	f5c080e7          	jalr	-164(ra) # 800014d0 <_ZN7KThread13allocateStackEm>
}
    8000157c:	00813083          	ld	ra,8(sp)
    80001580:	00013403          	ld	s0,0(sp)
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret

000000008000158c <_ZN7KThread12createThreadEPFvPvES0_m>:
KThread* KThread::createThread(Body b, void* a, size_t stackSizeBytes) {
    8000158c:	fd010113          	addi	sp,sp,-48
    80001590:	02113423          	sd	ra,40(sp)
    80001594:	02813023          	sd	s0,32(sp)
    80001598:	00913c23          	sd	s1,24(sp)
    8000159c:	01213823          	sd	s2,16(sp)
    800015a0:	01313423          	sd	s3,8(sp)
    800015a4:	01413023          	sd	s4,0(sp)
    800015a8:	03010413          	addi	s0,sp,48
    800015ac:	00050913          	mv	s2,a0
    800015b0:	00058993          	mv	s3,a1
    800015b4:	00060a13          	mv	s4,a2
    800015b8:	00200513          	li	a0,2
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	a80080e7          	jalr	-1408(ra) # 8000203c <_ZN15MemoryAllocator9mem_allocEm>
    800015c4:	00050493          	mv	s1,a0
    return new KThread(b, a, stackSizeBytes);
    800015c8:	000a0693          	mv	a3,s4
    800015cc:	00098613          	mv	a2,s3
    800015d0:	00090593          	mv	a1,s2
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	f58080e7          	jalr	-168(ra) # 8000152c <_ZN7KThreadC1EPFvPvES0_m>
    800015dc:	0200006f          	j	800015fc <_ZN7KThread12createThreadEPFvPvES0_m+0x70>
    800015e0:	00050913          	mv	s2,a0
    }

    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    800015e4:	00048513          	mv	a0,s1
    800015e8:	00001097          	auipc	ra,0x1
    800015ec:	b54080e7          	jalr	-1196(ra) # 8000213c <_ZN15MemoryAllocator8mem_freeEPv>
    800015f0:	00090513          	mv	a0,s2
    800015f4:	00007097          	auipc	ra,0x7
    800015f8:	1c4080e7          	jalr	452(ra) # 800087b8 <_Unwind_Resume>
}
    800015fc:	00048513          	mv	a0,s1
    80001600:	02813083          	ld	ra,40(sp)
    80001604:	02013403          	ld	s0,32(sp)
    80001608:	01813483          	ld	s1,24(sp)
    8000160c:	01013903          	ld	s2,16(sp)
    80001610:	00813983          	ld	s3,8(sp)
    80001614:	00013a03          	ld	s4,0(sp)
    80001618:	03010113          	addi	sp,sp,48
    8000161c:	00008067          	ret

0000000080001620 <_ZN7KThread5startEv>:

void KThread::start() {
    if (state != NEW) return;
    80001620:	03852783          	lw	a5,56(a0)
    80001624:	00078463          	beqz	a5,8000162c <_ZN7KThread5startEv+0xc>
    80001628:	00008067          	ret
void KThread::start() {
    8000162c:	fe010113          	addi	sp,sp,-32
    80001630:	00113c23          	sd	ra,24(sp)
    80001634:	00813823          	sd	s0,16(sp)
    80001638:	00913423          	sd	s1,8(sp)
    8000163c:	02010413          	addi	s0,sp,32
    80001640:	00050493          	mv	s1,a0

    void* stackTop = (char*)stack + stackSize;
    80001644:	00853603          	ld	a2,8(a0)
    80001648:	01053783          	ld	a5,16(a0)
    initContext(&context, wrapper, stackTop);
    8000164c:	00f60633          	add	a2,a2,a5
    80001650:	00000597          	auipc	a1,0x0
    80001654:	12c58593          	addi	a1,a1,300 # 8000177c <_ZN7KThread7wrapperEv>
    80001658:	01850513          	addi	a0,a0,24
    8000165c:	00000097          	auipc	ra,0x0
    80001660:	ad8080e7          	jalr	-1320(ra) # 80001134 <_ZN7KThread11initContextEPNS_7ContextEPFvvEPv>
    state = READY;
    80001664:	00100793          	li	a5,1
    80001668:	02f4ac23          	sw	a5,56(s1)
    Scheduler::put(this);
    8000166c:	00048513          	mv	a0,s1
    80001670:	00000097          	auipc	ra,0x0
    80001674:	35c080e7          	jalr	860(ra) # 800019cc <_ZN9Scheduler3putEP7KThread>
}
    80001678:	01813083          	ld	ra,24(sp)
    8000167c:	01013403          	ld	s0,16(sp)
    80001680:	00813483          	ld	s1,8(sp)
    80001684:	02010113          	addi	sp,sp,32
    80001688:	00008067          	ret

000000008000168c <_ZN7KThread4exitEv>:

void KThread::exit() {
    8000168c:	ff010113          	addi	sp,sp,-16
    80001690:	00813423          	sd	s0,8(sp)
    80001694:	01010413          	addi	s0,sp,16
    state = FINISHED;
    80001698:	00400793          	li	a5,4
    8000169c:	02f52c23          	sw	a5,56(a0)
}
    800016a0:	00813403          	ld	s0,8(sp)
    800016a4:	01010113          	addi	sp,sp,16
    800016a8:	00008067          	ret

00000000800016ac <_ZN7KThread8dispatchEv>:
    running->body(running->args);
    running->exit();
    yield();
}

void KThread::dispatch() {
    800016ac:	fe010113          	addi	sp,sp,-32
    800016b0:	00113c23          	sd	ra,24(sp)
    800016b4:	00813823          	sd	s0,16(sp)
    800016b8:	00913423          	sd	s1,8(sp)
    800016bc:	02010413          	addi	s0,sp,32
    KThread* old = running;
    800016c0:	00006497          	auipc	s1,0x6
    800016c4:	fe84b483          	ld	s1,-24(s1) # 800076a8 <_ZN7KThread7runningE>

    if (old && old->state != FINISHED) {
    800016c8:	00048863          	beqz	s1,800016d8 <_ZN7KThread8dispatchEv+0x2c>
    800016cc:	0384a703          	lw	a4,56(s1)
    800016d0:	00400793          	li	a5,4
    800016d4:	04f71e63          	bne	a4,a5,80001730 <_ZN7KThread8dispatchEv+0x84>
        old->state = READY;
        Scheduler::put(old);
    }

    running = Scheduler::get();
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	2b0080e7          	jalr	688(ra) # 80001988 <_ZN9Scheduler3getEv>
    800016e0:	00006797          	auipc	a5,0x6
    800016e4:	fca7b423          	sd	a0,-56(a5) # 800076a8 <_ZN7KThread7runningE>
    if (!running) return;
    800016e8:	02050a63          	beqz	a0,8000171c <_ZN7KThread8dispatchEv+0x70>

    running->state = RUNNING;
    800016ec:	00200793          	li	a5,2
    800016f0:	02f52c23          	sw	a5,56(a0)

    if (old && old->state == FINISHED) {
    800016f4:	00048863          	beqz	s1,80001704 <_ZN7KThread8dispatchEv+0x58>
    800016f8:	0384a703          	lw	a4,56(s1)
    800016fc:	00400793          	li	a5,4
    80001700:	04f70463          	beq	a4,a5,80001748 <_ZN7KThread8dispatchEv+0x9c>
        MemoryAllocator::mem_free(old->stack);
        old->stack = nullptr;
    }

    contextSwitch(&old->context, &running->context);
    80001704:	00006597          	auipc	a1,0x6
    80001708:	fa45b583          	ld	a1,-92(a1) # 800076a8 <_ZN7KThread7runningE>
    8000170c:	01858593          	addi	a1,a1,24
    80001710:	01848513          	addi	a0,s1,24
    80001714:	00000097          	auipc	ra,0x0
    80001718:	a0c080e7          	jalr	-1524(ra) # 80001120 <_ZN7KThread13contextSwitchEPNS_7ContextES1_>
}
    8000171c:	01813083          	ld	ra,24(sp)
    80001720:	01013403          	ld	s0,16(sp)
    80001724:	00813483          	ld	s1,8(sp)
    80001728:	02010113          	addi	sp,sp,32
    8000172c:	00008067          	ret
        old->state = READY;
    80001730:	00100793          	li	a5,1
    80001734:	02f4ac23          	sw	a5,56(s1)
        Scheduler::put(old);
    80001738:	00048513          	mv	a0,s1
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	290080e7          	jalr	656(ra) # 800019cc <_ZN9Scheduler3putEP7KThread>
    80001744:	f95ff06f          	j	800016d8 <_ZN7KThread8dispatchEv+0x2c>
        MemoryAllocator::mem_free(old->stack);
    80001748:	0084b503          	ld	a0,8(s1)
    8000174c:	00001097          	auipc	ra,0x1
    80001750:	9f0080e7          	jalr	-1552(ra) # 8000213c <_ZN15MemoryAllocator8mem_freeEPv>
        old->stack = nullptr;
    80001754:	0004b423          	sd	zero,8(s1)
    80001758:	fadff06f          	j	80001704 <_ZN7KThread8dispatchEv+0x58>

000000008000175c <_ZN7KThread5yieldEv>:

void KThread::yield() {
    8000175c:	ff010113          	addi	sp,sp,-16
    80001760:	00813423          	sd	s0,8(sp)
    80001764:	01010413          	addi	s0,sp,16
    asm volatile ("li a0, 0x13");
    80001768:	01300513          	li	a0,19
    asm volatile ("ecall");
    8000176c:	00000073          	ecall
    80001770:	00813403          	ld	s0,8(sp)
    80001774:	01010113          	addi	sp,sp,16
    80001778:	00008067          	ret

000000008000177c <_ZN7KThread7wrapperEv>:
void KThread::wrapper() {
    8000177c:	fe010113          	addi	sp,sp,-32
    80001780:	00113c23          	sd	ra,24(sp)
    80001784:	00813823          	sd	s0,16(sp)
    80001788:	00913423          	sd	s1,8(sp)
    8000178c:	02010413          	addi	s0,sp,32
    running->body(running->args);
    80001790:	00006497          	auipc	s1,0x6
    80001794:	f1048493          	addi	s1,s1,-240 # 800076a0 <_ZN7KThread8staticIdE>
    80001798:	0084b783          	ld	a5,8(s1)
    8000179c:	0287b703          	ld	a4,40(a5)
    800017a0:	0307b503          	ld	a0,48(a5)
    800017a4:	000700e7          	jalr	a4
    running->exit();
    800017a8:	0084b503          	ld	a0,8(s1)
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	ee0080e7          	jalr	-288(ra) # 8000168c <_ZN7KThread4exitEv>
    yield();
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	fa8080e7          	jalr	-88(ra) # 8000175c <_ZN7KThread5yieldEv>
}
    800017bc:	01813083          	ld	ra,24(sp)
    800017c0:	01013403          	ld	s0,16(sp)
    800017c4:	00813483          	ld	s1,8(sp)
    800017c8:	02010113          	addi	sp,sp,32
    800017cc:	00008067          	ret

00000000800017d0 <_ZN9Semaphore15createSemaphoreEm>:

#include "../h/Semaphore.hpp"
#include "../h/KThread.hpp"
#include "../h/Scheduler.hpp"

Semaphore *Semaphore::createSemaphore(uint64 init) {
    800017d0:	fe010113          	addi	sp,sp,-32
    800017d4:	00113c23          	sd	ra,24(sp)
    800017d8:	00813823          	sd	s0,16(sp)
    800017dc:	00913423          	sd	s1,8(sp)
    800017e0:	02010413          	addi	s0,sp,32
    800017e4:	00050493          	mv	s1,a0

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    800017e8:	00100513          	li	a0,1
    800017ec:	00001097          	auipc	ra,0x1
    800017f0:	850080e7          	jalr	-1968(ra) # 8000203c <_ZN15MemoryAllocator9mem_allocEm>
    void operator delete[](void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    explicit Semaphore(uint64 init) : val(init) {}
    800017f4:	00952023          	sw	s1,0(a0)
    800017f8:	00053423          	sd	zero,8(a0)
    800017fc:	00053823          	sd	zero,16(a0)
    return new Semaphore(init);
}
    80001800:	01813083          	ld	ra,24(sp)
    80001804:	01013403          	ld	s0,16(sp)
    80001808:	00813483          	ld	s1,8(sp)
    8000180c:	02010113          	addi	sp,sp,32
    80001810:	00008067          	ret

0000000080001814 <_ZN9Semaphore3getEv>:

KThread* Semaphore::get() {
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00813423          	sd	s0,8(sp)
    8000181c:	01010413          	addi	s0,sp,16
    80001820:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80001824:	00853503          	ld	a0,8(a0)
    80001828:	00050a63          	beqz	a0,8000183c <_ZN9Semaphore3getEv+0x28>

    KThread* thread = head;
    head = head->semaphoreNext;
    8000182c:	04853703          	ld	a4,72(a0)
    80001830:	00e7b423          	sd	a4,8(a5)

    if (!head) tail = nullptr;
    80001834:	00070a63          	beqz	a4,80001848 <_ZN9Semaphore3getEv+0x34>
    thread->semaphoreNext = nullptr;
    80001838:	04053423          	sd	zero,72(a0)

    return thread;
}
    8000183c:	00813403          	ld	s0,8(sp)
    80001840:	01010113          	addi	sp,sp,16
    80001844:	00008067          	ret
    if (!head) tail = nullptr;
    80001848:	0007b823          	sd	zero,16(a5)
    8000184c:	fedff06f          	j	80001838 <_ZN9Semaphore3getEv+0x24>

0000000080001850 <_ZN9Semaphore3putEP7KThread>:


void Semaphore::put(KThread *thread) {
    80001850:	ff010113          	addi	sp,sp,-16
    80001854:	00813423          	sd	s0,8(sp)
    80001858:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    8000185c:	00853783          	ld	a5,8(a0)
    80001860:	00078e63          	beqz	a5,8000187c <_ZN9Semaphore3putEP7KThread+0x2c>
    else tail->semaphoreNext = thread;
    80001864:	01053783          	ld	a5,16(a0)
    80001868:	04b7b423          	sd	a1,72(a5)
    tail = thread;
    8000186c:	00b53823          	sd	a1,16(a0)
}
    80001870:	00813403          	ld	s0,8(sp)
    80001874:	01010113          	addi	sp,sp,16
    80001878:	00008067          	ret
    if (!head) head = thread;
    8000187c:	00b53423          	sd	a1,8(a0)
    80001880:	fedff06f          	j	8000186c <_ZN9Semaphore3putEP7KThread+0x1c>

0000000080001884 <_ZN9Semaphore4waitEv>:

void Semaphore::wait() {
    val--;
    80001884:	00052783          	lw	a5,0(a0)
    80001888:	fff7879b          	addiw	a5,a5,-1
    8000188c:	00f52023          	sw	a5,0(a0)

    if (val < 0) {
    80001890:	02079713          	slli	a4,a5,0x20
    80001894:	00074463          	bltz	a4,8000189c <_ZN9Semaphore4waitEv+0x18>
    80001898:	00008067          	ret
void Semaphore::wait() {
    8000189c:	ff010113          	addi	sp,sp,-16
    800018a0:	00113423          	sd	ra,8(sp)
    800018a4:	00813023          	sd	s0,0(sp)
    800018a8:	01010413          	addi	s0,sp,16
        KThread::running->setState(BLOCKED);
    800018ac:	00006797          	auipc	a5,0x6
    800018b0:	da47b783          	ld	a5,-604(a5) # 80007650 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018b4:	0007b583          	ld	a1,0(a5)
    void setState(ThreadState s) { state = s; }
    800018b8:	00300793          	li	a5,3
    800018bc:	02f5ac23          	sw	a5,56(a1)
        put(KThread::running);
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	f90080e7          	jalr	-112(ra) # 80001850 <_ZN9Semaphore3putEP7KThread>
        KThread::dispatch();
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	de4080e7          	jalr	-540(ra) # 800016ac <_ZN7KThread8dispatchEv>
    }
}
    800018d0:	00813083          	ld	ra,8(sp)
    800018d4:	00013403          	ld	s0,0(sp)
    800018d8:	01010113          	addi	sp,sp,16
    800018dc:	00008067          	ret

00000000800018e0 <_ZN9Semaphore6signalEv>:

void Semaphore::signal() {
    val++;
    800018e0:	00052783          	lw	a5,0(a0)
    800018e4:	0017879b          	addiw	a5,a5,1
    800018e8:	0007871b          	sext.w	a4,a5
    800018ec:	00f52023          	sw	a5,0(a0)

    if (val <= 0) {
    800018f0:	00e05463          	blez	a4,800018f8 <_ZN9Semaphore6signalEv+0x18>
    800018f4:	00008067          	ret
void Semaphore::signal() {
    800018f8:	ff010113          	addi	sp,sp,-16
    800018fc:	00113423          	sd	ra,8(sp)
    80001900:	00813023          	sd	s0,0(sp)
    80001904:	01010413          	addi	s0,sp,16
        KThread* thread = get();
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	f0c080e7          	jalr	-244(ra) # 80001814 <_ZN9Semaphore3getEv>

        if (thread) {
    80001910:	00050a63          	beqz	a0,80001924 <_ZN9Semaphore6signalEv+0x44>
    80001914:	00100793          	li	a5,1
    80001918:	02f52c23          	sw	a5,56(a0)
            thread->setState(READY);
            Scheduler::put(thread);
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	0b0080e7          	jalr	176(ra) # 800019cc <_ZN9Scheduler3putEP7KThread>
        }
    }
}
    80001924:	00813083          	ld	ra,8(sp)
    80001928:	00013403          	ld	s0,0(sp)
    8000192c:	01010113          	addi	sp,sp,16
    80001930:	00008067          	ret

0000000080001934 <_ZN9Semaphore5closeEv>:

void Semaphore::close() {
    80001934:	fe010113          	addi	sp,sp,-32
    80001938:	00113c23          	sd	ra,24(sp)
    8000193c:	00813823          	sd	s0,16(sp)
    80001940:	00913423          	sd	s1,8(sp)
    80001944:	02010413          	addi	s0,sp,32
    80001948:	00050493          	mv	s1,a0
    while (head) {
    8000194c:	0084b783          	ld	a5,8(s1)
    80001950:	02078263          	beqz	a5,80001974 <_ZN9Semaphore5closeEv+0x40>
        KThread* thread = get();
    80001954:	00048513          	mv	a0,s1
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	ebc080e7          	jalr	-324(ra) # 80001814 <_ZN9Semaphore3getEv>
    80001960:	00100793          	li	a5,1
    80001964:	02f52c23          	sw	a5,56(a0)
        thread->setState(READY);
        Scheduler::put(thread);
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	064080e7          	jalr	100(ra) # 800019cc <_ZN9Scheduler3putEP7KThread>
    while (head) {
    80001970:	fddff06f          	j	8000194c <_ZN9Semaphore5closeEv+0x18>
    }
    80001974:	01813083          	ld	ra,24(sp)
    80001978:	01013403          	ld	s0,16(sp)
    8000197c:	00813483          	ld	s1,8(sp)
    80001980:	02010113          	addi	sp,sp,32
    80001984:	00008067          	ret

0000000080001988 <_ZN9Scheduler3getEv>:
#include "../h/KThread.hpp"

KThread* Scheduler::head = nullptr;
KThread* Scheduler::tail = nullptr;

KThread* Scheduler::get() {
    80001988:	ff010113          	addi	sp,sp,-16
    8000198c:	00813423          	sd	s0,8(sp)
    80001990:	01010413          	addi	s0,sp,16
    if (!head) return nullptr;
    80001994:	00006517          	auipc	a0,0x6
    80001998:	d1c53503          	ld	a0,-740(a0) # 800076b0 <_ZN9Scheduler4headE>
    8000199c:	00050c63          	beqz	a0,800019b4 <_ZN9Scheduler3getEv+0x2c>

    KThread* thread = head;
    head = head->schedulerNext;
    800019a0:	04053783          	ld	a5,64(a0)
    800019a4:	00006717          	auipc	a4,0x6
    800019a8:	d0f73623          	sd	a5,-756(a4) # 800076b0 <_ZN9Scheduler4headE>

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
    800019c0:	00006797          	auipc	a5,0x6
    800019c4:	ce07bc23          	sd	zero,-776(a5) # 800076b8 <_ZN9Scheduler4tailE>
    800019c8:	fe9ff06f          	j	800019b0 <_ZN9Scheduler3getEv+0x28>

00000000800019cc <_ZN9Scheduler3putEP7KThread>:

void Scheduler::put(KThread* thread) {
    800019cc:	ff010113          	addi	sp,sp,-16
    800019d0:	00813423          	sd	s0,8(sp)
    800019d4:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    800019d8:	00006797          	auipc	a5,0x6
    800019dc:	cd87b783          	ld	a5,-808(a5) # 800076b0 <_ZN9Scheduler4headE>
    800019e0:	02078263          	beqz	a5,80001a04 <_ZN9Scheduler3putEP7KThread+0x38>
    else tail->schedulerNext = thread;
    800019e4:	00006797          	auipc	a5,0x6
    800019e8:	cd47b783          	ld	a5,-812(a5) # 800076b8 <_ZN9Scheduler4tailE>
    800019ec:	04a7b023          	sd	a0,64(a5)
    tail = thread;
    800019f0:	00006797          	auipc	a5,0x6
    800019f4:	cca7b423          	sd	a0,-824(a5) # 800076b8 <_ZN9Scheduler4tailE>
}
    800019f8:	00813403          	ld	s0,8(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret
    if (!head) head = thread;
    80001a04:	00006797          	auipc	a5,0x6
    80001a08:	caa7b623          	sd	a0,-852(a5) # 800076b0 <_ZN9Scheduler4headE>
    80001a0c:	fe5ff06f          	j	800019f0 <_ZN9Scheduler3putEP7KThread+0x24>

0000000080001a10 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80001a10:	ff010113          	addi	sp,sp,-16
    80001a14:	00813423          	sd	s0,8(sp)
    80001a18:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80001a1c:	00006517          	auipc	a0,0x6
    80001a20:	c9453503          	ld	a0,-876(a0) # 800076b0 <_ZN9Scheduler4headE>
    80001a24:	00153513          	seqz	a0,a0
    80001a28:	00813403          	ld	s0,8(sp)
    80001a2c:	01010113          	addi	sp,sp,16
    80001a30:	00008067          	ret

0000000080001a34 <_Z11userWrapperPv>:
#include "../h/KThread.hpp"

uint64 framePointer;

void userMain();
void userWrapper(void* arg) {
    80001a34:	ff010113          	addi	sp,sp,-16
    80001a38:	00113423          	sd	ra,8(sp)
    80001a3c:	00813023          	sd	s0,0(sp)
    80001a40:	01010413          	addi	s0,sp,16
    userMain();
    80001a44:	00002097          	auipc	ra,0x2
    80001a48:	a78080e7          	jalr	-1416(ra) # 800034bc <_Z8userMainv>
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
    80001a70:	580080e7          	jalr	1408(ra) # 80001fec <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	2b8080e7          	jalr	696(ra) # 80001d2c <_ZN5Riscv16setupTrapHandlerEv>

    thread_t mainThread, userBody;

    mainThread = KThread::createThread(nullptr, nullptr);
    80001a7c:	00001637          	lui	a2,0x1
    80001a80:	00000593          	li	a1,0
    80001a84:	00000513          	li	a0,0
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	b04080e7          	jalr	-1276(ra) # 8000158c <_ZN7KThread12createThreadEPFvPvES0_m>
    KThread::running = mainThread;
    80001a90:	00006797          	auipc	a5,0x6
    80001a94:	bc07b783          	ld	a5,-1088(a5) # 80007650 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a98:	00a7b023          	sd	a0,0(a5)
    80001a9c:	00200793          	li	a5,2
    80001aa0:	02f52c23          	sw	a5,56(a0)
    mainThread->setState(RUNNING);

    thread_create(&userBody, &userWrapper, nullptr);
    80001aa4:	00000613          	li	a2,0
    80001aa8:	00000597          	auipc	a1,0x0
    80001aac:	f8c58593          	addi	a1,a1,-116 # 80001a34 <_Z11userWrapperPv>
    80001ab0:	fe840513          	addi	a0,s0,-24
    80001ab4:	fffff097          	auipc	ra,0xfffff
    80001ab8:	768080e7          	jalr	1896(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>

    while (!Scheduler::isEmpty()) {
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	f54080e7          	jalr	-172(ra) # 80001a10 <_ZN9Scheduler7isEmptyEv>
    80001ac4:	00051863          	bnez	a0,80001ad4 <main+0x78>
        KThread::yield();
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	c94080e7          	jalr	-876(ra) # 8000175c <_ZN7KThread5yieldEv>
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

0000000080001ae4 <_ZN6ThreadD1Ev>:
    : myHandle(nullptr), body(body), arg(arg) {}

Thread::Thread()
    : myHandle(nullptr), body(nullptr), arg(nullptr) {}

Thread::~Thread() {
    80001ae4:	00006797          	auipc	a5,0x6
    80001ae8:	a7478793          	addi	a5,a5,-1420 # 80007558 <_ZTV6Thread+0x10>
    80001aec:	00f53023          	sd	a5,0(a0)
    if (myHandle) {
    80001af0:	00853503          	ld	a0,8(a0)
    80001af4:	02050663          	beqz	a0,80001b20 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread() {
    80001af8:	ff010113          	addi	sp,sp,-16
    80001afc:	00113423          	sd	ra,8(sp)
    80001b00:	00813023          	sd	s0,0(sp)
    80001b04:	01010413          	addi	s0,sp,16
        mem_free(myHandle);
    80001b08:	fffff097          	auipc	ra,0xfffff
    80001b0c:	6a0080e7          	jalr	1696(ra) # 800011a8 <_Z8mem_freePv>
        myHandle = nullptr;
    }
}
    80001b10:	00813083          	ld	ra,8(sp)
    80001b14:	00013403          	ld	s0,0(sp)
    80001b18:	01010113          	addi	sp,sp,16
    80001b1c:	00008067          	ret
    80001b20:	00008067          	ret

0000000080001b24 <_ZN6Thread7wrapperEPv>:
void Thread::wrapper(void* arg) {
    80001b24:	ff010113          	addi	sp,sp,-16
    80001b28:	00113423          	sd	ra,8(sp)
    80001b2c:	00813023          	sd	s0,0(sp)
    80001b30:	01010413          	addi	s0,sp,16
    thread->run();
    80001b34:	00053783          	ld	a5,0(a0)
    80001b38:	0107b783          	ld	a5,16(a5)
    80001b3c:	000780e7          	jalr	a5
    thread_exit();
    80001b40:	fffff097          	auipc	ra,0xfffff
    80001b44:	788080e7          	jalr	1928(ra) # 800012c8 <_Z11thread_exitv>
}
    80001b48:	00813083          	ld	ra,8(sp)
    80001b4c:	00013403          	ld	s0,0(sp)
    80001b50:	01010113          	addi	sp,sp,16
    80001b54:	00008067          	ret

0000000080001b58 <_Znwm>:
void* operator new(size_t size) {
    80001b58:	ff010113          	addi	sp,sp,-16
    80001b5c:	00113423          	sd	ra,8(sp)
    80001b60:	00813023          	sd	s0,0(sp)
    80001b64:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001b68:	fffff097          	auipc	ra,0xfffff
    80001b6c:	5fc080e7          	jalr	1532(ra) # 80001164 <_Z9mem_allocm>
}
    80001b70:	00813083          	ld	ra,8(sp)
    80001b74:	00013403          	ld	s0,0(sp)
    80001b78:	01010113          	addi	sp,sp,16
    80001b7c:	00008067          	ret

0000000080001b80 <_ZdlPv>:
void operator delete(void* ptr) {
    80001b80:	ff010113          	addi	sp,sp,-16
    80001b84:	00113423          	sd	ra,8(sp)
    80001b88:	00813023          	sd	s0,0(sp)
    80001b8c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001b90:	fffff097          	auipc	ra,0xfffff
    80001b94:	618080e7          	jalr	1560(ra) # 800011a8 <_Z8mem_freePv>
}
    80001b98:	00813083          	ld	ra,8(sp)
    80001b9c:	00013403          	ld	s0,0(sp)
    80001ba0:	01010113          	addi	sp,sp,16
    80001ba4:	00008067          	ret

0000000080001ba8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001ba8:	fe010113          	addi	sp,sp,-32
    80001bac:	00113c23          	sd	ra,24(sp)
    80001bb0:	00813823          	sd	s0,16(sp)
    80001bb4:	00913423          	sd	s1,8(sp)
    80001bb8:	02010413          	addi	s0,sp,32
    80001bbc:	00050493          	mv	s1,a0
}
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	f24080e7          	jalr	-220(ra) # 80001ae4 <_ZN6ThreadD1Ev>
    80001bc8:	00048513          	mv	a0,s1
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	fb4080e7          	jalr	-76(ra) # 80001b80 <_ZdlPv>
    80001bd4:	01813083          	ld	ra,24(sp)
    80001bd8:	01013403          	ld	s0,16(sp)
    80001bdc:	00813483          	ld	s1,8(sp)
    80001be0:	02010113          	addi	sp,sp,32
    80001be4:	00008067          	ret

0000000080001be8 <_Znam>:
void* operator new[](size_t size) {
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00113423          	sd	ra,8(sp)
    80001bf0:	00813023          	sd	s0,0(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001bf8:	fffff097          	auipc	ra,0xfffff
    80001bfc:	56c080e7          	jalr	1388(ra) # 80001164 <_Z9mem_allocm>
}
    80001c00:	00813083          	ld	ra,8(sp)
    80001c04:	00013403          	ld	s0,0(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret

0000000080001c10 <_ZdaPv>:
void operator delete[](void* ptr) {
    80001c10:	ff010113          	addi	sp,sp,-16
    80001c14:	00113423          	sd	ra,8(sp)
    80001c18:	00813023          	sd	s0,0(sp)
    80001c1c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001c20:	fffff097          	auipc	ra,0xfffff
    80001c24:	588080e7          	jalr	1416(ra) # 800011a8 <_Z8mem_freePv>
}
    80001c28:	00813083          	ld	ra,8(sp)
    80001c2c:	00013403          	ld	s0,0(sp)
    80001c30:	01010113          	addi	sp,sp,16
    80001c34:	00008067          	ret

0000000080001c38 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg)
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00813423          	sd	s0,8(sp)
    80001c40:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(body), arg(arg) {}
    80001c44:	00006797          	auipc	a5,0x6
    80001c48:	91478793          	addi	a5,a5,-1772 # 80007558 <_ZTV6Thread+0x10>
    80001c4c:	00f53023          	sd	a5,0(a0)
    80001c50:	00053423          	sd	zero,8(a0)
    80001c54:	00b53823          	sd	a1,16(a0)
    80001c58:	00c53c23          	sd	a2,24(a0)
    80001c5c:	00813403          	ld	s0,8(sp)
    80001c60:	01010113          	addi	sp,sp,16
    80001c64:	00008067          	ret

0000000080001c68 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00813423          	sd	s0,8(sp)
    80001c70:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80001c74:	00006797          	auipc	a5,0x6
    80001c78:	8e478793          	addi	a5,a5,-1820 # 80007558 <_ZTV6Thread+0x10>
    80001c7c:	00f53023          	sd	a5,0(a0)
    80001c80:	00053423          	sd	zero,8(a0)
    80001c84:	00053823          	sd	zero,16(a0)
    80001c88:	00053c23          	sd	zero,24(a0)
    80001c8c:	00813403          	ld	s0,8(sp)
    80001c90:	01010113          	addi	sp,sp,16
    80001c94:	00008067          	ret

0000000080001c98 <_ZN6Thread5startEv>:

int Thread::start() {
    80001c98:	ff010113          	addi	sp,sp,-16
    80001c9c:	00113423          	sd	ra,8(sp)
    80001ca0:	00813023          	sd	s0,0(sp)
    80001ca4:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    80001ca8:	01053583          	ld	a1,16(a0)
    80001cac:	02058263          	beqz	a1,80001cd0 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80001cb0:	01853603          	ld	a2,24(a0)
    80001cb4:	00850513          	addi	a0,a0,8
    80001cb8:	fffff097          	auipc	ra,0xfffff
    80001cbc:	564080e7          	jalr	1380(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    }

    return thread_create(&myHandle, wrapper, this);
}
    80001cc0:	00813083          	ld	ra,8(sp)
    80001cc4:	00013403          	ld	s0,0(sp)
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret
    return thread_create(&myHandle, wrapper, this);
    80001cd0:	00050613          	mv	a2,a0
    80001cd4:	00000597          	auipc	a1,0x0
    80001cd8:	e5058593          	addi	a1,a1,-432 # 80001b24 <_ZN6Thread7wrapperEPv>
    80001cdc:	00850513          	addi	a0,a0,8
    80001ce0:	fffff097          	auipc	ra,0xfffff
    80001ce4:	53c080e7          	jalr	1340(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    80001ce8:	fd9ff06f          	j	80001cc0 <_ZN6Thread5startEv+0x28>

0000000080001cec <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80001cec:	ff010113          	addi	sp,sp,-16
    80001cf0:	00113423          	sd	ra,8(sp)
    80001cf4:	00813023          	sd	s0,0(sp)
    80001cf8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001cfc:	fffff097          	auipc	ra,0xfffff
    80001d00:	5f4080e7          	jalr	1524(ra) # 800012f0 <_Z15thread_dispatchv>
    80001d04:	00813083          	ld	ra,8(sp)
    80001d08:	00013403          	ld	s0,0(sp)
    80001d0c:	01010113          	addi	sp,sp,16
    80001d10:	00008067          	ret

0000000080001d14 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001d14:	ff010113          	addi	sp,sp,-16
    80001d18:	00813423          	sd	s0,8(sp)
    80001d1c:	01010413          	addi	s0,sp,16
    80001d20:	00813403          	ld	s0,8(sp)
    80001d24:	01010113          	addi	sp,sp,16
    80001d28:	00008067          	ret

0000000080001d2c <_ZN5Riscv16setupTrapHandlerEv>:
constexpr uint64 SEM_OPEN = 0x21;
constexpr uint64 SEM_CLOSE = 0x22;
constexpr uint64 SEM_WAIT = 0x23;
constexpr uint64 SEM_SIGNAL = 0x24;

void Riscv::setupTrapHandler() {
    80001d2c:	ff010113          	addi	sp,sp,-16
    80001d30:	00813423          	sd	s0,8(sp)
    80001d34:	01010413          	addi	s0,sp,16
    unsigned long addr = (unsigned long)&trap_handler;
    80001d38:	00006797          	auipc	a5,0x6
    80001d3c:	9087b783          	ld	a5,-1784(a5) # 80007640 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(addr));
    80001d40:	10579073          	csrw	stvec,a5
}
    80001d44:	00813403          	ld	s0,8(sp)
    80001d48:	01010113          	addi	sp,sp,16
    80001d4c:	00008067          	ret

0000000080001d50 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001d50:	fe010113          	addi	sp,sp,-32
    80001d54:	00113c23          	sd	ra,24(sp)
    80001d58:	00813823          	sd	s0,16(sp)
    80001d5c:	00913423          	sd	s1,8(sp)
    80001d60:	01213023          	sd	s2,0(sp)
    80001d64:	02010413          	addi	s0,sp,32
    uint64 scause = 0, sepc = 0;
    asm volatile("csrr %0, scause" : "=r"(scause));
    80001d68:	14202773          	csrr	a4,scause
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    80001d6c:	141024f3          	csrr	s1,sepc

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    80001d70:	fff00793          	li	a5,-1
    80001d74:	0017d793          	srli	a5,a5,0x1
    80001d78:	00f777b3          	and	a5,a4,a5

    if (interrupt == 0 && (cause == 8 || cause == 9)) {
    80001d7c:	00074863          	bltz	a4,80001d8c <_ZN5Riscv11trapHandlerEv+0x3c>
    80001d80:	ff878793          	addi	a5,a5,-8
    80001d84:	00100713          	li	a4,1
    80001d88:	00f77e63          	bgeu	a4,a5,80001da4 <_ZN5Riscv11trapHandlerEv+0x54>
        }

        sepc += 4;
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    }
    80001d8c:	01813083          	ld	ra,24(sp)
    80001d90:	01013403          	ld	s0,16(sp)
    80001d94:	00813483          	ld	s1,8(sp)
    80001d98:	00013903          	ld	s2,0(sp)
    80001d9c:	02010113          	addi	sp,sp,32
    80001da0:	00008067          	ret
        asm volatile("mv %0, a0" : "=r"(code));
    80001da4:	00050793          	mv	a5,a0
        switch (code) {
    80001da8:	02400713          	li	a4,36
    80001dac:	04f76463          	bltu	a4,a5,80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>
    80001db0:	00279793          	slli	a5,a5,0x2
    80001db4:	00004717          	auipc	a4,0x4
    80001db8:	26c70713          	addi	a4,a4,620 # 80006020 <CONSOLE_STATUS+0x10>
    80001dbc:	00e787b3          	add	a5,a5,a4
    80001dc0:	0007a783          	lw	a5,0(a5)
    80001dc4:	00e787b3          	add	a5,a5,a4
    80001dc8:	00078067          	jr	a5
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001dcc:	00006917          	auipc	s2,0x6
    80001dd0:	88c93903          	ld	s2,-1908(s2) # 80007658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001dd4:	00093783          	ld	a5,0(s2)
    80001dd8:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(size));
    80001ddc:	00058513          	mv	a0,a1
                void* ptr = MemoryAllocator::mem_alloc(size);
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	25c080e7          	jalr	604(ra) # 8000203c <_ZN15MemoryAllocator9mem_allocEm>
                asm volatile("mv a0, %0" :: "r"(ptr));
    80001de8:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001dec:	00093783          	ld	a5,0(s2)
    80001df0:	04a7b823          	sd	a0,80(a5)
        sepc += 4;
    80001df4:	00448493          	addi	s1,s1,4
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    80001df8:	14149073          	csrw	sepc,s1
    80001dfc:	f91ff06f          	j	80001d8c <_ZN5Riscv11trapHandlerEv+0x3c>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001e00:	00006917          	auipc	s2,0x6
    80001e04:	85893903          	ld	s2,-1960(s2) # 80007658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e08:	00093783          	ld	a5,0(s2)
    80001e0c:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(addr));
    80001e10:	00058513          	mv	a0,a1
                int status = MemoryAllocator::mem_free(addr);
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	328080e7          	jalr	808(ra) # 8000213c <_ZN15MemoryAllocator8mem_freeEPv>
                asm volatile("mv a0, %0" :: "r"(status));
    80001e1c:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e20:	00093783          	ld	a5,0(s2)
    80001e24:	04a7b823          	sd	a0,80(a5)
                break;
    80001e28:	fcdff06f          	j	80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
    80001e2c:	00000097          	auipc	ra,0x0
    80001e30:	3b4080e7          	jalr	948(ra) # 800021e0 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                asm volatile("mv a0, %0" :: "r"(freeSpace));
    80001e34:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e38:	00006797          	auipc	a5,0x6
    80001e3c:	8207b783          	ld	a5,-2016(a5) # 80007658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e40:	0007b783          	ld	a5,0(a5)
    80001e44:	04a7b823          	sd	a0,80(a5)
                break;
    80001e48:	fadff06f          	j	80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
    80001e4c:	00000097          	auipc	ra,0x0
    80001e50:	3dc080e7          	jalr	988(ra) # 80002228 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                asm volatile("mv a0, %0" :: "r"(largest));
    80001e54:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e58:	00006797          	auipc	a5,0x6
    80001e5c:	8007b783          	ld	a5,-2048(a5) # 80007658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e60:	0007b783          	ld	a5,0(a5)
    80001e64:	04a7b823          	sd	a0,80(a5)
                break;
    80001e68:	f8dff06f          	j	80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001e6c:	00005797          	auipc	a5,0x5
    80001e70:	7ec7b783          	ld	a5,2028(a5) # 80007658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e74:	0007b783          	ld	a5,0(a5)
    80001e78:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001e7c:	00058913          	mv	s2,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001e80:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(start_routine));
    80001e84:	00060513          	mv	a0,a2
                asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
    80001e88:	0687b683          	ld	a3,104(a5)
                asm volatile("mv %0, a3" : "=r"(args));
    80001e8c:	00068593          	mv	a1,a3
                asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
    80001e90:	0707b703          	ld	a4,112(a5)
                asm volatile("mv %0, a4" : "=r"(stack));
    80001e94:	00070613          	mv	a2,a4
                *handle = KThread::createThread(start_routine, args, stack, stackSize);
    80001e98:	000016b7          	lui	a3,0x1
    80001e9c:	fffff097          	auipc	ra,0xfffff
    80001ea0:	5b0080e7          	jalr	1456(ra) # 8000144c <_ZN7KThread12createThreadEPFvPvES0_S0_m>
    80001ea4:	00a93023          	sd	a0,0(s2)
                if (*handle != nullptr) {
    80001ea8:	02050263          	beqz	a0,80001ecc <_ZN5Riscv11trapHandlerEv+0x17c>
                    (*handle)->start();
    80001eac:	fffff097          	auipc	ra,0xfffff
    80001eb0:	774080e7          	jalr	1908(ra) # 80001620 <_ZN7KThread5startEv>
                    asm volatile("li a0, 0");
    80001eb4:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001eb8:	00005797          	auipc	a5,0x5
    80001ebc:	7a07b783          	ld	a5,1952(a5) # 80007658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ec0:	0007b783          	ld	a5,0(a5)
    80001ec4:	04a7b823          	sd	a0,80(a5)
                break;
    80001ec8:	f2dff06f          	j	80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001ecc:	fff00513          	li	a0,-1
    80001ed0:	fe9ff06f          	j	80001eb8 <_ZN5Riscv11trapHandlerEv+0x168>
                if (KThread::running) {
    80001ed4:	00005797          	auipc	a5,0x5
    80001ed8:	77c7b783          	ld	a5,1916(a5) # 80007650 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001edc:	0007b503          	ld	a0,0(a5)
    80001ee0:	00050663          	beqz	a0,80001eec <_ZN5Riscv11trapHandlerEv+0x19c>
                    KThread::running->exit();
    80001ee4:	fffff097          	auipc	ra,0xfffff
    80001ee8:	7a8080e7          	jalr	1960(ra) # 8000168c <_ZN7KThread4exitEv>
                KThread::dispatch();
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	7c0080e7          	jalr	1984(ra) # 800016ac <_ZN7KThread8dispatchEv>
                asm volatile("li a0, 0");
    80001ef4:	00000513          	li	a0,0
                break;
    80001ef8:	efdff06f          	j	80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>
                KThread::dispatch();
    80001efc:	fffff097          	auipc	ra,0xfffff
    80001f00:	7b0080e7          	jalr	1968(ra) # 800016ac <_ZN7KThread8dispatchEv>
                break;
    80001f04:	ef1ff06f          	j	80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f08:	00005797          	auipc	a5,0x5
    80001f0c:	7507b783          	ld	a5,1872(a5) # 80007658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f10:	0007b783          	ld	a5,0(a5)
    80001f14:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001f18:	00058913          	mv	s2,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001f1c:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(init));
    80001f20:	00060513          	mv	a0,a2
                *handle = Semaphore::createSemaphore(init);
    80001f24:	02051513          	slli	a0,a0,0x20
    80001f28:	02055513          	srli	a0,a0,0x20
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	8a4080e7          	jalr	-1884(ra) # 800017d0 <_ZN9Semaphore15createSemaphoreEm>
    80001f34:	00a93023          	sd	a0,0(s2)
                if (*handle != nullptr) asm volatile("li a0, 0");
    80001f38:	00050e63          	beqz	a0,80001f54 <_ZN5Riscv11trapHandlerEv+0x204>
    80001f3c:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001f40:	00005797          	auipc	a5,0x5
    80001f44:	7187b783          	ld	a5,1816(a5) # 80007658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f48:	0007b783          	ld	a5,0(a5)
    80001f4c:	04a7b823          	sd	a0,80(a5)
                break;
    80001f50:	ea5ff06f          	j	80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001f54:	fff00513          	li	a0,-1
    80001f58:	fe9ff06f          	j	80001f40 <_ZN5Riscv11trapHandlerEv+0x1f0>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f5c:	00005797          	auipc	a5,0x5
    80001f60:	6fc7b783          	ld	a5,1788(a5) # 80007658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f64:	0007b783          	ld	a5,0(a5)
    80001f68:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001f6c:	00058513          	mv	a0,a1
                if (handle) {
    80001f70:	00050a63          	beqz	a0,80001f84 <_ZN5Riscv11trapHandlerEv+0x234>
                    handle->close();
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	9c0080e7          	jalr	-1600(ra) # 80001934 <_ZN9Semaphore5closeEv>
                    asm volatile("li a0, 0");
    80001f7c:	00000513          	li	a0,0
    80001f80:	e75ff06f          	j	80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001f84:	fff00513          	li	a0,-1
    80001f88:	e6dff06f          	j	80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f8c:	00005797          	auipc	a5,0x5
    80001f90:	6cc7b783          	ld	a5,1740(a5) # 80007658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f94:	0007b783          	ld	a5,0(a5)
    80001f98:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001f9c:	00058513          	mv	a0,a1
                if (handle) {
    80001fa0:	00050a63          	beqz	a0,80001fb4 <_ZN5Riscv11trapHandlerEv+0x264>
                    handle->wait();
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	8e0080e7          	jalr	-1824(ra) # 80001884 <_ZN9Semaphore4waitEv>
                    asm volatile("li a0, 0");
    80001fac:	00000513          	li	a0,0
    80001fb0:	e45ff06f          	j	80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001fb4:	fff00513          	li	a0,-1
    80001fb8:	e3dff06f          	j	80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001fbc:	00005797          	auipc	a5,0x5
    80001fc0:	69c7b783          	ld	a5,1692(a5) # 80007658 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fc4:	0007b783          	ld	a5,0(a5)
    80001fc8:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001fcc:	00058513          	mv	a0,a1
                if (handle) {
    80001fd0:	00050a63          	beqz	a0,80001fe4 <_ZN5Riscv11trapHandlerEv+0x294>
                    handle->signal();
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	90c080e7          	jalr	-1780(ra) # 800018e0 <_ZN9Semaphore6signalEv>
                    asm volatile("li a0, 0");
    80001fdc:	00000513          	li	a0,0
    80001fe0:	e15ff06f          	j	80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001fe4:	fff00513          	li	a0,-1
    80001fe8:	e0dff06f          	j	80001df4 <_ZN5Riscv11trapHandlerEv+0xa4>

0000000080001fec <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00813423          	sd	s0,8(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80001ff8:	00005697          	auipc	a3,0x5
    80001ffc:	6386b683          	ld	a3,1592(a3) # 80007630 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002000:	0006b783          	ld	a5,0(a3)
    80002004:	00005717          	auipc	a4,0x5
    80002008:	6c470713          	addi	a4,a4,1732 # 800076c8 <_ZN15MemoryAllocator12freeListHeadE>
    8000200c:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    80002010:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80002014:	00005797          	auipc	a5,0x5
    80002018:	6347b783          	ld	a5,1588(a5) # 80007648 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000201c:	0007b783          	ld	a5,0(a5)
    80002020:	0006b683          	ld	a3,0(a3)
    80002024:	00073703          	ld	a4,0(a4)
    80002028:	40d787b3          	sub	a5,a5,a3
    8000202c:	00f73423          	sd	a5,8(a4)
}
    80002030:	00813403          	ld	s0,8(sp)
    80002034:	01010113          	addi	sp,sp,16
    80002038:	00008067          	ret

000000008000203c <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00813423          	sd	s0,8(sp)
    80002044:	01010413          	addi	s0,sp,16
    80002048:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    8000204c:	00005517          	auipc	a0,0x5
    80002050:	67c53503          	ld	a0,1660(a0) # 800076c8 <_ZN15MemoryAllocator12freeListHeadE>
    80002054:	06050063          	beqz	a0,800020b4 <_ZN15MemoryAllocator9mem_allocEm+0x78>
    80002058:	08078a63          	beqz	a5,800020ec <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    8000205c:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    80002060:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    80002064:	00000613          	li	a2,0
    80002068:	00c0006f          	j	80002074 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    8000206c:	00050613          	mv	a2,a0
        curr = curr->next;
    80002070:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    80002074:	00050663          	beqz	a0,80002080 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    80002078:	00853783          	ld	a5,8(a0)
    8000207c:	fee7e8e3          	bltu	a5,a4,8000206c <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    80002080:	02050a63          	beqz	a0,800020b4 <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    80002084:	00853583          	ld	a1,8(a0)
    80002088:	02068793          	addi	a5,a3,32
    8000208c:	04f5e063          	bltu	a1,a5,800020cc <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    80002090:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    80002094:	40e585b3          	sub	a1,a1,a4
    80002098:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    8000209c:	00053683          	ld	a3,0(a0)
    800020a0:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    800020a4:	00060e63          	beqz	a2,800020c0 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    800020a8:	00f63023          	sd	a5,0(a2) # 1000 <_entry-0x7ffff000>
        else freeListHead = newBlock;

        curr->size = totalSize;
    800020ac:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
    800020b0:	01050513          	addi	a0,a0,16
}
    800020b4:	00813403          	ld	s0,8(sp)
    800020b8:	01010113          	addi	sp,sp,16
    800020bc:	00008067          	ret
        else freeListHead = newBlock;
    800020c0:	00005697          	auipc	a3,0x5
    800020c4:	60f6b423          	sd	a5,1544(a3) # 800076c8 <_ZN15MemoryAllocator12freeListHeadE>
    800020c8:	fe5ff06f          	j	800020ac <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    800020cc:	00060863          	beqz	a2,800020dc <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    800020d0:	00053783          	ld	a5,0(a0)
    800020d4:	00f63023          	sd	a5,0(a2)
    800020d8:	fd9ff06f          	j	800020b0 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    800020dc:	00053783          	ld	a5,0(a0)
    800020e0:	00005717          	auipc	a4,0x5
    800020e4:	5ef73423          	sd	a5,1512(a4) # 800076c8 <_ZN15MemoryAllocator12freeListHeadE>
    800020e8:	fc9ff06f          	j	800020b0 <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    800020ec:	00000513          	li	a0,0
    800020f0:	fc5ff06f          	j	800020b4 <_ZN15MemoryAllocator9mem_allocEm+0x78>

00000000800020f4 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    800020f4:	ff010113          	addi	sp,sp,-16
    800020f8:	00813423          	sd	s0,8(sp)
    800020fc:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80002100:	00050c63          	beqz	a0,80002118 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    80002104:	00053783          	ld	a5,0(a0)
    80002108:	00078863          	beqz	a5,80002118 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    8000210c:	00853703          	ld	a4,8(a0)
    80002110:	00e506b3          	add	a3,a0,a4
    80002114:	00d78863          	beq	a5,a3,80002124 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    80002118:	00813403          	ld	s0,8(sp)
    8000211c:	01010113          	addi	sp,sp,16
    80002120:	00008067          	ret
        curr->size += curr->next->size;
    80002124:	0087b683          	ld	a3,8(a5)
    80002128:	00d70733          	add	a4,a4,a3
    8000212c:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    80002130:	0007b783          	ld	a5,0(a5)
    80002134:	00f53023          	sd	a5,0(a0)
    80002138:	fe1ff06f          	j	80002118 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

000000008000213c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    8000213c:	08050e63          	beqz	a0,800021d8 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80002140:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    80002144:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    80002148:	00005797          	auipc	a5,0x5
    8000214c:	5807b783          	ld	a5,1408(a5) # 800076c8 <_ZN15MemoryAllocator12freeListHeadE>
    80002150:	02078863          	beqz	a5,80002180 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    80002154:	fe010113          	addi	sp,sp,-32
    80002158:	00113c23          	sd	ra,24(sp)
    8000215c:	00813823          	sd	s0,16(sp)
    80002160:	00913423          	sd	s1,8(sp)
    80002164:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    80002168:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    8000216c:	02078463          	beqz	a5,80002194 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80002170:	02a7f263          	bgeu	a5,a0,80002194 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    80002174:	00078493          	mv	s1,a5
        curr = curr->next;
    80002178:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    8000217c:	ff1ff06f          	j	8000216c <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    80002180:	00005797          	auipc	a5,0x5
    80002184:	54a7b423          	sd	a0,1352(a5) # 800076c8 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    80002188:	fe073823          	sd	zero,-16(a4)
        return 0;
    8000218c:	00000513          	li	a0,0
    80002190:	00008067          	ret
    blockToFree->next = curr;
    80002194:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    80002198:	02048a63          	beqz	s1,800021cc <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    8000219c:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    800021a0:	00000097          	auipc	ra,0x0
    800021a4:	f54080e7          	jalr	-172(ra) # 800020f4 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    800021a8:	00048513          	mv	a0,s1
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	f48080e7          	jalr	-184(ra) # 800020f4 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    800021b4:	00000513          	li	a0,0
}
    800021b8:	01813083          	ld	ra,24(sp)
    800021bc:	01013403          	ld	s0,16(sp)
    800021c0:	00813483          	ld	s1,8(sp)
    800021c4:	02010113          	addi	sp,sp,32
    800021c8:	00008067          	ret
    else freeListHead = blockToFree;
    800021cc:	00005797          	auipc	a5,0x5
    800021d0:	4ea7be23          	sd	a0,1276(a5) # 800076c8 <_ZN15MemoryAllocator12freeListHeadE>
    800021d4:	fcdff06f          	j	800021a0 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    800021d8:	fff00513          	li	a0,-1
}
    800021dc:	00008067          	ret

00000000800021e0 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    800021e0:	ff010113          	addi	sp,sp,-16
    800021e4:	00813423          	sd	s0,8(sp)
    800021e8:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    800021ec:	00005797          	auipc	a5,0x5
    800021f0:	4dc7b783          	ld	a5,1244(a5) # 800076c8 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    800021f4:	00000513          	li	a0,0
    800021f8:	0080006f          	j	80002200 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    800021fc:	0007b783          	ld	a5,0(a5)
    80002200:	00078e63          	beqz	a5,8000221c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    80002204:	0087b703          	ld	a4,8(a5)
    80002208:	01000693          	li	a3,16
    8000220c:	fee6f8e3          	bgeu	a3,a4,800021fc <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    80002210:	00a70533          	add	a0,a4,a0
    80002214:	ff050513          	addi	a0,a0,-16
    80002218:	fe5ff06f          	j	800021fc <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    8000221c:	00813403          	ld	s0,8(sp)
    80002220:	01010113          	addi	sp,sp,16
    80002224:	00008067          	ret

0000000080002228 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002228:	ff010113          	addi	sp,sp,-16
    8000222c:	00813423          	sd	s0,8(sp)
    80002230:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002234:	00005717          	auipc	a4,0x5
    80002238:	49473703          	ld	a4,1172(a4) # 800076c8 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    8000223c:	00000513          	li	a0,0
    80002240:	0080006f          	j	80002248 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002244:	00073703          	ld	a4,0(a4)
    80002248:	02070263          	beqz	a4,8000226c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    8000224c:	00873783          	ld	a5,8(a4)
    80002250:	01000693          	li	a3,16
    80002254:	00d7f463          	bgeu	a5,a3,8000225c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    80002258:	01000793          	li	a5,16
    8000225c:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    80002260:	fef572e3          	bgeu	a0,a5,80002244 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    80002264:	00078513          	mv	a0,a5
    80002268:	fddff06f          	j	80002244 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    8000226c:	00813403          	ld	s0,8(sp)
    80002270:	01010113          	addi	sp,sp,16
    80002274:	00008067          	ret

0000000080002278 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002278:	fe010113          	addi	sp,sp,-32
    8000227c:	00113c23          	sd	ra,24(sp)
    80002280:	00813823          	sd	s0,16(sp)
    80002284:	00913423          	sd	s1,8(sp)
    80002288:	01213023          	sd	s2,0(sp)
    8000228c:	02010413          	addi	s0,sp,32
    80002290:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002294:	00100793          	li	a5,1
    80002298:	02a7f863          	bgeu	a5,a0,800022c8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000229c:	00a00793          	li	a5,10
    800022a0:	02f577b3          	remu	a5,a0,a5
    800022a4:	02078e63          	beqz	a5,800022e0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800022a8:	fff48513          	addi	a0,s1,-1
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	fcc080e7          	jalr	-52(ra) # 80002278 <_ZL9fibonaccim>
    800022b4:	00050913          	mv	s2,a0
    800022b8:	ffe48513          	addi	a0,s1,-2
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	fbc080e7          	jalr	-68(ra) # 80002278 <_ZL9fibonaccim>
    800022c4:	00a90533          	add	a0,s2,a0
}
    800022c8:	01813083          	ld	ra,24(sp)
    800022cc:	01013403          	ld	s0,16(sp)
    800022d0:	00813483          	ld	s1,8(sp)
    800022d4:	00013903          	ld	s2,0(sp)
    800022d8:	02010113          	addi	sp,sp,32
    800022dc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800022e0:	fffff097          	auipc	ra,0xfffff
    800022e4:	010080e7          	jalr	16(ra) # 800012f0 <_Z15thread_dispatchv>
    800022e8:	fc1ff06f          	j	800022a8 <_ZL9fibonaccim+0x30>

00000000800022ec <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800022ec:	fe010113          	addi	sp,sp,-32
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	00813823          	sd	s0,16(sp)
    800022f8:	00913423          	sd	s1,8(sp)
    800022fc:	01213023          	sd	s2,0(sp)
    80002300:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002304:	00000913          	li	s2,0
    80002308:	0380006f          	j	80002340 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000230c:	fffff097          	auipc	ra,0xfffff
    80002310:	fe4080e7          	jalr	-28(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002314:	00148493          	addi	s1,s1,1
    80002318:	000027b7          	lui	a5,0x2
    8000231c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002320:	0097ee63          	bltu	a5,s1,8000233c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002324:	00000713          	li	a4,0
    80002328:	000077b7          	lui	a5,0x7
    8000232c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002330:	fce7eee3          	bltu	a5,a4,8000230c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002334:	00170713          	addi	a4,a4,1
    80002338:	ff1ff06f          	j	80002328 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000233c:	00190913          	addi	s2,s2,1
    80002340:	00900793          	li	a5,9
    80002344:	0527e063          	bltu	a5,s2,80002384 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002348:	00004517          	auipc	a0,0x4
    8000234c:	d7050513          	addi	a0,a0,-656 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002350:	00001097          	auipc	ra,0x1
    80002354:	e9c080e7          	jalr	-356(ra) # 800031ec <_Z11printStringPKc>
    80002358:	00000613          	li	a2,0
    8000235c:	00a00593          	li	a1,10
    80002360:	0009051b          	sext.w	a0,s2
    80002364:	00001097          	auipc	ra,0x1
    80002368:	038080e7          	jalr	56(ra) # 8000339c <_Z8printIntiii>
    8000236c:	00004517          	auipc	a0,0x4
    80002370:	fdc50513          	addi	a0,a0,-36 # 80006348 <CONSOLE_STATUS+0x338>
    80002374:	00001097          	auipc	ra,0x1
    80002378:	e78080e7          	jalr	-392(ra) # 800031ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000237c:	00000493          	li	s1,0
    80002380:	f99ff06f          	j	80002318 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002384:	00004517          	auipc	a0,0x4
    80002388:	d3c50513          	addi	a0,a0,-708 # 800060c0 <CONSOLE_STATUS+0xb0>
    8000238c:	00001097          	auipc	ra,0x1
    80002390:	e60080e7          	jalr	-416(ra) # 800031ec <_Z11printStringPKc>
    finishedA = true;
    80002394:	00100793          	li	a5,1
    80002398:	00005717          	auipc	a4,0x5
    8000239c:	32f70c23          	sb	a5,824(a4) # 800076d0 <_ZL9finishedA>
}
    800023a0:	01813083          	ld	ra,24(sp)
    800023a4:	01013403          	ld	s0,16(sp)
    800023a8:	00813483          	ld	s1,8(sp)
    800023ac:	00013903          	ld	s2,0(sp)
    800023b0:	02010113          	addi	sp,sp,32
    800023b4:	00008067          	ret

00000000800023b8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800023b8:	fe010113          	addi	sp,sp,-32
    800023bc:	00113c23          	sd	ra,24(sp)
    800023c0:	00813823          	sd	s0,16(sp)
    800023c4:	00913423          	sd	s1,8(sp)
    800023c8:	01213023          	sd	s2,0(sp)
    800023cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800023d0:	00000913          	li	s2,0
    800023d4:	0380006f          	j	8000240c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	f18080e7          	jalr	-232(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800023e0:	00148493          	addi	s1,s1,1
    800023e4:	000027b7          	lui	a5,0x2
    800023e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800023ec:	0097ee63          	bltu	a5,s1,80002408 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800023f0:	00000713          	li	a4,0
    800023f4:	000077b7          	lui	a5,0x7
    800023f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800023fc:	fce7eee3          	bltu	a5,a4,800023d8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002400:	00170713          	addi	a4,a4,1
    80002404:	ff1ff06f          	j	800023f4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002408:	00190913          	addi	s2,s2,1
    8000240c:	00f00793          	li	a5,15
    80002410:	0527e063          	bltu	a5,s2,80002450 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002414:	00004517          	auipc	a0,0x4
    80002418:	cbc50513          	addi	a0,a0,-836 # 800060d0 <CONSOLE_STATUS+0xc0>
    8000241c:	00001097          	auipc	ra,0x1
    80002420:	dd0080e7          	jalr	-560(ra) # 800031ec <_Z11printStringPKc>
    80002424:	00000613          	li	a2,0
    80002428:	00a00593          	li	a1,10
    8000242c:	0009051b          	sext.w	a0,s2
    80002430:	00001097          	auipc	ra,0x1
    80002434:	f6c080e7          	jalr	-148(ra) # 8000339c <_Z8printIntiii>
    80002438:	00004517          	auipc	a0,0x4
    8000243c:	f1050513          	addi	a0,a0,-240 # 80006348 <CONSOLE_STATUS+0x338>
    80002440:	00001097          	auipc	ra,0x1
    80002444:	dac080e7          	jalr	-596(ra) # 800031ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002448:	00000493          	li	s1,0
    8000244c:	f99ff06f          	j	800023e4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002450:	00004517          	auipc	a0,0x4
    80002454:	c8850513          	addi	a0,a0,-888 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002458:	00001097          	auipc	ra,0x1
    8000245c:	d94080e7          	jalr	-620(ra) # 800031ec <_Z11printStringPKc>
    finishedB = true;
    80002460:	00100793          	li	a5,1
    80002464:	00005717          	auipc	a4,0x5
    80002468:	26f706a3          	sb	a5,621(a4) # 800076d1 <_ZL9finishedB>
    thread_dispatch();
    8000246c:	fffff097          	auipc	ra,0xfffff
    80002470:	e84080e7          	jalr	-380(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002474:	01813083          	ld	ra,24(sp)
    80002478:	01013403          	ld	s0,16(sp)
    8000247c:	00813483          	ld	s1,8(sp)
    80002480:	00013903          	ld	s2,0(sp)
    80002484:	02010113          	addi	sp,sp,32
    80002488:	00008067          	ret

000000008000248c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000248c:	fe010113          	addi	sp,sp,-32
    80002490:	00113c23          	sd	ra,24(sp)
    80002494:	00813823          	sd	s0,16(sp)
    80002498:	00913423          	sd	s1,8(sp)
    8000249c:	01213023          	sd	s2,0(sp)
    800024a0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800024a4:	00000493          	li	s1,0
    800024a8:	0400006f          	j	800024e8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800024ac:	00004517          	auipc	a0,0x4
    800024b0:	c3c50513          	addi	a0,a0,-964 # 800060e8 <CONSOLE_STATUS+0xd8>
    800024b4:	00001097          	auipc	ra,0x1
    800024b8:	d38080e7          	jalr	-712(ra) # 800031ec <_Z11printStringPKc>
    800024bc:	00000613          	li	a2,0
    800024c0:	00a00593          	li	a1,10
    800024c4:	00048513          	mv	a0,s1
    800024c8:	00001097          	auipc	ra,0x1
    800024cc:	ed4080e7          	jalr	-300(ra) # 8000339c <_Z8printIntiii>
    800024d0:	00004517          	auipc	a0,0x4
    800024d4:	e7850513          	addi	a0,a0,-392 # 80006348 <CONSOLE_STATUS+0x338>
    800024d8:	00001097          	auipc	ra,0x1
    800024dc:	d14080e7          	jalr	-748(ra) # 800031ec <_Z11printStringPKc>
    for (; i < 3; i++) {
    800024e0:	0014849b          	addiw	s1,s1,1
    800024e4:	0ff4f493          	andi	s1,s1,255
    800024e8:	00200793          	li	a5,2
    800024ec:	fc97f0e3          	bgeu	a5,s1,800024ac <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800024f0:	00004517          	auipc	a0,0x4
    800024f4:	c0050513          	addi	a0,a0,-1024 # 800060f0 <CONSOLE_STATUS+0xe0>
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	cf4080e7          	jalr	-780(ra) # 800031ec <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002500:	00700313          	li	t1,7
    thread_dispatch();
    80002504:	fffff097          	auipc	ra,0xfffff
    80002508:	dec080e7          	jalr	-532(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000250c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002510:	00004517          	auipc	a0,0x4
    80002514:	bf050513          	addi	a0,a0,-1040 # 80006100 <CONSOLE_STATUS+0xf0>
    80002518:	00001097          	auipc	ra,0x1
    8000251c:	cd4080e7          	jalr	-812(ra) # 800031ec <_Z11printStringPKc>
    80002520:	00000613          	li	a2,0
    80002524:	00a00593          	li	a1,10
    80002528:	0009051b          	sext.w	a0,s2
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	e70080e7          	jalr	-400(ra) # 8000339c <_Z8printIntiii>
    80002534:	00004517          	auipc	a0,0x4
    80002538:	e1450513          	addi	a0,a0,-492 # 80006348 <CONSOLE_STATUS+0x338>
    8000253c:	00001097          	auipc	ra,0x1
    80002540:	cb0080e7          	jalr	-848(ra) # 800031ec <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002544:	00c00513          	li	a0,12
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	d30080e7          	jalr	-720(ra) # 80002278 <_ZL9fibonaccim>
    80002550:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002554:	00004517          	auipc	a0,0x4
    80002558:	bb450513          	addi	a0,a0,-1100 # 80006108 <CONSOLE_STATUS+0xf8>
    8000255c:	00001097          	auipc	ra,0x1
    80002560:	c90080e7          	jalr	-880(ra) # 800031ec <_Z11printStringPKc>
    80002564:	00000613          	li	a2,0
    80002568:	00a00593          	li	a1,10
    8000256c:	0009051b          	sext.w	a0,s2
    80002570:	00001097          	auipc	ra,0x1
    80002574:	e2c080e7          	jalr	-468(ra) # 8000339c <_Z8printIntiii>
    80002578:	00004517          	auipc	a0,0x4
    8000257c:	dd050513          	addi	a0,a0,-560 # 80006348 <CONSOLE_STATUS+0x338>
    80002580:	00001097          	auipc	ra,0x1
    80002584:	c6c080e7          	jalr	-916(ra) # 800031ec <_Z11printStringPKc>
    80002588:	0400006f          	j	800025c8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000258c:	00004517          	auipc	a0,0x4
    80002590:	b5c50513          	addi	a0,a0,-1188 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002594:	00001097          	auipc	ra,0x1
    80002598:	c58080e7          	jalr	-936(ra) # 800031ec <_Z11printStringPKc>
    8000259c:	00000613          	li	a2,0
    800025a0:	00a00593          	li	a1,10
    800025a4:	00048513          	mv	a0,s1
    800025a8:	00001097          	auipc	ra,0x1
    800025ac:	df4080e7          	jalr	-524(ra) # 8000339c <_Z8printIntiii>
    800025b0:	00004517          	auipc	a0,0x4
    800025b4:	d9850513          	addi	a0,a0,-616 # 80006348 <CONSOLE_STATUS+0x338>
    800025b8:	00001097          	auipc	ra,0x1
    800025bc:	c34080e7          	jalr	-972(ra) # 800031ec <_Z11printStringPKc>
    for (; i < 6; i++) {
    800025c0:	0014849b          	addiw	s1,s1,1
    800025c4:	0ff4f493          	andi	s1,s1,255
    800025c8:	00500793          	li	a5,5
    800025cc:	fc97f0e3          	bgeu	a5,s1,8000258c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800025d0:	00004517          	auipc	a0,0x4
    800025d4:	af050513          	addi	a0,a0,-1296 # 800060c0 <CONSOLE_STATUS+0xb0>
    800025d8:	00001097          	auipc	ra,0x1
    800025dc:	c14080e7          	jalr	-1004(ra) # 800031ec <_Z11printStringPKc>
    finishedC = true;
    800025e0:	00100793          	li	a5,1
    800025e4:	00005717          	auipc	a4,0x5
    800025e8:	0ef70723          	sb	a5,238(a4) # 800076d2 <_ZL9finishedC>
    thread_dispatch();
    800025ec:	fffff097          	auipc	ra,0xfffff
    800025f0:	d04080e7          	jalr	-764(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800025f4:	01813083          	ld	ra,24(sp)
    800025f8:	01013403          	ld	s0,16(sp)
    800025fc:	00813483          	ld	s1,8(sp)
    80002600:	00013903          	ld	s2,0(sp)
    80002604:	02010113          	addi	sp,sp,32
    80002608:	00008067          	ret

000000008000260c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000260c:	fe010113          	addi	sp,sp,-32
    80002610:	00113c23          	sd	ra,24(sp)
    80002614:	00813823          	sd	s0,16(sp)
    80002618:	00913423          	sd	s1,8(sp)
    8000261c:	01213023          	sd	s2,0(sp)
    80002620:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002624:	00a00493          	li	s1,10
    80002628:	0400006f          	j	80002668 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000262c:	00004517          	auipc	a0,0x4
    80002630:	aec50513          	addi	a0,a0,-1300 # 80006118 <CONSOLE_STATUS+0x108>
    80002634:	00001097          	auipc	ra,0x1
    80002638:	bb8080e7          	jalr	-1096(ra) # 800031ec <_Z11printStringPKc>
    8000263c:	00000613          	li	a2,0
    80002640:	00a00593          	li	a1,10
    80002644:	00048513          	mv	a0,s1
    80002648:	00001097          	auipc	ra,0x1
    8000264c:	d54080e7          	jalr	-684(ra) # 8000339c <_Z8printIntiii>
    80002650:	00004517          	auipc	a0,0x4
    80002654:	cf850513          	addi	a0,a0,-776 # 80006348 <CONSOLE_STATUS+0x338>
    80002658:	00001097          	auipc	ra,0x1
    8000265c:	b94080e7          	jalr	-1132(ra) # 800031ec <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002660:	0014849b          	addiw	s1,s1,1
    80002664:	0ff4f493          	andi	s1,s1,255
    80002668:	00c00793          	li	a5,12
    8000266c:	fc97f0e3          	bgeu	a5,s1,8000262c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002670:	00004517          	auipc	a0,0x4
    80002674:	ab050513          	addi	a0,a0,-1360 # 80006120 <CONSOLE_STATUS+0x110>
    80002678:	00001097          	auipc	ra,0x1
    8000267c:	b74080e7          	jalr	-1164(ra) # 800031ec <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002680:	00500313          	li	t1,5
    thread_dispatch();
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	c6c080e7          	jalr	-916(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000268c:	01000513          	li	a0,16
    80002690:	00000097          	auipc	ra,0x0
    80002694:	be8080e7          	jalr	-1048(ra) # 80002278 <_ZL9fibonaccim>
    80002698:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000269c:	00004517          	auipc	a0,0x4
    800026a0:	a9450513          	addi	a0,a0,-1388 # 80006130 <CONSOLE_STATUS+0x120>
    800026a4:	00001097          	auipc	ra,0x1
    800026a8:	b48080e7          	jalr	-1208(ra) # 800031ec <_Z11printStringPKc>
    800026ac:	00000613          	li	a2,0
    800026b0:	00a00593          	li	a1,10
    800026b4:	0009051b          	sext.w	a0,s2
    800026b8:	00001097          	auipc	ra,0x1
    800026bc:	ce4080e7          	jalr	-796(ra) # 8000339c <_Z8printIntiii>
    800026c0:	00004517          	auipc	a0,0x4
    800026c4:	c8850513          	addi	a0,a0,-888 # 80006348 <CONSOLE_STATUS+0x338>
    800026c8:	00001097          	auipc	ra,0x1
    800026cc:	b24080e7          	jalr	-1244(ra) # 800031ec <_Z11printStringPKc>
    800026d0:	0400006f          	j	80002710 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800026d4:	00004517          	auipc	a0,0x4
    800026d8:	a4450513          	addi	a0,a0,-1468 # 80006118 <CONSOLE_STATUS+0x108>
    800026dc:	00001097          	auipc	ra,0x1
    800026e0:	b10080e7          	jalr	-1264(ra) # 800031ec <_Z11printStringPKc>
    800026e4:	00000613          	li	a2,0
    800026e8:	00a00593          	li	a1,10
    800026ec:	00048513          	mv	a0,s1
    800026f0:	00001097          	auipc	ra,0x1
    800026f4:	cac080e7          	jalr	-852(ra) # 8000339c <_Z8printIntiii>
    800026f8:	00004517          	auipc	a0,0x4
    800026fc:	c5050513          	addi	a0,a0,-944 # 80006348 <CONSOLE_STATUS+0x338>
    80002700:	00001097          	auipc	ra,0x1
    80002704:	aec080e7          	jalr	-1300(ra) # 800031ec <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002708:	0014849b          	addiw	s1,s1,1
    8000270c:	0ff4f493          	andi	s1,s1,255
    80002710:	00f00793          	li	a5,15
    80002714:	fc97f0e3          	bgeu	a5,s1,800026d4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002718:	00004517          	auipc	a0,0x4
    8000271c:	a2850513          	addi	a0,a0,-1496 # 80006140 <CONSOLE_STATUS+0x130>
    80002720:	00001097          	auipc	ra,0x1
    80002724:	acc080e7          	jalr	-1332(ra) # 800031ec <_Z11printStringPKc>
    finishedD = true;
    80002728:	00100793          	li	a5,1
    8000272c:	00005717          	auipc	a4,0x5
    80002730:	faf703a3          	sb	a5,-89(a4) # 800076d3 <_ZL9finishedD>
    thread_dispatch();
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	bbc080e7          	jalr	-1092(ra) # 800012f0 <_Z15thread_dispatchv>
}
    8000273c:	01813083          	ld	ra,24(sp)
    80002740:	01013403          	ld	s0,16(sp)
    80002744:	00813483          	ld	s1,8(sp)
    80002748:	00013903          	ld	s2,0(sp)
    8000274c:	02010113          	addi	sp,sp,32
    80002750:	00008067          	ret

0000000080002754 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002754:	fc010113          	addi	sp,sp,-64
    80002758:	02113c23          	sd	ra,56(sp)
    8000275c:	02813823          	sd	s0,48(sp)
    80002760:	02913423          	sd	s1,40(sp)
    80002764:	03213023          	sd	s2,32(sp)
    80002768:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000276c:	02000513          	li	a0,32
    80002770:	fffff097          	auipc	ra,0xfffff
    80002774:	3e8080e7          	jalr	1000(ra) # 80001b58 <_Znwm>
    80002778:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000277c:	fffff097          	auipc	ra,0xfffff
    80002780:	4ec080e7          	jalr	1260(ra) # 80001c68 <_ZN6ThreadC1Ev>
    80002784:	00005797          	auipc	a5,0x5
    80002788:	dfc78793          	addi	a5,a5,-516 # 80007580 <_ZTV7WorkerA+0x10>
    8000278c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002790:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002794:	00004517          	auipc	a0,0x4
    80002798:	9bc50513          	addi	a0,a0,-1604 # 80006150 <CONSOLE_STATUS+0x140>
    8000279c:	00001097          	auipc	ra,0x1
    800027a0:	a50080e7          	jalr	-1456(ra) # 800031ec <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800027a4:	02000513          	li	a0,32
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	3b0080e7          	jalr	944(ra) # 80001b58 <_Znwm>
    800027b0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800027b4:	fffff097          	auipc	ra,0xfffff
    800027b8:	4b4080e7          	jalr	1204(ra) # 80001c68 <_ZN6ThreadC1Ev>
    800027bc:	00005797          	auipc	a5,0x5
    800027c0:	dec78793          	addi	a5,a5,-532 # 800075a8 <_ZTV7WorkerB+0x10>
    800027c4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800027c8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800027cc:	00004517          	auipc	a0,0x4
    800027d0:	99c50513          	addi	a0,a0,-1636 # 80006168 <CONSOLE_STATUS+0x158>
    800027d4:	00001097          	auipc	ra,0x1
    800027d8:	a18080e7          	jalr	-1512(ra) # 800031ec <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800027dc:	02000513          	li	a0,32
    800027e0:	fffff097          	auipc	ra,0xfffff
    800027e4:	378080e7          	jalr	888(ra) # 80001b58 <_Znwm>
    800027e8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	47c080e7          	jalr	1148(ra) # 80001c68 <_ZN6ThreadC1Ev>
    800027f4:	00005797          	auipc	a5,0x5
    800027f8:	ddc78793          	addi	a5,a5,-548 # 800075d0 <_ZTV7WorkerC+0x10>
    800027fc:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002800:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002804:	00004517          	auipc	a0,0x4
    80002808:	97c50513          	addi	a0,a0,-1668 # 80006180 <CONSOLE_STATUS+0x170>
    8000280c:	00001097          	auipc	ra,0x1
    80002810:	9e0080e7          	jalr	-1568(ra) # 800031ec <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002814:	02000513          	li	a0,32
    80002818:	fffff097          	auipc	ra,0xfffff
    8000281c:	340080e7          	jalr	832(ra) # 80001b58 <_Znwm>
    80002820:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	444080e7          	jalr	1092(ra) # 80001c68 <_ZN6ThreadC1Ev>
    8000282c:	00005797          	auipc	a5,0x5
    80002830:	dcc78793          	addi	a5,a5,-564 # 800075f8 <_ZTV7WorkerD+0x10>
    80002834:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002838:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000283c:	00004517          	auipc	a0,0x4
    80002840:	95c50513          	addi	a0,a0,-1700 # 80006198 <CONSOLE_STATUS+0x188>
    80002844:	00001097          	auipc	ra,0x1
    80002848:	9a8080e7          	jalr	-1624(ra) # 800031ec <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000284c:	00000493          	li	s1,0
    80002850:	00300793          	li	a5,3
    80002854:	0297c663          	blt	a5,s1,80002880 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002858:	00349793          	slli	a5,s1,0x3
    8000285c:	fe040713          	addi	a4,s0,-32
    80002860:	00f707b3          	add	a5,a4,a5
    80002864:	fe07b503          	ld	a0,-32(a5)
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	430080e7          	jalr	1072(ra) # 80001c98 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002870:	0014849b          	addiw	s1,s1,1
    80002874:	fddff06f          	j	80002850 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002878:	fffff097          	auipc	ra,0xfffff
    8000287c:	474080e7          	jalr	1140(ra) # 80001cec <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002880:	00005797          	auipc	a5,0x5
    80002884:	e507c783          	lbu	a5,-432(a5) # 800076d0 <_ZL9finishedA>
    80002888:	fe0788e3          	beqz	a5,80002878 <_Z20Threads_CPP_API_testv+0x124>
    8000288c:	00005797          	auipc	a5,0x5
    80002890:	e457c783          	lbu	a5,-443(a5) # 800076d1 <_ZL9finishedB>
    80002894:	fe0782e3          	beqz	a5,80002878 <_Z20Threads_CPP_API_testv+0x124>
    80002898:	00005797          	auipc	a5,0x5
    8000289c:	e3a7c783          	lbu	a5,-454(a5) # 800076d2 <_ZL9finishedC>
    800028a0:	fc078ce3          	beqz	a5,80002878 <_Z20Threads_CPP_API_testv+0x124>
    800028a4:	00005797          	auipc	a5,0x5
    800028a8:	e2f7c783          	lbu	a5,-465(a5) # 800076d3 <_ZL9finishedD>
    800028ac:	fc0786e3          	beqz	a5,80002878 <_Z20Threads_CPP_API_testv+0x124>
    800028b0:	fc040493          	addi	s1,s0,-64
    800028b4:	0080006f          	j	800028bc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800028b8:	00848493          	addi	s1,s1,8
    800028bc:	fe040793          	addi	a5,s0,-32
    800028c0:	08f48663          	beq	s1,a5,8000294c <_Z20Threads_CPP_API_testv+0x1f8>
    800028c4:	0004b503          	ld	a0,0(s1)
    800028c8:	fe0508e3          	beqz	a0,800028b8 <_Z20Threads_CPP_API_testv+0x164>
    800028cc:	00053783          	ld	a5,0(a0)
    800028d0:	0087b783          	ld	a5,8(a5)
    800028d4:	000780e7          	jalr	a5
    800028d8:	fe1ff06f          	j	800028b8 <_Z20Threads_CPP_API_testv+0x164>
    800028dc:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800028e0:	00048513          	mv	a0,s1
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	29c080e7          	jalr	668(ra) # 80001b80 <_ZdlPv>
    800028ec:	00090513          	mv	a0,s2
    800028f0:	00006097          	auipc	ra,0x6
    800028f4:	ec8080e7          	jalr	-312(ra) # 800087b8 <_Unwind_Resume>
    800028f8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800028fc:	00048513          	mv	a0,s1
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	280080e7          	jalr	640(ra) # 80001b80 <_ZdlPv>
    80002908:	00090513          	mv	a0,s2
    8000290c:	00006097          	auipc	ra,0x6
    80002910:	eac080e7          	jalr	-340(ra) # 800087b8 <_Unwind_Resume>
    80002914:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002918:	00048513          	mv	a0,s1
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	264080e7          	jalr	612(ra) # 80001b80 <_ZdlPv>
    80002924:	00090513          	mv	a0,s2
    80002928:	00006097          	auipc	ra,0x6
    8000292c:	e90080e7          	jalr	-368(ra) # 800087b8 <_Unwind_Resume>
    80002930:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002934:	00048513          	mv	a0,s1
    80002938:	fffff097          	auipc	ra,0xfffff
    8000293c:	248080e7          	jalr	584(ra) # 80001b80 <_ZdlPv>
    80002940:	00090513          	mv	a0,s2
    80002944:	00006097          	auipc	ra,0x6
    80002948:	e74080e7          	jalr	-396(ra) # 800087b8 <_Unwind_Resume>
}
    8000294c:	03813083          	ld	ra,56(sp)
    80002950:	03013403          	ld	s0,48(sp)
    80002954:	02813483          	ld	s1,40(sp)
    80002958:	02013903          	ld	s2,32(sp)
    8000295c:	04010113          	addi	sp,sp,64
    80002960:	00008067          	ret

0000000080002964 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002964:	ff010113          	addi	sp,sp,-16
    80002968:	00113423          	sd	ra,8(sp)
    8000296c:	00813023          	sd	s0,0(sp)
    80002970:	01010413          	addi	s0,sp,16
    80002974:	00005797          	auipc	a5,0x5
    80002978:	c0c78793          	addi	a5,a5,-1012 # 80007580 <_ZTV7WorkerA+0x10>
    8000297c:	00f53023          	sd	a5,0(a0)
    80002980:	fffff097          	auipc	ra,0xfffff
    80002984:	164080e7          	jalr	356(ra) # 80001ae4 <_ZN6ThreadD1Ev>
    80002988:	00813083          	ld	ra,8(sp)
    8000298c:	00013403          	ld	s0,0(sp)
    80002990:	01010113          	addi	sp,sp,16
    80002994:	00008067          	ret

0000000080002998 <_ZN7WorkerAD0Ev>:
    80002998:	fe010113          	addi	sp,sp,-32
    8000299c:	00113c23          	sd	ra,24(sp)
    800029a0:	00813823          	sd	s0,16(sp)
    800029a4:	00913423          	sd	s1,8(sp)
    800029a8:	02010413          	addi	s0,sp,32
    800029ac:	00050493          	mv	s1,a0
    800029b0:	00005797          	auipc	a5,0x5
    800029b4:	bd078793          	addi	a5,a5,-1072 # 80007580 <_ZTV7WorkerA+0x10>
    800029b8:	00f53023          	sd	a5,0(a0)
    800029bc:	fffff097          	auipc	ra,0xfffff
    800029c0:	128080e7          	jalr	296(ra) # 80001ae4 <_ZN6ThreadD1Ev>
    800029c4:	00048513          	mv	a0,s1
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	1b8080e7          	jalr	440(ra) # 80001b80 <_ZdlPv>
    800029d0:	01813083          	ld	ra,24(sp)
    800029d4:	01013403          	ld	s0,16(sp)
    800029d8:	00813483          	ld	s1,8(sp)
    800029dc:	02010113          	addi	sp,sp,32
    800029e0:	00008067          	ret

00000000800029e4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800029e4:	ff010113          	addi	sp,sp,-16
    800029e8:	00113423          	sd	ra,8(sp)
    800029ec:	00813023          	sd	s0,0(sp)
    800029f0:	01010413          	addi	s0,sp,16
    800029f4:	00005797          	auipc	a5,0x5
    800029f8:	bb478793          	addi	a5,a5,-1100 # 800075a8 <_ZTV7WorkerB+0x10>
    800029fc:	00f53023          	sd	a5,0(a0)
    80002a00:	fffff097          	auipc	ra,0xfffff
    80002a04:	0e4080e7          	jalr	228(ra) # 80001ae4 <_ZN6ThreadD1Ev>
    80002a08:	00813083          	ld	ra,8(sp)
    80002a0c:	00013403          	ld	s0,0(sp)
    80002a10:	01010113          	addi	sp,sp,16
    80002a14:	00008067          	ret

0000000080002a18 <_ZN7WorkerBD0Ev>:
    80002a18:	fe010113          	addi	sp,sp,-32
    80002a1c:	00113c23          	sd	ra,24(sp)
    80002a20:	00813823          	sd	s0,16(sp)
    80002a24:	00913423          	sd	s1,8(sp)
    80002a28:	02010413          	addi	s0,sp,32
    80002a2c:	00050493          	mv	s1,a0
    80002a30:	00005797          	auipc	a5,0x5
    80002a34:	b7878793          	addi	a5,a5,-1160 # 800075a8 <_ZTV7WorkerB+0x10>
    80002a38:	00f53023          	sd	a5,0(a0)
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	0a8080e7          	jalr	168(ra) # 80001ae4 <_ZN6ThreadD1Ev>
    80002a44:	00048513          	mv	a0,s1
    80002a48:	fffff097          	auipc	ra,0xfffff
    80002a4c:	138080e7          	jalr	312(ra) # 80001b80 <_ZdlPv>
    80002a50:	01813083          	ld	ra,24(sp)
    80002a54:	01013403          	ld	s0,16(sp)
    80002a58:	00813483          	ld	s1,8(sp)
    80002a5c:	02010113          	addi	sp,sp,32
    80002a60:	00008067          	ret

0000000080002a64 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002a64:	ff010113          	addi	sp,sp,-16
    80002a68:	00113423          	sd	ra,8(sp)
    80002a6c:	00813023          	sd	s0,0(sp)
    80002a70:	01010413          	addi	s0,sp,16
    80002a74:	00005797          	auipc	a5,0x5
    80002a78:	b5c78793          	addi	a5,a5,-1188 # 800075d0 <_ZTV7WorkerC+0x10>
    80002a7c:	00f53023          	sd	a5,0(a0)
    80002a80:	fffff097          	auipc	ra,0xfffff
    80002a84:	064080e7          	jalr	100(ra) # 80001ae4 <_ZN6ThreadD1Ev>
    80002a88:	00813083          	ld	ra,8(sp)
    80002a8c:	00013403          	ld	s0,0(sp)
    80002a90:	01010113          	addi	sp,sp,16
    80002a94:	00008067          	ret

0000000080002a98 <_ZN7WorkerCD0Ev>:
    80002a98:	fe010113          	addi	sp,sp,-32
    80002a9c:	00113c23          	sd	ra,24(sp)
    80002aa0:	00813823          	sd	s0,16(sp)
    80002aa4:	00913423          	sd	s1,8(sp)
    80002aa8:	02010413          	addi	s0,sp,32
    80002aac:	00050493          	mv	s1,a0
    80002ab0:	00005797          	auipc	a5,0x5
    80002ab4:	b2078793          	addi	a5,a5,-1248 # 800075d0 <_ZTV7WorkerC+0x10>
    80002ab8:	00f53023          	sd	a5,0(a0)
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	028080e7          	jalr	40(ra) # 80001ae4 <_ZN6ThreadD1Ev>
    80002ac4:	00048513          	mv	a0,s1
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	0b8080e7          	jalr	184(ra) # 80001b80 <_ZdlPv>
    80002ad0:	01813083          	ld	ra,24(sp)
    80002ad4:	01013403          	ld	s0,16(sp)
    80002ad8:	00813483          	ld	s1,8(sp)
    80002adc:	02010113          	addi	sp,sp,32
    80002ae0:	00008067          	ret

0000000080002ae4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80002ae4:	ff010113          	addi	sp,sp,-16
    80002ae8:	00113423          	sd	ra,8(sp)
    80002aec:	00813023          	sd	s0,0(sp)
    80002af0:	01010413          	addi	s0,sp,16
    80002af4:	00005797          	auipc	a5,0x5
    80002af8:	b0478793          	addi	a5,a5,-1276 # 800075f8 <_ZTV7WorkerD+0x10>
    80002afc:	00f53023          	sd	a5,0(a0)
    80002b00:	fffff097          	auipc	ra,0xfffff
    80002b04:	fe4080e7          	jalr	-28(ra) # 80001ae4 <_ZN6ThreadD1Ev>
    80002b08:	00813083          	ld	ra,8(sp)
    80002b0c:	00013403          	ld	s0,0(sp)
    80002b10:	01010113          	addi	sp,sp,16
    80002b14:	00008067          	ret

0000000080002b18 <_ZN7WorkerDD0Ev>:
    80002b18:	fe010113          	addi	sp,sp,-32
    80002b1c:	00113c23          	sd	ra,24(sp)
    80002b20:	00813823          	sd	s0,16(sp)
    80002b24:	00913423          	sd	s1,8(sp)
    80002b28:	02010413          	addi	s0,sp,32
    80002b2c:	00050493          	mv	s1,a0
    80002b30:	00005797          	auipc	a5,0x5
    80002b34:	ac878793          	addi	a5,a5,-1336 # 800075f8 <_ZTV7WorkerD+0x10>
    80002b38:	00f53023          	sd	a5,0(a0)
    80002b3c:	fffff097          	auipc	ra,0xfffff
    80002b40:	fa8080e7          	jalr	-88(ra) # 80001ae4 <_ZN6ThreadD1Ev>
    80002b44:	00048513          	mv	a0,s1
    80002b48:	fffff097          	auipc	ra,0xfffff
    80002b4c:	038080e7          	jalr	56(ra) # 80001b80 <_ZdlPv>
    80002b50:	01813083          	ld	ra,24(sp)
    80002b54:	01013403          	ld	s0,16(sp)
    80002b58:	00813483          	ld	s1,8(sp)
    80002b5c:	02010113          	addi	sp,sp,32
    80002b60:	00008067          	ret

0000000080002b64 <_ZN7WorkerA3runEv>:
    void run() override {
    80002b64:	ff010113          	addi	sp,sp,-16
    80002b68:	00113423          	sd	ra,8(sp)
    80002b6c:	00813023          	sd	s0,0(sp)
    80002b70:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002b74:	00000593          	li	a1,0
    80002b78:	fffff097          	auipc	ra,0xfffff
    80002b7c:	774080e7          	jalr	1908(ra) # 800022ec <_ZN7WorkerA11workerBodyAEPv>
    }
    80002b80:	00813083          	ld	ra,8(sp)
    80002b84:	00013403          	ld	s0,0(sp)
    80002b88:	01010113          	addi	sp,sp,16
    80002b8c:	00008067          	ret

0000000080002b90 <_ZN7WorkerB3runEv>:
    void run() override {
    80002b90:	ff010113          	addi	sp,sp,-16
    80002b94:	00113423          	sd	ra,8(sp)
    80002b98:	00813023          	sd	s0,0(sp)
    80002b9c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002ba0:	00000593          	li	a1,0
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	814080e7          	jalr	-2028(ra) # 800023b8 <_ZN7WorkerB11workerBodyBEPv>
    }
    80002bac:	00813083          	ld	ra,8(sp)
    80002bb0:	00013403          	ld	s0,0(sp)
    80002bb4:	01010113          	addi	sp,sp,16
    80002bb8:	00008067          	ret

0000000080002bbc <_ZN7WorkerC3runEv>:
    void run() override {
    80002bbc:	ff010113          	addi	sp,sp,-16
    80002bc0:	00113423          	sd	ra,8(sp)
    80002bc4:	00813023          	sd	s0,0(sp)
    80002bc8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80002bcc:	00000593          	li	a1,0
    80002bd0:	00000097          	auipc	ra,0x0
    80002bd4:	8bc080e7          	jalr	-1860(ra) # 8000248c <_ZN7WorkerC11workerBodyCEPv>
    }
    80002bd8:	00813083          	ld	ra,8(sp)
    80002bdc:	00013403          	ld	s0,0(sp)
    80002be0:	01010113          	addi	sp,sp,16
    80002be4:	00008067          	ret

0000000080002be8 <_ZN7WorkerD3runEv>:
    void run() override {
    80002be8:	ff010113          	addi	sp,sp,-16
    80002bec:	00113423          	sd	ra,8(sp)
    80002bf0:	00813023          	sd	s0,0(sp)
    80002bf4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80002bf8:	00000593          	li	a1,0
    80002bfc:	00000097          	auipc	ra,0x0
    80002c00:	a10080e7          	jalr	-1520(ra) # 8000260c <_ZN7WorkerD11workerBodyDEPv>
    }
    80002c04:	00813083          	ld	ra,8(sp)
    80002c08:	00013403          	ld	s0,0(sp)
    80002c0c:	01010113          	addi	sp,sp,16
    80002c10:	00008067          	ret

0000000080002c14 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002c14:	fe010113          	addi	sp,sp,-32
    80002c18:	00113c23          	sd	ra,24(sp)
    80002c1c:	00813823          	sd	s0,16(sp)
    80002c20:	00913423          	sd	s1,8(sp)
    80002c24:	01213023          	sd	s2,0(sp)
    80002c28:	02010413          	addi	s0,sp,32
    80002c2c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002c30:	00100793          	li	a5,1
    80002c34:	02a7f863          	bgeu	a5,a0,80002c64 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002c38:	00a00793          	li	a5,10
    80002c3c:	02f577b3          	remu	a5,a0,a5
    80002c40:	02078e63          	beqz	a5,80002c7c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002c44:	fff48513          	addi	a0,s1,-1
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	fcc080e7          	jalr	-52(ra) # 80002c14 <_ZL9fibonaccim>
    80002c50:	00050913          	mv	s2,a0
    80002c54:	ffe48513          	addi	a0,s1,-2
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	fbc080e7          	jalr	-68(ra) # 80002c14 <_ZL9fibonaccim>
    80002c60:	00a90533          	add	a0,s2,a0
}
    80002c64:	01813083          	ld	ra,24(sp)
    80002c68:	01013403          	ld	s0,16(sp)
    80002c6c:	00813483          	ld	s1,8(sp)
    80002c70:	00013903          	ld	s2,0(sp)
    80002c74:	02010113          	addi	sp,sp,32
    80002c78:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002c7c:	ffffe097          	auipc	ra,0xffffe
    80002c80:	674080e7          	jalr	1652(ra) # 800012f0 <_Z15thread_dispatchv>
    80002c84:	fc1ff06f          	j	80002c44 <_ZL9fibonaccim+0x30>

0000000080002c88 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002c88:	fe010113          	addi	sp,sp,-32
    80002c8c:	00113c23          	sd	ra,24(sp)
    80002c90:	00813823          	sd	s0,16(sp)
    80002c94:	00913423          	sd	s1,8(sp)
    80002c98:	01213023          	sd	s2,0(sp)
    80002c9c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002ca0:	00a00493          	li	s1,10
    80002ca4:	0400006f          	j	80002ce4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002ca8:	00003517          	auipc	a0,0x3
    80002cac:	47050513          	addi	a0,a0,1136 # 80006118 <CONSOLE_STATUS+0x108>
    80002cb0:	00000097          	auipc	ra,0x0
    80002cb4:	53c080e7          	jalr	1340(ra) # 800031ec <_Z11printStringPKc>
    80002cb8:	00000613          	li	a2,0
    80002cbc:	00a00593          	li	a1,10
    80002cc0:	00048513          	mv	a0,s1
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	6d8080e7          	jalr	1752(ra) # 8000339c <_Z8printIntiii>
    80002ccc:	00003517          	auipc	a0,0x3
    80002cd0:	67c50513          	addi	a0,a0,1660 # 80006348 <CONSOLE_STATUS+0x338>
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	518080e7          	jalr	1304(ra) # 800031ec <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002cdc:	0014849b          	addiw	s1,s1,1
    80002ce0:	0ff4f493          	andi	s1,s1,255
    80002ce4:	00c00793          	li	a5,12
    80002ce8:	fc97f0e3          	bgeu	a5,s1,80002ca8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002cec:	00003517          	auipc	a0,0x3
    80002cf0:	43450513          	addi	a0,a0,1076 # 80006120 <CONSOLE_STATUS+0x110>
    80002cf4:	00000097          	auipc	ra,0x0
    80002cf8:	4f8080e7          	jalr	1272(ra) # 800031ec <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002cfc:	00500313          	li	t1,5
    thread_dispatch();
    80002d00:	ffffe097          	auipc	ra,0xffffe
    80002d04:	5f0080e7          	jalr	1520(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002d08:	01000513          	li	a0,16
    80002d0c:	00000097          	auipc	ra,0x0
    80002d10:	f08080e7          	jalr	-248(ra) # 80002c14 <_ZL9fibonaccim>
    80002d14:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002d18:	00003517          	auipc	a0,0x3
    80002d1c:	41850513          	addi	a0,a0,1048 # 80006130 <CONSOLE_STATUS+0x120>
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	4cc080e7          	jalr	1228(ra) # 800031ec <_Z11printStringPKc>
    80002d28:	00000613          	li	a2,0
    80002d2c:	00a00593          	li	a1,10
    80002d30:	0009051b          	sext.w	a0,s2
    80002d34:	00000097          	auipc	ra,0x0
    80002d38:	668080e7          	jalr	1640(ra) # 8000339c <_Z8printIntiii>
    80002d3c:	00003517          	auipc	a0,0x3
    80002d40:	60c50513          	addi	a0,a0,1548 # 80006348 <CONSOLE_STATUS+0x338>
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	4a8080e7          	jalr	1192(ra) # 800031ec <_Z11printStringPKc>
    80002d4c:	0400006f          	j	80002d8c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002d50:	00003517          	auipc	a0,0x3
    80002d54:	3c850513          	addi	a0,a0,968 # 80006118 <CONSOLE_STATUS+0x108>
    80002d58:	00000097          	auipc	ra,0x0
    80002d5c:	494080e7          	jalr	1172(ra) # 800031ec <_Z11printStringPKc>
    80002d60:	00000613          	li	a2,0
    80002d64:	00a00593          	li	a1,10
    80002d68:	00048513          	mv	a0,s1
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	630080e7          	jalr	1584(ra) # 8000339c <_Z8printIntiii>
    80002d74:	00003517          	auipc	a0,0x3
    80002d78:	5d450513          	addi	a0,a0,1492 # 80006348 <CONSOLE_STATUS+0x338>
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	470080e7          	jalr	1136(ra) # 800031ec <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002d84:	0014849b          	addiw	s1,s1,1
    80002d88:	0ff4f493          	andi	s1,s1,255
    80002d8c:	00f00793          	li	a5,15
    80002d90:	fc97f0e3          	bgeu	a5,s1,80002d50 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002d94:	00003517          	auipc	a0,0x3
    80002d98:	3ac50513          	addi	a0,a0,940 # 80006140 <CONSOLE_STATUS+0x130>
    80002d9c:	00000097          	auipc	ra,0x0
    80002da0:	450080e7          	jalr	1104(ra) # 800031ec <_Z11printStringPKc>
    finishedD = true;
    80002da4:	00100793          	li	a5,1
    80002da8:	00005717          	auipc	a4,0x5
    80002dac:	92f70623          	sb	a5,-1748(a4) # 800076d4 <_ZL9finishedD>
    thread_dispatch();
    80002db0:	ffffe097          	auipc	ra,0xffffe
    80002db4:	540080e7          	jalr	1344(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002db8:	01813083          	ld	ra,24(sp)
    80002dbc:	01013403          	ld	s0,16(sp)
    80002dc0:	00813483          	ld	s1,8(sp)
    80002dc4:	00013903          	ld	s2,0(sp)
    80002dc8:	02010113          	addi	sp,sp,32
    80002dcc:	00008067          	ret

0000000080002dd0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002dd0:	fe010113          	addi	sp,sp,-32
    80002dd4:	00113c23          	sd	ra,24(sp)
    80002dd8:	00813823          	sd	s0,16(sp)
    80002ddc:	00913423          	sd	s1,8(sp)
    80002de0:	01213023          	sd	s2,0(sp)
    80002de4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002de8:	00000493          	li	s1,0
    80002dec:	0400006f          	j	80002e2c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002df0:	00003517          	auipc	a0,0x3
    80002df4:	2f850513          	addi	a0,a0,760 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	3f4080e7          	jalr	1012(ra) # 800031ec <_Z11printStringPKc>
    80002e00:	00000613          	li	a2,0
    80002e04:	00a00593          	li	a1,10
    80002e08:	00048513          	mv	a0,s1
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	590080e7          	jalr	1424(ra) # 8000339c <_Z8printIntiii>
    80002e14:	00003517          	auipc	a0,0x3
    80002e18:	53450513          	addi	a0,a0,1332 # 80006348 <CONSOLE_STATUS+0x338>
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	3d0080e7          	jalr	976(ra) # 800031ec <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002e24:	0014849b          	addiw	s1,s1,1
    80002e28:	0ff4f493          	andi	s1,s1,255
    80002e2c:	00200793          	li	a5,2
    80002e30:	fc97f0e3          	bgeu	a5,s1,80002df0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002e34:	00003517          	auipc	a0,0x3
    80002e38:	2bc50513          	addi	a0,a0,700 # 800060f0 <CONSOLE_STATUS+0xe0>
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	3b0080e7          	jalr	944(ra) # 800031ec <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002e44:	00700313          	li	t1,7
    thread_dispatch();
    80002e48:	ffffe097          	auipc	ra,0xffffe
    80002e4c:	4a8080e7          	jalr	1192(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002e50:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002e54:	00003517          	auipc	a0,0x3
    80002e58:	2ac50513          	addi	a0,a0,684 # 80006100 <CONSOLE_STATUS+0xf0>
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	390080e7          	jalr	912(ra) # 800031ec <_Z11printStringPKc>
    80002e64:	00000613          	li	a2,0
    80002e68:	00a00593          	li	a1,10
    80002e6c:	0009051b          	sext.w	a0,s2
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	52c080e7          	jalr	1324(ra) # 8000339c <_Z8printIntiii>
    80002e78:	00003517          	auipc	a0,0x3
    80002e7c:	4d050513          	addi	a0,a0,1232 # 80006348 <CONSOLE_STATUS+0x338>
    80002e80:	00000097          	auipc	ra,0x0
    80002e84:	36c080e7          	jalr	876(ra) # 800031ec <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002e88:	00c00513          	li	a0,12
    80002e8c:	00000097          	auipc	ra,0x0
    80002e90:	d88080e7          	jalr	-632(ra) # 80002c14 <_ZL9fibonaccim>
    80002e94:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002e98:	00003517          	auipc	a0,0x3
    80002e9c:	27050513          	addi	a0,a0,624 # 80006108 <CONSOLE_STATUS+0xf8>
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	34c080e7          	jalr	844(ra) # 800031ec <_Z11printStringPKc>
    80002ea8:	00000613          	li	a2,0
    80002eac:	00a00593          	li	a1,10
    80002eb0:	0009051b          	sext.w	a0,s2
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	4e8080e7          	jalr	1256(ra) # 8000339c <_Z8printIntiii>
    80002ebc:	00003517          	auipc	a0,0x3
    80002ec0:	48c50513          	addi	a0,a0,1164 # 80006348 <CONSOLE_STATUS+0x338>
    80002ec4:	00000097          	auipc	ra,0x0
    80002ec8:	328080e7          	jalr	808(ra) # 800031ec <_Z11printStringPKc>
    80002ecc:	0400006f          	j	80002f0c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002ed0:	00003517          	auipc	a0,0x3
    80002ed4:	21850513          	addi	a0,a0,536 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002ed8:	00000097          	auipc	ra,0x0
    80002edc:	314080e7          	jalr	788(ra) # 800031ec <_Z11printStringPKc>
    80002ee0:	00000613          	li	a2,0
    80002ee4:	00a00593          	li	a1,10
    80002ee8:	00048513          	mv	a0,s1
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	4b0080e7          	jalr	1200(ra) # 8000339c <_Z8printIntiii>
    80002ef4:	00003517          	auipc	a0,0x3
    80002ef8:	45450513          	addi	a0,a0,1108 # 80006348 <CONSOLE_STATUS+0x338>
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	2f0080e7          	jalr	752(ra) # 800031ec <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002f04:	0014849b          	addiw	s1,s1,1
    80002f08:	0ff4f493          	andi	s1,s1,255
    80002f0c:	00500793          	li	a5,5
    80002f10:	fc97f0e3          	bgeu	a5,s1,80002ed0 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80002f14:	00003517          	auipc	a0,0x3
    80002f18:	29c50513          	addi	a0,a0,668 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80002f1c:	00000097          	auipc	ra,0x0
    80002f20:	2d0080e7          	jalr	720(ra) # 800031ec <_Z11printStringPKc>
    finishedC = true;
    80002f24:	00100793          	li	a5,1
    80002f28:	00004717          	auipc	a4,0x4
    80002f2c:	7af706a3          	sb	a5,1965(a4) # 800076d5 <_ZL9finishedC>
    thread_dispatch();
    80002f30:	ffffe097          	auipc	ra,0xffffe
    80002f34:	3c0080e7          	jalr	960(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002f38:	01813083          	ld	ra,24(sp)
    80002f3c:	01013403          	ld	s0,16(sp)
    80002f40:	00813483          	ld	s1,8(sp)
    80002f44:	00013903          	ld	s2,0(sp)
    80002f48:	02010113          	addi	sp,sp,32
    80002f4c:	00008067          	ret

0000000080002f50 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002f50:	fe010113          	addi	sp,sp,-32
    80002f54:	00113c23          	sd	ra,24(sp)
    80002f58:	00813823          	sd	s0,16(sp)
    80002f5c:	00913423          	sd	s1,8(sp)
    80002f60:	01213023          	sd	s2,0(sp)
    80002f64:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002f68:	00000913          	li	s2,0
    80002f6c:	0380006f          	j	80002fa4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80002f70:	ffffe097          	auipc	ra,0xffffe
    80002f74:	380080e7          	jalr	896(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002f78:	00148493          	addi	s1,s1,1
    80002f7c:	000027b7          	lui	a5,0x2
    80002f80:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002f84:	0097ee63          	bltu	a5,s1,80002fa0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002f88:	00000713          	li	a4,0
    80002f8c:	000077b7          	lui	a5,0x7
    80002f90:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002f94:	fce7eee3          	bltu	a5,a4,80002f70 <_ZL11workerBodyBPv+0x20>
    80002f98:	00170713          	addi	a4,a4,1
    80002f9c:	ff1ff06f          	j	80002f8c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002fa0:	00190913          	addi	s2,s2,1
    80002fa4:	00f00793          	li	a5,15
    80002fa8:	0527e063          	bltu	a5,s2,80002fe8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002fac:	00003517          	auipc	a0,0x3
    80002fb0:	12450513          	addi	a0,a0,292 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	238080e7          	jalr	568(ra) # 800031ec <_Z11printStringPKc>
    80002fbc:	00000613          	li	a2,0
    80002fc0:	00a00593          	li	a1,10
    80002fc4:	0009051b          	sext.w	a0,s2
    80002fc8:	00000097          	auipc	ra,0x0
    80002fcc:	3d4080e7          	jalr	980(ra) # 8000339c <_Z8printIntiii>
    80002fd0:	00003517          	auipc	a0,0x3
    80002fd4:	37850513          	addi	a0,a0,888 # 80006348 <CONSOLE_STATUS+0x338>
    80002fd8:	00000097          	auipc	ra,0x0
    80002fdc:	214080e7          	jalr	532(ra) # 800031ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002fe0:	00000493          	li	s1,0
    80002fe4:	f99ff06f          	j	80002f7c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002fe8:	00003517          	auipc	a0,0x3
    80002fec:	0f050513          	addi	a0,a0,240 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	1fc080e7          	jalr	508(ra) # 800031ec <_Z11printStringPKc>
    finishedB = true;
    80002ff8:	00100793          	li	a5,1
    80002ffc:	00004717          	auipc	a4,0x4
    80003000:	6cf70d23          	sb	a5,1754(a4) # 800076d6 <_ZL9finishedB>
    thread_dispatch();
    80003004:	ffffe097          	auipc	ra,0xffffe
    80003008:	2ec080e7          	jalr	748(ra) # 800012f0 <_Z15thread_dispatchv>
}
    8000300c:	01813083          	ld	ra,24(sp)
    80003010:	01013403          	ld	s0,16(sp)
    80003014:	00813483          	ld	s1,8(sp)
    80003018:	00013903          	ld	s2,0(sp)
    8000301c:	02010113          	addi	sp,sp,32
    80003020:	00008067          	ret

0000000080003024 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003024:	fe010113          	addi	sp,sp,-32
    80003028:	00113c23          	sd	ra,24(sp)
    8000302c:	00813823          	sd	s0,16(sp)
    80003030:	00913423          	sd	s1,8(sp)
    80003034:	01213023          	sd	s2,0(sp)
    80003038:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000303c:	00000913          	li	s2,0
    80003040:	0380006f          	j	80003078 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003044:	ffffe097          	auipc	ra,0xffffe
    80003048:	2ac080e7          	jalr	684(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000304c:	00148493          	addi	s1,s1,1
    80003050:	000027b7          	lui	a5,0x2
    80003054:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003058:	0097ee63          	bltu	a5,s1,80003074 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000305c:	00000713          	li	a4,0
    80003060:	000077b7          	lui	a5,0x7
    80003064:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003068:	fce7eee3          	bltu	a5,a4,80003044 <_ZL11workerBodyAPv+0x20>
    8000306c:	00170713          	addi	a4,a4,1
    80003070:	ff1ff06f          	j	80003060 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003074:	00190913          	addi	s2,s2,1
    80003078:	00900793          	li	a5,9
    8000307c:	0527e063          	bltu	a5,s2,800030bc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003080:	00003517          	auipc	a0,0x3
    80003084:	03850513          	addi	a0,a0,56 # 800060b8 <CONSOLE_STATUS+0xa8>
    80003088:	00000097          	auipc	ra,0x0
    8000308c:	164080e7          	jalr	356(ra) # 800031ec <_Z11printStringPKc>
    80003090:	00000613          	li	a2,0
    80003094:	00a00593          	li	a1,10
    80003098:	0009051b          	sext.w	a0,s2
    8000309c:	00000097          	auipc	ra,0x0
    800030a0:	300080e7          	jalr	768(ra) # 8000339c <_Z8printIntiii>
    800030a4:	00003517          	auipc	a0,0x3
    800030a8:	2a450513          	addi	a0,a0,676 # 80006348 <CONSOLE_STATUS+0x338>
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	140080e7          	jalr	320(ra) # 800031ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800030b4:	00000493          	li	s1,0
    800030b8:	f99ff06f          	j	80003050 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800030bc:	00003517          	auipc	a0,0x3
    800030c0:	00450513          	addi	a0,a0,4 # 800060c0 <CONSOLE_STATUS+0xb0>
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	128080e7          	jalr	296(ra) # 800031ec <_Z11printStringPKc>
    finishedA = true;
    800030cc:	00100793          	li	a5,1
    800030d0:	00004717          	auipc	a4,0x4
    800030d4:	60f703a3          	sb	a5,1543(a4) # 800076d7 <_ZL9finishedA>
}
    800030d8:	01813083          	ld	ra,24(sp)
    800030dc:	01013403          	ld	s0,16(sp)
    800030e0:	00813483          	ld	s1,8(sp)
    800030e4:	00013903          	ld	s2,0(sp)
    800030e8:	02010113          	addi	sp,sp,32
    800030ec:	00008067          	ret

00000000800030f0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800030f0:	fd010113          	addi	sp,sp,-48
    800030f4:	02113423          	sd	ra,40(sp)
    800030f8:	02813023          	sd	s0,32(sp)
    800030fc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003100:	00000613          	li	a2,0
    80003104:	00000597          	auipc	a1,0x0
    80003108:	f2058593          	addi	a1,a1,-224 # 80003024 <_ZL11workerBodyAPv>
    8000310c:	fd040513          	addi	a0,s0,-48
    80003110:	ffffe097          	auipc	ra,0xffffe
    80003114:	10c080e7          	jalr	268(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80003118:	00003517          	auipc	a0,0x3
    8000311c:	03850513          	addi	a0,a0,56 # 80006150 <CONSOLE_STATUS+0x140>
    80003120:	00000097          	auipc	ra,0x0
    80003124:	0cc080e7          	jalr	204(ra) # 800031ec <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003128:	00000613          	li	a2,0
    8000312c:	00000597          	auipc	a1,0x0
    80003130:	e2458593          	addi	a1,a1,-476 # 80002f50 <_ZL11workerBodyBPv>
    80003134:	fd840513          	addi	a0,s0,-40
    80003138:	ffffe097          	auipc	ra,0xffffe
    8000313c:	0e4080e7          	jalr	228(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    80003140:	00003517          	auipc	a0,0x3
    80003144:	02850513          	addi	a0,a0,40 # 80006168 <CONSOLE_STATUS+0x158>
    80003148:	00000097          	auipc	ra,0x0
    8000314c:	0a4080e7          	jalr	164(ra) # 800031ec <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003150:	00000613          	li	a2,0
    80003154:	00000597          	auipc	a1,0x0
    80003158:	c7c58593          	addi	a1,a1,-900 # 80002dd0 <_ZL11workerBodyCPv>
    8000315c:	fe040513          	addi	a0,s0,-32
    80003160:	ffffe097          	auipc	ra,0xffffe
    80003164:	0bc080e7          	jalr	188(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    80003168:	00003517          	auipc	a0,0x3
    8000316c:	01850513          	addi	a0,a0,24 # 80006180 <CONSOLE_STATUS+0x170>
    80003170:	00000097          	auipc	ra,0x0
    80003174:	07c080e7          	jalr	124(ra) # 800031ec <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003178:	00000613          	li	a2,0
    8000317c:	00000597          	auipc	a1,0x0
    80003180:	b0c58593          	addi	a1,a1,-1268 # 80002c88 <_ZL11workerBodyDPv>
    80003184:	fe840513          	addi	a0,s0,-24
    80003188:	ffffe097          	auipc	ra,0xffffe
    8000318c:	094080e7          	jalr	148(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    80003190:	00003517          	auipc	a0,0x3
    80003194:	00850513          	addi	a0,a0,8 # 80006198 <CONSOLE_STATUS+0x188>
    80003198:	00000097          	auipc	ra,0x0
    8000319c:	054080e7          	jalr	84(ra) # 800031ec <_Z11printStringPKc>
    800031a0:	00c0006f          	j	800031ac <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800031a4:	ffffe097          	auipc	ra,0xffffe
    800031a8:	14c080e7          	jalr	332(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800031ac:	00004797          	auipc	a5,0x4
    800031b0:	52b7c783          	lbu	a5,1323(a5) # 800076d7 <_ZL9finishedA>
    800031b4:	fe0788e3          	beqz	a5,800031a4 <_Z18Threads_C_API_testv+0xb4>
    800031b8:	00004797          	auipc	a5,0x4
    800031bc:	51e7c783          	lbu	a5,1310(a5) # 800076d6 <_ZL9finishedB>
    800031c0:	fe0782e3          	beqz	a5,800031a4 <_Z18Threads_C_API_testv+0xb4>
    800031c4:	00004797          	auipc	a5,0x4
    800031c8:	5117c783          	lbu	a5,1297(a5) # 800076d5 <_ZL9finishedC>
    800031cc:	fc078ce3          	beqz	a5,800031a4 <_Z18Threads_C_API_testv+0xb4>
    800031d0:	00004797          	auipc	a5,0x4
    800031d4:	5047c783          	lbu	a5,1284(a5) # 800076d4 <_ZL9finishedD>
    800031d8:	fc0786e3          	beqz	a5,800031a4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800031dc:	02813083          	ld	ra,40(sp)
    800031e0:	02013403          	ld	s0,32(sp)
    800031e4:	03010113          	addi	sp,sp,48
    800031e8:	00008067          	ret

00000000800031ec <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800031ec:	fe010113          	addi	sp,sp,-32
    800031f0:	00113c23          	sd	ra,24(sp)
    800031f4:	00813823          	sd	s0,16(sp)
    800031f8:	00913423          	sd	s1,8(sp)
    800031fc:	02010413          	addi	s0,sp,32
    80003200:	00050493          	mv	s1,a0
    LOCK();
    80003204:	00100613          	li	a2,1
    80003208:	00000593          	li	a1,0
    8000320c:	00004517          	auipc	a0,0x4
    80003210:	4cc50513          	addi	a0,a0,1228 # 800076d8 <lockPrint>
    80003214:	ffffe097          	auipc	ra,0xffffe
    80003218:	f30080e7          	jalr	-208(ra) # 80001144 <copy_and_swap>
    8000321c:	00050863          	beqz	a0,8000322c <_Z11printStringPKc+0x40>
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	0d0080e7          	jalr	208(ra) # 800012f0 <_Z15thread_dispatchv>
    80003228:	fddff06f          	j	80003204 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000322c:	0004c503          	lbu	a0,0(s1)
    80003230:	00050a63          	beqz	a0,80003244 <_Z11printStringPKc+0x58>
    {
        __putc(*string);
    80003234:	00003097          	auipc	ra,0x3
    80003238:	c98080e7          	jalr	-872(ra) # 80005ecc <__putc>
        string++;
    8000323c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003240:	fedff06f          	j	8000322c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80003244:	00000613          	li	a2,0
    80003248:	00100593          	li	a1,1
    8000324c:	00004517          	auipc	a0,0x4
    80003250:	48c50513          	addi	a0,a0,1164 # 800076d8 <lockPrint>
    80003254:	ffffe097          	auipc	ra,0xffffe
    80003258:	ef0080e7          	jalr	-272(ra) # 80001144 <copy_and_swap>
    8000325c:	fe0514e3          	bnez	a0,80003244 <_Z11printStringPKc+0x58>
}
    80003260:	01813083          	ld	ra,24(sp)
    80003264:	01013403          	ld	s0,16(sp)
    80003268:	00813483          	ld	s1,8(sp)
    8000326c:	02010113          	addi	sp,sp,32
    80003270:	00008067          	ret

0000000080003274 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003274:	fd010113          	addi	sp,sp,-48
    80003278:	02113423          	sd	ra,40(sp)
    8000327c:	02813023          	sd	s0,32(sp)
    80003280:	00913c23          	sd	s1,24(sp)
    80003284:	01213823          	sd	s2,16(sp)
    80003288:	01313423          	sd	s3,8(sp)
    8000328c:	01413023          	sd	s4,0(sp)
    80003290:	03010413          	addi	s0,sp,48
    80003294:	00050993          	mv	s3,a0
    80003298:	00058a13          	mv	s4,a1
    LOCK();
    8000329c:	00100613          	li	a2,1
    800032a0:	00000593          	li	a1,0
    800032a4:	00004517          	auipc	a0,0x4
    800032a8:	43450513          	addi	a0,a0,1076 # 800076d8 <lockPrint>
    800032ac:	ffffe097          	auipc	ra,0xffffe
    800032b0:	e98080e7          	jalr	-360(ra) # 80001144 <copy_and_swap>
    800032b4:	00050863          	beqz	a0,800032c4 <_Z9getStringPci+0x50>
    800032b8:	ffffe097          	auipc	ra,0xffffe
    800032bc:	038080e7          	jalr	56(ra) # 800012f0 <_Z15thread_dispatchv>
    800032c0:	fddff06f          	j	8000329c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800032c4:	00000913          	li	s2,0
    800032c8:	00090493          	mv	s1,s2
    800032cc:	0019091b          	addiw	s2,s2,1
    800032d0:	03495a63          	bge	s2,s4,80003304 <_Z9getStringPci+0x90>
        cc = __getc();
    800032d4:	00003097          	auipc	ra,0x3
    800032d8:	c34080e7          	jalr	-972(ra) # 80005f08 <__getc>
        if(cc < 1)
    800032dc:	02050463          	beqz	a0,80003304 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800032e0:	009984b3          	add	s1,s3,s1
    800032e4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800032e8:	00a00793          	li	a5,10
    800032ec:	00f50a63          	beq	a0,a5,80003300 <_Z9getStringPci+0x8c>
    800032f0:	00d00793          	li	a5,13
    800032f4:	fcf51ae3          	bne	a0,a5,800032c8 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800032f8:	00090493          	mv	s1,s2
    800032fc:	0080006f          	j	80003304 <_Z9getStringPci+0x90>
    80003300:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003304:	009984b3          	add	s1,s3,s1
    80003308:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000330c:	00000613          	li	a2,0
    80003310:	00100593          	li	a1,1
    80003314:	00004517          	auipc	a0,0x4
    80003318:	3c450513          	addi	a0,a0,964 # 800076d8 <lockPrint>
    8000331c:	ffffe097          	auipc	ra,0xffffe
    80003320:	e28080e7          	jalr	-472(ra) # 80001144 <copy_and_swap>
    80003324:	fe0514e3          	bnez	a0,8000330c <_Z9getStringPci+0x98>
    return buf;
}
    80003328:	00098513          	mv	a0,s3
    8000332c:	02813083          	ld	ra,40(sp)
    80003330:	02013403          	ld	s0,32(sp)
    80003334:	01813483          	ld	s1,24(sp)
    80003338:	01013903          	ld	s2,16(sp)
    8000333c:	00813983          	ld	s3,8(sp)
    80003340:	00013a03          	ld	s4,0(sp)
    80003344:	03010113          	addi	sp,sp,48
    80003348:	00008067          	ret

000000008000334c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000334c:	ff010113          	addi	sp,sp,-16
    80003350:	00813423          	sd	s0,8(sp)
    80003354:	01010413          	addi	s0,sp,16
    80003358:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000335c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003360:	0006c603          	lbu	a2,0(a3)
    80003364:	fd06071b          	addiw	a4,a2,-48
    80003368:	0ff77713          	andi	a4,a4,255
    8000336c:	00900793          	li	a5,9
    80003370:	02e7e063          	bltu	a5,a4,80003390 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003374:	0025179b          	slliw	a5,a0,0x2
    80003378:	00a787bb          	addw	a5,a5,a0
    8000337c:	0017979b          	slliw	a5,a5,0x1
    80003380:	00168693          	addi	a3,a3,1
    80003384:	00c787bb          	addw	a5,a5,a2
    80003388:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000338c:	fd5ff06f          	j	80003360 <_Z11stringToIntPKc+0x14>
    return n;
}
    80003390:	00813403          	ld	s0,8(sp)
    80003394:	01010113          	addi	sp,sp,16
    80003398:	00008067          	ret

000000008000339c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000339c:	fc010113          	addi	sp,sp,-64
    800033a0:	02113c23          	sd	ra,56(sp)
    800033a4:	02813823          	sd	s0,48(sp)
    800033a8:	02913423          	sd	s1,40(sp)
    800033ac:	03213023          	sd	s2,32(sp)
    800033b0:	01313c23          	sd	s3,24(sp)
    800033b4:	04010413          	addi	s0,sp,64
    800033b8:	00050493          	mv	s1,a0
    800033bc:	00058913          	mv	s2,a1
    800033c0:	00060993          	mv	s3,a2
    LOCK();
    800033c4:	00100613          	li	a2,1
    800033c8:	00000593          	li	a1,0
    800033cc:	00004517          	auipc	a0,0x4
    800033d0:	30c50513          	addi	a0,a0,780 # 800076d8 <lockPrint>
    800033d4:	ffffe097          	auipc	ra,0xffffe
    800033d8:	d70080e7          	jalr	-656(ra) # 80001144 <copy_and_swap>
    800033dc:	00050863          	beqz	a0,800033ec <_Z8printIntiii+0x50>
    800033e0:	ffffe097          	auipc	ra,0xffffe
    800033e4:	f10080e7          	jalr	-240(ra) # 800012f0 <_Z15thread_dispatchv>
    800033e8:	fddff06f          	j	800033c4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800033ec:	00098463          	beqz	s3,800033f4 <_Z8printIntiii+0x58>
    800033f0:	0804c463          	bltz	s1,80003478 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800033f4:	0004851b          	sext.w	a0,s1
    neg = 0;
    800033f8:	00000593          	li	a1,0
    }

    i = 0;
    800033fc:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003400:	0009079b          	sext.w	a5,s2
    80003404:	0325773b          	remuw	a4,a0,s2
    80003408:	00048613          	mv	a2,s1
    8000340c:	0014849b          	addiw	s1,s1,1
    80003410:	02071693          	slli	a3,a4,0x20
    80003414:	0206d693          	srli	a3,a3,0x20
    80003418:	00004717          	auipc	a4,0x4
    8000341c:	1f870713          	addi	a4,a4,504 # 80007610 <digits>
    80003420:	00d70733          	add	a4,a4,a3
    80003424:	00074683          	lbu	a3,0(a4)
    80003428:	fd040713          	addi	a4,s0,-48
    8000342c:	00c70733          	add	a4,a4,a2
    80003430:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003434:	0005071b          	sext.w	a4,a0
    80003438:	0325553b          	divuw	a0,a0,s2
    8000343c:	fcf772e3          	bgeu	a4,a5,80003400 <_Z8printIntiii+0x64>
    if(neg)
    80003440:	00058c63          	beqz	a1,80003458 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80003444:	fd040793          	addi	a5,s0,-48
    80003448:	009784b3          	add	s1,a5,s1
    8000344c:	02d00793          	li	a5,45
    80003450:	fef48823          	sb	a5,-16(s1)
    80003454:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003458:	fff4849b          	addiw	s1,s1,-1
    8000345c:	0204c463          	bltz	s1,80003484 <_Z8printIntiii+0xe8>
        __putc(buf[i]);
    80003460:	fd040793          	addi	a5,s0,-48
    80003464:	009787b3          	add	a5,a5,s1
    80003468:	ff07c503          	lbu	a0,-16(a5)
    8000346c:	00003097          	auipc	ra,0x3
    80003470:	a60080e7          	jalr	-1440(ra) # 80005ecc <__putc>
    80003474:	fe5ff06f          	j	80003458 <_Z8printIntiii+0xbc>
        x = -xx;
    80003478:	4090053b          	negw	a0,s1
        neg = 1;
    8000347c:	00100593          	li	a1,1
        x = -xx;
    80003480:	f7dff06f          	j	800033fc <_Z8printIntiii+0x60>

    UNLOCK();
    80003484:	00000613          	li	a2,0
    80003488:	00100593          	li	a1,1
    8000348c:	00004517          	auipc	a0,0x4
    80003490:	24c50513          	addi	a0,a0,588 # 800076d8 <lockPrint>
    80003494:	ffffe097          	auipc	ra,0xffffe
    80003498:	cb0080e7          	jalr	-848(ra) # 80001144 <copy_and_swap>
    8000349c:	fe0514e3          	bnez	a0,80003484 <_Z8printIntiii+0xe8>
    800034a0:	03813083          	ld	ra,56(sp)
    800034a4:	03013403          	ld	s0,48(sp)
    800034a8:	02813483          	ld	s1,40(sp)
    800034ac:	02013903          	ld	s2,32(sp)
    800034b0:	01813983          	ld	s3,24(sp)
    800034b4:	04010113          	addi	sp,sp,64
    800034b8:	00008067          	ret

00000000800034bc <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800034bc:	ff010113          	addi	sp,sp,-16
    800034c0:	00113423          	sd	ra,8(sp)
    800034c4:	00813023          	sd	s0,0(sp)
    800034c8:	01010413          	addi	s0,sp,16
    printString("Unesite broj testa? [1-7]\n");
    800034cc:	00003517          	auipc	a0,0x3
    800034d0:	cf450513          	addi	a0,a0,-780 # 800061c0 <CONSOLE_STATUS+0x1b0>
    800034d4:	00000097          	auipc	ra,0x0
    800034d8:	d18080e7          	jalr	-744(ra) # 800031ec <_Z11printStringPKc>
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	c14080e7          	jalr	-1004(ra) # 800030f0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800034e4:	00003517          	auipc	a0,0x3
    800034e8:	cfc50513          	addi	a0,a0,-772 # 800061e0 <CONSOLE_STATUS+0x1d0>
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	d00080e7          	jalr	-768(ra) # 800031ec <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800034f4:	00813083          	ld	ra,8(sp)
    800034f8:	00013403          	ld	s0,0(sp)
    800034fc:	01010113          	addi	sp,sp,16
    80003500:	00008067          	ret

0000000080003504 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003504:	fe010113          	addi	sp,sp,-32
    80003508:	00113c23          	sd	ra,24(sp)
    8000350c:	00813823          	sd	s0,16(sp)
    80003510:	00913423          	sd	s1,8(sp)
    80003514:	01213023          	sd	s2,0(sp)
    80003518:	02010413          	addi	s0,sp,32
    8000351c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003520:	00100793          	li	a5,1
    80003524:	02a7f863          	bgeu	a5,a0,80003554 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003528:	00a00793          	li	a5,10
    8000352c:	02f577b3          	remu	a5,a0,a5
    80003530:	02078e63          	beqz	a5,8000356c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003534:	fff48513          	addi	a0,s1,-1
    80003538:	00000097          	auipc	ra,0x0
    8000353c:	fcc080e7          	jalr	-52(ra) # 80003504 <_ZL9fibonaccim>
    80003540:	00050913          	mv	s2,a0
    80003544:	ffe48513          	addi	a0,s1,-2
    80003548:	00000097          	auipc	ra,0x0
    8000354c:	fbc080e7          	jalr	-68(ra) # 80003504 <_ZL9fibonaccim>
    80003550:	00a90533          	add	a0,s2,a0
}
    80003554:	01813083          	ld	ra,24(sp)
    80003558:	01013403          	ld	s0,16(sp)
    8000355c:	00813483          	ld	s1,8(sp)
    80003560:	00013903          	ld	s2,0(sp)
    80003564:	02010113          	addi	sp,sp,32
    80003568:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000356c:	ffffe097          	auipc	ra,0xffffe
    80003570:	d84080e7          	jalr	-636(ra) # 800012f0 <_Z15thread_dispatchv>
    80003574:	fc1ff06f          	j	80003534 <_ZL9fibonaccim+0x30>

0000000080003578 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003578:	fe010113          	addi	sp,sp,-32
    8000357c:	00113c23          	sd	ra,24(sp)
    80003580:	00813823          	sd	s0,16(sp)
    80003584:	00913423          	sd	s1,8(sp)
    80003588:	01213023          	sd	s2,0(sp)
    8000358c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003590:	00a00493          	li	s1,10
    80003594:	0400006f          	j	800035d4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003598:	00003517          	auipc	a0,0x3
    8000359c:	b8050513          	addi	a0,a0,-1152 # 80006118 <CONSOLE_STATUS+0x108>
    800035a0:	00000097          	auipc	ra,0x0
    800035a4:	c4c080e7          	jalr	-948(ra) # 800031ec <_Z11printStringPKc>
    800035a8:	00000613          	li	a2,0
    800035ac:	00a00593          	li	a1,10
    800035b0:	00048513          	mv	a0,s1
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	de8080e7          	jalr	-536(ra) # 8000339c <_Z8printIntiii>
    800035bc:	00003517          	auipc	a0,0x3
    800035c0:	d8c50513          	addi	a0,a0,-628 # 80006348 <CONSOLE_STATUS+0x338>
    800035c4:	00000097          	auipc	ra,0x0
    800035c8:	c28080e7          	jalr	-984(ra) # 800031ec <_Z11printStringPKc>
    for (; i < 13; i++) {
    800035cc:	0014849b          	addiw	s1,s1,1
    800035d0:	0ff4f493          	andi	s1,s1,255
    800035d4:	00c00793          	li	a5,12
    800035d8:	fc97f0e3          	bgeu	a5,s1,80003598 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800035dc:	00003517          	auipc	a0,0x3
    800035e0:	b4450513          	addi	a0,a0,-1212 # 80006120 <CONSOLE_STATUS+0x110>
    800035e4:	00000097          	auipc	ra,0x0
    800035e8:	c08080e7          	jalr	-1016(ra) # 800031ec <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800035ec:	00500313          	li	t1,5
    thread_dispatch();
    800035f0:	ffffe097          	auipc	ra,0xffffe
    800035f4:	d00080e7          	jalr	-768(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800035f8:	01000513          	li	a0,16
    800035fc:	00000097          	auipc	ra,0x0
    80003600:	f08080e7          	jalr	-248(ra) # 80003504 <_ZL9fibonaccim>
    80003604:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003608:	00003517          	auipc	a0,0x3
    8000360c:	b2850513          	addi	a0,a0,-1240 # 80006130 <CONSOLE_STATUS+0x120>
    80003610:	00000097          	auipc	ra,0x0
    80003614:	bdc080e7          	jalr	-1060(ra) # 800031ec <_Z11printStringPKc>
    80003618:	00000613          	li	a2,0
    8000361c:	00a00593          	li	a1,10
    80003620:	0009051b          	sext.w	a0,s2
    80003624:	00000097          	auipc	ra,0x0
    80003628:	d78080e7          	jalr	-648(ra) # 8000339c <_Z8printIntiii>
    8000362c:	00003517          	auipc	a0,0x3
    80003630:	d1c50513          	addi	a0,a0,-740 # 80006348 <CONSOLE_STATUS+0x338>
    80003634:	00000097          	auipc	ra,0x0
    80003638:	bb8080e7          	jalr	-1096(ra) # 800031ec <_Z11printStringPKc>
    8000363c:	0400006f          	j	8000367c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003640:	00003517          	auipc	a0,0x3
    80003644:	ad850513          	addi	a0,a0,-1320 # 80006118 <CONSOLE_STATUS+0x108>
    80003648:	00000097          	auipc	ra,0x0
    8000364c:	ba4080e7          	jalr	-1116(ra) # 800031ec <_Z11printStringPKc>
    80003650:	00000613          	li	a2,0
    80003654:	00a00593          	li	a1,10
    80003658:	00048513          	mv	a0,s1
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	d40080e7          	jalr	-704(ra) # 8000339c <_Z8printIntiii>
    80003664:	00003517          	auipc	a0,0x3
    80003668:	ce450513          	addi	a0,a0,-796 # 80006348 <CONSOLE_STATUS+0x338>
    8000366c:	00000097          	auipc	ra,0x0
    80003670:	b80080e7          	jalr	-1152(ra) # 800031ec <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003674:	0014849b          	addiw	s1,s1,1
    80003678:	0ff4f493          	andi	s1,s1,255
    8000367c:	00f00793          	li	a5,15
    80003680:	fc97f0e3          	bgeu	a5,s1,80003640 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003684:	00003517          	auipc	a0,0x3
    80003688:	abc50513          	addi	a0,a0,-1348 # 80006140 <CONSOLE_STATUS+0x130>
    8000368c:	00000097          	auipc	ra,0x0
    80003690:	b60080e7          	jalr	-1184(ra) # 800031ec <_Z11printStringPKc>
    finishedD = true;
    80003694:	00100793          	li	a5,1
    80003698:	00004717          	auipc	a4,0x4
    8000369c:	04f70423          	sb	a5,72(a4) # 800076e0 <_ZL9finishedD>
    thread_dispatch();
    800036a0:	ffffe097          	auipc	ra,0xffffe
    800036a4:	c50080e7          	jalr	-944(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800036a8:	01813083          	ld	ra,24(sp)
    800036ac:	01013403          	ld	s0,16(sp)
    800036b0:	00813483          	ld	s1,8(sp)
    800036b4:	00013903          	ld	s2,0(sp)
    800036b8:	02010113          	addi	sp,sp,32
    800036bc:	00008067          	ret

00000000800036c0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800036c0:	fe010113          	addi	sp,sp,-32
    800036c4:	00113c23          	sd	ra,24(sp)
    800036c8:	00813823          	sd	s0,16(sp)
    800036cc:	00913423          	sd	s1,8(sp)
    800036d0:	01213023          	sd	s2,0(sp)
    800036d4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800036d8:	00000493          	li	s1,0
    800036dc:	0400006f          	j	8000371c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800036e0:	00003517          	auipc	a0,0x3
    800036e4:	a0850513          	addi	a0,a0,-1528 # 800060e8 <CONSOLE_STATUS+0xd8>
    800036e8:	00000097          	auipc	ra,0x0
    800036ec:	b04080e7          	jalr	-1276(ra) # 800031ec <_Z11printStringPKc>
    800036f0:	00000613          	li	a2,0
    800036f4:	00a00593          	li	a1,10
    800036f8:	00048513          	mv	a0,s1
    800036fc:	00000097          	auipc	ra,0x0
    80003700:	ca0080e7          	jalr	-864(ra) # 8000339c <_Z8printIntiii>
    80003704:	00003517          	auipc	a0,0x3
    80003708:	c4450513          	addi	a0,a0,-956 # 80006348 <CONSOLE_STATUS+0x338>
    8000370c:	00000097          	auipc	ra,0x0
    80003710:	ae0080e7          	jalr	-1312(ra) # 800031ec <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003714:	0014849b          	addiw	s1,s1,1
    80003718:	0ff4f493          	andi	s1,s1,255
    8000371c:	00200793          	li	a5,2
    80003720:	fc97f0e3          	bgeu	a5,s1,800036e0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003724:	00003517          	auipc	a0,0x3
    80003728:	9cc50513          	addi	a0,a0,-1588 # 800060f0 <CONSOLE_STATUS+0xe0>
    8000372c:	00000097          	auipc	ra,0x0
    80003730:	ac0080e7          	jalr	-1344(ra) # 800031ec <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003734:	00700313          	li	t1,7
    thread_dispatch();
    80003738:	ffffe097          	auipc	ra,0xffffe
    8000373c:	bb8080e7          	jalr	-1096(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003740:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003744:	00003517          	auipc	a0,0x3
    80003748:	9bc50513          	addi	a0,a0,-1604 # 80006100 <CONSOLE_STATUS+0xf0>
    8000374c:	00000097          	auipc	ra,0x0
    80003750:	aa0080e7          	jalr	-1376(ra) # 800031ec <_Z11printStringPKc>
    80003754:	00000613          	li	a2,0
    80003758:	00a00593          	li	a1,10
    8000375c:	0009051b          	sext.w	a0,s2
    80003760:	00000097          	auipc	ra,0x0
    80003764:	c3c080e7          	jalr	-964(ra) # 8000339c <_Z8printIntiii>
    80003768:	00003517          	auipc	a0,0x3
    8000376c:	be050513          	addi	a0,a0,-1056 # 80006348 <CONSOLE_STATUS+0x338>
    80003770:	00000097          	auipc	ra,0x0
    80003774:	a7c080e7          	jalr	-1412(ra) # 800031ec <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003778:	00c00513          	li	a0,12
    8000377c:	00000097          	auipc	ra,0x0
    80003780:	d88080e7          	jalr	-632(ra) # 80003504 <_ZL9fibonaccim>
    80003784:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003788:	00003517          	auipc	a0,0x3
    8000378c:	98050513          	addi	a0,a0,-1664 # 80006108 <CONSOLE_STATUS+0xf8>
    80003790:	00000097          	auipc	ra,0x0
    80003794:	a5c080e7          	jalr	-1444(ra) # 800031ec <_Z11printStringPKc>
    80003798:	00000613          	li	a2,0
    8000379c:	00a00593          	li	a1,10
    800037a0:	0009051b          	sext.w	a0,s2
    800037a4:	00000097          	auipc	ra,0x0
    800037a8:	bf8080e7          	jalr	-1032(ra) # 8000339c <_Z8printIntiii>
    800037ac:	00003517          	auipc	a0,0x3
    800037b0:	b9c50513          	addi	a0,a0,-1124 # 80006348 <CONSOLE_STATUS+0x338>
    800037b4:	00000097          	auipc	ra,0x0
    800037b8:	a38080e7          	jalr	-1480(ra) # 800031ec <_Z11printStringPKc>
    800037bc:	0400006f          	j	800037fc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800037c0:	00003517          	auipc	a0,0x3
    800037c4:	92850513          	addi	a0,a0,-1752 # 800060e8 <CONSOLE_STATUS+0xd8>
    800037c8:	00000097          	auipc	ra,0x0
    800037cc:	a24080e7          	jalr	-1500(ra) # 800031ec <_Z11printStringPKc>
    800037d0:	00000613          	li	a2,0
    800037d4:	00a00593          	li	a1,10
    800037d8:	00048513          	mv	a0,s1
    800037dc:	00000097          	auipc	ra,0x0
    800037e0:	bc0080e7          	jalr	-1088(ra) # 8000339c <_Z8printIntiii>
    800037e4:	00003517          	auipc	a0,0x3
    800037e8:	b6450513          	addi	a0,a0,-1180 # 80006348 <CONSOLE_STATUS+0x338>
    800037ec:	00000097          	auipc	ra,0x0
    800037f0:	a00080e7          	jalr	-1536(ra) # 800031ec <_Z11printStringPKc>
    for (; i < 6; i++) {
    800037f4:	0014849b          	addiw	s1,s1,1
    800037f8:	0ff4f493          	andi	s1,s1,255
    800037fc:	00500793          	li	a5,5
    80003800:	fc97f0e3          	bgeu	a5,s1,800037c0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003804:	00003517          	auipc	a0,0x3
    80003808:	8bc50513          	addi	a0,a0,-1860 # 800060c0 <CONSOLE_STATUS+0xb0>
    8000380c:	00000097          	auipc	ra,0x0
    80003810:	9e0080e7          	jalr	-1568(ra) # 800031ec <_Z11printStringPKc>
    finishedC = true;
    80003814:	00100793          	li	a5,1
    80003818:	00004717          	auipc	a4,0x4
    8000381c:	ecf704a3          	sb	a5,-311(a4) # 800076e1 <_ZL9finishedC>
    thread_dispatch();
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	ad0080e7          	jalr	-1328(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003828:	01813083          	ld	ra,24(sp)
    8000382c:	01013403          	ld	s0,16(sp)
    80003830:	00813483          	ld	s1,8(sp)
    80003834:	00013903          	ld	s2,0(sp)
    80003838:	02010113          	addi	sp,sp,32
    8000383c:	00008067          	ret

0000000080003840 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003840:	fe010113          	addi	sp,sp,-32
    80003844:	00113c23          	sd	ra,24(sp)
    80003848:	00813823          	sd	s0,16(sp)
    8000384c:	00913423          	sd	s1,8(sp)
    80003850:	01213023          	sd	s2,0(sp)
    80003854:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003858:	00000913          	li	s2,0
    8000385c:	0400006f          	j	8000389c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	a90080e7          	jalr	-1392(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003868:	00148493          	addi	s1,s1,1
    8000386c:	000027b7          	lui	a5,0x2
    80003870:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003874:	0097ee63          	bltu	a5,s1,80003890 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003878:	00000713          	li	a4,0
    8000387c:	000077b7          	lui	a5,0x7
    80003880:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003884:	fce7eee3          	bltu	a5,a4,80003860 <_ZL11workerBodyBPv+0x20>
    80003888:	00170713          	addi	a4,a4,1
    8000388c:	ff1ff06f          	j	8000387c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003890:	00a00793          	li	a5,10
    80003894:	04f90663          	beq	s2,a5,800038e0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003898:	00190913          	addi	s2,s2,1
    8000389c:	00f00793          	li	a5,15
    800038a0:	0527e463          	bltu	a5,s2,800038e8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800038a4:	00003517          	auipc	a0,0x3
    800038a8:	82c50513          	addi	a0,a0,-2004 # 800060d0 <CONSOLE_STATUS+0xc0>
    800038ac:	00000097          	auipc	ra,0x0
    800038b0:	940080e7          	jalr	-1728(ra) # 800031ec <_Z11printStringPKc>
    800038b4:	00000613          	li	a2,0
    800038b8:	00a00593          	li	a1,10
    800038bc:	0009051b          	sext.w	a0,s2
    800038c0:	00000097          	auipc	ra,0x0
    800038c4:	adc080e7          	jalr	-1316(ra) # 8000339c <_Z8printIntiii>
    800038c8:	00003517          	auipc	a0,0x3
    800038cc:	a8050513          	addi	a0,a0,-1408 # 80006348 <CONSOLE_STATUS+0x338>
    800038d0:	00000097          	auipc	ra,0x0
    800038d4:	91c080e7          	jalr	-1764(ra) # 800031ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800038d8:	00000493          	li	s1,0
    800038dc:	f91ff06f          	j	8000386c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800038e0:	14102ff3          	csrr	t6,sepc
    800038e4:	fb5ff06f          	j	80003898 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800038e8:	00002517          	auipc	a0,0x2
    800038ec:	7f050513          	addi	a0,a0,2032 # 800060d8 <CONSOLE_STATUS+0xc8>
    800038f0:	00000097          	auipc	ra,0x0
    800038f4:	8fc080e7          	jalr	-1796(ra) # 800031ec <_Z11printStringPKc>
    finishedB = true;
    800038f8:	00100793          	li	a5,1
    800038fc:	00004717          	auipc	a4,0x4
    80003900:	def70323          	sb	a5,-538(a4) # 800076e2 <_ZL9finishedB>
    thread_dispatch();
    80003904:	ffffe097          	auipc	ra,0xffffe
    80003908:	9ec080e7          	jalr	-1556(ra) # 800012f0 <_Z15thread_dispatchv>
}
    8000390c:	01813083          	ld	ra,24(sp)
    80003910:	01013403          	ld	s0,16(sp)
    80003914:	00813483          	ld	s1,8(sp)
    80003918:	00013903          	ld	s2,0(sp)
    8000391c:	02010113          	addi	sp,sp,32
    80003920:	00008067          	ret

0000000080003924 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003924:	fe010113          	addi	sp,sp,-32
    80003928:	00113c23          	sd	ra,24(sp)
    8000392c:	00813823          	sd	s0,16(sp)
    80003930:	00913423          	sd	s1,8(sp)
    80003934:	01213023          	sd	s2,0(sp)
    80003938:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000393c:	00000913          	li	s2,0
    80003940:	0380006f          	j	80003978 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003944:	ffffe097          	auipc	ra,0xffffe
    80003948:	9ac080e7          	jalr	-1620(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000394c:	00148493          	addi	s1,s1,1
    80003950:	000027b7          	lui	a5,0x2
    80003954:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003958:	0097ee63          	bltu	a5,s1,80003974 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000395c:	00000713          	li	a4,0
    80003960:	000077b7          	lui	a5,0x7
    80003964:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003968:	fce7eee3          	bltu	a5,a4,80003944 <_ZL11workerBodyAPv+0x20>
    8000396c:	00170713          	addi	a4,a4,1
    80003970:	ff1ff06f          	j	80003960 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003974:	00190913          	addi	s2,s2,1
    80003978:	00900793          	li	a5,9
    8000397c:	0527e063          	bltu	a5,s2,800039bc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003980:	00002517          	auipc	a0,0x2
    80003984:	73850513          	addi	a0,a0,1848 # 800060b8 <CONSOLE_STATUS+0xa8>
    80003988:	00000097          	auipc	ra,0x0
    8000398c:	864080e7          	jalr	-1948(ra) # 800031ec <_Z11printStringPKc>
    80003990:	00000613          	li	a2,0
    80003994:	00a00593          	li	a1,10
    80003998:	0009051b          	sext.w	a0,s2
    8000399c:	00000097          	auipc	ra,0x0
    800039a0:	a00080e7          	jalr	-1536(ra) # 8000339c <_Z8printIntiii>
    800039a4:	00003517          	auipc	a0,0x3
    800039a8:	9a450513          	addi	a0,a0,-1628 # 80006348 <CONSOLE_STATUS+0x338>
    800039ac:	00000097          	auipc	ra,0x0
    800039b0:	840080e7          	jalr	-1984(ra) # 800031ec <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800039b4:	00000493          	li	s1,0
    800039b8:	f99ff06f          	j	80003950 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800039bc:	00002517          	auipc	a0,0x2
    800039c0:	70450513          	addi	a0,a0,1796 # 800060c0 <CONSOLE_STATUS+0xb0>
    800039c4:	00000097          	auipc	ra,0x0
    800039c8:	828080e7          	jalr	-2008(ra) # 800031ec <_Z11printStringPKc>
    finishedA = true;
    800039cc:	00100793          	li	a5,1
    800039d0:	00004717          	auipc	a4,0x4
    800039d4:	d0f709a3          	sb	a5,-749(a4) # 800076e3 <_ZL9finishedA>
}
    800039d8:	01813083          	ld	ra,24(sp)
    800039dc:	01013403          	ld	s0,16(sp)
    800039e0:	00813483          	ld	s1,8(sp)
    800039e4:	00013903          	ld	s2,0(sp)
    800039e8:	02010113          	addi	sp,sp,32
    800039ec:	00008067          	ret

00000000800039f0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800039f0:	fd010113          	addi	sp,sp,-48
    800039f4:	02113423          	sd	ra,40(sp)
    800039f8:	02813023          	sd	s0,32(sp)
    800039fc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003a00:	00000613          	li	a2,0
    80003a04:	00000597          	auipc	a1,0x0
    80003a08:	f2058593          	addi	a1,a1,-224 # 80003924 <_ZL11workerBodyAPv>
    80003a0c:	fd040513          	addi	a0,s0,-48
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	80c080e7          	jalr	-2036(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80003a18:	00002517          	auipc	a0,0x2
    80003a1c:	73850513          	addi	a0,a0,1848 # 80006150 <CONSOLE_STATUS+0x140>
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	7cc080e7          	jalr	1996(ra) # 800031ec <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003a28:	00000613          	li	a2,0
    80003a2c:	00000597          	auipc	a1,0x0
    80003a30:	e1458593          	addi	a1,a1,-492 # 80003840 <_ZL11workerBodyBPv>
    80003a34:	fd840513          	addi	a0,s0,-40
    80003a38:	ffffd097          	auipc	ra,0xffffd
    80003a3c:	7e4080e7          	jalr	2020(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    80003a40:	00002517          	auipc	a0,0x2
    80003a44:	72850513          	addi	a0,a0,1832 # 80006168 <CONSOLE_STATUS+0x158>
    80003a48:	fffff097          	auipc	ra,0xfffff
    80003a4c:	7a4080e7          	jalr	1956(ra) # 800031ec <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003a50:	00000613          	li	a2,0
    80003a54:	00000597          	auipc	a1,0x0
    80003a58:	c6c58593          	addi	a1,a1,-916 # 800036c0 <_ZL11workerBodyCPv>
    80003a5c:	fe040513          	addi	a0,s0,-32
    80003a60:	ffffd097          	auipc	ra,0xffffd
    80003a64:	7bc080e7          	jalr	1980(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    80003a68:	00002517          	auipc	a0,0x2
    80003a6c:	71850513          	addi	a0,a0,1816 # 80006180 <CONSOLE_STATUS+0x170>
    80003a70:	fffff097          	auipc	ra,0xfffff
    80003a74:	77c080e7          	jalr	1916(ra) # 800031ec <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003a78:	00000613          	li	a2,0
    80003a7c:	00000597          	auipc	a1,0x0
    80003a80:	afc58593          	addi	a1,a1,-1284 # 80003578 <_ZL11workerBodyDPv>
    80003a84:	fe840513          	addi	a0,s0,-24
    80003a88:	ffffd097          	auipc	ra,0xffffd
    80003a8c:	794080e7          	jalr	1940(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    80003a90:	00002517          	auipc	a0,0x2
    80003a94:	70850513          	addi	a0,a0,1800 # 80006198 <CONSOLE_STATUS+0x188>
    80003a98:	fffff097          	auipc	ra,0xfffff
    80003a9c:	754080e7          	jalr	1876(ra) # 800031ec <_Z11printStringPKc>
    80003aa0:	00c0006f          	j	80003aac <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003aa4:	ffffe097          	auipc	ra,0xffffe
    80003aa8:	84c080e7          	jalr	-1972(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003aac:	00004797          	auipc	a5,0x4
    80003ab0:	c377c783          	lbu	a5,-969(a5) # 800076e3 <_ZL9finishedA>
    80003ab4:	fe0788e3          	beqz	a5,80003aa4 <_Z16System_Mode_testv+0xb4>
    80003ab8:	00004797          	auipc	a5,0x4
    80003abc:	c2a7c783          	lbu	a5,-982(a5) # 800076e2 <_ZL9finishedB>
    80003ac0:	fe0782e3          	beqz	a5,80003aa4 <_Z16System_Mode_testv+0xb4>
    80003ac4:	00004797          	auipc	a5,0x4
    80003ac8:	c1d7c783          	lbu	a5,-995(a5) # 800076e1 <_ZL9finishedC>
    80003acc:	fc078ce3          	beqz	a5,80003aa4 <_Z16System_Mode_testv+0xb4>
    80003ad0:	00004797          	auipc	a5,0x4
    80003ad4:	c107c783          	lbu	a5,-1008(a5) # 800076e0 <_ZL9finishedD>
    80003ad8:	fc0786e3          	beqz	a5,80003aa4 <_Z16System_Mode_testv+0xb4>
    }

}
    80003adc:	02813083          	ld	ra,40(sp)
    80003ae0:	02013403          	ld	s0,32(sp)
    80003ae4:	03010113          	addi	sp,sp,48
    80003ae8:	00008067          	ret

0000000080003aec <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003aec:	fe010113          	addi	sp,sp,-32
    80003af0:	00113c23          	sd	ra,24(sp)
    80003af4:	00813823          	sd	s0,16(sp)
    80003af8:	00913423          	sd	s1,8(sp)
    80003afc:	01213023          	sd	s2,0(sp)
    80003b00:	02010413          	addi	s0,sp,32
    80003b04:	00050493          	mv	s1,a0
    80003b08:	00058913          	mv	s2,a1
    80003b0c:	0015879b          	addiw	a5,a1,1
    80003b10:	0007851b          	sext.w	a0,a5
    80003b14:	00f4a023          	sw	a5,0(s1)
    80003b18:	0004a823          	sw	zero,16(s1)
    80003b1c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003b20:	00251513          	slli	a0,a0,0x2
    80003b24:	ffffd097          	auipc	ra,0xffffd
    80003b28:	640080e7          	jalr	1600(ra) # 80001164 <_Z9mem_allocm>
    80003b2c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003b30:	00000593          	li	a1,0
    80003b34:	02048513          	addi	a0,s1,32
    80003b38:	ffffd097          	auipc	ra,0xffffd
    80003b3c:	7d8080e7          	jalr	2008(ra) # 80001310 <_Z8sem_openPP9Semaphorej>
    sem_open(&spaceAvailable, _cap);
    80003b40:	00090593          	mv	a1,s2
    80003b44:	01848513          	addi	a0,s1,24
    80003b48:	ffffd097          	auipc	ra,0xffffd
    80003b4c:	7c8080e7          	jalr	1992(ra) # 80001310 <_Z8sem_openPP9Semaphorej>
    sem_open(&mutexHead, 1);
    80003b50:	00100593          	li	a1,1
    80003b54:	02848513          	addi	a0,s1,40
    80003b58:	ffffd097          	auipc	ra,0xffffd
    80003b5c:	7b8080e7          	jalr	1976(ra) # 80001310 <_Z8sem_openPP9Semaphorej>
    sem_open(&mutexTail, 1);
    80003b60:	00100593          	li	a1,1
    80003b64:	03048513          	addi	a0,s1,48
    80003b68:	ffffd097          	auipc	ra,0xffffd
    80003b6c:	7a8080e7          	jalr	1960(ra) # 80001310 <_Z8sem_openPP9Semaphorej>
}
    80003b70:	01813083          	ld	ra,24(sp)
    80003b74:	01013403          	ld	s0,16(sp)
    80003b78:	00813483          	ld	s1,8(sp)
    80003b7c:	00013903          	ld	s2,0(sp)
    80003b80:	02010113          	addi	sp,sp,32
    80003b84:	00008067          	ret

0000000080003b88 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003b88:	fe010113          	addi	sp,sp,-32
    80003b8c:	00113c23          	sd	ra,24(sp)
    80003b90:	00813823          	sd	s0,16(sp)
    80003b94:	00913423          	sd	s1,8(sp)
    80003b98:	01213023          	sd	s2,0(sp)
    80003b9c:	02010413          	addi	s0,sp,32
    80003ba0:	00050493          	mv	s1,a0
    80003ba4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003ba8:	01853503          	ld	a0,24(a0)
    80003bac:	ffffd097          	auipc	ra,0xffffd
    80003bb0:	7c8080e7          	jalr	1992(ra) # 80001374 <_Z8sem_waitP9Semaphore>

    sem_wait(mutexTail);
    80003bb4:	0304b503          	ld	a0,48(s1)
    80003bb8:	ffffd097          	auipc	ra,0xffffd
    80003bbc:	7bc080e7          	jalr	1980(ra) # 80001374 <_Z8sem_waitP9Semaphore>
    buffer[tail] = val;
    80003bc0:	0084b783          	ld	a5,8(s1)
    80003bc4:	0144a703          	lw	a4,20(s1)
    80003bc8:	00271713          	slli	a4,a4,0x2
    80003bcc:	00e787b3          	add	a5,a5,a4
    80003bd0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003bd4:	0144a783          	lw	a5,20(s1)
    80003bd8:	0017879b          	addiw	a5,a5,1
    80003bdc:	0004a703          	lw	a4,0(s1)
    80003be0:	02e7e7bb          	remw	a5,a5,a4
    80003be4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003be8:	0304b503          	ld	a0,48(s1)
    80003bec:	ffffd097          	auipc	ra,0xffffd
    80003bf0:	7b4080e7          	jalr	1972(ra) # 800013a0 <_Z10sem_signalP9Semaphore>

    sem_signal(itemAvailable);
    80003bf4:	0204b503          	ld	a0,32(s1)
    80003bf8:	ffffd097          	auipc	ra,0xffffd
    80003bfc:	7a8080e7          	jalr	1960(ra) # 800013a0 <_Z10sem_signalP9Semaphore>

}
    80003c00:	01813083          	ld	ra,24(sp)
    80003c04:	01013403          	ld	s0,16(sp)
    80003c08:	00813483          	ld	s1,8(sp)
    80003c0c:	00013903          	ld	s2,0(sp)
    80003c10:	02010113          	addi	sp,sp,32
    80003c14:	00008067          	ret

0000000080003c18 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003c18:	fe010113          	addi	sp,sp,-32
    80003c1c:	00113c23          	sd	ra,24(sp)
    80003c20:	00813823          	sd	s0,16(sp)
    80003c24:	00913423          	sd	s1,8(sp)
    80003c28:	01213023          	sd	s2,0(sp)
    80003c2c:	02010413          	addi	s0,sp,32
    80003c30:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003c34:	02053503          	ld	a0,32(a0)
    80003c38:	ffffd097          	auipc	ra,0xffffd
    80003c3c:	73c080e7          	jalr	1852(ra) # 80001374 <_Z8sem_waitP9Semaphore>

    sem_wait(mutexHead);
    80003c40:	0284b503          	ld	a0,40(s1)
    80003c44:	ffffd097          	auipc	ra,0xffffd
    80003c48:	730080e7          	jalr	1840(ra) # 80001374 <_Z8sem_waitP9Semaphore>

    int ret = buffer[head];
    80003c4c:	0084b703          	ld	a4,8(s1)
    80003c50:	0104a783          	lw	a5,16(s1)
    80003c54:	00279693          	slli	a3,a5,0x2
    80003c58:	00d70733          	add	a4,a4,a3
    80003c5c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003c60:	0017879b          	addiw	a5,a5,1
    80003c64:	0004a703          	lw	a4,0(s1)
    80003c68:	02e7e7bb          	remw	a5,a5,a4
    80003c6c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003c70:	0284b503          	ld	a0,40(s1)
    80003c74:	ffffd097          	auipc	ra,0xffffd
    80003c78:	72c080e7          	jalr	1836(ra) # 800013a0 <_Z10sem_signalP9Semaphore>

    sem_signal(spaceAvailable);
    80003c7c:	0184b503          	ld	a0,24(s1)
    80003c80:	ffffd097          	auipc	ra,0xffffd
    80003c84:	720080e7          	jalr	1824(ra) # 800013a0 <_Z10sem_signalP9Semaphore>

    return ret;
}
    80003c88:	00090513          	mv	a0,s2
    80003c8c:	01813083          	ld	ra,24(sp)
    80003c90:	01013403          	ld	s0,16(sp)
    80003c94:	00813483          	ld	s1,8(sp)
    80003c98:	00013903          	ld	s2,0(sp)
    80003c9c:	02010113          	addi	sp,sp,32
    80003ca0:	00008067          	ret

0000000080003ca4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003ca4:	fe010113          	addi	sp,sp,-32
    80003ca8:	00113c23          	sd	ra,24(sp)
    80003cac:	00813823          	sd	s0,16(sp)
    80003cb0:	00913423          	sd	s1,8(sp)
    80003cb4:	01213023          	sd	s2,0(sp)
    80003cb8:	02010413          	addi	s0,sp,32
    80003cbc:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003cc0:	02853503          	ld	a0,40(a0)
    80003cc4:	ffffd097          	auipc	ra,0xffffd
    80003cc8:	6b0080e7          	jalr	1712(ra) # 80001374 <_Z8sem_waitP9Semaphore>
    sem_wait(mutexTail);
    80003ccc:	0304b503          	ld	a0,48(s1)
    80003cd0:	ffffd097          	auipc	ra,0xffffd
    80003cd4:	6a4080e7          	jalr	1700(ra) # 80001374 <_Z8sem_waitP9Semaphore>

    if (tail >= head) {
    80003cd8:	0144a783          	lw	a5,20(s1)
    80003cdc:	0104a903          	lw	s2,16(s1)
    80003ce0:	0327ce63          	blt	a5,s2,80003d1c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003ce4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003ce8:	0304b503          	ld	a0,48(s1)
    80003cec:	ffffd097          	auipc	ra,0xffffd
    80003cf0:	6b4080e7          	jalr	1716(ra) # 800013a0 <_Z10sem_signalP9Semaphore>
    sem_signal(mutexHead);
    80003cf4:	0284b503          	ld	a0,40(s1)
    80003cf8:	ffffd097          	auipc	ra,0xffffd
    80003cfc:	6a8080e7          	jalr	1704(ra) # 800013a0 <_Z10sem_signalP9Semaphore>

    return ret;
}
    80003d00:	00090513          	mv	a0,s2
    80003d04:	01813083          	ld	ra,24(sp)
    80003d08:	01013403          	ld	s0,16(sp)
    80003d0c:	00813483          	ld	s1,8(sp)
    80003d10:	00013903          	ld	s2,0(sp)
    80003d14:	02010113          	addi	sp,sp,32
    80003d18:	00008067          	ret
        ret = cap - head + tail;
    80003d1c:	0004a703          	lw	a4,0(s1)
    80003d20:	4127093b          	subw	s2,a4,s2
    80003d24:	00f9093b          	addw	s2,s2,a5
    80003d28:	fc1ff06f          	j	80003ce8 <_ZN6Buffer6getCntEv+0x44>

0000000080003d2c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003d2c:	fe010113          	addi	sp,sp,-32
    80003d30:	00113c23          	sd	ra,24(sp)
    80003d34:	00813823          	sd	s0,16(sp)
    80003d38:	00913423          	sd	s1,8(sp)
    80003d3c:	02010413          	addi	s0,sp,32
    80003d40:	00050493          	mv	s1,a0
    __putc('\n');
    80003d44:	00a00513          	li	a0,10
    80003d48:	00002097          	auipc	ra,0x2
    80003d4c:	184080e7          	jalr	388(ra) # 80005ecc <__putc>
    printString("Buffer deleted!\n");
    80003d50:	00002517          	auipc	a0,0x2
    80003d54:	4d050513          	addi	a0,a0,1232 # 80006220 <CONSOLE_STATUS+0x210>
    80003d58:	fffff097          	auipc	ra,0xfffff
    80003d5c:	494080e7          	jalr	1172(ra) # 800031ec <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003d60:	00048513          	mv	a0,s1
    80003d64:	00000097          	auipc	ra,0x0
    80003d68:	f40080e7          	jalr	-192(ra) # 80003ca4 <_ZN6Buffer6getCntEv>
    80003d6c:	02a05c63          	blez	a0,80003da4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003d70:	0084b783          	ld	a5,8(s1)
    80003d74:	0104a703          	lw	a4,16(s1)
    80003d78:	00271713          	slli	a4,a4,0x2
    80003d7c:	00e787b3          	add	a5,a5,a4
        __putc(ch);
    80003d80:	0007c503          	lbu	a0,0(a5)
    80003d84:	00002097          	auipc	ra,0x2
    80003d88:	148080e7          	jalr	328(ra) # 80005ecc <__putc>
        head = (head + 1) % cap;
    80003d8c:	0104a783          	lw	a5,16(s1)
    80003d90:	0017879b          	addiw	a5,a5,1
    80003d94:	0004a703          	lw	a4,0(s1)
    80003d98:	02e7e7bb          	remw	a5,a5,a4
    80003d9c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003da0:	fc1ff06f          	j	80003d60 <_ZN6BufferD1Ev+0x34>
    __putc('!');
    80003da4:	02100513          	li	a0,33
    80003da8:	00002097          	auipc	ra,0x2
    80003dac:	124080e7          	jalr	292(ra) # 80005ecc <__putc>
    __putc('\n');
    80003db0:	00a00513          	li	a0,10
    80003db4:	00002097          	auipc	ra,0x2
    80003db8:	118080e7          	jalr	280(ra) # 80005ecc <__putc>
    mem_free(buffer);
    80003dbc:	0084b503          	ld	a0,8(s1)
    80003dc0:	ffffd097          	auipc	ra,0xffffd
    80003dc4:	3e8080e7          	jalr	1000(ra) # 800011a8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003dc8:	0204b503          	ld	a0,32(s1)
    80003dcc:	ffffd097          	auipc	ra,0xffffd
    80003dd0:	57c080e7          	jalr	1404(ra) # 80001348 <_Z9sem_closeP9Semaphore>
    sem_close(spaceAvailable);
    80003dd4:	0184b503          	ld	a0,24(s1)
    80003dd8:	ffffd097          	auipc	ra,0xffffd
    80003ddc:	570080e7          	jalr	1392(ra) # 80001348 <_Z9sem_closeP9Semaphore>
    sem_close(mutexTail);
    80003de0:	0304b503          	ld	a0,48(s1)
    80003de4:	ffffd097          	auipc	ra,0xffffd
    80003de8:	564080e7          	jalr	1380(ra) # 80001348 <_Z9sem_closeP9Semaphore>
    sem_close(mutexHead);
    80003dec:	0284b503          	ld	a0,40(s1)
    80003df0:	ffffd097          	auipc	ra,0xffffd
    80003df4:	558080e7          	jalr	1368(ra) # 80001348 <_Z9sem_closeP9Semaphore>
}
    80003df8:	01813083          	ld	ra,24(sp)
    80003dfc:	01013403          	ld	s0,16(sp)
    80003e00:	00813483          	ld	s1,8(sp)
    80003e04:	02010113          	addi	sp,sp,32
    80003e08:	00008067          	ret

0000000080003e0c <start>:
    80003e0c:	ff010113          	addi	sp,sp,-16
    80003e10:	00813423          	sd	s0,8(sp)
    80003e14:	01010413          	addi	s0,sp,16
    80003e18:	300027f3          	csrr	a5,mstatus
    80003e1c:	ffffe737          	lui	a4,0xffffe
    80003e20:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff5eaf>
    80003e24:	00e7f7b3          	and	a5,a5,a4
    80003e28:	00001737          	lui	a4,0x1
    80003e2c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003e30:	00e7e7b3          	or	a5,a5,a4
    80003e34:	30079073          	csrw	mstatus,a5
    80003e38:	00000797          	auipc	a5,0x0
    80003e3c:	16078793          	addi	a5,a5,352 # 80003f98 <system_main>
    80003e40:	34179073          	csrw	mepc,a5
    80003e44:	00000793          	li	a5,0
    80003e48:	18079073          	csrw	satp,a5
    80003e4c:	000107b7          	lui	a5,0x10
    80003e50:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003e54:	30279073          	csrw	medeleg,a5
    80003e58:	30379073          	csrw	mideleg,a5
    80003e5c:	104027f3          	csrr	a5,sie
    80003e60:	2227e793          	ori	a5,a5,546
    80003e64:	10479073          	csrw	sie,a5
    80003e68:	fff00793          	li	a5,-1
    80003e6c:	00a7d793          	srli	a5,a5,0xa
    80003e70:	3b079073          	csrw	pmpaddr0,a5
    80003e74:	00f00793          	li	a5,15
    80003e78:	3a079073          	csrw	pmpcfg0,a5
    80003e7c:	f14027f3          	csrr	a5,mhartid
    80003e80:	0200c737          	lui	a4,0x200c
    80003e84:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003e88:	0007869b          	sext.w	a3,a5
    80003e8c:	00269713          	slli	a4,a3,0x2
    80003e90:	000f4637          	lui	a2,0xf4
    80003e94:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003e98:	00d70733          	add	a4,a4,a3
    80003e9c:	0037979b          	slliw	a5,a5,0x3
    80003ea0:	020046b7          	lui	a3,0x2004
    80003ea4:	00d787b3          	add	a5,a5,a3
    80003ea8:	00c585b3          	add	a1,a1,a2
    80003eac:	00371693          	slli	a3,a4,0x3
    80003eb0:	00004717          	auipc	a4,0x4
    80003eb4:	84070713          	addi	a4,a4,-1984 # 800076f0 <timer_scratch>
    80003eb8:	00b7b023          	sd	a1,0(a5)
    80003ebc:	00d70733          	add	a4,a4,a3
    80003ec0:	00f73c23          	sd	a5,24(a4)
    80003ec4:	02c73023          	sd	a2,32(a4)
    80003ec8:	34071073          	csrw	mscratch,a4
    80003ecc:	00000797          	auipc	a5,0x0
    80003ed0:	6e478793          	addi	a5,a5,1764 # 800045b0 <timervec>
    80003ed4:	30579073          	csrw	mtvec,a5
    80003ed8:	300027f3          	csrr	a5,mstatus
    80003edc:	0087e793          	ori	a5,a5,8
    80003ee0:	30079073          	csrw	mstatus,a5
    80003ee4:	304027f3          	csrr	a5,mie
    80003ee8:	0807e793          	ori	a5,a5,128
    80003eec:	30479073          	csrw	mie,a5
    80003ef0:	f14027f3          	csrr	a5,mhartid
    80003ef4:	0007879b          	sext.w	a5,a5
    80003ef8:	00078213          	mv	tp,a5
    80003efc:	30200073          	mret
    80003f00:	00813403          	ld	s0,8(sp)
    80003f04:	01010113          	addi	sp,sp,16
    80003f08:	00008067          	ret

0000000080003f0c <timerinit>:
    80003f0c:	ff010113          	addi	sp,sp,-16
    80003f10:	00813423          	sd	s0,8(sp)
    80003f14:	01010413          	addi	s0,sp,16
    80003f18:	f14027f3          	csrr	a5,mhartid
    80003f1c:	0200c737          	lui	a4,0x200c
    80003f20:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003f24:	0007869b          	sext.w	a3,a5
    80003f28:	00269713          	slli	a4,a3,0x2
    80003f2c:	000f4637          	lui	a2,0xf4
    80003f30:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003f34:	00d70733          	add	a4,a4,a3
    80003f38:	0037979b          	slliw	a5,a5,0x3
    80003f3c:	020046b7          	lui	a3,0x2004
    80003f40:	00d787b3          	add	a5,a5,a3
    80003f44:	00c585b3          	add	a1,a1,a2
    80003f48:	00371693          	slli	a3,a4,0x3
    80003f4c:	00003717          	auipc	a4,0x3
    80003f50:	7a470713          	addi	a4,a4,1956 # 800076f0 <timer_scratch>
    80003f54:	00b7b023          	sd	a1,0(a5)
    80003f58:	00d70733          	add	a4,a4,a3
    80003f5c:	00f73c23          	sd	a5,24(a4)
    80003f60:	02c73023          	sd	a2,32(a4)
    80003f64:	34071073          	csrw	mscratch,a4
    80003f68:	00000797          	auipc	a5,0x0
    80003f6c:	64878793          	addi	a5,a5,1608 # 800045b0 <timervec>
    80003f70:	30579073          	csrw	mtvec,a5
    80003f74:	300027f3          	csrr	a5,mstatus
    80003f78:	0087e793          	ori	a5,a5,8
    80003f7c:	30079073          	csrw	mstatus,a5
    80003f80:	304027f3          	csrr	a5,mie
    80003f84:	0807e793          	ori	a5,a5,128
    80003f88:	30479073          	csrw	mie,a5
    80003f8c:	00813403          	ld	s0,8(sp)
    80003f90:	01010113          	addi	sp,sp,16
    80003f94:	00008067          	ret

0000000080003f98 <system_main>:
    80003f98:	fe010113          	addi	sp,sp,-32
    80003f9c:	00813823          	sd	s0,16(sp)
    80003fa0:	00913423          	sd	s1,8(sp)
    80003fa4:	00113c23          	sd	ra,24(sp)
    80003fa8:	02010413          	addi	s0,sp,32
    80003fac:	00000097          	auipc	ra,0x0
    80003fb0:	0c4080e7          	jalr	196(ra) # 80004070 <cpuid>
    80003fb4:	00003497          	auipc	s1,0x3
    80003fb8:	6bc48493          	addi	s1,s1,1724 # 80007670 <started>
    80003fbc:	02050263          	beqz	a0,80003fe0 <system_main+0x48>
    80003fc0:	0004a783          	lw	a5,0(s1)
    80003fc4:	0007879b          	sext.w	a5,a5
    80003fc8:	fe078ce3          	beqz	a5,80003fc0 <system_main+0x28>
    80003fcc:	0ff0000f          	fence
    80003fd0:	00002517          	auipc	a0,0x2
    80003fd4:	29850513          	addi	a0,a0,664 # 80006268 <CONSOLE_STATUS+0x258>
    80003fd8:	00001097          	auipc	ra,0x1
    80003fdc:	a74080e7          	jalr	-1420(ra) # 80004a4c <panic>
    80003fe0:	00001097          	auipc	ra,0x1
    80003fe4:	9c8080e7          	jalr	-1592(ra) # 800049a8 <consoleinit>
    80003fe8:	00001097          	auipc	ra,0x1
    80003fec:	154080e7          	jalr	340(ra) # 8000513c <printfinit>
    80003ff0:	00002517          	auipc	a0,0x2
    80003ff4:	35850513          	addi	a0,a0,856 # 80006348 <CONSOLE_STATUS+0x338>
    80003ff8:	00001097          	auipc	ra,0x1
    80003ffc:	ab0080e7          	jalr	-1360(ra) # 80004aa8 <__printf>
    80004000:	00002517          	auipc	a0,0x2
    80004004:	23850513          	addi	a0,a0,568 # 80006238 <CONSOLE_STATUS+0x228>
    80004008:	00001097          	auipc	ra,0x1
    8000400c:	aa0080e7          	jalr	-1376(ra) # 80004aa8 <__printf>
    80004010:	00002517          	auipc	a0,0x2
    80004014:	33850513          	addi	a0,a0,824 # 80006348 <CONSOLE_STATUS+0x338>
    80004018:	00001097          	auipc	ra,0x1
    8000401c:	a90080e7          	jalr	-1392(ra) # 80004aa8 <__printf>
    80004020:	00001097          	auipc	ra,0x1
    80004024:	4a8080e7          	jalr	1192(ra) # 800054c8 <kinit>
    80004028:	00000097          	auipc	ra,0x0
    8000402c:	148080e7          	jalr	328(ra) # 80004170 <trapinit>
    80004030:	00000097          	auipc	ra,0x0
    80004034:	16c080e7          	jalr	364(ra) # 8000419c <trapinithart>
    80004038:	00000097          	auipc	ra,0x0
    8000403c:	5b8080e7          	jalr	1464(ra) # 800045f0 <plicinit>
    80004040:	00000097          	auipc	ra,0x0
    80004044:	5d8080e7          	jalr	1496(ra) # 80004618 <plicinithart>
    80004048:	00000097          	auipc	ra,0x0
    8000404c:	078080e7          	jalr	120(ra) # 800040c0 <userinit>
    80004050:	0ff0000f          	fence
    80004054:	00100793          	li	a5,1
    80004058:	00002517          	auipc	a0,0x2
    8000405c:	1f850513          	addi	a0,a0,504 # 80006250 <CONSOLE_STATUS+0x240>
    80004060:	00f4a023          	sw	a5,0(s1)
    80004064:	00001097          	auipc	ra,0x1
    80004068:	a44080e7          	jalr	-1468(ra) # 80004aa8 <__printf>
    8000406c:	0000006f          	j	8000406c <system_main+0xd4>

0000000080004070 <cpuid>:
    80004070:	ff010113          	addi	sp,sp,-16
    80004074:	00813423          	sd	s0,8(sp)
    80004078:	01010413          	addi	s0,sp,16
    8000407c:	00020513          	mv	a0,tp
    80004080:	00813403          	ld	s0,8(sp)
    80004084:	0005051b          	sext.w	a0,a0
    80004088:	01010113          	addi	sp,sp,16
    8000408c:	00008067          	ret

0000000080004090 <mycpu>:
    80004090:	ff010113          	addi	sp,sp,-16
    80004094:	00813423          	sd	s0,8(sp)
    80004098:	01010413          	addi	s0,sp,16
    8000409c:	00020793          	mv	a5,tp
    800040a0:	00813403          	ld	s0,8(sp)
    800040a4:	0007879b          	sext.w	a5,a5
    800040a8:	00779793          	slli	a5,a5,0x7
    800040ac:	00004517          	auipc	a0,0x4
    800040b0:	67450513          	addi	a0,a0,1652 # 80008720 <cpus>
    800040b4:	00f50533          	add	a0,a0,a5
    800040b8:	01010113          	addi	sp,sp,16
    800040bc:	00008067          	ret

00000000800040c0 <userinit>:
    800040c0:	ff010113          	addi	sp,sp,-16
    800040c4:	00813423          	sd	s0,8(sp)
    800040c8:	01010413          	addi	s0,sp,16
    800040cc:	00813403          	ld	s0,8(sp)
    800040d0:	01010113          	addi	sp,sp,16
    800040d4:	ffffe317          	auipc	t1,0xffffe
    800040d8:	98830067          	jr	-1656(t1) # 80001a5c <main>

00000000800040dc <either_copyout>:
    800040dc:	ff010113          	addi	sp,sp,-16
    800040e0:	00813023          	sd	s0,0(sp)
    800040e4:	00113423          	sd	ra,8(sp)
    800040e8:	01010413          	addi	s0,sp,16
    800040ec:	02051663          	bnez	a0,80004118 <either_copyout+0x3c>
    800040f0:	00058513          	mv	a0,a1
    800040f4:	00060593          	mv	a1,a2
    800040f8:	0006861b          	sext.w	a2,a3
    800040fc:	00002097          	auipc	ra,0x2
    80004100:	c58080e7          	jalr	-936(ra) # 80005d54 <__memmove>
    80004104:	00813083          	ld	ra,8(sp)
    80004108:	00013403          	ld	s0,0(sp)
    8000410c:	00000513          	li	a0,0
    80004110:	01010113          	addi	sp,sp,16
    80004114:	00008067          	ret
    80004118:	00002517          	auipc	a0,0x2
    8000411c:	17850513          	addi	a0,a0,376 # 80006290 <CONSOLE_STATUS+0x280>
    80004120:	00001097          	auipc	ra,0x1
    80004124:	92c080e7          	jalr	-1748(ra) # 80004a4c <panic>

0000000080004128 <either_copyin>:
    80004128:	ff010113          	addi	sp,sp,-16
    8000412c:	00813023          	sd	s0,0(sp)
    80004130:	00113423          	sd	ra,8(sp)
    80004134:	01010413          	addi	s0,sp,16
    80004138:	02059463          	bnez	a1,80004160 <either_copyin+0x38>
    8000413c:	00060593          	mv	a1,a2
    80004140:	0006861b          	sext.w	a2,a3
    80004144:	00002097          	auipc	ra,0x2
    80004148:	c10080e7          	jalr	-1008(ra) # 80005d54 <__memmove>
    8000414c:	00813083          	ld	ra,8(sp)
    80004150:	00013403          	ld	s0,0(sp)
    80004154:	00000513          	li	a0,0
    80004158:	01010113          	addi	sp,sp,16
    8000415c:	00008067          	ret
    80004160:	00002517          	auipc	a0,0x2
    80004164:	15850513          	addi	a0,a0,344 # 800062b8 <CONSOLE_STATUS+0x2a8>
    80004168:	00001097          	auipc	ra,0x1
    8000416c:	8e4080e7          	jalr	-1820(ra) # 80004a4c <panic>

0000000080004170 <trapinit>:
    80004170:	ff010113          	addi	sp,sp,-16
    80004174:	00813423          	sd	s0,8(sp)
    80004178:	01010413          	addi	s0,sp,16
    8000417c:	00813403          	ld	s0,8(sp)
    80004180:	00002597          	auipc	a1,0x2
    80004184:	16058593          	addi	a1,a1,352 # 800062e0 <CONSOLE_STATUS+0x2d0>
    80004188:	00004517          	auipc	a0,0x4
    8000418c:	61850513          	addi	a0,a0,1560 # 800087a0 <tickslock>
    80004190:	01010113          	addi	sp,sp,16
    80004194:	00001317          	auipc	t1,0x1
    80004198:	5c430067          	jr	1476(t1) # 80005758 <initlock>

000000008000419c <trapinithart>:
    8000419c:	ff010113          	addi	sp,sp,-16
    800041a0:	00813423          	sd	s0,8(sp)
    800041a4:	01010413          	addi	s0,sp,16
    800041a8:	00000797          	auipc	a5,0x0
    800041ac:	2f878793          	addi	a5,a5,760 # 800044a0 <kernelvec>
    800041b0:	10579073          	csrw	stvec,a5
    800041b4:	00813403          	ld	s0,8(sp)
    800041b8:	01010113          	addi	sp,sp,16
    800041bc:	00008067          	ret

00000000800041c0 <usertrap>:
    800041c0:	ff010113          	addi	sp,sp,-16
    800041c4:	00813423          	sd	s0,8(sp)
    800041c8:	01010413          	addi	s0,sp,16
    800041cc:	00813403          	ld	s0,8(sp)
    800041d0:	01010113          	addi	sp,sp,16
    800041d4:	00008067          	ret

00000000800041d8 <usertrapret>:
    800041d8:	ff010113          	addi	sp,sp,-16
    800041dc:	00813423          	sd	s0,8(sp)
    800041e0:	01010413          	addi	s0,sp,16
    800041e4:	00813403          	ld	s0,8(sp)
    800041e8:	01010113          	addi	sp,sp,16
    800041ec:	00008067          	ret

00000000800041f0 <kerneltrap>:
    800041f0:	fe010113          	addi	sp,sp,-32
    800041f4:	00813823          	sd	s0,16(sp)
    800041f8:	00113c23          	sd	ra,24(sp)
    800041fc:	00913423          	sd	s1,8(sp)
    80004200:	02010413          	addi	s0,sp,32
    80004204:	142025f3          	csrr	a1,scause
    80004208:	100027f3          	csrr	a5,sstatus
    8000420c:	0027f793          	andi	a5,a5,2
    80004210:	10079c63          	bnez	a5,80004328 <kerneltrap+0x138>
    80004214:	142027f3          	csrr	a5,scause
    80004218:	0207ce63          	bltz	a5,80004254 <kerneltrap+0x64>
    8000421c:	00002517          	auipc	a0,0x2
    80004220:	10c50513          	addi	a0,a0,268 # 80006328 <CONSOLE_STATUS+0x318>
    80004224:	00001097          	auipc	ra,0x1
    80004228:	884080e7          	jalr	-1916(ra) # 80004aa8 <__printf>
    8000422c:	141025f3          	csrr	a1,sepc
    80004230:	14302673          	csrr	a2,stval
    80004234:	00002517          	auipc	a0,0x2
    80004238:	10450513          	addi	a0,a0,260 # 80006338 <CONSOLE_STATUS+0x328>
    8000423c:	00001097          	auipc	ra,0x1
    80004240:	86c080e7          	jalr	-1940(ra) # 80004aa8 <__printf>
    80004244:	00002517          	auipc	a0,0x2
    80004248:	10c50513          	addi	a0,a0,268 # 80006350 <CONSOLE_STATUS+0x340>
    8000424c:	00001097          	auipc	ra,0x1
    80004250:	800080e7          	jalr	-2048(ra) # 80004a4c <panic>
    80004254:	0ff7f713          	andi	a4,a5,255
    80004258:	00900693          	li	a3,9
    8000425c:	04d70063          	beq	a4,a3,8000429c <kerneltrap+0xac>
    80004260:	fff00713          	li	a4,-1
    80004264:	03f71713          	slli	a4,a4,0x3f
    80004268:	00170713          	addi	a4,a4,1
    8000426c:	fae798e3          	bne	a5,a4,8000421c <kerneltrap+0x2c>
    80004270:	00000097          	auipc	ra,0x0
    80004274:	e00080e7          	jalr	-512(ra) # 80004070 <cpuid>
    80004278:	06050663          	beqz	a0,800042e4 <kerneltrap+0xf4>
    8000427c:	144027f3          	csrr	a5,sip
    80004280:	ffd7f793          	andi	a5,a5,-3
    80004284:	14479073          	csrw	sip,a5
    80004288:	01813083          	ld	ra,24(sp)
    8000428c:	01013403          	ld	s0,16(sp)
    80004290:	00813483          	ld	s1,8(sp)
    80004294:	02010113          	addi	sp,sp,32
    80004298:	00008067          	ret
    8000429c:	00000097          	auipc	ra,0x0
    800042a0:	3c8080e7          	jalr	968(ra) # 80004664 <plic_claim>
    800042a4:	00a00793          	li	a5,10
    800042a8:	00050493          	mv	s1,a0
    800042ac:	06f50863          	beq	a0,a5,8000431c <kerneltrap+0x12c>
    800042b0:	fc050ce3          	beqz	a0,80004288 <kerneltrap+0x98>
    800042b4:	00050593          	mv	a1,a0
    800042b8:	00002517          	auipc	a0,0x2
    800042bc:	05050513          	addi	a0,a0,80 # 80006308 <CONSOLE_STATUS+0x2f8>
    800042c0:	00000097          	auipc	ra,0x0
    800042c4:	7e8080e7          	jalr	2024(ra) # 80004aa8 <__printf>
    800042c8:	01013403          	ld	s0,16(sp)
    800042cc:	01813083          	ld	ra,24(sp)
    800042d0:	00048513          	mv	a0,s1
    800042d4:	00813483          	ld	s1,8(sp)
    800042d8:	02010113          	addi	sp,sp,32
    800042dc:	00000317          	auipc	t1,0x0
    800042e0:	3c030067          	jr	960(t1) # 8000469c <plic_complete>
    800042e4:	00004517          	auipc	a0,0x4
    800042e8:	4bc50513          	addi	a0,a0,1212 # 800087a0 <tickslock>
    800042ec:	00001097          	auipc	ra,0x1
    800042f0:	490080e7          	jalr	1168(ra) # 8000577c <acquire>
    800042f4:	00003717          	auipc	a4,0x3
    800042f8:	38070713          	addi	a4,a4,896 # 80007674 <ticks>
    800042fc:	00072783          	lw	a5,0(a4)
    80004300:	00004517          	auipc	a0,0x4
    80004304:	4a050513          	addi	a0,a0,1184 # 800087a0 <tickslock>
    80004308:	0017879b          	addiw	a5,a5,1
    8000430c:	00f72023          	sw	a5,0(a4)
    80004310:	00001097          	auipc	ra,0x1
    80004314:	538080e7          	jalr	1336(ra) # 80005848 <release>
    80004318:	f65ff06f          	j	8000427c <kerneltrap+0x8c>
    8000431c:	00001097          	auipc	ra,0x1
    80004320:	094080e7          	jalr	148(ra) # 800053b0 <uartintr>
    80004324:	fa5ff06f          	j	800042c8 <kerneltrap+0xd8>
    80004328:	00002517          	auipc	a0,0x2
    8000432c:	fc050513          	addi	a0,a0,-64 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80004330:	00000097          	auipc	ra,0x0
    80004334:	71c080e7          	jalr	1820(ra) # 80004a4c <panic>

0000000080004338 <clockintr>:
    80004338:	fe010113          	addi	sp,sp,-32
    8000433c:	00813823          	sd	s0,16(sp)
    80004340:	00913423          	sd	s1,8(sp)
    80004344:	00113c23          	sd	ra,24(sp)
    80004348:	02010413          	addi	s0,sp,32
    8000434c:	00004497          	auipc	s1,0x4
    80004350:	45448493          	addi	s1,s1,1108 # 800087a0 <tickslock>
    80004354:	00048513          	mv	a0,s1
    80004358:	00001097          	auipc	ra,0x1
    8000435c:	424080e7          	jalr	1060(ra) # 8000577c <acquire>
    80004360:	00003717          	auipc	a4,0x3
    80004364:	31470713          	addi	a4,a4,788 # 80007674 <ticks>
    80004368:	00072783          	lw	a5,0(a4)
    8000436c:	01013403          	ld	s0,16(sp)
    80004370:	01813083          	ld	ra,24(sp)
    80004374:	00048513          	mv	a0,s1
    80004378:	0017879b          	addiw	a5,a5,1
    8000437c:	00813483          	ld	s1,8(sp)
    80004380:	00f72023          	sw	a5,0(a4)
    80004384:	02010113          	addi	sp,sp,32
    80004388:	00001317          	auipc	t1,0x1
    8000438c:	4c030067          	jr	1216(t1) # 80005848 <release>

0000000080004390 <devintr>:
    80004390:	142027f3          	csrr	a5,scause
    80004394:	00000513          	li	a0,0
    80004398:	0007c463          	bltz	a5,800043a0 <devintr+0x10>
    8000439c:	00008067          	ret
    800043a0:	fe010113          	addi	sp,sp,-32
    800043a4:	00813823          	sd	s0,16(sp)
    800043a8:	00113c23          	sd	ra,24(sp)
    800043ac:	00913423          	sd	s1,8(sp)
    800043b0:	02010413          	addi	s0,sp,32
    800043b4:	0ff7f713          	andi	a4,a5,255
    800043b8:	00900693          	li	a3,9
    800043bc:	04d70c63          	beq	a4,a3,80004414 <devintr+0x84>
    800043c0:	fff00713          	li	a4,-1
    800043c4:	03f71713          	slli	a4,a4,0x3f
    800043c8:	00170713          	addi	a4,a4,1
    800043cc:	00e78c63          	beq	a5,a4,800043e4 <devintr+0x54>
    800043d0:	01813083          	ld	ra,24(sp)
    800043d4:	01013403          	ld	s0,16(sp)
    800043d8:	00813483          	ld	s1,8(sp)
    800043dc:	02010113          	addi	sp,sp,32
    800043e0:	00008067          	ret
    800043e4:	00000097          	auipc	ra,0x0
    800043e8:	c8c080e7          	jalr	-884(ra) # 80004070 <cpuid>
    800043ec:	06050663          	beqz	a0,80004458 <devintr+0xc8>
    800043f0:	144027f3          	csrr	a5,sip
    800043f4:	ffd7f793          	andi	a5,a5,-3
    800043f8:	14479073          	csrw	sip,a5
    800043fc:	01813083          	ld	ra,24(sp)
    80004400:	01013403          	ld	s0,16(sp)
    80004404:	00813483          	ld	s1,8(sp)
    80004408:	00200513          	li	a0,2
    8000440c:	02010113          	addi	sp,sp,32
    80004410:	00008067          	ret
    80004414:	00000097          	auipc	ra,0x0
    80004418:	250080e7          	jalr	592(ra) # 80004664 <plic_claim>
    8000441c:	00a00793          	li	a5,10
    80004420:	00050493          	mv	s1,a0
    80004424:	06f50663          	beq	a0,a5,80004490 <devintr+0x100>
    80004428:	00100513          	li	a0,1
    8000442c:	fa0482e3          	beqz	s1,800043d0 <devintr+0x40>
    80004430:	00048593          	mv	a1,s1
    80004434:	00002517          	auipc	a0,0x2
    80004438:	ed450513          	addi	a0,a0,-300 # 80006308 <CONSOLE_STATUS+0x2f8>
    8000443c:	00000097          	auipc	ra,0x0
    80004440:	66c080e7          	jalr	1644(ra) # 80004aa8 <__printf>
    80004444:	00048513          	mv	a0,s1
    80004448:	00000097          	auipc	ra,0x0
    8000444c:	254080e7          	jalr	596(ra) # 8000469c <plic_complete>
    80004450:	00100513          	li	a0,1
    80004454:	f7dff06f          	j	800043d0 <devintr+0x40>
    80004458:	00004517          	auipc	a0,0x4
    8000445c:	34850513          	addi	a0,a0,840 # 800087a0 <tickslock>
    80004460:	00001097          	auipc	ra,0x1
    80004464:	31c080e7          	jalr	796(ra) # 8000577c <acquire>
    80004468:	00003717          	auipc	a4,0x3
    8000446c:	20c70713          	addi	a4,a4,524 # 80007674 <ticks>
    80004470:	00072783          	lw	a5,0(a4)
    80004474:	00004517          	auipc	a0,0x4
    80004478:	32c50513          	addi	a0,a0,812 # 800087a0 <tickslock>
    8000447c:	0017879b          	addiw	a5,a5,1
    80004480:	00f72023          	sw	a5,0(a4)
    80004484:	00001097          	auipc	ra,0x1
    80004488:	3c4080e7          	jalr	964(ra) # 80005848 <release>
    8000448c:	f65ff06f          	j	800043f0 <devintr+0x60>
    80004490:	00001097          	auipc	ra,0x1
    80004494:	f20080e7          	jalr	-224(ra) # 800053b0 <uartintr>
    80004498:	fadff06f          	j	80004444 <devintr+0xb4>
    8000449c:	0000                	unimp
	...

00000000800044a0 <kernelvec>:
    800044a0:	f0010113          	addi	sp,sp,-256
    800044a4:	00113023          	sd	ra,0(sp)
    800044a8:	00213423          	sd	sp,8(sp)
    800044ac:	00313823          	sd	gp,16(sp)
    800044b0:	00413c23          	sd	tp,24(sp)
    800044b4:	02513023          	sd	t0,32(sp)
    800044b8:	02613423          	sd	t1,40(sp)
    800044bc:	02713823          	sd	t2,48(sp)
    800044c0:	02813c23          	sd	s0,56(sp)
    800044c4:	04913023          	sd	s1,64(sp)
    800044c8:	04a13423          	sd	a0,72(sp)
    800044cc:	04b13823          	sd	a1,80(sp)
    800044d0:	04c13c23          	sd	a2,88(sp)
    800044d4:	06d13023          	sd	a3,96(sp)
    800044d8:	06e13423          	sd	a4,104(sp)
    800044dc:	06f13823          	sd	a5,112(sp)
    800044e0:	07013c23          	sd	a6,120(sp)
    800044e4:	09113023          	sd	a7,128(sp)
    800044e8:	09213423          	sd	s2,136(sp)
    800044ec:	09313823          	sd	s3,144(sp)
    800044f0:	09413c23          	sd	s4,152(sp)
    800044f4:	0b513023          	sd	s5,160(sp)
    800044f8:	0b613423          	sd	s6,168(sp)
    800044fc:	0b713823          	sd	s7,176(sp)
    80004500:	0b813c23          	sd	s8,184(sp)
    80004504:	0d913023          	sd	s9,192(sp)
    80004508:	0da13423          	sd	s10,200(sp)
    8000450c:	0db13823          	sd	s11,208(sp)
    80004510:	0dc13c23          	sd	t3,216(sp)
    80004514:	0fd13023          	sd	t4,224(sp)
    80004518:	0fe13423          	sd	t5,232(sp)
    8000451c:	0ff13823          	sd	t6,240(sp)
    80004520:	cd1ff0ef          	jal	ra,800041f0 <kerneltrap>
    80004524:	00013083          	ld	ra,0(sp)
    80004528:	00813103          	ld	sp,8(sp)
    8000452c:	01013183          	ld	gp,16(sp)
    80004530:	02013283          	ld	t0,32(sp)
    80004534:	02813303          	ld	t1,40(sp)
    80004538:	03013383          	ld	t2,48(sp)
    8000453c:	03813403          	ld	s0,56(sp)
    80004540:	04013483          	ld	s1,64(sp)
    80004544:	04813503          	ld	a0,72(sp)
    80004548:	05013583          	ld	a1,80(sp)
    8000454c:	05813603          	ld	a2,88(sp)
    80004550:	06013683          	ld	a3,96(sp)
    80004554:	06813703          	ld	a4,104(sp)
    80004558:	07013783          	ld	a5,112(sp)
    8000455c:	07813803          	ld	a6,120(sp)
    80004560:	08013883          	ld	a7,128(sp)
    80004564:	08813903          	ld	s2,136(sp)
    80004568:	09013983          	ld	s3,144(sp)
    8000456c:	09813a03          	ld	s4,152(sp)
    80004570:	0a013a83          	ld	s5,160(sp)
    80004574:	0a813b03          	ld	s6,168(sp)
    80004578:	0b013b83          	ld	s7,176(sp)
    8000457c:	0b813c03          	ld	s8,184(sp)
    80004580:	0c013c83          	ld	s9,192(sp)
    80004584:	0c813d03          	ld	s10,200(sp)
    80004588:	0d013d83          	ld	s11,208(sp)
    8000458c:	0d813e03          	ld	t3,216(sp)
    80004590:	0e013e83          	ld	t4,224(sp)
    80004594:	0e813f03          	ld	t5,232(sp)
    80004598:	0f013f83          	ld	t6,240(sp)
    8000459c:	10010113          	addi	sp,sp,256
    800045a0:	10200073          	sret
    800045a4:	00000013          	nop
    800045a8:	00000013          	nop
    800045ac:	00000013          	nop

00000000800045b0 <timervec>:
    800045b0:	34051573          	csrrw	a0,mscratch,a0
    800045b4:	00b53023          	sd	a1,0(a0)
    800045b8:	00c53423          	sd	a2,8(a0)
    800045bc:	00d53823          	sd	a3,16(a0)
    800045c0:	01853583          	ld	a1,24(a0)
    800045c4:	02053603          	ld	a2,32(a0)
    800045c8:	0005b683          	ld	a3,0(a1)
    800045cc:	00c686b3          	add	a3,a3,a2
    800045d0:	00d5b023          	sd	a3,0(a1)
    800045d4:	00200593          	li	a1,2
    800045d8:	14459073          	csrw	sip,a1
    800045dc:	01053683          	ld	a3,16(a0)
    800045e0:	00853603          	ld	a2,8(a0)
    800045e4:	00053583          	ld	a1,0(a0)
    800045e8:	34051573          	csrrw	a0,mscratch,a0
    800045ec:	30200073          	mret

00000000800045f0 <plicinit>:
    800045f0:	ff010113          	addi	sp,sp,-16
    800045f4:	00813423          	sd	s0,8(sp)
    800045f8:	01010413          	addi	s0,sp,16
    800045fc:	00813403          	ld	s0,8(sp)
    80004600:	0c0007b7          	lui	a5,0xc000
    80004604:	00100713          	li	a4,1
    80004608:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000460c:	00e7a223          	sw	a4,4(a5)
    80004610:	01010113          	addi	sp,sp,16
    80004614:	00008067          	ret

0000000080004618 <plicinithart>:
    80004618:	ff010113          	addi	sp,sp,-16
    8000461c:	00813023          	sd	s0,0(sp)
    80004620:	00113423          	sd	ra,8(sp)
    80004624:	01010413          	addi	s0,sp,16
    80004628:	00000097          	auipc	ra,0x0
    8000462c:	a48080e7          	jalr	-1464(ra) # 80004070 <cpuid>
    80004630:	0085171b          	slliw	a4,a0,0x8
    80004634:	0c0027b7          	lui	a5,0xc002
    80004638:	00e787b3          	add	a5,a5,a4
    8000463c:	40200713          	li	a4,1026
    80004640:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004644:	00813083          	ld	ra,8(sp)
    80004648:	00013403          	ld	s0,0(sp)
    8000464c:	00d5151b          	slliw	a0,a0,0xd
    80004650:	0c2017b7          	lui	a5,0xc201
    80004654:	00a78533          	add	a0,a5,a0
    80004658:	00052023          	sw	zero,0(a0)
    8000465c:	01010113          	addi	sp,sp,16
    80004660:	00008067          	ret

0000000080004664 <plic_claim>:
    80004664:	ff010113          	addi	sp,sp,-16
    80004668:	00813023          	sd	s0,0(sp)
    8000466c:	00113423          	sd	ra,8(sp)
    80004670:	01010413          	addi	s0,sp,16
    80004674:	00000097          	auipc	ra,0x0
    80004678:	9fc080e7          	jalr	-1540(ra) # 80004070 <cpuid>
    8000467c:	00813083          	ld	ra,8(sp)
    80004680:	00013403          	ld	s0,0(sp)
    80004684:	00d5151b          	slliw	a0,a0,0xd
    80004688:	0c2017b7          	lui	a5,0xc201
    8000468c:	00a78533          	add	a0,a5,a0
    80004690:	00452503          	lw	a0,4(a0)
    80004694:	01010113          	addi	sp,sp,16
    80004698:	00008067          	ret

000000008000469c <plic_complete>:
    8000469c:	fe010113          	addi	sp,sp,-32
    800046a0:	00813823          	sd	s0,16(sp)
    800046a4:	00913423          	sd	s1,8(sp)
    800046a8:	00113c23          	sd	ra,24(sp)
    800046ac:	02010413          	addi	s0,sp,32
    800046b0:	00050493          	mv	s1,a0
    800046b4:	00000097          	auipc	ra,0x0
    800046b8:	9bc080e7          	jalr	-1604(ra) # 80004070 <cpuid>
    800046bc:	01813083          	ld	ra,24(sp)
    800046c0:	01013403          	ld	s0,16(sp)
    800046c4:	00d5179b          	slliw	a5,a0,0xd
    800046c8:	0c201737          	lui	a4,0xc201
    800046cc:	00f707b3          	add	a5,a4,a5
    800046d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800046d4:	00813483          	ld	s1,8(sp)
    800046d8:	02010113          	addi	sp,sp,32
    800046dc:	00008067          	ret

00000000800046e0 <consolewrite>:
    800046e0:	fb010113          	addi	sp,sp,-80
    800046e4:	04813023          	sd	s0,64(sp)
    800046e8:	04113423          	sd	ra,72(sp)
    800046ec:	02913c23          	sd	s1,56(sp)
    800046f0:	03213823          	sd	s2,48(sp)
    800046f4:	03313423          	sd	s3,40(sp)
    800046f8:	03413023          	sd	s4,32(sp)
    800046fc:	01513c23          	sd	s5,24(sp)
    80004700:	05010413          	addi	s0,sp,80
    80004704:	06c05c63          	blez	a2,8000477c <consolewrite+0x9c>
    80004708:	00060993          	mv	s3,a2
    8000470c:	00050a13          	mv	s4,a0
    80004710:	00058493          	mv	s1,a1
    80004714:	00000913          	li	s2,0
    80004718:	fff00a93          	li	s5,-1
    8000471c:	01c0006f          	j	80004738 <consolewrite+0x58>
    80004720:	fbf44503          	lbu	a0,-65(s0)
    80004724:	0019091b          	addiw	s2,s2,1
    80004728:	00148493          	addi	s1,s1,1
    8000472c:	00001097          	auipc	ra,0x1
    80004730:	a9c080e7          	jalr	-1380(ra) # 800051c8 <uartputc>
    80004734:	03298063          	beq	s3,s2,80004754 <consolewrite+0x74>
    80004738:	00048613          	mv	a2,s1
    8000473c:	00100693          	li	a3,1
    80004740:	000a0593          	mv	a1,s4
    80004744:	fbf40513          	addi	a0,s0,-65
    80004748:	00000097          	auipc	ra,0x0
    8000474c:	9e0080e7          	jalr	-1568(ra) # 80004128 <either_copyin>
    80004750:	fd5518e3          	bne	a0,s5,80004720 <consolewrite+0x40>
    80004754:	04813083          	ld	ra,72(sp)
    80004758:	04013403          	ld	s0,64(sp)
    8000475c:	03813483          	ld	s1,56(sp)
    80004760:	02813983          	ld	s3,40(sp)
    80004764:	02013a03          	ld	s4,32(sp)
    80004768:	01813a83          	ld	s5,24(sp)
    8000476c:	00090513          	mv	a0,s2
    80004770:	03013903          	ld	s2,48(sp)
    80004774:	05010113          	addi	sp,sp,80
    80004778:	00008067          	ret
    8000477c:	00000913          	li	s2,0
    80004780:	fd5ff06f          	j	80004754 <consolewrite+0x74>

0000000080004784 <consoleread>:
    80004784:	f9010113          	addi	sp,sp,-112
    80004788:	06813023          	sd	s0,96(sp)
    8000478c:	04913c23          	sd	s1,88(sp)
    80004790:	05213823          	sd	s2,80(sp)
    80004794:	05313423          	sd	s3,72(sp)
    80004798:	05413023          	sd	s4,64(sp)
    8000479c:	03513c23          	sd	s5,56(sp)
    800047a0:	03613823          	sd	s6,48(sp)
    800047a4:	03713423          	sd	s7,40(sp)
    800047a8:	03813023          	sd	s8,32(sp)
    800047ac:	06113423          	sd	ra,104(sp)
    800047b0:	01913c23          	sd	s9,24(sp)
    800047b4:	07010413          	addi	s0,sp,112
    800047b8:	00060b93          	mv	s7,a2
    800047bc:	00050913          	mv	s2,a0
    800047c0:	00058c13          	mv	s8,a1
    800047c4:	00060b1b          	sext.w	s6,a2
    800047c8:	00004497          	auipc	s1,0x4
    800047cc:	00048493          	mv	s1,s1
    800047d0:	00400993          	li	s3,4
    800047d4:	fff00a13          	li	s4,-1
    800047d8:	00a00a93          	li	s5,10
    800047dc:	05705e63          	blez	s7,80004838 <consoleread+0xb4>
    800047e0:	09c4a703          	lw	a4,156(s1) # 80008864 <cons+0x9c>
    800047e4:	0984a783          	lw	a5,152(s1)
    800047e8:	0007071b          	sext.w	a4,a4
    800047ec:	08e78463          	beq	a5,a4,80004874 <consoleread+0xf0>
    800047f0:	07f7f713          	andi	a4,a5,127
    800047f4:	00e48733          	add	a4,s1,a4
    800047f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800047fc:	0017869b          	addiw	a3,a5,1
    80004800:	08d4ac23          	sw	a3,152(s1)
    80004804:	00070c9b          	sext.w	s9,a4
    80004808:	0b370663          	beq	a4,s3,800048b4 <consoleread+0x130>
    8000480c:	00100693          	li	a3,1
    80004810:	f9f40613          	addi	a2,s0,-97
    80004814:	000c0593          	mv	a1,s8
    80004818:	00090513          	mv	a0,s2
    8000481c:	f8e40fa3          	sb	a4,-97(s0)
    80004820:	00000097          	auipc	ra,0x0
    80004824:	8bc080e7          	jalr	-1860(ra) # 800040dc <either_copyout>
    80004828:	01450863          	beq	a0,s4,80004838 <consoleread+0xb4>
    8000482c:	001c0c13          	addi	s8,s8,1
    80004830:	fffb8b9b          	addiw	s7,s7,-1
    80004834:	fb5c94e3          	bne	s9,s5,800047dc <consoleread+0x58>
    80004838:	000b851b          	sext.w	a0,s7
    8000483c:	06813083          	ld	ra,104(sp)
    80004840:	06013403          	ld	s0,96(sp)
    80004844:	05813483          	ld	s1,88(sp)
    80004848:	05013903          	ld	s2,80(sp)
    8000484c:	04813983          	ld	s3,72(sp)
    80004850:	04013a03          	ld	s4,64(sp)
    80004854:	03813a83          	ld	s5,56(sp)
    80004858:	02813b83          	ld	s7,40(sp)
    8000485c:	02013c03          	ld	s8,32(sp)
    80004860:	01813c83          	ld	s9,24(sp)
    80004864:	40ab053b          	subw	a0,s6,a0
    80004868:	03013b03          	ld	s6,48(sp)
    8000486c:	07010113          	addi	sp,sp,112
    80004870:	00008067          	ret
    80004874:	00001097          	auipc	ra,0x1
    80004878:	1d8080e7          	jalr	472(ra) # 80005a4c <push_on>
    8000487c:	0984a703          	lw	a4,152(s1)
    80004880:	09c4a783          	lw	a5,156(s1)
    80004884:	0007879b          	sext.w	a5,a5
    80004888:	fef70ce3          	beq	a4,a5,80004880 <consoleread+0xfc>
    8000488c:	00001097          	auipc	ra,0x1
    80004890:	234080e7          	jalr	564(ra) # 80005ac0 <pop_on>
    80004894:	0984a783          	lw	a5,152(s1)
    80004898:	07f7f713          	andi	a4,a5,127
    8000489c:	00e48733          	add	a4,s1,a4
    800048a0:	01874703          	lbu	a4,24(a4)
    800048a4:	0017869b          	addiw	a3,a5,1
    800048a8:	08d4ac23          	sw	a3,152(s1)
    800048ac:	00070c9b          	sext.w	s9,a4
    800048b0:	f5371ee3          	bne	a4,s3,8000480c <consoleread+0x88>
    800048b4:	000b851b          	sext.w	a0,s7
    800048b8:	f96bf2e3          	bgeu	s7,s6,8000483c <consoleread+0xb8>
    800048bc:	08f4ac23          	sw	a5,152(s1)
    800048c0:	f7dff06f          	j	8000483c <consoleread+0xb8>

00000000800048c4 <consputc>:
    800048c4:	10000793          	li	a5,256
    800048c8:	00f50663          	beq	a0,a5,800048d4 <consputc+0x10>
    800048cc:	00001317          	auipc	t1,0x1
    800048d0:	9f430067          	jr	-1548(t1) # 800052c0 <uartputc_sync>
    800048d4:	ff010113          	addi	sp,sp,-16
    800048d8:	00113423          	sd	ra,8(sp)
    800048dc:	00813023          	sd	s0,0(sp)
    800048e0:	01010413          	addi	s0,sp,16
    800048e4:	00800513          	li	a0,8
    800048e8:	00001097          	auipc	ra,0x1
    800048ec:	9d8080e7          	jalr	-1576(ra) # 800052c0 <uartputc_sync>
    800048f0:	02000513          	li	a0,32
    800048f4:	00001097          	auipc	ra,0x1
    800048f8:	9cc080e7          	jalr	-1588(ra) # 800052c0 <uartputc_sync>
    800048fc:	00013403          	ld	s0,0(sp)
    80004900:	00813083          	ld	ra,8(sp)
    80004904:	00800513          	li	a0,8
    80004908:	01010113          	addi	sp,sp,16
    8000490c:	00001317          	auipc	t1,0x1
    80004910:	9b430067          	jr	-1612(t1) # 800052c0 <uartputc_sync>

0000000080004914 <consoleintr>:
    80004914:	fe010113          	addi	sp,sp,-32
    80004918:	00813823          	sd	s0,16(sp)
    8000491c:	00913423          	sd	s1,8(sp)
    80004920:	01213023          	sd	s2,0(sp)
    80004924:	00113c23          	sd	ra,24(sp)
    80004928:	02010413          	addi	s0,sp,32
    8000492c:	00004917          	auipc	s2,0x4
    80004930:	e9c90913          	addi	s2,s2,-356 # 800087c8 <cons>
    80004934:	00050493          	mv	s1,a0
    80004938:	00090513          	mv	a0,s2
    8000493c:	00001097          	auipc	ra,0x1
    80004940:	e40080e7          	jalr	-448(ra) # 8000577c <acquire>
    80004944:	02048c63          	beqz	s1,8000497c <consoleintr+0x68>
    80004948:	0a092783          	lw	a5,160(s2)
    8000494c:	09892703          	lw	a4,152(s2)
    80004950:	07f00693          	li	a3,127
    80004954:	40e7873b          	subw	a4,a5,a4
    80004958:	02e6e263          	bltu	a3,a4,8000497c <consoleintr+0x68>
    8000495c:	00d00713          	li	a4,13
    80004960:	04e48063          	beq	s1,a4,800049a0 <consoleintr+0x8c>
    80004964:	07f7f713          	andi	a4,a5,127
    80004968:	00e90733          	add	a4,s2,a4
    8000496c:	0017879b          	addiw	a5,a5,1
    80004970:	0af92023          	sw	a5,160(s2)
    80004974:	00970c23          	sb	s1,24(a4)
    80004978:	08f92e23          	sw	a5,156(s2)
    8000497c:	01013403          	ld	s0,16(sp)
    80004980:	01813083          	ld	ra,24(sp)
    80004984:	00813483          	ld	s1,8(sp)
    80004988:	00013903          	ld	s2,0(sp)
    8000498c:	00004517          	auipc	a0,0x4
    80004990:	e3c50513          	addi	a0,a0,-452 # 800087c8 <cons>
    80004994:	02010113          	addi	sp,sp,32
    80004998:	00001317          	auipc	t1,0x1
    8000499c:	eb030067          	jr	-336(t1) # 80005848 <release>
    800049a0:	00a00493          	li	s1,10
    800049a4:	fc1ff06f          	j	80004964 <consoleintr+0x50>

00000000800049a8 <consoleinit>:
    800049a8:	fe010113          	addi	sp,sp,-32
    800049ac:	00113c23          	sd	ra,24(sp)
    800049b0:	00813823          	sd	s0,16(sp)
    800049b4:	00913423          	sd	s1,8(sp)
    800049b8:	02010413          	addi	s0,sp,32
    800049bc:	00004497          	auipc	s1,0x4
    800049c0:	e0c48493          	addi	s1,s1,-500 # 800087c8 <cons>
    800049c4:	00048513          	mv	a0,s1
    800049c8:	00002597          	auipc	a1,0x2
    800049cc:	99858593          	addi	a1,a1,-1640 # 80006360 <CONSOLE_STATUS+0x350>
    800049d0:	00001097          	auipc	ra,0x1
    800049d4:	d88080e7          	jalr	-632(ra) # 80005758 <initlock>
    800049d8:	00000097          	auipc	ra,0x0
    800049dc:	7ac080e7          	jalr	1964(ra) # 80005184 <uartinit>
    800049e0:	01813083          	ld	ra,24(sp)
    800049e4:	01013403          	ld	s0,16(sp)
    800049e8:	00000797          	auipc	a5,0x0
    800049ec:	d9c78793          	addi	a5,a5,-612 # 80004784 <consoleread>
    800049f0:	0af4bc23          	sd	a5,184(s1)
    800049f4:	00000797          	auipc	a5,0x0
    800049f8:	cec78793          	addi	a5,a5,-788 # 800046e0 <consolewrite>
    800049fc:	0cf4b023          	sd	a5,192(s1)
    80004a00:	00813483          	ld	s1,8(sp)
    80004a04:	02010113          	addi	sp,sp,32
    80004a08:	00008067          	ret

0000000080004a0c <console_read>:
    80004a0c:	ff010113          	addi	sp,sp,-16
    80004a10:	00813423          	sd	s0,8(sp)
    80004a14:	01010413          	addi	s0,sp,16
    80004a18:	00813403          	ld	s0,8(sp)
    80004a1c:	00004317          	auipc	t1,0x4
    80004a20:	e6433303          	ld	t1,-412(t1) # 80008880 <devsw+0x10>
    80004a24:	01010113          	addi	sp,sp,16
    80004a28:	00030067          	jr	t1

0000000080004a2c <console_write>:
    80004a2c:	ff010113          	addi	sp,sp,-16
    80004a30:	00813423          	sd	s0,8(sp)
    80004a34:	01010413          	addi	s0,sp,16
    80004a38:	00813403          	ld	s0,8(sp)
    80004a3c:	00004317          	auipc	t1,0x4
    80004a40:	e4c33303          	ld	t1,-436(t1) # 80008888 <devsw+0x18>
    80004a44:	01010113          	addi	sp,sp,16
    80004a48:	00030067          	jr	t1

0000000080004a4c <panic>:
    80004a4c:	fe010113          	addi	sp,sp,-32
    80004a50:	00113c23          	sd	ra,24(sp)
    80004a54:	00813823          	sd	s0,16(sp)
    80004a58:	00913423          	sd	s1,8(sp)
    80004a5c:	02010413          	addi	s0,sp,32
    80004a60:	00050493          	mv	s1,a0
    80004a64:	00002517          	auipc	a0,0x2
    80004a68:	90450513          	addi	a0,a0,-1788 # 80006368 <CONSOLE_STATUS+0x358>
    80004a6c:	00004797          	auipc	a5,0x4
    80004a70:	ea07ae23          	sw	zero,-324(a5) # 80008928 <pr+0x18>
    80004a74:	00000097          	auipc	ra,0x0
    80004a78:	034080e7          	jalr	52(ra) # 80004aa8 <__printf>
    80004a7c:	00048513          	mv	a0,s1
    80004a80:	00000097          	auipc	ra,0x0
    80004a84:	028080e7          	jalr	40(ra) # 80004aa8 <__printf>
    80004a88:	00002517          	auipc	a0,0x2
    80004a8c:	8c050513          	addi	a0,a0,-1856 # 80006348 <CONSOLE_STATUS+0x338>
    80004a90:	00000097          	auipc	ra,0x0
    80004a94:	018080e7          	jalr	24(ra) # 80004aa8 <__printf>
    80004a98:	00100793          	li	a5,1
    80004a9c:	00003717          	auipc	a4,0x3
    80004aa0:	bcf72e23          	sw	a5,-1060(a4) # 80007678 <panicked>
    80004aa4:	0000006f          	j	80004aa4 <panic+0x58>

0000000080004aa8 <__printf>:
    80004aa8:	f3010113          	addi	sp,sp,-208
    80004aac:	08813023          	sd	s0,128(sp)
    80004ab0:	07313423          	sd	s3,104(sp)
    80004ab4:	09010413          	addi	s0,sp,144
    80004ab8:	05813023          	sd	s8,64(sp)
    80004abc:	08113423          	sd	ra,136(sp)
    80004ac0:	06913c23          	sd	s1,120(sp)
    80004ac4:	07213823          	sd	s2,112(sp)
    80004ac8:	07413023          	sd	s4,96(sp)
    80004acc:	05513c23          	sd	s5,88(sp)
    80004ad0:	05613823          	sd	s6,80(sp)
    80004ad4:	05713423          	sd	s7,72(sp)
    80004ad8:	03913c23          	sd	s9,56(sp)
    80004adc:	03a13823          	sd	s10,48(sp)
    80004ae0:	03b13423          	sd	s11,40(sp)
    80004ae4:	00004317          	auipc	t1,0x4
    80004ae8:	e2c30313          	addi	t1,t1,-468 # 80008910 <pr>
    80004aec:	01832c03          	lw	s8,24(t1)
    80004af0:	00b43423          	sd	a1,8(s0)
    80004af4:	00c43823          	sd	a2,16(s0)
    80004af8:	00d43c23          	sd	a3,24(s0)
    80004afc:	02e43023          	sd	a4,32(s0)
    80004b00:	02f43423          	sd	a5,40(s0)
    80004b04:	03043823          	sd	a6,48(s0)
    80004b08:	03143c23          	sd	a7,56(s0)
    80004b0c:	00050993          	mv	s3,a0
    80004b10:	4a0c1663          	bnez	s8,80004fbc <__printf+0x514>
    80004b14:	60098c63          	beqz	s3,8000512c <__printf+0x684>
    80004b18:	0009c503          	lbu	a0,0(s3)
    80004b1c:	00840793          	addi	a5,s0,8
    80004b20:	f6f43c23          	sd	a5,-136(s0)
    80004b24:	00000493          	li	s1,0
    80004b28:	22050063          	beqz	a0,80004d48 <__printf+0x2a0>
    80004b2c:	00002a37          	lui	s4,0x2
    80004b30:	00018ab7          	lui	s5,0x18
    80004b34:	000f4b37          	lui	s6,0xf4
    80004b38:	00989bb7          	lui	s7,0x989
    80004b3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004b40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004b44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004b48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80004b4c:	00148c9b          	addiw	s9,s1,1
    80004b50:	02500793          	li	a5,37
    80004b54:	01998933          	add	s2,s3,s9
    80004b58:	38f51263          	bne	a0,a5,80004edc <__printf+0x434>
    80004b5c:	00094783          	lbu	a5,0(s2)
    80004b60:	00078c9b          	sext.w	s9,a5
    80004b64:	1e078263          	beqz	a5,80004d48 <__printf+0x2a0>
    80004b68:	0024849b          	addiw	s1,s1,2
    80004b6c:	07000713          	li	a4,112
    80004b70:	00998933          	add	s2,s3,s1
    80004b74:	38e78a63          	beq	a5,a4,80004f08 <__printf+0x460>
    80004b78:	20f76863          	bltu	a4,a5,80004d88 <__printf+0x2e0>
    80004b7c:	42a78863          	beq	a5,a0,80004fac <__printf+0x504>
    80004b80:	06400713          	li	a4,100
    80004b84:	40e79663          	bne	a5,a4,80004f90 <__printf+0x4e8>
    80004b88:	f7843783          	ld	a5,-136(s0)
    80004b8c:	0007a603          	lw	a2,0(a5)
    80004b90:	00878793          	addi	a5,a5,8
    80004b94:	f6f43c23          	sd	a5,-136(s0)
    80004b98:	42064a63          	bltz	a2,80004fcc <__printf+0x524>
    80004b9c:	00a00713          	li	a4,10
    80004ba0:	02e677bb          	remuw	a5,a2,a4
    80004ba4:	00001d97          	auipc	s11,0x1
    80004ba8:	7ecd8d93          	addi	s11,s11,2028 # 80006390 <digits>
    80004bac:	00900593          	li	a1,9
    80004bb0:	0006051b          	sext.w	a0,a2
    80004bb4:	00000c93          	li	s9,0
    80004bb8:	02079793          	slli	a5,a5,0x20
    80004bbc:	0207d793          	srli	a5,a5,0x20
    80004bc0:	00fd87b3          	add	a5,s11,a5
    80004bc4:	0007c783          	lbu	a5,0(a5)
    80004bc8:	02e656bb          	divuw	a3,a2,a4
    80004bcc:	f8f40023          	sb	a5,-128(s0)
    80004bd0:	14c5d863          	bge	a1,a2,80004d20 <__printf+0x278>
    80004bd4:	06300593          	li	a1,99
    80004bd8:	00100c93          	li	s9,1
    80004bdc:	02e6f7bb          	remuw	a5,a3,a4
    80004be0:	02079793          	slli	a5,a5,0x20
    80004be4:	0207d793          	srli	a5,a5,0x20
    80004be8:	00fd87b3          	add	a5,s11,a5
    80004bec:	0007c783          	lbu	a5,0(a5)
    80004bf0:	02e6d73b          	divuw	a4,a3,a4
    80004bf4:	f8f400a3          	sb	a5,-127(s0)
    80004bf8:	12a5f463          	bgeu	a1,a0,80004d20 <__printf+0x278>
    80004bfc:	00a00693          	li	a3,10
    80004c00:	00900593          	li	a1,9
    80004c04:	02d777bb          	remuw	a5,a4,a3
    80004c08:	02079793          	slli	a5,a5,0x20
    80004c0c:	0207d793          	srli	a5,a5,0x20
    80004c10:	00fd87b3          	add	a5,s11,a5
    80004c14:	0007c503          	lbu	a0,0(a5)
    80004c18:	02d757bb          	divuw	a5,a4,a3
    80004c1c:	f8a40123          	sb	a0,-126(s0)
    80004c20:	48e5f263          	bgeu	a1,a4,800050a4 <__printf+0x5fc>
    80004c24:	06300513          	li	a0,99
    80004c28:	02d7f5bb          	remuw	a1,a5,a3
    80004c2c:	02059593          	slli	a1,a1,0x20
    80004c30:	0205d593          	srli	a1,a1,0x20
    80004c34:	00bd85b3          	add	a1,s11,a1
    80004c38:	0005c583          	lbu	a1,0(a1)
    80004c3c:	02d7d7bb          	divuw	a5,a5,a3
    80004c40:	f8b401a3          	sb	a1,-125(s0)
    80004c44:	48e57263          	bgeu	a0,a4,800050c8 <__printf+0x620>
    80004c48:	3e700513          	li	a0,999
    80004c4c:	02d7f5bb          	remuw	a1,a5,a3
    80004c50:	02059593          	slli	a1,a1,0x20
    80004c54:	0205d593          	srli	a1,a1,0x20
    80004c58:	00bd85b3          	add	a1,s11,a1
    80004c5c:	0005c583          	lbu	a1,0(a1)
    80004c60:	02d7d7bb          	divuw	a5,a5,a3
    80004c64:	f8b40223          	sb	a1,-124(s0)
    80004c68:	46e57663          	bgeu	a0,a4,800050d4 <__printf+0x62c>
    80004c6c:	02d7f5bb          	remuw	a1,a5,a3
    80004c70:	02059593          	slli	a1,a1,0x20
    80004c74:	0205d593          	srli	a1,a1,0x20
    80004c78:	00bd85b3          	add	a1,s11,a1
    80004c7c:	0005c583          	lbu	a1,0(a1)
    80004c80:	02d7d7bb          	divuw	a5,a5,a3
    80004c84:	f8b402a3          	sb	a1,-123(s0)
    80004c88:	46ea7863          	bgeu	s4,a4,800050f8 <__printf+0x650>
    80004c8c:	02d7f5bb          	remuw	a1,a5,a3
    80004c90:	02059593          	slli	a1,a1,0x20
    80004c94:	0205d593          	srli	a1,a1,0x20
    80004c98:	00bd85b3          	add	a1,s11,a1
    80004c9c:	0005c583          	lbu	a1,0(a1)
    80004ca0:	02d7d7bb          	divuw	a5,a5,a3
    80004ca4:	f8b40323          	sb	a1,-122(s0)
    80004ca8:	3eeaf863          	bgeu	s5,a4,80005098 <__printf+0x5f0>
    80004cac:	02d7f5bb          	remuw	a1,a5,a3
    80004cb0:	02059593          	slli	a1,a1,0x20
    80004cb4:	0205d593          	srli	a1,a1,0x20
    80004cb8:	00bd85b3          	add	a1,s11,a1
    80004cbc:	0005c583          	lbu	a1,0(a1)
    80004cc0:	02d7d7bb          	divuw	a5,a5,a3
    80004cc4:	f8b403a3          	sb	a1,-121(s0)
    80004cc8:	42eb7e63          	bgeu	s6,a4,80005104 <__printf+0x65c>
    80004ccc:	02d7f5bb          	remuw	a1,a5,a3
    80004cd0:	02059593          	slli	a1,a1,0x20
    80004cd4:	0205d593          	srli	a1,a1,0x20
    80004cd8:	00bd85b3          	add	a1,s11,a1
    80004cdc:	0005c583          	lbu	a1,0(a1)
    80004ce0:	02d7d7bb          	divuw	a5,a5,a3
    80004ce4:	f8b40423          	sb	a1,-120(s0)
    80004ce8:	42ebfc63          	bgeu	s7,a4,80005120 <__printf+0x678>
    80004cec:	02079793          	slli	a5,a5,0x20
    80004cf0:	0207d793          	srli	a5,a5,0x20
    80004cf4:	00fd8db3          	add	s11,s11,a5
    80004cf8:	000dc703          	lbu	a4,0(s11)
    80004cfc:	00a00793          	li	a5,10
    80004d00:	00900c93          	li	s9,9
    80004d04:	f8e404a3          	sb	a4,-119(s0)
    80004d08:	00065c63          	bgez	a2,80004d20 <__printf+0x278>
    80004d0c:	f9040713          	addi	a4,s0,-112
    80004d10:	00f70733          	add	a4,a4,a5
    80004d14:	02d00693          	li	a3,45
    80004d18:	fed70823          	sb	a3,-16(a4)
    80004d1c:	00078c93          	mv	s9,a5
    80004d20:	f8040793          	addi	a5,s0,-128
    80004d24:	01978cb3          	add	s9,a5,s9
    80004d28:	f7f40d13          	addi	s10,s0,-129
    80004d2c:	000cc503          	lbu	a0,0(s9)
    80004d30:	fffc8c93          	addi	s9,s9,-1
    80004d34:	00000097          	auipc	ra,0x0
    80004d38:	b90080e7          	jalr	-1136(ra) # 800048c4 <consputc>
    80004d3c:	ffac98e3          	bne	s9,s10,80004d2c <__printf+0x284>
    80004d40:	00094503          	lbu	a0,0(s2)
    80004d44:	e00514e3          	bnez	a0,80004b4c <__printf+0xa4>
    80004d48:	1a0c1663          	bnez	s8,80004ef4 <__printf+0x44c>
    80004d4c:	08813083          	ld	ra,136(sp)
    80004d50:	08013403          	ld	s0,128(sp)
    80004d54:	07813483          	ld	s1,120(sp)
    80004d58:	07013903          	ld	s2,112(sp)
    80004d5c:	06813983          	ld	s3,104(sp)
    80004d60:	06013a03          	ld	s4,96(sp)
    80004d64:	05813a83          	ld	s5,88(sp)
    80004d68:	05013b03          	ld	s6,80(sp)
    80004d6c:	04813b83          	ld	s7,72(sp)
    80004d70:	04013c03          	ld	s8,64(sp)
    80004d74:	03813c83          	ld	s9,56(sp)
    80004d78:	03013d03          	ld	s10,48(sp)
    80004d7c:	02813d83          	ld	s11,40(sp)
    80004d80:	0d010113          	addi	sp,sp,208
    80004d84:	00008067          	ret
    80004d88:	07300713          	li	a4,115
    80004d8c:	1ce78a63          	beq	a5,a4,80004f60 <__printf+0x4b8>
    80004d90:	07800713          	li	a4,120
    80004d94:	1ee79e63          	bne	a5,a4,80004f90 <__printf+0x4e8>
    80004d98:	f7843783          	ld	a5,-136(s0)
    80004d9c:	0007a703          	lw	a4,0(a5)
    80004da0:	00878793          	addi	a5,a5,8
    80004da4:	f6f43c23          	sd	a5,-136(s0)
    80004da8:	28074263          	bltz	a4,8000502c <__printf+0x584>
    80004dac:	00001d97          	auipc	s11,0x1
    80004db0:	5e4d8d93          	addi	s11,s11,1508 # 80006390 <digits>
    80004db4:	00f77793          	andi	a5,a4,15
    80004db8:	00fd87b3          	add	a5,s11,a5
    80004dbc:	0007c683          	lbu	a3,0(a5)
    80004dc0:	00f00613          	li	a2,15
    80004dc4:	0007079b          	sext.w	a5,a4
    80004dc8:	f8d40023          	sb	a3,-128(s0)
    80004dcc:	0047559b          	srliw	a1,a4,0x4
    80004dd0:	0047569b          	srliw	a3,a4,0x4
    80004dd4:	00000c93          	li	s9,0
    80004dd8:	0ee65063          	bge	a2,a4,80004eb8 <__printf+0x410>
    80004ddc:	00f6f693          	andi	a3,a3,15
    80004de0:	00dd86b3          	add	a3,s11,a3
    80004de4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004de8:	0087d79b          	srliw	a5,a5,0x8
    80004dec:	00100c93          	li	s9,1
    80004df0:	f8d400a3          	sb	a3,-127(s0)
    80004df4:	0cb67263          	bgeu	a2,a1,80004eb8 <__printf+0x410>
    80004df8:	00f7f693          	andi	a3,a5,15
    80004dfc:	00dd86b3          	add	a3,s11,a3
    80004e00:	0006c583          	lbu	a1,0(a3)
    80004e04:	00f00613          	li	a2,15
    80004e08:	0047d69b          	srliw	a3,a5,0x4
    80004e0c:	f8b40123          	sb	a1,-126(s0)
    80004e10:	0047d593          	srli	a1,a5,0x4
    80004e14:	28f67e63          	bgeu	a2,a5,800050b0 <__printf+0x608>
    80004e18:	00f6f693          	andi	a3,a3,15
    80004e1c:	00dd86b3          	add	a3,s11,a3
    80004e20:	0006c503          	lbu	a0,0(a3)
    80004e24:	0087d813          	srli	a6,a5,0x8
    80004e28:	0087d69b          	srliw	a3,a5,0x8
    80004e2c:	f8a401a3          	sb	a0,-125(s0)
    80004e30:	28b67663          	bgeu	a2,a1,800050bc <__printf+0x614>
    80004e34:	00f6f693          	andi	a3,a3,15
    80004e38:	00dd86b3          	add	a3,s11,a3
    80004e3c:	0006c583          	lbu	a1,0(a3)
    80004e40:	00c7d513          	srli	a0,a5,0xc
    80004e44:	00c7d69b          	srliw	a3,a5,0xc
    80004e48:	f8b40223          	sb	a1,-124(s0)
    80004e4c:	29067a63          	bgeu	a2,a6,800050e0 <__printf+0x638>
    80004e50:	00f6f693          	andi	a3,a3,15
    80004e54:	00dd86b3          	add	a3,s11,a3
    80004e58:	0006c583          	lbu	a1,0(a3)
    80004e5c:	0107d813          	srli	a6,a5,0x10
    80004e60:	0107d69b          	srliw	a3,a5,0x10
    80004e64:	f8b402a3          	sb	a1,-123(s0)
    80004e68:	28a67263          	bgeu	a2,a0,800050ec <__printf+0x644>
    80004e6c:	00f6f693          	andi	a3,a3,15
    80004e70:	00dd86b3          	add	a3,s11,a3
    80004e74:	0006c683          	lbu	a3,0(a3)
    80004e78:	0147d79b          	srliw	a5,a5,0x14
    80004e7c:	f8d40323          	sb	a3,-122(s0)
    80004e80:	21067663          	bgeu	a2,a6,8000508c <__printf+0x5e4>
    80004e84:	02079793          	slli	a5,a5,0x20
    80004e88:	0207d793          	srli	a5,a5,0x20
    80004e8c:	00fd8db3          	add	s11,s11,a5
    80004e90:	000dc683          	lbu	a3,0(s11)
    80004e94:	00800793          	li	a5,8
    80004e98:	00700c93          	li	s9,7
    80004e9c:	f8d403a3          	sb	a3,-121(s0)
    80004ea0:	00075c63          	bgez	a4,80004eb8 <__printf+0x410>
    80004ea4:	f9040713          	addi	a4,s0,-112
    80004ea8:	00f70733          	add	a4,a4,a5
    80004eac:	02d00693          	li	a3,45
    80004eb0:	fed70823          	sb	a3,-16(a4)
    80004eb4:	00078c93          	mv	s9,a5
    80004eb8:	f8040793          	addi	a5,s0,-128
    80004ebc:	01978cb3          	add	s9,a5,s9
    80004ec0:	f7f40d13          	addi	s10,s0,-129
    80004ec4:	000cc503          	lbu	a0,0(s9)
    80004ec8:	fffc8c93          	addi	s9,s9,-1
    80004ecc:	00000097          	auipc	ra,0x0
    80004ed0:	9f8080e7          	jalr	-1544(ra) # 800048c4 <consputc>
    80004ed4:	ff9d18e3          	bne	s10,s9,80004ec4 <__printf+0x41c>
    80004ed8:	0100006f          	j	80004ee8 <__printf+0x440>
    80004edc:	00000097          	auipc	ra,0x0
    80004ee0:	9e8080e7          	jalr	-1560(ra) # 800048c4 <consputc>
    80004ee4:	000c8493          	mv	s1,s9
    80004ee8:	00094503          	lbu	a0,0(s2)
    80004eec:	c60510e3          	bnez	a0,80004b4c <__printf+0xa4>
    80004ef0:	e40c0ee3          	beqz	s8,80004d4c <__printf+0x2a4>
    80004ef4:	00004517          	auipc	a0,0x4
    80004ef8:	a1c50513          	addi	a0,a0,-1508 # 80008910 <pr>
    80004efc:	00001097          	auipc	ra,0x1
    80004f00:	94c080e7          	jalr	-1716(ra) # 80005848 <release>
    80004f04:	e49ff06f          	j	80004d4c <__printf+0x2a4>
    80004f08:	f7843783          	ld	a5,-136(s0)
    80004f0c:	03000513          	li	a0,48
    80004f10:	01000d13          	li	s10,16
    80004f14:	00878713          	addi	a4,a5,8
    80004f18:	0007bc83          	ld	s9,0(a5)
    80004f1c:	f6e43c23          	sd	a4,-136(s0)
    80004f20:	00000097          	auipc	ra,0x0
    80004f24:	9a4080e7          	jalr	-1628(ra) # 800048c4 <consputc>
    80004f28:	07800513          	li	a0,120
    80004f2c:	00000097          	auipc	ra,0x0
    80004f30:	998080e7          	jalr	-1640(ra) # 800048c4 <consputc>
    80004f34:	00001d97          	auipc	s11,0x1
    80004f38:	45cd8d93          	addi	s11,s11,1116 # 80006390 <digits>
    80004f3c:	03ccd793          	srli	a5,s9,0x3c
    80004f40:	00fd87b3          	add	a5,s11,a5
    80004f44:	0007c503          	lbu	a0,0(a5)
    80004f48:	fffd0d1b          	addiw	s10,s10,-1
    80004f4c:	004c9c93          	slli	s9,s9,0x4
    80004f50:	00000097          	auipc	ra,0x0
    80004f54:	974080e7          	jalr	-1676(ra) # 800048c4 <consputc>
    80004f58:	fe0d12e3          	bnez	s10,80004f3c <__printf+0x494>
    80004f5c:	f8dff06f          	j	80004ee8 <__printf+0x440>
    80004f60:	f7843783          	ld	a5,-136(s0)
    80004f64:	0007bc83          	ld	s9,0(a5)
    80004f68:	00878793          	addi	a5,a5,8
    80004f6c:	f6f43c23          	sd	a5,-136(s0)
    80004f70:	000c9a63          	bnez	s9,80004f84 <__printf+0x4dc>
    80004f74:	1080006f          	j	8000507c <__printf+0x5d4>
    80004f78:	001c8c93          	addi	s9,s9,1
    80004f7c:	00000097          	auipc	ra,0x0
    80004f80:	948080e7          	jalr	-1720(ra) # 800048c4 <consputc>
    80004f84:	000cc503          	lbu	a0,0(s9)
    80004f88:	fe0518e3          	bnez	a0,80004f78 <__printf+0x4d0>
    80004f8c:	f5dff06f          	j	80004ee8 <__printf+0x440>
    80004f90:	02500513          	li	a0,37
    80004f94:	00000097          	auipc	ra,0x0
    80004f98:	930080e7          	jalr	-1744(ra) # 800048c4 <consputc>
    80004f9c:	000c8513          	mv	a0,s9
    80004fa0:	00000097          	auipc	ra,0x0
    80004fa4:	924080e7          	jalr	-1756(ra) # 800048c4 <consputc>
    80004fa8:	f41ff06f          	j	80004ee8 <__printf+0x440>
    80004fac:	02500513          	li	a0,37
    80004fb0:	00000097          	auipc	ra,0x0
    80004fb4:	914080e7          	jalr	-1772(ra) # 800048c4 <consputc>
    80004fb8:	f31ff06f          	j	80004ee8 <__printf+0x440>
    80004fbc:	00030513          	mv	a0,t1
    80004fc0:	00000097          	auipc	ra,0x0
    80004fc4:	7bc080e7          	jalr	1980(ra) # 8000577c <acquire>
    80004fc8:	b4dff06f          	j	80004b14 <__printf+0x6c>
    80004fcc:	40c0053b          	negw	a0,a2
    80004fd0:	00a00713          	li	a4,10
    80004fd4:	02e576bb          	remuw	a3,a0,a4
    80004fd8:	00001d97          	auipc	s11,0x1
    80004fdc:	3b8d8d93          	addi	s11,s11,952 # 80006390 <digits>
    80004fe0:	ff700593          	li	a1,-9
    80004fe4:	02069693          	slli	a3,a3,0x20
    80004fe8:	0206d693          	srli	a3,a3,0x20
    80004fec:	00dd86b3          	add	a3,s11,a3
    80004ff0:	0006c683          	lbu	a3,0(a3)
    80004ff4:	02e557bb          	divuw	a5,a0,a4
    80004ff8:	f8d40023          	sb	a3,-128(s0)
    80004ffc:	10b65e63          	bge	a2,a1,80005118 <__printf+0x670>
    80005000:	06300593          	li	a1,99
    80005004:	02e7f6bb          	remuw	a3,a5,a4
    80005008:	02069693          	slli	a3,a3,0x20
    8000500c:	0206d693          	srli	a3,a3,0x20
    80005010:	00dd86b3          	add	a3,s11,a3
    80005014:	0006c683          	lbu	a3,0(a3)
    80005018:	02e7d73b          	divuw	a4,a5,a4
    8000501c:	00200793          	li	a5,2
    80005020:	f8d400a3          	sb	a3,-127(s0)
    80005024:	bca5ece3          	bltu	a1,a0,80004bfc <__printf+0x154>
    80005028:	ce5ff06f          	j	80004d0c <__printf+0x264>
    8000502c:	40e007bb          	negw	a5,a4
    80005030:	00001d97          	auipc	s11,0x1
    80005034:	360d8d93          	addi	s11,s11,864 # 80006390 <digits>
    80005038:	00f7f693          	andi	a3,a5,15
    8000503c:	00dd86b3          	add	a3,s11,a3
    80005040:	0006c583          	lbu	a1,0(a3)
    80005044:	ff100613          	li	a2,-15
    80005048:	0047d69b          	srliw	a3,a5,0x4
    8000504c:	f8b40023          	sb	a1,-128(s0)
    80005050:	0047d59b          	srliw	a1,a5,0x4
    80005054:	0ac75e63          	bge	a4,a2,80005110 <__printf+0x668>
    80005058:	00f6f693          	andi	a3,a3,15
    8000505c:	00dd86b3          	add	a3,s11,a3
    80005060:	0006c603          	lbu	a2,0(a3)
    80005064:	00f00693          	li	a3,15
    80005068:	0087d79b          	srliw	a5,a5,0x8
    8000506c:	f8c400a3          	sb	a2,-127(s0)
    80005070:	d8b6e4e3          	bltu	a3,a1,80004df8 <__printf+0x350>
    80005074:	00200793          	li	a5,2
    80005078:	e2dff06f          	j	80004ea4 <__printf+0x3fc>
    8000507c:	00001c97          	auipc	s9,0x1
    80005080:	2f4c8c93          	addi	s9,s9,756 # 80006370 <CONSOLE_STATUS+0x360>
    80005084:	02800513          	li	a0,40
    80005088:	ef1ff06f          	j	80004f78 <__printf+0x4d0>
    8000508c:	00700793          	li	a5,7
    80005090:	00600c93          	li	s9,6
    80005094:	e0dff06f          	j	80004ea0 <__printf+0x3f8>
    80005098:	00700793          	li	a5,7
    8000509c:	00600c93          	li	s9,6
    800050a0:	c69ff06f          	j	80004d08 <__printf+0x260>
    800050a4:	00300793          	li	a5,3
    800050a8:	00200c93          	li	s9,2
    800050ac:	c5dff06f          	j	80004d08 <__printf+0x260>
    800050b0:	00300793          	li	a5,3
    800050b4:	00200c93          	li	s9,2
    800050b8:	de9ff06f          	j	80004ea0 <__printf+0x3f8>
    800050bc:	00400793          	li	a5,4
    800050c0:	00300c93          	li	s9,3
    800050c4:	dddff06f          	j	80004ea0 <__printf+0x3f8>
    800050c8:	00400793          	li	a5,4
    800050cc:	00300c93          	li	s9,3
    800050d0:	c39ff06f          	j	80004d08 <__printf+0x260>
    800050d4:	00500793          	li	a5,5
    800050d8:	00400c93          	li	s9,4
    800050dc:	c2dff06f          	j	80004d08 <__printf+0x260>
    800050e0:	00500793          	li	a5,5
    800050e4:	00400c93          	li	s9,4
    800050e8:	db9ff06f          	j	80004ea0 <__printf+0x3f8>
    800050ec:	00600793          	li	a5,6
    800050f0:	00500c93          	li	s9,5
    800050f4:	dadff06f          	j	80004ea0 <__printf+0x3f8>
    800050f8:	00600793          	li	a5,6
    800050fc:	00500c93          	li	s9,5
    80005100:	c09ff06f          	j	80004d08 <__printf+0x260>
    80005104:	00800793          	li	a5,8
    80005108:	00700c93          	li	s9,7
    8000510c:	bfdff06f          	j	80004d08 <__printf+0x260>
    80005110:	00100793          	li	a5,1
    80005114:	d91ff06f          	j	80004ea4 <__printf+0x3fc>
    80005118:	00100793          	li	a5,1
    8000511c:	bf1ff06f          	j	80004d0c <__printf+0x264>
    80005120:	00900793          	li	a5,9
    80005124:	00800c93          	li	s9,8
    80005128:	be1ff06f          	j	80004d08 <__printf+0x260>
    8000512c:	00001517          	auipc	a0,0x1
    80005130:	24c50513          	addi	a0,a0,588 # 80006378 <CONSOLE_STATUS+0x368>
    80005134:	00000097          	auipc	ra,0x0
    80005138:	918080e7          	jalr	-1768(ra) # 80004a4c <panic>

000000008000513c <printfinit>:
    8000513c:	fe010113          	addi	sp,sp,-32
    80005140:	00813823          	sd	s0,16(sp)
    80005144:	00913423          	sd	s1,8(sp)
    80005148:	00113c23          	sd	ra,24(sp)
    8000514c:	02010413          	addi	s0,sp,32
    80005150:	00003497          	auipc	s1,0x3
    80005154:	7c048493          	addi	s1,s1,1984 # 80008910 <pr>
    80005158:	00048513          	mv	a0,s1
    8000515c:	00001597          	auipc	a1,0x1
    80005160:	22c58593          	addi	a1,a1,556 # 80006388 <CONSOLE_STATUS+0x378>
    80005164:	00000097          	auipc	ra,0x0
    80005168:	5f4080e7          	jalr	1524(ra) # 80005758 <initlock>
    8000516c:	01813083          	ld	ra,24(sp)
    80005170:	01013403          	ld	s0,16(sp)
    80005174:	0004ac23          	sw	zero,24(s1)
    80005178:	00813483          	ld	s1,8(sp)
    8000517c:	02010113          	addi	sp,sp,32
    80005180:	00008067          	ret

0000000080005184 <uartinit>:
    80005184:	ff010113          	addi	sp,sp,-16
    80005188:	00813423          	sd	s0,8(sp)
    8000518c:	01010413          	addi	s0,sp,16
    80005190:	100007b7          	lui	a5,0x10000
    80005194:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005198:	f8000713          	li	a4,-128
    8000519c:	00e781a3          	sb	a4,3(a5)
    800051a0:	00300713          	li	a4,3
    800051a4:	00e78023          	sb	a4,0(a5)
    800051a8:	000780a3          	sb	zero,1(a5)
    800051ac:	00e781a3          	sb	a4,3(a5)
    800051b0:	00700693          	li	a3,7
    800051b4:	00d78123          	sb	a3,2(a5)
    800051b8:	00e780a3          	sb	a4,1(a5)
    800051bc:	00813403          	ld	s0,8(sp)
    800051c0:	01010113          	addi	sp,sp,16
    800051c4:	00008067          	ret

00000000800051c8 <uartputc>:
    800051c8:	00002797          	auipc	a5,0x2
    800051cc:	4b07a783          	lw	a5,1200(a5) # 80007678 <panicked>
    800051d0:	00078463          	beqz	a5,800051d8 <uartputc+0x10>
    800051d4:	0000006f          	j	800051d4 <uartputc+0xc>
    800051d8:	fd010113          	addi	sp,sp,-48
    800051dc:	02813023          	sd	s0,32(sp)
    800051e0:	00913c23          	sd	s1,24(sp)
    800051e4:	01213823          	sd	s2,16(sp)
    800051e8:	01313423          	sd	s3,8(sp)
    800051ec:	02113423          	sd	ra,40(sp)
    800051f0:	03010413          	addi	s0,sp,48
    800051f4:	00002917          	auipc	s2,0x2
    800051f8:	48c90913          	addi	s2,s2,1164 # 80007680 <uart_tx_r>
    800051fc:	00093783          	ld	a5,0(s2)
    80005200:	00002497          	auipc	s1,0x2
    80005204:	48848493          	addi	s1,s1,1160 # 80007688 <uart_tx_w>
    80005208:	0004b703          	ld	a4,0(s1)
    8000520c:	02078693          	addi	a3,a5,32
    80005210:	00050993          	mv	s3,a0
    80005214:	02e69c63          	bne	a3,a4,8000524c <uartputc+0x84>
    80005218:	00001097          	auipc	ra,0x1
    8000521c:	834080e7          	jalr	-1996(ra) # 80005a4c <push_on>
    80005220:	00093783          	ld	a5,0(s2)
    80005224:	0004b703          	ld	a4,0(s1)
    80005228:	02078793          	addi	a5,a5,32
    8000522c:	00e79463          	bne	a5,a4,80005234 <uartputc+0x6c>
    80005230:	0000006f          	j	80005230 <uartputc+0x68>
    80005234:	00001097          	auipc	ra,0x1
    80005238:	88c080e7          	jalr	-1908(ra) # 80005ac0 <pop_on>
    8000523c:	00093783          	ld	a5,0(s2)
    80005240:	0004b703          	ld	a4,0(s1)
    80005244:	02078693          	addi	a3,a5,32
    80005248:	fce688e3          	beq	a3,a4,80005218 <uartputc+0x50>
    8000524c:	01f77693          	andi	a3,a4,31
    80005250:	00003597          	auipc	a1,0x3
    80005254:	6e058593          	addi	a1,a1,1760 # 80008930 <uart_tx_buf>
    80005258:	00d586b3          	add	a3,a1,a3
    8000525c:	00170713          	addi	a4,a4,1
    80005260:	01368023          	sb	s3,0(a3)
    80005264:	00e4b023          	sd	a4,0(s1)
    80005268:	10000637          	lui	a2,0x10000
    8000526c:	02f71063          	bne	a4,a5,8000528c <uartputc+0xc4>
    80005270:	0340006f          	j	800052a4 <uartputc+0xdc>
    80005274:	00074703          	lbu	a4,0(a4)
    80005278:	00f93023          	sd	a5,0(s2)
    8000527c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005280:	00093783          	ld	a5,0(s2)
    80005284:	0004b703          	ld	a4,0(s1)
    80005288:	00f70e63          	beq	a4,a5,800052a4 <uartputc+0xdc>
    8000528c:	00564683          	lbu	a3,5(a2)
    80005290:	01f7f713          	andi	a4,a5,31
    80005294:	00e58733          	add	a4,a1,a4
    80005298:	0206f693          	andi	a3,a3,32
    8000529c:	00178793          	addi	a5,a5,1
    800052a0:	fc069ae3          	bnez	a3,80005274 <uartputc+0xac>
    800052a4:	02813083          	ld	ra,40(sp)
    800052a8:	02013403          	ld	s0,32(sp)
    800052ac:	01813483          	ld	s1,24(sp)
    800052b0:	01013903          	ld	s2,16(sp)
    800052b4:	00813983          	ld	s3,8(sp)
    800052b8:	03010113          	addi	sp,sp,48
    800052bc:	00008067          	ret

00000000800052c0 <uartputc_sync>:
    800052c0:	ff010113          	addi	sp,sp,-16
    800052c4:	00813423          	sd	s0,8(sp)
    800052c8:	01010413          	addi	s0,sp,16
    800052cc:	00002717          	auipc	a4,0x2
    800052d0:	3ac72703          	lw	a4,940(a4) # 80007678 <panicked>
    800052d4:	02071663          	bnez	a4,80005300 <uartputc_sync+0x40>
    800052d8:	00050793          	mv	a5,a0
    800052dc:	100006b7          	lui	a3,0x10000
    800052e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800052e4:	02077713          	andi	a4,a4,32
    800052e8:	fe070ce3          	beqz	a4,800052e0 <uartputc_sync+0x20>
    800052ec:	0ff7f793          	andi	a5,a5,255
    800052f0:	00f68023          	sb	a5,0(a3)
    800052f4:	00813403          	ld	s0,8(sp)
    800052f8:	01010113          	addi	sp,sp,16
    800052fc:	00008067          	ret
    80005300:	0000006f          	j	80005300 <uartputc_sync+0x40>

0000000080005304 <uartstart>:
    80005304:	ff010113          	addi	sp,sp,-16
    80005308:	00813423          	sd	s0,8(sp)
    8000530c:	01010413          	addi	s0,sp,16
    80005310:	00002617          	auipc	a2,0x2
    80005314:	37060613          	addi	a2,a2,880 # 80007680 <uart_tx_r>
    80005318:	00002517          	auipc	a0,0x2
    8000531c:	37050513          	addi	a0,a0,880 # 80007688 <uart_tx_w>
    80005320:	00063783          	ld	a5,0(a2)
    80005324:	00053703          	ld	a4,0(a0)
    80005328:	04f70263          	beq	a4,a5,8000536c <uartstart+0x68>
    8000532c:	100005b7          	lui	a1,0x10000
    80005330:	00003817          	auipc	a6,0x3
    80005334:	60080813          	addi	a6,a6,1536 # 80008930 <uart_tx_buf>
    80005338:	01c0006f          	j	80005354 <uartstart+0x50>
    8000533c:	0006c703          	lbu	a4,0(a3)
    80005340:	00f63023          	sd	a5,0(a2)
    80005344:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005348:	00063783          	ld	a5,0(a2)
    8000534c:	00053703          	ld	a4,0(a0)
    80005350:	00f70e63          	beq	a4,a5,8000536c <uartstart+0x68>
    80005354:	01f7f713          	andi	a4,a5,31
    80005358:	00e806b3          	add	a3,a6,a4
    8000535c:	0055c703          	lbu	a4,5(a1)
    80005360:	00178793          	addi	a5,a5,1
    80005364:	02077713          	andi	a4,a4,32
    80005368:	fc071ae3          	bnez	a4,8000533c <uartstart+0x38>
    8000536c:	00813403          	ld	s0,8(sp)
    80005370:	01010113          	addi	sp,sp,16
    80005374:	00008067          	ret

0000000080005378 <uartgetc>:
    80005378:	ff010113          	addi	sp,sp,-16
    8000537c:	00813423          	sd	s0,8(sp)
    80005380:	01010413          	addi	s0,sp,16
    80005384:	10000737          	lui	a4,0x10000
    80005388:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000538c:	0017f793          	andi	a5,a5,1
    80005390:	00078c63          	beqz	a5,800053a8 <uartgetc+0x30>
    80005394:	00074503          	lbu	a0,0(a4)
    80005398:	0ff57513          	andi	a0,a0,255
    8000539c:	00813403          	ld	s0,8(sp)
    800053a0:	01010113          	addi	sp,sp,16
    800053a4:	00008067          	ret
    800053a8:	fff00513          	li	a0,-1
    800053ac:	ff1ff06f          	j	8000539c <uartgetc+0x24>

00000000800053b0 <uartintr>:
    800053b0:	100007b7          	lui	a5,0x10000
    800053b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800053b8:	0017f793          	andi	a5,a5,1
    800053bc:	0a078463          	beqz	a5,80005464 <uartintr+0xb4>
    800053c0:	fe010113          	addi	sp,sp,-32
    800053c4:	00813823          	sd	s0,16(sp)
    800053c8:	00913423          	sd	s1,8(sp)
    800053cc:	00113c23          	sd	ra,24(sp)
    800053d0:	02010413          	addi	s0,sp,32
    800053d4:	100004b7          	lui	s1,0x10000
    800053d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800053dc:	0ff57513          	andi	a0,a0,255
    800053e0:	fffff097          	auipc	ra,0xfffff
    800053e4:	534080e7          	jalr	1332(ra) # 80004914 <consoleintr>
    800053e8:	0054c783          	lbu	a5,5(s1)
    800053ec:	0017f793          	andi	a5,a5,1
    800053f0:	fe0794e3          	bnez	a5,800053d8 <uartintr+0x28>
    800053f4:	00002617          	auipc	a2,0x2
    800053f8:	28c60613          	addi	a2,a2,652 # 80007680 <uart_tx_r>
    800053fc:	00002517          	auipc	a0,0x2
    80005400:	28c50513          	addi	a0,a0,652 # 80007688 <uart_tx_w>
    80005404:	00063783          	ld	a5,0(a2)
    80005408:	00053703          	ld	a4,0(a0)
    8000540c:	04f70263          	beq	a4,a5,80005450 <uartintr+0xa0>
    80005410:	100005b7          	lui	a1,0x10000
    80005414:	00003817          	auipc	a6,0x3
    80005418:	51c80813          	addi	a6,a6,1308 # 80008930 <uart_tx_buf>
    8000541c:	01c0006f          	j	80005438 <uartintr+0x88>
    80005420:	0006c703          	lbu	a4,0(a3)
    80005424:	00f63023          	sd	a5,0(a2)
    80005428:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000542c:	00063783          	ld	a5,0(a2)
    80005430:	00053703          	ld	a4,0(a0)
    80005434:	00f70e63          	beq	a4,a5,80005450 <uartintr+0xa0>
    80005438:	01f7f713          	andi	a4,a5,31
    8000543c:	00e806b3          	add	a3,a6,a4
    80005440:	0055c703          	lbu	a4,5(a1)
    80005444:	00178793          	addi	a5,a5,1
    80005448:	02077713          	andi	a4,a4,32
    8000544c:	fc071ae3          	bnez	a4,80005420 <uartintr+0x70>
    80005450:	01813083          	ld	ra,24(sp)
    80005454:	01013403          	ld	s0,16(sp)
    80005458:	00813483          	ld	s1,8(sp)
    8000545c:	02010113          	addi	sp,sp,32
    80005460:	00008067          	ret
    80005464:	00002617          	auipc	a2,0x2
    80005468:	21c60613          	addi	a2,a2,540 # 80007680 <uart_tx_r>
    8000546c:	00002517          	auipc	a0,0x2
    80005470:	21c50513          	addi	a0,a0,540 # 80007688 <uart_tx_w>
    80005474:	00063783          	ld	a5,0(a2)
    80005478:	00053703          	ld	a4,0(a0)
    8000547c:	04f70263          	beq	a4,a5,800054c0 <uartintr+0x110>
    80005480:	100005b7          	lui	a1,0x10000
    80005484:	00003817          	auipc	a6,0x3
    80005488:	4ac80813          	addi	a6,a6,1196 # 80008930 <uart_tx_buf>
    8000548c:	01c0006f          	j	800054a8 <uartintr+0xf8>
    80005490:	0006c703          	lbu	a4,0(a3)
    80005494:	00f63023          	sd	a5,0(a2)
    80005498:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000549c:	00063783          	ld	a5,0(a2)
    800054a0:	00053703          	ld	a4,0(a0)
    800054a4:	02f70063          	beq	a4,a5,800054c4 <uartintr+0x114>
    800054a8:	01f7f713          	andi	a4,a5,31
    800054ac:	00e806b3          	add	a3,a6,a4
    800054b0:	0055c703          	lbu	a4,5(a1)
    800054b4:	00178793          	addi	a5,a5,1
    800054b8:	02077713          	andi	a4,a4,32
    800054bc:	fc071ae3          	bnez	a4,80005490 <uartintr+0xe0>
    800054c0:	00008067          	ret
    800054c4:	00008067          	ret

00000000800054c8 <kinit>:
    800054c8:	fc010113          	addi	sp,sp,-64
    800054cc:	02913423          	sd	s1,40(sp)
    800054d0:	fffff7b7          	lui	a5,0xfffff
    800054d4:	00004497          	auipc	s1,0x4
    800054d8:	47b48493          	addi	s1,s1,1147 # 8000994f <end+0xfff>
    800054dc:	02813823          	sd	s0,48(sp)
    800054e0:	01313c23          	sd	s3,24(sp)
    800054e4:	00f4f4b3          	and	s1,s1,a5
    800054e8:	02113c23          	sd	ra,56(sp)
    800054ec:	03213023          	sd	s2,32(sp)
    800054f0:	01413823          	sd	s4,16(sp)
    800054f4:	01513423          	sd	s5,8(sp)
    800054f8:	04010413          	addi	s0,sp,64
    800054fc:	000017b7          	lui	a5,0x1
    80005500:	01100993          	li	s3,17
    80005504:	00f487b3          	add	a5,s1,a5
    80005508:	01b99993          	slli	s3,s3,0x1b
    8000550c:	06f9e063          	bltu	s3,a5,8000556c <kinit+0xa4>
    80005510:	00003a97          	auipc	s5,0x3
    80005514:	440a8a93          	addi	s5,s5,1088 # 80008950 <end>
    80005518:	0754ec63          	bltu	s1,s5,80005590 <kinit+0xc8>
    8000551c:	0734fa63          	bgeu	s1,s3,80005590 <kinit+0xc8>
    80005520:	00088a37          	lui	s4,0x88
    80005524:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005528:	00002917          	auipc	s2,0x2
    8000552c:	16890913          	addi	s2,s2,360 # 80007690 <kmem>
    80005530:	00ca1a13          	slli	s4,s4,0xc
    80005534:	0140006f          	j	80005548 <kinit+0x80>
    80005538:	000017b7          	lui	a5,0x1
    8000553c:	00f484b3          	add	s1,s1,a5
    80005540:	0554e863          	bltu	s1,s5,80005590 <kinit+0xc8>
    80005544:	0534f663          	bgeu	s1,s3,80005590 <kinit+0xc8>
    80005548:	00001637          	lui	a2,0x1
    8000554c:	00100593          	li	a1,1
    80005550:	00048513          	mv	a0,s1
    80005554:	00000097          	auipc	ra,0x0
    80005558:	5e4080e7          	jalr	1508(ra) # 80005b38 <__memset>
    8000555c:	00093783          	ld	a5,0(s2)
    80005560:	00f4b023          	sd	a5,0(s1)
    80005564:	00993023          	sd	s1,0(s2)
    80005568:	fd4498e3          	bne	s1,s4,80005538 <kinit+0x70>
    8000556c:	03813083          	ld	ra,56(sp)
    80005570:	03013403          	ld	s0,48(sp)
    80005574:	02813483          	ld	s1,40(sp)
    80005578:	02013903          	ld	s2,32(sp)
    8000557c:	01813983          	ld	s3,24(sp)
    80005580:	01013a03          	ld	s4,16(sp)
    80005584:	00813a83          	ld	s5,8(sp)
    80005588:	04010113          	addi	sp,sp,64
    8000558c:	00008067          	ret
    80005590:	00001517          	auipc	a0,0x1
    80005594:	e1850513          	addi	a0,a0,-488 # 800063a8 <digits+0x18>
    80005598:	fffff097          	auipc	ra,0xfffff
    8000559c:	4b4080e7          	jalr	1204(ra) # 80004a4c <panic>

00000000800055a0 <freerange>:
    800055a0:	fc010113          	addi	sp,sp,-64
    800055a4:	000017b7          	lui	a5,0x1
    800055a8:	02913423          	sd	s1,40(sp)
    800055ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800055b0:	009504b3          	add	s1,a0,s1
    800055b4:	fffff537          	lui	a0,0xfffff
    800055b8:	02813823          	sd	s0,48(sp)
    800055bc:	02113c23          	sd	ra,56(sp)
    800055c0:	03213023          	sd	s2,32(sp)
    800055c4:	01313c23          	sd	s3,24(sp)
    800055c8:	01413823          	sd	s4,16(sp)
    800055cc:	01513423          	sd	s5,8(sp)
    800055d0:	01613023          	sd	s6,0(sp)
    800055d4:	04010413          	addi	s0,sp,64
    800055d8:	00a4f4b3          	and	s1,s1,a0
    800055dc:	00f487b3          	add	a5,s1,a5
    800055e0:	06f5e463          	bltu	a1,a5,80005648 <freerange+0xa8>
    800055e4:	00003a97          	auipc	s5,0x3
    800055e8:	36ca8a93          	addi	s5,s5,876 # 80008950 <end>
    800055ec:	0954e263          	bltu	s1,s5,80005670 <freerange+0xd0>
    800055f0:	01100993          	li	s3,17
    800055f4:	01b99993          	slli	s3,s3,0x1b
    800055f8:	0734fc63          	bgeu	s1,s3,80005670 <freerange+0xd0>
    800055fc:	00058a13          	mv	s4,a1
    80005600:	00002917          	auipc	s2,0x2
    80005604:	09090913          	addi	s2,s2,144 # 80007690 <kmem>
    80005608:	00002b37          	lui	s6,0x2
    8000560c:	0140006f          	j	80005620 <freerange+0x80>
    80005610:	000017b7          	lui	a5,0x1
    80005614:	00f484b3          	add	s1,s1,a5
    80005618:	0554ec63          	bltu	s1,s5,80005670 <freerange+0xd0>
    8000561c:	0534fa63          	bgeu	s1,s3,80005670 <freerange+0xd0>
    80005620:	00001637          	lui	a2,0x1
    80005624:	00100593          	li	a1,1
    80005628:	00048513          	mv	a0,s1
    8000562c:	00000097          	auipc	ra,0x0
    80005630:	50c080e7          	jalr	1292(ra) # 80005b38 <__memset>
    80005634:	00093703          	ld	a4,0(s2)
    80005638:	016487b3          	add	a5,s1,s6
    8000563c:	00e4b023          	sd	a4,0(s1)
    80005640:	00993023          	sd	s1,0(s2)
    80005644:	fcfa76e3          	bgeu	s4,a5,80005610 <freerange+0x70>
    80005648:	03813083          	ld	ra,56(sp)
    8000564c:	03013403          	ld	s0,48(sp)
    80005650:	02813483          	ld	s1,40(sp)
    80005654:	02013903          	ld	s2,32(sp)
    80005658:	01813983          	ld	s3,24(sp)
    8000565c:	01013a03          	ld	s4,16(sp)
    80005660:	00813a83          	ld	s5,8(sp)
    80005664:	00013b03          	ld	s6,0(sp)
    80005668:	04010113          	addi	sp,sp,64
    8000566c:	00008067          	ret
    80005670:	00001517          	auipc	a0,0x1
    80005674:	d3850513          	addi	a0,a0,-712 # 800063a8 <digits+0x18>
    80005678:	fffff097          	auipc	ra,0xfffff
    8000567c:	3d4080e7          	jalr	980(ra) # 80004a4c <panic>

0000000080005680 <kfree>:
    80005680:	fe010113          	addi	sp,sp,-32
    80005684:	00813823          	sd	s0,16(sp)
    80005688:	00113c23          	sd	ra,24(sp)
    8000568c:	00913423          	sd	s1,8(sp)
    80005690:	02010413          	addi	s0,sp,32
    80005694:	03451793          	slli	a5,a0,0x34
    80005698:	04079c63          	bnez	a5,800056f0 <kfree+0x70>
    8000569c:	00003797          	auipc	a5,0x3
    800056a0:	2b478793          	addi	a5,a5,692 # 80008950 <end>
    800056a4:	00050493          	mv	s1,a0
    800056a8:	04f56463          	bltu	a0,a5,800056f0 <kfree+0x70>
    800056ac:	01100793          	li	a5,17
    800056b0:	01b79793          	slli	a5,a5,0x1b
    800056b4:	02f57e63          	bgeu	a0,a5,800056f0 <kfree+0x70>
    800056b8:	00001637          	lui	a2,0x1
    800056bc:	00100593          	li	a1,1
    800056c0:	00000097          	auipc	ra,0x0
    800056c4:	478080e7          	jalr	1144(ra) # 80005b38 <__memset>
    800056c8:	00002797          	auipc	a5,0x2
    800056cc:	fc878793          	addi	a5,a5,-56 # 80007690 <kmem>
    800056d0:	0007b703          	ld	a4,0(a5)
    800056d4:	01813083          	ld	ra,24(sp)
    800056d8:	01013403          	ld	s0,16(sp)
    800056dc:	00e4b023          	sd	a4,0(s1)
    800056e0:	0097b023          	sd	s1,0(a5)
    800056e4:	00813483          	ld	s1,8(sp)
    800056e8:	02010113          	addi	sp,sp,32
    800056ec:	00008067          	ret
    800056f0:	00001517          	auipc	a0,0x1
    800056f4:	cb850513          	addi	a0,a0,-840 # 800063a8 <digits+0x18>
    800056f8:	fffff097          	auipc	ra,0xfffff
    800056fc:	354080e7          	jalr	852(ra) # 80004a4c <panic>

0000000080005700 <kalloc>:
    80005700:	fe010113          	addi	sp,sp,-32
    80005704:	00813823          	sd	s0,16(sp)
    80005708:	00913423          	sd	s1,8(sp)
    8000570c:	00113c23          	sd	ra,24(sp)
    80005710:	02010413          	addi	s0,sp,32
    80005714:	00002797          	auipc	a5,0x2
    80005718:	f7c78793          	addi	a5,a5,-132 # 80007690 <kmem>
    8000571c:	0007b483          	ld	s1,0(a5)
    80005720:	02048063          	beqz	s1,80005740 <kalloc+0x40>
    80005724:	0004b703          	ld	a4,0(s1)
    80005728:	00001637          	lui	a2,0x1
    8000572c:	00500593          	li	a1,5
    80005730:	00048513          	mv	a0,s1
    80005734:	00e7b023          	sd	a4,0(a5)
    80005738:	00000097          	auipc	ra,0x0
    8000573c:	400080e7          	jalr	1024(ra) # 80005b38 <__memset>
    80005740:	01813083          	ld	ra,24(sp)
    80005744:	01013403          	ld	s0,16(sp)
    80005748:	00048513          	mv	a0,s1
    8000574c:	00813483          	ld	s1,8(sp)
    80005750:	02010113          	addi	sp,sp,32
    80005754:	00008067          	ret

0000000080005758 <initlock>:
    80005758:	ff010113          	addi	sp,sp,-16
    8000575c:	00813423          	sd	s0,8(sp)
    80005760:	01010413          	addi	s0,sp,16
    80005764:	00813403          	ld	s0,8(sp)
    80005768:	00b53423          	sd	a1,8(a0)
    8000576c:	00052023          	sw	zero,0(a0)
    80005770:	00053823          	sd	zero,16(a0)
    80005774:	01010113          	addi	sp,sp,16
    80005778:	00008067          	ret

000000008000577c <acquire>:
    8000577c:	fe010113          	addi	sp,sp,-32
    80005780:	00813823          	sd	s0,16(sp)
    80005784:	00913423          	sd	s1,8(sp)
    80005788:	00113c23          	sd	ra,24(sp)
    8000578c:	01213023          	sd	s2,0(sp)
    80005790:	02010413          	addi	s0,sp,32
    80005794:	00050493          	mv	s1,a0
    80005798:	10002973          	csrr	s2,sstatus
    8000579c:	100027f3          	csrr	a5,sstatus
    800057a0:	ffd7f793          	andi	a5,a5,-3
    800057a4:	10079073          	csrw	sstatus,a5
    800057a8:	fffff097          	auipc	ra,0xfffff
    800057ac:	8e8080e7          	jalr	-1816(ra) # 80004090 <mycpu>
    800057b0:	07852783          	lw	a5,120(a0)
    800057b4:	06078e63          	beqz	a5,80005830 <acquire+0xb4>
    800057b8:	fffff097          	auipc	ra,0xfffff
    800057bc:	8d8080e7          	jalr	-1832(ra) # 80004090 <mycpu>
    800057c0:	07852783          	lw	a5,120(a0)
    800057c4:	0004a703          	lw	a4,0(s1)
    800057c8:	0017879b          	addiw	a5,a5,1
    800057cc:	06f52c23          	sw	a5,120(a0)
    800057d0:	04071063          	bnez	a4,80005810 <acquire+0x94>
    800057d4:	00100713          	li	a4,1
    800057d8:	00070793          	mv	a5,a4
    800057dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800057e0:	0007879b          	sext.w	a5,a5
    800057e4:	fe079ae3          	bnez	a5,800057d8 <acquire+0x5c>
    800057e8:	0ff0000f          	fence
    800057ec:	fffff097          	auipc	ra,0xfffff
    800057f0:	8a4080e7          	jalr	-1884(ra) # 80004090 <mycpu>
    800057f4:	01813083          	ld	ra,24(sp)
    800057f8:	01013403          	ld	s0,16(sp)
    800057fc:	00a4b823          	sd	a0,16(s1)
    80005800:	00013903          	ld	s2,0(sp)
    80005804:	00813483          	ld	s1,8(sp)
    80005808:	02010113          	addi	sp,sp,32
    8000580c:	00008067          	ret
    80005810:	0104b903          	ld	s2,16(s1)
    80005814:	fffff097          	auipc	ra,0xfffff
    80005818:	87c080e7          	jalr	-1924(ra) # 80004090 <mycpu>
    8000581c:	faa91ce3          	bne	s2,a0,800057d4 <acquire+0x58>
    80005820:	00001517          	auipc	a0,0x1
    80005824:	b9050513          	addi	a0,a0,-1136 # 800063b0 <digits+0x20>
    80005828:	fffff097          	auipc	ra,0xfffff
    8000582c:	224080e7          	jalr	548(ra) # 80004a4c <panic>
    80005830:	00195913          	srli	s2,s2,0x1
    80005834:	fffff097          	auipc	ra,0xfffff
    80005838:	85c080e7          	jalr	-1956(ra) # 80004090 <mycpu>
    8000583c:	00197913          	andi	s2,s2,1
    80005840:	07252e23          	sw	s2,124(a0)
    80005844:	f75ff06f          	j	800057b8 <acquire+0x3c>

0000000080005848 <release>:
    80005848:	fe010113          	addi	sp,sp,-32
    8000584c:	00813823          	sd	s0,16(sp)
    80005850:	00113c23          	sd	ra,24(sp)
    80005854:	00913423          	sd	s1,8(sp)
    80005858:	01213023          	sd	s2,0(sp)
    8000585c:	02010413          	addi	s0,sp,32
    80005860:	00052783          	lw	a5,0(a0)
    80005864:	00079a63          	bnez	a5,80005878 <release+0x30>
    80005868:	00001517          	auipc	a0,0x1
    8000586c:	b5050513          	addi	a0,a0,-1200 # 800063b8 <digits+0x28>
    80005870:	fffff097          	auipc	ra,0xfffff
    80005874:	1dc080e7          	jalr	476(ra) # 80004a4c <panic>
    80005878:	01053903          	ld	s2,16(a0)
    8000587c:	00050493          	mv	s1,a0
    80005880:	fffff097          	auipc	ra,0xfffff
    80005884:	810080e7          	jalr	-2032(ra) # 80004090 <mycpu>
    80005888:	fea910e3          	bne	s2,a0,80005868 <release+0x20>
    8000588c:	0004b823          	sd	zero,16(s1)
    80005890:	0ff0000f          	fence
    80005894:	0f50000f          	fence	iorw,ow
    80005898:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000589c:	ffffe097          	auipc	ra,0xffffe
    800058a0:	7f4080e7          	jalr	2036(ra) # 80004090 <mycpu>
    800058a4:	100027f3          	csrr	a5,sstatus
    800058a8:	0027f793          	andi	a5,a5,2
    800058ac:	04079a63          	bnez	a5,80005900 <release+0xb8>
    800058b0:	07852783          	lw	a5,120(a0)
    800058b4:	02f05e63          	blez	a5,800058f0 <release+0xa8>
    800058b8:	fff7871b          	addiw	a4,a5,-1
    800058bc:	06e52c23          	sw	a4,120(a0)
    800058c0:	00071c63          	bnez	a4,800058d8 <release+0x90>
    800058c4:	07c52783          	lw	a5,124(a0)
    800058c8:	00078863          	beqz	a5,800058d8 <release+0x90>
    800058cc:	100027f3          	csrr	a5,sstatus
    800058d0:	0027e793          	ori	a5,a5,2
    800058d4:	10079073          	csrw	sstatus,a5
    800058d8:	01813083          	ld	ra,24(sp)
    800058dc:	01013403          	ld	s0,16(sp)
    800058e0:	00813483          	ld	s1,8(sp)
    800058e4:	00013903          	ld	s2,0(sp)
    800058e8:	02010113          	addi	sp,sp,32
    800058ec:	00008067          	ret
    800058f0:	00001517          	auipc	a0,0x1
    800058f4:	ae850513          	addi	a0,a0,-1304 # 800063d8 <digits+0x48>
    800058f8:	fffff097          	auipc	ra,0xfffff
    800058fc:	154080e7          	jalr	340(ra) # 80004a4c <panic>
    80005900:	00001517          	auipc	a0,0x1
    80005904:	ac050513          	addi	a0,a0,-1344 # 800063c0 <digits+0x30>
    80005908:	fffff097          	auipc	ra,0xfffff
    8000590c:	144080e7          	jalr	324(ra) # 80004a4c <panic>

0000000080005910 <holding>:
    80005910:	00052783          	lw	a5,0(a0)
    80005914:	00079663          	bnez	a5,80005920 <holding+0x10>
    80005918:	00000513          	li	a0,0
    8000591c:	00008067          	ret
    80005920:	fe010113          	addi	sp,sp,-32
    80005924:	00813823          	sd	s0,16(sp)
    80005928:	00913423          	sd	s1,8(sp)
    8000592c:	00113c23          	sd	ra,24(sp)
    80005930:	02010413          	addi	s0,sp,32
    80005934:	01053483          	ld	s1,16(a0)
    80005938:	ffffe097          	auipc	ra,0xffffe
    8000593c:	758080e7          	jalr	1880(ra) # 80004090 <mycpu>
    80005940:	01813083          	ld	ra,24(sp)
    80005944:	01013403          	ld	s0,16(sp)
    80005948:	40a48533          	sub	a0,s1,a0
    8000594c:	00153513          	seqz	a0,a0
    80005950:	00813483          	ld	s1,8(sp)
    80005954:	02010113          	addi	sp,sp,32
    80005958:	00008067          	ret

000000008000595c <push_off>:
    8000595c:	fe010113          	addi	sp,sp,-32
    80005960:	00813823          	sd	s0,16(sp)
    80005964:	00113c23          	sd	ra,24(sp)
    80005968:	00913423          	sd	s1,8(sp)
    8000596c:	02010413          	addi	s0,sp,32
    80005970:	100024f3          	csrr	s1,sstatus
    80005974:	100027f3          	csrr	a5,sstatus
    80005978:	ffd7f793          	andi	a5,a5,-3
    8000597c:	10079073          	csrw	sstatus,a5
    80005980:	ffffe097          	auipc	ra,0xffffe
    80005984:	710080e7          	jalr	1808(ra) # 80004090 <mycpu>
    80005988:	07852783          	lw	a5,120(a0)
    8000598c:	02078663          	beqz	a5,800059b8 <push_off+0x5c>
    80005990:	ffffe097          	auipc	ra,0xffffe
    80005994:	700080e7          	jalr	1792(ra) # 80004090 <mycpu>
    80005998:	07852783          	lw	a5,120(a0)
    8000599c:	01813083          	ld	ra,24(sp)
    800059a0:	01013403          	ld	s0,16(sp)
    800059a4:	0017879b          	addiw	a5,a5,1
    800059a8:	06f52c23          	sw	a5,120(a0)
    800059ac:	00813483          	ld	s1,8(sp)
    800059b0:	02010113          	addi	sp,sp,32
    800059b4:	00008067          	ret
    800059b8:	0014d493          	srli	s1,s1,0x1
    800059bc:	ffffe097          	auipc	ra,0xffffe
    800059c0:	6d4080e7          	jalr	1748(ra) # 80004090 <mycpu>
    800059c4:	0014f493          	andi	s1,s1,1
    800059c8:	06952e23          	sw	s1,124(a0)
    800059cc:	fc5ff06f          	j	80005990 <push_off+0x34>

00000000800059d0 <pop_off>:
    800059d0:	ff010113          	addi	sp,sp,-16
    800059d4:	00813023          	sd	s0,0(sp)
    800059d8:	00113423          	sd	ra,8(sp)
    800059dc:	01010413          	addi	s0,sp,16
    800059e0:	ffffe097          	auipc	ra,0xffffe
    800059e4:	6b0080e7          	jalr	1712(ra) # 80004090 <mycpu>
    800059e8:	100027f3          	csrr	a5,sstatus
    800059ec:	0027f793          	andi	a5,a5,2
    800059f0:	04079663          	bnez	a5,80005a3c <pop_off+0x6c>
    800059f4:	07852783          	lw	a5,120(a0)
    800059f8:	02f05a63          	blez	a5,80005a2c <pop_off+0x5c>
    800059fc:	fff7871b          	addiw	a4,a5,-1
    80005a00:	06e52c23          	sw	a4,120(a0)
    80005a04:	00071c63          	bnez	a4,80005a1c <pop_off+0x4c>
    80005a08:	07c52783          	lw	a5,124(a0)
    80005a0c:	00078863          	beqz	a5,80005a1c <pop_off+0x4c>
    80005a10:	100027f3          	csrr	a5,sstatus
    80005a14:	0027e793          	ori	a5,a5,2
    80005a18:	10079073          	csrw	sstatus,a5
    80005a1c:	00813083          	ld	ra,8(sp)
    80005a20:	00013403          	ld	s0,0(sp)
    80005a24:	01010113          	addi	sp,sp,16
    80005a28:	00008067          	ret
    80005a2c:	00001517          	auipc	a0,0x1
    80005a30:	9ac50513          	addi	a0,a0,-1620 # 800063d8 <digits+0x48>
    80005a34:	fffff097          	auipc	ra,0xfffff
    80005a38:	018080e7          	jalr	24(ra) # 80004a4c <panic>
    80005a3c:	00001517          	auipc	a0,0x1
    80005a40:	98450513          	addi	a0,a0,-1660 # 800063c0 <digits+0x30>
    80005a44:	fffff097          	auipc	ra,0xfffff
    80005a48:	008080e7          	jalr	8(ra) # 80004a4c <panic>

0000000080005a4c <push_on>:
    80005a4c:	fe010113          	addi	sp,sp,-32
    80005a50:	00813823          	sd	s0,16(sp)
    80005a54:	00113c23          	sd	ra,24(sp)
    80005a58:	00913423          	sd	s1,8(sp)
    80005a5c:	02010413          	addi	s0,sp,32
    80005a60:	100024f3          	csrr	s1,sstatus
    80005a64:	100027f3          	csrr	a5,sstatus
    80005a68:	0027e793          	ori	a5,a5,2
    80005a6c:	10079073          	csrw	sstatus,a5
    80005a70:	ffffe097          	auipc	ra,0xffffe
    80005a74:	620080e7          	jalr	1568(ra) # 80004090 <mycpu>
    80005a78:	07852783          	lw	a5,120(a0)
    80005a7c:	02078663          	beqz	a5,80005aa8 <push_on+0x5c>
    80005a80:	ffffe097          	auipc	ra,0xffffe
    80005a84:	610080e7          	jalr	1552(ra) # 80004090 <mycpu>
    80005a88:	07852783          	lw	a5,120(a0)
    80005a8c:	01813083          	ld	ra,24(sp)
    80005a90:	01013403          	ld	s0,16(sp)
    80005a94:	0017879b          	addiw	a5,a5,1
    80005a98:	06f52c23          	sw	a5,120(a0)
    80005a9c:	00813483          	ld	s1,8(sp)
    80005aa0:	02010113          	addi	sp,sp,32
    80005aa4:	00008067          	ret
    80005aa8:	0014d493          	srli	s1,s1,0x1
    80005aac:	ffffe097          	auipc	ra,0xffffe
    80005ab0:	5e4080e7          	jalr	1508(ra) # 80004090 <mycpu>
    80005ab4:	0014f493          	andi	s1,s1,1
    80005ab8:	06952e23          	sw	s1,124(a0)
    80005abc:	fc5ff06f          	j	80005a80 <push_on+0x34>

0000000080005ac0 <pop_on>:
    80005ac0:	ff010113          	addi	sp,sp,-16
    80005ac4:	00813023          	sd	s0,0(sp)
    80005ac8:	00113423          	sd	ra,8(sp)
    80005acc:	01010413          	addi	s0,sp,16
    80005ad0:	ffffe097          	auipc	ra,0xffffe
    80005ad4:	5c0080e7          	jalr	1472(ra) # 80004090 <mycpu>
    80005ad8:	100027f3          	csrr	a5,sstatus
    80005adc:	0027f793          	andi	a5,a5,2
    80005ae0:	04078463          	beqz	a5,80005b28 <pop_on+0x68>
    80005ae4:	07852783          	lw	a5,120(a0)
    80005ae8:	02f05863          	blez	a5,80005b18 <pop_on+0x58>
    80005aec:	fff7879b          	addiw	a5,a5,-1
    80005af0:	06f52c23          	sw	a5,120(a0)
    80005af4:	07853783          	ld	a5,120(a0)
    80005af8:	00079863          	bnez	a5,80005b08 <pop_on+0x48>
    80005afc:	100027f3          	csrr	a5,sstatus
    80005b00:	ffd7f793          	andi	a5,a5,-3
    80005b04:	10079073          	csrw	sstatus,a5
    80005b08:	00813083          	ld	ra,8(sp)
    80005b0c:	00013403          	ld	s0,0(sp)
    80005b10:	01010113          	addi	sp,sp,16
    80005b14:	00008067          	ret
    80005b18:	00001517          	auipc	a0,0x1
    80005b1c:	8e850513          	addi	a0,a0,-1816 # 80006400 <digits+0x70>
    80005b20:	fffff097          	auipc	ra,0xfffff
    80005b24:	f2c080e7          	jalr	-212(ra) # 80004a4c <panic>
    80005b28:	00001517          	auipc	a0,0x1
    80005b2c:	8b850513          	addi	a0,a0,-1864 # 800063e0 <digits+0x50>
    80005b30:	fffff097          	auipc	ra,0xfffff
    80005b34:	f1c080e7          	jalr	-228(ra) # 80004a4c <panic>

0000000080005b38 <__memset>:
    80005b38:	ff010113          	addi	sp,sp,-16
    80005b3c:	00813423          	sd	s0,8(sp)
    80005b40:	01010413          	addi	s0,sp,16
    80005b44:	1a060e63          	beqz	a2,80005d00 <__memset+0x1c8>
    80005b48:	40a007b3          	neg	a5,a0
    80005b4c:	0077f793          	andi	a5,a5,7
    80005b50:	00778693          	addi	a3,a5,7
    80005b54:	00b00813          	li	a6,11
    80005b58:	0ff5f593          	andi	a1,a1,255
    80005b5c:	fff6071b          	addiw	a4,a2,-1
    80005b60:	1b06e663          	bltu	a3,a6,80005d0c <__memset+0x1d4>
    80005b64:	1cd76463          	bltu	a4,a3,80005d2c <__memset+0x1f4>
    80005b68:	1a078e63          	beqz	a5,80005d24 <__memset+0x1ec>
    80005b6c:	00b50023          	sb	a1,0(a0)
    80005b70:	00100713          	li	a4,1
    80005b74:	1ae78463          	beq	a5,a4,80005d1c <__memset+0x1e4>
    80005b78:	00b500a3          	sb	a1,1(a0)
    80005b7c:	00200713          	li	a4,2
    80005b80:	1ae78a63          	beq	a5,a4,80005d34 <__memset+0x1fc>
    80005b84:	00b50123          	sb	a1,2(a0)
    80005b88:	00300713          	li	a4,3
    80005b8c:	18e78463          	beq	a5,a4,80005d14 <__memset+0x1dc>
    80005b90:	00b501a3          	sb	a1,3(a0)
    80005b94:	00400713          	li	a4,4
    80005b98:	1ae78263          	beq	a5,a4,80005d3c <__memset+0x204>
    80005b9c:	00b50223          	sb	a1,4(a0)
    80005ba0:	00500713          	li	a4,5
    80005ba4:	1ae78063          	beq	a5,a4,80005d44 <__memset+0x20c>
    80005ba8:	00b502a3          	sb	a1,5(a0)
    80005bac:	00700713          	li	a4,7
    80005bb0:	18e79e63          	bne	a5,a4,80005d4c <__memset+0x214>
    80005bb4:	00b50323          	sb	a1,6(a0)
    80005bb8:	00700e93          	li	t4,7
    80005bbc:	00859713          	slli	a4,a1,0x8
    80005bc0:	00e5e733          	or	a4,a1,a4
    80005bc4:	01059e13          	slli	t3,a1,0x10
    80005bc8:	01c76e33          	or	t3,a4,t3
    80005bcc:	01859313          	slli	t1,a1,0x18
    80005bd0:	006e6333          	or	t1,t3,t1
    80005bd4:	02059893          	slli	a7,a1,0x20
    80005bd8:	40f60e3b          	subw	t3,a2,a5
    80005bdc:	011368b3          	or	a7,t1,a7
    80005be0:	02859813          	slli	a6,a1,0x28
    80005be4:	0108e833          	or	a6,a7,a6
    80005be8:	03059693          	slli	a3,a1,0x30
    80005bec:	003e589b          	srliw	a7,t3,0x3
    80005bf0:	00d866b3          	or	a3,a6,a3
    80005bf4:	03859713          	slli	a4,a1,0x38
    80005bf8:	00389813          	slli	a6,a7,0x3
    80005bfc:	00f507b3          	add	a5,a0,a5
    80005c00:	00e6e733          	or	a4,a3,a4
    80005c04:	000e089b          	sext.w	a7,t3
    80005c08:	00f806b3          	add	a3,a6,a5
    80005c0c:	00e7b023          	sd	a4,0(a5)
    80005c10:	00878793          	addi	a5,a5,8
    80005c14:	fed79ce3          	bne	a5,a3,80005c0c <__memset+0xd4>
    80005c18:	ff8e7793          	andi	a5,t3,-8
    80005c1c:	0007871b          	sext.w	a4,a5
    80005c20:	01d787bb          	addw	a5,a5,t4
    80005c24:	0ce88e63          	beq	a7,a4,80005d00 <__memset+0x1c8>
    80005c28:	00f50733          	add	a4,a0,a5
    80005c2c:	00b70023          	sb	a1,0(a4)
    80005c30:	0017871b          	addiw	a4,a5,1
    80005c34:	0cc77663          	bgeu	a4,a2,80005d00 <__memset+0x1c8>
    80005c38:	00e50733          	add	a4,a0,a4
    80005c3c:	00b70023          	sb	a1,0(a4)
    80005c40:	0027871b          	addiw	a4,a5,2
    80005c44:	0ac77e63          	bgeu	a4,a2,80005d00 <__memset+0x1c8>
    80005c48:	00e50733          	add	a4,a0,a4
    80005c4c:	00b70023          	sb	a1,0(a4)
    80005c50:	0037871b          	addiw	a4,a5,3
    80005c54:	0ac77663          	bgeu	a4,a2,80005d00 <__memset+0x1c8>
    80005c58:	00e50733          	add	a4,a0,a4
    80005c5c:	00b70023          	sb	a1,0(a4)
    80005c60:	0047871b          	addiw	a4,a5,4
    80005c64:	08c77e63          	bgeu	a4,a2,80005d00 <__memset+0x1c8>
    80005c68:	00e50733          	add	a4,a0,a4
    80005c6c:	00b70023          	sb	a1,0(a4)
    80005c70:	0057871b          	addiw	a4,a5,5
    80005c74:	08c77663          	bgeu	a4,a2,80005d00 <__memset+0x1c8>
    80005c78:	00e50733          	add	a4,a0,a4
    80005c7c:	00b70023          	sb	a1,0(a4)
    80005c80:	0067871b          	addiw	a4,a5,6
    80005c84:	06c77e63          	bgeu	a4,a2,80005d00 <__memset+0x1c8>
    80005c88:	00e50733          	add	a4,a0,a4
    80005c8c:	00b70023          	sb	a1,0(a4)
    80005c90:	0077871b          	addiw	a4,a5,7
    80005c94:	06c77663          	bgeu	a4,a2,80005d00 <__memset+0x1c8>
    80005c98:	00e50733          	add	a4,a0,a4
    80005c9c:	00b70023          	sb	a1,0(a4)
    80005ca0:	0087871b          	addiw	a4,a5,8
    80005ca4:	04c77e63          	bgeu	a4,a2,80005d00 <__memset+0x1c8>
    80005ca8:	00e50733          	add	a4,a0,a4
    80005cac:	00b70023          	sb	a1,0(a4)
    80005cb0:	0097871b          	addiw	a4,a5,9
    80005cb4:	04c77663          	bgeu	a4,a2,80005d00 <__memset+0x1c8>
    80005cb8:	00e50733          	add	a4,a0,a4
    80005cbc:	00b70023          	sb	a1,0(a4)
    80005cc0:	00a7871b          	addiw	a4,a5,10
    80005cc4:	02c77e63          	bgeu	a4,a2,80005d00 <__memset+0x1c8>
    80005cc8:	00e50733          	add	a4,a0,a4
    80005ccc:	00b70023          	sb	a1,0(a4)
    80005cd0:	00b7871b          	addiw	a4,a5,11
    80005cd4:	02c77663          	bgeu	a4,a2,80005d00 <__memset+0x1c8>
    80005cd8:	00e50733          	add	a4,a0,a4
    80005cdc:	00b70023          	sb	a1,0(a4)
    80005ce0:	00c7871b          	addiw	a4,a5,12
    80005ce4:	00c77e63          	bgeu	a4,a2,80005d00 <__memset+0x1c8>
    80005ce8:	00e50733          	add	a4,a0,a4
    80005cec:	00b70023          	sb	a1,0(a4)
    80005cf0:	00d7879b          	addiw	a5,a5,13
    80005cf4:	00c7f663          	bgeu	a5,a2,80005d00 <__memset+0x1c8>
    80005cf8:	00f507b3          	add	a5,a0,a5
    80005cfc:	00b78023          	sb	a1,0(a5)
    80005d00:	00813403          	ld	s0,8(sp)
    80005d04:	01010113          	addi	sp,sp,16
    80005d08:	00008067          	ret
    80005d0c:	00b00693          	li	a3,11
    80005d10:	e55ff06f          	j	80005b64 <__memset+0x2c>
    80005d14:	00300e93          	li	t4,3
    80005d18:	ea5ff06f          	j	80005bbc <__memset+0x84>
    80005d1c:	00100e93          	li	t4,1
    80005d20:	e9dff06f          	j	80005bbc <__memset+0x84>
    80005d24:	00000e93          	li	t4,0
    80005d28:	e95ff06f          	j	80005bbc <__memset+0x84>
    80005d2c:	00000793          	li	a5,0
    80005d30:	ef9ff06f          	j	80005c28 <__memset+0xf0>
    80005d34:	00200e93          	li	t4,2
    80005d38:	e85ff06f          	j	80005bbc <__memset+0x84>
    80005d3c:	00400e93          	li	t4,4
    80005d40:	e7dff06f          	j	80005bbc <__memset+0x84>
    80005d44:	00500e93          	li	t4,5
    80005d48:	e75ff06f          	j	80005bbc <__memset+0x84>
    80005d4c:	00600e93          	li	t4,6
    80005d50:	e6dff06f          	j	80005bbc <__memset+0x84>

0000000080005d54 <__memmove>:
    80005d54:	ff010113          	addi	sp,sp,-16
    80005d58:	00813423          	sd	s0,8(sp)
    80005d5c:	01010413          	addi	s0,sp,16
    80005d60:	0e060863          	beqz	a2,80005e50 <__memmove+0xfc>
    80005d64:	fff6069b          	addiw	a3,a2,-1
    80005d68:	0006881b          	sext.w	a6,a3
    80005d6c:	0ea5e863          	bltu	a1,a0,80005e5c <__memmove+0x108>
    80005d70:	00758713          	addi	a4,a1,7
    80005d74:	00a5e7b3          	or	a5,a1,a0
    80005d78:	40a70733          	sub	a4,a4,a0
    80005d7c:	0077f793          	andi	a5,a5,7
    80005d80:	00f73713          	sltiu	a4,a4,15
    80005d84:	00174713          	xori	a4,a4,1
    80005d88:	0017b793          	seqz	a5,a5
    80005d8c:	00e7f7b3          	and	a5,a5,a4
    80005d90:	10078863          	beqz	a5,80005ea0 <__memmove+0x14c>
    80005d94:	00900793          	li	a5,9
    80005d98:	1107f463          	bgeu	a5,a6,80005ea0 <__memmove+0x14c>
    80005d9c:	0036581b          	srliw	a6,a2,0x3
    80005da0:	fff8081b          	addiw	a6,a6,-1
    80005da4:	02081813          	slli	a6,a6,0x20
    80005da8:	01d85893          	srli	a7,a6,0x1d
    80005dac:	00858813          	addi	a6,a1,8
    80005db0:	00058793          	mv	a5,a1
    80005db4:	00050713          	mv	a4,a0
    80005db8:	01088833          	add	a6,a7,a6
    80005dbc:	0007b883          	ld	a7,0(a5)
    80005dc0:	00878793          	addi	a5,a5,8
    80005dc4:	00870713          	addi	a4,a4,8
    80005dc8:	ff173c23          	sd	a7,-8(a4)
    80005dcc:	ff0798e3          	bne	a5,a6,80005dbc <__memmove+0x68>
    80005dd0:	ff867713          	andi	a4,a2,-8
    80005dd4:	02071793          	slli	a5,a4,0x20
    80005dd8:	0207d793          	srli	a5,a5,0x20
    80005ddc:	00f585b3          	add	a1,a1,a5
    80005de0:	40e686bb          	subw	a3,a3,a4
    80005de4:	00f507b3          	add	a5,a0,a5
    80005de8:	06e60463          	beq	a2,a4,80005e50 <__memmove+0xfc>
    80005dec:	0005c703          	lbu	a4,0(a1)
    80005df0:	00e78023          	sb	a4,0(a5)
    80005df4:	04068e63          	beqz	a3,80005e50 <__memmove+0xfc>
    80005df8:	0015c603          	lbu	a2,1(a1)
    80005dfc:	00100713          	li	a4,1
    80005e00:	00c780a3          	sb	a2,1(a5)
    80005e04:	04e68663          	beq	a3,a4,80005e50 <__memmove+0xfc>
    80005e08:	0025c603          	lbu	a2,2(a1)
    80005e0c:	00200713          	li	a4,2
    80005e10:	00c78123          	sb	a2,2(a5)
    80005e14:	02e68e63          	beq	a3,a4,80005e50 <__memmove+0xfc>
    80005e18:	0035c603          	lbu	a2,3(a1)
    80005e1c:	00300713          	li	a4,3
    80005e20:	00c781a3          	sb	a2,3(a5)
    80005e24:	02e68663          	beq	a3,a4,80005e50 <__memmove+0xfc>
    80005e28:	0045c603          	lbu	a2,4(a1)
    80005e2c:	00400713          	li	a4,4
    80005e30:	00c78223          	sb	a2,4(a5)
    80005e34:	00e68e63          	beq	a3,a4,80005e50 <__memmove+0xfc>
    80005e38:	0055c603          	lbu	a2,5(a1)
    80005e3c:	00500713          	li	a4,5
    80005e40:	00c782a3          	sb	a2,5(a5)
    80005e44:	00e68663          	beq	a3,a4,80005e50 <__memmove+0xfc>
    80005e48:	0065c703          	lbu	a4,6(a1)
    80005e4c:	00e78323          	sb	a4,6(a5)
    80005e50:	00813403          	ld	s0,8(sp)
    80005e54:	01010113          	addi	sp,sp,16
    80005e58:	00008067          	ret
    80005e5c:	02061713          	slli	a4,a2,0x20
    80005e60:	02075713          	srli	a4,a4,0x20
    80005e64:	00e587b3          	add	a5,a1,a4
    80005e68:	f0f574e3          	bgeu	a0,a5,80005d70 <__memmove+0x1c>
    80005e6c:	02069613          	slli	a2,a3,0x20
    80005e70:	02065613          	srli	a2,a2,0x20
    80005e74:	fff64613          	not	a2,a2
    80005e78:	00e50733          	add	a4,a0,a4
    80005e7c:	00c78633          	add	a2,a5,a2
    80005e80:	fff7c683          	lbu	a3,-1(a5)
    80005e84:	fff78793          	addi	a5,a5,-1
    80005e88:	fff70713          	addi	a4,a4,-1
    80005e8c:	00d70023          	sb	a3,0(a4)
    80005e90:	fec798e3          	bne	a5,a2,80005e80 <__memmove+0x12c>
    80005e94:	00813403          	ld	s0,8(sp)
    80005e98:	01010113          	addi	sp,sp,16
    80005e9c:	00008067          	ret
    80005ea0:	02069713          	slli	a4,a3,0x20
    80005ea4:	02075713          	srli	a4,a4,0x20
    80005ea8:	00170713          	addi	a4,a4,1
    80005eac:	00e50733          	add	a4,a0,a4
    80005eb0:	00050793          	mv	a5,a0
    80005eb4:	0005c683          	lbu	a3,0(a1)
    80005eb8:	00178793          	addi	a5,a5,1
    80005ebc:	00158593          	addi	a1,a1,1
    80005ec0:	fed78fa3          	sb	a3,-1(a5)
    80005ec4:	fee798e3          	bne	a5,a4,80005eb4 <__memmove+0x160>
    80005ec8:	f89ff06f          	j	80005e50 <__memmove+0xfc>

0000000080005ecc <__putc>:
    80005ecc:	fe010113          	addi	sp,sp,-32
    80005ed0:	00813823          	sd	s0,16(sp)
    80005ed4:	00113c23          	sd	ra,24(sp)
    80005ed8:	02010413          	addi	s0,sp,32
    80005edc:	00050793          	mv	a5,a0
    80005ee0:	fef40593          	addi	a1,s0,-17
    80005ee4:	00100613          	li	a2,1
    80005ee8:	00000513          	li	a0,0
    80005eec:	fef407a3          	sb	a5,-17(s0)
    80005ef0:	fffff097          	auipc	ra,0xfffff
    80005ef4:	b3c080e7          	jalr	-1220(ra) # 80004a2c <console_write>
    80005ef8:	01813083          	ld	ra,24(sp)
    80005efc:	01013403          	ld	s0,16(sp)
    80005f00:	02010113          	addi	sp,sp,32
    80005f04:	00008067          	ret

0000000080005f08 <__getc>:
    80005f08:	fe010113          	addi	sp,sp,-32
    80005f0c:	00813823          	sd	s0,16(sp)
    80005f10:	00113c23          	sd	ra,24(sp)
    80005f14:	02010413          	addi	s0,sp,32
    80005f18:	fe840593          	addi	a1,s0,-24
    80005f1c:	00100613          	li	a2,1
    80005f20:	00000513          	li	a0,0
    80005f24:	fffff097          	auipc	ra,0xfffff
    80005f28:	ae8080e7          	jalr	-1304(ra) # 80004a0c <console_read>
    80005f2c:	fe844503          	lbu	a0,-24(s0)
    80005f30:	01813083          	ld	ra,24(sp)
    80005f34:	01013403          	ld	s0,16(sp)
    80005f38:	02010113          	addi	sp,sp,32
    80005f3c:	00008067          	ret

0000000080005f40 <console_handler>:
    80005f40:	fe010113          	addi	sp,sp,-32
    80005f44:	00813823          	sd	s0,16(sp)
    80005f48:	00113c23          	sd	ra,24(sp)
    80005f4c:	00913423          	sd	s1,8(sp)
    80005f50:	02010413          	addi	s0,sp,32
    80005f54:	14202773          	csrr	a4,scause
    80005f58:	100027f3          	csrr	a5,sstatus
    80005f5c:	0027f793          	andi	a5,a5,2
    80005f60:	06079e63          	bnez	a5,80005fdc <console_handler+0x9c>
    80005f64:	00074c63          	bltz	a4,80005f7c <console_handler+0x3c>
    80005f68:	01813083          	ld	ra,24(sp)
    80005f6c:	01013403          	ld	s0,16(sp)
    80005f70:	00813483          	ld	s1,8(sp)
    80005f74:	02010113          	addi	sp,sp,32
    80005f78:	00008067          	ret
    80005f7c:	0ff77713          	andi	a4,a4,255
    80005f80:	00900793          	li	a5,9
    80005f84:	fef712e3          	bne	a4,a5,80005f68 <console_handler+0x28>
    80005f88:	ffffe097          	auipc	ra,0xffffe
    80005f8c:	6dc080e7          	jalr	1756(ra) # 80004664 <plic_claim>
    80005f90:	00a00793          	li	a5,10
    80005f94:	00050493          	mv	s1,a0
    80005f98:	02f50c63          	beq	a0,a5,80005fd0 <console_handler+0x90>
    80005f9c:	fc0506e3          	beqz	a0,80005f68 <console_handler+0x28>
    80005fa0:	00050593          	mv	a1,a0
    80005fa4:	00000517          	auipc	a0,0x0
    80005fa8:	36450513          	addi	a0,a0,868 # 80006308 <CONSOLE_STATUS+0x2f8>
    80005fac:	fffff097          	auipc	ra,0xfffff
    80005fb0:	afc080e7          	jalr	-1284(ra) # 80004aa8 <__printf>
    80005fb4:	01013403          	ld	s0,16(sp)
    80005fb8:	01813083          	ld	ra,24(sp)
    80005fbc:	00048513          	mv	a0,s1
    80005fc0:	00813483          	ld	s1,8(sp)
    80005fc4:	02010113          	addi	sp,sp,32
    80005fc8:	ffffe317          	auipc	t1,0xffffe
    80005fcc:	6d430067          	jr	1748(t1) # 8000469c <plic_complete>
    80005fd0:	fffff097          	auipc	ra,0xfffff
    80005fd4:	3e0080e7          	jalr	992(ra) # 800053b0 <uartintr>
    80005fd8:	fddff06f          	j	80005fb4 <console_handler+0x74>
    80005fdc:	00000517          	auipc	a0,0x0
    80005fe0:	42c50513          	addi	a0,a0,1068 # 80006408 <digits+0x78>
    80005fe4:	fffff097          	auipc	ra,0xfffff
    80005fe8:	a68080e7          	jalr	-1432(ra) # 80004a4c <panic>
	...
