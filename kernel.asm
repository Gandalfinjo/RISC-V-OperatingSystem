
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	8b813103          	ld	sp,-1864(sp) # 800088b8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	324040ef          	jal	ra,80004340 <start>

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
    80001084:	00008297          	auipc	t0,0x8
    80001088:	8a22be23          	sd	sp,-1860(t0) # 80008940 <framePointer>

    call _ZN5Riscv11trapHandlerEv
    8000108c:	415000ef          	jal	ra,80001ca0 <_ZN5Riscv11trapHandlerEv>

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

0000000080001310 <_Z8sem_openPP10KSemaphorej>:

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

0000000080001348 <_Z9sem_closeP10KSemaphore>:

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

0000000080001374 <_Z8sem_waitP10KSemaphore>:

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

00000000800013a0 <_Z10sem_signalP10KSemaphore>:

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
    800013d8:	00007817          	auipc	a6,0x7
    800013dc:	54880813          	addi	a6,a6,1352 # 80008920 <_ZN7KThread8staticIdE>
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
    80001434:	c5c080e7          	jalr	-932(ra) # 8000208c <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001488:	b08080e7          	jalr	-1272(ra) # 80001f8c <_ZN15MemoryAllocator9mem_allocEm>
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
    80001504:	a8c080e7          	jalr	-1396(ra) # 80001f8c <_ZN15MemoryAllocator9mem_allocEm>
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
    8000153c:	00007817          	auipc	a6,0x7
    80001540:	3e480813          	addi	a6,a6,996 # 80008920 <_ZN7KThread8staticIdE>
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
    800015c0:	9d0080e7          	jalr	-1584(ra) # 80001f8c <_ZN15MemoryAllocator9mem_allocEm>
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
    800015ec:	aa4080e7          	jalr	-1372(ra) # 8000208c <_ZN15MemoryAllocator8mem_freeEPv>
    800015f0:	00090513          	mv	a0,s2
    800015f4:	00008097          	auipc	ra,0x8
    800015f8:	454080e7          	jalr	1108(ra) # 80009a48 <_Unwind_Resume>
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
    80001674:	1a4080e7          	jalr	420(ra) # 80001814 <_ZN9Scheduler3putEP7KThread>
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
    800016c0:	00007497          	auipc	s1,0x7
    800016c4:	2684b483          	ld	s1,616(s1) # 80008928 <_ZN7KThread7runningE>

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
    800016dc:	0f8080e7          	jalr	248(ra) # 800017d0 <_ZN9Scheduler3getEv>
    800016e0:	00007797          	auipc	a5,0x7
    800016e4:	24a7b423          	sd	a0,584(a5) # 80008928 <_ZN7KThread7runningE>
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
    80001704:	00007597          	auipc	a1,0x7
    80001708:	2245b583          	ld	a1,548(a1) # 80008928 <_ZN7KThread7runningE>
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
    80001740:	0d8080e7          	jalr	216(ra) # 80001814 <_ZN9Scheduler3putEP7KThread>
    80001744:	f95ff06f          	j	800016d8 <_ZN7KThread8dispatchEv+0x2c>
        MemoryAllocator::mem_free(old->stack);
    80001748:	0084b503          	ld	a0,8(s1)
    8000174c:	00001097          	auipc	ra,0x1
    80001750:	940080e7          	jalr	-1728(ra) # 8000208c <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001790:	00007497          	auipc	s1,0x7
    80001794:	19048493          	addi	s1,s1,400 # 80008920 <_ZN7KThread8staticIdE>
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

00000000800017d0 <_ZN9Scheduler3getEv>:
#include "../h/KThread.hpp"

KThread* Scheduler::head = nullptr;
KThread* Scheduler::tail = nullptr;

KThread* Scheduler::get() {
    800017d0:	ff010113          	addi	sp,sp,-16
    800017d4:	00813423          	sd	s0,8(sp)
    800017d8:	01010413          	addi	s0,sp,16
    if (!head) return nullptr;
    800017dc:	00007517          	auipc	a0,0x7
    800017e0:	15453503          	ld	a0,340(a0) # 80008930 <_ZN9Scheduler4headE>
    800017e4:	00050c63          	beqz	a0,800017fc <_ZN9Scheduler3getEv+0x2c>

    KThread* thread = head;
    head = head->schedulerNext;
    800017e8:	04053783          	ld	a5,64(a0)
    800017ec:	00007717          	auipc	a4,0x7
    800017f0:	14f73223          	sd	a5,324(a4) # 80008930 <_ZN9Scheduler4headE>

    if (!head) tail = nullptr;
    800017f4:	00078a63          	beqz	a5,80001808 <_ZN9Scheduler3getEv+0x38>
    thread->schedulerNext = nullptr;
    800017f8:	04053023          	sd	zero,64(a0)

    return thread;
}
    800017fc:	00813403          	ld	s0,8(sp)
    80001800:	01010113          	addi	sp,sp,16
    80001804:	00008067          	ret
    if (!head) tail = nullptr;
    80001808:	00007797          	auipc	a5,0x7
    8000180c:	1207b823          	sd	zero,304(a5) # 80008938 <_ZN9Scheduler4tailE>
    80001810:	fe9ff06f          	j	800017f8 <_ZN9Scheduler3getEv+0x28>

0000000080001814 <_ZN9Scheduler3putEP7KThread>:

void Scheduler::put(KThread* thread) {
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00813423          	sd	s0,8(sp)
    8000181c:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    80001820:	00007797          	auipc	a5,0x7
    80001824:	1107b783          	ld	a5,272(a5) # 80008930 <_ZN9Scheduler4headE>
    80001828:	02078263          	beqz	a5,8000184c <_ZN9Scheduler3putEP7KThread+0x38>
    else tail->schedulerNext = thread;
    8000182c:	00007797          	auipc	a5,0x7
    80001830:	10c7b783          	ld	a5,268(a5) # 80008938 <_ZN9Scheduler4tailE>
    80001834:	04a7b023          	sd	a0,64(a5)
    tail = thread;
    80001838:	00007797          	auipc	a5,0x7
    8000183c:	10a7b023          	sd	a0,256(a5) # 80008938 <_ZN9Scheduler4tailE>
}
    80001840:	00813403          	ld	s0,8(sp)
    80001844:	01010113          	addi	sp,sp,16
    80001848:	00008067          	ret
    if (!head) head = thread;
    8000184c:	00007797          	auipc	a5,0x7
    80001850:	0ea7b223          	sd	a0,228(a5) # 80008930 <_ZN9Scheduler4headE>
    80001854:	fe5ff06f          	j	80001838 <_ZN9Scheduler3putEP7KThread+0x24>

0000000080001858 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80001858:	ff010113          	addi	sp,sp,-16
    8000185c:	00813423          	sd	s0,8(sp)
    80001860:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80001864:	00007517          	auipc	a0,0x7
    80001868:	0cc53503          	ld	a0,204(a0) # 80008930 <_ZN9Scheduler4headE>
    8000186c:	00153513          	seqz	a0,a0
    80001870:	00813403          	ld	s0,8(sp)
    80001874:	01010113          	addi	sp,sp,16
    80001878:	00008067          	ret

000000008000187c <_Z11userWrapperPv>:
#include "../h/KThread.hpp"

uint64 framePointer;

void userMain();
void userWrapper(void* arg) {
    8000187c:	ff010113          	addi	sp,sp,-16
    80001880:	00113423          	sd	ra,8(sp)
    80001884:	00813023          	sd	s0,0(sp)
    80001888:	01010413          	addi	s0,sp,16
    userMain();
    8000188c:	00002097          	auipc	ra,0x2
    80001890:	164080e7          	jalr	356(ra) # 800039f0 <_Z8userMainv>
}
    80001894:	00813083          	ld	ra,8(sp)
    80001898:	00013403          	ld	s0,0(sp)
    8000189c:	01010113          	addi	sp,sp,16
    800018a0:	00008067          	ret

00000000800018a4 <main>:
//         sem_signal(sem);
//         Thread::yield();
//     }
// }

void main() {
    800018a4:	fe010113          	addi	sp,sp,-32
    800018a8:	00113c23          	sd	ra,24(sp)
    800018ac:	00813823          	sd	s0,16(sp)
    800018b0:	02010413          	addi	s0,sp,32
    MemoryAllocator::initHeap();
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	688080e7          	jalr	1672(ra) # 80001f3c <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	3c0080e7          	jalr	960(ra) # 80001c7c <_ZN5Riscv16setupTrapHandlerEv>

    thread_t mainThread, userBody;

    mainThread = KThread::createThread(nullptr, nullptr);
    800018c4:	00001637          	lui	a2,0x1
    800018c8:	00000593          	li	a1,0
    800018cc:	00000513          	li	a0,0
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	cbc080e7          	jalr	-836(ra) # 8000158c <_ZN7KThread12createThreadEPFvPvES0_m>
    KThread::running = mainThread;
    800018d8:	00007797          	auipc	a5,0x7
    800018dc:	ff87b783          	ld	a5,-8(a5) # 800088d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018e0:	00a7b023          	sd	a0,0(a5)
    void setState(ThreadState s) { state = s; }
    800018e4:	00200793          	li	a5,2
    800018e8:	02f52c23          	sw	a5,56(a0)
    mainThread->setState(RUNNING);

    thread_create(&userBody, &userWrapper, nullptr);
    800018ec:	00000613          	li	a2,0
    800018f0:	00000597          	auipc	a1,0x0
    800018f4:	f8c58593          	addi	a1,a1,-116 # 8000187c <_Z11userWrapperPv>
    800018f8:	fe840513          	addi	a0,s0,-24
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	920080e7          	jalr	-1760(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>

    while (!Scheduler::isEmpty()) {
    80001904:	00000097          	auipc	ra,0x0
    80001908:	f54080e7          	jalr	-172(ra) # 80001858 <_ZN9Scheduler7isEmptyEv>
    8000190c:	00051863          	bnez	a0,8000191c <main+0x78>
        KThread::yield();
    80001910:	00000097          	auipc	ra,0x0
    80001914:	e4c080e7          	jalr	-436(ra) # 8000175c <_ZN7KThread5yieldEv>
    80001918:	fedff06f          	j	80001904 <main+0x60>
    // while (!Scheduler::isEmpty()) {
    //     Thread::yield();
    // }
    //
    // sem_close(sem);
    8000191c:	01813083          	ld	ra,24(sp)
    80001920:	01013403          	ld	s0,16(sp)
    80001924:	02010113          	addi	sp,sp,32
    80001928:	00008067          	ret

000000008000192c <_ZN6ThreadD1Ev>:
    : myHandle(nullptr), body(body), arg(arg) {}

Thread::Thread()
    : myHandle(nullptr), body(nullptr), arg(nullptr) {}

Thread::~Thread() {
    8000192c:	00007797          	auipc	a5,0x7
    80001930:	e8c78793          	addi	a5,a5,-372 # 800087b8 <_ZTV6Thread+0x10>
    80001934:	00f53023          	sd	a5,0(a0)
    if (myHandle) {
    80001938:	00853503          	ld	a0,8(a0)
    8000193c:	02050663          	beqz	a0,80001968 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread() {
    80001940:	ff010113          	addi	sp,sp,-16
    80001944:	00113423          	sd	ra,8(sp)
    80001948:	00813023          	sd	s0,0(sp)
    8000194c:	01010413          	addi	s0,sp,16
        mem_free(myHandle);
    80001950:	00000097          	auipc	ra,0x0
    80001954:	858080e7          	jalr	-1960(ra) # 800011a8 <_Z8mem_freePv>
        myHandle = nullptr;
    }
}
    80001958:	00813083          	ld	ra,8(sp)
    8000195c:	00013403          	ld	s0,0(sp)
    80001960:	01010113          	addi	sp,sp,16
    80001964:	00008067          	ret
    80001968:	00008067          	ret

000000008000196c <_ZN6Thread7wrapperEPv>:
void Thread::wrapper(void* arg) {
    8000196c:	ff010113          	addi	sp,sp,-16
    80001970:	00113423          	sd	ra,8(sp)
    80001974:	00813023          	sd	s0,0(sp)
    80001978:	01010413          	addi	s0,sp,16
    thread->run();
    8000197c:	00053783          	ld	a5,0(a0)
    80001980:	0107b783          	ld	a5,16(a5)
    80001984:	000780e7          	jalr	a5
    thread_exit();
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	940080e7          	jalr	-1728(ra) # 800012c8 <_Z11thread_exitv>
}
    80001990:	00813083          	ld	ra,8(sp)
    80001994:	00013403          	ld	s0,0(sp)
    80001998:	01010113          	addi	sp,sp,16
    8000199c:	00008067          	ret

00000000800019a0 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800019a0:	ff010113          	addi	sp,sp,-16
    800019a4:	00113423          	sd	ra,8(sp)
    800019a8:	00813023          	sd	s0,0(sp)
    800019ac:	01010413          	addi	s0,sp,16
    800019b0:	00007797          	auipc	a5,0x7
    800019b4:	e3078793          	addi	a5,a5,-464 # 800087e0 <_ZTV9Semaphore+0x10>
    800019b8:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800019bc:	00853503          	ld	a0,8(a0)
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	988080e7          	jalr	-1656(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
}
    800019c8:	00813083          	ld	ra,8(sp)
    800019cc:	00013403          	ld	s0,0(sp)
    800019d0:	01010113          	addi	sp,sp,16
    800019d4:	00008067          	ret

00000000800019d8 <_Znwm>:
void* operator new(size_t size) {
    800019d8:	ff010113          	addi	sp,sp,-16
    800019dc:	00113423          	sd	ra,8(sp)
    800019e0:	00813023          	sd	s0,0(sp)
    800019e4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800019e8:	fffff097          	auipc	ra,0xfffff
    800019ec:	77c080e7          	jalr	1916(ra) # 80001164 <_Z9mem_allocm>
}
    800019f0:	00813083          	ld	ra,8(sp)
    800019f4:	00013403          	ld	s0,0(sp)
    800019f8:	01010113          	addi	sp,sp,16
    800019fc:	00008067          	ret

0000000080001a00 <_ZdlPv>:
void operator delete(void* ptr) {
    80001a00:	ff010113          	addi	sp,sp,-16
    80001a04:	00113423          	sd	ra,8(sp)
    80001a08:	00813023          	sd	s0,0(sp)
    80001a0c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001a10:	fffff097          	auipc	ra,0xfffff
    80001a14:	798080e7          	jalr	1944(ra) # 800011a8 <_Z8mem_freePv>
}
    80001a18:	00813083          	ld	ra,8(sp)
    80001a1c:	00013403          	ld	s0,0(sp)
    80001a20:	01010113          	addi	sp,sp,16
    80001a24:	00008067          	ret

0000000080001a28 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001a28:	fe010113          	addi	sp,sp,-32
    80001a2c:	00113c23          	sd	ra,24(sp)
    80001a30:	00813823          	sd	s0,16(sp)
    80001a34:	00913423          	sd	s1,8(sp)
    80001a38:	02010413          	addi	s0,sp,32
    80001a3c:	00050493          	mv	s1,a0
}
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	eec080e7          	jalr	-276(ra) # 8000192c <_ZN6ThreadD1Ev>
    80001a48:	00048513          	mv	a0,s1
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	fb4080e7          	jalr	-76(ra) # 80001a00 <_ZdlPv>
    80001a54:	01813083          	ld	ra,24(sp)
    80001a58:	01013403          	ld	s0,16(sp)
    80001a5c:	00813483          	ld	s1,8(sp)
    80001a60:	02010113          	addi	sp,sp,32
    80001a64:	00008067          	ret

0000000080001a68 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001a68:	fe010113          	addi	sp,sp,-32
    80001a6c:	00113c23          	sd	ra,24(sp)
    80001a70:	00813823          	sd	s0,16(sp)
    80001a74:	00913423          	sd	s1,8(sp)
    80001a78:	02010413          	addi	s0,sp,32
    80001a7c:	00050493          	mv	s1,a0
}
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	f20080e7          	jalr	-224(ra) # 800019a0 <_ZN9SemaphoreD1Ev>
    80001a88:	00048513          	mv	a0,s1
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	f74080e7          	jalr	-140(ra) # 80001a00 <_ZdlPv>
    80001a94:	01813083          	ld	ra,24(sp)
    80001a98:	01013403          	ld	s0,16(sp)
    80001a9c:	00813483          	ld	s1,8(sp)
    80001aa0:	02010113          	addi	sp,sp,32
    80001aa4:	00008067          	ret

0000000080001aa8 <_Znam>:
void* operator new[](size_t size) {
    80001aa8:	ff010113          	addi	sp,sp,-16
    80001aac:	00113423          	sd	ra,8(sp)
    80001ab0:	00813023          	sd	s0,0(sp)
    80001ab4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001ab8:	fffff097          	auipc	ra,0xfffff
    80001abc:	6ac080e7          	jalr	1708(ra) # 80001164 <_Z9mem_allocm>
}
    80001ac0:	00813083          	ld	ra,8(sp)
    80001ac4:	00013403          	ld	s0,0(sp)
    80001ac8:	01010113          	addi	sp,sp,16
    80001acc:	00008067          	ret

0000000080001ad0 <_ZdaPv>:
void operator delete[](void* ptr) {
    80001ad0:	ff010113          	addi	sp,sp,-16
    80001ad4:	00113423          	sd	ra,8(sp)
    80001ad8:	00813023          	sd	s0,0(sp)
    80001adc:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001ae0:	fffff097          	auipc	ra,0xfffff
    80001ae4:	6c8080e7          	jalr	1736(ra) # 800011a8 <_Z8mem_freePv>
}
    80001ae8:	00813083          	ld	ra,8(sp)
    80001aec:	00013403          	ld	s0,0(sp)
    80001af0:	01010113          	addi	sp,sp,16
    80001af4:	00008067          	ret

0000000080001af8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg)
    80001af8:	ff010113          	addi	sp,sp,-16
    80001afc:	00813423          	sd	s0,8(sp)
    80001b00:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(body), arg(arg) {}
    80001b04:	00007797          	auipc	a5,0x7
    80001b08:	cb478793          	addi	a5,a5,-844 # 800087b8 <_ZTV6Thread+0x10>
    80001b0c:	00f53023          	sd	a5,0(a0)
    80001b10:	00053423          	sd	zero,8(a0)
    80001b14:	00b53823          	sd	a1,16(a0)
    80001b18:	00c53c23          	sd	a2,24(a0)
    80001b1c:	00813403          	ld	s0,8(sp)
    80001b20:	01010113          	addi	sp,sp,16
    80001b24:	00008067          	ret

0000000080001b28 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80001b28:	ff010113          	addi	sp,sp,-16
    80001b2c:	00813423          	sd	s0,8(sp)
    80001b30:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80001b34:	00007797          	auipc	a5,0x7
    80001b38:	c8478793          	addi	a5,a5,-892 # 800087b8 <_ZTV6Thread+0x10>
    80001b3c:	00f53023          	sd	a5,0(a0)
    80001b40:	00053423          	sd	zero,8(a0)
    80001b44:	00053823          	sd	zero,16(a0)
    80001b48:	00053c23          	sd	zero,24(a0)
    80001b4c:	00813403          	ld	s0,8(sp)
    80001b50:	01010113          	addi	sp,sp,16
    80001b54:	00008067          	ret

0000000080001b58 <_ZN6Thread5startEv>:
int Thread::start() {
    80001b58:	ff010113          	addi	sp,sp,-16
    80001b5c:	00113423          	sd	ra,8(sp)
    80001b60:	00813023          	sd	s0,0(sp)
    80001b64:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    80001b68:	01053583          	ld	a1,16(a0)
    80001b6c:	02058263          	beqz	a1,80001b90 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80001b70:	01853603          	ld	a2,24(a0)
    80001b74:	00850513          	addi	a0,a0,8
    80001b78:	fffff097          	auipc	ra,0xfffff
    80001b7c:	6a4080e7          	jalr	1700(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
}
    80001b80:	00813083          	ld	ra,8(sp)
    80001b84:	00013403          	ld	s0,0(sp)
    80001b88:	01010113          	addi	sp,sp,16
    80001b8c:	00008067          	ret
    return thread_create(&myHandle, wrapper, this);
    80001b90:	00050613          	mv	a2,a0
    80001b94:	00000597          	auipc	a1,0x0
    80001b98:	dd858593          	addi	a1,a1,-552 # 8000196c <_ZN6Thread7wrapperEPv>
    80001b9c:	00850513          	addi	a0,a0,8
    80001ba0:	fffff097          	auipc	ra,0xfffff
    80001ba4:	67c080e7          	jalr	1660(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    80001ba8:	fd9ff06f          	j	80001b80 <_ZN6Thread5startEv+0x28>

0000000080001bac <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001bac:	ff010113          	addi	sp,sp,-16
    80001bb0:	00113423          	sd	ra,8(sp)
    80001bb4:	00813023          	sd	s0,0(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001bbc:	fffff097          	auipc	ra,0xfffff
    80001bc0:	734080e7          	jalr	1844(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80001bc4:	00813083          	ld	ra,8(sp)
    80001bc8:	00013403          	ld	s0,0(sp)
    80001bcc:	01010113          	addi	sp,sp,16
    80001bd0:	00008067          	ret

0000000080001bd4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80001bd4:	ff010113          	addi	sp,sp,-16
    80001bd8:	00113423          	sd	ra,8(sp)
    80001bdc:	00813023          	sd	s0,0(sp)
    80001be0:	01010413          	addi	s0,sp,16
    80001be4:	00007797          	auipc	a5,0x7
    80001be8:	bfc78793          	addi	a5,a5,-1028 # 800087e0 <_ZTV9Semaphore+0x10>
    80001bec:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001bf0:	00850513          	addi	a0,a0,8
    80001bf4:	fffff097          	auipc	ra,0xfffff
    80001bf8:	71c080e7          	jalr	1820(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
}
    80001bfc:	00813083          	ld	ra,8(sp)
    80001c00:	00013403          	ld	s0,0(sp)
    80001c04:	01010113          	addi	sp,sp,16
    80001c08:	00008067          	ret

0000000080001c0c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001c0c:	ff010113          	addi	sp,sp,-16
    80001c10:	00113423          	sd	ra,8(sp)
    80001c14:	00813023          	sd	s0,0(sp)
    80001c18:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001c1c:	00853503          	ld	a0,8(a0)
    80001c20:	fffff097          	auipc	ra,0xfffff
    80001c24:	754080e7          	jalr	1876(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
}
    80001c28:	00813083          	ld	ra,8(sp)
    80001c2c:	00013403          	ld	s0,0(sp)
    80001c30:	01010113          	addi	sp,sp,16
    80001c34:	00008067          	ret

0000000080001c38 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00113423          	sd	ra,8(sp)
    80001c40:	00813023          	sd	s0,0(sp)
    80001c44:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001c48:	00853503          	ld	a0,8(a0)
    80001c4c:	fffff097          	auipc	ra,0xfffff
    80001c50:	754080e7          	jalr	1876(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
    80001c54:	00813083          	ld	ra,8(sp)
    80001c58:	00013403          	ld	s0,0(sp)
    80001c5c:	01010113          	addi	sp,sp,16
    80001c60:	00008067          	ret

0000000080001c64 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001c64:	ff010113          	addi	sp,sp,-16
    80001c68:	00813423          	sd	s0,8(sp)
    80001c6c:	01010413          	addi	s0,sp,16
    80001c70:	00813403          	ld	s0,8(sp)
    80001c74:	01010113          	addi	sp,sp,16
    80001c78:	00008067          	ret

0000000080001c7c <_ZN5Riscv16setupTrapHandlerEv>:
constexpr uint64 SEM_OPEN = 0x21;
constexpr uint64 SEM_CLOSE = 0x22;
constexpr uint64 SEM_WAIT = 0x23;
constexpr uint64 SEM_SIGNAL = 0x24;

void Riscv::setupTrapHandler() {
    80001c7c:	ff010113          	addi	sp,sp,-16
    80001c80:	00813423          	sd	s0,8(sp)
    80001c84:	01010413          	addi	s0,sp,16
    unsigned long addr = (unsigned long)&trap_handler;
    80001c88:	00007797          	auipc	a5,0x7
    80001c8c:	c387b783          	ld	a5,-968(a5) # 800088c0 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(addr));
    80001c90:	10579073          	csrw	stvec,a5
}
    80001c94:	00813403          	ld	s0,8(sp)
    80001c98:	01010113          	addi	sp,sp,16
    80001c9c:	00008067          	ret

0000000080001ca0 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001ca0:	fe010113          	addi	sp,sp,-32
    80001ca4:	00113c23          	sd	ra,24(sp)
    80001ca8:	00813823          	sd	s0,16(sp)
    80001cac:	00913423          	sd	s1,8(sp)
    80001cb0:	01213023          	sd	s2,0(sp)
    80001cb4:	02010413          	addi	s0,sp,32
    uint64 scause = 0, sepc = 0;
    asm volatile("csrr %0, scause" : "=r"(scause));
    80001cb8:	14202773          	csrr	a4,scause
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    80001cbc:	141024f3          	csrr	s1,sepc

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    80001cc0:	fff00793          	li	a5,-1
    80001cc4:	0017d793          	srli	a5,a5,0x1
    80001cc8:	00f777b3          	and	a5,a4,a5

    if (interrupt == 0 && (cause == 8 || cause == 9)) {
    80001ccc:	00074863          	bltz	a4,80001cdc <_ZN5Riscv11trapHandlerEv+0x3c>
    80001cd0:	ff878793          	addi	a5,a5,-8
    80001cd4:	00100713          	li	a4,1
    80001cd8:	00f77e63          	bgeu	a4,a5,80001cf4 <_ZN5Riscv11trapHandlerEv+0x54>
        }

        sepc += 4;
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    }
    80001cdc:	01813083          	ld	ra,24(sp)
    80001ce0:	01013403          	ld	s0,16(sp)
    80001ce4:	00813483          	ld	s1,8(sp)
    80001ce8:	00013903          	ld	s2,0(sp)
    80001cec:	02010113          	addi	sp,sp,32
    80001cf0:	00008067          	ret
        asm volatile("mv %0, a0" : "=r"(code));
    80001cf4:	00050793          	mv	a5,a0
        switch (code) {
    80001cf8:	02400713          	li	a4,36
    80001cfc:	04f76463          	bltu	a4,a5,80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>
    80001d00:	00279793          	slli	a5,a5,0x2
    80001d04:	00005717          	auipc	a4,0x5
    80001d08:	31c70713          	addi	a4,a4,796 # 80007020 <CONSOLE_STATUS+0x10>
    80001d0c:	00e787b3          	add	a5,a5,a4
    80001d10:	0007a783          	lw	a5,0(a5)
    80001d14:	00e787b3          	add	a5,a5,a4
    80001d18:	00078067          	jr	a5
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001d1c:	00007917          	auipc	s2,0x7
    80001d20:	bbc93903          	ld	s2,-1092(s2) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d24:	00093783          	ld	a5,0(s2)
    80001d28:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(size));
    80001d2c:	00058513          	mv	a0,a1
                void* ptr = MemoryAllocator::mem_alloc(size);
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	25c080e7          	jalr	604(ra) # 80001f8c <_ZN15MemoryAllocator9mem_allocEm>
                asm volatile("mv a0, %0" :: "r"(ptr));
    80001d38:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001d3c:	00093783          	ld	a5,0(s2)
    80001d40:	04a7b823          	sd	a0,80(a5)
        sepc += 4;
    80001d44:	00448493          	addi	s1,s1,4
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    80001d48:	14149073          	csrw	sepc,s1
    80001d4c:	f91ff06f          	j	80001cdc <_ZN5Riscv11trapHandlerEv+0x3c>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001d50:	00007917          	auipc	s2,0x7
    80001d54:	b8893903          	ld	s2,-1144(s2) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d58:	00093783          	ld	a5,0(s2)
    80001d5c:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(addr));
    80001d60:	00058513          	mv	a0,a1
                int status = MemoryAllocator::mem_free(addr);
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	328080e7          	jalr	808(ra) # 8000208c <_ZN15MemoryAllocator8mem_freeEPv>
                asm volatile("mv a0, %0" :: "r"(status));
    80001d6c:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001d70:	00093783          	ld	a5,0(s2)
    80001d74:	04a7b823          	sd	a0,80(a5)
                break;
    80001d78:	fcdff06f          	j	80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	3b4080e7          	jalr	948(ra) # 80002130 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                asm volatile("mv a0, %0" :: "r"(freeSpace));
    80001d84:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001d88:	00007797          	auipc	a5,0x7
    80001d8c:	b507b783          	ld	a5,-1200(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d90:	0007b783          	ld	a5,0(a5)
    80001d94:	04a7b823          	sd	a0,80(a5)
                break;
    80001d98:	fadff06f          	j	80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	3dc080e7          	jalr	988(ra) # 80002178 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                asm volatile("mv a0, %0" :: "r"(largest));
    80001da4:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001da8:	00007797          	auipc	a5,0x7
    80001dac:	b307b783          	ld	a5,-1232(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001db0:	0007b783          	ld	a5,0(a5)
    80001db4:	04a7b823          	sd	a0,80(a5)
                break;
    80001db8:	f8dff06f          	j	80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001dbc:	00007797          	auipc	a5,0x7
    80001dc0:	b1c7b783          	ld	a5,-1252(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001dc4:	0007b783          	ld	a5,0(a5)
    80001dc8:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001dcc:	00058913          	mv	s2,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001dd0:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(start_routine));
    80001dd4:	00060513          	mv	a0,a2
                asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
    80001dd8:	0687b683          	ld	a3,104(a5)
                asm volatile("mv %0, a3" : "=r"(args));
    80001ddc:	00068593          	mv	a1,a3
                asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
    80001de0:	0707b703          	ld	a4,112(a5)
                asm volatile("mv %0, a4" : "=r"(stack));
    80001de4:	00070613          	mv	a2,a4
                *handle = KThread::createThread(start_routine, args, stack, stackSize);
    80001de8:	000016b7          	lui	a3,0x1
    80001dec:	fffff097          	auipc	ra,0xfffff
    80001df0:	660080e7          	jalr	1632(ra) # 8000144c <_ZN7KThread12createThreadEPFvPvES0_S0_m>
    80001df4:	00a93023          	sd	a0,0(s2)
                if (*handle != nullptr) {
    80001df8:	02050263          	beqz	a0,80001e1c <_ZN5Riscv11trapHandlerEv+0x17c>
                    (*handle)->start();
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	824080e7          	jalr	-2012(ra) # 80001620 <_ZN7KThread5startEv>
                    asm volatile("li a0, 0");
    80001e04:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e08:	00007797          	auipc	a5,0x7
    80001e0c:	ad07b783          	ld	a5,-1328(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e10:	0007b783          	ld	a5,0(a5)
    80001e14:	04a7b823          	sd	a0,80(a5)
                break;
    80001e18:	f2dff06f          	j	80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001e1c:	fff00513          	li	a0,-1
    80001e20:	fe9ff06f          	j	80001e08 <_ZN5Riscv11trapHandlerEv+0x168>
                if (KThread::running) {
    80001e24:	00007797          	auipc	a5,0x7
    80001e28:	aac7b783          	ld	a5,-1364(a5) # 800088d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e2c:	0007b503          	ld	a0,0(a5)
    80001e30:	00050663          	beqz	a0,80001e3c <_ZN5Riscv11trapHandlerEv+0x19c>
                    KThread::running->exit();
    80001e34:	00000097          	auipc	ra,0x0
    80001e38:	858080e7          	jalr	-1960(ra) # 8000168c <_ZN7KThread4exitEv>
                KThread::dispatch();
    80001e3c:	00000097          	auipc	ra,0x0
    80001e40:	870080e7          	jalr	-1936(ra) # 800016ac <_ZN7KThread8dispatchEv>
                asm volatile("li a0, 0");
    80001e44:	00000513          	li	a0,0
                break;
    80001e48:	efdff06f          	j	80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>
                KThread::dispatch();
    80001e4c:	00000097          	auipc	ra,0x0
    80001e50:	860080e7          	jalr	-1952(ra) # 800016ac <_ZN7KThread8dispatchEv>
                break;
    80001e54:	ef1ff06f          	j	80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001e58:	00007797          	auipc	a5,0x7
    80001e5c:	a807b783          	ld	a5,-1408(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e60:	0007b783          	ld	a5,0(a5)
    80001e64:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001e68:	00058913          	mv	s2,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001e6c:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(init));
    80001e70:	00060513          	mv	a0,a2
                *handle = KSemaphore::createSemaphore(init);
    80001e74:	02051513          	slli	a0,a0,0x20
    80001e78:	02055513          	srli	a0,a0,0x20
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	34c080e7          	jalr	844(ra) # 800021c8 <_ZN10KSemaphore15createSemaphoreEm>
    80001e84:	00a93023          	sd	a0,0(s2)
                if (*handle != nullptr) asm volatile("li a0, 0");
    80001e88:	00050e63          	beqz	a0,80001ea4 <_ZN5Riscv11trapHandlerEv+0x204>
    80001e8c:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e90:	00007797          	auipc	a5,0x7
    80001e94:	a487b783          	ld	a5,-1464(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e98:	0007b783          	ld	a5,0(a5)
    80001e9c:	04a7b823          	sd	a0,80(a5)
                break;
    80001ea0:	ea5ff06f          	j	80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001ea4:	fff00513          	li	a0,-1
    80001ea8:	fe9ff06f          	j	80001e90 <_ZN5Riscv11trapHandlerEv+0x1f0>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001eac:	00007797          	auipc	a5,0x7
    80001eb0:	a2c7b783          	ld	a5,-1492(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001eb4:	0007b783          	ld	a5,0(a5)
    80001eb8:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001ebc:	00058513          	mv	a0,a1
                if (handle) {
    80001ec0:	00050a63          	beqz	a0,80001ed4 <_ZN5Riscv11trapHandlerEv+0x234>
                    handle->close();
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	468080e7          	jalr	1128(ra) # 8000232c <_ZN10KSemaphore5closeEv>
                    asm volatile("li a0, 0");
    80001ecc:	00000513          	li	a0,0
    80001ed0:	e75ff06f          	j	80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001ed4:	fff00513          	li	a0,-1
    80001ed8:	e6dff06f          	j	80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001edc:	00007797          	auipc	a5,0x7
    80001ee0:	9fc7b783          	ld	a5,-1540(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ee4:	0007b783          	ld	a5,0(a5)
    80001ee8:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001eec:	00058513          	mv	a0,a1
                if (handle) {
    80001ef0:	00050a63          	beqz	a0,80001f04 <_ZN5Riscv11trapHandlerEv+0x264>
                    handle->wait();
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	388080e7          	jalr	904(ra) # 8000227c <_ZN10KSemaphore4waitEv>
                    asm volatile("li a0, 0");
    80001efc:	00000513          	li	a0,0
    80001f00:	e45ff06f          	j	80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001f04:	fff00513          	li	a0,-1
    80001f08:	e3dff06f          	j	80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f0c:	00007797          	auipc	a5,0x7
    80001f10:	9cc7b783          	ld	a5,-1588(a5) # 800088d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f14:	0007b783          	ld	a5,0(a5)
    80001f18:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001f1c:	00058513          	mv	a0,a1
                if (handle) {
    80001f20:	00050a63          	beqz	a0,80001f34 <_ZN5Riscv11trapHandlerEv+0x294>
                    handle->signal();
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	3b4080e7          	jalr	948(ra) # 800022d8 <_ZN10KSemaphore6signalEv>
                    asm volatile("li a0, 0");
    80001f2c:	00000513          	li	a0,0
    80001f30:	e15ff06f          	j	80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001f34:	fff00513          	li	a0,-1
    80001f38:	e0dff06f          	j	80001d44 <_ZN5Riscv11trapHandlerEv+0xa4>

0000000080001f3c <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80001f3c:	ff010113          	addi	sp,sp,-16
    80001f40:	00813423          	sd	s0,8(sp)
    80001f44:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80001f48:	00007697          	auipc	a3,0x7
    80001f4c:	9686b683          	ld	a3,-1688(a3) # 800088b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001f50:	0006b783          	ld	a5,0(a3)
    80001f54:	00007717          	auipc	a4,0x7
    80001f58:	9f470713          	addi	a4,a4,-1548 # 80008948 <_ZN15MemoryAllocator12freeListHeadE>
    80001f5c:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    80001f60:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80001f64:	00007797          	auipc	a5,0x7
    80001f68:	9647b783          	ld	a5,-1692(a5) # 800088c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001f6c:	0007b783          	ld	a5,0(a5)
    80001f70:	0006b683          	ld	a3,0(a3)
    80001f74:	00073703          	ld	a4,0(a4)
    80001f78:	40d787b3          	sub	a5,a5,a3
    80001f7c:	00f73423          	sd	a5,8(a4)
}
    80001f80:	00813403          	ld	s0,8(sp)
    80001f84:	01010113          	addi	sp,sp,16
    80001f88:	00008067          	ret

0000000080001f8c <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    80001f8c:	ff010113          	addi	sp,sp,-16
    80001f90:	00813423          	sd	s0,8(sp)
    80001f94:	01010413          	addi	s0,sp,16
    80001f98:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    80001f9c:	00007517          	auipc	a0,0x7
    80001fa0:	9ac53503          	ld	a0,-1620(a0) # 80008948 <_ZN15MemoryAllocator12freeListHeadE>
    80001fa4:	06050063          	beqz	a0,80002004 <_ZN15MemoryAllocator9mem_allocEm+0x78>
    80001fa8:	08078a63          	beqz	a5,8000203c <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    80001fac:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    80001fb0:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    80001fb4:	00000613          	li	a2,0
    80001fb8:	00c0006f          	j	80001fc4 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    80001fbc:	00050613          	mv	a2,a0
        curr = curr->next;
    80001fc0:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    80001fc4:	00050663          	beqz	a0,80001fd0 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    80001fc8:	00853783          	ld	a5,8(a0)
    80001fcc:	fee7e8e3          	bltu	a5,a4,80001fbc <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    80001fd0:	02050a63          	beqz	a0,80002004 <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    80001fd4:	00853583          	ld	a1,8(a0)
    80001fd8:	02068793          	addi	a5,a3,32
    80001fdc:	04f5e063          	bltu	a1,a5,8000201c <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    80001fe0:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    80001fe4:	40e585b3          	sub	a1,a1,a4
    80001fe8:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    80001fec:	00053683          	ld	a3,0(a0)
    80001ff0:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    80001ff4:	00060e63          	beqz	a2,80002010 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80001ff8:	00f63023          	sd	a5,0(a2) # 1000 <_entry-0x7ffff000>
        else freeListHead = newBlock;

        curr->size = totalSize;
    80001ffc:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
    80002000:	01050513          	addi	a0,a0,16
}
    80002004:	00813403          	ld	s0,8(sp)
    80002008:	01010113          	addi	sp,sp,16
    8000200c:	00008067          	ret
        else freeListHead = newBlock;
    80002010:	00007697          	auipc	a3,0x7
    80002014:	92f6bc23          	sd	a5,-1736(a3) # 80008948 <_ZN15MemoryAllocator12freeListHeadE>
    80002018:	fe5ff06f          	j	80001ffc <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    8000201c:	00060863          	beqz	a2,8000202c <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80002020:	00053783          	ld	a5,0(a0)
    80002024:	00f63023          	sd	a5,0(a2)
    80002028:	fd9ff06f          	j	80002000 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    8000202c:	00053783          	ld	a5,0(a0)
    80002030:	00007717          	auipc	a4,0x7
    80002034:	90f73c23          	sd	a5,-1768(a4) # 80008948 <_ZN15MemoryAllocator12freeListHeadE>
    80002038:	fc9ff06f          	j	80002000 <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    8000203c:	00000513          	li	a0,0
    80002040:	fc5ff06f          	j	80002004 <_ZN15MemoryAllocator9mem_allocEm+0x78>

0000000080002044 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00813423          	sd	s0,8(sp)
    8000204c:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80002050:	00050c63          	beqz	a0,80002068 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    80002054:	00053783          	ld	a5,0(a0)
    80002058:	00078863          	beqz	a5,80002068 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    8000205c:	00853703          	ld	a4,8(a0)
    80002060:	00e506b3          	add	a3,a0,a4
    80002064:	00d78863          	beq	a5,a3,80002074 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    80002068:	00813403          	ld	s0,8(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret
        curr->size += curr->next->size;
    80002074:	0087b683          	ld	a3,8(a5)
    80002078:	00d70733          	add	a4,a4,a3
    8000207c:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    80002080:	0007b783          	ld	a5,0(a5)
    80002084:	00f53023          	sd	a5,0(a0)
    80002088:	fe1ff06f          	j	80002068 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

000000008000208c <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    8000208c:	08050e63          	beqz	a0,80002128 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80002090:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    80002094:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    80002098:	00007797          	auipc	a5,0x7
    8000209c:	8b07b783          	ld	a5,-1872(a5) # 80008948 <_ZN15MemoryAllocator12freeListHeadE>
    800020a0:	02078863          	beqz	a5,800020d0 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    800020a4:	fe010113          	addi	sp,sp,-32
    800020a8:	00113c23          	sd	ra,24(sp)
    800020ac:	00813823          	sd	s0,16(sp)
    800020b0:	00913423          	sd	s1,8(sp)
    800020b4:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    800020b8:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    800020bc:	02078463          	beqz	a5,800020e4 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800020c0:	02a7f263          	bgeu	a5,a0,800020e4 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    800020c4:	00078493          	mv	s1,a5
        curr = curr->next;
    800020c8:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    800020cc:	ff1ff06f          	j	800020bc <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    800020d0:	00007797          	auipc	a5,0x7
    800020d4:	86a7bc23          	sd	a0,-1928(a5) # 80008948 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    800020d8:	fe073823          	sd	zero,-16(a4)
        return 0;
    800020dc:	00000513          	li	a0,0
    800020e0:	00008067          	ret
    blockToFree->next = curr;
    800020e4:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    800020e8:	02048a63          	beqz	s1,8000211c <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    800020ec:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	f54080e7          	jalr	-172(ra) # 80002044 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    800020f8:	00048513          	mv	a0,s1
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	f48080e7          	jalr	-184(ra) # 80002044 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    80002104:	00000513          	li	a0,0
}
    80002108:	01813083          	ld	ra,24(sp)
    8000210c:	01013403          	ld	s0,16(sp)
    80002110:	00813483          	ld	s1,8(sp)
    80002114:	02010113          	addi	sp,sp,32
    80002118:	00008067          	ret
    else freeListHead = blockToFree;
    8000211c:	00007797          	auipc	a5,0x7
    80002120:	82a7b623          	sd	a0,-2004(a5) # 80008948 <_ZN15MemoryAllocator12freeListHeadE>
    80002124:	fcdff06f          	j	800020f0 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    80002128:	fff00513          	li	a0,-1
}
    8000212c:	00008067          	ret

0000000080002130 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002130:	ff010113          	addi	sp,sp,-16
    80002134:	00813423          	sd	s0,8(sp)
    80002138:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    8000213c:	00007797          	auipc	a5,0x7
    80002140:	80c7b783          	ld	a5,-2036(a5) # 80008948 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    80002144:	00000513          	li	a0,0
    80002148:	0080006f          	j	80002150 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    8000214c:	0007b783          	ld	a5,0(a5)
    80002150:	00078e63          	beqz	a5,8000216c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    80002154:	0087b703          	ld	a4,8(a5)
    80002158:	01000693          	li	a3,16
    8000215c:	fee6f8e3          	bgeu	a3,a4,8000214c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    80002160:	00a70533          	add	a0,a4,a0
    80002164:	ff050513          	addi	a0,a0,-16
    80002168:	fe5ff06f          	j	8000214c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    8000216c:	00813403          	ld	s0,8(sp)
    80002170:	01010113          	addi	sp,sp,16
    80002174:	00008067          	ret

0000000080002178 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002178:	ff010113          	addi	sp,sp,-16
    8000217c:	00813423          	sd	s0,8(sp)
    80002180:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002184:	00006717          	auipc	a4,0x6
    80002188:	7c473703          	ld	a4,1988(a4) # 80008948 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    8000218c:	00000513          	li	a0,0
    80002190:	0080006f          	j	80002198 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002194:	00073703          	ld	a4,0(a4)
    80002198:	02070263          	beqz	a4,800021bc <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    8000219c:	00873783          	ld	a5,8(a4)
    800021a0:	01000693          	li	a3,16
    800021a4:	00d7f463          	bgeu	a5,a3,800021ac <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    800021a8:	01000793          	li	a5,16
    800021ac:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    800021b0:	fef572e3          	bgeu	a0,a5,80002194 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    800021b4:	00078513          	mv	a0,a5
    800021b8:	fddff06f          	j	80002194 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    800021bc:	00813403          	ld	s0,8(sp)
    800021c0:	01010113          	addi	sp,sp,16
    800021c4:	00008067          	ret

00000000800021c8 <_ZN10KSemaphore15createSemaphoreEm>:

#include "../h/KSemaphore.hpp"
#include "../h/KThread.hpp"
#include "../h/Scheduler.hpp"

KSemaphore* KSemaphore::createSemaphore(uint64 init) {
    800021c8:	fe010113          	addi	sp,sp,-32
    800021cc:	00113c23          	sd	ra,24(sp)
    800021d0:	00813823          	sd	s0,16(sp)
    800021d4:	00913423          	sd	s1,8(sp)
    800021d8:	02010413          	addi	s0,sp,32
    800021dc:	00050493          	mv	s1,a0

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    800021e0:	00100513          	li	a0,1
    800021e4:	00000097          	auipc	ra,0x0
    800021e8:	da8080e7          	jalr	-600(ra) # 80001f8c <_ZN15MemoryAllocator9mem_allocEm>
    void operator delete[](void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    explicit KSemaphore(uint64 init) : val(init) {}
    800021ec:	00952023          	sw	s1,0(a0)
    800021f0:	00053423          	sd	zero,8(a0)
    800021f4:	00053823          	sd	zero,16(a0)
    return new KSemaphore(init);
}
    800021f8:	01813083          	ld	ra,24(sp)
    800021fc:	01013403          	ld	s0,16(sp)
    80002200:	00813483          	ld	s1,8(sp)
    80002204:	02010113          	addi	sp,sp,32
    80002208:	00008067          	ret

000000008000220c <_ZN10KSemaphore3getEv>:

KThread* KSemaphore::get() {
    8000220c:	ff010113          	addi	sp,sp,-16
    80002210:	00813423          	sd	s0,8(sp)
    80002214:	01010413          	addi	s0,sp,16
    80002218:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    8000221c:	00853503          	ld	a0,8(a0)
    80002220:	00050a63          	beqz	a0,80002234 <_ZN10KSemaphore3getEv+0x28>

    KThread* thread = head;
    head = head->semaphoreNext;
    80002224:	04853703          	ld	a4,72(a0)
    80002228:	00e7b423          	sd	a4,8(a5)

    if (!head) tail = nullptr;
    8000222c:	00070a63          	beqz	a4,80002240 <_ZN10KSemaphore3getEv+0x34>
    thread->semaphoreNext = nullptr;
    80002230:	04053423          	sd	zero,72(a0)

    return thread;
}
    80002234:	00813403          	ld	s0,8(sp)
    80002238:	01010113          	addi	sp,sp,16
    8000223c:	00008067          	ret
    if (!head) tail = nullptr;
    80002240:	0007b823          	sd	zero,16(a5)
    80002244:	fedff06f          	j	80002230 <_ZN10KSemaphore3getEv+0x24>

0000000080002248 <_ZN10KSemaphore3putEP7KThread>:


void KSemaphore::put(KThread *thread) {
    80002248:	ff010113          	addi	sp,sp,-16
    8000224c:	00813423          	sd	s0,8(sp)
    80002250:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    80002254:	00853783          	ld	a5,8(a0)
    80002258:	00078e63          	beqz	a5,80002274 <_ZN10KSemaphore3putEP7KThread+0x2c>
    else tail->semaphoreNext = thread;
    8000225c:	01053783          	ld	a5,16(a0)
    80002260:	04b7b423          	sd	a1,72(a5)
    tail = thread;
    80002264:	00b53823          	sd	a1,16(a0)
}
    80002268:	00813403          	ld	s0,8(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret
    if (!head) head = thread;
    80002274:	00b53423          	sd	a1,8(a0)
    80002278:	fedff06f          	j	80002264 <_ZN10KSemaphore3putEP7KThread+0x1c>

000000008000227c <_ZN10KSemaphore4waitEv>:

void KSemaphore::wait() {
    val--;
    8000227c:	00052783          	lw	a5,0(a0)
    80002280:	fff7879b          	addiw	a5,a5,-1
    80002284:	00f52023          	sw	a5,0(a0)

    if (val < 0) {
    80002288:	02079713          	slli	a4,a5,0x20
    8000228c:	00074463          	bltz	a4,80002294 <_ZN10KSemaphore4waitEv+0x18>
    80002290:	00008067          	ret
void KSemaphore::wait() {
    80002294:	ff010113          	addi	sp,sp,-16
    80002298:	00113423          	sd	ra,8(sp)
    8000229c:	00813023          	sd	s0,0(sp)
    800022a0:	01010413          	addi	s0,sp,16
        KThread::running->setState(BLOCKED);
    800022a4:	00006797          	auipc	a5,0x6
    800022a8:	62c7b783          	ld	a5,1580(a5) # 800088d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022ac:	0007b583          	ld	a1,0(a5)
    800022b0:	00300793          	li	a5,3
    800022b4:	02f5ac23          	sw	a5,56(a1)
        put(KThread::running);
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	f90080e7          	jalr	-112(ra) # 80002248 <_ZN10KSemaphore3putEP7KThread>
        KThread::dispatch();
    800022c0:	fffff097          	auipc	ra,0xfffff
    800022c4:	3ec080e7          	jalr	1004(ra) # 800016ac <_ZN7KThread8dispatchEv>
    }
}
    800022c8:	00813083          	ld	ra,8(sp)
    800022cc:	00013403          	ld	s0,0(sp)
    800022d0:	01010113          	addi	sp,sp,16
    800022d4:	00008067          	ret

00000000800022d8 <_ZN10KSemaphore6signalEv>:

void KSemaphore::signal() {
    val++;
    800022d8:	00052783          	lw	a5,0(a0)
    800022dc:	0017879b          	addiw	a5,a5,1
    800022e0:	0007871b          	sext.w	a4,a5
    800022e4:	00f52023          	sw	a5,0(a0)

    if (val <= 0) {
    800022e8:	00e05463          	blez	a4,800022f0 <_ZN10KSemaphore6signalEv+0x18>
    800022ec:	00008067          	ret
void KSemaphore::signal() {
    800022f0:	ff010113          	addi	sp,sp,-16
    800022f4:	00113423          	sd	ra,8(sp)
    800022f8:	00813023          	sd	s0,0(sp)
    800022fc:	01010413          	addi	s0,sp,16
        KThread* thread = get();
    80002300:	00000097          	auipc	ra,0x0
    80002304:	f0c080e7          	jalr	-244(ra) # 8000220c <_ZN10KSemaphore3getEv>

        if (thread) {
    80002308:	00050a63          	beqz	a0,8000231c <_ZN10KSemaphore6signalEv+0x44>
    8000230c:	00100793          	li	a5,1
    80002310:	02f52c23          	sw	a5,56(a0)
            thread->setState(READY);
            Scheduler::put(thread);
    80002314:	fffff097          	auipc	ra,0xfffff
    80002318:	500080e7          	jalr	1280(ra) # 80001814 <_ZN9Scheduler3putEP7KThread>
        }
    }
}
    8000231c:	00813083          	ld	ra,8(sp)
    80002320:	00013403          	ld	s0,0(sp)
    80002324:	01010113          	addi	sp,sp,16
    80002328:	00008067          	ret

000000008000232c <_ZN10KSemaphore5closeEv>:

void KSemaphore::close() {
    8000232c:	fe010113          	addi	sp,sp,-32
    80002330:	00113c23          	sd	ra,24(sp)
    80002334:	00813823          	sd	s0,16(sp)
    80002338:	00913423          	sd	s1,8(sp)
    8000233c:	02010413          	addi	s0,sp,32
    80002340:	00050493          	mv	s1,a0
    while (head) {
    80002344:	0084b783          	ld	a5,8(s1)
    80002348:	02078263          	beqz	a5,8000236c <_ZN10KSemaphore5closeEv+0x40>
        KThread* thread = get();
    8000234c:	00048513          	mv	a0,s1
    80002350:	00000097          	auipc	ra,0x0
    80002354:	ebc080e7          	jalr	-324(ra) # 8000220c <_ZN10KSemaphore3getEv>
    80002358:	00100793          	li	a5,1
    8000235c:	02f52c23          	sw	a5,56(a0)
        thread->setState(READY);
        Scheduler::put(thread);
    80002360:	fffff097          	auipc	ra,0xfffff
    80002364:	4b4080e7          	jalr	1204(ra) # 80001814 <_ZN9Scheduler3putEP7KThread>
    while (head) {
    80002368:	fddff06f          	j	80002344 <_ZN10KSemaphore5closeEv+0x18>
    }
    8000236c:	01813083          	ld	ra,24(sp)
    80002370:	01013403          	ld	s0,16(sp)
    80002374:	00813483          	ld	s1,8(sp)
    80002378:	02010113          	addi	sp,sp,32
    8000237c:	00008067          	ret

0000000080002380 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002380:	fd010113          	addi	sp,sp,-48
    80002384:	02113423          	sd	ra,40(sp)
    80002388:	02813023          	sd	s0,32(sp)
    8000238c:	00913c23          	sd	s1,24(sp)
    80002390:	01213823          	sd	s2,16(sp)
    80002394:	01313423          	sd	s3,8(sp)
    80002398:	03010413          	addi	s0,sp,48
    8000239c:	00050993          	mv	s3,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800023a0:	00000493          	li	s1,0
    800023a4:	0100006f          	j	800023b4 <_ZL16producerKeyboardPv+0x34>
    for (; i < 5; i++) {
        key = i + 1;
        data->buffer->put(key);

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800023a8:	fffff097          	auipc	ra,0xfffff
    800023ac:	f48080e7          	jalr	-184(ra) # 800012f0 <_Z15thread_dispatchv>
static void producerKeyboard(void *arg) {
    800023b0:	00090493          	mv	s1,s2
    for (; i < 5; i++) {
    800023b4:	00400793          	li	a5,4
    800023b8:	0297ca63          	blt	a5,s1,800023ec <_ZL16producerKeyboardPv+0x6c>
        key = i + 1;
    800023bc:	0014891b          	addiw	s2,s1,1
        data->buffer->put(key);
    800023c0:	00090593          	mv	a1,s2
    800023c4:	0089b503          	ld	a0,8(s3)
    800023c8:	00002097          	auipc	ra,0x2
    800023cc:	cf4080e7          	jalr	-780(ra) # 800040bc <_ZN6Buffer3putEi>
        if (i % (10 * data->id) == 0) {
    800023d0:	0009a703          	lw	a4,0(s3)
    800023d4:	0027179b          	slliw	a5,a4,0x2
    800023d8:	00e787bb          	addw	a5,a5,a4
    800023dc:	0017979b          	slliw	a5,a5,0x1
    800023e0:	02f4e4bb          	remw	s1,s1,a5
    800023e4:	fc0496e3          	bnez	s1,800023b0 <_ZL16producerKeyboardPv+0x30>
    800023e8:	fc1ff06f          	j	800023a8 <_ZL16producerKeyboardPv+0x28>
        }
    }

    threadEnd = 1;
    800023ec:	00100793          	li	a5,1
    800023f0:	00006717          	auipc	a4,0x6
    800023f4:	56f72023          	sw	a5,1376(a4) # 80008950 <_ZL9threadEnd>
    data->buffer->put('!');
    800023f8:	02100593          	li	a1,33
    800023fc:	0089b503          	ld	a0,8(s3)
    80002400:	00002097          	auipc	ra,0x2
    80002404:	cbc080e7          	jalr	-836(ra) # 800040bc <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002408:	0109b503          	ld	a0,16(s3)
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	f94080e7          	jalr	-108(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    80002414:	02813083          	ld	ra,40(sp)
    80002418:	02013403          	ld	s0,32(sp)
    8000241c:	01813483          	ld	s1,24(sp)
    80002420:	01013903          	ld	s2,16(sp)
    80002424:	00813983          	ld	s3,8(sp)
    80002428:	03010113          	addi	sp,sp,48
    8000242c:	00008067          	ret

0000000080002430 <_ZL8producerPv>:

static void producer(void *arg) {
    80002430:	fe010113          	addi	sp,sp,-32
    80002434:	00113c23          	sd	ra,24(sp)
    80002438:	00813823          	sd	s0,16(sp)
    8000243c:	00913423          	sd	s1,8(sp)
    80002440:	01213023          	sd	s2,0(sp)
    80002444:	02010413          	addi	s0,sp,32
    80002448:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000244c:	00000913          	li	s2,0
    80002450:	00c0006f          	j	8000245c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002454:	fffff097          	auipc	ra,0xfffff
    80002458:	e9c080e7          	jalr	-356(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000245c:	00006797          	auipc	a5,0x6
    80002460:	4f47a783          	lw	a5,1268(a5) # 80008950 <_ZL9threadEnd>
    80002464:	02079e63          	bnez	a5,800024a0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002468:	0004a583          	lw	a1,0(s1)
    8000246c:	0305859b          	addiw	a1,a1,48
    80002470:	0084b503          	ld	a0,8(s1)
    80002474:	00002097          	auipc	ra,0x2
    80002478:	c48080e7          	jalr	-952(ra) # 800040bc <_ZN6Buffer3putEi>
        i++;
    8000247c:	0019071b          	addiw	a4,s2,1
    80002480:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002484:	0004a683          	lw	a3,0(s1)
    80002488:	0026979b          	slliw	a5,a3,0x2
    8000248c:	00d787bb          	addw	a5,a5,a3
    80002490:	0017979b          	slliw	a5,a5,0x1
    80002494:	02f767bb          	remw	a5,a4,a5
    80002498:	fc0792e3          	bnez	a5,8000245c <_ZL8producerPv+0x2c>
    8000249c:	fb9ff06f          	j	80002454 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800024a0:	0104b503          	ld	a0,16(s1)
    800024a4:	fffff097          	auipc	ra,0xfffff
    800024a8:	efc080e7          	jalr	-260(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    800024ac:	01813083          	ld	ra,24(sp)
    800024b0:	01013403          	ld	s0,16(sp)
    800024b4:	00813483          	ld	s1,8(sp)
    800024b8:	00013903          	ld	s2,0(sp)
    800024bc:	02010113          	addi	sp,sp,32
    800024c0:	00008067          	ret

00000000800024c4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800024c4:	fd010113          	addi	sp,sp,-48
    800024c8:	02113423          	sd	ra,40(sp)
    800024cc:	02813023          	sd	s0,32(sp)
    800024d0:	00913c23          	sd	s1,24(sp)
    800024d4:	01213823          	sd	s2,16(sp)
    800024d8:	01313423          	sd	s3,8(sp)
    800024dc:	03010413          	addi	s0,sp,48
    800024e0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800024e4:	00000993          	li	s3,0
    800024e8:	01c0006f          	j	80002504 <_ZL8consumerPv+0x40>
        i++;

        __putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800024ec:	fffff097          	auipc	ra,0xfffff
    800024f0:	e04080e7          	jalr	-508(ra) # 800012f0 <_Z15thread_dispatchv>
    800024f4:	0500006f          	j	80002544 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            __putc('\n');
    800024f8:	00a00513          	li	a0,10
    800024fc:	00004097          	auipc	ra,0x4
    80002500:	f00080e7          	jalr	-256(ra) # 800063fc <__putc>
    while (!threadEnd) {
    80002504:	00006797          	auipc	a5,0x6
    80002508:	44c7a783          	lw	a5,1100(a5) # 80008950 <_ZL9threadEnd>
    8000250c:	06079063          	bnez	a5,8000256c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002510:	00893503          	ld	a0,8(s2)
    80002514:	00002097          	auipc	ra,0x2
    80002518:	c38080e7          	jalr	-968(ra) # 8000414c <_ZN6Buffer3getEv>
        i++;
    8000251c:	0019849b          	addiw	s1,s3,1
    80002520:	0004899b          	sext.w	s3,s1
        __putc(key);
    80002524:	0ff57513          	andi	a0,a0,255
    80002528:	00004097          	auipc	ra,0x4
    8000252c:	ed4080e7          	jalr	-300(ra) # 800063fc <__putc>
        if (i % (5 * data->id) == 0) {
    80002530:	00092703          	lw	a4,0(s2)
    80002534:	0027179b          	slliw	a5,a4,0x2
    80002538:	00e787bb          	addw	a5,a5,a4
    8000253c:	02f4e7bb          	remw	a5,s1,a5
    80002540:	fa0786e3          	beqz	a5,800024ec <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002544:	05000793          	li	a5,80
    80002548:	02f4e4bb          	remw	s1,s1,a5
    8000254c:	fa049ce3          	bnez	s1,80002504 <_ZL8consumerPv+0x40>
    80002550:	fa9ff06f          	j	800024f8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002554:	00893503          	ld	a0,8(s2)
    80002558:	00002097          	auipc	ra,0x2
    8000255c:	bf4080e7          	jalr	-1036(ra) # 8000414c <_ZN6Buffer3getEv>
        __putc(key);
    80002560:	0ff57513          	andi	a0,a0,255
    80002564:	00004097          	auipc	ra,0x4
    80002568:	e98080e7          	jalr	-360(ra) # 800063fc <__putc>
    while (data->buffer->getCnt() > 0) {
    8000256c:	00893503          	ld	a0,8(s2)
    80002570:	00002097          	auipc	ra,0x2
    80002574:	c68080e7          	jalr	-920(ra) # 800041d8 <_ZN6Buffer6getCntEv>
    80002578:	fca04ee3          	bgtz	a0,80002554 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000257c:	01093503          	ld	a0,16(s2)
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	e20080e7          	jalr	-480(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    80002588:	02813083          	ld	ra,40(sp)
    8000258c:	02013403          	ld	s0,32(sp)
    80002590:	01813483          	ld	s1,24(sp)
    80002594:	01013903          	ld	s2,16(sp)
    80002598:	00813983          	ld	s3,8(sp)
    8000259c:	03010113          	addi	sp,sp,48
    800025a0:	00008067          	ret

00000000800025a4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800025a4:	f7010113          	addi	sp,sp,-144
    800025a8:	08113423          	sd	ra,136(sp)
    800025ac:	08813023          	sd	s0,128(sp)
    800025b0:	06913c23          	sd	s1,120(sp)
    800025b4:	07213823          	sd	s2,112(sp)
    800025b8:	07313423          	sd	s3,104(sp)
    800025bc:	09010413          	addi	s0,sp,144
    // char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    800025c0:	00005517          	auipc	a0,0x5
    800025c4:	af850513          	addi	a0,a0,-1288 # 800070b8 <CONSOLE_STATUS+0xa8>
    800025c8:	00001097          	auipc	ra,0x1
    800025cc:	158080e7          	jalr	344(ra) # 80003720 <_Z11printStringPKc>
    // getString(input, 30);
    // threadNum = stringToInt(input);
    threadNum = 10;

    printString("Unesite velicinu bafera?\n");
    800025d0:	00005517          	auipc	a0,0x5
    800025d4:	b0850513          	addi	a0,a0,-1272 # 800070d8 <CONSOLE_STATUS+0xc8>
    800025d8:	00001097          	auipc	ra,0x1
    800025dc:	148080e7          	jalr	328(ra) # 80003720 <_Z11printStringPKc>
    // getString(input, 30);
    // n = stringToInt(input);
    n = 30;

    printString("Broj proizvodjaca "); printInt(threadNum);
    800025e0:	00005517          	auipc	a0,0x5
    800025e4:	b1850513          	addi	a0,a0,-1256 # 800070f8 <CONSOLE_STATUS+0xe8>
    800025e8:	00001097          	auipc	ra,0x1
    800025ec:	138080e7          	jalr	312(ra) # 80003720 <_Z11printStringPKc>
    800025f0:	00000613          	li	a2,0
    800025f4:	00a00593          	li	a1,10
    800025f8:	00a00513          	li	a0,10
    800025fc:	00001097          	auipc	ra,0x1
    80002600:	2d4080e7          	jalr	724(ra) # 800038d0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002604:	00005517          	auipc	a0,0x5
    80002608:	b0c50513          	addi	a0,a0,-1268 # 80007110 <CONSOLE_STATUS+0x100>
    8000260c:	00001097          	auipc	ra,0x1
    80002610:	114080e7          	jalr	276(ra) # 80003720 <_Z11printStringPKc>
    80002614:	00000613          	li	a2,0
    80002618:	00a00593          	li	a1,10
    8000261c:	01e00513          	li	a0,30
    80002620:	00001097          	auipc	ra,0x1
    80002624:	2b0080e7          	jalr	688(ra) # 800038d0 <_Z8printIntiii>
    printString(".\n");
    80002628:	00005517          	auipc	a0,0x5
    8000262c:	b0050513          	addi	a0,a0,-1280 # 80007128 <CONSOLE_STATUS+0x118>
    80002630:	00001097          	auipc	ra,0x1
    80002634:	0f0080e7          	jalr	240(ra) # 80003720 <_Z11printStringPKc>
    } else if (threadNum < 1) {
        printString("Broj proizvodjaca mora biti veci od nula!\n");
        return;
    }

    Buffer *buffer = new Buffer(n);
    80002638:	03800513          	li	a0,56
    8000263c:	fffff097          	auipc	ra,0xfffff
    80002640:	39c080e7          	jalr	924(ra) # 800019d8 <_Znwm>
    80002644:	00050993          	mv	s3,a0
    80002648:	01e00593          	li	a1,30
    8000264c:	00002097          	auipc	ra,0x2
    80002650:	9d4080e7          	jalr	-1580(ra) # 80004020 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80002654:	00000593          	li	a1,0
    80002658:	00006517          	auipc	a0,0x6
    8000265c:	30050513          	addi	a0,a0,768 # 80008958 <_ZL10waitForAll>
    80002660:	fffff097          	auipc	ra,0xfffff
    80002664:	cb0080e7          	jalr	-848(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>

    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80002668:	ef010113          	addi	sp,sp,-272
    8000266c:	00010913          	mv	s2,sp

    data[threadNum].id = threadNum;
    80002670:	00a00793          	li	a5,10
    80002674:	0ef92823          	sw	a5,240(s2)
    data[threadNum].buffer = buffer;
    80002678:	0f393c23          	sd	s3,248(s2)
    data[threadNum].wait = waitForAll;
    8000267c:	00006797          	auipc	a5,0x6
    80002680:	2dc7b783          	ld	a5,732(a5) # 80008958 <_ZL10waitForAll>
    80002684:	10f93023          	sd	a5,256(s2)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002688:	0f090613          	addi	a2,s2,240
    8000268c:	00000597          	auipc	a1,0x0
    80002690:	e3858593          	addi	a1,a1,-456 # 800024c4 <_ZL8consumerPv>
    80002694:	fc840513          	addi	a0,s0,-56
    80002698:	fffff097          	auipc	ra,0xfffff
    8000269c:	b84080e7          	jalr	-1148(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>

    for (int i = 0; i < threadNum; i++) {
    800026a0:	00000493          	li	s1,0
    800026a4:	00900793          	li	a5,9
    800026a8:	0697c863          	blt	a5,s1,80002718 <_Z22producerConsumer_C_APIv+0x174>
        data[i].id = i;
    800026ac:	00149793          	slli	a5,s1,0x1
    800026b0:	009787b3          	add	a5,a5,s1
    800026b4:	00379793          	slli	a5,a5,0x3
    800026b8:	00f907b3          	add	a5,s2,a5
    800026bc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800026c0:	0137b423          	sd	s3,8(a5)
        data[i].wait = waitForAll;
    800026c4:	00006717          	auipc	a4,0x6
    800026c8:	29473703          	ld	a4,660(a4) # 80008958 <_ZL10waitForAll>
    800026cc:	00e7b823          	sd	a4,16(a5)

        thread_create(threads + i,
    800026d0:	00048713          	mv	a4,s1
    800026d4:	00349513          	slli	a0,s1,0x3
    800026d8:	f7840793          	addi	a5,s0,-136
    800026dc:	00a78533          	add	a0,a5,a0
    800026e0:	02905663          	blez	s1,8000270c <_Z22producerConsumer_C_APIv+0x168>
    800026e4:	00000597          	auipc	a1,0x0
    800026e8:	d4c58593          	addi	a1,a1,-692 # 80002430 <_ZL8producerPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    800026ec:	00171613          	slli	a2,a4,0x1
    800026f0:	00e60633          	add	a2,a2,a4
    800026f4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800026f8:	00c90633          	add	a2,s2,a2
    800026fc:	fffff097          	auipc	ra,0xfffff
    80002700:	b20080e7          	jalr	-1248(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002704:	0014849b          	addiw	s1,s1,1
    80002708:	f9dff06f          	j	800026a4 <_Z22producerConsumer_C_APIv+0x100>
        thread_create(threads + i,
    8000270c:	00000597          	auipc	a1,0x0
    80002710:	c7458593          	addi	a1,a1,-908 # 80002380 <_ZL16producerKeyboardPv>
    80002714:	fd9ff06f          	j	800026ec <_Z22producerConsumer_C_APIv+0x148>
    }

    thread_dispatch();
    80002718:	fffff097          	auipc	ra,0xfffff
    8000271c:	bd8080e7          	jalr	-1064(ra) # 800012f0 <_Z15thread_dispatchv>

    for (int i = 0; i <= threadNum; i++) {
    80002720:	00000493          	li	s1,0
    80002724:	0180006f          	j	8000273c <_Z22producerConsumer_C_APIv+0x198>
        sem_wait(waitForAll);
    80002728:	00006517          	auipc	a0,0x6
    8000272c:	23053503          	ld	a0,560(a0) # 80008958 <_ZL10waitForAll>
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	c44080e7          	jalr	-956(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80002738:	0014849b          	addiw	s1,s1,1
    8000273c:	00a00793          	li	a5,10
    80002740:	fe97d4e3          	bge	a5,s1,80002728 <_Z22producerConsumer_C_APIv+0x184>
    }

    sem_close(waitForAll);
    80002744:	00006517          	auipc	a0,0x6
    80002748:	21453503          	ld	a0,532(a0) # 80008958 <_ZL10waitForAll>
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	bfc080e7          	jalr	-1028(ra) # 80001348 <_Z9sem_closeP10KSemaphore>

    delete buffer;
    80002754:	00098e63          	beqz	s3,80002770 <_Z22producerConsumer_C_APIv+0x1cc>
    80002758:	00098513          	mv	a0,s3
    8000275c:	00002097          	auipc	ra,0x2
    80002760:	b04080e7          	jalr	-1276(ra) # 80004260 <_ZN6BufferD1Ev>
    80002764:	00098513          	mv	a0,s3
    80002768:	fffff097          	auipc	ra,0xfffff
    8000276c:	298080e7          	jalr	664(ra) # 80001a00 <_ZdlPv>

}
    80002770:	f7040113          	addi	sp,s0,-144
    80002774:	08813083          	ld	ra,136(sp)
    80002778:	08013403          	ld	s0,128(sp)
    8000277c:	07813483          	ld	s1,120(sp)
    80002780:	07013903          	ld	s2,112(sp)
    80002784:	06813983          	ld	s3,104(sp)
    80002788:	09010113          	addi	sp,sp,144
    8000278c:	00008067          	ret
    80002790:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002794:	00098513          	mv	a0,s3
    80002798:	fffff097          	auipc	ra,0xfffff
    8000279c:	268080e7          	jalr	616(ra) # 80001a00 <_ZdlPv>
    800027a0:	00048513          	mv	a0,s1
    800027a4:	00007097          	auipc	ra,0x7
    800027a8:	2a4080e7          	jalr	676(ra) # 80009a48 <_Unwind_Resume>

00000000800027ac <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800027ac:	fe010113          	addi	sp,sp,-32
    800027b0:	00113c23          	sd	ra,24(sp)
    800027b4:	00813823          	sd	s0,16(sp)
    800027b8:	00913423          	sd	s1,8(sp)
    800027bc:	01213023          	sd	s2,0(sp)
    800027c0:	02010413          	addi	s0,sp,32
    800027c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800027c8:	00100793          	li	a5,1
    800027cc:	02a7f863          	bgeu	a5,a0,800027fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800027d0:	00a00793          	li	a5,10
    800027d4:	02f577b3          	remu	a5,a0,a5
    800027d8:	02078e63          	beqz	a5,80002814 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800027dc:	fff48513          	addi	a0,s1,-1
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	fcc080e7          	jalr	-52(ra) # 800027ac <_ZL9fibonaccim>
    800027e8:	00050913          	mv	s2,a0
    800027ec:	ffe48513          	addi	a0,s1,-2
    800027f0:	00000097          	auipc	ra,0x0
    800027f4:	fbc080e7          	jalr	-68(ra) # 800027ac <_ZL9fibonaccim>
    800027f8:	00a90533          	add	a0,s2,a0
}
    800027fc:	01813083          	ld	ra,24(sp)
    80002800:	01013403          	ld	s0,16(sp)
    80002804:	00813483          	ld	s1,8(sp)
    80002808:	00013903          	ld	s2,0(sp)
    8000280c:	02010113          	addi	sp,sp,32
    80002810:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	adc080e7          	jalr	-1316(ra) # 800012f0 <_Z15thread_dispatchv>
    8000281c:	fc1ff06f          	j	800027dc <_ZL9fibonaccim+0x30>

0000000080002820 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002820:	fe010113          	addi	sp,sp,-32
    80002824:	00113c23          	sd	ra,24(sp)
    80002828:	00813823          	sd	s0,16(sp)
    8000282c:	00913423          	sd	s1,8(sp)
    80002830:	01213023          	sd	s2,0(sp)
    80002834:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002838:	00000913          	li	s2,0
    8000283c:	0380006f          	j	80002874 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002840:	fffff097          	auipc	ra,0xfffff
    80002844:	ab0080e7          	jalr	-1360(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002848:	00148493          	addi	s1,s1,1
    8000284c:	000027b7          	lui	a5,0x2
    80002850:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002854:	0097ee63          	bltu	a5,s1,80002870 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002858:	00000713          	li	a4,0
    8000285c:	000077b7          	lui	a5,0x7
    80002860:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002864:	fce7eee3          	bltu	a5,a4,80002840 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002868:	00170713          	addi	a4,a4,1
    8000286c:	ff1ff06f          	j	8000285c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002870:	00190913          	addi	s2,s2,1
    80002874:	00900793          	li	a5,9
    80002878:	0527e063          	bltu	a5,s2,800028b8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000287c:	00005517          	auipc	a0,0x5
    80002880:	8b450513          	addi	a0,a0,-1868 # 80007130 <CONSOLE_STATUS+0x120>
    80002884:	00001097          	auipc	ra,0x1
    80002888:	e9c080e7          	jalr	-356(ra) # 80003720 <_Z11printStringPKc>
    8000288c:	00000613          	li	a2,0
    80002890:	00a00593          	li	a1,10
    80002894:	0009051b          	sext.w	a0,s2
    80002898:	00001097          	auipc	ra,0x1
    8000289c:	038080e7          	jalr	56(ra) # 800038d0 <_Z8printIntiii>
    800028a0:	00005517          	auipc	a0,0x5
    800028a4:	85050513          	addi	a0,a0,-1968 # 800070f0 <CONSOLE_STATUS+0xe0>
    800028a8:	00001097          	auipc	ra,0x1
    800028ac:	e78080e7          	jalr	-392(ra) # 80003720 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800028b0:	00000493          	li	s1,0
    800028b4:	f99ff06f          	j	8000284c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800028b8:	00005517          	auipc	a0,0x5
    800028bc:	88050513          	addi	a0,a0,-1920 # 80007138 <CONSOLE_STATUS+0x128>
    800028c0:	00001097          	auipc	ra,0x1
    800028c4:	e60080e7          	jalr	-416(ra) # 80003720 <_Z11printStringPKc>
    finishedA = true;
    800028c8:	00100793          	li	a5,1
    800028cc:	00006717          	auipc	a4,0x6
    800028d0:	08f70a23          	sb	a5,148(a4) # 80008960 <_ZL9finishedA>
}
    800028d4:	01813083          	ld	ra,24(sp)
    800028d8:	01013403          	ld	s0,16(sp)
    800028dc:	00813483          	ld	s1,8(sp)
    800028e0:	00013903          	ld	s2,0(sp)
    800028e4:	02010113          	addi	sp,sp,32
    800028e8:	00008067          	ret

00000000800028ec <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800028ec:	fe010113          	addi	sp,sp,-32
    800028f0:	00113c23          	sd	ra,24(sp)
    800028f4:	00813823          	sd	s0,16(sp)
    800028f8:	00913423          	sd	s1,8(sp)
    800028fc:	01213023          	sd	s2,0(sp)
    80002900:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002904:	00000913          	li	s2,0
    80002908:	0380006f          	j	80002940 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	9e4080e7          	jalr	-1564(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002914:	00148493          	addi	s1,s1,1
    80002918:	000027b7          	lui	a5,0x2
    8000291c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002920:	0097ee63          	bltu	a5,s1,8000293c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002924:	00000713          	li	a4,0
    80002928:	000077b7          	lui	a5,0x7
    8000292c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002930:	fce7eee3          	bltu	a5,a4,8000290c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002934:	00170713          	addi	a4,a4,1
    80002938:	ff1ff06f          	j	80002928 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000293c:	00190913          	addi	s2,s2,1
    80002940:	00f00793          	li	a5,15
    80002944:	0527e063          	bltu	a5,s2,80002984 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002948:	00005517          	auipc	a0,0x5
    8000294c:	80050513          	addi	a0,a0,-2048 # 80007148 <CONSOLE_STATUS+0x138>
    80002950:	00001097          	auipc	ra,0x1
    80002954:	dd0080e7          	jalr	-560(ra) # 80003720 <_Z11printStringPKc>
    80002958:	00000613          	li	a2,0
    8000295c:	00a00593          	li	a1,10
    80002960:	0009051b          	sext.w	a0,s2
    80002964:	00001097          	auipc	ra,0x1
    80002968:	f6c080e7          	jalr	-148(ra) # 800038d0 <_Z8printIntiii>
    8000296c:	00004517          	auipc	a0,0x4
    80002970:	78450513          	addi	a0,a0,1924 # 800070f0 <CONSOLE_STATUS+0xe0>
    80002974:	00001097          	auipc	ra,0x1
    80002978:	dac080e7          	jalr	-596(ra) # 80003720 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000297c:	00000493          	li	s1,0
    80002980:	f99ff06f          	j	80002918 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002984:	00004517          	auipc	a0,0x4
    80002988:	7cc50513          	addi	a0,a0,1996 # 80007150 <CONSOLE_STATUS+0x140>
    8000298c:	00001097          	auipc	ra,0x1
    80002990:	d94080e7          	jalr	-620(ra) # 80003720 <_Z11printStringPKc>
    finishedB = true;
    80002994:	00100793          	li	a5,1
    80002998:	00006717          	auipc	a4,0x6
    8000299c:	fcf704a3          	sb	a5,-55(a4) # 80008961 <_ZL9finishedB>
    thread_dispatch();
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	950080e7          	jalr	-1712(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800029a8:	01813083          	ld	ra,24(sp)
    800029ac:	01013403          	ld	s0,16(sp)
    800029b0:	00813483          	ld	s1,8(sp)
    800029b4:	00013903          	ld	s2,0(sp)
    800029b8:	02010113          	addi	sp,sp,32
    800029bc:	00008067          	ret

00000000800029c0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800029c0:	fe010113          	addi	sp,sp,-32
    800029c4:	00113c23          	sd	ra,24(sp)
    800029c8:	00813823          	sd	s0,16(sp)
    800029cc:	00913423          	sd	s1,8(sp)
    800029d0:	01213023          	sd	s2,0(sp)
    800029d4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800029d8:	00000493          	li	s1,0
    800029dc:	0400006f          	j	80002a1c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800029e0:	00004517          	auipc	a0,0x4
    800029e4:	78050513          	addi	a0,a0,1920 # 80007160 <CONSOLE_STATUS+0x150>
    800029e8:	00001097          	auipc	ra,0x1
    800029ec:	d38080e7          	jalr	-712(ra) # 80003720 <_Z11printStringPKc>
    800029f0:	00000613          	li	a2,0
    800029f4:	00a00593          	li	a1,10
    800029f8:	00048513          	mv	a0,s1
    800029fc:	00001097          	auipc	ra,0x1
    80002a00:	ed4080e7          	jalr	-300(ra) # 800038d0 <_Z8printIntiii>
    80002a04:	00004517          	auipc	a0,0x4
    80002a08:	6ec50513          	addi	a0,a0,1772 # 800070f0 <CONSOLE_STATUS+0xe0>
    80002a0c:	00001097          	auipc	ra,0x1
    80002a10:	d14080e7          	jalr	-748(ra) # 80003720 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002a14:	0014849b          	addiw	s1,s1,1
    80002a18:	0ff4f493          	andi	s1,s1,255
    80002a1c:	00200793          	li	a5,2
    80002a20:	fc97f0e3          	bgeu	a5,s1,800029e0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002a24:	00004517          	auipc	a0,0x4
    80002a28:	74450513          	addi	a0,a0,1860 # 80007168 <CONSOLE_STATUS+0x158>
    80002a2c:	00001097          	auipc	ra,0x1
    80002a30:	cf4080e7          	jalr	-780(ra) # 80003720 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002a34:	00700313          	li	t1,7
    thread_dispatch();
    80002a38:	fffff097          	auipc	ra,0xfffff
    80002a3c:	8b8080e7          	jalr	-1864(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002a40:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002a44:	00004517          	auipc	a0,0x4
    80002a48:	73450513          	addi	a0,a0,1844 # 80007178 <CONSOLE_STATUS+0x168>
    80002a4c:	00001097          	auipc	ra,0x1
    80002a50:	cd4080e7          	jalr	-812(ra) # 80003720 <_Z11printStringPKc>
    80002a54:	00000613          	li	a2,0
    80002a58:	00a00593          	li	a1,10
    80002a5c:	0009051b          	sext.w	a0,s2
    80002a60:	00001097          	auipc	ra,0x1
    80002a64:	e70080e7          	jalr	-400(ra) # 800038d0 <_Z8printIntiii>
    80002a68:	00004517          	auipc	a0,0x4
    80002a6c:	68850513          	addi	a0,a0,1672 # 800070f0 <CONSOLE_STATUS+0xe0>
    80002a70:	00001097          	auipc	ra,0x1
    80002a74:	cb0080e7          	jalr	-848(ra) # 80003720 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002a78:	00c00513          	li	a0,12
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	d30080e7          	jalr	-720(ra) # 800027ac <_ZL9fibonaccim>
    80002a84:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002a88:	00004517          	auipc	a0,0x4
    80002a8c:	6f850513          	addi	a0,a0,1784 # 80007180 <CONSOLE_STATUS+0x170>
    80002a90:	00001097          	auipc	ra,0x1
    80002a94:	c90080e7          	jalr	-880(ra) # 80003720 <_Z11printStringPKc>
    80002a98:	00000613          	li	a2,0
    80002a9c:	00a00593          	li	a1,10
    80002aa0:	0009051b          	sext.w	a0,s2
    80002aa4:	00001097          	auipc	ra,0x1
    80002aa8:	e2c080e7          	jalr	-468(ra) # 800038d0 <_Z8printIntiii>
    80002aac:	00004517          	auipc	a0,0x4
    80002ab0:	64450513          	addi	a0,a0,1604 # 800070f0 <CONSOLE_STATUS+0xe0>
    80002ab4:	00001097          	auipc	ra,0x1
    80002ab8:	c6c080e7          	jalr	-916(ra) # 80003720 <_Z11printStringPKc>
    80002abc:	0400006f          	j	80002afc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002ac0:	00004517          	auipc	a0,0x4
    80002ac4:	6a050513          	addi	a0,a0,1696 # 80007160 <CONSOLE_STATUS+0x150>
    80002ac8:	00001097          	auipc	ra,0x1
    80002acc:	c58080e7          	jalr	-936(ra) # 80003720 <_Z11printStringPKc>
    80002ad0:	00000613          	li	a2,0
    80002ad4:	00a00593          	li	a1,10
    80002ad8:	00048513          	mv	a0,s1
    80002adc:	00001097          	auipc	ra,0x1
    80002ae0:	df4080e7          	jalr	-524(ra) # 800038d0 <_Z8printIntiii>
    80002ae4:	00004517          	auipc	a0,0x4
    80002ae8:	60c50513          	addi	a0,a0,1548 # 800070f0 <CONSOLE_STATUS+0xe0>
    80002aec:	00001097          	auipc	ra,0x1
    80002af0:	c34080e7          	jalr	-972(ra) # 80003720 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002af4:	0014849b          	addiw	s1,s1,1
    80002af8:	0ff4f493          	andi	s1,s1,255
    80002afc:	00500793          	li	a5,5
    80002b00:	fc97f0e3          	bgeu	a5,s1,80002ac0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002b04:	00004517          	auipc	a0,0x4
    80002b08:	63450513          	addi	a0,a0,1588 # 80007138 <CONSOLE_STATUS+0x128>
    80002b0c:	00001097          	auipc	ra,0x1
    80002b10:	c14080e7          	jalr	-1004(ra) # 80003720 <_Z11printStringPKc>
    finishedC = true;
    80002b14:	00100793          	li	a5,1
    80002b18:	00006717          	auipc	a4,0x6
    80002b1c:	e4f70523          	sb	a5,-438(a4) # 80008962 <_ZL9finishedC>
    thread_dispatch();
    80002b20:	ffffe097          	auipc	ra,0xffffe
    80002b24:	7d0080e7          	jalr	2000(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002b28:	01813083          	ld	ra,24(sp)
    80002b2c:	01013403          	ld	s0,16(sp)
    80002b30:	00813483          	ld	s1,8(sp)
    80002b34:	00013903          	ld	s2,0(sp)
    80002b38:	02010113          	addi	sp,sp,32
    80002b3c:	00008067          	ret

0000000080002b40 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002b40:	fe010113          	addi	sp,sp,-32
    80002b44:	00113c23          	sd	ra,24(sp)
    80002b48:	00813823          	sd	s0,16(sp)
    80002b4c:	00913423          	sd	s1,8(sp)
    80002b50:	01213023          	sd	s2,0(sp)
    80002b54:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002b58:	00a00493          	li	s1,10
    80002b5c:	0400006f          	j	80002b9c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002b60:	00004517          	auipc	a0,0x4
    80002b64:	63050513          	addi	a0,a0,1584 # 80007190 <CONSOLE_STATUS+0x180>
    80002b68:	00001097          	auipc	ra,0x1
    80002b6c:	bb8080e7          	jalr	-1096(ra) # 80003720 <_Z11printStringPKc>
    80002b70:	00000613          	li	a2,0
    80002b74:	00a00593          	li	a1,10
    80002b78:	00048513          	mv	a0,s1
    80002b7c:	00001097          	auipc	ra,0x1
    80002b80:	d54080e7          	jalr	-684(ra) # 800038d0 <_Z8printIntiii>
    80002b84:	00004517          	auipc	a0,0x4
    80002b88:	56c50513          	addi	a0,a0,1388 # 800070f0 <CONSOLE_STATUS+0xe0>
    80002b8c:	00001097          	auipc	ra,0x1
    80002b90:	b94080e7          	jalr	-1132(ra) # 80003720 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002b94:	0014849b          	addiw	s1,s1,1
    80002b98:	0ff4f493          	andi	s1,s1,255
    80002b9c:	00c00793          	li	a5,12
    80002ba0:	fc97f0e3          	bgeu	a5,s1,80002b60 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002ba4:	00004517          	auipc	a0,0x4
    80002ba8:	5f450513          	addi	a0,a0,1524 # 80007198 <CONSOLE_STATUS+0x188>
    80002bac:	00001097          	auipc	ra,0x1
    80002bb0:	b74080e7          	jalr	-1164(ra) # 80003720 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002bb4:	00500313          	li	t1,5
    thread_dispatch();
    80002bb8:	ffffe097          	auipc	ra,0xffffe
    80002bbc:	738080e7          	jalr	1848(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002bc0:	01000513          	li	a0,16
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	be8080e7          	jalr	-1048(ra) # 800027ac <_ZL9fibonaccim>
    80002bcc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002bd0:	00004517          	auipc	a0,0x4
    80002bd4:	5d850513          	addi	a0,a0,1496 # 800071a8 <CONSOLE_STATUS+0x198>
    80002bd8:	00001097          	auipc	ra,0x1
    80002bdc:	b48080e7          	jalr	-1208(ra) # 80003720 <_Z11printStringPKc>
    80002be0:	00000613          	li	a2,0
    80002be4:	00a00593          	li	a1,10
    80002be8:	0009051b          	sext.w	a0,s2
    80002bec:	00001097          	auipc	ra,0x1
    80002bf0:	ce4080e7          	jalr	-796(ra) # 800038d0 <_Z8printIntiii>
    80002bf4:	00004517          	auipc	a0,0x4
    80002bf8:	4fc50513          	addi	a0,a0,1276 # 800070f0 <CONSOLE_STATUS+0xe0>
    80002bfc:	00001097          	auipc	ra,0x1
    80002c00:	b24080e7          	jalr	-1244(ra) # 80003720 <_Z11printStringPKc>
    80002c04:	0400006f          	j	80002c44 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002c08:	00004517          	auipc	a0,0x4
    80002c0c:	58850513          	addi	a0,a0,1416 # 80007190 <CONSOLE_STATUS+0x180>
    80002c10:	00001097          	auipc	ra,0x1
    80002c14:	b10080e7          	jalr	-1264(ra) # 80003720 <_Z11printStringPKc>
    80002c18:	00000613          	li	a2,0
    80002c1c:	00a00593          	li	a1,10
    80002c20:	00048513          	mv	a0,s1
    80002c24:	00001097          	auipc	ra,0x1
    80002c28:	cac080e7          	jalr	-852(ra) # 800038d0 <_Z8printIntiii>
    80002c2c:	00004517          	auipc	a0,0x4
    80002c30:	4c450513          	addi	a0,a0,1220 # 800070f0 <CONSOLE_STATUS+0xe0>
    80002c34:	00001097          	auipc	ra,0x1
    80002c38:	aec080e7          	jalr	-1300(ra) # 80003720 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002c3c:	0014849b          	addiw	s1,s1,1
    80002c40:	0ff4f493          	andi	s1,s1,255
    80002c44:	00f00793          	li	a5,15
    80002c48:	fc97f0e3          	bgeu	a5,s1,80002c08 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002c4c:	00004517          	auipc	a0,0x4
    80002c50:	56c50513          	addi	a0,a0,1388 # 800071b8 <CONSOLE_STATUS+0x1a8>
    80002c54:	00001097          	auipc	ra,0x1
    80002c58:	acc080e7          	jalr	-1332(ra) # 80003720 <_Z11printStringPKc>
    finishedD = true;
    80002c5c:	00100793          	li	a5,1
    80002c60:	00006717          	auipc	a4,0x6
    80002c64:	d0f701a3          	sb	a5,-765(a4) # 80008963 <_ZL9finishedD>
    thread_dispatch();
    80002c68:	ffffe097          	auipc	ra,0xffffe
    80002c6c:	688080e7          	jalr	1672(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002c70:	01813083          	ld	ra,24(sp)
    80002c74:	01013403          	ld	s0,16(sp)
    80002c78:	00813483          	ld	s1,8(sp)
    80002c7c:	00013903          	ld	s2,0(sp)
    80002c80:	02010113          	addi	sp,sp,32
    80002c84:	00008067          	ret

0000000080002c88 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002c88:	fc010113          	addi	sp,sp,-64
    80002c8c:	02113c23          	sd	ra,56(sp)
    80002c90:	02813823          	sd	s0,48(sp)
    80002c94:	02913423          	sd	s1,40(sp)
    80002c98:	03213023          	sd	s2,32(sp)
    80002c9c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002ca0:	02000513          	li	a0,32
    80002ca4:	fffff097          	auipc	ra,0xfffff
    80002ca8:	d34080e7          	jalr	-716(ra) # 800019d8 <_Znwm>
    80002cac:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002cb0:	fffff097          	auipc	ra,0xfffff
    80002cb4:	e78080e7          	jalr	-392(ra) # 80001b28 <_ZN6ThreadC1Ev>
    80002cb8:	00006797          	auipc	a5,0x6
    80002cbc:	b4878793          	addi	a5,a5,-1208 # 80008800 <_ZTV7WorkerA+0x10>
    80002cc0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002cc4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002cc8:	00004517          	auipc	a0,0x4
    80002ccc:	50050513          	addi	a0,a0,1280 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80002cd0:	00001097          	auipc	ra,0x1
    80002cd4:	a50080e7          	jalr	-1456(ra) # 80003720 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002cd8:	02000513          	li	a0,32
    80002cdc:	fffff097          	auipc	ra,0xfffff
    80002ce0:	cfc080e7          	jalr	-772(ra) # 800019d8 <_Znwm>
    80002ce4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002ce8:	fffff097          	auipc	ra,0xfffff
    80002cec:	e40080e7          	jalr	-448(ra) # 80001b28 <_ZN6ThreadC1Ev>
    80002cf0:	00006797          	auipc	a5,0x6
    80002cf4:	b3878793          	addi	a5,a5,-1224 # 80008828 <_ZTV7WorkerB+0x10>
    80002cf8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002cfc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002d00:	00004517          	auipc	a0,0x4
    80002d04:	4e050513          	addi	a0,a0,1248 # 800071e0 <CONSOLE_STATUS+0x1d0>
    80002d08:	00001097          	auipc	ra,0x1
    80002d0c:	a18080e7          	jalr	-1512(ra) # 80003720 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002d10:	02000513          	li	a0,32
    80002d14:	fffff097          	auipc	ra,0xfffff
    80002d18:	cc4080e7          	jalr	-828(ra) # 800019d8 <_Znwm>
    80002d1c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002d20:	fffff097          	auipc	ra,0xfffff
    80002d24:	e08080e7          	jalr	-504(ra) # 80001b28 <_ZN6ThreadC1Ev>
    80002d28:	00006797          	auipc	a5,0x6
    80002d2c:	b2878793          	addi	a5,a5,-1240 # 80008850 <_ZTV7WorkerC+0x10>
    80002d30:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002d34:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002d38:	00004517          	auipc	a0,0x4
    80002d3c:	4c050513          	addi	a0,a0,1216 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80002d40:	00001097          	auipc	ra,0x1
    80002d44:	9e0080e7          	jalr	-1568(ra) # 80003720 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002d48:	02000513          	li	a0,32
    80002d4c:	fffff097          	auipc	ra,0xfffff
    80002d50:	c8c080e7          	jalr	-884(ra) # 800019d8 <_Znwm>
    80002d54:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002d58:	fffff097          	auipc	ra,0xfffff
    80002d5c:	dd0080e7          	jalr	-560(ra) # 80001b28 <_ZN6ThreadC1Ev>
    80002d60:	00006797          	auipc	a5,0x6
    80002d64:	b1878793          	addi	a5,a5,-1256 # 80008878 <_ZTV7WorkerD+0x10>
    80002d68:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002d6c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002d70:	00004517          	auipc	a0,0x4
    80002d74:	4a050513          	addi	a0,a0,1184 # 80007210 <CONSOLE_STATUS+0x200>
    80002d78:	00001097          	auipc	ra,0x1
    80002d7c:	9a8080e7          	jalr	-1624(ra) # 80003720 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002d80:	00000493          	li	s1,0
    80002d84:	00300793          	li	a5,3
    80002d88:	0297c663          	blt	a5,s1,80002db4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002d8c:	00349793          	slli	a5,s1,0x3
    80002d90:	fe040713          	addi	a4,s0,-32
    80002d94:	00f707b3          	add	a5,a4,a5
    80002d98:	fe07b503          	ld	a0,-32(a5)
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	dbc080e7          	jalr	-580(ra) # 80001b58 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002da4:	0014849b          	addiw	s1,s1,1
    80002da8:	fddff06f          	j	80002d84 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	e00080e7          	jalr	-512(ra) # 80001bac <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002db4:	00006797          	auipc	a5,0x6
    80002db8:	bac7c783          	lbu	a5,-1108(a5) # 80008960 <_ZL9finishedA>
    80002dbc:	fe0788e3          	beqz	a5,80002dac <_Z20Threads_CPP_API_testv+0x124>
    80002dc0:	00006797          	auipc	a5,0x6
    80002dc4:	ba17c783          	lbu	a5,-1119(a5) # 80008961 <_ZL9finishedB>
    80002dc8:	fe0782e3          	beqz	a5,80002dac <_Z20Threads_CPP_API_testv+0x124>
    80002dcc:	00006797          	auipc	a5,0x6
    80002dd0:	b967c783          	lbu	a5,-1130(a5) # 80008962 <_ZL9finishedC>
    80002dd4:	fc078ce3          	beqz	a5,80002dac <_Z20Threads_CPP_API_testv+0x124>
    80002dd8:	00006797          	auipc	a5,0x6
    80002ddc:	b8b7c783          	lbu	a5,-1141(a5) # 80008963 <_ZL9finishedD>
    80002de0:	fc0786e3          	beqz	a5,80002dac <_Z20Threads_CPP_API_testv+0x124>
    80002de4:	fc040493          	addi	s1,s0,-64
    80002de8:	0080006f          	j	80002df0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002dec:	00848493          	addi	s1,s1,8
    80002df0:	fe040793          	addi	a5,s0,-32
    80002df4:	08f48663          	beq	s1,a5,80002e80 <_Z20Threads_CPP_API_testv+0x1f8>
    80002df8:	0004b503          	ld	a0,0(s1)
    80002dfc:	fe0508e3          	beqz	a0,80002dec <_Z20Threads_CPP_API_testv+0x164>
    80002e00:	00053783          	ld	a5,0(a0)
    80002e04:	0087b783          	ld	a5,8(a5)
    80002e08:	000780e7          	jalr	a5
    80002e0c:	fe1ff06f          	j	80002dec <_Z20Threads_CPP_API_testv+0x164>
    80002e10:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002e14:	00048513          	mv	a0,s1
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	be8080e7          	jalr	-1048(ra) # 80001a00 <_ZdlPv>
    80002e20:	00090513          	mv	a0,s2
    80002e24:	00007097          	auipc	ra,0x7
    80002e28:	c24080e7          	jalr	-988(ra) # 80009a48 <_Unwind_Resume>
    80002e2c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002e30:	00048513          	mv	a0,s1
    80002e34:	fffff097          	auipc	ra,0xfffff
    80002e38:	bcc080e7          	jalr	-1076(ra) # 80001a00 <_ZdlPv>
    80002e3c:	00090513          	mv	a0,s2
    80002e40:	00007097          	auipc	ra,0x7
    80002e44:	c08080e7          	jalr	-1016(ra) # 80009a48 <_Unwind_Resume>
    80002e48:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002e4c:	00048513          	mv	a0,s1
    80002e50:	fffff097          	auipc	ra,0xfffff
    80002e54:	bb0080e7          	jalr	-1104(ra) # 80001a00 <_ZdlPv>
    80002e58:	00090513          	mv	a0,s2
    80002e5c:	00007097          	auipc	ra,0x7
    80002e60:	bec080e7          	jalr	-1044(ra) # 80009a48 <_Unwind_Resume>
    80002e64:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002e68:	00048513          	mv	a0,s1
    80002e6c:	fffff097          	auipc	ra,0xfffff
    80002e70:	b94080e7          	jalr	-1132(ra) # 80001a00 <_ZdlPv>
    80002e74:	00090513          	mv	a0,s2
    80002e78:	00007097          	auipc	ra,0x7
    80002e7c:	bd0080e7          	jalr	-1072(ra) # 80009a48 <_Unwind_Resume>
}
    80002e80:	03813083          	ld	ra,56(sp)
    80002e84:	03013403          	ld	s0,48(sp)
    80002e88:	02813483          	ld	s1,40(sp)
    80002e8c:	02013903          	ld	s2,32(sp)
    80002e90:	04010113          	addi	sp,sp,64
    80002e94:	00008067          	ret

0000000080002e98 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002e98:	ff010113          	addi	sp,sp,-16
    80002e9c:	00113423          	sd	ra,8(sp)
    80002ea0:	00813023          	sd	s0,0(sp)
    80002ea4:	01010413          	addi	s0,sp,16
    80002ea8:	00006797          	auipc	a5,0x6
    80002eac:	95878793          	addi	a5,a5,-1704 # 80008800 <_ZTV7WorkerA+0x10>
    80002eb0:	00f53023          	sd	a5,0(a0)
    80002eb4:	fffff097          	auipc	ra,0xfffff
    80002eb8:	a78080e7          	jalr	-1416(ra) # 8000192c <_ZN6ThreadD1Ev>
    80002ebc:	00813083          	ld	ra,8(sp)
    80002ec0:	00013403          	ld	s0,0(sp)
    80002ec4:	01010113          	addi	sp,sp,16
    80002ec8:	00008067          	ret

0000000080002ecc <_ZN7WorkerAD0Ev>:
    80002ecc:	fe010113          	addi	sp,sp,-32
    80002ed0:	00113c23          	sd	ra,24(sp)
    80002ed4:	00813823          	sd	s0,16(sp)
    80002ed8:	00913423          	sd	s1,8(sp)
    80002edc:	02010413          	addi	s0,sp,32
    80002ee0:	00050493          	mv	s1,a0
    80002ee4:	00006797          	auipc	a5,0x6
    80002ee8:	91c78793          	addi	a5,a5,-1764 # 80008800 <_ZTV7WorkerA+0x10>
    80002eec:	00f53023          	sd	a5,0(a0)
    80002ef0:	fffff097          	auipc	ra,0xfffff
    80002ef4:	a3c080e7          	jalr	-1476(ra) # 8000192c <_ZN6ThreadD1Ev>
    80002ef8:	00048513          	mv	a0,s1
    80002efc:	fffff097          	auipc	ra,0xfffff
    80002f00:	b04080e7          	jalr	-1276(ra) # 80001a00 <_ZdlPv>
    80002f04:	01813083          	ld	ra,24(sp)
    80002f08:	01013403          	ld	s0,16(sp)
    80002f0c:	00813483          	ld	s1,8(sp)
    80002f10:	02010113          	addi	sp,sp,32
    80002f14:	00008067          	ret

0000000080002f18 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80002f18:	ff010113          	addi	sp,sp,-16
    80002f1c:	00113423          	sd	ra,8(sp)
    80002f20:	00813023          	sd	s0,0(sp)
    80002f24:	01010413          	addi	s0,sp,16
    80002f28:	00006797          	auipc	a5,0x6
    80002f2c:	90078793          	addi	a5,a5,-1792 # 80008828 <_ZTV7WorkerB+0x10>
    80002f30:	00f53023          	sd	a5,0(a0)
    80002f34:	fffff097          	auipc	ra,0xfffff
    80002f38:	9f8080e7          	jalr	-1544(ra) # 8000192c <_ZN6ThreadD1Ev>
    80002f3c:	00813083          	ld	ra,8(sp)
    80002f40:	00013403          	ld	s0,0(sp)
    80002f44:	01010113          	addi	sp,sp,16
    80002f48:	00008067          	ret

0000000080002f4c <_ZN7WorkerBD0Ev>:
    80002f4c:	fe010113          	addi	sp,sp,-32
    80002f50:	00113c23          	sd	ra,24(sp)
    80002f54:	00813823          	sd	s0,16(sp)
    80002f58:	00913423          	sd	s1,8(sp)
    80002f5c:	02010413          	addi	s0,sp,32
    80002f60:	00050493          	mv	s1,a0
    80002f64:	00006797          	auipc	a5,0x6
    80002f68:	8c478793          	addi	a5,a5,-1852 # 80008828 <_ZTV7WorkerB+0x10>
    80002f6c:	00f53023          	sd	a5,0(a0)
    80002f70:	fffff097          	auipc	ra,0xfffff
    80002f74:	9bc080e7          	jalr	-1604(ra) # 8000192c <_ZN6ThreadD1Ev>
    80002f78:	00048513          	mv	a0,s1
    80002f7c:	fffff097          	auipc	ra,0xfffff
    80002f80:	a84080e7          	jalr	-1404(ra) # 80001a00 <_ZdlPv>
    80002f84:	01813083          	ld	ra,24(sp)
    80002f88:	01013403          	ld	s0,16(sp)
    80002f8c:	00813483          	ld	s1,8(sp)
    80002f90:	02010113          	addi	sp,sp,32
    80002f94:	00008067          	ret

0000000080002f98 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002f98:	ff010113          	addi	sp,sp,-16
    80002f9c:	00113423          	sd	ra,8(sp)
    80002fa0:	00813023          	sd	s0,0(sp)
    80002fa4:	01010413          	addi	s0,sp,16
    80002fa8:	00006797          	auipc	a5,0x6
    80002fac:	8a878793          	addi	a5,a5,-1880 # 80008850 <_ZTV7WorkerC+0x10>
    80002fb0:	00f53023          	sd	a5,0(a0)
    80002fb4:	fffff097          	auipc	ra,0xfffff
    80002fb8:	978080e7          	jalr	-1672(ra) # 8000192c <_ZN6ThreadD1Ev>
    80002fbc:	00813083          	ld	ra,8(sp)
    80002fc0:	00013403          	ld	s0,0(sp)
    80002fc4:	01010113          	addi	sp,sp,16
    80002fc8:	00008067          	ret

0000000080002fcc <_ZN7WorkerCD0Ev>:
    80002fcc:	fe010113          	addi	sp,sp,-32
    80002fd0:	00113c23          	sd	ra,24(sp)
    80002fd4:	00813823          	sd	s0,16(sp)
    80002fd8:	00913423          	sd	s1,8(sp)
    80002fdc:	02010413          	addi	s0,sp,32
    80002fe0:	00050493          	mv	s1,a0
    80002fe4:	00006797          	auipc	a5,0x6
    80002fe8:	86c78793          	addi	a5,a5,-1940 # 80008850 <_ZTV7WorkerC+0x10>
    80002fec:	00f53023          	sd	a5,0(a0)
    80002ff0:	fffff097          	auipc	ra,0xfffff
    80002ff4:	93c080e7          	jalr	-1732(ra) # 8000192c <_ZN6ThreadD1Ev>
    80002ff8:	00048513          	mv	a0,s1
    80002ffc:	fffff097          	auipc	ra,0xfffff
    80003000:	a04080e7          	jalr	-1532(ra) # 80001a00 <_ZdlPv>
    80003004:	01813083          	ld	ra,24(sp)
    80003008:	01013403          	ld	s0,16(sp)
    8000300c:	00813483          	ld	s1,8(sp)
    80003010:	02010113          	addi	sp,sp,32
    80003014:	00008067          	ret

0000000080003018 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003018:	ff010113          	addi	sp,sp,-16
    8000301c:	00113423          	sd	ra,8(sp)
    80003020:	00813023          	sd	s0,0(sp)
    80003024:	01010413          	addi	s0,sp,16
    80003028:	00006797          	auipc	a5,0x6
    8000302c:	85078793          	addi	a5,a5,-1968 # 80008878 <_ZTV7WorkerD+0x10>
    80003030:	00f53023          	sd	a5,0(a0)
    80003034:	fffff097          	auipc	ra,0xfffff
    80003038:	8f8080e7          	jalr	-1800(ra) # 8000192c <_ZN6ThreadD1Ev>
    8000303c:	00813083          	ld	ra,8(sp)
    80003040:	00013403          	ld	s0,0(sp)
    80003044:	01010113          	addi	sp,sp,16
    80003048:	00008067          	ret

000000008000304c <_ZN7WorkerDD0Ev>:
    8000304c:	fe010113          	addi	sp,sp,-32
    80003050:	00113c23          	sd	ra,24(sp)
    80003054:	00813823          	sd	s0,16(sp)
    80003058:	00913423          	sd	s1,8(sp)
    8000305c:	02010413          	addi	s0,sp,32
    80003060:	00050493          	mv	s1,a0
    80003064:	00006797          	auipc	a5,0x6
    80003068:	81478793          	addi	a5,a5,-2028 # 80008878 <_ZTV7WorkerD+0x10>
    8000306c:	00f53023          	sd	a5,0(a0)
    80003070:	fffff097          	auipc	ra,0xfffff
    80003074:	8bc080e7          	jalr	-1860(ra) # 8000192c <_ZN6ThreadD1Ev>
    80003078:	00048513          	mv	a0,s1
    8000307c:	fffff097          	auipc	ra,0xfffff
    80003080:	984080e7          	jalr	-1660(ra) # 80001a00 <_ZdlPv>
    80003084:	01813083          	ld	ra,24(sp)
    80003088:	01013403          	ld	s0,16(sp)
    8000308c:	00813483          	ld	s1,8(sp)
    80003090:	02010113          	addi	sp,sp,32
    80003094:	00008067          	ret

0000000080003098 <_ZN7WorkerA3runEv>:
    void run() override {
    80003098:	ff010113          	addi	sp,sp,-16
    8000309c:	00113423          	sd	ra,8(sp)
    800030a0:	00813023          	sd	s0,0(sp)
    800030a4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800030a8:	00000593          	li	a1,0
    800030ac:	fffff097          	auipc	ra,0xfffff
    800030b0:	774080e7          	jalr	1908(ra) # 80002820 <_ZN7WorkerA11workerBodyAEPv>
    }
    800030b4:	00813083          	ld	ra,8(sp)
    800030b8:	00013403          	ld	s0,0(sp)
    800030bc:	01010113          	addi	sp,sp,16
    800030c0:	00008067          	ret

00000000800030c4 <_ZN7WorkerB3runEv>:
    void run() override {
    800030c4:	ff010113          	addi	sp,sp,-16
    800030c8:	00113423          	sd	ra,8(sp)
    800030cc:	00813023          	sd	s0,0(sp)
    800030d0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800030d4:	00000593          	li	a1,0
    800030d8:	00000097          	auipc	ra,0x0
    800030dc:	814080e7          	jalr	-2028(ra) # 800028ec <_ZN7WorkerB11workerBodyBEPv>
    }
    800030e0:	00813083          	ld	ra,8(sp)
    800030e4:	00013403          	ld	s0,0(sp)
    800030e8:	01010113          	addi	sp,sp,16
    800030ec:	00008067          	ret

00000000800030f0 <_ZN7WorkerC3runEv>:
    void run() override {
    800030f0:	ff010113          	addi	sp,sp,-16
    800030f4:	00113423          	sd	ra,8(sp)
    800030f8:	00813023          	sd	s0,0(sp)
    800030fc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003100:	00000593          	li	a1,0
    80003104:	00000097          	auipc	ra,0x0
    80003108:	8bc080e7          	jalr	-1860(ra) # 800029c0 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000310c:	00813083          	ld	ra,8(sp)
    80003110:	00013403          	ld	s0,0(sp)
    80003114:	01010113          	addi	sp,sp,16
    80003118:	00008067          	ret

000000008000311c <_ZN7WorkerD3runEv>:
    void run() override {
    8000311c:	ff010113          	addi	sp,sp,-16
    80003120:	00113423          	sd	ra,8(sp)
    80003124:	00813023          	sd	s0,0(sp)
    80003128:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000312c:	00000593          	li	a1,0
    80003130:	00000097          	auipc	ra,0x0
    80003134:	a10080e7          	jalr	-1520(ra) # 80002b40 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003138:	00813083          	ld	ra,8(sp)
    8000313c:	00013403          	ld	s0,0(sp)
    80003140:	01010113          	addi	sp,sp,16
    80003144:	00008067          	ret

0000000080003148 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003148:	fe010113          	addi	sp,sp,-32
    8000314c:	00113c23          	sd	ra,24(sp)
    80003150:	00813823          	sd	s0,16(sp)
    80003154:	00913423          	sd	s1,8(sp)
    80003158:	01213023          	sd	s2,0(sp)
    8000315c:	02010413          	addi	s0,sp,32
    80003160:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003164:	00100793          	li	a5,1
    80003168:	02a7f863          	bgeu	a5,a0,80003198 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000316c:	00a00793          	li	a5,10
    80003170:	02f577b3          	remu	a5,a0,a5
    80003174:	02078e63          	beqz	a5,800031b0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003178:	fff48513          	addi	a0,s1,-1
    8000317c:	00000097          	auipc	ra,0x0
    80003180:	fcc080e7          	jalr	-52(ra) # 80003148 <_ZL9fibonaccim>
    80003184:	00050913          	mv	s2,a0
    80003188:	ffe48513          	addi	a0,s1,-2
    8000318c:	00000097          	auipc	ra,0x0
    80003190:	fbc080e7          	jalr	-68(ra) # 80003148 <_ZL9fibonaccim>
    80003194:	00a90533          	add	a0,s2,a0
}
    80003198:	01813083          	ld	ra,24(sp)
    8000319c:	01013403          	ld	s0,16(sp)
    800031a0:	00813483          	ld	s1,8(sp)
    800031a4:	00013903          	ld	s2,0(sp)
    800031a8:	02010113          	addi	sp,sp,32
    800031ac:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800031b0:	ffffe097          	auipc	ra,0xffffe
    800031b4:	140080e7          	jalr	320(ra) # 800012f0 <_Z15thread_dispatchv>
    800031b8:	fc1ff06f          	j	80003178 <_ZL9fibonaccim+0x30>

00000000800031bc <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800031bc:	fe010113          	addi	sp,sp,-32
    800031c0:	00113c23          	sd	ra,24(sp)
    800031c4:	00813823          	sd	s0,16(sp)
    800031c8:	00913423          	sd	s1,8(sp)
    800031cc:	01213023          	sd	s2,0(sp)
    800031d0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800031d4:	00a00493          	li	s1,10
    800031d8:	0400006f          	j	80003218 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800031dc:	00004517          	auipc	a0,0x4
    800031e0:	fb450513          	addi	a0,a0,-76 # 80007190 <CONSOLE_STATUS+0x180>
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	53c080e7          	jalr	1340(ra) # 80003720 <_Z11printStringPKc>
    800031ec:	00000613          	li	a2,0
    800031f0:	00a00593          	li	a1,10
    800031f4:	00048513          	mv	a0,s1
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	6d8080e7          	jalr	1752(ra) # 800038d0 <_Z8printIntiii>
    80003200:	00004517          	auipc	a0,0x4
    80003204:	ef050513          	addi	a0,a0,-272 # 800070f0 <CONSOLE_STATUS+0xe0>
    80003208:	00000097          	auipc	ra,0x0
    8000320c:	518080e7          	jalr	1304(ra) # 80003720 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003210:	0014849b          	addiw	s1,s1,1
    80003214:	0ff4f493          	andi	s1,s1,255
    80003218:	00c00793          	li	a5,12
    8000321c:	fc97f0e3          	bgeu	a5,s1,800031dc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003220:	00004517          	auipc	a0,0x4
    80003224:	f7850513          	addi	a0,a0,-136 # 80007198 <CONSOLE_STATUS+0x188>
    80003228:	00000097          	auipc	ra,0x0
    8000322c:	4f8080e7          	jalr	1272(ra) # 80003720 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003230:	00500313          	li	t1,5
    thread_dispatch();
    80003234:	ffffe097          	auipc	ra,0xffffe
    80003238:	0bc080e7          	jalr	188(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000323c:	01000513          	li	a0,16
    80003240:	00000097          	auipc	ra,0x0
    80003244:	f08080e7          	jalr	-248(ra) # 80003148 <_ZL9fibonaccim>
    80003248:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000324c:	00004517          	auipc	a0,0x4
    80003250:	f5c50513          	addi	a0,a0,-164 # 800071a8 <CONSOLE_STATUS+0x198>
    80003254:	00000097          	auipc	ra,0x0
    80003258:	4cc080e7          	jalr	1228(ra) # 80003720 <_Z11printStringPKc>
    8000325c:	00000613          	li	a2,0
    80003260:	00a00593          	li	a1,10
    80003264:	0009051b          	sext.w	a0,s2
    80003268:	00000097          	auipc	ra,0x0
    8000326c:	668080e7          	jalr	1640(ra) # 800038d0 <_Z8printIntiii>
    80003270:	00004517          	auipc	a0,0x4
    80003274:	e8050513          	addi	a0,a0,-384 # 800070f0 <CONSOLE_STATUS+0xe0>
    80003278:	00000097          	auipc	ra,0x0
    8000327c:	4a8080e7          	jalr	1192(ra) # 80003720 <_Z11printStringPKc>
    80003280:	0400006f          	j	800032c0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003284:	00004517          	auipc	a0,0x4
    80003288:	f0c50513          	addi	a0,a0,-244 # 80007190 <CONSOLE_STATUS+0x180>
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	494080e7          	jalr	1172(ra) # 80003720 <_Z11printStringPKc>
    80003294:	00000613          	li	a2,0
    80003298:	00a00593          	li	a1,10
    8000329c:	00048513          	mv	a0,s1
    800032a0:	00000097          	auipc	ra,0x0
    800032a4:	630080e7          	jalr	1584(ra) # 800038d0 <_Z8printIntiii>
    800032a8:	00004517          	auipc	a0,0x4
    800032ac:	e4850513          	addi	a0,a0,-440 # 800070f0 <CONSOLE_STATUS+0xe0>
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	470080e7          	jalr	1136(ra) # 80003720 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800032b8:	0014849b          	addiw	s1,s1,1
    800032bc:	0ff4f493          	andi	s1,s1,255
    800032c0:	00f00793          	li	a5,15
    800032c4:	fc97f0e3          	bgeu	a5,s1,80003284 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800032c8:	00004517          	auipc	a0,0x4
    800032cc:	ef050513          	addi	a0,a0,-272 # 800071b8 <CONSOLE_STATUS+0x1a8>
    800032d0:	00000097          	auipc	ra,0x0
    800032d4:	450080e7          	jalr	1104(ra) # 80003720 <_Z11printStringPKc>
    finishedD = true;
    800032d8:	00100793          	li	a5,1
    800032dc:	00005717          	auipc	a4,0x5
    800032e0:	68f70423          	sb	a5,1672(a4) # 80008964 <_ZL9finishedD>
    thread_dispatch();
    800032e4:	ffffe097          	auipc	ra,0xffffe
    800032e8:	00c080e7          	jalr	12(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800032ec:	01813083          	ld	ra,24(sp)
    800032f0:	01013403          	ld	s0,16(sp)
    800032f4:	00813483          	ld	s1,8(sp)
    800032f8:	00013903          	ld	s2,0(sp)
    800032fc:	02010113          	addi	sp,sp,32
    80003300:	00008067          	ret

0000000080003304 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003304:	fe010113          	addi	sp,sp,-32
    80003308:	00113c23          	sd	ra,24(sp)
    8000330c:	00813823          	sd	s0,16(sp)
    80003310:	00913423          	sd	s1,8(sp)
    80003314:	01213023          	sd	s2,0(sp)
    80003318:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000331c:	00000493          	li	s1,0
    80003320:	0400006f          	j	80003360 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003324:	00004517          	auipc	a0,0x4
    80003328:	e3c50513          	addi	a0,a0,-452 # 80007160 <CONSOLE_STATUS+0x150>
    8000332c:	00000097          	auipc	ra,0x0
    80003330:	3f4080e7          	jalr	1012(ra) # 80003720 <_Z11printStringPKc>
    80003334:	00000613          	li	a2,0
    80003338:	00a00593          	li	a1,10
    8000333c:	00048513          	mv	a0,s1
    80003340:	00000097          	auipc	ra,0x0
    80003344:	590080e7          	jalr	1424(ra) # 800038d0 <_Z8printIntiii>
    80003348:	00004517          	auipc	a0,0x4
    8000334c:	da850513          	addi	a0,a0,-600 # 800070f0 <CONSOLE_STATUS+0xe0>
    80003350:	00000097          	auipc	ra,0x0
    80003354:	3d0080e7          	jalr	976(ra) # 80003720 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003358:	0014849b          	addiw	s1,s1,1
    8000335c:	0ff4f493          	andi	s1,s1,255
    80003360:	00200793          	li	a5,2
    80003364:	fc97f0e3          	bgeu	a5,s1,80003324 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003368:	00004517          	auipc	a0,0x4
    8000336c:	e0050513          	addi	a0,a0,-512 # 80007168 <CONSOLE_STATUS+0x158>
    80003370:	00000097          	auipc	ra,0x0
    80003374:	3b0080e7          	jalr	944(ra) # 80003720 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003378:	00700313          	li	t1,7
    thread_dispatch();
    8000337c:	ffffe097          	auipc	ra,0xffffe
    80003380:	f74080e7          	jalr	-140(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003384:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003388:	00004517          	auipc	a0,0x4
    8000338c:	df050513          	addi	a0,a0,-528 # 80007178 <CONSOLE_STATUS+0x168>
    80003390:	00000097          	auipc	ra,0x0
    80003394:	390080e7          	jalr	912(ra) # 80003720 <_Z11printStringPKc>
    80003398:	00000613          	li	a2,0
    8000339c:	00a00593          	li	a1,10
    800033a0:	0009051b          	sext.w	a0,s2
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	52c080e7          	jalr	1324(ra) # 800038d0 <_Z8printIntiii>
    800033ac:	00004517          	auipc	a0,0x4
    800033b0:	d4450513          	addi	a0,a0,-700 # 800070f0 <CONSOLE_STATUS+0xe0>
    800033b4:	00000097          	auipc	ra,0x0
    800033b8:	36c080e7          	jalr	876(ra) # 80003720 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800033bc:	00c00513          	li	a0,12
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	d88080e7          	jalr	-632(ra) # 80003148 <_ZL9fibonaccim>
    800033c8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800033cc:	00004517          	auipc	a0,0x4
    800033d0:	db450513          	addi	a0,a0,-588 # 80007180 <CONSOLE_STATUS+0x170>
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	34c080e7          	jalr	844(ra) # 80003720 <_Z11printStringPKc>
    800033dc:	00000613          	li	a2,0
    800033e0:	00a00593          	li	a1,10
    800033e4:	0009051b          	sext.w	a0,s2
    800033e8:	00000097          	auipc	ra,0x0
    800033ec:	4e8080e7          	jalr	1256(ra) # 800038d0 <_Z8printIntiii>
    800033f0:	00004517          	auipc	a0,0x4
    800033f4:	d0050513          	addi	a0,a0,-768 # 800070f0 <CONSOLE_STATUS+0xe0>
    800033f8:	00000097          	auipc	ra,0x0
    800033fc:	328080e7          	jalr	808(ra) # 80003720 <_Z11printStringPKc>
    80003400:	0400006f          	j	80003440 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003404:	00004517          	auipc	a0,0x4
    80003408:	d5c50513          	addi	a0,a0,-676 # 80007160 <CONSOLE_STATUS+0x150>
    8000340c:	00000097          	auipc	ra,0x0
    80003410:	314080e7          	jalr	788(ra) # 80003720 <_Z11printStringPKc>
    80003414:	00000613          	li	a2,0
    80003418:	00a00593          	li	a1,10
    8000341c:	00048513          	mv	a0,s1
    80003420:	00000097          	auipc	ra,0x0
    80003424:	4b0080e7          	jalr	1200(ra) # 800038d0 <_Z8printIntiii>
    80003428:	00004517          	auipc	a0,0x4
    8000342c:	cc850513          	addi	a0,a0,-824 # 800070f0 <CONSOLE_STATUS+0xe0>
    80003430:	00000097          	auipc	ra,0x0
    80003434:	2f0080e7          	jalr	752(ra) # 80003720 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003438:	0014849b          	addiw	s1,s1,1
    8000343c:	0ff4f493          	andi	s1,s1,255
    80003440:	00500793          	li	a5,5
    80003444:	fc97f0e3          	bgeu	a5,s1,80003404 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80003448:	00004517          	auipc	a0,0x4
    8000344c:	de050513          	addi	a0,a0,-544 # 80007228 <CONSOLE_STATUS+0x218>
    80003450:	00000097          	auipc	ra,0x0
    80003454:	2d0080e7          	jalr	720(ra) # 80003720 <_Z11printStringPKc>
    finishedC = true;
    80003458:	00100793          	li	a5,1
    8000345c:	00005717          	auipc	a4,0x5
    80003460:	50f704a3          	sb	a5,1289(a4) # 80008965 <_ZL9finishedC>
    thread_dispatch();
    80003464:	ffffe097          	auipc	ra,0xffffe
    80003468:	e8c080e7          	jalr	-372(ra) # 800012f0 <_Z15thread_dispatchv>
}
    8000346c:	01813083          	ld	ra,24(sp)
    80003470:	01013403          	ld	s0,16(sp)
    80003474:	00813483          	ld	s1,8(sp)
    80003478:	00013903          	ld	s2,0(sp)
    8000347c:	02010113          	addi	sp,sp,32
    80003480:	00008067          	ret

0000000080003484 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003484:	fe010113          	addi	sp,sp,-32
    80003488:	00113c23          	sd	ra,24(sp)
    8000348c:	00813823          	sd	s0,16(sp)
    80003490:	00913423          	sd	s1,8(sp)
    80003494:	01213023          	sd	s2,0(sp)
    80003498:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000349c:	00000913          	li	s2,0
    800034a0:	0380006f          	j	800034d8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800034a4:	ffffe097          	auipc	ra,0xffffe
    800034a8:	e4c080e7          	jalr	-436(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800034ac:	00148493          	addi	s1,s1,1
    800034b0:	000027b7          	lui	a5,0x2
    800034b4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800034b8:	0097ee63          	bltu	a5,s1,800034d4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800034bc:	00000713          	li	a4,0
    800034c0:	000077b7          	lui	a5,0x7
    800034c4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800034c8:	fce7eee3          	bltu	a5,a4,800034a4 <_ZL11workerBodyBPv+0x20>
    800034cc:	00170713          	addi	a4,a4,1
    800034d0:	ff1ff06f          	j	800034c0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800034d4:	00190913          	addi	s2,s2,1
    800034d8:	00f00793          	li	a5,15
    800034dc:	0527e063          	bltu	a5,s2,8000351c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800034e0:	00004517          	auipc	a0,0x4
    800034e4:	c6850513          	addi	a0,a0,-920 # 80007148 <CONSOLE_STATUS+0x138>
    800034e8:	00000097          	auipc	ra,0x0
    800034ec:	238080e7          	jalr	568(ra) # 80003720 <_Z11printStringPKc>
    800034f0:	00000613          	li	a2,0
    800034f4:	00a00593          	li	a1,10
    800034f8:	0009051b          	sext.w	a0,s2
    800034fc:	00000097          	auipc	ra,0x0
    80003500:	3d4080e7          	jalr	980(ra) # 800038d0 <_Z8printIntiii>
    80003504:	00004517          	auipc	a0,0x4
    80003508:	bec50513          	addi	a0,a0,-1044 # 800070f0 <CONSOLE_STATUS+0xe0>
    8000350c:	00000097          	auipc	ra,0x0
    80003510:	214080e7          	jalr	532(ra) # 80003720 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003514:	00000493          	li	s1,0
    80003518:	f99ff06f          	j	800034b0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000351c:	00004517          	auipc	a0,0x4
    80003520:	c3450513          	addi	a0,a0,-972 # 80007150 <CONSOLE_STATUS+0x140>
    80003524:	00000097          	auipc	ra,0x0
    80003528:	1fc080e7          	jalr	508(ra) # 80003720 <_Z11printStringPKc>
    finishedB = true;
    8000352c:	00100793          	li	a5,1
    80003530:	00005717          	auipc	a4,0x5
    80003534:	42f70b23          	sb	a5,1078(a4) # 80008966 <_ZL9finishedB>
    thread_dispatch();
    80003538:	ffffe097          	auipc	ra,0xffffe
    8000353c:	db8080e7          	jalr	-584(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003540:	01813083          	ld	ra,24(sp)
    80003544:	01013403          	ld	s0,16(sp)
    80003548:	00813483          	ld	s1,8(sp)
    8000354c:	00013903          	ld	s2,0(sp)
    80003550:	02010113          	addi	sp,sp,32
    80003554:	00008067          	ret

0000000080003558 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003558:	fe010113          	addi	sp,sp,-32
    8000355c:	00113c23          	sd	ra,24(sp)
    80003560:	00813823          	sd	s0,16(sp)
    80003564:	00913423          	sd	s1,8(sp)
    80003568:	01213023          	sd	s2,0(sp)
    8000356c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003570:	00000913          	li	s2,0
    80003574:	0380006f          	j	800035ac <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003578:	ffffe097          	auipc	ra,0xffffe
    8000357c:	d78080e7          	jalr	-648(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003580:	00148493          	addi	s1,s1,1
    80003584:	000027b7          	lui	a5,0x2
    80003588:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000358c:	0097ee63          	bltu	a5,s1,800035a8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003590:	00000713          	li	a4,0
    80003594:	000077b7          	lui	a5,0x7
    80003598:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000359c:	fce7eee3          	bltu	a5,a4,80003578 <_ZL11workerBodyAPv+0x20>
    800035a0:	00170713          	addi	a4,a4,1
    800035a4:	ff1ff06f          	j	80003594 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800035a8:	00190913          	addi	s2,s2,1
    800035ac:	00900793          	li	a5,9
    800035b0:	0527e063          	bltu	a5,s2,800035f0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800035b4:	00004517          	auipc	a0,0x4
    800035b8:	b7c50513          	addi	a0,a0,-1156 # 80007130 <CONSOLE_STATUS+0x120>
    800035bc:	00000097          	auipc	ra,0x0
    800035c0:	164080e7          	jalr	356(ra) # 80003720 <_Z11printStringPKc>
    800035c4:	00000613          	li	a2,0
    800035c8:	00a00593          	li	a1,10
    800035cc:	0009051b          	sext.w	a0,s2
    800035d0:	00000097          	auipc	ra,0x0
    800035d4:	300080e7          	jalr	768(ra) # 800038d0 <_Z8printIntiii>
    800035d8:	00004517          	auipc	a0,0x4
    800035dc:	b1850513          	addi	a0,a0,-1256 # 800070f0 <CONSOLE_STATUS+0xe0>
    800035e0:	00000097          	auipc	ra,0x0
    800035e4:	140080e7          	jalr	320(ra) # 80003720 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800035e8:	00000493          	li	s1,0
    800035ec:	f99ff06f          	j	80003584 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800035f0:	00004517          	auipc	a0,0x4
    800035f4:	b4850513          	addi	a0,a0,-1208 # 80007138 <CONSOLE_STATUS+0x128>
    800035f8:	00000097          	auipc	ra,0x0
    800035fc:	128080e7          	jalr	296(ra) # 80003720 <_Z11printStringPKc>
    finishedA = true;
    80003600:	00100793          	li	a5,1
    80003604:	00005717          	auipc	a4,0x5
    80003608:	36f701a3          	sb	a5,867(a4) # 80008967 <_ZL9finishedA>
}
    8000360c:	01813083          	ld	ra,24(sp)
    80003610:	01013403          	ld	s0,16(sp)
    80003614:	00813483          	ld	s1,8(sp)
    80003618:	00013903          	ld	s2,0(sp)
    8000361c:	02010113          	addi	sp,sp,32
    80003620:	00008067          	ret

0000000080003624 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003624:	fd010113          	addi	sp,sp,-48
    80003628:	02113423          	sd	ra,40(sp)
    8000362c:	02813023          	sd	s0,32(sp)
    80003630:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003634:	00000613          	li	a2,0
    80003638:	00000597          	auipc	a1,0x0
    8000363c:	f2058593          	addi	a1,a1,-224 # 80003558 <_ZL11workerBodyAPv>
    80003640:	fd040513          	addi	a0,s0,-48
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	bd8080e7          	jalr	-1064(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    8000364c:	00004517          	auipc	a0,0x4
    80003650:	b7c50513          	addi	a0,a0,-1156 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80003654:	00000097          	auipc	ra,0x0
    80003658:	0cc080e7          	jalr	204(ra) # 80003720 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000365c:	00000613          	li	a2,0
    80003660:	00000597          	auipc	a1,0x0
    80003664:	e2458593          	addi	a1,a1,-476 # 80003484 <_ZL11workerBodyBPv>
    80003668:	fd840513          	addi	a0,s0,-40
    8000366c:	ffffe097          	auipc	ra,0xffffe
    80003670:	bb0080e7          	jalr	-1104(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    80003674:	00004517          	auipc	a0,0x4
    80003678:	b6c50513          	addi	a0,a0,-1172 # 800071e0 <CONSOLE_STATUS+0x1d0>
    8000367c:	00000097          	auipc	ra,0x0
    80003680:	0a4080e7          	jalr	164(ra) # 80003720 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003684:	00000613          	li	a2,0
    80003688:	00000597          	auipc	a1,0x0
    8000368c:	c7c58593          	addi	a1,a1,-900 # 80003304 <_ZL11workerBodyCPv>
    80003690:	fe040513          	addi	a0,s0,-32
    80003694:	ffffe097          	auipc	ra,0xffffe
    80003698:	b88080e7          	jalr	-1144(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    8000369c:	00004517          	auipc	a0,0x4
    800036a0:	b5c50513          	addi	a0,a0,-1188 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800036a4:	00000097          	auipc	ra,0x0
    800036a8:	07c080e7          	jalr	124(ra) # 80003720 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800036ac:	00000613          	li	a2,0
    800036b0:	00000597          	auipc	a1,0x0
    800036b4:	b0c58593          	addi	a1,a1,-1268 # 800031bc <_ZL11workerBodyDPv>
    800036b8:	fe840513          	addi	a0,s0,-24
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	b60080e7          	jalr	-1184(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    800036c4:	00004517          	auipc	a0,0x4
    800036c8:	b4c50513          	addi	a0,a0,-1204 # 80007210 <CONSOLE_STATUS+0x200>
    800036cc:	00000097          	auipc	ra,0x0
    800036d0:	054080e7          	jalr	84(ra) # 80003720 <_Z11printStringPKc>
    800036d4:	00c0006f          	j	800036e0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800036d8:	ffffe097          	auipc	ra,0xffffe
    800036dc:	c18080e7          	jalr	-1000(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800036e0:	00005797          	auipc	a5,0x5
    800036e4:	2877c783          	lbu	a5,647(a5) # 80008967 <_ZL9finishedA>
    800036e8:	fe0788e3          	beqz	a5,800036d8 <_Z18Threads_C_API_testv+0xb4>
    800036ec:	00005797          	auipc	a5,0x5
    800036f0:	27a7c783          	lbu	a5,634(a5) # 80008966 <_ZL9finishedB>
    800036f4:	fe0782e3          	beqz	a5,800036d8 <_Z18Threads_C_API_testv+0xb4>
    800036f8:	00005797          	auipc	a5,0x5
    800036fc:	26d7c783          	lbu	a5,621(a5) # 80008965 <_ZL9finishedC>
    80003700:	fc078ce3          	beqz	a5,800036d8 <_Z18Threads_C_API_testv+0xb4>
    80003704:	00005797          	auipc	a5,0x5
    80003708:	2607c783          	lbu	a5,608(a5) # 80008964 <_ZL9finishedD>
    8000370c:	fc0786e3          	beqz	a5,800036d8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003710:	02813083          	ld	ra,40(sp)
    80003714:	02013403          	ld	s0,32(sp)
    80003718:	03010113          	addi	sp,sp,48
    8000371c:	00008067          	ret

0000000080003720 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003720:	fe010113          	addi	sp,sp,-32
    80003724:	00113c23          	sd	ra,24(sp)
    80003728:	00813823          	sd	s0,16(sp)
    8000372c:	00913423          	sd	s1,8(sp)
    80003730:	02010413          	addi	s0,sp,32
    80003734:	00050493          	mv	s1,a0
    LOCK();
    80003738:	00100613          	li	a2,1
    8000373c:	00000593          	li	a1,0
    80003740:	00005517          	auipc	a0,0x5
    80003744:	22850513          	addi	a0,a0,552 # 80008968 <lockPrint>
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	9fc080e7          	jalr	-1540(ra) # 80001144 <copy_and_swap>
    80003750:	00050863          	beqz	a0,80003760 <_Z11printStringPKc+0x40>
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	b9c080e7          	jalr	-1124(ra) # 800012f0 <_Z15thread_dispatchv>
    8000375c:	fddff06f          	j	80003738 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003760:	0004c503          	lbu	a0,0(s1)
    80003764:	00050a63          	beqz	a0,80003778 <_Z11printStringPKc+0x58>
    {
        __putc(*string);
    80003768:	00003097          	auipc	ra,0x3
    8000376c:	c94080e7          	jalr	-876(ra) # 800063fc <__putc>
        string++;
    80003770:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003774:	fedff06f          	j	80003760 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80003778:	00000613          	li	a2,0
    8000377c:	00100593          	li	a1,1
    80003780:	00005517          	auipc	a0,0x5
    80003784:	1e850513          	addi	a0,a0,488 # 80008968 <lockPrint>
    80003788:	ffffe097          	auipc	ra,0xffffe
    8000378c:	9bc080e7          	jalr	-1604(ra) # 80001144 <copy_and_swap>
    80003790:	fe0514e3          	bnez	a0,80003778 <_Z11printStringPKc+0x58>
}
    80003794:	01813083          	ld	ra,24(sp)
    80003798:	01013403          	ld	s0,16(sp)
    8000379c:	00813483          	ld	s1,8(sp)
    800037a0:	02010113          	addi	sp,sp,32
    800037a4:	00008067          	ret

00000000800037a8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800037a8:	fd010113          	addi	sp,sp,-48
    800037ac:	02113423          	sd	ra,40(sp)
    800037b0:	02813023          	sd	s0,32(sp)
    800037b4:	00913c23          	sd	s1,24(sp)
    800037b8:	01213823          	sd	s2,16(sp)
    800037bc:	01313423          	sd	s3,8(sp)
    800037c0:	01413023          	sd	s4,0(sp)
    800037c4:	03010413          	addi	s0,sp,48
    800037c8:	00050993          	mv	s3,a0
    800037cc:	00058a13          	mv	s4,a1
    LOCK();
    800037d0:	00100613          	li	a2,1
    800037d4:	00000593          	li	a1,0
    800037d8:	00005517          	auipc	a0,0x5
    800037dc:	19050513          	addi	a0,a0,400 # 80008968 <lockPrint>
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	964080e7          	jalr	-1692(ra) # 80001144 <copy_and_swap>
    800037e8:	00050863          	beqz	a0,800037f8 <_Z9getStringPci+0x50>
    800037ec:	ffffe097          	auipc	ra,0xffffe
    800037f0:	b04080e7          	jalr	-1276(ra) # 800012f0 <_Z15thread_dispatchv>
    800037f4:	fddff06f          	j	800037d0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800037f8:	00000913          	li	s2,0
    800037fc:	00090493          	mv	s1,s2
    80003800:	0019091b          	addiw	s2,s2,1
    80003804:	03495a63          	bge	s2,s4,80003838 <_Z9getStringPci+0x90>
        cc = __getc();
    80003808:	00003097          	auipc	ra,0x3
    8000380c:	c30080e7          	jalr	-976(ra) # 80006438 <__getc>
        if(cc < 1)
    80003810:	02050463          	beqz	a0,80003838 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80003814:	009984b3          	add	s1,s3,s1
    80003818:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000381c:	00a00793          	li	a5,10
    80003820:	00f50a63          	beq	a0,a5,80003834 <_Z9getStringPci+0x8c>
    80003824:	00d00793          	li	a5,13
    80003828:	fcf51ae3          	bne	a0,a5,800037fc <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000382c:	00090493          	mv	s1,s2
    80003830:	0080006f          	j	80003838 <_Z9getStringPci+0x90>
    80003834:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003838:	009984b3          	add	s1,s3,s1
    8000383c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003840:	00000613          	li	a2,0
    80003844:	00100593          	li	a1,1
    80003848:	00005517          	auipc	a0,0x5
    8000384c:	12050513          	addi	a0,a0,288 # 80008968 <lockPrint>
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	8f4080e7          	jalr	-1804(ra) # 80001144 <copy_and_swap>
    80003858:	fe0514e3          	bnez	a0,80003840 <_Z9getStringPci+0x98>
    return buf;
}
    8000385c:	00098513          	mv	a0,s3
    80003860:	02813083          	ld	ra,40(sp)
    80003864:	02013403          	ld	s0,32(sp)
    80003868:	01813483          	ld	s1,24(sp)
    8000386c:	01013903          	ld	s2,16(sp)
    80003870:	00813983          	ld	s3,8(sp)
    80003874:	00013a03          	ld	s4,0(sp)
    80003878:	03010113          	addi	sp,sp,48
    8000387c:	00008067          	ret

0000000080003880 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003880:	ff010113          	addi	sp,sp,-16
    80003884:	00813423          	sd	s0,8(sp)
    80003888:	01010413          	addi	s0,sp,16
    8000388c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003890:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003894:	0006c603          	lbu	a2,0(a3)
    80003898:	fd06071b          	addiw	a4,a2,-48
    8000389c:	0ff77713          	andi	a4,a4,255
    800038a0:	00900793          	li	a5,9
    800038a4:	02e7e063          	bltu	a5,a4,800038c4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800038a8:	0025179b          	slliw	a5,a0,0x2
    800038ac:	00a787bb          	addw	a5,a5,a0
    800038b0:	0017979b          	slliw	a5,a5,0x1
    800038b4:	00168693          	addi	a3,a3,1
    800038b8:	00c787bb          	addw	a5,a5,a2
    800038bc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800038c0:	fd5ff06f          	j	80003894 <_Z11stringToIntPKc+0x14>
    return n;
}
    800038c4:	00813403          	ld	s0,8(sp)
    800038c8:	01010113          	addi	sp,sp,16
    800038cc:	00008067          	ret

00000000800038d0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800038d0:	fc010113          	addi	sp,sp,-64
    800038d4:	02113c23          	sd	ra,56(sp)
    800038d8:	02813823          	sd	s0,48(sp)
    800038dc:	02913423          	sd	s1,40(sp)
    800038e0:	03213023          	sd	s2,32(sp)
    800038e4:	01313c23          	sd	s3,24(sp)
    800038e8:	04010413          	addi	s0,sp,64
    800038ec:	00050493          	mv	s1,a0
    800038f0:	00058913          	mv	s2,a1
    800038f4:	00060993          	mv	s3,a2
    LOCK();
    800038f8:	00100613          	li	a2,1
    800038fc:	00000593          	li	a1,0
    80003900:	00005517          	auipc	a0,0x5
    80003904:	06850513          	addi	a0,a0,104 # 80008968 <lockPrint>
    80003908:	ffffe097          	auipc	ra,0xffffe
    8000390c:	83c080e7          	jalr	-1988(ra) # 80001144 <copy_and_swap>
    80003910:	00050863          	beqz	a0,80003920 <_Z8printIntiii+0x50>
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	9dc080e7          	jalr	-1572(ra) # 800012f0 <_Z15thread_dispatchv>
    8000391c:	fddff06f          	j	800038f8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003920:	00098463          	beqz	s3,80003928 <_Z8printIntiii+0x58>
    80003924:	0804c463          	bltz	s1,800039ac <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003928:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000392c:	00000593          	li	a1,0
    }

    i = 0;
    80003930:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003934:	0009079b          	sext.w	a5,s2
    80003938:	0325773b          	remuw	a4,a0,s2
    8000393c:	00048613          	mv	a2,s1
    80003940:	0014849b          	addiw	s1,s1,1
    80003944:	02071693          	slli	a3,a4,0x20
    80003948:	0206d693          	srli	a3,a3,0x20
    8000394c:	00005717          	auipc	a4,0x5
    80003950:	f4470713          	addi	a4,a4,-188 # 80008890 <digits>
    80003954:	00d70733          	add	a4,a4,a3
    80003958:	00074683          	lbu	a3,0(a4)
    8000395c:	fd040713          	addi	a4,s0,-48
    80003960:	00c70733          	add	a4,a4,a2
    80003964:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003968:	0005071b          	sext.w	a4,a0
    8000396c:	0325553b          	divuw	a0,a0,s2
    80003970:	fcf772e3          	bgeu	a4,a5,80003934 <_Z8printIntiii+0x64>
    if(neg)
    80003974:	00058c63          	beqz	a1,8000398c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80003978:	fd040793          	addi	a5,s0,-48
    8000397c:	009784b3          	add	s1,a5,s1
    80003980:	02d00793          	li	a5,45
    80003984:	fef48823          	sb	a5,-16(s1)
    80003988:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000398c:	fff4849b          	addiw	s1,s1,-1
    80003990:	0204c463          	bltz	s1,800039b8 <_Z8printIntiii+0xe8>
        __putc(buf[i]);
    80003994:	fd040793          	addi	a5,s0,-48
    80003998:	009787b3          	add	a5,a5,s1
    8000399c:	ff07c503          	lbu	a0,-16(a5)
    800039a0:	00003097          	auipc	ra,0x3
    800039a4:	a5c080e7          	jalr	-1444(ra) # 800063fc <__putc>
    800039a8:	fe5ff06f          	j	8000398c <_Z8printIntiii+0xbc>
        x = -xx;
    800039ac:	4090053b          	negw	a0,s1
        neg = 1;
    800039b0:	00100593          	li	a1,1
        x = -xx;
    800039b4:	f7dff06f          	j	80003930 <_Z8printIntiii+0x60>

    UNLOCK();
    800039b8:	00000613          	li	a2,0
    800039bc:	00100593          	li	a1,1
    800039c0:	00005517          	auipc	a0,0x5
    800039c4:	fa850513          	addi	a0,a0,-88 # 80008968 <lockPrint>
    800039c8:	ffffd097          	auipc	ra,0xffffd
    800039cc:	77c080e7          	jalr	1916(ra) # 80001144 <copy_and_swap>
    800039d0:	fe0514e3          	bnez	a0,800039b8 <_Z8printIntiii+0xe8>
    800039d4:	03813083          	ld	ra,56(sp)
    800039d8:	03013403          	ld	s0,48(sp)
    800039dc:	02813483          	ld	s1,40(sp)
    800039e0:	02013903          	ld	s2,32(sp)
    800039e4:	01813983          	ld	s3,24(sp)
    800039e8:	04010113          	addi	sp,sp,64
    800039ec:	00008067          	ret

00000000800039f0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800039f0:	ff010113          	addi	sp,sp,-16
    800039f4:	00113423          	sd	ra,8(sp)
    800039f8:	00813023          	sd	s0,0(sp)
    800039fc:	01010413          	addi	s0,sp,16
    printString("Unesite broj testa? [1-7]\n");
    80003a00:	00004517          	auipc	a0,0x4
    80003a04:	83850513          	addi	a0,a0,-1992 # 80007238 <CONSOLE_STATUS+0x228>
    80003a08:	00000097          	auipc	ra,0x0
    80003a0c:	d18080e7          	jalr	-744(ra) # 80003720 <_Z11printStringPKc>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
#endif
            break;
        case 3:
#if LEVEL_3_IMPLEMENTED == 1
            producerConsumer_C_API();
    80003a10:	fffff097          	auipc	ra,0xfffff
    80003a14:	b94080e7          	jalr	-1132(ra) # 800025a4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80003a18:	00004517          	auipc	a0,0x4
    80003a1c:	84050513          	addi	a0,a0,-1984 # 80007258 <CONSOLE_STATUS+0x248>
    80003a20:	00000097          	auipc	ra,0x0
    80003a24:	d00080e7          	jalr	-768(ra) # 80003720 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80003a28:	00813083          	ld	ra,8(sp)
    80003a2c:	00013403          	ld	s0,0(sp)
    80003a30:	01010113          	addi	sp,sp,16
    80003a34:	00008067          	ret

0000000080003a38 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003a38:	fe010113          	addi	sp,sp,-32
    80003a3c:	00113c23          	sd	ra,24(sp)
    80003a40:	00813823          	sd	s0,16(sp)
    80003a44:	00913423          	sd	s1,8(sp)
    80003a48:	01213023          	sd	s2,0(sp)
    80003a4c:	02010413          	addi	s0,sp,32
    80003a50:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003a54:	00100793          	li	a5,1
    80003a58:	02a7f863          	bgeu	a5,a0,80003a88 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a5c:	00a00793          	li	a5,10
    80003a60:	02f577b3          	remu	a5,a0,a5
    80003a64:	02078e63          	beqz	a5,80003aa0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003a68:	fff48513          	addi	a0,s1,-1
    80003a6c:	00000097          	auipc	ra,0x0
    80003a70:	fcc080e7          	jalr	-52(ra) # 80003a38 <_ZL9fibonaccim>
    80003a74:	00050913          	mv	s2,a0
    80003a78:	ffe48513          	addi	a0,s1,-2
    80003a7c:	00000097          	auipc	ra,0x0
    80003a80:	fbc080e7          	jalr	-68(ra) # 80003a38 <_ZL9fibonaccim>
    80003a84:	00a90533          	add	a0,s2,a0
}
    80003a88:	01813083          	ld	ra,24(sp)
    80003a8c:	01013403          	ld	s0,16(sp)
    80003a90:	00813483          	ld	s1,8(sp)
    80003a94:	00013903          	ld	s2,0(sp)
    80003a98:	02010113          	addi	sp,sp,32
    80003a9c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003aa0:	ffffe097          	auipc	ra,0xffffe
    80003aa4:	850080e7          	jalr	-1968(ra) # 800012f0 <_Z15thread_dispatchv>
    80003aa8:	fc1ff06f          	j	80003a68 <_ZL9fibonaccim+0x30>

0000000080003aac <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003aac:	fe010113          	addi	sp,sp,-32
    80003ab0:	00113c23          	sd	ra,24(sp)
    80003ab4:	00813823          	sd	s0,16(sp)
    80003ab8:	00913423          	sd	s1,8(sp)
    80003abc:	01213023          	sd	s2,0(sp)
    80003ac0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003ac4:	00a00493          	li	s1,10
    80003ac8:	0400006f          	j	80003b08 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003acc:	00003517          	auipc	a0,0x3
    80003ad0:	6c450513          	addi	a0,a0,1732 # 80007190 <CONSOLE_STATUS+0x180>
    80003ad4:	00000097          	auipc	ra,0x0
    80003ad8:	c4c080e7          	jalr	-948(ra) # 80003720 <_Z11printStringPKc>
    80003adc:	00000613          	li	a2,0
    80003ae0:	00a00593          	li	a1,10
    80003ae4:	00048513          	mv	a0,s1
    80003ae8:	00000097          	auipc	ra,0x0
    80003aec:	de8080e7          	jalr	-536(ra) # 800038d0 <_Z8printIntiii>
    80003af0:	00003517          	auipc	a0,0x3
    80003af4:	60050513          	addi	a0,a0,1536 # 800070f0 <CONSOLE_STATUS+0xe0>
    80003af8:	00000097          	auipc	ra,0x0
    80003afc:	c28080e7          	jalr	-984(ra) # 80003720 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003b00:	0014849b          	addiw	s1,s1,1
    80003b04:	0ff4f493          	andi	s1,s1,255
    80003b08:	00c00793          	li	a5,12
    80003b0c:	fc97f0e3          	bgeu	a5,s1,80003acc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003b10:	00003517          	auipc	a0,0x3
    80003b14:	68850513          	addi	a0,a0,1672 # 80007198 <CONSOLE_STATUS+0x188>
    80003b18:	00000097          	auipc	ra,0x0
    80003b1c:	c08080e7          	jalr	-1016(ra) # 80003720 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003b20:	00500313          	li	t1,5
    thread_dispatch();
    80003b24:	ffffd097          	auipc	ra,0xffffd
    80003b28:	7cc080e7          	jalr	1996(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003b2c:	01000513          	li	a0,16
    80003b30:	00000097          	auipc	ra,0x0
    80003b34:	f08080e7          	jalr	-248(ra) # 80003a38 <_ZL9fibonaccim>
    80003b38:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003b3c:	00003517          	auipc	a0,0x3
    80003b40:	66c50513          	addi	a0,a0,1644 # 800071a8 <CONSOLE_STATUS+0x198>
    80003b44:	00000097          	auipc	ra,0x0
    80003b48:	bdc080e7          	jalr	-1060(ra) # 80003720 <_Z11printStringPKc>
    80003b4c:	00000613          	li	a2,0
    80003b50:	00a00593          	li	a1,10
    80003b54:	0009051b          	sext.w	a0,s2
    80003b58:	00000097          	auipc	ra,0x0
    80003b5c:	d78080e7          	jalr	-648(ra) # 800038d0 <_Z8printIntiii>
    80003b60:	00003517          	auipc	a0,0x3
    80003b64:	59050513          	addi	a0,a0,1424 # 800070f0 <CONSOLE_STATUS+0xe0>
    80003b68:	00000097          	auipc	ra,0x0
    80003b6c:	bb8080e7          	jalr	-1096(ra) # 80003720 <_Z11printStringPKc>
    80003b70:	0400006f          	j	80003bb0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b74:	00003517          	auipc	a0,0x3
    80003b78:	61c50513          	addi	a0,a0,1564 # 80007190 <CONSOLE_STATUS+0x180>
    80003b7c:	00000097          	auipc	ra,0x0
    80003b80:	ba4080e7          	jalr	-1116(ra) # 80003720 <_Z11printStringPKc>
    80003b84:	00000613          	li	a2,0
    80003b88:	00a00593          	li	a1,10
    80003b8c:	00048513          	mv	a0,s1
    80003b90:	00000097          	auipc	ra,0x0
    80003b94:	d40080e7          	jalr	-704(ra) # 800038d0 <_Z8printIntiii>
    80003b98:	00003517          	auipc	a0,0x3
    80003b9c:	55850513          	addi	a0,a0,1368 # 800070f0 <CONSOLE_STATUS+0xe0>
    80003ba0:	00000097          	auipc	ra,0x0
    80003ba4:	b80080e7          	jalr	-1152(ra) # 80003720 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003ba8:	0014849b          	addiw	s1,s1,1
    80003bac:	0ff4f493          	andi	s1,s1,255
    80003bb0:	00f00793          	li	a5,15
    80003bb4:	fc97f0e3          	bgeu	a5,s1,80003b74 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003bb8:	00003517          	auipc	a0,0x3
    80003bbc:	60050513          	addi	a0,a0,1536 # 800071b8 <CONSOLE_STATUS+0x1a8>
    80003bc0:	00000097          	auipc	ra,0x0
    80003bc4:	b60080e7          	jalr	-1184(ra) # 80003720 <_Z11printStringPKc>
    finishedD = true;
    80003bc8:	00100793          	li	a5,1
    80003bcc:	00005717          	auipc	a4,0x5
    80003bd0:	daf70223          	sb	a5,-604(a4) # 80008970 <_ZL9finishedD>
    thread_dispatch();
    80003bd4:	ffffd097          	auipc	ra,0xffffd
    80003bd8:	71c080e7          	jalr	1820(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003bdc:	01813083          	ld	ra,24(sp)
    80003be0:	01013403          	ld	s0,16(sp)
    80003be4:	00813483          	ld	s1,8(sp)
    80003be8:	00013903          	ld	s2,0(sp)
    80003bec:	02010113          	addi	sp,sp,32
    80003bf0:	00008067          	ret

0000000080003bf4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003bf4:	fe010113          	addi	sp,sp,-32
    80003bf8:	00113c23          	sd	ra,24(sp)
    80003bfc:	00813823          	sd	s0,16(sp)
    80003c00:	00913423          	sd	s1,8(sp)
    80003c04:	01213023          	sd	s2,0(sp)
    80003c08:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003c0c:	00000493          	li	s1,0
    80003c10:	0400006f          	j	80003c50 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003c14:	00003517          	auipc	a0,0x3
    80003c18:	54c50513          	addi	a0,a0,1356 # 80007160 <CONSOLE_STATUS+0x150>
    80003c1c:	00000097          	auipc	ra,0x0
    80003c20:	b04080e7          	jalr	-1276(ra) # 80003720 <_Z11printStringPKc>
    80003c24:	00000613          	li	a2,0
    80003c28:	00a00593          	li	a1,10
    80003c2c:	00048513          	mv	a0,s1
    80003c30:	00000097          	auipc	ra,0x0
    80003c34:	ca0080e7          	jalr	-864(ra) # 800038d0 <_Z8printIntiii>
    80003c38:	00003517          	auipc	a0,0x3
    80003c3c:	4b850513          	addi	a0,a0,1208 # 800070f0 <CONSOLE_STATUS+0xe0>
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	ae0080e7          	jalr	-1312(ra) # 80003720 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003c48:	0014849b          	addiw	s1,s1,1
    80003c4c:	0ff4f493          	andi	s1,s1,255
    80003c50:	00200793          	li	a5,2
    80003c54:	fc97f0e3          	bgeu	a5,s1,80003c14 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003c58:	00003517          	auipc	a0,0x3
    80003c5c:	51050513          	addi	a0,a0,1296 # 80007168 <CONSOLE_STATUS+0x158>
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	ac0080e7          	jalr	-1344(ra) # 80003720 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c68:	00700313          	li	t1,7
    thread_dispatch();
    80003c6c:	ffffd097          	auipc	ra,0xffffd
    80003c70:	684080e7          	jalr	1668(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c74:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003c78:	00003517          	auipc	a0,0x3
    80003c7c:	50050513          	addi	a0,a0,1280 # 80007178 <CONSOLE_STATUS+0x168>
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	aa0080e7          	jalr	-1376(ra) # 80003720 <_Z11printStringPKc>
    80003c88:	00000613          	li	a2,0
    80003c8c:	00a00593          	li	a1,10
    80003c90:	0009051b          	sext.w	a0,s2
    80003c94:	00000097          	auipc	ra,0x0
    80003c98:	c3c080e7          	jalr	-964(ra) # 800038d0 <_Z8printIntiii>
    80003c9c:	00003517          	auipc	a0,0x3
    80003ca0:	45450513          	addi	a0,a0,1108 # 800070f0 <CONSOLE_STATUS+0xe0>
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	a7c080e7          	jalr	-1412(ra) # 80003720 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003cac:	00c00513          	li	a0,12
    80003cb0:	00000097          	auipc	ra,0x0
    80003cb4:	d88080e7          	jalr	-632(ra) # 80003a38 <_ZL9fibonaccim>
    80003cb8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003cbc:	00003517          	auipc	a0,0x3
    80003cc0:	4c450513          	addi	a0,a0,1220 # 80007180 <CONSOLE_STATUS+0x170>
    80003cc4:	00000097          	auipc	ra,0x0
    80003cc8:	a5c080e7          	jalr	-1444(ra) # 80003720 <_Z11printStringPKc>
    80003ccc:	00000613          	li	a2,0
    80003cd0:	00a00593          	li	a1,10
    80003cd4:	0009051b          	sext.w	a0,s2
    80003cd8:	00000097          	auipc	ra,0x0
    80003cdc:	bf8080e7          	jalr	-1032(ra) # 800038d0 <_Z8printIntiii>
    80003ce0:	00003517          	auipc	a0,0x3
    80003ce4:	41050513          	addi	a0,a0,1040 # 800070f0 <CONSOLE_STATUS+0xe0>
    80003ce8:	00000097          	auipc	ra,0x0
    80003cec:	a38080e7          	jalr	-1480(ra) # 80003720 <_Z11printStringPKc>
    80003cf0:	0400006f          	j	80003d30 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003cf4:	00003517          	auipc	a0,0x3
    80003cf8:	46c50513          	addi	a0,a0,1132 # 80007160 <CONSOLE_STATUS+0x150>
    80003cfc:	00000097          	auipc	ra,0x0
    80003d00:	a24080e7          	jalr	-1500(ra) # 80003720 <_Z11printStringPKc>
    80003d04:	00000613          	li	a2,0
    80003d08:	00a00593          	li	a1,10
    80003d0c:	00048513          	mv	a0,s1
    80003d10:	00000097          	auipc	ra,0x0
    80003d14:	bc0080e7          	jalr	-1088(ra) # 800038d0 <_Z8printIntiii>
    80003d18:	00003517          	auipc	a0,0x3
    80003d1c:	3d850513          	addi	a0,a0,984 # 800070f0 <CONSOLE_STATUS+0xe0>
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	a00080e7          	jalr	-1536(ra) # 80003720 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003d28:	0014849b          	addiw	s1,s1,1
    80003d2c:	0ff4f493          	andi	s1,s1,255
    80003d30:	00500793          	li	a5,5
    80003d34:	fc97f0e3          	bgeu	a5,s1,80003cf4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003d38:	00003517          	auipc	a0,0x3
    80003d3c:	40050513          	addi	a0,a0,1024 # 80007138 <CONSOLE_STATUS+0x128>
    80003d40:	00000097          	auipc	ra,0x0
    80003d44:	9e0080e7          	jalr	-1568(ra) # 80003720 <_Z11printStringPKc>
    finishedC = true;
    80003d48:	00100793          	li	a5,1
    80003d4c:	00005717          	auipc	a4,0x5
    80003d50:	c2f702a3          	sb	a5,-987(a4) # 80008971 <_ZL9finishedC>
    thread_dispatch();
    80003d54:	ffffd097          	auipc	ra,0xffffd
    80003d58:	59c080e7          	jalr	1436(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003d5c:	01813083          	ld	ra,24(sp)
    80003d60:	01013403          	ld	s0,16(sp)
    80003d64:	00813483          	ld	s1,8(sp)
    80003d68:	00013903          	ld	s2,0(sp)
    80003d6c:	02010113          	addi	sp,sp,32
    80003d70:	00008067          	ret

0000000080003d74 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003d74:	fe010113          	addi	sp,sp,-32
    80003d78:	00113c23          	sd	ra,24(sp)
    80003d7c:	00813823          	sd	s0,16(sp)
    80003d80:	00913423          	sd	s1,8(sp)
    80003d84:	01213023          	sd	s2,0(sp)
    80003d88:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003d8c:	00000913          	li	s2,0
    80003d90:	0400006f          	j	80003dd0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003d94:	ffffd097          	auipc	ra,0xffffd
    80003d98:	55c080e7          	jalr	1372(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003d9c:	00148493          	addi	s1,s1,1
    80003da0:	000027b7          	lui	a5,0x2
    80003da4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003da8:	0097ee63          	bltu	a5,s1,80003dc4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003dac:	00000713          	li	a4,0
    80003db0:	000077b7          	lui	a5,0x7
    80003db4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003db8:	fce7eee3          	bltu	a5,a4,80003d94 <_ZL11workerBodyBPv+0x20>
    80003dbc:	00170713          	addi	a4,a4,1
    80003dc0:	ff1ff06f          	j	80003db0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003dc4:	00a00793          	li	a5,10
    80003dc8:	04f90663          	beq	s2,a5,80003e14 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003dcc:	00190913          	addi	s2,s2,1
    80003dd0:	00f00793          	li	a5,15
    80003dd4:	0527e463          	bltu	a5,s2,80003e1c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80003dd8:	00003517          	auipc	a0,0x3
    80003ddc:	37050513          	addi	a0,a0,880 # 80007148 <CONSOLE_STATUS+0x138>
    80003de0:	00000097          	auipc	ra,0x0
    80003de4:	940080e7          	jalr	-1728(ra) # 80003720 <_Z11printStringPKc>
    80003de8:	00000613          	li	a2,0
    80003dec:	00a00593          	li	a1,10
    80003df0:	0009051b          	sext.w	a0,s2
    80003df4:	00000097          	auipc	ra,0x0
    80003df8:	adc080e7          	jalr	-1316(ra) # 800038d0 <_Z8printIntiii>
    80003dfc:	00003517          	auipc	a0,0x3
    80003e00:	2f450513          	addi	a0,a0,756 # 800070f0 <CONSOLE_STATUS+0xe0>
    80003e04:	00000097          	auipc	ra,0x0
    80003e08:	91c080e7          	jalr	-1764(ra) # 80003720 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e0c:	00000493          	li	s1,0
    80003e10:	f91ff06f          	j	80003da0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003e14:	14102ff3          	csrr	t6,sepc
    80003e18:	fb5ff06f          	j	80003dcc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80003e1c:	00003517          	auipc	a0,0x3
    80003e20:	33450513          	addi	a0,a0,820 # 80007150 <CONSOLE_STATUS+0x140>
    80003e24:	00000097          	auipc	ra,0x0
    80003e28:	8fc080e7          	jalr	-1796(ra) # 80003720 <_Z11printStringPKc>
    finishedB = true;
    80003e2c:	00100793          	li	a5,1
    80003e30:	00005717          	auipc	a4,0x5
    80003e34:	b4f70123          	sb	a5,-1214(a4) # 80008972 <_ZL9finishedB>
    thread_dispatch();
    80003e38:	ffffd097          	auipc	ra,0xffffd
    80003e3c:	4b8080e7          	jalr	1208(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003e40:	01813083          	ld	ra,24(sp)
    80003e44:	01013403          	ld	s0,16(sp)
    80003e48:	00813483          	ld	s1,8(sp)
    80003e4c:	00013903          	ld	s2,0(sp)
    80003e50:	02010113          	addi	sp,sp,32
    80003e54:	00008067          	ret

0000000080003e58 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003e58:	fe010113          	addi	sp,sp,-32
    80003e5c:	00113c23          	sd	ra,24(sp)
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00913423          	sd	s1,8(sp)
    80003e68:	01213023          	sd	s2,0(sp)
    80003e6c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003e70:	00000913          	li	s2,0
    80003e74:	0380006f          	j	80003eac <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003e78:	ffffd097          	auipc	ra,0xffffd
    80003e7c:	478080e7          	jalr	1144(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e80:	00148493          	addi	s1,s1,1
    80003e84:	000027b7          	lui	a5,0x2
    80003e88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e8c:	0097ee63          	bltu	a5,s1,80003ea8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e90:	00000713          	li	a4,0
    80003e94:	000077b7          	lui	a5,0x7
    80003e98:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e9c:	fce7eee3          	bltu	a5,a4,80003e78 <_ZL11workerBodyAPv+0x20>
    80003ea0:	00170713          	addi	a4,a4,1
    80003ea4:	ff1ff06f          	j	80003e94 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003ea8:	00190913          	addi	s2,s2,1
    80003eac:	00900793          	li	a5,9
    80003eb0:	0527e063          	bltu	a5,s2,80003ef0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003eb4:	00003517          	auipc	a0,0x3
    80003eb8:	27c50513          	addi	a0,a0,636 # 80007130 <CONSOLE_STATUS+0x120>
    80003ebc:	00000097          	auipc	ra,0x0
    80003ec0:	864080e7          	jalr	-1948(ra) # 80003720 <_Z11printStringPKc>
    80003ec4:	00000613          	li	a2,0
    80003ec8:	00a00593          	li	a1,10
    80003ecc:	0009051b          	sext.w	a0,s2
    80003ed0:	00000097          	auipc	ra,0x0
    80003ed4:	a00080e7          	jalr	-1536(ra) # 800038d0 <_Z8printIntiii>
    80003ed8:	00003517          	auipc	a0,0x3
    80003edc:	21850513          	addi	a0,a0,536 # 800070f0 <CONSOLE_STATUS+0xe0>
    80003ee0:	00000097          	auipc	ra,0x0
    80003ee4:	840080e7          	jalr	-1984(ra) # 80003720 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ee8:	00000493          	li	s1,0
    80003eec:	f99ff06f          	j	80003e84 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003ef0:	00003517          	auipc	a0,0x3
    80003ef4:	24850513          	addi	a0,a0,584 # 80007138 <CONSOLE_STATUS+0x128>
    80003ef8:	00000097          	auipc	ra,0x0
    80003efc:	828080e7          	jalr	-2008(ra) # 80003720 <_Z11printStringPKc>
    finishedA = true;
    80003f00:	00100793          	li	a5,1
    80003f04:	00005717          	auipc	a4,0x5
    80003f08:	a6f707a3          	sb	a5,-1425(a4) # 80008973 <_ZL9finishedA>
}
    80003f0c:	01813083          	ld	ra,24(sp)
    80003f10:	01013403          	ld	s0,16(sp)
    80003f14:	00813483          	ld	s1,8(sp)
    80003f18:	00013903          	ld	s2,0(sp)
    80003f1c:	02010113          	addi	sp,sp,32
    80003f20:	00008067          	ret

0000000080003f24 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80003f24:	fd010113          	addi	sp,sp,-48
    80003f28:	02113423          	sd	ra,40(sp)
    80003f2c:	02813023          	sd	s0,32(sp)
    80003f30:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003f34:	00000613          	li	a2,0
    80003f38:	00000597          	auipc	a1,0x0
    80003f3c:	f2058593          	addi	a1,a1,-224 # 80003e58 <_ZL11workerBodyAPv>
    80003f40:	fd040513          	addi	a0,s0,-48
    80003f44:	ffffd097          	auipc	ra,0xffffd
    80003f48:	2d8080e7          	jalr	728(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80003f4c:	00003517          	auipc	a0,0x3
    80003f50:	27c50513          	addi	a0,a0,636 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80003f54:	fffff097          	auipc	ra,0xfffff
    80003f58:	7cc080e7          	jalr	1996(ra) # 80003720 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003f5c:	00000613          	li	a2,0
    80003f60:	00000597          	auipc	a1,0x0
    80003f64:	e1458593          	addi	a1,a1,-492 # 80003d74 <_ZL11workerBodyBPv>
    80003f68:	fd840513          	addi	a0,s0,-40
    80003f6c:	ffffd097          	auipc	ra,0xffffd
    80003f70:	2b0080e7          	jalr	688(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    80003f74:	00003517          	auipc	a0,0x3
    80003f78:	26c50513          	addi	a0,a0,620 # 800071e0 <CONSOLE_STATUS+0x1d0>
    80003f7c:	fffff097          	auipc	ra,0xfffff
    80003f80:	7a4080e7          	jalr	1956(ra) # 80003720 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003f84:	00000613          	li	a2,0
    80003f88:	00000597          	auipc	a1,0x0
    80003f8c:	c6c58593          	addi	a1,a1,-916 # 80003bf4 <_ZL11workerBodyCPv>
    80003f90:	fe040513          	addi	a0,s0,-32
    80003f94:	ffffd097          	auipc	ra,0xffffd
    80003f98:	288080e7          	jalr	648(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    80003f9c:	00003517          	auipc	a0,0x3
    80003fa0:	25c50513          	addi	a0,a0,604 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80003fa4:	fffff097          	auipc	ra,0xfffff
    80003fa8:	77c080e7          	jalr	1916(ra) # 80003720 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003fac:	00000613          	li	a2,0
    80003fb0:	00000597          	auipc	a1,0x0
    80003fb4:	afc58593          	addi	a1,a1,-1284 # 80003aac <_ZL11workerBodyDPv>
    80003fb8:	fe840513          	addi	a0,s0,-24
    80003fbc:	ffffd097          	auipc	ra,0xffffd
    80003fc0:	260080e7          	jalr	608(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    80003fc4:	00003517          	auipc	a0,0x3
    80003fc8:	24c50513          	addi	a0,a0,588 # 80007210 <CONSOLE_STATUS+0x200>
    80003fcc:	fffff097          	auipc	ra,0xfffff
    80003fd0:	754080e7          	jalr	1876(ra) # 80003720 <_Z11printStringPKc>
    80003fd4:	00c0006f          	j	80003fe0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003fd8:	ffffd097          	auipc	ra,0xffffd
    80003fdc:	318080e7          	jalr	792(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003fe0:	00005797          	auipc	a5,0x5
    80003fe4:	9937c783          	lbu	a5,-1645(a5) # 80008973 <_ZL9finishedA>
    80003fe8:	fe0788e3          	beqz	a5,80003fd8 <_Z16System_Mode_testv+0xb4>
    80003fec:	00005797          	auipc	a5,0x5
    80003ff0:	9867c783          	lbu	a5,-1658(a5) # 80008972 <_ZL9finishedB>
    80003ff4:	fe0782e3          	beqz	a5,80003fd8 <_Z16System_Mode_testv+0xb4>
    80003ff8:	00005797          	auipc	a5,0x5
    80003ffc:	9797c783          	lbu	a5,-1671(a5) # 80008971 <_ZL9finishedC>
    80004000:	fc078ce3          	beqz	a5,80003fd8 <_Z16System_Mode_testv+0xb4>
    80004004:	00005797          	auipc	a5,0x5
    80004008:	96c7c783          	lbu	a5,-1684(a5) # 80008970 <_ZL9finishedD>
    8000400c:	fc0786e3          	beqz	a5,80003fd8 <_Z16System_Mode_testv+0xb4>
    }

}
    80004010:	02813083          	ld	ra,40(sp)
    80004014:	02013403          	ld	s0,32(sp)
    80004018:	03010113          	addi	sp,sp,48
    8000401c:	00008067          	ret

0000000080004020 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004020:	fe010113          	addi	sp,sp,-32
    80004024:	00113c23          	sd	ra,24(sp)
    80004028:	00813823          	sd	s0,16(sp)
    8000402c:	00913423          	sd	s1,8(sp)
    80004030:	01213023          	sd	s2,0(sp)
    80004034:	02010413          	addi	s0,sp,32
    80004038:	00050493          	mv	s1,a0
    8000403c:	00058913          	mv	s2,a1
    80004040:	0015879b          	addiw	a5,a1,1
    80004044:	0007851b          	sext.w	a0,a5
    80004048:	00f4a023          	sw	a5,0(s1)
    8000404c:	0004a823          	sw	zero,16(s1)
    80004050:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004054:	00251513          	slli	a0,a0,0x2
    80004058:	ffffd097          	auipc	ra,0xffffd
    8000405c:	10c080e7          	jalr	268(ra) # 80001164 <_Z9mem_allocm>
    80004060:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004064:	00000593          	li	a1,0
    80004068:	02048513          	addi	a0,s1,32
    8000406c:	ffffd097          	auipc	ra,0xffffd
    80004070:	2a4080e7          	jalr	676(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&spaceAvailable, _cap);
    80004074:	00090593          	mv	a1,s2
    80004078:	01848513          	addi	a0,s1,24
    8000407c:	ffffd097          	auipc	ra,0xffffd
    80004080:	294080e7          	jalr	660(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexHead, 1);
    80004084:	00100593          	li	a1,1
    80004088:	02848513          	addi	a0,s1,40
    8000408c:	ffffd097          	auipc	ra,0xffffd
    80004090:	284080e7          	jalr	644(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexTail, 1);
    80004094:	00100593          	li	a1,1
    80004098:	03048513          	addi	a0,s1,48
    8000409c:	ffffd097          	auipc	ra,0xffffd
    800040a0:	274080e7          	jalr	628(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
}
    800040a4:	01813083          	ld	ra,24(sp)
    800040a8:	01013403          	ld	s0,16(sp)
    800040ac:	00813483          	ld	s1,8(sp)
    800040b0:	00013903          	ld	s2,0(sp)
    800040b4:	02010113          	addi	sp,sp,32
    800040b8:	00008067          	ret

00000000800040bc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800040bc:	fe010113          	addi	sp,sp,-32
    800040c0:	00113c23          	sd	ra,24(sp)
    800040c4:	00813823          	sd	s0,16(sp)
    800040c8:	00913423          	sd	s1,8(sp)
    800040cc:	01213023          	sd	s2,0(sp)
    800040d0:	02010413          	addi	s0,sp,32
    800040d4:	00050493          	mv	s1,a0
    800040d8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800040dc:	01853503          	ld	a0,24(a0)
    800040e0:	ffffd097          	auipc	ra,0xffffd
    800040e4:	294080e7          	jalr	660(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexTail);
    800040e8:	0304b503          	ld	a0,48(s1)
    800040ec:	ffffd097          	auipc	ra,0xffffd
    800040f0:	288080e7          	jalr	648(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    buffer[tail] = val;
    800040f4:	0084b783          	ld	a5,8(s1)
    800040f8:	0144a703          	lw	a4,20(s1)
    800040fc:	00271713          	slli	a4,a4,0x2
    80004100:	00e787b3          	add	a5,a5,a4
    80004104:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004108:	0144a783          	lw	a5,20(s1)
    8000410c:	0017879b          	addiw	a5,a5,1
    80004110:	0004a703          	lw	a4,0(s1)
    80004114:	02e7e7bb          	remw	a5,a5,a4
    80004118:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000411c:	0304b503          	ld	a0,48(s1)
    80004120:	ffffd097          	auipc	ra,0xffffd
    80004124:	280080e7          	jalr	640(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    sem_signal(itemAvailable);
    80004128:	0204b503          	ld	a0,32(s1)
    8000412c:	ffffd097          	auipc	ra,0xffffd
    80004130:	274080e7          	jalr	628(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

}
    80004134:	01813083          	ld	ra,24(sp)
    80004138:	01013403          	ld	s0,16(sp)
    8000413c:	00813483          	ld	s1,8(sp)
    80004140:	00013903          	ld	s2,0(sp)
    80004144:	02010113          	addi	sp,sp,32
    80004148:	00008067          	ret

000000008000414c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000414c:	fe010113          	addi	sp,sp,-32
    80004150:	00113c23          	sd	ra,24(sp)
    80004154:	00813823          	sd	s0,16(sp)
    80004158:	00913423          	sd	s1,8(sp)
    8000415c:	01213023          	sd	s2,0(sp)
    80004160:	02010413          	addi	s0,sp,32
    80004164:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004168:	02053503          	ld	a0,32(a0)
    8000416c:	ffffd097          	auipc	ra,0xffffd
    80004170:	208080e7          	jalr	520(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexHead);
    80004174:	0284b503          	ld	a0,40(s1)
    80004178:	ffffd097          	auipc	ra,0xffffd
    8000417c:	1fc080e7          	jalr	508(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    int ret = buffer[head];
    80004180:	0084b703          	ld	a4,8(s1)
    80004184:	0104a783          	lw	a5,16(s1)
    80004188:	00279693          	slli	a3,a5,0x2
    8000418c:	00d70733          	add	a4,a4,a3
    80004190:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004194:	0017879b          	addiw	a5,a5,1
    80004198:	0004a703          	lw	a4,0(s1)
    8000419c:	02e7e7bb          	remw	a5,a5,a4
    800041a0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800041a4:	0284b503          	ld	a0,40(s1)
    800041a8:	ffffd097          	auipc	ra,0xffffd
    800041ac:	1f8080e7          	jalr	504(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    sem_signal(spaceAvailable);
    800041b0:	0184b503          	ld	a0,24(s1)
    800041b4:	ffffd097          	auipc	ra,0xffffd
    800041b8:	1ec080e7          	jalr	492(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    800041bc:	00090513          	mv	a0,s2
    800041c0:	01813083          	ld	ra,24(sp)
    800041c4:	01013403          	ld	s0,16(sp)
    800041c8:	00813483          	ld	s1,8(sp)
    800041cc:	00013903          	ld	s2,0(sp)
    800041d0:	02010113          	addi	sp,sp,32
    800041d4:	00008067          	ret

00000000800041d8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800041d8:	fe010113          	addi	sp,sp,-32
    800041dc:	00113c23          	sd	ra,24(sp)
    800041e0:	00813823          	sd	s0,16(sp)
    800041e4:	00913423          	sd	s1,8(sp)
    800041e8:	01213023          	sd	s2,0(sp)
    800041ec:	02010413          	addi	s0,sp,32
    800041f0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800041f4:	02853503          	ld	a0,40(a0)
    800041f8:	ffffd097          	auipc	ra,0xffffd
    800041fc:	17c080e7          	jalr	380(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    sem_wait(mutexTail);
    80004200:	0304b503          	ld	a0,48(s1)
    80004204:	ffffd097          	auipc	ra,0xffffd
    80004208:	170080e7          	jalr	368(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    if (tail >= head) {
    8000420c:	0144a783          	lw	a5,20(s1)
    80004210:	0104a903          	lw	s2,16(s1)
    80004214:	0327ce63          	blt	a5,s2,80004250 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004218:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000421c:	0304b503          	ld	a0,48(s1)
    80004220:	ffffd097          	auipc	ra,0xffffd
    80004224:	180080e7          	jalr	384(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
    sem_signal(mutexHead);
    80004228:	0284b503          	ld	a0,40(s1)
    8000422c:	ffffd097          	auipc	ra,0xffffd
    80004230:	174080e7          	jalr	372(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    80004234:	00090513          	mv	a0,s2
    80004238:	01813083          	ld	ra,24(sp)
    8000423c:	01013403          	ld	s0,16(sp)
    80004240:	00813483          	ld	s1,8(sp)
    80004244:	00013903          	ld	s2,0(sp)
    80004248:	02010113          	addi	sp,sp,32
    8000424c:	00008067          	ret
        ret = cap - head + tail;
    80004250:	0004a703          	lw	a4,0(s1)
    80004254:	4127093b          	subw	s2,a4,s2
    80004258:	00f9093b          	addw	s2,s2,a5
    8000425c:	fc1ff06f          	j	8000421c <_ZN6Buffer6getCntEv+0x44>

0000000080004260 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004260:	fe010113          	addi	sp,sp,-32
    80004264:	00113c23          	sd	ra,24(sp)
    80004268:	00813823          	sd	s0,16(sp)
    8000426c:	00913423          	sd	s1,8(sp)
    80004270:	02010413          	addi	s0,sp,32
    80004274:	00050493          	mv	s1,a0
    __putc('\n');
    80004278:	00a00513          	li	a0,10
    8000427c:	00002097          	auipc	ra,0x2
    80004280:	180080e7          	jalr	384(ra) # 800063fc <__putc>
    printString("Buffer deleted!\n");
    80004284:	00003517          	auipc	a0,0x3
    80004288:	02450513          	addi	a0,a0,36 # 800072a8 <CONSOLE_STATUS+0x298>
    8000428c:	fffff097          	auipc	ra,0xfffff
    80004290:	494080e7          	jalr	1172(ra) # 80003720 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004294:	00048513          	mv	a0,s1
    80004298:	00000097          	auipc	ra,0x0
    8000429c:	f40080e7          	jalr	-192(ra) # 800041d8 <_ZN6Buffer6getCntEv>
    800042a0:	02a05c63          	blez	a0,800042d8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800042a4:	0084b783          	ld	a5,8(s1)
    800042a8:	0104a703          	lw	a4,16(s1)
    800042ac:	00271713          	slli	a4,a4,0x2
    800042b0:	00e787b3          	add	a5,a5,a4
        __putc(ch);
    800042b4:	0007c503          	lbu	a0,0(a5)
    800042b8:	00002097          	auipc	ra,0x2
    800042bc:	144080e7          	jalr	324(ra) # 800063fc <__putc>
        head = (head + 1) % cap;
    800042c0:	0104a783          	lw	a5,16(s1)
    800042c4:	0017879b          	addiw	a5,a5,1
    800042c8:	0004a703          	lw	a4,0(s1)
    800042cc:	02e7e7bb          	remw	a5,a5,a4
    800042d0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800042d4:	fc1ff06f          	j	80004294 <_ZN6BufferD1Ev+0x34>
    __putc('!');
    800042d8:	02100513          	li	a0,33
    800042dc:	00002097          	auipc	ra,0x2
    800042e0:	120080e7          	jalr	288(ra) # 800063fc <__putc>
    __putc('\n');
    800042e4:	00a00513          	li	a0,10
    800042e8:	00002097          	auipc	ra,0x2
    800042ec:	114080e7          	jalr	276(ra) # 800063fc <__putc>
    mem_free(buffer);
    800042f0:	0084b503          	ld	a0,8(s1)
    800042f4:	ffffd097          	auipc	ra,0xffffd
    800042f8:	eb4080e7          	jalr	-332(ra) # 800011a8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800042fc:	0204b503          	ld	a0,32(s1)
    80004300:	ffffd097          	auipc	ra,0xffffd
    80004304:	048080e7          	jalr	72(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(spaceAvailable);
    80004308:	0184b503          	ld	a0,24(s1)
    8000430c:	ffffd097          	auipc	ra,0xffffd
    80004310:	03c080e7          	jalr	60(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexTail);
    80004314:	0304b503          	ld	a0,48(s1)
    80004318:	ffffd097          	auipc	ra,0xffffd
    8000431c:	030080e7          	jalr	48(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexHead);
    80004320:	0284b503          	ld	a0,40(s1)
    80004324:	ffffd097          	auipc	ra,0xffffd
    80004328:	024080e7          	jalr	36(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
}
    8000432c:	01813083          	ld	ra,24(sp)
    80004330:	01013403          	ld	s0,16(sp)
    80004334:	00813483          	ld	s1,8(sp)
    80004338:	02010113          	addi	sp,sp,32
    8000433c:	00008067          	ret

0000000080004340 <start>:
    80004340:	ff010113          	addi	sp,sp,-16
    80004344:	00813423          	sd	s0,8(sp)
    80004348:	01010413          	addi	s0,sp,16
    8000434c:	300027f3          	csrr	a5,mstatus
    80004350:	ffffe737          	lui	a4,0xffffe
    80004354:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff4c1f>
    80004358:	00e7f7b3          	and	a5,a5,a4
    8000435c:	00001737          	lui	a4,0x1
    80004360:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004364:	00e7e7b3          	or	a5,a5,a4
    80004368:	30079073          	csrw	mstatus,a5
    8000436c:	00000797          	auipc	a5,0x0
    80004370:	16078793          	addi	a5,a5,352 # 800044cc <system_main>
    80004374:	34179073          	csrw	mepc,a5
    80004378:	00000793          	li	a5,0
    8000437c:	18079073          	csrw	satp,a5
    80004380:	000107b7          	lui	a5,0x10
    80004384:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004388:	30279073          	csrw	medeleg,a5
    8000438c:	30379073          	csrw	mideleg,a5
    80004390:	104027f3          	csrr	a5,sie
    80004394:	2227e793          	ori	a5,a5,546
    80004398:	10479073          	csrw	sie,a5
    8000439c:	fff00793          	li	a5,-1
    800043a0:	00a7d793          	srli	a5,a5,0xa
    800043a4:	3b079073          	csrw	pmpaddr0,a5
    800043a8:	00f00793          	li	a5,15
    800043ac:	3a079073          	csrw	pmpcfg0,a5
    800043b0:	f14027f3          	csrr	a5,mhartid
    800043b4:	0200c737          	lui	a4,0x200c
    800043b8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800043bc:	0007869b          	sext.w	a3,a5
    800043c0:	00269713          	slli	a4,a3,0x2
    800043c4:	000f4637          	lui	a2,0xf4
    800043c8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800043cc:	00d70733          	add	a4,a4,a3
    800043d0:	0037979b          	slliw	a5,a5,0x3
    800043d4:	020046b7          	lui	a3,0x2004
    800043d8:	00d787b3          	add	a5,a5,a3
    800043dc:	00c585b3          	add	a1,a1,a2
    800043e0:	00371693          	slli	a3,a4,0x3
    800043e4:	00004717          	auipc	a4,0x4
    800043e8:	59c70713          	addi	a4,a4,1436 # 80008980 <timer_scratch>
    800043ec:	00b7b023          	sd	a1,0(a5)
    800043f0:	00d70733          	add	a4,a4,a3
    800043f4:	00f73c23          	sd	a5,24(a4)
    800043f8:	02c73023          	sd	a2,32(a4)
    800043fc:	34071073          	csrw	mscratch,a4
    80004400:	00000797          	auipc	a5,0x0
    80004404:	6e078793          	addi	a5,a5,1760 # 80004ae0 <timervec>
    80004408:	30579073          	csrw	mtvec,a5
    8000440c:	300027f3          	csrr	a5,mstatus
    80004410:	0087e793          	ori	a5,a5,8
    80004414:	30079073          	csrw	mstatus,a5
    80004418:	304027f3          	csrr	a5,mie
    8000441c:	0807e793          	ori	a5,a5,128
    80004420:	30479073          	csrw	mie,a5
    80004424:	f14027f3          	csrr	a5,mhartid
    80004428:	0007879b          	sext.w	a5,a5
    8000442c:	00078213          	mv	tp,a5
    80004430:	30200073          	mret
    80004434:	00813403          	ld	s0,8(sp)
    80004438:	01010113          	addi	sp,sp,16
    8000443c:	00008067          	ret

0000000080004440 <timerinit>:
    80004440:	ff010113          	addi	sp,sp,-16
    80004444:	00813423          	sd	s0,8(sp)
    80004448:	01010413          	addi	s0,sp,16
    8000444c:	f14027f3          	csrr	a5,mhartid
    80004450:	0200c737          	lui	a4,0x200c
    80004454:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004458:	0007869b          	sext.w	a3,a5
    8000445c:	00269713          	slli	a4,a3,0x2
    80004460:	000f4637          	lui	a2,0xf4
    80004464:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004468:	00d70733          	add	a4,a4,a3
    8000446c:	0037979b          	slliw	a5,a5,0x3
    80004470:	020046b7          	lui	a3,0x2004
    80004474:	00d787b3          	add	a5,a5,a3
    80004478:	00c585b3          	add	a1,a1,a2
    8000447c:	00371693          	slli	a3,a4,0x3
    80004480:	00004717          	auipc	a4,0x4
    80004484:	50070713          	addi	a4,a4,1280 # 80008980 <timer_scratch>
    80004488:	00b7b023          	sd	a1,0(a5)
    8000448c:	00d70733          	add	a4,a4,a3
    80004490:	00f73c23          	sd	a5,24(a4)
    80004494:	02c73023          	sd	a2,32(a4)
    80004498:	34071073          	csrw	mscratch,a4
    8000449c:	00000797          	auipc	a5,0x0
    800044a0:	64478793          	addi	a5,a5,1604 # 80004ae0 <timervec>
    800044a4:	30579073          	csrw	mtvec,a5
    800044a8:	300027f3          	csrr	a5,mstatus
    800044ac:	0087e793          	ori	a5,a5,8
    800044b0:	30079073          	csrw	mstatus,a5
    800044b4:	304027f3          	csrr	a5,mie
    800044b8:	0807e793          	ori	a5,a5,128
    800044bc:	30479073          	csrw	mie,a5
    800044c0:	00813403          	ld	s0,8(sp)
    800044c4:	01010113          	addi	sp,sp,16
    800044c8:	00008067          	ret

00000000800044cc <system_main>:
    800044cc:	fe010113          	addi	sp,sp,-32
    800044d0:	00813823          	sd	s0,16(sp)
    800044d4:	00913423          	sd	s1,8(sp)
    800044d8:	00113c23          	sd	ra,24(sp)
    800044dc:	02010413          	addi	s0,sp,32
    800044e0:	00000097          	auipc	ra,0x0
    800044e4:	0c4080e7          	jalr	196(ra) # 800045a4 <cpuid>
    800044e8:	00004497          	auipc	s1,0x4
    800044ec:	40848493          	addi	s1,s1,1032 # 800088f0 <started>
    800044f0:	02050263          	beqz	a0,80004514 <system_main+0x48>
    800044f4:	0004a783          	lw	a5,0(s1)
    800044f8:	0007879b          	sext.w	a5,a5
    800044fc:	fe078ce3          	beqz	a5,800044f4 <system_main+0x28>
    80004500:	0ff0000f          	fence
    80004504:	00003517          	auipc	a0,0x3
    80004508:	dec50513          	addi	a0,a0,-532 # 800072f0 <CONSOLE_STATUS+0x2e0>
    8000450c:	00001097          	auipc	ra,0x1
    80004510:	a70080e7          	jalr	-1424(ra) # 80004f7c <panic>
    80004514:	00001097          	auipc	ra,0x1
    80004518:	9c4080e7          	jalr	-1596(ra) # 80004ed8 <consoleinit>
    8000451c:	00001097          	auipc	ra,0x1
    80004520:	150080e7          	jalr	336(ra) # 8000566c <printfinit>
    80004524:	00003517          	auipc	a0,0x3
    80004528:	bcc50513          	addi	a0,a0,-1076 # 800070f0 <CONSOLE_STATUS+0xe0>
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	aac080e7          	jalr	-1364(ra) # 80004fd8 <__printf>
    80004534:	00003517          	auipc	a0,0x3
    80004538:	d8c50513          	addi	a0,a0,-628 # 800072c0 <CONSOLE_STATUS+0x2b0>
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	a9c080e7          	jalr	-1380(ra) # 80004fd8 <__printf>
    80004544:	00003517          	auipc	a0,0x3
    80004548:	bac50513          	addi	a0,a0,-1108 # 800070f0 <CONSOLE_STATUS+0xe0>
    8000454c:	00001097          	auipc	ra,0x1
    80004550:	a8c080e7          	jalr	-1396(ra) # 80004fd8 <__printf>
    80004554:	00001097          	auipc	ra,0x1
    80004558:	4a4080e7          	jalr	1188(ra) # 800059f8 <kinit>
    8000455c:	00000097          	auipc	ra,0x0
    80004560:	148080e7          	jalr	328(ra) # 800046a4 <trapinit>
    80004564:	00000097          	auipc	ra,0x0
    80004568:	16c080e7          	jalr	364(ra) # 800046d0 <trapinithart>
    8000456c:	00000097          	auipc	ra,0x0
    80004570:	5b4080e7          	jalr	1460(ra) # 80004b20 <plicinit>
    80004574:	00000097          	auipc	ra,0x0
    80004578:	5d4080e7          	jalr	1492(ra) # 80004b48 <plicinithart>
    8000457c:	00000097          	auipc	ra,0x0
    80004580:	078080e7          	jalr	120(ra) # 800045f4 <userinit>
    80004584:	0ff0000f          	fence
    80004588:	00100793          	li	a5,1
    8000458c:	00003517          	auipc	a0,0x3
    80004590:	d4c50513          	addi	a0,a0,-692 # 800072d8 <CONSOLE_STATUS+0x2c8>
    80004594:	00f4a023          	sw	a5,0(s1)
    80004598:	00001097          	auipc	ra,0x1
    8000459c:	a40080e7          	jalr	-1472(ra) # 80004fd8 <__printf>
    800045a0:	0000006f          	j	800045a0 <system_main+0xd4>

00000000800045a4 <cpuid>:
    800045a4:	ff010113          	addi	sp,sp,-16
    800045a8:	00813423          	sd	s0,8(sp)
    800045ac:	01010413          	addi	s0,sp,16
    800045b0:	00020513          	mv	a0,tp
    800045b4:	00813403          	ld	s0,8(sp)
    800045b8:	0005051b          	sext.w	a0,a0
    800045bc:	01010113          	addi	sp,sp,16
    800045c0:	00008067          	ret

00000000800045c4 <mycpu>:
    800045c4:	ff010113          	addi	sp,sp,-16
    800045c8:	00813423          	sd	s0,8(sp)
    800045cc:	01010413          	addi	s0,sp,16
    800045d0:	00020793          	mv	a5,tp
    800045d4:	00813403          	ld	s0,8(sp)
    800045d8:	0007879b          	sext.w	a5,a5
    800045dc:	00779793          	slli	a5,a5,0x7
    800045e0:	00005517          	auipc	a0,0x5
    800045e4:	3d050513          	addi	a0,a0,976 # 800099b0 <cpus>
    800045e8:	00f50533          	add	a0,a0,a5
    800045ec:	01010113          	addi	sp,sp,16
    800045f0:	00008067          	ret

00000000800045f4 <userinit>:
    800045f4:	ff010113          	addi	sp,sp,-16
    800045f8:	00813423          	sd	s0,8(sp)
    800045fc:	01010413          	addi	s0,sp,16
    80004600:	00813403          	ld	s0,8(sp)
    80004604:	01010113          	addi	sp,sp,16
    80004608:	ffffd317          	auipc	t1,0xffffd
    8000460c:	29c30067          	jr	668(t1) # 800018a4 <main>

0000000080004610 <either_copyout>:
    80004610:	ff010113          	addi	sp,sp,-16
    80004614:	00813023          	sd	s0,0(sp)
    80004618:	00113423          	sd	ra,8(sp)
    8000461c:	01010413          	addi	s0,sp,16
    80004620:	02051663          	bnez	a0,8000464c <either_copyout+0x3c>
    80004624:	00058513          	mv	a0,a1
    80004628:	00060593          	mv	a1,a2
    8000462c:	0006861b          	sext.w	a2,a3
    80004630:	00002097          	auipc	ra,0x2
    80004634:	c54080e7          	jalr	-940(ra) # 80006284 <__memmove>
    80004638:	00813083          	ld	ra,8(sp)
    8000463c:	00013403          	ld	s0,0(sp)
    80004640:	00000513          	li	a0,0
    80004644:	01010113          	addi	sp,sp,16
    80004648:	00008067          	ret
    8000464c:	00003517          	auipc	a0,0x3
    80004650:	ccc50513          	addi	a0,a0,-820 # 80007318 <CONSOLE_STATUS+0x308>
    80004654:	00001097          	auipc	ra,0x1
    80004658:	928080e7          	jalr	-1752(ra) # 80004f7c <panic>

000000008000465c <either_copyin>:
    8000465c:	ff010113          	addi	sp,sp,-16
    80004660:	00813023          	sd	s0,0(sp)
    80004664:	00113423          	sd	ra,8(sp)
    80004668:	01010413          	addi	s0,sp,16
    8000466c:	02059463          	bnez	a1,80004694 <either_copyin+0x38>
    80004670:	00060593          	mv	a1,a2
    80004674:	0006861b          	sext.w	a2,a3
    80004678:	00002097          	auipc	ra,0x2
    8000467c:	c0c080e7          	jalr	-1012(ra) # 80006284 <__memmove>
    80004680:	00813083          	ld	ra,8(sp)
    80004684:	00013403          	ld	s0,0(sp)
    80004688:	00000513          	li	a0,0
    8000468c:	01010113          	addi	sp,sp,16
    80004690:	00008067          	ret
    80004694:	00003517          	auipc	a0,0x3
    80004698:	cac50513          	addi	a0,a0,-852 # 80007340 <CONSOLE_STATUS+0x330>
    8000469c:	00001097          	auipc	ra,0x1
    800046a0:	8e0080e7          	jalr	-1824(ra) # 80004f7c <panic>

00000000800046a4 <trapinit>:
    800046a4:	ff010113          	addi	sp,sp,-16
    800046a8:	00813423          	sd	s0,8(sp)
    800046ac:	01010413          	addi	s0,sp,16
    800046b0:	00813403          	ld	s0,8(sp)
    800046b4:	00003597          	auipc	a1,0x3
    800046b8:	cb458593          	addi	a1,a1,-844 # 80007368 <CONSOLE_STATUS+0x358>
    800046bc:	00005517          	auipc	a0,0x5
    800046c0:	37450513          	addi	a0,a0,884 # 80009a30 <tickslock>
    800046c4:	01010113          	addi	sp,sp,16
    800046c8:	00001317          	auipc	t1,0x1
    800046cc:	5c030067          	jr	1472(t1) # 80005c88 <initlock>

00000000800046d0 <trapinithart>:
    800046d0:	ff010113          	addi	sp,sp,-16
    800046d4:	00813423          	sd	s0,8(sp)
    800046d8:	01010413          	addi	s0,sp,16
    800046dc:	00000797          	auipc	a5,0x0
    800046e0:	2f478793          	addi	a5,a5,756 # 800049d0 <kernelvec>
    800046e4:	10579073          	csrw	stvec,a5
    800046e8:	00813403          	ld	s0,8(sp)
    800046ec:	01010113          	addi	sp,sp,16
    800046f0:	00008067          	ret

00000000800046f4 <usertrap>:
    800046f4:	ff010113          	addi	sp,sp,-16
    800046f8:	00813423          	sd	s0,8(sp)
    800046fc:	01010413          	addi	s0,sp,16
    80004700:	00813403          	ld	s0,8(sp)
    80004704:	01010113          	addi	sp,sp,16
    80004708:	00008067          	ret

000000008000470c <usertrapret>:
    8000470c:	ff010113          	addi	sp,sp,-16
    80004710:	00813423          	sd	s0,8(sp)
    80004714:	01010413          	addi	s0,sp,16
    80004718:	00813403          	ld	s0,8(sp)
    8000471c:	01010113          	addi	sp,sp,16
    80004720:	00008067          	ret

0000000080004724 <kerneltrap>:
    80004724:	fe010113          	addi	sp,sp,-32
    80004728:	00813823          	sd	s0,16(sp)
    8000472c:	00113c23          	sd	ra,24(sp)
    80004730:	00913423          	sd	s1,8(sp)
    80004734:	02010413          	addi	s0,sp,32
    80004738:	142025f3          	csrr	a1,scause
    8000473c:	100027f3          	csrr	a5,sstatus
    80004740:	0027f793          	andi	a5,a5,2
    80004744:	10079c63          	bnez	a5,8000485c <kerneltrap+0x138>
    80004748:	142027f3          	csrr	a5,scause
    8000474c:	0207ce63          	bltz	a5,80004788 <kerneltrap+0x64>
    80004750:	00003517          	auipc	a0,0x3
    80004754:	c6050513          	addi	a0,a0,-928 # 800073b0 <CONSOLE_STATUS+0x3a0>
    80004758:	00001097          	auipc	ra,0x1
    8000475c:	880080e7          	jalr	-1920(ra) # 80004fd8 <__printf>
    80004760:	141025f3          	csrr	a1,sepc
    80004764:	14302673          	csrr	a2,stval
    80004768:	00003517          	auipc	a0,0x3
    8000476c:	c5850513          	addi	a0,a0,-936 # 800073c0 <CONSOLE_STATUS+0x3b0>
    80004770:	00001097          	auipc	ra,0x1
    80004774:	868080e7          	jalr	-1944(ra) # 80004fd8 <__printf>
    80004778:	00003517          	auipc	a0,0x3
    8000477c:	c6050513          	addi	a0,a0,-928 # 800073d8 <CONSOLE_STATUS+0x3c8>
    80004780:	00000097          	auipc	ra,0x0
    80004784:	7fc080e7          	jalr	2044(ra) # 80004f7c <panic>
    80004788:	0ff7f713          	andi	a4,a5,255
    8000478c:	00900693          	li	a3,9
    80004790:	04d70063          	beq	a4,a3,800047d0 <kerneltrap+0xac>
    80004794:	fff00713          	li	a4,-1
    80004798:	03f71713          	slli	a4,a4,0x3f
    8000479c:	00170713          	addi	a4,a4,1
    800047a0:	fae798e3          	bne	a5,a4,80004750 <kerneltrap+0x2c>
    800047a4:	00000097          	auipc	ra,0x0
    800047a8:	e00080e7          	jalr	-512(ra) # 800045a4 <cpuid>
    800047ac:	06050663          	beqz	a0,80004818 <kerneltrap+0xf4>
    800047b0:	144027f3          	csrr	a5,sip
    800047b4:	ffd7f793          	andi	a5,a5,-3
    800047b8:	14479073          	csrw	sip,a5
    800047bc:	01813083          	ld	ra,24(sp)
    800047c0:	01013403          	ld	s0,16(sp)
    800047c4:	00813483          	ld	s1,8(sp)
    800047c8:	02010113          	addi	sp,sp,32
    800047cc:	00008067          	ret
    800047d0:	00000097          	auipc	ra,0x0
    800047d4:	3c4080e7          	jalr	964(ra) # 80004b94 <plic_claim>
    800047d8:	00a00793          	li	a5,10
    800047dc:	00050493          	mv	s1,a0
    800047e0:	06f50863          	beq	a0,a5,80004850 <kerneltrap+0x12c>
    800047e4:	fc050ce3          	beqz	a0,800047bc <kerneltrap+0x98>
    800047e8:	00050593          	mv	a1,a0
    800047ec:	00003517          	auipc	a0,0x3
    800047f0:	ba450513          	addi	a0,a0,-1116 # 80007390 <CONSOLE_STATUS+0x380>
    800047f4:	00000097          	auipc	ra,0x0
    800047f8:	7e4080e7          	jalr	2020(ra) # 80004fd8 <__printf>
    800047fc:	01013403          	ld	s0,16(sp)
    80004800:	01813083          	ld	ra,24(sp)
    80004804:	00048513          	mv	a0,s1
    80004808:	00813483          	ld	s1,8(sp)
    8000480c:	02010113          	addi	sp,sp,32
    80004810:	00000317          	auipc	t1,0x0
    80004814:	3bc30067          	jr	956(t1) # 80004bcc <plic_complete>
    80004818:	00005517          	auipc	a0,0x5
    8000481c:	21850513          	addi	a0,a0,536 # 80009a30 <tickslock>
    80004820:	00001097          	auipc	ra,0x1
    80004824:	48c080e7          	jalr	1164(ra) # 80005cac <acquire>
    80004828:	00004717          	auipc	a4,0x4
    8000482c:	0cc70713          	addi	a4,a4,204 # 800088f4 <ticks>
    80004830:	00072783          	lw	a5,0(a4)
    80004834:	00005517          	auipc	a0,0x5
    80004838:	1fc50513          	addi	a0,a0,508 # 80009a30 <tickslock>
    8000483c:	0017879b          	addiw	a5,a5,1
    80004840:	00f72023          	sw	a5,0(a4)
    80004844:	00001097          	auipc	ra,0x1
    80004848:	534080e7          	jalr	1332(ra) # 80005d78 <release>
    8000484c:	f65ff06f          	j	800047b0 <kerneltrap+0x8c>
    80004850:	00001097          	auipc	ra,0x1
    80004854:	090080e7          	jalr	144(ra) # 800058e0 <uartintr>
    80004858:	fa5ff06f          	j	800047fc <kerneltrap+0xd8>
    8000485c:	00003517          	auipc	a0,0x3
    80004860:	b1450513          	addi	a0,a0,-1260 # 80007370 <CONSOLE_STATUS+0x360>
    80004864:	00000097          	auipc	ra,0x0
    80004868:	718080e7          	jalr	1816(ra) # 80004f7c <panic>

000000008000486c <clockintr>:
    8000486c:	fe010113          	addi	sp,sp,-32
    80004870:	00813823          	sd	s0,16(sp)
    80004874:	00913423          	sd	s1,8(sp)
    80004878:	00113c23          	sd	ra,24(sp)
    8000487c:	02010413          	addi	s0,sp,32
    80004880:	00005497          	auipc	s1,0x5
    80004884:	1b048493          	addi	s1,s1,432 # 80009a30 <tickslock>
    80004888:	00048513          	mv	a0,s1
    8000488c:	00001097          	auipc	ra,0x1
    80004890:	420080e7          	jalr	1056(ra) # 80005cac <acquire>
    80004894:	00004717          	auipc	a4,0x4
    80004898:	06070713          	addi	a4,a4,96 # 800088f4 <ticks>
    8000489c:	00072783          	lw	a5,0(a4)
    800048a0:	01013403          	ld	s0,16(sp)
    800048a4:	01813083          	ld	ra,24(sp)
    800048a8:	00048513          	mv	a0,s1
    800048ac:	0017879b          	addiw	a5,a5,1
    800048b0:	00813483          	ld	s1,8(sp)
    800048b4:	00f72023          	sw	a5,0(a4)
    800048b8:	02010113          	addi	sp,sp,32
    800048bc:	00001317          	auipc	t1,0x1
    800048c0:	4bc30067          	jr	1212(t1) # 80005d78 <release>

00000000800048c4 <devintr>:
    800048c4:	142027f3          	csrr	a5,scause
    800048c8:	00000513          	li	a0,0
    800048cc:	0007c463          	bltz	a5,800048d4 <devintr+0x10>
    800048d0:	00008067          	ret
    800048d4:	fe010113          	addi	sp,sp,-32
    800048d8:	00813823          	sd	s0,16(sp)
    800048dc:	00113c23          	sd	ra,24(sp)
    800048e0:	00913423          	sd	s1,8(sp)
    800048e4:	02010413          	addi	s0,sp,32
    800048e8:	0ff7f713          	andi	a4,a5,255
    800048ec:	00900693          	li	a3,9
    800048f0:	04d70c63          	beq	a4,a3,80004948 <devintr+0x84>
    800048f4:	fff00713          	li	a4,-1
    800048f8:	03f71713          	slli	a4,a4,0x3f
    800048fc:	00170713          	addi	a4,a4,1
    80004900:	00e78c63          	beq	a5,a4,80004918 <devintr+0x54>
    80004904:	01813083          	ld	ra,24(sp)
    80004908:	01013403          	ld	s0,16(sp)
    8000490c:	00813483          	ld	s1,8(sp)
    80004910:	02010113          	addi	sp,sp,32
    80004914:	00008067          	ret
    80004918:	00000097          	auipc	ra,0x0
    8000491c:	c8c080e7          	jalr	-884(ra) # 800045a4 <cpuid>
    80004920:	06050663          	beqz	a0,8000498c <devintr+0xc8>
    80004924:	144027f3          	csrr	a5,sip
    80004928:	ffd7f793          	andi	a5,a5,-3
    8000492c:	14479073          	csrw	sip,a5
    80004930:	01813083          	ld	ra,24(sp)
    80004934:	01013403          	ld	s0,16(sp)
    80004938:	00813483          	ld	s1,8(sp)
    8000493c:	00200513          	li	a0,2
    80004940:	02010113          	addi	sp,sp,32
    80004944:	00008067          	ret
    80004948:	00000097          	auipc	ra,0x0
    8000494c:	24c080e7          	jalr	588(ra) # 80004b94 <plic_claim>
    80004950:	00a00793          	li	a5,10
    80004954:	00050493          	mv	s1,a0
    80004958:	06f50663          	beq	a0,a5,800049c4 <devintr+0x100>
    8000495c:	00100513          	li	a0,1
    80004960:	fa0482e3          	beqz	s1,80004904 <devintr+0x40>
    80004964:	00048593          	mv	a1,s1
    80004968:	00003517          	auipc	a0,0x3
    8000496c:	a2850513          	addi	a0,a0,-1496 # 80007390 <CONSOLE_STATUS+0x380>
    80004970:	00000097          	auipc	ra,0x0
    80004974:	668080e7          	jalr	1640(ra) # 80004fd8 <__printf>
    80004978:	00048513          	mv	a0,s1
    8000497c:	00000097          	auipc	ra,0x0
    80004980:	250080e7          	jalr	592(ra) # 80004bcc <plic_complete>
    80004984:	00100513          	li	a0,1
    80004988:	f7dff06f          	j	80004904 <devintr+0x40>
    8000498c:	00005517          	auipc	a0,0x5
    80004990:	0a450513          	addi	a0,a0,164 # 80009a30 <tickslock>
    80004994:	00001097          	auipc	ra,0x1
    80004998:	318080e7          	jalr	792(ra) # 80005cac <acquire>
    8000499c:	00004717          	auipc	a4,0x4
    800049a0:	f5870713          	addi	a4,a4,-168 # 800088f4 <ticks>
    800049a4:	00072783          	lw	a5,0(a4)
    800049a8:	00005517          	auipc	a0,0x5
    800049ac:	08850513          	addi	a0,a0,136 # 80009a30 <tickslock>
    800049b0:	0017879b          	addiw	a5,a5,1
    800049b4:	00f72023          	sw	a5,0(a4)
    800049b8:	00001097          	auipc	ra,0x1
    800049bc:	3c0080e7          	jalr	960(ra) # 80005d78 <release>
    800049c0:	f65ff06f          	j	80004924 <devintr+0x60>
    800049c4:	00001097          	auipc	ra,0x1
    800049c8:	f1c080e7          	jalr	-228(ra) # 800058e0 <uartintr>
    800049cc:	fadff06f          	j	80004978 <devintr+0xb4>

00000000800049d0 <kernelvec>:
    800049d0:	f0010113          	addi	sp,sp,-256
    800049d4:	00113023          	sd	ra,0(sp)
    800049d8:	00213423          	sd	sp,8(sp)
    800049dc:	00313823          	sd	gp,16(sp)
    800049e0:	00413c23          	sd	tp,24(sp)
    800049e4:	02513023          	sd	t0,32(sp)
    800049e8:	02613423          	sd	t1,40(sp)
    800049ec:	02713823          	sd	t2,48(sp)
    800049f0:	02813c23          	sd	s0,56(sp)
    800049f4:	04913023          	sd	s1,64(sp)
    800049f8:	04a13423          	sd	a0,72(sp)
    800049fc:	04b13823          	sd	a1,80(sp)
    80004a00:	04c13c23          	sd	a2,88(sp)
    80004a04:	06d13023          	sd	a3,96(sp)
    80004a08:	06e13423          	sd	a4,104(sp)
    80004a0c:	06f13823          	sd	a5,112(sp)
    80004a10:	07013c23          	sd	a6,120(sp)
    80004a14:	09113023          	sd	a7,128(sp)
    80004a18:	09213423          	sd	s2,136(sp)
    80004a1c:	09313823          	sd	s3,144(sp)
    80004a20:	09413c23          	sd	s4,152(sp)
    80004a24:	0b513023          	sd	s5,160(sp)
    80004a28:	0b613423          	sd	s6,168(sp)
    80004a2c:	0b713823          	sd	s7,176(sp)
    80004a30:	0b813c23          	sd	s8,184(sp)
    80004a34:	0d913023          	sd	s9,192(sp)
    80004a38:	0da13423          	sd	s10,200(sp)
    80004a3c:	0db13823          	sd	s11,208(sp)
    80004a40:	0dc13c23          	sd	t3,216(sp)
    80004a44:	0fd13023          	sd	t4,224(sp)
    80004a48:	0fe13423          	sd	t5,232(sp)
    80004a4c:	0ff13823          	sd	t6,240(sp)
    80004a50:	cd5ff0ef          	jal	ra,80004724 <kerneltrap>
    80004a54:	00013083          	ld	ra,0(sp)
    80004a58:	00813103          	ld	sp,8(sp)
    80004a5c:	01013183          	ld	gp,16(sp)
    80004a60:	02013283          	ld	t0,32(sp)
    80004a64:	02813303          	ld	t1,40(sp)
    80004a68:	03013383          	ld	t2,48(sp)
    80004a6c:	03813403          	ld	s0,56(sp)
    80004a70:	04013483          	ld	s1,64(sp)
    80004a74:	04813503          	ld	a0,72(sp)
    80004a78:	05013583          	ld	a1,80(sp)
    80004a7c:	05813603          	ld	a2,88(sp)
    80004a80:	06013683          	ld	a3,96(sp)
    80004a84:	06813703          	ld	a4,104(sp)
    80004a88:	07013783          	ld	a5,112(sp)
    80004a8c:	07813803          	ld	a6,120(sp)
    80004a90:	08013883          	ld	a7,128(sp)
    80004a94:	08813903          	ld	s2,136(sp)
    80004a98:	09013983          	ld	s3,144(sp)
    80004a9c:	09813a03          	ld	s4,152(sp)
    80004aa0:	0a013a83          	ld	s5,160(sp)
    80004aa4:	0a813b03          	ld	s6,168(sp)
    80004aa8:	0b013b83          	ld	s7,176(sp)
    80004aac:	0b813c03          	ld	s8,184(sp)
    80004ab0:	0c013c83          	ld	s9,192(sp)
    80004ab4:	0c813d03          	ld	s10,200(sp)
    80004ab8:	0d013d83          	ld	s11,208(sp)
    80004abc:	0d813e03          	ld	t3,216(sp)
    80004ac0:	0e013e83          	ld	t4,224(sp)
    80004ac4:	0e813f03          	ld	t5,232(sp)
    80004ac8:	0f013f83          	ld	t6,240(sp)
    80004acc:	10010113          	addi	sp,sp,256
    80004ad0:	10200073          	sret
    80004ad4:	00000013          	nop
    80004ad8:	00000013          	nop
    80004adc:	00000013          	nop

0000000080004ae0 <timervec>:
    80004ae0:	34051573          	csrrw	a0,mscratch,a0
    80004ae4:	00b53023          	sd	a1,0(a0)
    80004ae8:	00c53423          	sd	a2,8(a0)
    80004aec:	00d53823          	sd	a3,16(a0)
    80004af0:	01853583          	ld	a1,24(a0)
    80004af4:	02053603          	ld	a2,32(a0)
    80004af8:	0005b683          	ld	a3,0(a1)
    80004afc:	00c686b3          	add	a3,a3,a2
    80004b00:	00d5b023          	sd	a3,0(a1)
    80004b04:	00200593          	li	a1,2
    80004b08:	14459073          	csrw	sip,a1
    80004b0c:	01053683          	ld	a3,16(a0)
    80004b10:	00853603          	ld	a2,8(a0)
    80004b14:	00053583          	ld	a1,0(a0)
    80004b18:	34051573          	csrrw	a0,mscratch,a0
    80004b1c:	30200073          	mret

0000000080004b20 <plicinit>:
    80004b20:	ff010113          	addi	sp,sp,-16
    80004b24:	00813423          	sd	s0,8(sp)
    80004b28:	01010413          	addi	s0,sp,16
    80004b2c:	00813403          	ld	s0,8(sp)
    80004b30:	0c0007b7          	lui	a5,0xc000
    80004b34:	00100713          	li	a4,1
    80004b38:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80004b3c:	00e7a223          	sw	a4,4(a5)
    80004b40:	01010113          	addi	sp,sp,16
    80004b44:	00008067          	ret

0000000080004b48 <plicinithart>:
    80004b48:	ff010113          	addi	sp,sp,-16
    80004b4c:	00813023          	sd	s0,0(sp)
    80004b50:	00113423          	sd	ra,8(sp)
    80004b54:	01010413          	addi	s0,sp,16
    80004b58:	00000097          	auipc	ra,0x0
    80004b5c:	a4c080e7          	jalr	-1460(ra) # 800045a4 <cpuid>
    80004b60:	0085171b          	slliw	a4,a0,0x8
    80004b64:	0c0027b7          	lui	a5,0xc002
    80004b68:	00e787b3          	add	a5,a5,a4
    80004b6c:	40200713          	li	a4,1026
    80004b70:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004b74:	00813083          	ld	ra,8(sp)
    80004b78:	00013403          	ld	s0,0(sp)
    80004b7c:	00d5151b          	slliw	a0,a0,0xd
    80004b80:	0c2017b7          	lui	a5,0xc201
    80004b84:	00a78533          	add	a0,a5,a0
    80004b88:	00052023          	sw	zero,0(a0)
    80004b8c:	01010113          	addi	sp,sp,16
    80004b90:	00008067          	ret

0000000080004b94 <plic_claim>:
    80004b94:	ff010113          	addi	sp,sp,-16
    80004b98:	00813023          	sd	s0,0(sp)
    80004b9c:	00113423          	sd	ra,8(sp)
    80004ba0:	01010413          	addi	s0,sp,16
    80004ba4:	00000097          	auipc	ra,0x0
    80004ba8:	a00080e7          	jalr	-1536(ra) # 800045a4 <cpuid>
    80004bac:	00813083          	ld	ra,8(sp)
    80004bb0:	00013403          	ld	s0,0(sp)
    80004bb4:	00d5151b          	slliw	a0,a0,0xd
    80004bb8:	0c2017b7          	lui	a5,0xc201
    80004bbc:	00a78533          	add	a0,a5,a0
    80004bc0:	00452503          	lw	a0,4(a0)
    80004bc4:	01010113          	addi	sp,sp,16
    80004bc8:	00008067          	ret

0000000080004bcc <plic_complete>:
    80004bcc:	fe010113          	addi	sp,sp,-32
    80004bd0:	00813823          	sd	s0,16(sp)
    80004bd4:	00913423          	sd	s1,8(sp)
    80004bd8:	00113c23          	sd	ra,24(sp)
    80004bdc:	02010413          	addi	s0,sp,32
    80004be0:	00050493          	mv	s1,a0
    80004be4:	00000097          	auipc	ra,0x0
    80004be8:	9c0080e7          	jalr	-1600(ra) # 800045a4 <cpuid>
    80004bec:	01813083          	ld	ra,24(sp)
    80004bf0:	01013403          	ld	s0,16(sp)
    80004bf4:	00d5179b          	slliw	a5,a0,0xd
    80004bf8:	0c201737          	lui	a4,0xc201
    80004bfc:	00f707b3          	add	a5,a4,a5
    80004c00:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004c04:	00813483          	ld	s1,8(sp)
    80004c08:	02010113          	addi	sp,sp,32
    80004c0c:	00008067          	ret

0000000080004c10 <consolewrite>:
    80004c10:	fb010113          	addi	sp,sp,-80
    80004c14:	04813023          	sd	s0,64(sp)
    80004c18:	04113423          	sd	ra,72(sp)
    80004c1c:	02913c23          	sd	s1,56(sp)
    80004c20:	03213823          	sd	s2,48(sp)
    80004c24:	03313423          	sd	s3,40(sp)
    80004c28:	03413023          	sd	s4,32(sp)
    80004c2c:	01513c23          	sd	s5,24(sp)
    80004c30:	05010413          	addi	s0,sp,80
    80004c34:	06c05c63          	blez	a2,80004cac <consolewrite+0x9c>
    80004c38:	00060993          	mv	s3,a2
    80004c3c:	00050a13          	mv	s4,a0
    80004c40:	00058493          	mv	s1,a1
    80004c44:	00000913          	li	s2,0
    80004c48:	fff00a93          	li	s5,-1
    80004c4c:	01c0006f          	j	80004c68 <consolewrite+0x58>
    80004c50:	fbf44503          	lbu	a0,-65(s0)
    80004c54:	0019091b          	addiw	s2,s2,1
    80004c58:	00148493          	addi	s1,s1,1
    80004c5c:	00001097          	auipc	ra,0x1
    80004c60:	a9c080e7          	jalr	-1380(ra) # 800056f8 <uartputc>
    80004c64:	03298063          	beq	s3,s2,80004c84 <consolewrite+0x74>
    80004c68:	00048613          	mv	a2,s1
    80004c6c:	00100693          	li	a3,1
    80004c70:	000a0593          	mv	a1,s4
    80004c74:	fbf40513          	addi	a0,s0,-65
    80004c78:	00000097          	auipc	ra,0x0
    80004c7c:	9e4080e7          	jalr	-1564(ra) # 8000465c <either_copyin>
    80004c80:	fd5518e3          	bne	a0,s5,80004c50 <consolewrite+0x40>
    80004c84:	04813083          	ld	ra,72(sp)
    80004c88:	04013403          	ld	s0,64(sp)
    80004c8c:	03813483          	ld	s1,56(sp)
    80004c90:	02813983          	ld	s3,40(sp)
    80004c94:	02013a03          	ld	s4,32(sp)
    80004c98:	01813a83          	ld	s5,24(sp)
    80004c9c:	00090513          	mv	a0,s2
    80004ca0:	03013903          	ld	s2,48(sp)
    80004ca4:	05010113          	addi	sp,sp,80
    80004ca8:	00008067          	ret
    80004cac:	00000913          	li	s2,0
    80004cb0:	fd5ff06f          	j	80004c84 <consolewrite+0x74>

0000000080004cb4 <consoleread>:
    80004cb4:	f9010113          	addi	sp,sp,-112
    80004cb8:	06813023          	sd	s0,96(sp)
    80004cbc:	04913c23          	sd	s1,88(sp)
    80004cc0:	05213823          	sd	s2,80(sp)
    80004cc4:	05313423          	sd	s3,72(sp)
    80004cc8:	05413023          	sd	s4,64(sp)
    80004ccc:	03513c23          	sd	s5,56(sp)
    80004cd0:	03613823          	sd	s6,48(sp)
    80004cd4:	03713423          	sd	s7,40(sp)
    80004cd8:	03813023          	sd	s8,32(sp)
    80004cdc:	06113423          	sd	ra,104(sp)
    80004ce0:	01913c23          	sd	s9,24(sp)
    80004ce4:	07010413          	addi	s0,sp,112
    80004ce8:	00060b93          	mv	s7,a2
    80004cec:	00050913          	mv	s2,a0
    80004cf0:	00058c13          	mv	s8,a1
    80004cf4:	00060b1b          	sext.w	s6,a2
    80004cf8:	00005497          	auipc	s1,0x5
    80004cfc:	d6048493          	addi	s1,s1,-672 # 80009a58 <cons>
    80004d00:	00400993          	li	s3,4
    80004d04:	fff00a13          	li	s4,-1
    80004d08:	00a00a93          	li	s5,10
    80004d0c:	05705e63          	blez	s7,80004d68 <consoleread+0xb4>
    80004d10:	09c4a703          	lw	a4,156(s1)
    80004d14:	0984a783          	lw	a5,152(s1)
    80004d18:	0007071b          	sext.w	a4,a4
    80004d1c:	08e78463          	beq	a5,a4,80004da4 <consoleread+0xf0>
    80004d20:	07f7f713          	andi	a4,a5,127
    80004d24:	00e48733          	add	a4,s1,a4
    80004d28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80004d2c:	0017869b          	addiw	a3,a5,1
    80004d30:	08d4ac23          	sw	a3,152(s1)
    80004d34:	00070c9b          	sext.w	s9,a4
    80004d38:	0b370663          	beq	a4,s3,80004de4 <consoleread+0x130>
    80004d3c:	00100693          	li	a3,1
    80004d40:	f9f40613          	addi	a2,s0,-97
    80004d44:	000c0593          	mv	a1,s8
    80004d48:	00090513          	mv	a0,s2
    80004d4c:	f8e40fa3          	sb	a4,-97(s0)
    80004d50:	00000097          	auipc	ra,0x0
    80004d54:	8c0080e7          	jalr	-1856(ra) # 80004610 <either_copyout>
    80004d58:	01450863          	beq	a0,s4,80004d68 <consoleread+0xb4>
    80004d5c:	001c0c13          	addi	s8,s8,1
    80004d60:	fffb8b9b          	addiw	s7,s7,-1
    80004d64:	fb5c94e3          	bne	s9,s5,80004d0c <consoleread+0x58>
    80004d68:	000b851b          	sext.w	a0,s7
    80004d6c:	06813083          	ld	ra,104(sp)
    80004d70:	06013403          	ld	s0,96(sp)
    80004d74:	05813483          	ld	s1,88(sp)
    80004d78:	05013903          	ld	s2,80(sp)
    80004d7c:	04813983          	ld	s3,72(sp)
    80004d80:	04013a03          	ld	s4,64(sp)
    80004d84:	03813a83          	ld	s5,56(sp)
    80004d88:	02813b83          	ld	s7,40(sp)
    80004d8c:	02013c03          	ld	s8,32(sp)
    80004d90:	01813c83          	ld	s9,24(sp)
    80004d94:	40ab053b          	subw	a0,s6,a0
    80004d98:	03013b03          	ld	s6,48(sp)
    80004d9c:	07010113          	addi	sp,sp,112
    80004da0:	00008067          	ret
    80004da4:	00001097          	auipc	ra,0x1
    80004da8:	1d8080e7          	jalr	472(ra) # 80005f7c <push_on>
    80004dac:	0984a703          	lw	a4,152(s1)
    80004db0:	09c4a783          	lw	a5,156(s1)
    80004db4:	0007879b          	sext.w	a5,a5
    80004db8:	fef70ce3          	beq	a4,a5,80004db0 <consoleread+0xfc>
    80004dbc:	00001097          	auipc	ra,0x1
    80004dc0:	234080e7          	jalr	564(ra) # 80005ff0 <pop_on>
    80004dc4:	0984a783          	lw	a5,152(s1)
    80004dc8:	07f7f713          	andi	a4,a5,127
    80004dcc:	00e48733          	add	a4,s1,a4
    80004dd0:	01874703          	lbu	a4,24(a4)
    80004dd4:	0017869b          	addiw	a3,a5,1
    80004dd8:	08d4ac23          	sw	a3,152(s1)
    80004ddc:	00070c9b          	sext.w	s9,a4
    80004de0:	f5371ee3          	bne	a4,s3,80004d3c <consoleread+0x88>
    80004de4:	000b851b          	sext.w	a0,s7
    80004de8:	f96bf2e3          	bgeu	s7,s6,80004d6c <consoleread+0xb8>
    80004dec:	08f4ac23          	sw	a5,152(s1)
    80004df0:	f7dff06f          	j	80004d6c <consoleread+0xb8>

0000000080004df4 <consputc>:
    80004df4:	10000793          	li	a5,256
    80004df8:	00f50663          	beq	a0,a5,80004e04 <consputc+0x10>
    80004dfc:	00001317          	auipc	t1,0x1
    80004e00:	9f430067          	jr	-1548(t1) # 800057f0 <uartputc_sync>
    80004e04:	ff010113          	addi	sp,sp,-16
    80004e08:	00113423          	sd	ra,8(sp)
    80004e0c:	00813023          	sd	s0,0(sp)
    80004e10:	01010413          	addi	s0,sp,16
    80004e14:	00800513          	li	a0,8
    80004e18:	00001097          	auipc	ra,0x1
    80004e1c:	9d8080e7          	jalr	-1576(ra) # 800057f0 <uartputc_sync>
    80004e20:	02000513          	li	a0,32
    80004e24:	00001097          	auipc	ra,0x1
    80004e28:	9cc080e7          	jalr	-1588(ra) # 800057f0 <uartputc_sync>
    80004e2c:	00013403          	ld	s0,0(sp)
    80004e30:	00813083          	ld	ra,8(sp)
    80004e34:	00800513          	li	a0,8
    80004e38:	01010113          	addi	sp,sp,16
    80004e3c:	00001317          	auipc	t1,0x1
    80004e40:	9b430067          	jr	-1612(t1) # 800057f0 <uartputc_sync>

0000000080004e44 <consoleintr>:
    80004e44:	fe010113          	addi	sp,sp,-32
    80004e48:	00813823          	sd	s0,16(sp)
    80004e4c:	00913423          	sd	s1,8(sp)
    80004e50:	01213023          	sd	s2,0(sp)
    80004e54:	00113c23          	sd	ra,24(sp)
    80004e58:	02010413          	addi	s0,sp,32
    80004e5c:	00005917          	auipc	s2,0x5
    80004e60:	bfc90913          	addi	s2,s2,-1028 # 80009a58 <cons>
    80004e64:	00050493          	mv	s1,a0
    80004e68:	00090513          	mv	a0,s2
    80004e6c:	00001097          	auipc	ra,0x1
    80004e70:	e40080e7          	jalr	-448(ra) # 80005cac <acquire>
    80004e74:	02048c63          	beqz	s1,80004eac <consoleintr+0x68>
    80004e78:	0a092783          	lw	a5,160(s2)
    80004e7c:	09892703          	lw	a4,152(s2)
    80004e80:	07f00693          	li	a3,127
    80004e84:	40e7873b          	subw	a4,a5,a4
    80004e88:	02e6e263          	bltu	a3,a4,80004eac <consoleintr+0x68>
    80004e8c:	00d00713          	li	a4,13
    80004e90:	04e48063          	beq	s1,a4,80004ed0 <consoleintr+0x8c>
    80004e94:	07f7f713          	andi	a4,a5,127
    80004e98:	00e90733          	add	a4,s2,a4
    80004e9c:	0017879b          	addiw	a5,a5,1
    80004ea0:	0af92023          	sw	a5,160(s2)
    80004ea4:	00970c23          	sb	s1,24(a4)
    80004ea8:	08f92e23          	sw	a5,156(s2)
    80004eac:	01013403          	ld	s0,16(sp)
    80004eb0:	01813083          	ld	ra,24(sp)
    80004eb4:	00813483          	ld	s1,8(sp)
    80004eb8:	00013903          	ld	s2,0(sp)
    80004ebc:	00005517          	auipc	a0,0x5
    80004ec0:	b9c50513          	addi	a0,a0,-1124 # 80009a58 <cons>
    80004ec4:	02010113          	addi	sp,sp,32
    80004ec8:	00001317          	auipc	t1,0x1
    80004ecc:	eb030067          	jr	-336(t1) # 80005d78 <release>
    80004ed0:	00a00493          	li	s1,10
    80004ed4:	fc1ff06f          	j	80004e94 <consoleintr+0x50>

0000000080004ed8 <consoleinit>:
    80004ed8:	fe010113          	addi	sp,sp,-32
    80004edc:	00113c23          	sd	ra,24(sp)
    80004ee0:	00813823          	sd	s0,16(sp)
    80004ee4:	00913423          	sd	s1,8(sp)
    80004ee8:	02010413          	addi	s0,sp,32
    80004eec:	00005497          	auipc	s1,0x5
    80004ef0:	b6c48493          	addi	s1,s1,-1172 # 80009a58 <cons>
    80004ef4:	00048513          	mv	a0,s1
    80004ef8:	00002597          	auipc	a1,0x2
    80004efc:	4f058593          	addi	a1,a1,1264 # 800073e8 <CONSOLE_STATUS+0x3d8>
    80004f00:	00001097          	auipc	ra,0x1
    80004f04:	d88080e7          	jalr	-632(ra) # 80005c88 <initlock>
    80004f08:	00000097          	auipc	ra,0x0
    80004f0c:	7ac080e7          	jalr	1964(ra) # 800056b4 <uartinit>
    80004f10:	01813083          	ld	ra,24(sp)
    80004f14:	01013403          	ld	s0,16(sp)
    80004f18:	00000797          	auipc	a5,0x0
    80004f1c:	d9c78793          	addi	a5,a5,-612 # 80004cb4 <consoleread>
    80004f20:	0af4bc23          	sd	a5,184(s1)
    80004f24:	00000797          	auipc	a5,0x0
    80004f28:	cec78793          	addi	a5,a5,-788 # 80004c10 <consolewrite>
    80004f2c:	0cf4b023          	sd	a5,192(s1)
    80004f30:	00813483          	ld	s1,8(sp)
    80004f34:	02010113          	addi	sp,sp,32
    80004f38:	00008067          	ret

0000000080004f3c <console_read>:
    80004f3c:	ff010113          	addi	sp,sp,-16
    80004f40:	00813423          	sd	s0,8(sp)
    80004f44:	01010413          	addi	s0,sp,16
    80004f48:	00813403          	ld	s0,8(sp)
    80004f4c:	00005317          	auipc	t1,0x5
    80004f50:	bc433303          	ld	t1,-1084(t1) # 80009b10 <devsw+0x10>
    80004f54:	01010113          	addi	sp,sp,16
    80004f58:	00030067          	jr	t1

0000000080004f5c <console_write>:
    80004f5c:	ff010113          	addi	sp,sp,-16
    80004f60:	00813423          	sd	s0,8(sp)
    80004f64:	01010413          	addi	s0,sp,16
    80004f68:	00813403          	ld	s0,8(sp)
    80004f6c:	00005317          	auipc	t1,0x5
    80004f70:	bac33303          	ld	t1,-1108(t1) # 80009b18 <devsw+0x18>
    80004f74:	01010113          	addi	sp,sp,16
    80004f78:	00030067          	jr	t1

0000000080004f7c <panic>:
    80004f7c:	fe010113          	addi	sp,sp,-32
    80004f80:	00113c23          	sd	ra,24(sp)
    80004f84:	00813823          	sd	s0,16(sp)
    80004f88:	00913423          	sd	s1,8(sp)
    80004f8c:	02010413          	addi	s0,sp,32
    80004f90:	00050493          	mv	s1,a0
    80004f94:	00002517          	auipc	a0,0x2
    80004f98:	45c50513          	addi	a0,a0,1116 # 800073f0 <CONSOLE_STATUS+0x3e0>
    80004f9c:	00005797          	auipc	a5,0x5
    80004fa0:	c007ae23          	sw	zero,-996(a5) # 80009bb8 <pr+0x18>
    80004fa4:	00000097          	auipc	ra,0x0
    80004fa8:	034080e7          	jalr	52(ra) # 80004fd8 <__printf>
    80004fac:	00048513          	mv	a0,s1
    80004fb0:	00000097          	auipc	ra,0x0
    80004fb4:	028080e7          	jalr	40(ra) # 80004fd8 <__printf>
    80004fb8:	00002517          	auipc	a0,0x2
    80004fbc:	13850513          	addi	a0,a0,312 # 800070f0 <CONSOLE_STATUS+0xe0>
    80004fc0:	00000097          	auipc	ra,0x0
    80004fc4:	018080e7          	jalr	24(ra) # 80004fd8 <__printf>
    80004fc8:	00100793          	li	a5,1
    80004fcc:	00004717          	auipc	a4,0x4
    80004fd0:	92f72623          	sw	a5,-1748(a4) # 800088f8 <panicked>
    80004fd4:	0000006f          	j	80004fd4 <panic+0x58>

0000000080004fd8 <__printf>:
    80004fd8:	f3010113          	addi	sp,sp,-208
    80004fdc:	08813023          	sd	s0,128(sp)
    80004fe0:	07313423          	sd	s3,104(sp)
    80004fe4:	09010413          	addi	s0,sp,144
    80004fe8:	05813023          	sd	s8,64(sp)
    80004fec:	08113423          	sd	ra,136(sp)
    80004ff0:	06913c23          	sd	s1,120(sp)
    80004ff4:	07213823          	sd	s2,112(sp)
    80004ff8:	07413023          	sd	s4,96(sp)
    80004ffc:	05513c23          	sd	s5,88(sp)
    80005000:	05613823          	sd	s6,80(sp)
    80005004:	05713423          	sd	s7,72(sp)
    80005008:	03913c23          	sd	s9,56(sp)
    8000500c:	03a13823          	sd	s10,48(sp)
    80005010:	03b13423          	sd	s11,40(sp)
    80005014:	00005317          	auipc	t1,0x5
    80005018:	b8c30313          	addi	t1,t1,-1140 # 80009ba0 <pr>
    8000501c:	01832c03          	lw	s8,24(t1)
    80005020:	00b43423          	sd	a1,8(s0)
    80005024:	00c43823          	sd	a2,16(s0)
    80005028:	00d43c23          	sd	a3,24(s0)
    8000502c:	02e43023          	sd	a4,32(s0)
    80005030:	02f43423          	sd	a5,40(s0)
    80005034:	03043823          	sd	a6,48(s0)
    80005038:	03143c23          	sd	a7,56(s0)
    8000503c:	00050993          	mv	s3,a0
    80005040:	4a0c1663          	bnez	s8,800054ec <__printf+0x514>
    80005044:	60098c63          	beqz	s3,8000565c <__printf+0x684>
    80005048:	0009c503          	lbu	a0,0(s3)
    8000504c:	00840793          	addi	a5,s0,8
    80005050:	f6f43c23          	sd	a5,-136(s0)
    80005054:	00000493          	li	s1,0
    80005058:	22050063          	beqz	a0,80005278 <__printf+0x2a0>
    8000505c:	00002a37          	lui	s4,0x2
    80005060:	00018ab7          	lui	s5,0x18
    80005064:	000f4b37          	lui	s6,0xf4
    80005068:	00989bb7          	lui	s7,0x989
    8000506c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005070:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005074:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005078:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000507c:	00148c9b          	addiw	s9,s1,1
    80005080:	02500793          	li	a5,37
    80005084:	01998933          	add	s2,s3,s9
    80005088:	38f51263          	bne	a0,a5,8000540c <__printf+0x434>
    8000508c:	00094783          	lbu	a5,0(s2)
    80005090:	00078c9b          	sext.w	s9,a5
    80005094:	1e078263          	beqz	a5,80005278 <__printf+0x2a0>
    80005098:	0024849b          	addiw	s1,s1,2
    8000509c:	07000713          	li	a4,112
    800050a0:	00998933          	add	s2,s3,s1
    800050a4:	38e78a63          	beq	a5,a4,80005438 <__printf+0x460>
    800050a8:	20f76863          	bltu	a4,a5,800052b8 <__printf+0x2e0>
    800050ac:	42a78863          	beq	a5,a0,800054dc <__printf+0x504>
    800050b0:	06400713          	li	a4,100
    800050b4:	40e79663          	bne	a5,a4,800054c0 <__printf+0x4e8>
    800050b8:	f7843783          	ld	a5,-136(s0)
    800050bc:	0007a603          	lw	a2,0(a5)
    800050c0:	00878793          	addi	a5,a5,8
    800050c4:	f6f43c23          	sd	a5,-136(s0)
    800050c8:	42064a63          	bltz	a2,800054fc <__printf+0x524>
    800050cc:	00a00713          	li	a4,10
    800050d0:	02e677bb          	remuw	a5,a2,a4
    800050d4:	00002d97          	auipc	s11,0x2
    800050d8:	344d8d93          	addi	s11,s11,836 # 80007418 <digits>
    800050dc:	00900593          	li	a1,9
    800050e0:	0006051b          	sext.w	a0,a2
    800050e4:	00000c93          	li	s9,0
    800050e8:	02079793          	slli	a5,a5,0x20
    800050ec:	0207d793          	srli	a5,a5,0x20
    800050f0:	00fd87b3          	add	a5,s11,a5
    800050f4:	0007c783          	lbu	a5,0(a5)
    800050f8:	02e656bb          	divuw	a3,a2,a4
    800050fc:	f8f40023          	sb	a5,-128(s0)
    80005100:	14c5d863          	bge	a1,a2,80005250 <__printf+0x278>
    80005104:	06300593          	li	a1,99
    80005108:	00100c93          	li	s9,1
    8000510c:	02e6f7bb          	remuw	a5,a3,a4
    80005110:	02079793          	slli	a5,a5,0x20
    80005114:	0207d793          	srli	a5,a5,0x20
    80005118:	00fd87b3          	add	a5,s11,a5
    8000511c:	0007c783          	lbu	a5,0(a5)
    80005120:	02e6d73b          	divuw	a4,a3,a4
    80005124:	f8f400a3          	sb	a5,-127(s0)
    80005128:	12a5f463          	bgeu	a1,a0,80005250 <__printf+0x278>
    8000512c:	00a00693          	li	a3,10
    80005130:	00900593          	li	a1,9
    80005134:	02d777bb          	remuw	a5,a4,a3
    80005138:	02079793          	slli	a5,a5,0x20
    8000513c:	0207d793          	srli	a5,a5,0x20
    80005140:	00fd87b3          	add	a5,s11,a5
    80005144:	0007c503          	lbu	a0,0(a5)
    80005148:	02d757bb          	divuw	a5,a4,a3
    8000514c:	f8a40123          	sb	a0,-126(s0)
    80005150:	48e5f263          	bgeu	a1,a4,800055d4 <__printf+0x5fc>
    80005154:	06300513          	li	a0,99
    80005158:	02d7f5bb          	remuw	a1,a5,a3
    8000515c:	02059593          	slli	a1,a1,0x20
    80005160:	0205d593          	srli	a1,a1,0x20
    80005164:	00bd85b3          	add	a1,s11,a1
    80005168:	0005c583          	lbu	a1,0(a1)
    8000516c:	02d7d7bb          	divuw	a5,a5,a3
    80005170:	f8b401a3          	sb	a1,-125(s0)
    80005174:	48e57263          	bgeu	a0,a4,800055f8 <__printf+0x620>
    80005178:	3e700513          	li	a0,999
    8000517c:	02d7f5bb          	remuw	a1,a5,a3
    80005180:	02059593          	slli	a1,a1,0x20
    80005184:	0205d593          	srli	a1,a1,0x20
    80005188:	00bd85b3          	add	a1,s11,a1
    8000518c:	0005c583          	lbu	a1,0(a1)
    80005190:	02d7d7bb          	divuw	a5,a5,a3
    80005194:	f8b40223          	sb	a1,-124(s0)
    80005198:	46e57663          	bgeu	a0,a4,80005604 <__printf+0x62c>
    8000519c:	02d7f5bb          	remuw	a1,a5,a3
    800051a0:	02059593          	slli	a1,a1,0x20
    800051a4:	0205d593          	srli	a1,a1,0x20
    800051a8:	00bd85b3          	add	a1,s11,a1
    800051ac:	0005c583          	lbu	a1,0(a1)
    800051b0:	02d7d7bb          	divuw	a5,a5,a3
    800051b4:	f8b402a3          	sb	a1,-123(s0)
    800051b8:	46ea7863          	bgeu	s4,a4,80005628 <__printf+0x650>
    800051bc:	02d7f5bb          	remuw	a1,a5,a3
    800051c0:	02059593          	slli	a1,a1,0x20
    800051c4:	0205d593          	srli	a1,a1,0x20
    800051c8:	00bd85b3          	add	a1,s11,a1
    800051cc:	0005c583          	lbu	a1,0(a1)
    800051d0:	02d7d7bb          	divuw	a5,a5,a3
    800051d4:	f8b40323          	sb	a1,-122(s0)
    800051d8:	3eeaf863          	bgeu	s5,a4,800055c8 <__printf+0x5f0>
    800051dc:	02d7f5bb          	remuw	a1,a5,a3
    800051e0:	02059593          	slli	a1,a1,0x20
    800051e4:	0205d593          	srli	a1,a1,0x20
    800051e8:	00bd85b3          	add	a1,s11,a1
    800051ec:	0005c583          	lbu	a1,0(a1)
    800051f0:	02d7d7bb          	divuw	a5,a5,a3
    800051f4:	f8b403a3          	sb	a1,-121(s0)
    800051f8:	42eb7e63          	bgeu	s6,a4,80005634 <__printf+0x65c>
    800051fc:	02d7f5bb          	remuw	a1,a5,a3
    80005200:	02059593          	slli	a1,a1,0x20
    80005204:	0205d593          	srli	a1,a1,0x20
    80005208:	00bd85b3          	add	a1,s11,a1
    8000520c:	0005c583          	lbu	a1,0(a1)
    80005210:	02d7d7bb          	divuw	a5,a5,a3
    80005214:	f8b40423          	sb	a1,-120(s0)
    80005218:	42ebfc63          	bgeu	s7,a4,80005650 <__printf+0x678>
    8000521c:	02079793          	slli	a5,a5,0x20
    80005220:	0207d793          	srli	a5,a5,0x20
    80005224:	00fd8db3          	add	s11,s11,a5
    80005228:	000dc703          	lbu	a4,0(s11)
    8000522c:	00a00793          	li	a5,10
    80005230:	00900c93          	li	s9,9
    80005234:	f8e404a3          	sb	a4,-119(s0)
    80005238:	00065c63          	bgez	a2,80005250 <__printf+0x278>
    8000523c:	f9040713          	addi	a4,s0,-112
    80005240:	00f70733          	add	a4,a4,a5
    80005244:	02d00693          	li	a3,45
    80005248:	fed70823          	sb	a3,-16(a4)
    8000524c:	00078c93          	mv	s9,a5
    80005250:	f8040793          	addi	a5,s0,-128
    80005254:	01978cb3          	add	s9,a5,s9
    80005258:	f7f40d13          	addi	s10,s0,-129
    8000525c:	000cc503          	lbu	a0,0(s9)
    80005260:	fffc8c93          	addi	s9,s9,-1
    80005264:	00000097          	auipc	ra,0x0
    80005268:	b90080e7          	jalr	-1136(ra) # 80004df4 <consputc>
    8000526c:	ffac98e3          	bne	s9,s10,8000525c <__printf+0x284>
    80005270:	00094503          	lbu	a0,0(s2)
    80005274:	e00514e3          	bnez	a0,8000507c <__printf+0xa4>
    80005278:	1a0c1663          	bnez	s8,80005424 <__printf+0x44c>
    8000527c:	08813083          	ld	ra,136(sp)
    80005280:	08013403          	ld	s0,128(sp)
    80005284:	07813483          	ld	s1,120(sp)
    80005288:	07013903          	ld	s2,112(sp)
    8000528c:	06813983          	ld	s3,104(sp)
    80005290:	06013a03          	ld	s4,96(sp)
    80005294:	05813a83          	ld	s5,88(sp)
    80005298:	05013b03          	ld	s6,80(sp)
    8000529c:	04813b83          	ld	s7,72(sp)
    800052a0:	04013c03          	ld	s8,64(sp)
    800052a4:	03813c83          	ld	s9,56(sp)
    800052a8:	03013d03          	ld	s10,48(sp)
    800052ac:	02813d83          	ld	s11,40(sp)
    800052b0:	0d010113          	addi	sp,sp,208
    800052b4:	00008067          	ret
    800052b8:	07300713          	li	a4,115
    800052bc:	1ce78a63          	beq	a5,a4,80005490 <__printf+0x4b8>
    800052c0:	07800713          	li	a4,120
    800052c4:	1ee79e63          	bne	a5,a4,800054c0 <__printf+0x4e8>
    800052c8:	f7843783          	ld	a5,-136(s0)
    800052cc:	0007a703          	lw	a4,0(a5)
    800052d0:	00878793          	addi	a5,a5,8
    800052d4:	f6f43c23          	sd	a5,-136(s0)
    800052d8:	28074263          	bltz	a4,8000555c <__printf+0x584>
    800052dc:	00002d97          	auipc	s11,0x2
    800052e0:	13cd8d93          	addi	s11,s11,316 # 80007418 <digits>
    800052e4:	00f77793          	andi	a5,a4,15
    800052e8:	00fd87b3          	add	a5,s11,a5
    800052ec:	0007c683          	lbu	a3,0(a5)
    800052f0:	00f00613          	li	a2,15
    800052f4:	0007079b          	sext.w	a5,a4
    800052f8:	f8d40023          	sb	a3,-128(s0)
    800052fc:	0047559b          	srliw	a1,a4,0x4
    80005300:	0047569b          	srliw	a3,a4,0x4
    80005304:	00000c93          	li	s9,0
    80005308:	0ee65063          	bge	a2,a4,800053e8 <__printf+0x410>
    8000530c:	00f6f693          	andi	a3,a3,15
    80005310:	00dd86b3          	add	a3,s11,a3
    80005314:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005318:	0087d79b          	srliw	a5,a5,0x8
    8000531c:	00100c93          	li	s9,1
    80005320:	f8d400a3          	sb	a3,-127(s0)
    80005324:	0cb67263          	bgeu	a2,a1,800053e8 <__printf+0x410>
    80005328:	00f7f693          	andi	a3,a5,15
    8000532c:	00dd86b3          	add	a3,s11,a3
    80005330:	0006c583          	lbu	a1,0(a3)
    80005334:	00f00613          	li	a2,15
    80005338:	0047d69b          	srliw	a3,a5,0x4
    8000533c:	f8b40123          	sb	a1,-126(s0)
    80005340:	0047d593          	srli	a1,a5,0x4
    80005344:	28f67e63          	bgeu	a2,a5,800055e0 <__printf+0x608>
    80005348:	00f6f693          	andi	a3,a3,15
    8000534c:	00dd86b3          	add	a3,s11,a3
    80005350:	0006c503          	lbu	a0,0(a3)
    80005354:	0087d813          	srli	a6,a5,0x8
    80005358:	0087d69b          	srliw	a3,a5,0x8
    8000535c:	f8a401a3          	sb	a0,-125(s0)
    80005360:	28b67663          	bgeu	a2,a1,800055ec <__printf+0x614>
    80005364:	00f6f693          	andi	a3,a3,15
    80005368:	00dd86b3          	add	a3,s11,a3
    8000536c:	0006c583          	lbu	a1,0(a3)
    80005370:	00c7d513          	srli	a0,a5,0xc
    80005374:	00c7d69b          	srliw	a3,a5,0xc
    80005378:	f8b40223          	sb	a1,-124(s0)
    8000537c:	29067a63          	bgeu	a2,a6,80005610 <__printf+0x638>
    80005380:	00f6f693          	andi	a3,a3,15
    80005384:	00dd86b3          	add	a3,s11,a3
    80005388:	0006c583          	lbu	a1,0(a3)
    8000538c:	0107d813          	srli	a6,a5,0x10
    80005390:	0107d69b          	srliw	a3,a5,0x10
    80005394:	f8b402a3          	sb	a1,-123(s0)
    80005398:	28a67263          	bgeu	a2,a0,8000561c <__printf+0x644>
    8000539c:	00f6f693          	andi	a3,a3,15
    800053a0:	00dd86b3          	add	a3,s11,a3
    800053a4:	0006c683          	lbu	a3,0(a3)
    800053a8:	0147d79b          	srliw	a5,a5,0x14
    800053ac:	f8d40323          	sb	a3,-122(s0)
    800053b0:	21067663          	bgeu	a2,a6,800055bc <__printf+0x5e4>
    800053b4:	02079793          	slli	a5,a5,0x20
    800053b8:	0207d793          	srli	a5,a5,0x20
    800053bc:	00fd8db3          	add	s11,s11,a5
    800053c0:	000dc683          	lbu	a3,0(s11)
    800053c4:	00800793          	li	a5,8
    800053c8:	00700c93          	li	s9,7
    800053cc:	f8d403a3          	sb	a3,-121(s0)
    800053d0:	00075c63          	bgez	a4,800053e8 <__printf+0x410>
    800053d4:	f9040713          	addi	a4,s0,-112
    800053d8:	00f70733          	add	a4,a4,a5
    800053dc:	02d00693          	li	a3,45
    800053e0:	fed70823          	sb	a3,-16(a4)
    800053e4:	00078c93          	mv	s9,a5
    800053e8:	f8040793          	addi	a5,s0,-128
    800053ec:	01978cb3          	add	s9,a5,s9
    800053f0:	f7f40d13          	addi	s10,s0,-129
    800053f4:	000cc503          	lbu	a0,0(s9)
    800053f8:	fffc8c93          	addi	s9,s9,-1
    800053fc:	00000097          	auipc	ra,0x0
    80005400:	9f8080e7          	jalr	-1544(ra) # 80004df4 <consputc>
    80005404:	ff9d18e3          	bne	s10,s9,800053f4 <__printf+0x41c>
    80005408:	0100006f          	j	80005418 <__printf+0x440>
    8000540c:	00000097          	auipc	ra,0x0
    80005410:	9e8080e7          	jalr	-1560(ra) # 80004df4 <consputc>
    80005414:	000c8493          	mv	s1,s9
    80005418:	00094503          	lbu	a0,0(s2)
    8000541c:	c60510e3          	bnez	a0,8000507c <__printf+0xa4>
    80005420:	e40c0ee3          	beqz	s8,8000527c <__printf+0x2a4>
    80005424:	00004517          	auipc	a0,0x4
    80005428:	77c50513          	addi	a0,a0,1916 # 80009ba0 <pr>
    8000542c:	00001097          	auipc	ra,0x1
    80005430:	94c080e7          	jalr	-1716(ra) # 80005d78 <release>
    80005434:	e49ff06f          	j	8000527c <__printf+0x2a4>
    80005438:	f7843783          	ld	a5,-136(s0)
    8000543c:	03000513          	li	a0,48
    80005440:	01000d13          	li	s10,16
    80005444:	00878713          	addi	a4,a5,8
    80005448:	0007bc83          	ld	s9,0(a5)
    8000544c:	f6e43c23          	sd	a4,-136(s0)
    80005450:	00000097          	auipc	ra,0x0
    80005454:	9a4080e7          	jalr	-1628(ra) # 80004df4 <consputc>
    80005458:	07800513          	li	a0,120
    8000545c:	00000097          	auipc	ra,0x0
    80005460:	998080e7          	jalr	-1640(ra) # 80004df4 <consputc>
    80005464:	00002d97          	auipc	s11,0x2
    80005468:	fb4d8d93          	addi	s11,s11,-76 # 80007418 <digits>
    8000546c:	03ccd793          	srli	a5,s9,0x3c
    80005470:	00fd87b3          	add	a5,s11,a5
    80005474:	0007c503          	lbu	a0,0(a5)
    80005478:	fffd0d1b          	addiw	s10,s10,-1
    8000547c:	004c9c93          	slli	s9,s9,0x4
    80005480:	00000097          	auipc	ra,0x0
    80005484:	974080e7          	jalr	-1676(ra) # 80004df4 <consputc>
    80005488:	fe0d12e3          	bnez	s10,8000546c <__printf+0x494>
    8000548c:	f8dff06f          	j	80005418 <__printf+0x440>
    80005490:	f7843783          	ld	a5,-136(s0)
    80005494:	0007bc83          	ld	s9,0(a5)
    80005498:	00878793          	addi	a5,a5,8
    8000549c:	f6f43c23          	sd	a5,-136(s0)
    800054a0:	000c9a63          	bnez	s9,800054b4 <__printf+0x4dc>
    800054a4:	1080006f          	j	800055ac <__printf+0x5d4>
    800054a8:	001c8c93          	addi	s9,s9,1
    800054ac:	00000097          	auipc	ra,0x0
    800054b0:	948080e7          	jalr	-1720(ra) # 80004df4 <consputc>
    800054b4:	000cc503          	lbu	a0,0(s9)
    800054b8:	fe0518e3          	bnez	a0,800054a8 <__printf+0x4d0>
    800054bc:	f5dff06f          	j	80005418 <__printf+0x440>
    800054c0:	02500513          	li	a0,37
    800054c4:	00000097          	auipc	ra,0x0
    800054c8:	930080e7          	jalr	-1744(ra) # 80004df4 <consputc>
    800054cc:	000c8513          	mv	a0,s9
    800054d0:	00000097          	auipc	ra,0x0
    800054d4:	924080e7          	jalr	-1756(ra) # 80004df4 <consputc>
    800054d8:	f41ff06f          	j	80005418 <__printf+0x440>
    800054dc:	02500513          	li	a0,37
    800054e0:	00000097          	auipc	ra,0x0
    800054e4:	914080e7          	jalr	-1772(ra) # 80004df4 <consputc>
    800054e8:	f31ff06f          	j	80005418 <__printf+0x440>
    800054ec:	00030513          	mv	a0,t1
    800054f0:	00000097          	auipc	ra,0x0
    800054f4:	7bc080e7          	jalr	1980(ra) # 80005cac <acquire>
    800054f8:	b4dff06f          	j	80005044 <__printf+0x6c>
    800054fc:	40c0053b          	negw	a0,a2
    80005500:	00a00713          	li	a4,10
    80005504:	02e576bb          	remuw	a3,a0,a4
    80005508:	00002d97          	auipc	s11,0x2
    8000550c:	f10d8d93          	addi	s11,s11,-240 # 80007418 <digits>
    80005510:	ff700593          	li	a1,-9
    80005514:	02069693          	slli	a3,a3,0x20
    80005518:	0206d693          	srli	a3,a3,0x20
    8000551c:	00dd86b3          	add	a3,s11,a3
    80005520:	0006c683          	lbu	a3,0(a3)
    80005524:	02e557bb          	divuw	a5,a0,a4
    80005528:	f8d40023          	sb	a3,-128(s0)
    8000552c:	10b65e63          	bge	a2,a1,80005648 <__printf+0x670>
    80005530:	06300593          	li	a1,99
    80005534:	02e7f6bb          	remuw	a3,a5,a4
    80005538:	02069693          	slli	a3,a3,0x20
    8000553c:	0206d693          	srli	a3,a3,0x20
    80005540:	00dd86b3          	add	a3,s11,a3
    80005544:	0006c683          	lbu	a3,0(a3)
    80005548:	02e7d73b          	divuw	a4,a5,a4
    8000554c:	00200793          	li	a5,2
    80005550:	f8d400a3          	sb	a3,-127(s0)
    80005554:	bca5ece3          	bltu	a1,a0,8000512c <__printf+0x154>
    80005558:	ce5ff06f          	j	8000523c <__printf+0x264>
    8000555c:	40e007bb          	negw	a5,a4
    80005560:	00002d97          	auipc	s11,0x2
    80005564:	eb8d8d93          	addi	s11,s11,-328 # 80007418 <digits>
    80005568:	00f7f693          	andi	a3,a5,15
    8000556c:	00dd86b3          	add	a3,s11,a3
    80005570:	0006c583          	lbu	a1,0(a3)
    80005574:	ff100613          	li	a2,-15
    80005578:	0047d69b          	srliw	a3,a5,0x4
    8000557c:	f8b40023          	sb	a1,-128(s0)
    80005580:	0047d59b          	srliw	a1,a5,0x4
    80005584:	0ac75e63          	bge	a4,a2,80005640 <__printf+0x668>
    80005588:	00f6f693          	andi	a3,a3,15
    8000558c:	00dd86b3          	add	a3,s11,a3
    80005590:	0006c603          	lbu	a2,0(a3)
    80005594:	00f00693          	li	a3,15
    80005598:	0087d79b          	srliw	a5,a5,0x8
    8000559c:	f8c400a3          	sb	a2,-127(s0)
    800055a0:	d8b6e4e3          	bltu	a3,a1,80005328 <__printf+0x350>
    800055a4:	00200793          	li	a5,2
    800055a8:	e2dff06f          	j	800053d4 <__printf+0x3fc>
    800055ac:	00002c97          	auipc	s9,0x2
    800055b0:	e4cc8c93          	addi	s9,s9,-436 # 800073f8 <CONSOLE_STATUS+0x3e8>
    800055b4:	02800513          	li	a0,40
    800055b8:	ef1ff06f          	j	800054a8 <__printf+0x4d0>
    800055bc:	00700793          	li	a5,7
    800055c0:	00600c93          	li	s9,6
    800055c4:	e0dff06f          	j	800053d0 <__printf+0x3f8>
    800055c8:	00700793          	li	a5,7
    800055cc:	00600c93          	li	s9,6
    800055d0:	c69ff06f          	j	80005238 <__printf+0x260>
    800055d4:	00300793          	li	a5,3
    800055d8:	00200c93          	li	s9,2
    800055dc:	c5dff06f          	j	80005238 <__printf+0x260>
    800055e0:	00300793          	li	a5,3
    800055e4:	00200c93          	li	s9,2
    800055e8:	de9ff06f          	j	800053d0 <__printf+0x3f8>
    800055ec:	00400793          	li	a5,4
    800055f0:	00300c93          	li	s9,3
    800055f4:	dddff06f          	j	800053d0 <__printf+0x3f8>
    800055f8:	00400793          	li	a5,4
    800055fc:	00300c93          	li	s9,3
    80005600:	c39ff06f          	j	80005238 <__printf+0x260>
    80005604:	00500793          	li	a5,5
    80005608:	00400c93          	li	s9,4
    8000560c:	c2dff06f          	j	80005238 <__printf+0x260>
    80005610:	00500793          	li	a5,5
    80005614:	00400c93          	li	s9,4
    80005618:	db9ff06f          	j	800053d0 <__printf+0x3f8>
    8000561c:	00600793          	li	a5,6
    80005620:	00500c93          	li	s9,5
    80005624:	dadff06f          	j	800053d0 <__printf+0x3f8>
    80005628:	00600793          	li	a5,6
    8000562c:	00500c93          	li	s9,5
    80005630:	c09ff06f          	j	80005238 <__printf+0x260>
    80005634:	00800793          	li	a5,8
    80005638:	00700c93          	li	s9,7
    8000563c:	bfdff06f          	j	80005238 <__printf+0x260>
    80005640:	00100793          	li	a5,1
    80005644:	d91ff06f          	j	800053d4 <__printf+0x3fc>
    80005648:	00100793          	li	a5,1
    8000564c:	bf1ff06f          	j	8000523c <__printf+0x264>
    80005650:	00900793          	li	a5,9
    80005654:	00800c93          	li	s9,8
    80005658:	be1ff06f          	j	80005238 <__printf+0x260>
    8000565c:	00002517          	auipc	a0,0x2
    80005660:	da450513          	addi	a0,a0,-604 # 80007400 <CONSOLE_STATUS+0x3f0>
    80005664:	00000097          	auipc	ra,0x0
    80005668:	918080e7          	jalr	-1768(ra) # 80004f7c <panic>

000000008000566c <printfinit>:
    8000566c:	fe010113          	addi	sp,sp,-32
    80005670:	00813823          	sd	s0,16(sp)
    80005674:	00913423          	sd	s1,8(sp)
    80005678:	00113c23          	sd	ra,24(sp)
    8000567c:	02010413          	addi	s0,sp,32
    80005680:	00004497          	auipc	s1,0x4
    80005684:	52048493          	addi	s1,s1,1312 # 80009ba0 <pr>
    80005688:	00048513          	mv	a0,s1
    8000568c:	00002597          	auipc	a1,0x2
    80005690:	d8458593          	addi	a1,a1,-636 # 80007410 <CONSOLE_STATUS+0x400>
    80005694:	00000097          	auipc	ra,0x0
    80005698:	5f4080e7          	jalr	1524(ra) # 80005c88 <initlock>
    8000569c:	01813083          	ld	ra,24(sp)
    800056a0:	01013403          	ld	s0,16(sp)
    800056a4:	0004ac23          	sw	zero,24(s1)
    800056a8:	00813483          	ld	s1,8(sp)
    800056ac:	02010113          	addi	sp,sp,32
    800056b0:	00008067          	ret

00000000800056b4 <uartinit>:
    800056b4:	ff010113          	addi	sp,sp,-16
    800056b8:	00813423          	sd	s0,8(sp)
    800056bc:	01010413          	addi	s0,sp,16
    800056c0:	100007b7          	lui	a5,0x10000
    800056c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800056c8:	f8000713          	li	a4,-128
    800056cc:	00e781a3          	sb	a4,3(a5)
    800056d0:	00300713          	li	a4,3
    800056d4:	00e78023          	sb	a4,0(a5)
    800056d8:	000780a3          	sb	zero,1(a5)
    800056dc:	00e781a3          	sb	a4,3(a5)
    800056e0:	00700693          	li	a3,7
    800056e4:	00d78123          	sb	a3,2(a5)
    800056e8:	00e780a3          	sb	a4,1(a5)
    800056ec:	00813403          	ld	s0,8(sp)
    800056f0:	01010113          	addi	sp,sp,16
    800056f4:	00008067          	ret

00000000800056f8 <uartputc>:
    800056f8:	00003797          	auipc	a5,0x3
    800056fc:	2007a783          	lw	a5,512(a5) # 800088f8 <panicked>
    80005700:	00078463          	beqz	a5,80005708 <uartputc+0x10>
    80005704:	0000006f          	j	80005704 <uartputc+0xc>
    80005708:	fd010113          	addi	sp,sp,-48
    8000570c:	02813023          	sd	s0,32(sp)
    80005710:	00913c23          	sd	s1,24(sp)
    80005714:	01213823          	sd	s2,16(sp)
    80005718:	01313423          	sd	s3,8(sp)
    8000571c:	02113423          	sd	ra,40(sp)
    80005720:	03010413          	addi	s0,sp,48
    80005724:	00003917          	auipc	s2,0x3
    80005728:	1dc90913          	addi	s2,s2,476 # 80008900 <uart_tx_r>
    8000572c:	00093783          	ld	a5,0(s2)
    80005730:	00003497          	auipc	s1,0x3
    80005734:	1d848493          	addi	s1,s1,472 # 80008908 <uart_tx_w>
    80005738:	0004b703          	ld	a4,0(s1)
    8000573c:	02078693          	addi	a3,a5,32
    80005740:	00050993          	mv	s3,a0
    80005744:	02e69c63          	bne	a3,a4,8000577c <uartputc+0x84>
    80005748:	00001097          	auipc	ra,0x1
    8000574c:	834080e7          	jalr	-1996(ra) # 80005f7c <push_on>
    80005750:	00093783          	ld	a5,0(s2)
    80005754:	0004b703          	ld	a4,0(s1)
    80005758:	02078793          	addi	a5,a5,32
    8000575c:	00e79463          	bne	a5,a4,80005764 <uartputc+0x6c>
    80005760:	0000006f          	j	80005760 <uartputc+0x68>
    80005764:	00001097          	auipc	ra,0x1
    80005768:	88c080e7          	jalr	-1908(ra) # 80005ff0 <pop_on>
    8000576c:	00093783          	ld	a5,0(s2)
    80005770:	0004b703          	ld	a4,0(s1)
    80005774:	02078693          	addi	a3,a5,32
    80005778:	fce688e3          	beq	a3,a4,80005748 <uartputc+0x50>
    8000577c:	01f77693          	andi	a3,a4,31
    80005780:	00004597          	auipc	a1,0x4
    80005784:	44058593          	addi	a1,a1,1088 # 80009bc0 <uart_tx_buf>
    80005788:	00d586b3          	add	a3,a1,a3
    8000578c:	00170713          	addi	a4,a4,1
    80005790:	01368023          	sb	s3,0(a3)
    80005794:	00e4b023          	sd	a4,0(s1)
    80005798:	10000637          	lui	a2,0x10000
    8000579c:	02f71063          	bne	a4,a5,800057bc <uartputc+0xc4>
    800057a0:	0340006f          	j	800057d4 <uartputc+0xdc>
    800057a4:	00074703          	lbu	a4,0(a4)
    800057a8:	00f93023          	sd	a5,0(s2)
    800057ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800057b0:	00093783          	ld	a5,0(s2)
    800057b4:	0004b703          	ld	a4,0(s1)
    800057b8:	00f70e63          	beq	a4,a5,800057d4 <uartputc+0xdc>
    800057bc:	00564683          	lbu	a3,5(a2)
    800057c0:	01f7f713          	andi	a4,a5,31
    800057c4:	00e58733          	add	a4,a1,a4
    800057c8:	0206f693          	andi	a3,a3,32
    800057cc:	00178793          	addi	a5,a5,1
    800057d0:	fc069ae3          	bnez	a3,800057a4 <uartputc+0xac>
    800057d4:	02813083          	ld	ra,40(sp)
    800057d8:	02013403          	ld	s0,32(sp)
    800057dc:	01813483          	ld	s1,24(sp)
    800057e0:	01013903          	ld	s2,16(sp)
    800057e4:	00813983          	ld	s3,8(sp)
    800057e8:	03010113          	addi	sp,sp,48
    800057ec:	00008067          	ret

00000000800057f0 <uartputc_sync>:
    800057f0:	ff010113          	addi	sp,sp,-16
    800057f4:	00813423          	sd	s0,8(sp)
    800057f8:	01010413          	addi	s0,sp,16
    800057fc:	00003717          	auipc	a4,0x3
    80005800:	0fc72703          	lw	a4,252(a4) # 800088f8 <panicked>
    80005804:	02071663          	bnez	a4,80005830 <uartputc_sync+0x40>
    80005808:	00050793          	mv	a5,a0
    8000580c:	100006b7          	lui	a3,0x10000
    80005810:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005814:	02077713          	andi	a4,a4,32
    80005818:	fe070ce3          	beqz	a4,80005810 <uartputc_sync+0x20>
    8000581c:	0ff7f793          	andi	a5,a5,255
    80005820:	00f68023          	sb	a5,0(a3)
    80005824:	00813403          	ld	s0,8(sp)
    80005828:	01010113          	addi	sp,sp,16
    8000582c:	00008067          	ret
    80005830:	0000006f          	j	80005830 <uartputc_sync+0x40>

0000000080005834 <uartstart>:
    80005834:	ff010113          	addi	sp,sp,-16
    80005838:	00813423          	sd	s0,8(sp)
    8000583c:	01010413          	addi	s0,sp,16
    80005840:	00003617          	auipc	a2,0x3
    80005844:	0c060613          	addi	a2,a2,192 # 80008900 <uart_tx_r>
    80005848:	00003517          	auipc	a0,0x3
    8000584c:	0c050513          	addi	a0,a0,192 # 80008908 <uart_tx_w>
    80005850:	00063783          	ld	a5,0(a2)
    80005854:	00053703          	ld	a4,0(a0)
    80005858:	04f70263          	beq	a4,a5,8000589c <uartstart+0x68>
    8000585c:	100005b7          	lui	a1,0x10000
    80005860:	00004817          	auipc	a6,0x4
    80005864:	36080813          	addi	a6,a6,864 # 80009bc0 <uart_tx_buf>
    80005868:	01c0006f          	j	80005884 <uartstart+0x50>
    8000586c:	0006c703          	lbu	a4,0(a3)
    80005870:	00f63023          	sd	a5,0(a2)
    80005874:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005878:	00063783          	ld	a5,0(a2)
    8000587c:	00053703          	ld	a4,0(a0)
    80005880:	00f70e63          	beq	a4,a5,8000589c <uartstart+0x68>
    80005884:	01f7f713          	andi	a4,a5,31
    80005888:	00e806b3          	add	a3,a6,a4
    8000588c:	0055c703          	lbu	a4,5(a1)
    80005890:	00178793          	addi	a5,a5,1
    80005894:	02077713          	andi	a4,a4,32
    80005898:	fc071ae3          	bnez	a4,8000586c <uartstart+0x38>
    8000589c:	00813403          	ld	s0,8(sp)
    800058a0:	01010113          	addi	sp,sp,16
    800058a4:	00008067          	ret

00000000800058a8 <uartgetc>:
    800058a8:	ff010113          	addi	sp,sp,-16
    800058ac:	00813423          	sd	s0,8(sp)
    800058b0:	01010413          	addi	s0,sp,16
    800058b4:	10000737          	lui	a4,0x10000
    800058b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800058bc:	0017f793          	andi	a5,a5,1
    800058c0:	00078c63          	beqz	a5,800058d8 <uartgetc+0x30>
    800058c4:	00074503          	lbu	a0,0(a4)
    800058c8:	0ff57513          	andi	a0,a0,255
    800058cc:	00813403          	ld	s0,8(sp)
    800058d0:	01010113          	addi	sp,sp,16
    800058d4:	00008067          	ret
    800058d8:	fff00513          	li	a0,-1
    800058dc:	ff1ff06f          	j	800058cc <uartgetc+0x24>

00000000800058e0 <uartintr>:
    800058e0:	100007b7          	lui	a5,0x10000
    800058e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800058e8:	0017f793          	andi	a5,a5,1
    800058ec:	0a078463          	beqz	a5,80005994 <uartintr+0xb4>
    800058f0:	fe010113          	addi	sp,sp,-32
    800058f4:	00813823          	sd	s0,16(sp)
    800058f8:	00913423          	sd	s1,8(sp)
    800058fc:	00113c23          	sd	ra,24(sp)
    80005900:	02010413          	addi	s0,sp,32
    80005904:	100004b7          	lui	s1,0x10000
    80005908:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000590c:	0ff57513          	andi	a0,a0,255
    80005910:	fffff097          	auipc	ra,0xfffff
    80005914:	534080e7          	jalr	1332(ra) # 80004e44 <consoleintr>
    80005918:	0054c783          	lbu	a5,5(s1)
    8000591c:	0017f793          	andi	a5,a5,1
    80005920:	fe0794e3          	bnez	a5,80005908 <uartintr+0x28>
    80005924:	00003617          	auipc	a2,0x3
    80005928:	fdc60613          	addi	a2,a2,-36 # 80008900 <uart_tx_r>
    8000592c:	00003517          	auipc	a0,0x3
    80005930:	fdc50513          	addi	a0,a0,-36 # 80008908 <uart_tx_w>
    80005934:	00063783          	ld	a5,0(a2)
    80005938:	00053703          	ld	a4,0(a0)
    8000593c:	04f70263          	beq	a4,a5,80005980 <uartintr+0xa0>
    80005940:	100005b7          	lui	a1,0x10000
    80005944:	00004817          	auipc	a6,0x4
    80005948:	27c80813          	addi	a6,a6,636 # 80009bc0 <uart_tx_buf>
    8000594c:	01c0006f          	j	80005968 <uartintr+0x88>
    80005950:	0006c703          	lbu	a4,0(a3)
    80005954:	00f63023          	sd	a5,0(a2)
    80005958:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000595c:	00063783          	ld	a5,0(a2)
    80005960:	00053703          	ld	a4,0(a0)
    80005964:	00f70e63          	beq	a4,a5,80005980 <uartintr+0xa0>
    80005968:	01f7f713          	andi	a4,a5,31
    8000596c:	00e806b3          	add	a3,a6,a4
    80005970:	0055c703          	lbu	a4,5(a1)
    80005974:	00178793          	addi	a5,a5,1
    80005978:	02077713          	andi	a4,a4,32
    8000597c:	fc071ae3          	bnez	a4,80005950 <uartintr+0x70>
    80005980:	01813083          	ld	ra,24(sp)
    80005984:	01013403          	ld	s0,16(sp)
    80005988:	00813483          	ld	s1,8(sp)
    8000598c:	02010113          	addi	sp,sp,32
    80005990:	00008067          	ret
    80005994:	00003617          	auipc	a2,0x3
    80005998:	f6c60613          	addi	a2,a2,-148 # 80008900 <uart_tx_r>
    8000599c:	00003517          	auipc	a0,0x3
    800059a0:	f6c50513          	addi	a0,a0,-148 # 80008908 <uart_tx_w>
    800059a4:	00063783          	ld	a5,0(a2)
    800059a8:	00053703          	ld	a4,0(a0)
    800059ac:	04f70263          	beq	a4,a5,800059f0 <uartintr+0x110>
    800059b0:	100005b7          	lui	a1,0x10000
    800059b4:	00004817          	auipc	a6,0x4
    800059b8:	20c80813          	addi	a6,a6,524 # 80009bc0 <uart_tx_buf>
    800059bc:	01c0006f          	j	800059d8 <uartintr+0xf8>
    800059c0:	0006c703          	lbu	a4,0(a3)
    800059c4:	00f63023          	sd	a5,0(a2)
    800059c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800059cc:	00063783          	ld	a5,0(a2)
    800059d0:	00053703          	ld	a4,0(a0)
    800059d4:	02f70063          	beq	a4,a5,800059f4 <uartintr+0x114>
    800059d8:	01f7f713          	andi	a4,a5,31
    800059dc:	00e806b3          	add	a3,a6,a4
    800059e0:	0055c703          	lbu	a4,5(a1)
    800059e4:	00178793          	addi	a5,a5,1
    800059e8:	02077713          	andi	a4,a4,32
    800059ec:	fc071ae3          	bnez	a4,800059c0 <uartintr+0xe0>
    800059f0:	00008067          	ret
    800059f4:	00008067          	ret

00000000800059f8 <kinit>:
    800059f8:	fc010113          	addi	sp,sp,-64
    800059fc:	02913423          	sd	s1,40(sp)
    80005a00:	fffff7b7          	lui	a5,0xfffff
    80005a04:	00005497          	auipc	s1,0x5
    80005a08:	1db48493          	addi	s1,s1,475 # 8000abdf <end+0xfff>
    80005a0c:	02813823          	sd	s0,48(sp)
    80005a10:	01313c23          	sd	s3,24(sp)
    80005a14:	00f4f4b3          	and	s1,s1,a5
    80005a18:	02113c23          	sd	ra,56(sp)
    80005a1c:	03213023          	sd	s2,32(sp)
    80005a20:	01413823          	sd	s4,16(sp)
    80005a24:	01513423          	sd	s5,8(sp)
    80005a28:	04010413          	addi	s0,sp,64
    80005a2c:	000017b7          	lui	a5,0x1
    80005a30:	01100993          	li	s3,17
    80005a34:	00f487b3          	add	a5,s1,a5
    80005a38:	01b99993          	slli	s3,s3,0x1b
    80005a3c:	06f9e063          	bltu	s3,a5,80005a9c <kinit+0xa4>
    80005a40:	00004a97          	auipc	s5,0x4
    80005a44:	1a0a8a93          	addi	s5,s5,416 # 80009be0 <end>
    80005a48:	0754ec63          	bltu	s1,s5,80005ac0 <kinit+0xc8>
    80005a4c:	0734fa63          	bgeu	s1,s3,80005ac0 <kinit+0xc8>
    80005a50:	00088a37          	lui	s4,0x88
    80005a54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005a58:	00003917          	auipc	s2,0x3
    80005a5c:	eb890913          	addi	s2,s2,-328 # 80008910 <kmem>
    80005a60:	00ca1a13          	slli	s4,s4,0xc
    80005a64:	0140006f          	j	80005a78 <kinit+0x80>
    80005a68:	000017b7          	lui	a5,0x1
    80005a6c:	00f484b3          	add	s1,s1,a5
    80005a70:	0554e863          	bltu	s1,s5,80005ac0 <kinit+0xc8>
    80005a74:	0534f663          	bgeu	s1,s3,80005ac0 <kinit+0xc8>
    80005a78:	00001637          	lui	a2,0x1
    80005a7c:	00100593          	li	a1,1
    80005a80:	00048513          	mv	a0,s1
    80005a84:	00000097          	auipc	ra,0x0
    80005a88:	5e4080e7          	jalr	1508(ra) # 80006068 <__memset>
    80005a8c:	00093783          	ld	a5,0(s2)
    80005a90:	00f4b023          	sd	a5,0(s1)
    80005a94:	00993023          	sd	s1,0(s2)
    80005a98:	fd4498e3          	bne	s1,s4,80005a68 <kinit+0x70>
    80005a9c:	03813083          	ld	ra,56(sp)
    80005aa0:	03013403          	ld	s0,48(sp)
    80005aa4:	02813483          	ld	s1,40(sp)
    80005aa8:	02013903          	ld	s2,32(sp)
    80005aac:	01813983          	ld	s3,24(sp)
    80005ab0:	01013a03          	ld	s4,16(sp)
    80005ab4:	00813a83          	ld	s5,8(sp)
    80005ab8:	04010113          	addi	sp,sp,64
    80005abc:	00008067          	ret
    80005ac0:	00002517          	auipc	a0,0x2
    80005ac4:	97050513          	addi	a0,a0,-1680 # 80007430 <digits+0x18>
    80005ac8:	fffff097          	auipc	ra,0xfffff
    80005acc:	4b4080e7          	jalr	1204(ra) # 80004f7c <panic>

0000000080005ad0 <freerange>:
    80005ad0:	fc010113          	addi	sp,sp,-64
    80005ad4:	000017b7          	lui	a5,0x1
    80005ad8:	02913423          	sd	s1,40(sp)
    80005adc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005ae0:	009504b3          	add	s1,a0,s1
    80005ae4:	fffff537          	lui	a0,0xfffff
    80005ae8:	02813823          	sd	s0,48(sp)
    80005aec:	02113c23          	sd	ra,56(sp)
    80005af0:	03213023          	sd	s2,32(sp)
    80005af4:	01313c23          	sd	s3,24(sp)
    80005af8:	01413823          	sd	s4,16(sp)
    80005afc:	01513423          	sd	s5,8(sp)
    80005b00:	01613023          	sd	s6,0(sp)
    80005b04:	04010413          	addi	s0,sp,64
    80005b08:	00a4f4b3          	and	s1,s1,a0
    80005b0c:	00f487b3          	add	a5,s1,a5
    80005b10:	06f5e463          	bltu	a1,a5,80005b78 <freerange+0xa8>
    80005b14:	00004a97          	auipc	s5,0x4
    80005b18:	0cca8a93          	addi	s5,s5,204 # 80009be0 <end>
    80005b1c:	0954e263          	bltu	s1,s5,80005ba0 <freerange+0xd0>
    80005b20:	01100993          	li	s3,17
    80005b24:	01b99993          	slli	s3,s3,0x1b
    80005b28:	0734fc63          	bgeu	s1,s3,80005ba0 <freerange+0xd0>
    80005b2c:	00058a13          	mv	s4,a1
    80005b30:	00003917          	auipc	s2,0x3
    80005b34:	de090913          	addi	s2,s2,-544 # 80008910 <kmem>
    80005b38:	00002b37          	lui	s6,0x2
    80005b3c:	0140006f          	j	80005b50 <freerange+0x80>
    80005b40:	000017b7          	lui	a5,0x1
    80005b44:	00f484b3          	add	s1,s1,a5
    80005b48:	0554ec63          	bltu	s1,s5,80005ba0 <freerange+0xd0>
    80005b4c:	0534fa63          	bgeu	s1,s3,80005ba0 <freerange+0xd0>
    80005b50:	00001637          	lui	a2,0x1
    80005b54:	00100593          	li	a1,1
    80005b58:	00048513          	mv	a0,s1
    80005b5c:	00000097          	auipc	ra,0x0
    80005b60:	50c080e7          	jalr	1292(ra) # 80006068 <__memset>
    80005b64:	00093703          	ld	a4,0(s2)
    80005b68:	016487b3          	add	a5,s1,s6
    80005b6c:	00e4b023          	sd	a4,0(s1)
    80005b70:	00993023          	sd	s1,0(s2)
    80005b74:	fcfa76e3          	bgeu	s4,a5,80005b40 <freerange+0x70>
    80005b78:	03813083          	ld	ra,56(sp)
    80005b7c:	03013403          	ld	s0,48(sp)
    80005b80:	02813483          	ld	s1,40(sp)
    80005b84:	02013903          	ld	s2,32(sp)
    80005b88:	01813983          	ld	s3,24(sp)
    80005b8c:	01013a03          	ld	s4,16(sp)
    80005b90:	00813a83          	ld	s5,8(sp)
    80005b94:	00013b03          	ld	s6,0(sp)
    80005b98:	04010113          	addi	sp,sp,64
    80005b9c:	00008067          	ret
    80005ba0:	00002517          	auipc	a0,0x2
    80005ba4:	89050513          	addi	a0,a0,-1904 # 80007430 <digits+0x18>
    80005ba8:	fffff097          	auipc	ra,0xfffff
    80005bac:	3d4080e7          	jalr	980(ra) # 80004f7c <panic>

0000000080005bb0 <kfree>:
    80005bb0:	fe010113          	addi	sp,sp,-32
    80005bb4:	00813823          	sd	s0,16(sp)
    80005bb8:	00113c23          	sd	ra,24(sp)
    80005bbc:	00913423          	sd	s1,8(sp)
    80005bc0:	02010413          	addi	s0,sp,32
    80005bc4:	03451793          	slli	a5,a0,0x34
    80005bc8:	04079c63          	bnez	a5,80005c20 <kfree+0x70>
    80005bcc:	00004797          	auipc	a5,0x4
    80005bd0:	01478793          	addi	a5,a5,20 # 80009be0 <end>
    80005bd4:	00050493          	mv	s1,a0
    80005bd8:	04f56463          	bltu	a0,a5,80005c20 <kfree+0x70>
    80005bdc:	01100793          	li	a5,17
    80005be0:	01b79793          	slli	a5,a5,0x1b
    80005be4:	02f57e63          	bgeu	a0,a5,80005c20 <kfree+0x70>
    80005be8:	00001637          	lui	a2,0x1
    80005bec:	00100593          	li	a1,1
    80005bf0:	00000097          	auipc	ra,0x0
    80005bf4:	478080e7          	jalr	1144(ra) # 80006068 <__memset>
    80005bf8:	00003797          	auipc	a5,0x3
    80005bfc:	d1878793          	addi	a5,a5,-744 # 80008910 <kmem>
    80005c00:	0007b703          	ld	a4,0(a5)
    80005c04:	01813083          	ld	ra,24(sp)
    80005c08:	01013403          	ld	s0,16(sp)
    80005c0c:	00e4b023          	sd	a4,0(s1)
    80005c10:	0097b023          	sd	s1,0(a5)
    80005c14:	00813483          	ld	s1,8(sp)
    80005c18:	02010113          	addi	sp,sp,32
    80005c1c:	00008067          	ret
    80005c20:	00002517          	auipc	a0,0x2
    80005c24:	81050513          	addi	a0,a0,-2032 # 80007430 <digits+0x18>
    80005c28:	fffff097          	auipc	ra,0xfffff
    80005c2c:	354080e7          	jalr	852(ra) # 80004f7c <panic>

0000000080005c30 <kalloc>:
    80005c30:	fe010113          	addi	sp,sp,-32
    80005c34:	00813823          	sd	s0,16(sp)
    80005c38:	00913423          	sd	s1,8(sp)
    80005c3c:	00113c23          	sd	ra,24(sp)
    80005c40:	02010413          	addi	s0,sp,32
    80005c44:	00003797          	auipc	a5,0x3
    80005c48:	ccc78793          	addi	a5,a5,-820 # 80008910 <kmem>
    80005c4c:	0007b483          	ld	s1,0(a5)
    80005c50:	02048063          	beqz	s1,80005c70 <kalloc+0x40>
    80005c54:	0004b703          	ld	a4,0(s1)
    80005c58:	00001637          	lui	a2,0x1
    80005c5c:	00500593          	li	a1,5
    80005c60:	00048513          	mv	a0,s1
    80005c64:	00e7b023          	sd	a4,0(a5)
    80005c68:	00000097          	auipc	ra,0x0
    80005c6c:	400080e7          	jalr	1024(ra) # 80006068 <__memset>
    80005c70:	01813083          	ld	ra,24(sp)
    80005c74:	01013403          	ld	s0,16(sp)
    80005c78:	00048513          	mv	a0,s1
    80005c7c:	00813483          	ld	s1,8(sp)
    80005c80:	02010113          	addi	sp,sp,32
    80005c84:	00008067          	ret

0000000080005c88 <initlock>:
    80005c88:	ff010113          	addi	sp,sp,-16
    80005c8c:	00813423          	sd	s0,8(sp)
    80005c90:	01010413          	addi	s0,sp,16
    80005c94:	00813403          	ld	s0,8(sp)
    80005c98:	00b53423          	sd	a1,8(a0)
    80005c9c:	00052023          	sw	zero,0(a0)
    80005ca0:	00053823          	sd	zero,16(a0)
    80005ca4:	01010113          	addi	sp,sp,16
    80005ca8:	00008067          	ret

0000000080005cac <acquire>:
    80005cac:	fe010113          	addi	sp,sp,-32
    80005cb0:	00813823          	sd	s0,16(sp)
    80005cb4:	00913423          	sd	s1,8(sp)
    80005cb8:	00113c23          	sd	ra,24(sp)
    80005cbc:	01213023          	sd	s2,0(sp)
    80005cc0:	02010413          	addi	s0,sp,32
    80005cc4:	00050493          	mv	s1,a0
    80005cc8:	10002973          	csrr	s2,sstatus
    80005ccc:	100027f3          	csrr	a5,sstatus
    80005cd0:	ffd7f793          	andi	a5,a5,-3
    80005cd4:	10079073          	csrw	sstatus,a5
    80005cd8:	fffff097          	auipc	ra,0xfffff
    80005cdc:	8ec080e7          	jalr	-1812(ra) # 800045c4 <mycpu>
    80005ce0:	07852783          	lw	a5,120(a0)
    80005ce4:	06078e63          	beqz	a5,80005d60 <acquire+0xb4>
    80005ce8:	fffff097          	auipc	ra,0xfffff
    80005cec:	8dc080e7          	jalr	-1828(ra) # 800045c4 <mycpu>
    80005cf0:	07852783          	lw	a5,120(a0)
    80005cf4:	0004a703          	lw	a4,0(s1)
    80005cf8:	0017879b          	addiw	a5,a5,1
    80005cfc:	06f52c23          	sw	a5,120(a0)
    80005d00:	04071063          	bnez	a4,80005d40 <acquire+0x94>
    80005d04:	00100713          	li	a4,1
    80005d08:	00070793          	mv	a5,a4
    80005d0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005d10:	0007879b          	sext.w	a5,a5
    80005d14:	fe079ae3          	bnez	a5,80005d08 <acquire+0x5c>
    80005d18:	0ff0000f          	fence
    80005d1c:	fffff097          	auipc	ra,0xfffff
    80005d20:	8a8080e7          	jalr	-1880(ra) # 800045c4 <mycpu>
    80005d24:	01813083          	ld	ra,24(sp)
    80005d28:	01013403          	ld	s0,16(sp)
    80005d2c:	00a4b823          	sd	a0,16(s1)
    80005d30:	00013903          	ld	s2,0(sp)
    80005d34:	00813483          	ld	s1,8(sp)
    80005d38:	02010113          	addi	sp,sp,32
    80005d3c:	00008067          	ret
    80005d40:	0104b903          	ld	s2,16(s1)
    80005d44:	fffff097          	auipc	ra,0xfffff
    80005d48:	880080e7          	jalr	-1920(ra) # 800045c4 <mycpu>
    80005d4c:	faa91ce3          	bne	s2,a0,80005d04 <acquire+0x58>
    80005d50:	00001517          	auipc	a0,0x1
    80005d54:	6e850513          	addi	a0,a0,1768 # 80007438 <digits+0x20>
    80005d58:	fffff097          	auipc	ra,0xfffff
    80005d5c:	224080e7          	jalr	548(ra) # 80004f7c <panic>
    80005d60:	00195913          	srli	s2,s2,0x1
    80005d64:	fffff097          	auipc	ra,0xfffff
    80005d68:	860080e7          	jalr	-1952(ra) # 800045c4 <mycpu>
    80005d6c:	00197913          	andi	s2,s2,1
    80005d70:	07252e23          	sw	s2,124(a0)
    80005d74:	f75ff06f          	j	80005ce8 <acquire+0x3c>

0000000080005d78 <release>:
    80005d78:	fe010113          	addi	sp,sp,-32
    80005d7c:	00813823          	sd	s0,16(sp)
    80005d80:	00113c23          	sd	ra,24(sp)
    80005d84:	00913423          	sd	s1,8(sp)
    80005d88:	01213023          	sd	s2,0(sp)
    80005d8c:	02010413          	addi	s0,sp,32
    80005d90:	00052783          	lw	a5,0(a0)
    80005d94:	00079a63          	bnez	a5,80005da8 <release+0x30>
    80005d98:	00001517          	auipc	a0,0x1
    80005d9c:	6a850513          	addi	a0,a0,1704 # 80007440 <digits+0x28>
    80005da0:	fffff097          	auipc	ra,0xfffff
    80005da4:	1dc080e7          	jalr	476(ra) # 80004f7c <panic>
    80005da8:	01053903          	ld	s2,16(a0)
    80005dac:	00050493          	mv	s1,a0
    80005db0:	fffff097          	auipc	ra,0xfffff
    80005db4:	814080e7          	jalr	-2028(ra) # 800045c4 <mycpu>
    80005db8:	fea910e3          	bne	s2,a0,80005d98 <release+0x20>
    80005dbc:	0004b823          	sd	zero,16(s1)
    80005dc0:	0ff0000f          	fence
    80005dc4:	0f50000f          	fence	iorw,ow
    80005dc8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80005dcc:	ffffe097          	auipc	ra,0xffffe
    80005dd0:	7f8080e7          	jalr	2040(ra) # 800045c4 <mycpu>
    80005dd4:	100027f3          	csrr	a5,sstatus
    80005dd8:	0027f793          	andi	a5,a5,2
    80005ddc:	04079a63          	bnez	a5,80005e30 <release+0xb8>
    80005de0:	07852783          	lw	a5,120(a0)
    80005de4:	02f05e63          	blez	a5,80005e20 <release+0xa8>
    80005de8:	fff7871b          	addiw	a4,a5,-1
    80005dec:	06e52c23          	sw	a4,120(a0)
    80005df0:	00071c63          	bnez	a4,80005e08 <release+0x90>
    80005df4:	07c52783          	lw	a5,124(a0)
    80005df8:	00078863          	beqz	a5,80005e08 <release+0x90>
    80005dfc:	100027f3          	csrr	a5,sstatus
    80005e00:	0027e793          	ori	a5,a5,2
    80005e04:	10079073          	csrw	sstatus,a5
    80005e08:	01813083          	ld	ra,24(sp)
    80005e0c:	01013403          	ld	s0,16(sp)
    80005e10:	00813483          	ld	s1,8(sp)
    80005e14:	00013903          	ld	s2,0(sp)
    80005e18:	02010113          	addi	sp,sp,32
    80005e1c:	00008067          	ret
    80005e20:	00001517          	auipc	a0,0x1
    80005e24:	64050513          	addi	a0,a0,1600 # 80007460 <digits+0x48>
    80005e28:	fffff097          	auipc	ra,0xfffff
    80005e2c:	154080e7          	jalr	340(ra) # 80004f7c <panic>
    80005e30:	00001517          	auipc	a0,0x1
    80005e34:	61850513          	addi	a0,a0,1560 # 80007448 <digits+0x30>
    80005e38:	fffff097          	auipc	ra,0xfffff
    80005e3c:	144080e7          	jalr	324(ra) # 80004f7c <panic>

0000000080005e40 <holding>:
    80005e40:	00052783          	lw	a5,0(a0)
    80005e44:	00079663          	bnez	a5,80005e50 <holding+0x10>
    80005e48:	00000513          	li	a0,0
    80005e4c:	00008067          	ret
    80005e50:	fe010113          	addi	sp,sp,-32
    80005e54:	00813823          	sd	s0,16(sp)
    80005e58:	00913423          	sd	s1,8(sp)
    80005e5c:	00113c23          	sd	ra,24(sp)
    80005e60:	02010413          	addi	s0,sp,32
    80005e64:	01053483          	ld	s1,16(a0)
    80005e68:	ffffe097          	auipc	ra,0xffffe
    80005e6c:	75c080e7          	jalr	1884(ra) # 800045c4 <mycpu>
    80005e70:	01813083          	ld	ra,24(sp)
    80005e74:	01013403          	ld	s0,16(sp)
    80005e78:	40a48533          	sub	a0,s1,a0
    80005e7c:	00153513          	seqz	a0,a0
    80005e80:	00813483          	ld	s1,8(sp)
    80005e84:	02010113          	addi	sp,sp,32
    80005e88:	00008067          	ret

0000000080005e8c <push_off>:
    80005e8c:	fe010113          	addi	sp,sp,-32
    80005e90:	00813823          	sd	s0,16(sp)
    80005e94:	00113c23          	sd	ra,24(sp)
    80005e98:	00913423          	sd	s1,8(sp)
    80005e9c:	02010413          	addi	s0,sp,32
    80005ea0:	100024f3          	csrr	s1,sstatus
    80005ea4:	100027f3          	csrr	a5,sstatus
    80005ea8:	ffd7f793          	andi	a5,a5,-3
    80005eac:	10079073          	csrw	sstatus,a5
    80005eb0:	ffffe097          	auipc	ra,0xffffe
    80005eb4:	714080e7          	jalr	1812(ra) # 800045c4 <mycpu>
    80005eb8:	07852783          	lw	a5,120(a0)
    80005ebc:	02078663          	beqz	a5,80005ee8 <push_off+0x5c>
    80005ec0:	ffffe097          	auipc	ra,0xffffe
    80005ec4:	704080e7          	jalr	1796(ra) # 800045c4 <mycpu>
    80005ec8:	07852783          	lw	a5,120(a0)
    80005ecc:	01813083          	ld	ra,24(sp)
    80005ed0:	01013403          	ld	s0,16(sp)
    80005ed4:	0017879b          	addiw	a5,a5,1
    80005ed8:	06f52c23          	sw	a5,120(a0)
    80005edc:	00813483          	ld	s1,8(sp)
    80005ee0:	02010113          	addi	sp,sp,32
    80005ee4:	00008067          	ret
    80005ee8:	0014d493          	srli	s1,s1,0x1
    80005eec:	ffffe097          	auipc	ra,0xffffe
    80005ef0:	6d8080e7          	jalr	1752(ra) # 800045c4 <mycpu>
    80005ef4:	0014f493          	andi	s1,s1,1
    80005ef8:	06952e23          	sw	s1,124(a0)
    80005efc:	fc5ff06f          	j	80005ec0 <push_off+0x34>

0000000080005f00 <pop_off>:
    80005f00:	ff010113          	addi	sp,sp,-16
    80005f04:	00813023          	sd	s0,0(sp)
    80005f08:	00113423          	sd	ra,8(sp)
    80005f0c:	01010413          	addi	s0,sp,16
    80005f10:	ffffe097          	auipc	ra,0xffffe
    80005f14:	6b4080e7          	jalr	1716(ra) # 800045c4 <mycpu>
    80005f18:	100027f3          	csrr	a5,sstatus
    80005f1c:	0027f793          	andi	a5,a5,2
    80005f20:	04079663          	bnez	a5,80005f6c <pop_off+0x6c>
    80005f24:	07852783          	lw	a5,120(a0)
    80005f28:	02f05a63          	blez	a5,80005f5c <pop_off+0x5c>
    80005f2c:	fff7871b          	addiw	a4,a5,-1
    80005f30:	06e52c23          	sw	a4,120(a0)
    80005f34:	00071c63          	bnez	a4,80005f4c <pop_off+0x4c>
    80005f38:	07c52783          	lw	a5,124(a0)
    80005f3c:	00078863          	beqz	a5,80005f4c <pop_off+0x4c>
    80005f40:	100027f3          	csrr	a5,sstatus
    80005f44:	0027e793          	ori	a5,a5,2
    80005f48:	10079073          	csrw	sstatus,a5
    80005f4c:	00813083          	ld	ra,8(sp)
    80005f50:	00013403          	ld	s0,0(sp)
    80005f54:	01010113          	addi	sp,sp,16
    80005f58:	00008067          	ret
    80005f5c:	00001517          	auipc	a0,0x1
    80005f60:	50450513          	addi	a0,a0,1284 # 80007460 <digits+0x48>
    80005f64:	fffff097          	auipc	ra,0xfffff
    80005f68:	018080e7          	jalr	24(ra) # 80004f7c <panic>
    80005f6c:	00001517          	auipc	a0,0x1
    80005f70:	4dc50513          	addi	a0,a0,1244 # 80007448 <digits+0x30>
    80005f74:	fffff097          	auipc	ra,0xfffff
    80005f78:	008080e7          	jalr	8(ra) # 80004f7c <panic>

0000000080005f7c <push_on>:
    80005f7c:	fe010113          	addi	sp,sp,-32
    80005f80:	00813823          	sd	s0,16(sp)
    80005f84:	00113c23          	sd	ra,24(sp)
    80005f88:	00913423          	sd	s1,8(sp)
    80005f8c:	02010413          	addi	s0,sp,32
    80005f90:	100024f3          	csrr	s1,sstatus
    80005f94:	100027f3          	csrr	a5,sstatus
    80005f98:	0027e793          	ori	a5,a5,2
    80005f9c:	10079073          	csrw	sstatus,a5
    80005fa0:	ffffe097          	auipc	ra,0xffffe
    80005fa4:	624080e7          	jalr	1572(ra) # 800045c4 <mycpu>
    80005fa8:	07852783          	lw	a5,120(a0)
    80005fac:	02078663          	beqz	a5,80005fd8 <push_on+0x5c>
    80005fb0:	ffffe097          	auipc	ra,0xffffe
    80005fb4:	614080e7          	jalr	1556(ra) # 800045c4 <mycpu>
    80005fb8:	07852783          	lw	a5,120(a0)
    80005fbc:	01813083          	ld	ra,24(sp)
    80005fc0:	01013403          	ld	s0,16(sp)
    80005fc4:	0017879b          	addiw	a5,a5,1
    80005fc8:	06f52c23          	sw	a5,120(a0)
    80005fcc:	00813483          	ld	s1,8(sp)
    80005fd0:	02010113          	addi	sp,sp,32
    80005fd4:	00008067          	ret
    80005fd8:	0014d493          	srli	s1,s1,0x1
    80005fdc:	ffffe097          	auipc	ra,0xffffe
    80005fe0:	5e8080e7          	jalr	1512(ra) # 800045c4 <mycpu>
    80005fe4:	0014f493          	andi	s1,s1,1
    80005fe8:	06952e23          	sw	s1,124(a0)
    80005fec:	fc5ff06f          	j	80005fb0 <push_on+0x34>

0000000080005ff0 <pop_on>:
    80005ff0:	ff010113          	addi	sp,sp,-16
    80005ff4:	00813023          	sd	s0,0(sp)
    80005ff8:	00113423          	sd	ra,8(sp)
    80005ffc:	01010413          	addi	s0,sp,16
    80006000:	ffffe097          	auipc	ra,0xffffe
    80006004:	5c4080e7          	jalr	1476(ra) # 800045c4 <mycpu>
    80006008:	100027f3          	csrr	a5,sstatus
    8000600c:	0027f793          	andi	a5,a5,2
    80006010:	04078463          	beqz	a5,80006058 <pop_on+0x68>
    80006014:	07852783          	lw	a5,120(a0)
    80006018:	02f05863          	blez	a5,80006048 <pop_on+0x58>
    8000601c:	fff7879b          	addiw	a5,a5,-1
    80006020:	06f52c23          	sw	a5,120(a0)
    80006024:	07853783          	ld	a5,120(a0)
    80006028:	00079863          	bnez	a5,80006038 <pop_on+0x48>
    8000602c:	100027f3          	csrr	a5,sstatus
    80006030:	ffd7f793          	andi	a5,a5,-3
    80006034:	10079073          	csrw	sstatus,a5
    80006038:	00813083          	ld	ra,8(sp)
    8000603c:	00013403          	ld	s0,0(sp)
    80006040:	01010113          	addi	sp,sp,16
    80006044:	00008067          	ret
    80006048:	00001517          	auipc	a0,0x1
    8000604c:	44050513          	addi	a0,a0,1088 # 80007488 <digits+0x70>
    80006050:	fffff097          	auipc	ra,0xfffff
    80006054:	f2c080e7          	jalr	-212(ra) # 80004f7c <panic>
    80006058:	00001517          	auipc	a0,0x1
    8000605c:	41050513          	addi	a0,a0,1040 # 80007468 <digits+0x50>
    80006060:	fffff097          	auipc	ra,0xfffff
    80006064:	f1c080e7          	jalr	-228(ra) # 80004f7c <panic>

0000000080006068 <__memset>:
    80006068:	ff010113          	addi	sp,sp,-16
    8000606c:	00813423          	sd	s0,8(sp)
    80006070:	01010413          	addi	s0,sp,16
    80006074:	1a060e63          	beqz	a2,80006230 <__memset+0x1c8>
    80006078:	40a007b3          	neg	a5,a0
    8000607c:	0077f793          	andi	a5,a5,7
    80006080:	00778693          	addi	a3,a5,7
    80006084:	00b00813          	li	a6,11
    80006088:	0ff5f593          	andi	a1,a1,255
    8000608c:	fff6071b          	addiw	a4,a2,-1
    80006090:	1b06e663          	bltu	a3,a6,8000623c <__memset+0x1d4>
    80006094:	1cd76463          	bltu	a4,a3,8000625c <__memset+0x1f4>
    80006098:	1a078e63          	beqz	a5,80006254 <__memset+0x1ec>
    8000609c:	00b50023          	sb	a1,0(a0)
    800060a0:	00100713          	li	a4,1
    800060a4:	1ae78463          	beq	a5,a4,8000624c <__memset+0x1e4>
    800060a8:	00b500a3          	sb	a1,1(a0)
    800060ac:	00200713          	li	a4,2
    800060b0:	1ae78a63          	beq	a5,a4,80006264 <__memset+0x1fc>
    800060b4:	00b50123          	sb	a1,2(a0)
    800060b8:	00300713          	li	a4,3
    800060bc:	18e78463          	beq	a5,a4,80006244 <__memset+0x1dc>
    800060c0:	00b501a3          	sb	a1,3(a0)
    800060c4:	00400713          	li	a4,4
    800060c8:	1ae78263          	beq	a5,a4,8000626c <__memset+0x204>
    800060cc:	00b50223          	sb	a1,4(a0)
    800060d0:	00500713          	li	a4,5
    800060d4:	1ae78063          	beq	a5,a4,80006274 <__memset+0x20c>
    800060d8:	00b502a3          	sb	a1,5(a0)
    800060dc:	00700713          	li	a4,7
    800060e0:	18e79e63          	bne	a5,a4,8000627c <__memset+0x214>
    800060e4:	00b50323          	sb	a1,6(a0)
    800060e8:	00700e93          	li	t4,7
    800060ec:	00859713          	slli	a4,a1,0x8
    800060f0:	00e5e733          	or	a4,a1,a4
    800060f4:	01059e13          	slli	t3,a1,0x10
    800060f8:	01c76e33          	or	t3,a4,t3
    800060fc:	01859313          	slli	t1,a1,0x18
    80006100:	006e6333          	or	t1,t3,t1
    80006104:	02059893          	slli	a7,a1,0x20
    80006108:	40f60e3b          	subw	t3,a2,a5
    8000610c:	011368b3          	or	a7,t1,a7
    80006110:	02859813          	slli	a6,a1,0x28
    80006114:	0108e833          	or	a6,a7,a6
    80006118:	03059693          	slli	a3,a1,0x30
    8000611c:	003e589b          	srliw	a7,t3,0x3
    80006120:	00d866b3          	or	a3,a6,a3
    80006124:	03859713          	slli	a4,a1,0x38
    80006128:	00389813          	slli	a6,a7,0x3
    8000612c:	00f507b3          	add	a5,a0,a5
    80006130:	00e6e733          	or	a4,a3,a4
    80006134:	000e089b          	sext.w	a7,t3
    80006138:	00f806b3          	add	a3,a6,a5
    8000613c:	00e7b023          	sd	a4,0(a5)
    80006140:	00878793          	addi	a5,a5,8
    80006144:	fed79ce3          	bne	a5,a3,8000613c <__memset+0xd4>
    80006148:	ff8e7793          	andi	a5,t3,-8
    8000614c:	0007871b          	sext.w	a4,a5
    80006150:	01d787bb          	addw	a5,a5,t4
    80006154:	0ce88e63          	beq	a7,a4,80006230 <__memset+0x1c8>
    80006158:	00f50733          	add	a4,a0,a5
    8000615c:	00b70023          	sb	a1,0(a4)
    80006160:	0017871b          	addiw	a4,a5,1
    80006164:	0cc77663          	bgeu	a4,a2,80006230 <__memset+0x1c8>
    80006168:	00e50733          	add	a4,a0,a4
    8000616c:	00b70023          	sb	a1,0(a4)
    80006170:	0027871b          	addiw	a4,a5,2
    80006174:	0ac77e63          	bgeu	a4,a2,80006230 <__memset+0x1c8>
    80006178:	00e50733          	add	a4,a0,a4
    8000617c:	00b70023          	sb	a1,0(a4)
    80006180:	0037871b          	addiw	a4,a5,3
    80006184:	0ac77663          	bgeu	a4,a2,80006230 <__memset+0x1c8>
    80006188:	00e50733          	add	a4,a0,a4
    8000618c:	00b70023          	sb	a1,0(a4)
    80006190:	0047871b          	addiw	a4,a5,4
    80006194:	08c77e63          	bgeu	a4,a2,80006230 <__memset+0x1c8>
    80006198:	00e50733          	add	a4,a0,a4
    8000619c:	00b70023          	sb	a1,0(a4)
    800061a0:	0057871b          	addiw	a4,a5,5
    800061a4:	08c77663          	bgeu	a4,a2,80006230 <__memset+0x1c8>
    800061a8:	00e50733          	add	a4,a0,a4
    800061ac:	00b70023          	sb	a1,0(a4)
    800061b0:	0067871b          	addiw	a4,a5,6
    800061b4:	06c77e63          	bgeu	a4,a2,80006230 <__memset+0x1c8>
    800061b8:	00e50733          	add	a4,a0,a4
    800061bc:	00b70023          	sb	a1,0(a4)
    800061c0:	0077871b          	addiw	a4,a5,7
    800061c4:	06c77663          	bgeu	a4,a2,80006230 <__memset+0x1c8>
    800061c8:	00e50733          	add	a4,a0,a4
    800061cc:	00b70023          	sb	a1,0(a4)
    800061d0:	0087871b          	addiw	a4,a5,8
    800061d4:	04c77e63          	bgeu	a4,a2,80006230 <__memset+0x1c8>
    800061d8:	00e50733          	add	a4,a0,a4
    800061dc:	00b70023          	sb	a1,0(a4)
    800061e0:	0097871b          	addiw	a4,a5,9
    800061e4:	04c77663          	bgeu	a4,a2,80006230 <__memset+0x1c8>
    800061e8:	00e50733          	add	a4,a0,a4
    800061ec:	00b70023          	sb	a1,0(a4)
    800061f0:	00a7871b          	addiw	a4,a5,10
    800061f4:	02c77e63          	bgeu	a4,a2,80006230 <__memset+0x1c8>
    800061f8:	00e50733          	add	a4,a0,a4
    800061fc:	00b70023          	sb	a1,0(a4)
    80006200:	00b7871b          	addiw	a4,a5,11
    80006204:	02c77663          	bgeu	a4,a2,80006230 <__memset+0x1c8>
    80006208:	00e50733          	add	a4,a0,a4
    8000620c:	00b70023          	sb	a1,0(a4)
    80006210:	00c7871b          	addiw	a4,a5,12
    80006214:	00c77e63          	bgeu	a4,a2,80006230 <__memset+0x1c8>
    80006218:	00e50733          	add	a4,a0,a4
    8000621c:	00b70023          	sb	a1,0(a4)
    80006220:	00d7879b          	addiw	a5,a5,13
    80006224:	00c7f663          	bgeu	a5,a2,80006230 <__memset+0x1c8>
    80006228:	00f507b3          	add	a5,a0,a5
    8000622c:	00b78023          	sb	a1,0(a5)
    80006230:	00813403          	ld	s0,8(sp)
    80006234:	01010113          	addi	sp,sp,16
    80006238:	00008067          	ret
    8000623c:	00b00693          	li	a3,11
    80006240:	e55ff06f          	j	80006094 <__memset+0x2c>
    80006244:	00300e93          	li	t4,3
    80006248:	ea5ff06f          	j	800060ec <__memset+0x84>
    8000624c:	00100e93          	li	t4,1
    80006250:	e9dff06f          	j	800060ec <__memset+0x84>
    80006254:	00000e93          	li	t4,0
    80006258:	e95ff06f          	j	800060ec <__memset+0x84>
    8000625c:	00000793          	li	a5,0
    80006260:	ef9ff06f          	j	80006158 <__memset+0xf0>
    80006264:	00200e93          	li	t4,2
    80006268:	e85ff06f          	j	800060ec <__memset+0x84>
    8000626c:	00400e93          	li	t4,4
    80006270:	e7dff06f          	j	800060ec <__memset+0x84>
    80006274:	00500e93          	li	t4,5
    80006278:	e75ff06f          	j	800060ec <__memset+0x84>
    8000627c:	00600e93          	li	t4,6
    80006280:	e6dff06f          	j	800060ec <__memset+0x84>

0000000080006284 <__memmove>:
    80006284:	ff010113          	addi	sp,sp,-16
    80006288:	00813423          	sd	s0,8(sp)
    8000628c:	01010413          	addi	s0,sp,16
    80006290:	0e060863          	beqz	a2,80006380 <__memmove+0xfc>
    80006294:	fff6069b          	addiw	a3,a2,-1
    80006298:	0006881b          	sext.w	a6,a3
    8000629c:	0ea5e863          	bltu	a1,a0,8000638c <__memmove+0x108>
    800062a0:	00758713          	addi	a4,a1,7
    800062a4:	00a5e7b3          	or	a5,a1,a0
    800062a8:	40a70733          	sub	a4,a4,a0
    800062ac:	0077f793          	andi	a5,a5,7
    800062b0:	00f73713          	sltiu	a4,a4,15
    800062b4:	00174713          	xori	a4,a4,1
    800062b8:	0017b793          	seqz	a5,a5
    800062bc:	00e7f7b3          	and	a5,a5,a4
    800062c0:	10078863          	beqz	a5,800063d0 <__memmove+0x14c>
    800062c4:	00900793          	li	a5,9
    800062c8:	1107f463          	bgeu	a5,a6,800063d0 <__memmove+0x14c>
    800062cc:	0036581b          	srliw	a6,a2,0x3
    800062d0:	fff8081b          	addiw	a6,a6,-1
    800062d4:	02081813          	slli	a6,a6,0x20
    800062d8:	01d85893          	srli	a7,a6,0x1d
    800062dc:	00858813          	addi	a6,a1,8
    800062e0:	00058793          	mv	a5,a1
    800062e4:	00050713          	mv	a4,a0
    800062e8:	01088833          	add	a6,a7,a6
    800062ec:	0007b883          	ld	a7,0(a5)
    800062f0:	00878793          	addi	a5,a5,8
    800062f4:	00870713          	addi	a4,a4,8
    800062f8:	ff173c23          	sd	a7,-8(a4)
    800062fc:	ff0798e3          	bne	a5,a6,800062ec <__memmove+0x68>
    80006300:	ff867713          	andi	a4,a2,-8
    80006304:	02071793          	slli	a5,a4,0x20
    80006308:	0207d793          	srli	a5,a5,0x20
    8000630c:	00f585b3          	add	a1,a1,a5
    80006310:	40e686bb          	subw	a3,a3,a4
    80006314:	00f507b3          	add	a5,a0,a5
    80006318:	06e60463          	beq	a2,a4,80006380 <__memmove+0xfc>
    8000631c:	0005c703          	lbu	a4,0(a1)
    80006320:	00e78023          	sb	a4,0(a5)
    80006324:	04068e63          	beqz	a3,80006380 <__memmove+0xfc>
    80006328:	0015c603          	lbu	a2,1(a1)
    8000632c:	00100713          	li	a4,1
    80006330:	00c780a3          	sb	a2,1(a5)
    80006334:	04e68663          	beq	a3,a4,80006380 <__memmove+0xfc>
    80006338:	0025c603          	lbu	a2,2(a1)
    8000633c:	00200713          	li	a4,2
    80006340:	00c78123          	sb	a2,2(a5)
    80006344:	02e68e63          	beq	a3,a4,80006380 <__memmove+0xfc>
    80006348:	0035c603          	lbu	a2,3(a1)
    8000634c:	00300713          	li	a4,3
    80006350:	00c781a3          	sb	a2,3(a5)
    80006354:	02e68663          	beq	a3,a4,80006380 <__memmove+0xfc>
    80006358:	0045c603          	lbu	a2,4(a1)
    8000635c:	00400713          	li	a4,4
    80006360:	00c78223          	sb	a2,4(a5)
    80006364:	00e68e63          	beq	a3,a4,80006380 <__memmove+0xfc>
    80006368:	0055c603          	lbu	a2,5(a1)
    8000636c:	00500713          	li	a4,5
    80006370:	00c782a3          	sb	a2,5(a5)
    80006374:	00e68663          	beq	a3,a4,80006380 <__memmove+0xfc>
    80006378:	0065c703          	lbu	a4,6(a1)
    8000637c:	00e78323          	sb	a4,6(a5)
    80006380:	00813403          	ld	s0,8(sp)
    80006384:	01010113          	addi	sp,sp,16
    80006388:	00008067          	ret
    8000638c:	02061713          	slli	a4,a2,0x20
    80006390:	02075713          	srli	a4,a4,0x20
    80006394:	00e587b3          	add	a5,a1,a4
    80006398:	f0f574e3          	bgeu	a0,a5,800062a0 <__memmove+0x1c>
    8000639c:	02069613          	slli	a2,a3,0x20
    800063a0:	02065613          	srli	a2,a2,0x20
    800063a4:	fff64613          	not	a2,a2
    800063a8:	00e50733          	add	a4,a0,a4
    800063ac:	00c78633          	add	a2,a5,a2
    800063b0:	fff7c683          	lbu	a3,-1(a5)
    800063b4:	fff78793          	addi	a5,a5,-1
    800063b8:	fff70713          	addi	a4,a4,-1
    800063bc:	00d70023          	sb	a3,0(a4)
    800063c0:	fec798e3          	bne	a5,a2,800063b0 <__memmove+0x12c>
    800063c4:	00813403          	ld	s0,8(sp)
    800063c8:	01010113          	addi	sp,sp,16
    800063cc:	00008067          	ret
    800063d0:	02069713          	slli	a4,a3,0x20
    800063d4:	02075713          	srli	a4,a4,0x20
    800063d8:	00170713          	addi	a4,a4,1
    800063dc:	00e50733          	add	a4,a0,a4
    800063e0:	00050793          	mv	a5,a0
    800063e4:	0005c683          	lbu	a3,0(a1)
    800063e8:	00178793          	addi	a5,a5,1
    800063ec:	00158593          	addi	a1,a1,1
    800063f0:	fed78fa3          	sb	a3,-1(a5)
    800063f4:	fee798e3          	bne	a5,a4,800063e4 <__memmove+0x160>
    800063f8:	f89ff06f          	j	80006380 <__memmove+0xfc>

00000000800063fc <__putc>:
    800063fc:	fe010113          	addi	sp,sp,-32
    80006400:	00813823          	sd	s0,16(sp)
    80006404:	00113c23          	sd	ra,24(sp)
    80006408:	02010413          	addi	s0,sp,32
    8000640c:	00050793          	mv	a5,a0
    80006410:	fef40593          	addi	a1,s0,-17
    80006414:	00100613          	li	a2,1
    80006418:	00000513          	li	a0,0
    8000641c:	fef407a3          	sb	a5,-17(s0)
    80006420:	fffff097          	auipc	ra,0xfffff
    80006424:	b3c080e7          	jalr	-1220(ra) # 80004f5c <console_write>
    80006428:	01813083          	ld	ra,24(sp)
    8000642c:	01013403          	ld	s0,16(sp)
    80006430:	02010113          	addi	sp,sp,32
    80006434:	00008067          	ret

0000000080006438 <__getc>:
    80006438:	fe010113          	addi	sp,sp,-32
    8000643c:	00813823          	sd	s0,16(sp)
    80006440:	00113c23          	sd	ra,24(sp)
    80006444:	02010413          	addi	s0,sp,32
    80006448:	fe840593          	addi	a1,s0,-24
    8000644c:	00100613          	li	a2,1
    80006450:	00000513          	li	a0,0
    80006454:	fffff097          	auipc	ra,0xfffff
    80006458:	ae8080e7          	jalr	-1304(ra) # 80004f3c <console_read>
    8000645c:	fe844503          	lbu	a0,-24(s0)
    80006460:	01813083          	ld	ra,24(sp)
    80006464:	01013403          	ld	s0,16(sp)
    80006468:	02010113          	addi	sp,sp,32
    8000646c:	00008067          	ret

0000000080006470 <console_handler>:
    80006470:	fe010113          	addi	sp,sp,-32
    80006474:	00813823          	sd	s0,16(sp)
    80006478:	00113c23          	sd	ra,24(sp)
    8000647c:	00913423          	sd	s1,8(sp)
    80006480:	02010413          	addi	s0,sp,32
    80006484:	14202773          	csrr	a4,scause
    80006488:	100027f3          	csrr	a5,sstatus
    8000648c:	0027f793          	andi	a5,a5,2
    80006490:	06079e63          	bnez	a5,8000650c <console_handler+0x9c>
    80006494:	00074c63          	bltz	a4,800064ac <console_handler+0x3c>
    80006498:	01813083          	ld	ra,24(sp)
    8000649c:	01013403          	ld	s0,16(sp)
    800064a0:	00813483          	ld	s1,8(sp)
    800064a4:	02010113          	addi	sp,sp,32
    800064a8:	00008067          	ret
    800064ac:	0ff77713          	andi	a4,a4,255
    800064b0:	00900793          	li	a5,9
    800064b4:	fef712e3          	bne	a4,a5,80006498 <console_handler+0x28>
    800064b8:	ffffe097          	auipc	ra,0xffffe
    800064bc:	6dc080e7          	jalr	1756(ra) # 80004b94 <plic_claim>
    800064c0:	00a00793          	li	a5,10
    800064c4:	00050493          	mv	s1,a0
    800064c8:	02f50c63          	beq	a0,a5,80006500 <console_handler+0x90>
    800064cc:	fc0506e3          	beqz	a0,80006498 <console_handler+0x28>
    800064d0:	00050593          	mv	a1,a0
    800064d4:	00001517          	auipc	a0,0x1
    800064d8:	ebc50513          	addi	a0,a0,-324 # 80007390 <CONSOLE_STATUS+0x380>
    800064dc:	fffff097          	auipc	ra,0xfffff
    800064e0:	afc080e7          	jalr	-1284(ra) # 80004fd8 <__printf>
    800064e4:	01013403          	ld	s0,16(sp)
    800064e8:	01813083          	ld	ra,24(sp)
    800064ec:	00048513          	mv	a0,s1
    800064f0:	00813483          	ld	s1,8(sp)
    800064f4:	02010113          	addi	sp,sp,32
    800064f8:	ffffe317          	auipc	t1,0xffffe
    800064fc:	6d430067          	jr	1748(t1) # 80004bcc <plic_complete>
    80006500:	fffff097          	auipc	ra,0xfffff
    80006504:	3e0080e7          	jalr	992(ra) # 800058e0 <uartintr>
    80006508:	fddff06f          	j	800064e4 <console_handler+0x74>
    8000650c:	00001517          	auipc	a0,0x1
    80006510:	f8450513          	addi	a0,a0,-124 # 80007490 <digits+0x78>
    80006514:	fffff097          	auipc	ra,0xfffff
    80006518:	a68080e7          	jalr	-1432(ra) # 80004f7c <panic>
	...
