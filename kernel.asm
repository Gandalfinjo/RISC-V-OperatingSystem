
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	9d813103          	ld	sp,-1576(sp) # 800089d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	438040ef          	jal	ra,80004454 <start>

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
    80001088:	9c22be23          	sd	sp,-1572(t0) # 80008a60 <framePointer>

    call _ZN5Riscv11trapHandlerEv
    8000108c:	4d9000ef          	jal	ra,80001d64 <_ZN5Riscv11trapHandlerEv>

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

000000008000121c <_Z8userModev>:

void userMode() {
    8000121c:	ff010113          	addi	sp,sp,-16
    80001220:	00813423          	sd	s0,8(sp)
    80001224:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x08");
    80001228:	00800513          	li	a0,8
    asm volatile("ecall");
    8000122c:	00000073          	ecall
}
    80001230:	00813403          	ld	s0,8(sp)
    80001234:	01010113          	addi	sp,sp,16
    80001238:	00008067          	ret

000000008000123c <_Z10kernelModev>:

void kernelMode() {
    8000123c:	ff010113          	addi	sp,sp,-16
    80001240:	00813423          	sd	s0,8(sp)
    80001244:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x09");
    80001248:	00900513          	li	a0,9
    asm volatile("ecall");
    8000124c:	00000073          	ecall
}
    80001250:	00813403          	ld	s0,8(sp)
    80001254:	01010113          	addi	sp,sp,16
    80001258:	00008067          	ret

000000008000125c <_Z13thread_createPP7KThreadPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg) {
    8000125c:	fd010113          	addi	sp,sp,-48
    80001260:	02113423          	sd	ra,40(sp)
    80001264:	02813023          	sd	s0,32(sp)
    80001268:	00913c23          	sd	s1,24(sp)
    8000126c:	01213823          	sd	s2,16(sp)
    80001270:	01313423          	sd	s3,8(sp)
    80001274:	03010413          	addi	s0,sp,48
    if (!handle || !start_routine) return -1;
    80001278:	06050c63          	beqz	a0,800012f0 <_Z13thread_createPP7KThreadPFvPvES2_+0x94>
    8000127c:	00050493          	mv	s1,a0
    80001280:	00058913          	mv	s2,a1
    80001284:	00060993          	mv	s3,a2
    80001288:	06058863          	beqz	a1,800012f8 <_Z13thread_createPP7KThreadPFvPvES2_+0x9c>

    size_t stackBytes = DEFAULT_STACK_SIZE;
    void* stack = mem_alloc(stackBytes);
    8000128c:	00001537          	lui	a0,0x1
    80001290:	00000097          	auipc	ra,0x0
    80001294:	ed4080e7          	jalr	-300(ra) # 80001164 <_Z9mem_allocm>
    if (!stack) return -1;
    80001298:	06050463          	beqz	a0,80001300 <_Z13thread_createPP7KThreadPFvPvES2_+0xa4>

    int result;

    asm volatile("mv a1, %0" :: "r"(handle));
    8000129c:	00048593          	mv	a1,s1
    asm volatile("mv a2, %0" :: "r"(start_routine));
    800012a0:	00090613          	mv	a2,s2
    asm volatile("mv a3, %0" :: "r"(arg));
    800012a4:	00098693          	mv	a3,s3
    asm volatile("mv a4, %0" :: "r"(stack));
    800012a8:	00050713          	mv	a4,a0
    asm volatile("li a0, 0x11");
    800012ac:	01100513          	li	a0,17
    asm volatile("ecall");
    800012b0:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800012b4:	00050793          	mv	a5,a0
    800012b8:	0007849b          	sext.w	s1,a5

    if (result < 0) {
    800012bc:	02079713          	slli	a4,a5,0x20
    800012c0:	02074263          	bltz	a4,800012e4 <_Z13thread_createPP7KThreadPFvPvES2_+0x88>
        mem_free(stack);
    }

    return result;
}
    800012c4:	00048513          	mv	a0,s1
    800012c8:	02813083          	ld	ra,40(sp)
    800012cc:	02013403          	ld	s0,32(sp)
    800012d0:	01813483          	ld	s1,24(sp)
    800012d4:	01013903          	ld	s2,16(sp)
    800012d8:	00813983          	ld	s3,8(sp)
    800012dc:	03010113          	addi	sp,sp,48
    800012e0:	00008067          	ret
        mem_free(stack);
    800012e4:	00000097          	auipc	ra,0x0
    800012e8:	ec4080e7          	jalr	-316(ra) # 800011a8 <_Z8mem_freePv>
    800012ec:	fd9ff06f          	j	800012c4 <_Z13thread_createPP7KThreadPFvPvES2_+0x68>
    if (!handle || !start_routine) return -1;
    800012f0:	fff00493          	li	s1,-1
    800012f4:	fd1ff06f          	j	800012c4 <_Z13thread_createPP7KThreadPFvPvES2_+0x68>
    800012f8:	fff00493          	li	s1,-1
    800012fc:	fc9ff06f          	j	800012c4 <_Z13thread_createPP7KThreadPFvPvES2_+0x68>
    if (!stack) return -1;
    80001300:	fff00493          	li	s1,-1
    80001304:	fc1ff06f          	j	800012c4 <_Z13thread_createPP7KThreadPFvPvES2_+0x68>

0000000080001308 <_Z11thread_exitv>:

int thread_exit() {
    80001308:	ff010113          	addi	sp,sp,-16
    8000130c:	00813423          	sd	s0,8(sp)
    80001310:	01010413          	addi	s0,sp,16
    int result;

    asm volatile("li a0, 0x12");
    80001314:	01200513          	li	a0,18
    asm volatile("ecall");
    80001318:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    8000131c:	00050513          	mv	a0,a0

    return result;
}
    80001320:	0005051b          	sext.w	a0,a0
    80001324:	00813403          	ld	s0,8(sp)
    80001328:	01010113          	addi	sp,sp,16
    8000132c:	00008067          	ret

0000000080001330 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001330:	ff010113          	addi	sp,sp,-16
    80001334:	00813423          	sd	s0,8(sp)
    80001338:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x13");
    8000133c:	01300513          	li	a0,19
    asm volatile("ecall");
    80001340:	00000073          	ecall
}
    80001344:	00813403          	ld	s0,8(sp)
    80001348:	01010113          	addi	sp,sp,16
    8000134c:	00008067          	ret

0000000080001350 <_Z8sem_openPP10KSemaphorej>:

int sem_open(sem_t* handle, unsigned init) {
    80001350:	ff010113          	addi	sp,sp,-16
    80001354:	00813423          	sd	s0,8(sp)
    80001358:	01010413          	addi	s0,sp,16
    int result;

    asm volatile("mv a2, %0" :: "r"((uint64)init));
    8000135c:	02059593          	slli	a1,a1,0x20
    80001360:	0205d593          	srli	a1,a1,0x20
    80001364:	00058613          	mv	a2,a1
    asm volatile("mv a1, %0" :: "r"((uint64)handle));
    80001368:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x21");
    8000136c:	02100513          	li	a0,33
    asm volatile("ecall");
    80001370:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    80001374:	00050513          	mv	a0,a0

    return result;
}
    80001378:	0005051b          	sext.w	a0,a0
    8000137c:	00813403          	ld	s0,8(sp)
    80001380:	01010113          	addi	sp,sp,16
    80001384:	00008067          	ret

0000000080001388 <_Z9sem_closeP10KSemaphore>:

int sem_close(sem_t handle) {
    80001388:	ff010113          	addi	sp,sp,-16
    8000138c:	00813423          	sd	s0,8(sp)
    80001390:	01010413          	addi	s0,sp,16
    int result;

    asm volatile("mv a1, %0" :: "r"(handle));
    80001394:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x22");
    80001398:	02200513          	li	a0,34
    asm volatile("ecall");
    8000139c:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800013a0:	00050513          	mv	a0,a0

    return result;
}
    800013a4:	0005051b          	sext.w	a0,a0
    800013a8:	00813403          	ld	s0,8(sp)
    800013ac:	01010113          	addi	sp,sp,16
    800013b0:	00008067          	ret

00000000800013b4 <_Z8sem_waitP10KSemaphore>:

int sem_wait(sem_t id) {
    800013b4:	ff010113          	addi	sp,sp,-16
    800013b8:	00813423          	sd	s0,8(sp)
    800013bc:	01010413          	addi	s0,sp,16
    int result;

    asm volatile("mv a1, %0" :: "r"(id));
    800013c0:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x23");
    800013c4:	02300513          	li	a0,35
    asm volatile("ecall");
    800013c8:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800013cc:	00050513          	mv	a0,a0

    return result;
}
    800013d0:	0005051b          	sext.w	a0,a0
    800013d4:	00813403          	ld	s0,8(sp)
    800013d8:	01010113          	addi	sp,sp,16
    800013dc:	00008067          	ret

00000000800013e0 <_Z10sem_signalP10KSemaphore>:

int sem_signal(sem_t id) {
    800013e0:	ff010113          	addi	sp,sp,-16
    800013e4:	00813423          	sd	s0,8(sp)
    800013e8:	01010413          	addi	s0,sp,16
    int result;

    asm volatile("mv a1, %0" :: "r"(id));
    800013ec:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x24");
    800013f0:	02400513          	li	a0,36
    asm volatile("ecall");
    800013f4:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800013f8:	00050513          	mv	a0,a0

    return result;
}
    800013fc:	0005051b          	sext.w	a0,a0
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <_Z4getcv>:

char getc() {
    8000140c:	ff010113          	addi	sp,sp,-16
    80001410:	00813423          	sd	s0,8(sp)
    80001414:	01010413          	addi	s0,sp,16
    char c;

    asm volatile("li a0, 0x41");
    80001418:	04100513          	li	a0,65
    asm volatile("ecall");
    8000141c:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(c));
    80001420:	00050513          	mv	a0,a0

    return c;
}
    80001424:	0ff57513          	andi	a0,a0,255
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_Z4putcc>:

void putc(char c) {
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00813423          	sd	s0,8(sp)
    8000143c:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r"(c));
    80001440:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x42");
    80001444:	04200513          	li	a0,66
    asm volatile("ecall");
    80001448:	00000073          	ecall
    8000144c:	00813403          	ld	s0,8(sp)
    80001450:	01010113          	addi	sp,sp,16
    80001454:	00008067          	ret

0000000080001458 <_ZN7KThreadC1EPFvPvES0_S0_>:

KThread* KThread::running = nullptr;

int KThread::staticId = 0;

KThread::KThread(Body body, void* args, void* stack)
    80001458:	ff010113          	addi	sp,sp,-16
    8000145c:	00813423          	sd	s0,8(sp)
    80001460:	01010413          	addi	s0,sp,16
    : body(body), id(staticId++), args(args), stack(body != nullptr ? (char*)stack : nullptr),
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64)&this->stack[DEFAULT_STACK_SIZE] : 0}),
    state(NEW) {
    80001464:	00b53023          	sd	a1,0(a0) # 1000 <_entry-0x7ffff000>
    : body(body), id(staticId++), args(args), stack(body != nullptr ? (char*)stack : nullptr),
    80001468:	00007717          	auipc	a4,0x7
    8000146c:	5d870713          	addi	a4,a4,1496 # 80008a40 <_ZN7KThread8staticIdE>
    80001470:	00072783          	lw	a5,0(a4)
    80001474:	0017881b          	addiw	a6,a5,1
    80001478:	01072023          	sw	a6,0(a4)
    state(NEW) {
    8000147c:	00f52423          	sw	a5,8(a0)
    80001480:	00c53823          	sd	a2,16(a0)
    : body(body), id(staticId++), args(args), stack(body != nullptr ? (char*)stack : nullptr),
    80001484:	02058e63          	beqz	a1,800014c0 <_ZN7KThreadC1EPFvPvES0_S0_+0x68>
    80001488:	00068793          	mv	a5,a3
    state(NEW) {
    8000148c:	00f53c23          	sd	a5,24(a0)
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64)&this->stack[DEFAULT_STACK_SIZE] : 0}),
    80001490:	02058c63          	beqz	a1,800014c8 <_ZN7KThreadC1EPFvPvES0_S0_+0x70>
    80001494:	00000717          	auipc	a4,0x0
    80001498:	33470713          	addi	a4,a4,820 # 800017c8 <_ZN7KThread7wrapperEv>
    state(NEW) {
    8000149c:	02e53023          	sd	a4,32(a0)
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64)&this->stack[DEFAULT_STACK_SIZE] : 0}),
    800014a0:	02068863          	beqz	a3,800014d0 <_ZN7KThreadC1EPFvPvES0_S0_+0x78>
    800014a4:	00001737          	lui	a4,0x1
    800014a8:	00e787b3          	add	a5,a5,a4
    state(NEW) {
    800014ac:	02f53423          	sd	a5,40(a0)
    800014b0:	02052823          	sw	zero,48(a0)
    if (body != nullptr) {
        //Scheduler::put(this);
    }
}
    800014b4:	00813403          	ld	s0,8(sp)
    800014b8:	01010113          	addi	sp,sp,16
    800014bc:	00008067          	ret
    : body(body), id(staticId++), args(args), stack(body != nullptr ? (char*)stack : nullptr),
    800014c0:	00000793          	li	a5,0
    800014c4:	fc9ff06f          	j	8000148c <_ZN7KThreadC1EPFvPvES0_S0_+0x34>
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64)&this->stack[DEFAULT_STACK_SIZE] : 0}),
    800014c8:	00000713          	li	a4,0
    800014cc:	fd1ff06f          	j	8000149c <_ZN7KThreadC1EPFvPvES0_S0_+0x44>
    800014d0:	00000793          	li	a5,0
    800014d4:	fd9ff06f          	j	800014ac <_ZN7KThreadC1EPFvPvES0_S0_+0x54>

00000000800014d8 <_ZN7KThreadC1EPFvPvE>:

KThread::KThread(Body body)
    800014d8:	fe010113          	addi	sp,sp,-32
    800014dc:	00113c23          	sd	ra,24(sp)
    800014e0:	00813823          	sd	s0,16(sp)
    800014e4:	00913423          	sd	s1,8(sp)
    800014e8:	01213023          	sd	s2,0(sp)
    800014ec:	02010413          	addi	s0,sp,32
    800014f0:	00050493          	mv	s1,a0
    800014f4:	00058913          	mv	s2,a1
    : body(body), id(staticId++), args(nullptr), stack(body != nullptr ? new char[DEFAULT_STACK_SIZE] : nullptr),
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0}),
    state(NEW) {
    800014f8:	00b53023          	sd	a1,0(a0)
    : body(body), id(staticId++), args(nullptr), stack(body != nullptr ? new char[DEFAULT_STACK_SIZE] : nullptr),
    800014fc:	00007717          	auipc	a4,0x7
    80001500:	54470713          	addi	a4,a4,1348 # 80008a40 <_ZN7KThread8staticIdE>
    80001504:	00072783          	lw	a5,0(a4)
    80001508:	0017869b          	addiw	a3,a5,1
    8000150c:	00d72023          	sw	a3,0(a4)
    state(NEW) {
    80001510:	00f52423          	sw	a5,8(a0)
    80001514:	00053823          	sd	zero,16(a0)
    : body(body), id(staticId++), args(nullptr), stack(body != nullptr ? new char[DEFAULT_STACK_SIZE] : nullptr),
    80001518:	04058863          	beqz	a1,80001568 <_ZN7KThreadC1EPFvPvE+0x90>
    8000151c:	00001537          	lui	a0,0x1
    80001520:	00000097          	auipc	ra,0x0
    80001524:	5d4080e7          	jalr	1492(ra) # 80001af4 <_Znam>
    state(NEW) {
    80001528:	00a4bc23          	sd	a0,24(s1)
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0}),
    8000152c:	04090263          	beqz	s2,80001570 <_ZN7KThreadC1EPFvPvE+0x98>
    80001530:	00000797          	auipc	a5,0x0
    80001534:	29878793          	addi	a5,a5,664 # 800017c8 <_ZN7KThread7wrapperEv>
    state(NEW) {
    80001538:	02f4b023          	sd	a5,32(s1)
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0}),
    8000153c:	02050e63          	beqz	a0,80001578 <_ZN7KThreadC1EPFvPvE+0xa0>
    80001540:	000017b7          	lui	a5,0x1
    80001544:	00f50533          	add	a0,a0,a5
    state(NEW) {
    80001548:	02a4b423          	sd	a0,40(s1)
    8000154c:	0204a823          	sw	zero,48(s1)
    if (body != nullptr) {
        //Scheduler::put(this);
    }
}
    80001550:	01813083          	ld	ra,24(sp)
    80001554:	01013403          	ld	s0,16(sp)
    80001558:	00813483          	ld	s1,8(sp)
    8000155c:	00013903          	ld	s2,0(sp)
    80001560:	02010113          	addi	sp,sp,32
    80001564:	00008067          	ret
    : body(body), id(staticId++), args(nullptr), stack(body != nullptr ? new char[DEFAULT_STACK_SIZE] : nullptr),
    80001568:	00000513          	li	a0,0
    8000156c:	fbdff06f          	j	80001528 <_ZN7KThreadC1EPFvPvE+0x50>
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0}),
    80001570:	00000793          	li	a5,0
    80001574:	fc5ff06f          	j	80001538 <_ZN7KThreadC1EPFvPvE+0x60>
    80001578:	00000513          	li	a0,0
    8000157c:	fcdff06f          	j	80001548 <_ZN7KThreadC1EPFvPvE+0x70>

0000000080001580 <_ZN7KThreadD1Ev>:

KThread::~KThread() {
    if (stack) {
    80001580:	01853503          	ld	a0,24(a0) # 1018 <_entry-0x7fffefe8>
    80001584:	02050663          	beqz	a0,800015b0 <_ZN7KThreadD1Ev+0x30>
KThread::~KThread() {
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00113423          	sd	ra,8(sp)
    80001590:	00813023          	sd	s0,0(sp)
    80001594:	01010413          	addi	s0,sp,16
        MemoryAllocator::mem_free(stack);
    80001598:	00001097          	auipc	ra,0x1
    8000159c:	c18080e7          	jalr	-1000(ra) # 800021b0 <_ZN15MemoryAllocator8mem_freeEPv>
        stack = nullptr;
    }
}
    800015a0:	00813083          	ld	ra,8(sp)
    800015a4:	00013403          	ld	s0,0(sp)
    800015a8:	01010113          	addi	sp,sp,16
    800015ac:	00008067          	ret
    800015b0:	00008067          	ret

00000000800015b4 <_ZN7KThread12createThreadEPFvPvES0_S0_>:

KThread* KThread::createThread(Body body, void* args, void* stack) {
    800015b4:	fd010113          	addi	sp,sp,-48
    800015b8:	02113423          	sd	ra,40(sp)
    800015bc:	02813023          	sd	s0,32(sp)
    800015c0:	00913c23          	sd	s1,24(sp)
    800015c4:	01213823          	sd	s2,16(sp)
    800015c8:	01313423          	sd	s3,8(sp)
    800015cc:	01413023          	sd	s4,0(sp)
    800015d0:	03010413          	addi	s0,sp,48
    800015d4:	00050913          	mv	s2,a0
    800015d8:	00058993          	mv	s3,a1
    800015dc:	00060a13          	mv	s4,a2

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    800015e0:	00200513          	li	a0,2
    800015e4:	00001097          	auipc	ra,0x1
    800015e8:	acc080e7          	jalr	-1332(ra) # 800020b0 <_ZN15MemoryAllocator9mem_allocEm>
    800015ec:	00050493          	mv	s1,a0
    return new KThread(body, args, stack);
    800015f0:	000a0693          	mv	a3,s4
    800015f4:	00098613          	mv	a2,s3
    800015f8:	00090593          	mv	a1,s2
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	e5c080e7          	jalr	-420(ra) # 80001458 <_ZN7KThreadC1EPFvPvES0_S0_>
}
    80001604:	00048513          	mv	a0,s1
    80001608:	02813083          	ld	ra,40(sp)
    8000160c:	02013403          	ld	s0,32(sp)
    80001610:	01813483          	ld	s1,24(sp)
    80001614:	01013903          	ld	s2,16(sp)
    80001618:	00813983          	ld	s3,8(sp)
    8000161c:	00013a03          	ld	s4,0(sp)
    80001620:	03010113          	addi	sp,sp,48
    80001624:	00008067          	ret

0000000080001628 <_ZN7KThread12createThreadEPFvPvE>:

KThread* KThread::createThread(Body body) {
    80001628:	fe010113          	addi	sp,sp,-32
    8000162c:	00113c23          	sd	ra,24(sp)
    80001630:	00813823          	sd	s0,16(sp)
    80001634:	00913423          	sd	s1,8(sp)
    80001638:	01213023          	sd	s2,0(sp)
    8000163c:	02010413          	addi	s0,sp,32
    80001640:	00050913          	mv	s2,a0
    80001644:	00200513          	li	a0,2
    80001648:	00001097          	auipc	ra,0x1
    8000164c:	a68080e7          	jalr	-1432(ra) # 800020b0 <_ZN15MemoryAllocator9mem_allocEm>
    80001650:	00050493          	mv	s1,a0
    return new KThread(body);
    80001654:	00090593          	mv	a1,s2
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	e80080e7          	jalr	-384(ra) # 800014d8 <_ZN7KThreadC1EPFvPvE>
    80001660:	0200006f          	j	80001680 <_ZN7KThread12createThreadEPFvPvE+0x58>
    80001664:	00050913          	mv	s2,a0
    }

    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    80001668:	00048513          	mv	a0,s1
    8000166c:	00001097          	auipc	ra,0x1
    80001670:	b44080e7          	jalr	-1212(ra) # 800021b0 <_ZN15MemoryAllocator8mem_freeEPv>
    80001674:	00090513          	mv	a0,s2
    80001678:	00008097          	auipc	ra,0x8
    8000167c:	4f0080e7          	jalr	1264(ra) # 80009b68 <_Unwind_Resume>
}
    80001680:	00048513          	mv	a0,s1
    80001684:	01813083          	ld	ra,24(sp)
    80001688:	01013403          	ld	s0,16(sp)
    8000168c:	00813483          	ld	s1,8(sp)
    80001690:	00013903          	ld	s2,0(sp)
    80001694:	02010113          	addi	sp,sp,32
    80001698:	00008067          	ret

000000008000169c <_ZN7KThread5startEv>:

void KThread::start() {
    if (state != NEW) return;
    8000169c:	03052783          	lw	a5,48(a0)
    800016a0:	00078463          	beqz	a5,800016a8 <_ZN7KThread5startEv+0xc>
    800016a4:	00008067          	ret
void KThread::start() {
    800016a8:	ff010113          	addi	sp,sp,-16
    800016ac:	00113423          	sd	ra,8(sp)
    800016b0:	00813023          	sd	s0,0(sp)
    800016b4:	01010413          	addi	s0,sp,16

    state = READY;
    800016b8:	00100793          	li	a5,1
    800016bc:	02f52823          	sw	a5,48(a0)
    Scheduler::put(this);
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	1a0080e7          	jalr	416(ra) # 80001860 <_ZN9Scheduler3putEP7KThread>
}
    800016c8:	00813083          	ld	ra,8(sp)
    800016cc:	00013403          	ld	s0,0(sp)
    800016d0:	01010113          	addi	sp,sp,16
    800016d4:	00008067          	ret

00000000800016d8 <_ZN7KThread4exitEv>:

void KThread::exit() {
    800016d8:	ff010113          	addi	sp,sp,-16
    800016dc:	00813423          	sd	s0,8(sp)
    800016e0:	01010413          	addi	s0,sp,16
    state = FINISHED;
    800016e4:	00400793          	li	a5,4
    800016e8:	02f52823          	sw	a5,48(a0)
}
    800016ec:	00813403          	ld	s0,8(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret

00000000800016f8 <_ZN7KThread8dispatchEv>:
    running->body(running->args);
    running->exit();
    yield();
}

void KThread::dispatch() {
    800016f8:	fe010113          	addi	sp,sp,-32
    800016fc:	00113c23          	sd	ra,24(sp)
    80001700:	00813823          	sd	s0,16(sp)
    80001704:	00913423          	sd	s1,8(sp)
    80001708:	02010413          	addi	s0,sp,32
    KThread* old = running;
    8000170c:	00007497          	auipc	s1,0x7
    80001710:	33c4b483          	ld	s1,828(s1) # 80008a48 <_ZN7KThread7runningE>

    if (old && old->state != FINISHED) {
    80001714:	00048863          	beqz	s1,80001724 <_ZN7KThread8dispatchEv+0x2c>
    80001718:	0304a703          	lw	a4,48(s1)
    8000171c:	00400793          	li	a5,4
    80001720:	04f71e63          	bne	a4,a5,8000177c <_ZN7KThread8dispatchEv+0x84>
        old->state = READY;
        Scheduler::put(old);
    }

    running = Scheduler::get();
    80001724:	00000097          	auipc	ra,0x0
    80001728:	0f8080e7          	jalr	248(ra) # 8000181c <_ZN9Scheduler3getEv>
    8000172c:	00007797          	auipc	a5,0x7
    80001730:	30a7be23          	sd	a0,796(a5) # 80008a48 <_ZN7KThread7runningE>
    if (!running) return;
    80001734:	02050a63          	beqz	a0,80001768 <_ZN7KThread8dispatchEv+0x70>

    running->state = RUNNING;
    80001738:	00200793          	li	a5,2
    8000173c:	02f52823          	sw	a5,48(a0)

    if (old && old->state == FINISHED) {
    80001740:	00048863          	beqz	s1,80001750 <_ZN7KThread8dispatchEv+0x58>
    80001744:	0304a703          	lw	a4,48(s1)
    80001748:	00400793          	li	a5,4
    8000174c:	04f70463          	beq	a4,a5,80001794 <_ZN7KThread8dispatchEv+0x9c>
        MemoryAllocator::mem_free(old->stack);
        old->stack = nullptr;
    }

    contextSwitch(&old->context, &running->context);
    80001750:	00007597          	auipc	a1,0x7
    80001754:	2f85b583          	ld	a1,760(a1) # 80008a48 <_ZN7KThread7runningE>
    80001758:	02058593          	addi	a1,a1,32
    8000175c:	02048513          	addi	a0,s1,32
    80001760:	00000097          	auipc	ra,0x0
    80001764:	9c0080e7          	jalr	-1600(ra) # 80001120 <_ZN7KThread13contextSwitchEPNS_7ContextES1_>
}
    80001768:	01813083          	ld	ra,24(sp)
    8000176c:	01013403          	ld	s0,16(sp)
    80001770:	00813483          	ld	s1,8(sp)
    80001774:	02010113          	addi	sp,sp,32
    80001778:	00008067          	ret
        old->state = READY;
    8000177c:	00100793          	li	a5,1
    80001780:	02f4a823          	sw	a5,48(s1)
        Scheduler::put(old);
    80001784:	00048513          	mv	a0,s1
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	0d8080e7          	jalr	216(ra) # 80001860 <_ZN9Scheduler3putEP7KThread>
    80001790:	f95ff06f          	j	80001724 <_ZN7KThread8dispatchEv+0x2c>
        MemoryAllocator::mem_free(old->stack);
    80001794:	0184b503          	ld	a0,24(s1)
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	a18080e7          	jalr	-1512(ra) # 800021b0 <_ZN15MemoryAllocator8mem_freeEPv>
        old->stack = nullptr;
    800017a0:	0004bc23          	sd	zero,24(s1)
    800017a4:	fadff06f          	j	80001750 <_ZN7KThread8dispatchEv+0x58>

00000000800017a8 <_ZN7KThread5yieldEv>:

void KThread::yield() {
    800017a8:	ff010113          	addi	sp,sp,-16
    800017ac:	00813423          	sd	s0,8(sp)
    800017b0:	01010413          	addi	s0,sp,16
    asm volatile ("li a0, 0x13");
    800017b4:	01300513          	li	a0,19
    asm volatile ("ecall");
    800017b8:	00000073          	ecall
    800017bc:	00813403          	ld	s0,8(sp)
    800017c0:	01010113          	addi	sp,sp,16
    800017c4:	00008067          	ret

00000000800017c8 <_ZN7KThread7wrapperEv>:
void KThread::wrapper() {
    800017c8:	fe010113          	addi	sp,sp,-32
    800017cc:	00113c23          	sd	ra,24(sp)
    800017d0:	00813823          	sd	s0,16(sp)
    800017d4:	00913423          	sd	s1,8(sp)
    800017d8:	02010413          	addi	s0,sp,32
    running->body(running->args);
    800017dc:	00007497          	auipc	s1,0x7
    800017e0:	26448493          	addi	s1,s1,612 # 80008a40 <_ZN7KThread8staticIdE>
    800017e4:	0084b783          	ld	a5,8(s1)
    800017e8:	0007b703          	ld	a4,0(a5)
    800017ec:	0107b503          	ld	a0,16(a5)
    800017f0:	000700e7          	jalr	a4
    running->exit();
    800017f4:	0084b503          	ld	a0,8(s1)
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	ee0080e7          	jalr	-288(ra) # 800016d8 <_ZN7KThread4exitEv>
    yield();
    80001800:	00000097          	auipc	ra,0x0
    80001804:	fa8080e7          	jalr	-88(ra) # 800017a8 <_ZN7KThread5yieldEv>
}
    80001808:	01813083          	ld	ra,24(sp)
    8000180c:	01013403          	ld	s0,16(sp)
    80001810:	00813483          	ld	s1,8(sp)
    80001814:	02010113          	addi	sp,sp,32
    80001818:	00008067          	ret

000000008000181c <_ZN9Scheduler3getEv>:
#include "../h/KThread.hpp"

KThread* Scheduler::head = nullptr;
KThread* Scheduler::tail = nullptr;

KThread* Scheduler::get() {
    8000181c:	ff010113          	addi	sp,sp,-16
    80001820:	00813423          	sd	s0,8(sp)
    80001824:	01010413          	addi	s0,sp,16
    if (!head) return nullptr;
    80001828:	00007517          	auipc	a0,0x7
    8000182c:	22853503          	ld	a0,552(a0) # 80008a50 <_ZN9Scheduler4headE>
    80001830:	00050c63          	beqz	a0,80001848 <_ZN9Scheduler3getEv+0x2c>

    KThread* thread = head;
    head = head->schedulerNext;
    80001834:	03853783          	ld	a5,56(a0)
    80001838:	00007717          	auipc	a4,0x7
    8000183c:	20f73c23          	sd	a5,536(a4) # 80008a50 <_ZN9Scheduler4headE>

    if (!head) tail = nullptr;
    80001840:	00078a63          	beqz	a5,80001854 <_ZN9Scheduler3getEv+0x38>
    thread->schedulerNext = nullptr;
    80001844:	02053c23          	sd	zero,56(a0)

    return thread;
}
    80001848:	00813403          	ld	s0,8(sp)
    8000184c:	01010113          	addi	sp,sp,16
    80001850:	00008067          	ret
    if (!head) tail = nullptr;
    80001854:	00007797          	auipc	a5,0x7
    80001858:	2007b223          	sd	zero,516(a5) # 80008a58 <_ZN9Scheduler4tailE>
    8000185c:	fe9ff06f          	j	80001844 <_ZN9Scheduler3getEv+0x28>

0000000080001860 <_ZN9Scheduler3putEP7KThread>:

void Scheduler::put(KThread* thread) {
    80001860:	ff010113          	addi	sp,sp,-16
    80001864:	00813423          	sd	s0,8(sp)
    80001868:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    8000186c:	00007797          	auipc	a5,0x7
    80001870:	1e47b783          	ld	a5,484(a5) # 80008a50 <_ZN9Scheduler4headE>
    80001874:	02078263          	beqz	a5,80001898 <_ZN9Scheduler3putEP7KThread+0x38>
    else tail->schedulerNext = thread;
    80001878:	00007797          	auipc	a5,0x7
    8000187c:	1e07b783          	ld	a5,480(a5) # 80008a58 <_ZN9Scheduler4tailE>
    80001880:	02a7bc23          	sd	a0,56(a5)
    tail = thread;
    80001884:	00007797          	auipc	a5,0x7
    80001888:	1ca7ba23          	sd	a0,468(a5) # 80008a58 <_ZN9Scheduler4tailE>
}
    8000188c:	00813403          	ld	s0,8(sp)
    80001890:	01010113          	addi	sp,sp,16
    80001894:	00008067          	ret
    if (!head) head = thread;
    80001898:	00007797          	auipc	a5,0x7
    8000189c:	1aa7bc23          	sd	a0,440(a5) # 80008a50 <_ZN9Scheduler4headE>
    800018a0:	fe5ff06f          	j	80001884 <_ZN9Scheduler3putEP7KThread+0x24>

00000000800018a4 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    800018a4:	ff010113          	addi	sp,sp,-16
    800018a8:	00813423          	sd	s0,8(sp)
    800018ac:	01010413          	addi	s0,sp,16
    return head == nullptr;
    800018b0:	00007517          	auipc	a0,0x7
    800018b4:	1a053503          	ld	a0,416(a0) # 80008a50 <_ZN9Scheduler4headE>
    800018b8:	00153513          	seqz	a0,a0
    800018bc:	00813403          	ld	s0,8(sp)
    800018c0:	01010113          	addi	sp,sp,16
    800018c4:	00008067          	ret

00000000800018c8 <_Z11userWrapperPv>:
#include "../h/KThread.hpp"

uint64 framePointer;

void userMain();
void userWrapper(void* arg) {
    800018c8:	ff010113          	addi	sp,sp,-16
    800018cc:	00113423          	sd	ra,8(sp)
    800018d0:	00813023          	sd	s0,0(sp)
    800018d4:	01010413          	addi	s0,sp,16
    userMain();
    800018d8:	00002097          	auipc	ra,0x2
    800018dc:	23c080e7          	jalr	572(ra) # 80003b14 <_Z8userMainv>
}
    800018e0:	00813083          	ld	ra,8(sp)
    800018e4:	00013403          	ld	s0,0(sp)
    800018e8:	01010113          	addi	sp,sp,16
    800018ec:	00008067          	ret

00000000800018f0 <main>:

void main() {
    800018f0:	fe010113          	addi	sp,sp,-32
    800018f4:	00113c23          	sd	ra,24(sp)
    800018f8:	00813823          	sd	s0,16(sp)
    800018fc:	02010413          	addi	s0,sp,32
    MemoryAllocator::initHeap();
    80001900:	00000097          	auipc	ra,0x0
    80001904:	760080e7          	jalr	1888(ra) # 80002060 <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	438080e7          	jalr	1080(ra) # 80001d40 <_ZN5Riscv16setupTrapHandlerEv>

    thread_t mainThread, userBody;

    mainThread = KThread::createThread(nullptr, nullptr, nullptr);
    80001910:	00000613          	li	a2,0
    80001914:	00000593          	li	a1,0
    80001918:	00000513          	li	a0,0
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	c98080e7          	jalr	-872(ra) # 800015b4 <_ZN7KThread12createThreadEPFvPvES0_S0_>
    KThread::running = mainThread;
    80001924:	00007797          	auipc	a5,0x7
    80001928:	0cc7b783          	ld	a5,204(a5) # 800089f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000192c:	00a7b023          	sd	a0,0(a5)
    void setState(ThreadState s) { state = s; }
    80001930:	00200793          	li	a5,2
    80001934:	02f52823          	sw	a5,48(a0)
    mainThread->setState(RUNNING);

    thread_create(&userBody, &userWrapper, nullptr);
    80001938:	00000613          	li	a2,0
    8000193c:	00000597          	auipc	a1,0x0
    80001940:	f8c58593          	addi	a1,a1,-116 # 800018c8 <_Z11userWrapperPv>
    80001944:	fe840513          	addi	a0,s0,-24
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	914080e7          	jalr	-1772(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>

    while (!Scheduler::isEmpty()) {
    80001950:	00000097          	auipc	ra,0x0
    80001954:	f54080e7          	jalr	-172(ra) # 800018a4 <_ZN9Scheduler7isEmptyEv>
    80001958:	00051863          	bnez	a0,80001968 <main+0x78>
        KThread::yield();
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	e4c080e7          	jalr	-436(ra) # 800017a8 <_ZN7KThread5yieldEv>
    80001964:	fedff06f          	j	80001950 <main+0x60>
    }

    80001968:	01813083          	ld	ra,24(sp)
    8000196c:	01013403          	ld	s0,16(sp)
    80001970:	02010113          	addi	sp,sp,32
    80001974:	00008067          	ret

0000000080001978 <_ZN6ThreadD1Ev>:
    : myHandle(nullptr), body(body), arg(arg) {}

Thread::Thread()
    : myHandle(nullptr), body(nullptr), arg(nullptr) {}

Thread::~Thread() {
    80001978:	00007797          	auipc	a5,0x7
    8000197c:	f6078793          	addi	a5,a5,-160 # 800088d8 <_ZTV6Thread+0x10>
    80001980:	00f53023          	sd	a5,0(a0)
    if (myHandle) {
    80001984:	00853503          	ld	a0,8(a0)
    80001988:	02050663          	beqz	a0,800019b4 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread() {
    8000198c:	ff010113          	addi	sp,sp,-16
    80001990:	00113423          	sd	ra,8(sp)
    80001994:	00813023          	sd	s0,0(sp)
    80001998:	01010413          	addi	s0,sp,16
        mem_free(myHandle);
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	80c080e7          	jalr	-2036(ra) # 800011a8 <_Z8mem_freePv>
        myHandle = nullptr;
    }
}
    800019a4:	00813083          	ld	ra,8(sp)
    800019a8:	00013403          	ld	s0,0(sp)
    800019ac:	01010113          	addi	sp,sp,16
    800019b0:	00008067          	ret
    800019b4:	00008067          	ret

00000000800019b8 <_ZN6Thread7wrapperEPv>:
void Thread::wrapper(void* arg) {
    800019b8:	ff010113          	addi	sp,sp,-16
    800019bc:	00113423          	sd	ra,8(sp)
    800019c0:	00813023          	sd	s0,0(sp)
    800019c4:	01010413          	addi	s0,sp,16
    thread->run();
    800019c8:	00053783          	ld	a5,0(a0)
    800019cc:	0107b783          	ld	a5,16(a5)
    800019d0:	000780e7          	jalr	a5
    thread_exit();
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	934080e7          	jalr	-1740(ra) # 80001308 <_Z11thread_exitv>
}
    800019dc:	00813083          	ld	ra,8(sp)
    800019e0:	00013403          	ld	s0,0(sp)
    800019e4:	01010113          	addi	sp,sp,16
    800019e8:	00008067          	ret

00000000800019ec <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800019ec:	ff010113          	addi	sp,sp,-16
    800019f0:	00113423          	sd	ra,8(sp)
    800019f4:	00813023          	sd	s0,0(sp)
    800019f8:	01010413          	addi	s0,sp,16
    800019fc:	00007797          	auipc	a5,0x7
    80001a00:	f0478793          	addi	a5,a5,-252 # 80008900 <_ZTV9Semaphore+0x10>
    80001a04:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001a08:	00853503          	ld	a0,8(a0)
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	97c080e7          	jalr	-1668(ra) # 80001388 <_Z9sem_closeP10KSemaphore>
}
    80001a14:	00813083          	ld	ra,8(sp)
    80001a18:	00013403          	ld	s0,0(sp)
    80001a1c:	01010113          	addi	sp,sp,16
    80001a20:	00008067          	ret

0000000080001a24 <_Znwm>:
void* operator new(size_t size) {
    80001a24:	ff010113          	addi	sp,sp,-16
    80001a28:	00113423          	sd	ra,8(sp)
    80001a2c:	00813023          	sd	s0,0(sp)
    80001a30:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a34:	fffff097          	auipc	ra,0xfffff
    80001a38:	730080e7          	jalr	1840(ra) # 80001164 <_Z9mem_allocm>
}
    80001a3c:	00813083          	ld	ra,8(sp)
    80001a40:	00013403          	ld	s0,0(sp)
    80001a44:	01010113          	addi	sp,sp,16
    80001a48:	00008067          	ret

0000000080001a4c <_ZdlPv>:
void operator delete(void* ptr) {
    80001a4c:	ff010113          	addi	sp,sp,-16
    80001a50:	00113423          	sd	ra,8(sp)
    80001a54:	00813023          	sd	s0,0(sp)
    80001a58:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001a5c:	fffff097          	auipc	ra,0xfffff
    80001a60:	74c080e7          	jalr	1868(ra) # 800011a8 <_Z8mem_freePv>
}
    80001a64:	00813083          	ld	ra,8(sp)
    80001a68:	00013403          	ld	s0,0(sp)
    80001a6c:	01010113          	addi	sp,sp,16
    80001a70:	00008067          	ret

0000000080001a74 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001a74:	fe010113          	addi	sp,sp,-32
    80001a78:	00113c23          	sd	ra,24(sp)
    80001a7c:	00813823          	sd	s0,16(sp)
    80001a80:	00913423          	sd	s1,8(sp)
    80001a84:	02010413          	addi	s0,sp,32
    80001a88:	00050493          	mv	s1,a0
}
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	eec080e7          	jalr	-276(ra) # 80001978 <_ZN6ThreadD1Ev>
    80001a94:	00048513          	mv	a0,s1
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	fb4080e7          	jalr	-76(ra) # 80001a4c <_ZdlPv>
    80001aa0:	01813083          	ld	ra,24(sp)
    80001aa4:	01013403          	ld	s0,16(sp)
    80001aa8:	00813483          	ld	s1,8(sp)
    80001aac:	02010113          	addi	sp,sp,32
    80001ab0:	00008067          	ret

0000000080001ab4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001ab4:	fe010113          	addi	sp,sp,-32
    80001ab8:	00113c23          	sd	ra,24(sp)
    80001abc:	00813823          	sd	s0,16(sp)
    80001ac0:	00913423          	sd	s1,8(sp)
    80001ac4:	02010413          	addi	s0,sp,32
    80001ac8:	00050493          	mv	s1,a0
}
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	f20080e7          	jalr	-224(ra) # 800019ec <_ZN9SemaphoreD1Ev>
    80001ad4:	00048513          	mv	a0,s1
    80001ad8:	00000097          	auipc	ra,0x0
    80001adc:	f74080e7          	jalr	-140(ra) # 80001a4c <_ZdlPv>
    80001ae0:	01813083          	ld	ra,24(sp)
    80001ae4:	01013403          	ld	s0,16(sp)
    80001ae8:	00813483          	ld	s1,8(sp)
    80001aec:	02010113          	addi	sp,sp,32
    80001af0:	00008067          	ret

0000000080001af4 <_Znam>:
void* operator new[](size_t size) {
    80001af4:	ff010113          	addi	sp,sp,-16
    80001af8:	00113423          	sd	ra,8(sp)
    80001afc:	00813023          	sd	s0,0(sp)
    80001b00:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001b04:	fffff097          	auipc	ra,0xfffff
    80001b08:	660080e7          	jalr	1632(ra) # 80001164 <_Z9mem_allocm>
}
    80001b0c:	00813083          	ld	ra,8(sp)
    80001b10:	00013403          	ld	s0,0(sp)
    80001b14:	01010113          	addi	sp,sp,16
    80001b18:	00008067          	ret

0000000080001b1c <_ZdaPv>:
void operator delete[](void* ptr) {
    80001b1c:	ff010113          	addi	sp,sp,-16
    80001b20:	00113423          	sd	ra,8(sp)
    80001b24:	00813023          	sd	s0,0(sp)
    80001b28:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001b2c:	fffff097          	auipc	ra,0xfffff
    80001b30:	67c080e7          	jalr	1660(ra) # 800011a8 <_Z8mem_freePv>
}
    80001b34:	00813083          	ld	ra,8(sp)
    80001b38:	00013403          	ld	s0,0(sp)
    80001b3c:	01010113          	addi	sp,sp,16
    80001b40:	00008067          	ret

0000000080001b44 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg)
    80001b44:	ff010113          	addi	sp,sp,-16
    80001b48:	00813423          	sd	s0,8(sp)
    80001b4c:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(body), arg(arg) {}
    80001b50:	00007797          	auipc	a5,0x7
    80001b54:	d8878793          	addi	a5,a5,-632 # 800088d8 <_ZTV6Thread+0x10>
    80001b58:	00f53023          	sd	a5,0(a0)
    80001b5c:	00053423          	sd	zero,8(a0)
    80001b60:	00b53823          	sd	a1,16(a0)
    80001b64:	00c53c23          	sd	a2,24(a0)
    80001b68:	00813403          	ld	s0,8(sp)
    80001b6c:	01010113          	addi	sp,sp,16
    80001b70:	00008067          	ret

0000000080001b74 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00813423          	sd	s0,8(sp)
    80001b7c:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80001b80:	00007797          	auipc	a5,0x7
    80001b84:	d5878793          	addi	a5,a5,-680 # 800088d8 <_ZTV6Thread+0x10>
    80001b88:	00f53023          	sd	a5,0(a0)
    80001b8c:	00053423          	sd	zero,8(a0)
    80001b90:	00053823          	sd	zero,16(a0)
    80001b94:	00053c23          	sd	zero,24(a0)
    80001b98:	00813403          	ld	s0,8(sp)
    80001b9c:	01010113          	addi	sp,sp,16
    80001ba0:	00008067          	ret

0000000080001ba4 <_ZN6Thread5startEv>:
int Thread::start() {
    80001ba4:	ff010113          	addi	sp,sp,-16
    80001ba8:	00113423          	sd	ra,8(sp)
    80001bac:	00813023          	sd	s0,0(sp)
    80001bb0:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    80001bb4:	01053583          	ld	a1,16(a0)
    80001bb8:	02058263          	beqz	a1,80001bdc <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80001bbc:	01853603          	ld	a2,24(a0)
    80001bc0:	00850513          	addi	a0,a0,8
    80001bc4:	fffff097          	auipc	ra,0xfffff
    80001bc8:	698080e7          	jalr	1688(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
}
    80001bcc:	00813083          	ld	ra,8(sp)
    80001bd0:	00013403          	ld	s0,0(sp)
    80001bd4:	01010113          	addi	sp,sp,16
    80001bd8:	00008067          	ret
    return thread_create(&myHandle, wrapper, this);
    80001bdc:	00050613          	mv	a2,a0
    80001be0:	00000597          	auipc	a1,0x0
    80001be4:	dd858593          	addi	a1,a1,-552 # 800019b8 <_ZN6Thread7wrapperEPv>
    80001be8:	00850513          	addi	a0,a0,8
    80001bec:	fffff097          	auipc	ra,0xfffff
    80001bf0:	670080e7          	jalr	1648(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    80001bf4:	fd9ff06f          	j	80001bcc <_ZN6Thread5startEv+0x28>

0000000080001bf8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001bf8:	ff010113          	addi	sp,sp,-16
    80001bfc:	00113423          	sd	ra,8(sp)
    80001c00:	00813023          	sd	s0,0(sp)
    80001c04:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001c08:	fffff097          	auipc	ra,0xfffff
    80001c0c:	728080e7          	jalr	1832(ra) # 80001330 <_Z15thread_dispatchv>
}
    80001c10:	00813083          	ld	ra,8(sp)
    80001c14:	00013403          	ld	s0,0(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00113423          	sd	ra,8(sp)
    80001c28:	00813023          	sd	s0,0(sp)
    80001c2c:	01010413          	addi	s0,sp,16
    80001c30:	00007797          	auipc	a5,0x7
    80001c34:	cd078793          	addi	a5,a5,-816 # 80008900 <_ZTV9Semaphore+0x10>
    80001c38:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001c3c:	00850513          	addi	a0,a0,8
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	710080e7          	jalr	1808(ra) # 80001350 <_Z8sem_openPP10KSemaphorej>
}
    80001c48:	00813083          	ld	ra,8(sp)
    80001c4c:	00013403          	ld	s0,0(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret

0000000080001c58 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001c58:	ff010113          	addi	sp,sp,-16
    80001c5c:	00113423          	sd	ra,8(sp)
    80001c60:	00813023          	sd	s0,0(sp)
    80001c64:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001c68:	00853503          	ld	a0,8(a0)
    80001c6c:	fffff097          	auipc	ra,0xfffff
    80001c70:	748080e7          	jalr	1864(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>
}
    80001c74:	00813083          	ld	ra,8(sp)
    80001c78:	00013403          	ld	s0,0(sp)
    80001c7c:	01010113          	addi	sp,sp,16
    80001c80:	00008067          	ret

0000000080001c84 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001c84:	ff010113          	addi	sp,sp,-16
    80001c88:	00113423          	sd	ra,8(sp)
    80001c8c:	00813023          	sd	s0,0(sp)
    80001c90:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001c94:	00853503          	ld	a0,8(a0)
    80001c98:	fffff097          	auipc	ra,0xfffff
    80001c9c:	748080e7          	jalr	1864(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>
}
    80001ca0:	00813083          	ld	ra,8(sp)
    80001ca4:	00013403          	ld	s0,0(sp)
    80001ca8:	01010113          	addi	sp,sp,16
    80001cac:	00008067          	ret

0000000080001cb0 <_ZN7Console4getcEv>:

char Console::getc() {
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00113423          	sd	ra,8(sp)
    80001cb8:	00813023          	sd	s0,0(sp)
    80001cbc:	01010413          	addi	s0,sp,16
    return ::getc();
    80001cc0:	fffff097          	auipc	ra,0xfffff
    80001cc4:	74c080e7          	jalr	1868(ra) # 8000140c <_Z4getcv>
}
    80001cc8:	00813083          	ld	ra,8(sp)
    80001ccc:	00013403          	ld	s0,0(sp)
    80001cd0:	01010113          	addi	sp,sp,16
    80001cd4:	00008067          	ret

0000000080001cd8 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001cd8:	ff010113          	addi	sp,sp,-16
    80001cdc:	00113423          	sd	ra,8(sp)
    80001ce0:	00813023          	sd	s0,0(sp)
    80001ce4:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001ce8:	fffff097          	auipc	ra,0xfffff
    80001cec:	74c080e7          	jalr	1868(ra) # 80001434 <_Z4putcc>
    80001cf0:	00813083          	ld	ra,8(sp)
    80001cf4:	00013403          	ld	s0,0(sp)
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret

0000000080001d00 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00813423          	sd	s0,8(sp)
    80001d08:	01010413          	addi	s0,sp,16
    80001d0c:	00813403          	ld	s0,8(sp)
    80001d10:	01010113          	addi	sp,sp,16
    80001d14:	00008067          	ret

0000000080001d18 <_ZN5Riscv10popSppSpieEv>:

constexpr uint64 GETC = 0x41;
constexpr uint64 PUTC = 0x42;

void Riscv::popSppSpie()
{
    80001d18:	ff010113          	addi	sp,sp,-16
    80001d1c:	00813423          	sd	s0,8(sp)
    80001d20:	01010413          	addi	s0,sp,16
inline void Riscv::ms_sstatus(uint64 mask) {
    asm volatile("csrs sstatus, %0" :: "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask) {
    asm volatile("csrc sstatus, %0" :: "r"(mask));
    80001d24:	10000793          	li	a5,256
    80001d28:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    asm volatile("csrw sepc, ra");
    80001d2c:	14109073          	csrw	sepc,ra
    asm volatile("sret");
    80001d30:	10200073          	sret
}
    80001d34:	00813403          	ld	s0,8(sp)
    80001d38:	01010113          	addi	sp,sp,16
    80001d3c:	00008067          	ret

0000000080001d40 <_ZN5Riscv16setupTrapHandlerEv>:


void Riscv::setupTrapHandler() {
    80001d40:	ff010113          	addi	sp,sp,-16
    80001d44:	00813423          	sd	s0,8(sp)
    80001d48:	01010413          	addi	s0,sp,16
    unsigned long addr = (unsigned long)&trap_handler;
    80001d4c:	00007797          	auipc	a5,0x7
    80001d50:	c947b783          	ld	a5,-876(a5) # 800089e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(stvec));
    80001d54:	10579073          	csrw	stvec,a5
    w_stvec(addr);
}
    80001d58:	00813403          	ld	s0,8(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret

0000000080001d64 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001d64:	fb010113          	addi	sp,sp,-80
    80001d68:	04113423          	sd	ra,72(sp)
    80001d6c:	04813023          	sd	s0,64(sp)
    80001d70:	02913c23          	sd	s1,56(sp)
    80001d74:	03213823          	sd	s2,48(sp)
    80001d78:	03313423          	sd	s3,40(sp)
    80001d7c:	05010413          	addi	s0,sp,80
    asm volatile("csrr %0, scause" : "=r"(scause));
    80001d80:	142027f3          	csrr	a5,scause
    80001d84:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001d88:	fc043703          	ld	a4,-64(s0)
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    80001d8c:	141027f3          	csrr	a5,sepc
    80001d90:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001d94:	fb843483          	ld	s1,-72(s0)
    uint64 scause = r_scause();
    uint64 sepc = r_sepc();

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    80001d98:	fff00793          	li	a5,-1
    80001d9c:	0017d793          	srli	a5,a5,0x1
    80001da0:	00f777b3          	and	a5,a4,a5

    if (interrupt == 0 && (cause == 8 || cause == 9)) {
    80001da4:	00074863          	bltz	a4,80001db4 <_ZN5Riscv11trapHandlerEv+0x50>
    80001da8:	ff878793          	addi	a5,a5,-8
    80001dac:	00100713          	li	a4,1
    80001db0:	02f77063          	bgeu	a4,a5,80001dd0 <_ZN5Riscv11trapHandlerEv+0x6c>

        sepc += 4;
        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    80001db4:	04813083          	ld	ra,72(sp)
    80001db8:	04013403          	ld	s0,64(sp)
    80001dbc:	03813483          	ld	s1,56(sp)
    80001dc0:	03013903          	ld	s2,48(sp)
    80001dc4:	02813983          	ld	s3,40(sp)
    80001dc8:	05010113          	addi	sp,sp,80
    80001dcc:	00008067          	ret
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    asm volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001dd0:	100027f3          	csrr	a5,sstatus
    80001dd4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001dd8:	fc843903          	ld	s2,-56(s0)
        asm volatile("mv %0, a0" : "=r"(code));
    80001ddc:	00050793          	mv	a5,a0
        switch (code) {
    80001de0:	04200713          	li	a4,66
    80001de4:	04f76463          	bltu	a4,a5,80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
    80001de8:	00279793          	slli	a5,a5,0x2
    80001dec:	00005717          	auipc	a4,0x5
    80001df0:	23470713          	addi	a4,a4,564 # 80007020 <CONSOLE_STATUS+0x10>
    80001df4:	00e787b3          	add	a5,a5,a4
    80001df8:	0007a783          	lw	a5,0(a5)
    80001dfc:	00e787b3          	add	a5,a5,a4
    80001e00:	00078067          	jr	a5
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001e04:	00007997          	auipc	s3,0x7
    80001e08:	bf49b983          	ld	s3,-1036(s3) # 800089f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e0c:	0009b783          	ld	a5,0(s3)
    80001e10:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(size));
    80001e14:	00058513          	mv	a0,a1
                void* ptr = MemoryAllocator::mem_alloc(size);
    80001e18:	00000097          	auipc	ra,0x0
    80001e1c:	298080e7          	jalr	664(ra) # 800020b0 <_ZN15MemoryAllocator9mem_allocEm>
                asm volatile("mv a0, %0" :: "r"(ptr));
    80001e20:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e24:	0009b783          	ld	a5,0(s3)
    80001e28:	04a7b823          	sd	a0,80(a5)
        sepc += 4;
    80001e2c:	00448493          	addi	s1,s1,4
    asm volatile("csrw sepc, %0" :: "r"(sepc));
    80001e30:	14149073          	csrw	sepc,s1
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    asm volatile("csrw sstatus, %0" :: "r"(sstatus));
    80001e34:	10091073          	csrw	sstatus,s2
    80001e38:	f7dff06f          	j	80001db4 <_ZN5Riscv11trapHandlerEv+0x50>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001e3c:	00007997          	auipc	s3,0x7
    80001e40:	bbc9b983          	ld	s3,-1092(s3) # 800089f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e44:	0009b783          	ld	a5,0(s3)
    80001e48:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(addr));
    80001e4c:	00058513          	mv	a0,a1
                int status = MemoryAllocator::mem_free(addr);
    80001e50:	00000097          	auipc	ra,0x0
    80001e54:	360080e7          	jalr	864(ra) # 800021b0 <_ZN15MemoryAllocator8mem_freeEPv>
                asm volatile("mv a0, %0" :: "r"(status));
    80001e58:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e5c:	0009b783          	ld	a5,0(s3)
    80001e60:	04a7b823          	sd	a0,80(a5)
                break;
    80001e64:	fc9ff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	3ec080e7          	jalr	1004(ra) # 80002254 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                asm volatile("mv a0, %0" :: "r"(freeSpace));
    80001e70:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e74:	00007797          	auipc	a5,0x7
    80001e78:	b847b783          	ld	a5,-1148(a5) # 800089f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e7c:	0007b783          	ld	a5,0(a5)
    80001e80:	04a7b823          	sd	a0,80(a5)
                break;
    80001e84:	fa9ff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
    80001e88:	00000097          	auipc	ra,0x0
    80001e8c:	414080e7          	jalr	1044(ra) # 8000229c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                asm volatile("mv a0, %0" :: "r"(largest));
    80001e90:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e94:	00007797          	auipc	a5,0x7
    80001e98:	b647b783          	ld	a5,-1180(a5) # 800089f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e9c:	0007b783          	ld	a5,0(a5)
    80001ea0:	04a7b823          	sd	a0,80(a5)
                break;
    80001ea4:	f89ff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
    asm volatile("csrc sstatus, %0" :: "r"(mask));
    80001ea8:	10000793          	li	a5,256
    80001eac:	1007b073          	csrc	sstatus,a5
}
    80001eb0:	f7dff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
    asm volatile("csrs sstatus, %0" :: "r"(mask));
    80001eb4:	10000793          	li	a5,256
    80001eb8:	1007a073          	csrs	sstatus,a5
}
    80001ebc:	f71ff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001ec0:	00007797          	auipc	a5,0x7
    80001ec4:	b387b783          	ld	a5,-1224(a5) # 800089f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ec8:	0007b783          	ld	a5,0(a5)
    80001ecc:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001ed0:	00058993          	mv	s3,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001ed4:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(start_routine));
    80001ed8:	00060513          	mv	a0,a2
                asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
    80001edc:	0687b683          	ld	a3,104(a5)
                asm volatile("mv %0, a3" : "=r"(args));
    80001ee0:	00068593          	mv	a1,a3
                asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
    80001ee4:	0707b703          	ld	a4,112(a5)
                asm volatile("mv %0, a4" : "=r"(stack));
    80001ee8:	00070613          	mv	a2,a4
                *handle = KThread::createThread(start_routine, args, stack);
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	6c8080e7          	jalr	1736(ra) # 800015b4 <_ZN7KThread12createThreadEPFvPvES0_S0_>
    80001ef4:	00a9b023          	sd	a0,0(s3)
                if (*handle != nullptr) {
    80001ef8:	02050263          	beqz	a0,80001f1c <_ZN5Riscv11trapHandlerEv+0x1b8>
                    (*handle)->start();
    80001efc:	fffff097          	auipc	ra,0xfffff
    80001f00:	7a0080e7          	jalr	1952(ra) # 8000169c <_ZN7KThread5startEv>
                    asm volatile("li a0, 0");
    80001f04:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001f08:	00007797          	auipc	a5,0x7
    80001f0c:	af07b783          	ld	a5,-1296(a5) # 800089f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f10:	0007b783          	ld	a5,0(a5)
    80001f14:	04a7b823          	sd	a0,80(a5)
                break;
    80001f18:	f15ff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                else asm volatile("li a0, -1");
    80001f1c:	fff00513          	li	a0,-1
    80001f20:	fe9ff06f          	j	80001f08 <_ZN5Riscv11trapHandlerEv+0x1a4>
                if (KThread::running) {
    80001f24:	00007797          	auipc	a5,0x7
    80001f28:	acc7b783          	ld	a5,-1332(a5) # 800089f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f2c:	0007b503          	ld	a0,0(a5)
    80001f30:	00050663          	beqz	a0,80001f3c <_ZN5Riscv11trapHandlerEv+0x1d8>
                    KThread::running->exit();
    80001f34:	fffff097          	auipc	ra,0xfffff
    80001f38:	7a4080e7          	jalr	1956(ra) # 800016d8 <_ZN7KThread4exitEv>
                KThread::dispatch();
    80001f3c:	fffff097          	auipc	ra,0xfffff
    80001f40:	7bc080e7          	jalr	1980(ra) # 800016f8 <_ZN7KThread8dispatchEv>
                asm volatile("li a0, 0");
    80001f44:	00000513          	li	a0,0
                break;
    80001f48:	ee5ff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                KThread::dispatch();
    80001f4c:	fffff097          	auipc	ra,0xfffff
    80001f50:	7ac080e7          	jalr	1964(ra) # 800016f8 <_ZN7KThread8dispatchEv>
                break;
    80001f54:	ed9ff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f58:	00007797          	auipc	a5,0x7
    80001f5c:	aa07b783          	ld	a5,-1376(a5) # 800089f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f60:	0007b783          	ld	a5,0(a5)
    80001f64:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001f68:	00058993          	mv	s3,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001f6c:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(init));
    80001f70:	00060513          	mv	a0,a2
                *handle = KSemaphore::createSemaphore(init);
    80001f74:	02051513          	slli	a0,a0,0x20
    80001f78:	02055513          	srli	a0,a0,0x20
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	370080e7          	jalr	880(ra) # 800022ec <_ZN10KSemaphore15createSemaphoreEm>
    80001f84:	00a9b023          	sd	a0,0(s3)
                if (*handle != nullptr) asm volatile("li a0, 0");
    80001f88:	00050e63          	beqz	a0,80001fa4 <_ZN5Riscv11trapHandlerEv+0x240>
    80001f8c:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001f90:	00007797          	auipc	a5,0x7
    80001f94:	a687b783          	ld	a5,-1432(a5) # 800089f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f98:	0007b783          	ld	a5,0(a5)
    80001f9c:	04a7b823          	sd	a0,80(a5)
                break;
    80001fa0:	e8dff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                else asm volatile("li a0, -1");
    80001fa4:	fff00513          	li	a0,-1
    80001fa8:	fe9ff06f          	j	80001f90 <_ZN5Riscv11trapHandlerEv+0x22c>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001fac:	00007797          	auipc	a5,0x7
    80001fb0:	a4c7b783          	ld	a5,-1460(a5) # 800089f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fb4:	0007b783          	ld	a5,0(a5)
    80001fb8:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001fbc:	00058513          	mv	a0,a1
                if (handle) {
    80001fc0:	00050a63          	beqz	a0,80001fd4 <_ZN5Riscv11trapHandlerEv+0x270>
                    handle->close();
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	48c080e7          	jalr	1164(ra) # 80002450 <_ZN10KSemaphore5closeEv>
                    asm volatile("li a0, 0");
    80001fcc:	00000513          	li	a0,0
    80001fd0:	e5dff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                else asm volatile("li a0, -1");
    80001fd4:	fff00513          	li	a0,-1
    80001fd8:	e55ff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001fdc:	00007797          	auipc	a5,0x7
    80001fe0:	a1c7b783          	ld	a5,-1508(a5) # 800089f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fe4:	0007b783          	ld	a5,0(a5)
    80001fe8:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001fec:	00058513          	mv	a0,a1
                if (handle) {
    80001ff0:	00050a63          	beqz	a0,80002004 <_ZN5Riscv11trapHandlerEv+0x2a0>
                    handle->wait();
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	3ac080e7          	jalr	940(ra) # 800023a0 <_ZN10KSemaphore4waitEv>
                    asm volatile("li a0, 0");
    80001ffc:	00000513          	li	a0,0
    80002000:	e2dff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                else asm volatile("li a0, -1");
    80002004:	fff00513          	li	a0,-1
    80002008:	e25ff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    8000200c:	00007797          	auipc	a5,0x7
    80002010:	9ec7b783          	ld	a5,-1556(a5) # 800089f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002014:	0007b783          	ld	a5,0(a5)
    80002018:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    8000201c:	00058513          	mv	a0,a1
                if (handle) {
    80002020:	00050a63          	beqz	a0,80002034 <_ZN5Riscv11trapHandlerEv+0x2d0>
                    handle->signal();
    80002024:	00000097          	auipc	ra,0x0
    80002028:	3d8080e7          	jalr	984(ra) # 800023fc <_ZN10KSemaphore6signalEv>
                    asm volatile("li a0, 0");
    8000202c:	00000513          	li	a0,0
    80002030:	dfdff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                else asm volatile("li a0, -1");
    80002034:	fff00513          	li	a0,-1
    80002038:	df5ff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                char c = __getc();
    8000203c:	00004097          	auipc	ra,0x4
    80002040:	51c080e7          	jalr	1308(ra) # 80006558 <__getc>
                asm volatile("mv a0, %0" :: "r"(c));
    80002044:	00050513          	mv	a0,a0
                break;
    80002048:	de5ff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>
                asm volatile("mv %0, a1" : "=r"(c));
    8000204c:	00058513          	mv	a0,a1
                __putc(c);
    80002050:	0ff57513          	andi	a0,a0,255
    80002054:	00004097          	auipc	ra,0x4
    80002058:	4c8080e7          	jalr	1224(ra) # 8000651c <__putc>
                break;
    8000205c:	dd1ff06f          	j	80001e2c <_ZN5Riscv11trapHandlerEv+0xc8>

0000000080002060 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80002060:	ff010113          	addi	sp,sp,-16
    80002064:	00813423          	sd	s0,8(sp)
    80002068:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    8000206c:	00007697          	auipc	a3,0x7
    80002070:	9646b683          	ld	a3,-1692(a3) # 800089d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002074:	0006b783          	ld	a5,0(a3)
    80002078:	00007717          	auipc	a4,0x7
    8000207c:	9f070713          	addi	a4,a4,-1552 # 80008a68 <_ZN15MemoryAllocator12freeListHeadE>
    80002080:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    80002084:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80002088:	00007797          	auipc	a5,0x7
    8000208c:	9607b783          	ld	a5,-1696(a5) # 800089e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002090:	0007b783          	ld	a5,0(a5)
    80002094:	0006b683          	ld	a3,0(a3)
    80002098:	00073703          	ld	a4,0(a4)
    8000209c:	40d787b3          	sub	a5,a5,a3
    800020a0:	00f73423          	sd	a5,8(a4)
}
    800020a4:	00813403          	ld	s0,8(sp)
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00813423          	sd	s0,8(sp)
    800020b8:	01010413          	addi	s0,sp,16
    800020bc:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    800020c0:	00007517          	auipc	a0,0x7
    800020c4:	9a853503          	ld	a0,-1624(a0) # 80008a68 <_ZN15MemoryAllocator12freeListHeadE>
    800020c8:	06050063          	beqz	a0,80002128 <_ZN15MemoryAllocator9mem_allocEm+0x78>
    800020cc:	08078a63          	beqz	a5,80002160 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    800020d0:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    800020d4:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    800020d8:	00000613          	li	a2,0
    800020dc:	00c0006f          	j	800020e8 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    800020e0:	00050613          	mv	a2,a0
        curr = curr->next;
    800020e4:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    800020e8:	00050663          	beqz	a0,800020f4 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    800020ec:	00853783          	ld	a5,8(a0)
    800020f0:	fee7e8e3          	bltu	a5,a4,800020e0 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    800020f4:	02050a63          	beqz	a0,80002128 <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    800020f8:	00853583          	ld	a1,8(a0)
    800020fc:	02068793          	addi	a5,a3,32
    80002100:	04f5e063          	bltu	a1,a5,80002140 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    80002104:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    80002108:	40e585b3          	sub	a1,a1,a4
    8000210c:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    80002110:	00053683          	ld	a3,0(a0)
    80002114:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    80002118:	00060e63          	beqz	a2,80002134 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    8000211c:	00f63023          	sd	a5,0(a2)
        else freeListHead = newBlock;

        curr->size = totalSize;
    80002120:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
    80002124:	01050513          	addi	a0,a0,16
}
    80002128:	00813403          	ld	s0,8(sp)
    8000212c:	01010113          	addi	sp,sp,16
    80002130:	00008067          	ret
        else freeListHead = newBlock;
    80002134:	00007697          	auipc	a3,0x7
    80002138:	92f6ba23          	sd	a5,-1740(a3) # 80008a68 <_ZN15MemoryAllocator12freeListHeadE>
    8000213c:	fe5ff06f          	j	80002120 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    80002140:	00060863          	beqz	a2,80002150 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80002144:	00053783          	ld	a5,0(a0)
    80002148:	00f63023          	sd	a5,0(a2)
    8000214c:	fd9ff06f          	j	80002124 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    80002150:	00053783          	ld	a5,0(a0)
    80002154:	00007717          	auipc	a4,0x7
    80002158:	90f73a23          	sd	a5,-1772(a4) # 80008a68 <_ZN15MemoryAllocator12freeListHeadE>
    8000215c:	fc9ff06f          	j	80002124 <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    80002160:	00000513          	li	a0,0
    80002164:	fc5ff06f          	j	80002128 <_ZN15MemoryAllocator9mem_allocEm+0x78>

0000000080002168 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    80002168:	ff010113          	addi	sp,sp,-16
    8000216c:	00813423          	sd	s0,8(sp)
    80002170:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80002174:	00050c63          	beqz	a0,8000218c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    80002178:	00053783          	ld	a5,0(a0)
    8000217c:	00078863          	beqz	a5,8000218c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    80002180:	00853703          	ld	a4,8(a0)
    80002184:	00e506b3          	add	a3,a0,a4
    80002188:	00d78863          	beq	a5,a3,80002198 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    8000218c:	00813403          	ld	s0,8(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret
        curr->size += curr->next->size;
    80002198:	0087b683          	ld	a3,8(a5)
    8000219c:	00d70733          	add	a4,a4,a3
    800021a0:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    800021a4:	0007b783          	ld	a5,0(a5)
    800021a8:	00f53023          	sd	a5,0(a0)
    800021ac:	fe1ff06f          	j	8000218c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

00000000800021b0 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    800021b0:	08050e63          	beqz	a0,8000224c <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    800021b4:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    800021b8:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    800021bc:	00007797          	auipc	a5,0x7
    800021c0:	8ac7b783          	ld	a5,-1876(a5) # 80008a68 <_ZN15MemoryAllocator12freeListHeadE>
    800021c4:	02078863          	beqz	a5,800021f4 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    800021c8:	fe010113          	addi	sp,sp,-32
    800021cc:	00113c23          	sd	ra,24(sp)
    800021d0:	00813823          	sd	s0,16(sp)
    800021d4:	00913423          	sd	s1,8(sp)
    800021d8:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    800021dc:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    800021e0:	02078463          	beqz	a5,80002208 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800021e4:	02a7f263          	bgeu	a5,a0,80002208 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    800021e8:	00078493          	mv	s1,a5
        curr = curr->next;
    800021ec:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    800021f0:	ff1ff06f          	j	800021e0 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    800021f4:	00007797          	auipc	a5,0x7
    800021f8:	86a7ba23          	sd	a0,-1932(a5) # 80008a68 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    800021fc:	fe073823          	sd	zero,-16(a4)
        return 0;
    80002200:	00000513          	li	a0,0
    80002204:	00008067          	ret
    blockToFree->next = curr;
    80002208:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    8000220c:	02048a63          	beqz	s1,80002240 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80002210:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    80002214:	00000097          	auipc	ra,0x0
    80002218:	f54080e7          	jalr	-172(ra) # 80002168 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    8000221c:	00048513          	mv	a0,s1
    80002220:	00000097          	auipc	ra,0x0
    80002224:	f48080e7          	jalr	-184(ra) # 80002168 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    80002228:	00000513          	li	a0,0
}
    8000222c:	01813083          	ld	ra,24(sp)
    80002230:	01013403          	ld	s0,16(sp)
    80002234:	00813483          	ld	s1,8(sp)
    80002238:	02010113          	addi	sp,sp,32
    8000223c:	00008067          	ret
    else freeListHead = blockToFree;
    80002240:	00007797          	auipc	a5,0x7
    80002244:	82a7b423          	sd	a0,-2008(a5) # 80008a68 <_ZN15MemoryAllocator12freeListHeadE>
    80002248:	fcdff06f          	j	80002214 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    8000224c:	fff00513          	li	a0,-1
}
    80002250:	00008067          	ret

0000000080002254 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002254:	ff010113          	addi	sp,sp,-16
    80002258:	00813423          	sd	s0,8(sp)
    8000225c:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002260:	00007797          	auipc	a5,0x7
    80002264:	8087b783          	ld	a5,-2040(a5) # 80008a68 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    80002268:	00000513          	li	a0,0
    8000226c:	0080006f          	j	80002274 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002270:	0007b783          	ld	a5,0(a5)
    80002274:	00078e63          	beqz	a5,80002290 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    80002278:	0087b703          	ld	a4,8(a5)
    8000227c:	01000693          	li	a3,16
    80002280:	fee6f8e3          	bgeu	a3,a4,80002270 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    80002284:	00a70533          	add	a0,a4,a0
    80002288:	ff050513          	addi	a0,a0,-16
    8000228c:	fe5ff06f          	j	80002270 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    80002290:	00813403          	ld	s0,8(sp)
    80002294:	01010113          	addi	sp,sp,16
    80002298:	00008067          	ret

000000008000229c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00813423          	sd	s0,8(sp)
    800022a4:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    800022a8:	00006717          	auipc	a4,0x6
    800022ac:	7c073703          	ld	a4,1984(a4) # 80008a68 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    800022b0:	00000513          	li	a0,0
    800022b4:	0080006f          	j	800022bc <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    800022b8:	00073703          	ld	a4,0(a4)
    800022bc:	02070263          	beqz	a4,800022e0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    800022c0:	00873783          	ld	a5,8(a4)
    800022c4:	01000693          	li	a3,16
    800022c8:	00d7f463          	bgeu	a5,a3,800022d0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    800022cc:	01000793          	li	a5,16
    800022d0:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    800022d4:	fef572e3          	bgeu	a0,a5,800022b8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    800022d8:	00078513          	mv	a0,a5
    800022dc:	fddff06f          	j	800022b8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    800022e0:	00813403          	ld	s0,8(sp)
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00008067          	ret

00000000800022ec <_ZN10KSemaphore15createSemaphoreEm>:

#include "../h/KSemaphore.hpp"
#include "../h/KThread.hpp"
#include "../h/Scheduler.hpp"

KSemaphore* KSemaphore::createSemaphore(uint64 init) {
    800022ec:	fe010113          	addi	sp,sp,-32
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	00813823          	sd	s0,16(sp)
    800022f8:	00913423          	sd	s1,8(sp)
    800022fc:	02010413          	addi	s0,sp,32
    80002300:	00050493          	mv	s1,a0

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    80002304:	00100513          	li	a0,1
    80002308:	00000097          	auipc	ra,0x0
    8000230c:	da8080e7          	jalr	-600(ra) # 800020b0 <_ZN15MemoryAllocator9mem_allocEm>
    void operator delete[](void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    explicit KSemaphore(uint64 init) : val(init) {}
    80002310:	00952023          	sw	s1,0(a0)
    80002314:	00053423          	sd	zero,8(a0)
    80002318:	00053823          	sd	zero,16(a0)
    return new KSemaphore(init);
}
    8000231c:	01813083          	ld	ra,24(sp)
    80002320:	01013403          	ld	s0,16(sp)
    80002324:	00813483          	ld	s1,8(sp)
    80002328:	02010113          	addi	sp,sp,32
    8000232c:	00008067          	ret

0000000080002330 <_ZN10KSemaphore3getEv>:

KThread* KSemaphore::get() {
    80002330:	ff010113          	addi	sp,sp,-16
    80002334:	00813423          	sd	s0,8(sp)
    80002338:	01010413          	addi	s0,sp,16
    8000233c:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002340:	00853503          	ld	a0,8(a0)
    80002344:	00050a63          	beqz	a0,80002358 <_ZN10KSemaphore3getEv+0x28>

    KThread* thread = head;
    head = head->semaphoreNext;
    80002348:	04053703          	ld	a4,64(a0)
    8000234c:	00e7b423          	sd	a4,8(a5)

    if (!head) tail = nullptr;
    80002350:	00070a63          	beqz	a4,80002364 <_ZN10KSemaphore3getEv+0x34>
    thread->semaphoreNext = nullptr;
    80002354:	04053023          	sd	zero,64(a0)

    return thread;
}
    80002358:	00813403          	ld	s0,8(sp)
    8000235c:	01010113          	addi	sp,sp,16
    80002360:	00008067          	ret
    if (!head) tail = nullptr;
    80002364:	0007b823          	sd	zero,16(a5)
    80002368:	fedff06f          	j	80002354 <_ZN10KSemaphore3getEv+0x24>

000000008000236c <_ZN10KSemaphore3putEP7KThread>:


void KSemaphore::put(KThread *thread) {
    8000236c:	ff010113          	addi	sp,sp,-16
    80002370:	00813423          	sd	s0,8(sp)
    80002374:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    80002378:	00853783          	ld	a5,8(a0)
    8000237c:	00078e63          	beqz	a5,80002398 <_ZN10KSemaphore3putEP7KThread+0x2c>
    else tail->semaphoreNext = thread;
    80002380:	01053783          	ld	a5,16(a0)
    80002384:	04b7b023          	sd	a1,64(a5)
    tail = thread;
    80002388:	00b53823          	sd	a1,16(a0)
}
    8000238c:	00813403          	ld	s0,8(sp)
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret
    if (!head) head = thread;
    80002398:	00b53423          	sd	a1,8(a0)
    8000239c:	fedff06f          	j	80002388 <_ZN10KSemaphore3putEP7KThread+0x1c>

00000000800023a0 <_ZN10KSemaphore4waitEv>:

void KSemaphore::wait() {
    val--;
    800023a0:	00052783          	lw	a5,0(a0)
    800023a4:	fff7879b          	addiw	a5,a5,-1
    800023a8:	00f52023          	sw	a5,0(a0)

    if (val < 0) {
    800023ac:	02079713          	slli	a4,a5,0x20
    800023b0:	00074463          	bltz	a4,800023b8 <_ZN10KSemaphore4waitEv+0x18>
    800023b4:	00008067          	ret
void KSemaphore::wait() {
    800023b8:	ff010113          	addi	sp,sp,-16
    800023bc:	00113423          	sd	ra,8(sp)
    800023c0:	00813023          	sd	s0,0(sp)
    800023c4:	01010413          	addi	s0,sp,16
        KThread::running->setState(BLOCKED);
    800023c8:	00006797          	auipc	a5,0x6
    800023cc:	6287b783          	ld	a5,1576(a5) # 800089f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023d0:	0007b583          	ld	a1,0(a5)
    800023d4:	00300793          	li	a5,3
    800023d8:	02f5a823          	sw	a5,48(a1)
        put(KThread::running);
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	f90080e7          	jalr	-112(ra) # 8000236c <_ZN10KSemaphore3putEP7KThread>
        KThread::dispatch();
    800023e4:	fffff097          	auipc	ra,0xfffff
    800023e8:	314080e7          	jalr	788(ra) # 800016f8 <_ZN7KThread8dispatchEv>
    }
}
    800023ec:	00813083          	ld	ra,8(sp)
    800023f0:	00013403          	ld	s0,0(sp)
    800023f4:	01010113          	addi	sp,sp,16
    800023f8:	00008067          	ret

00000000800023fc <_ZN10KSemaphore6signalEv>:

void KSemaphore::signal() {
    val++;
    800023fc:	00052783          	lw	a5,0(a0)
    80002400:	0017879b          	addiw	a5,a5,1
    80002404:	0007871b          	sext.w	a4,a5
    80002408:	00f52023          	sw	a5,0(a0)

    if (val <= 0) {
    8000240c:	00e05463          	blez	a4,80002414 <_ZN10KSemaphore6signalEv+0x18>
    80002410:	00008067          	ret
void KSemaphore::signal() {
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00113423          	sd	ra,8(sp)
    8000241c:	00813023          	sd	s0,0(sp)
    80002420:	01010413          	addi	s0,sp,16
        KThread* thread = get();
    80002424:	00000097          	auipc	ra,0x0
    80002428:	f0c080e7          	jalr	-244(ra) # 80002330 <_ZN10KSemaphore3getEv>

        if (thread) {
    8000242c:	00050a63          	beqz	a0,80002440 <_ZN10KSemaphore6signalEv+0x44>
    80002430:	00100793          	li	a5,1
    80002434:	02f52823          	sw	a5,48(a0)
            thread->setState(READY);
            Scheduler::put(thread);
    80002438:	fffff097          	auipc	ra,0xfffff
    8000243c:	428080e7          	jalr	1064(ra) # 80001860 <_ZN9Scheduler3putEP7KThread>
        }
    }
}
    80002440:	00813083          	ld	ra,8(sp)
    80002444:	00013403          	ld	s0,0(sp)
    80002448:	01010113          	addi	sp,sp,16
    8000244c:	00008067          	ret

0000000080002450 <_ZN10KSemaphore5closeEv>:

void KSemaphore::close() {
    80002450:	fe010113          	addi	sp,sp,-32
    80002454:	00113c23          	sd	ra,24(sp)
    80002458:	00813823          	sd	s0,16(sp)
    8000245c:	00913423          	sd	s1,8(sp)
    80002460:	02010413          	addi	s0,sp,32
    80002464:	00050493          	mv	s1,a0
    while (head) {
    80002468:	0084b783          	ld	a5,8(s1)
    8000246c:	02078263          	beqz	a5,80002490 <_ZN10KSemaphore5closeEv+0x40>
        KThread* thread = get();
    80002470:	00048513          	mv	a0,s1
    80002474:	00000097          	auipc	ra,0x0
    80002478:	ebc080e7          	jalr	-324(ra) # 80002330 <_ZN10KSemaphore3getEv>
    8000247c:	00100793          	li	a5,1
    80002480:	02f52823          	sw	a5,48(a0)
        thread->setState(READY);
        Scheduler::put(thread);
    80002484:	fffff097          	auipc	ra,0xfffff
    80002488:	3dc080e7          	jalr	988(ra) # 80001860 <_ZN9Scheduler3putEP7KThread>
    while (head) {
    8000248c:	fddff06f          	j	80002468 <_ZN10KSemaphore5closeEv+0x18>
    }
    80002490:	01813083          	ld	ra,24(sp)
    80002494:	01013403          	ld	s0,16(sp)
    80002498:	00813483          	ld	s1,8(sp)
    8000249c:	02010113          	addi	sp,sp,32
    800024a0:	00008067          	ret

00000000800024a4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800024a4:	fe010113          	addi	sp,sp,-32
    800024a8:	00113c23          	sd	ra,24(sp)
    800024ac:	00813823          	sd	s0,16(sp)
    800024b0:	00913423          	sd	s1,8(sp)
    800024b4:	01213023          	sd	s2,0(sp)
    800024b8:	02010413          	addi	s0,sp,32
    800024bc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800024c0:	00000913          	li	s2,0
    800024c4:	00c0006f          	j	800024d0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	e68080e7          	jalr	-408(ra) # 80001330 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	f3c080e7          	jalr	-196(ra) # 8000140c <_Z4getcv>
    800024d8:	0005059b          	sext.w	a1,a0
    800024dc:	01b00793          	li	a5,27
    800024e0:	02f58a63          	beq	a1,a5,80002514 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800024e4:	0084b503          	ld	a0,8(s1)
    800024e8:	00002097          	auipc	ra,0x2
    800024ec:	ce8080e7          	jalr	-792(ra) # 800041d0 <_ZN6Buffer3putEi>
        i++;
    800024f0:	0019071b          	addiw	a4,s2,1
    800024f4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800024f8:	0004a683          	lw	a3,0(s1)
    800024fc:	0026979b          	slliw	a5,a3,0x2
    80002500:	00d787bb          	addw	a5,a5,a3
    80002504:	0017979b          	slliw	a5,a5,0x1
    80002508:	02f767bb          	remw	a5,a4,a5
    8000250c:	fc0792e3          	bnez	a5,800024d0 <_ZL16producerKeyboardPv+0x2c>
    80002510:	fb9ff06f          	j	800024c8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002514:	00100793          	li	a5,1
    80002518:	00006717          	auipc	a4,0x6
    8000251c:	54f72c23          	sw	a5,1368(a4) # 80008a70 <_ZL9threadEnd>
    data->buffer->put('!');
    80002520:	02100593          	li	a1,33
    80002524:	0084b503          	ld	a0,8(s1)
    80002528:	00002097          	auipc	ra,0x2
    8000252c:	ca8080e7          	jalr	-856(ra) # 800041d0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002530:	0104b503          	ld	a0,16(s1)
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	eac080e7          	jalr	-340(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>
}
    8000253c:	01813083          	ld	ra,24(sp)
    80002540:	01013403          	ld	s0,16(sp)
    80002544:	00813483          	ld	s1,8(sp)
    80002548:	00013903          	ld	s2,0(sp)
    8000254c:	02010113          	addi	sp,sp,32
    80002550:	00008067          	ret

0000000080002554 <_ZL8producerPv>:

static void producer(void *arg) {
    80002554:	fe010113          	addi	sp,sp,-32
    80002558:	00113c23          	sd	ra,24(sp)
    8000255c:	00813823          	sd	s0,16(sp)
    80002560:	00913423          	sd	s1,8(sp)
    80002564:	01213023          	sd	s2,0(sp)
    80002568:	02010413          	addi	s0,sp,32
    8000256c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002570:	00000913          	li	s2,0
    80002574:	00c0006f          	j	80002580 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002578:	fffff097          	auipc	ra,0xfffff
    8000257c:	db8080e7          	jalr	-584(ra) # 80001330 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002580:	00006797          	auipc	a5,0x6
    80002584:	4f07a783          	lw	a5,1264(a5) # 80008a70 <_ZL9threadEnd>
    80002588:	02079e63          	bnez	a5,800025c4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    8000258c:	0004a583          	lw	a1,0(s1)
    80002590:	0305859b          	addiw	a1,a1,48
    80002594:	0084b503          	ld	a0,8(s1)
    80002598:	00002097          	auipc	ra,0x2
    8000259c:	c38080e7          	jalr	-968(ra) # 800041d0 <_ZN6Buffer3putEi>
        i++;
    800025a0:	0019071b          	addiw	a4,s2,1
    800025a4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800025a8:	0004a683          	lw	a3,0(s1)
    800025ac:	0026979b          	slliw	a5,a3,0x2
    800025b0:	00d787bb          	addw	a5,a5,a3
    800025b4:	0017979b          	slliw	a5,a5,0x1
    800025b8:	02f767bb          	remw	a5,a4,a5
    800025bc:	fc0792e3          	bnez	a5,80002580 <_ZL8producerPv+0x2c>
    800025c0:	fb9ff06f          	j	80002578 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800025c4:	0104b503          	ld	a0,16(s1)
    800025c8:	fffff097          	auipc	ra,0xfffff
    800025cc:	e18080e7          	jalr	-488(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>
}
    800025d0:	01813083          	ld	ra,24(sp)
    800025d4:	01013403          	ld	s0,16(sp)
    800025d8:	00813483          	ld	s1,8(sp)
    800025dc:	00013903          	ld	s2,0(sp)
    800025e0:	02010113          	addi	sp,sp,32
    800025e4:	00008067          	ret

00000000800025e8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800025e8:	fd010113          	addi	sp,sp,-48
    800025ec:	02113423          	sd	ra,40(sp)
    800025f0:	02813023          	sd	s0,32(sp)
    800025f4:	00913c23          	sd	s1,24(sp)
    800025f8:	01213823          	sd	s2,16(sp)
    800025fc:	01313423          	sd	s3,8(sp)
    80002600:	03010413          	addi	s0,sp,48
    80002604:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002608:	00000993          	li	s3,0
    8000260c:	01c0006f          	j	80002628 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	d20080e7          	jalr	-736(ra) # 80001330 <_Z15thread_dispatchv>
    80002618:	0500006f          	j	80002668 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000261c:	00a00513          	li	a0,10
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	e14080e7          	jalr	-492(ra) # 80001434 <_Z4putcc>
    while (!threadEnd) {
    80002628:	00006797          	auipc	a5,0x6
    8000262c:	4487a783          	lw	a5,1096(a5) # 80008a70 <_ZL9threadEnd>
    80002630:	06079063          	bnez	a5,80002690 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002634:	00893503          	ld	a0,8(s2)
    80002638:	00002097          	auipc	ra,0x2
    8000263c:	c28080e7          	jalr	-984(ra) # 80004260 <_ZN6Buffer3getEv>
        i++;
    80002640:	0019849b          	addiw	s1,s3,1
    80002644:	0004899b          	sext.w	s3,s1
        putc(key);
    80002648:	0ff57513          	andi	a0,a0,255
    8000264c:	fffff097          	auipc	ra,0xfffff
    80002650:	de8080e7          	jalr	-536(ra) # 80001434 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002654:	00092703          	lw	a4,0(s2)
    80002658:	0027179b          	slliw	a5,a4,0x2
    8000265c:	00e787bb          	addw	a5,a5,a4
    80002660:	02f4e7bb          	remw	a5,s1,a5
    80002664:	fa0786e3          	beqz	a5,80002610 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002668:	05000793          	li	a5,80
    8000266c:	02f4e4bb          	remw	s1,s1,a5
    80002670:	fa049ce3          	bnez	s1,80002628 <_ZL8consumerPv+0x40>
    80002674:	fa9ff06f          	j	8000261c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002678:	00893503          	ld	a0,8(s2)
    8000267c:	00002097          	auipc	ra,0x2
    80002680:	be4080e7          	jalr	-1052(ra) # 80004260 <_ZN6Buffer3getEv>
        putc(key);
    80002684:	0ff57513          	andi	a0,a0,255
    80002688:	fffff097          	auipc	ra,0xfffff
    8000268c:	dac080e7          	jalr	-596(ra) # 80001434 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002690:	00893503          	ld	a0,8(s2)
    80002694:	00002097          	auipc	ra,0x2
    80002698:	c58080e7          	jalr	-936(ra) # 800042ec <_ZN6Buffer6getCntEv>
    8000269c:	fca04ee3          	bgtz	a0,80002678 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800026a0:	01093503          	ld	a0,16(s2)
    800026a4:	fffff097          	auipc	ra,0xfffff
    800026a8:	d3c080e7          	jalr	-708(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>
}
    800026ac:	02813083          	ld	ra,40(sp)
    800026b0:	02013403          	ld	s0,32(sp)
    800026b4:	01813483          	ld	s1,24(sp)
    800026b8:	01013903          	ld	s2,16(sp)
    800026bc:	00813983          	ld	s3,8(sp)
    800026c0:	03010113          	addi	sp,sp,48
    800026c4:	00008067          	ret

00000000800026c8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800026c8:	f7010113          	addi	sp,sp,-144
    800026cc:	08113423          	sd	ra,136(sp)
    800026d0:	08813023          	sd	s0,128(sp)
    800026d4:	06913c23          	sd	s1,120(sp)
    800026d8:	07213823          	sd	s2,112(sp)
    800026dc:	07313423          	sd	s3,104(sp)
    800026e0:	09010413          	addi	s0,sp,144
    // char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    800026e4:	00005517          	auipc	a0,0x5
    800026e8:	a4c50513          	addi	a0,a0,-1460 # 80007130 <CONSOLE_STATUS+0x120>
    800026ec:	00001097          	auipc	ra,0x1
    800026f0:	158080e7          	jalr	344(ra) # 80003844 <_Z11printStringPKc>
    // getString(input, 30);
    // threadNum = stringToInt(input);
    threadNum = 10;

    printString("Unesite velicinu bafera?\n");
    800026f4:	00005517          	auipc	a0,0x5
    800026f8:	a5c50513          	addi	a0,a0,-1444 # 80007150 <CONSOLE_STATUS+0x140>
    800026fc:	00001097          	auipc	ra,0x1
    80002700:	148080e7          	jalr	328(ra) # 80003844 <_Z11printStringPKc>
    // getString(input, 30);
    // n = stringToInt(input);
    n = 30;

    printString("Broj proizvodjaca "); printInt(threadNum);
    80002704:	00005517          	auipc	a0,0x5
    80002708:	a6c50513          	addi	a0,a0,-1428 # 80007170 <CONSOLE_STATUS+0x160>
    8000270c:	00001097          	auipc	ra,0x1
    80002710:	138080e7          	jalr	312(ra) # 80003844 <_Z11printStringPKc>
    80002714:	00000613          	li	a2,0
    80002718:	00a00593          	li	a1,10
    8000271c:	00a00513          	li	a0,10
    80002720:	00001097          	auipc	ra,0x1
    80002724:	2d4080e7          	jalr	724(ra) # 800039f4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002728:	00005517          	auipc	a0,0x5
    8000272c:	a6050513          	addi	a0,a0,-1440 # 80007188 <CONSOLE_STATUS+0x178>
    80002730:	00001097          	auipc	ra,0x1
    80002734:	114080e7          	jalr	276(ra) # 80003844 <_Z11printStringPKc>
    80002738:	00000613          	li	a2,0
    8000273c:	00a00593          	li	a1,10
    80002740:	01e00513          	li	a0,30
    80002744:	00001097          	auipc	ra,0x1
    80002748:	2b0080e7          	jalr	688(ra) # 800039f4 <_Z8printIntiii>
    printString(".\n");
    8000274c:	00005517          	auipc	a0,0x5
    80002750:	a5450513          	addi	a0,a0,-1452 # 800071a0 <CONSOLE_STATUS+0x190>
    80002754:	00001097          	auipc	ra,0x1
    80002758:	0f0080e7          	jalr	240(ra) # 80003844 <_Z11printStringPKc>
    } else if (threadNum < 1) {
        printString("Broj proizvodjaca mora biti veci od nula!\n");
        return;
    }

    Buffer *buffer = new Buffer(n);
    8000275c:	03800513          	li	a0,56
    80002760:	fffff097          	auipc	ra,0xfffff
    80002764:	2c4080e7          	jalr	708(ra) # 80001a24 <_Znwm>
    80002768:	00050993          	mv	s3,a0
    8000276c:	01e00593          	li	a1,30
    80002770:	00002097          	auipc	ra,0x2
    80002774:	9c4080e7          	jalr	-1596(ra) # 80004134 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80002778:	00000593          	li	a1,0
    8000277c:	00006517          	auipc	a0,0x6
    80002780:	2fc50513          	addi	a0,a0,764 # 80008a78 <_ZL10waitForAll>
    80002784:	fffff097          	auipc	ra,0xfffff
    80002788:	bcc080e7          	jalr	-1076(ra) # 80001350 <_Z8sem_openPP10KSemaphorej>

    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    8000278c:	ef010113          	addi	sp,sp,-272
    80002790:	00010913          	mv	s2,sp

    data[threadNum].id = threadNum;
    80002794:	00a00793          	li	a5,10
    80002798:	0ef92823          	sw	a5,240(s2)
    data[threadNum].buffer = buffer;
    8000279c:	0f393c23          	sd	s3,248(s2)
    data[threadNum].wait = waitForAll;
    800027a0:	00006797          	auipc	a5,0x6
    800027a4:	2d87b783          	ld	a5,728(a5) # 80008a78 <_ZL10waitForAll>
    800027a8:	10f93023          	sd	a5,256(s2)
    thread_create(&consumerThread, consumer, data + threadNum);
    800027ac:	0f090613          	addi	a2,s2,240
    800027b0:	00000597          	auipc	a1,0x0
    800027b4:	e3858593          	addi	a1,a1,-456 # 800025e8 <_ZL8consumerPv>
    800027b8:	fc840513          	addi	a0,s0,-56
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	aa0080e7          	jalr	-1376(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>

    for (int i = 0; i < threadNum; i++) {
    800027c4:	00000493          	li	s1,0
    800027c8:	00900793          	li	a5,9
    800027cc:	0697c863          	blt	a5,s1,8000283c <_Z22producerConsumer_C_APIv+0x174>
        data[i].id = i;
    800027d0:	00149793          	slli	a5,s1,0x1
    800027d4:	009787b3          	add	a5,a5,s1
    800027d8:	00379793          	slli	a5,a5,0x3
    800027dc:	00f907b3          	add	a5,s2,a5
    800027e0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800027e4:	0137b423          	sd	s3,8(a5)
        data[i].wait = waitForAll;
    800027e8:	00006717          	auipc	a4,0x6
    800027ec:	29073703          	ld	a4,656(a4) # 80008a78 <_ZL10waitForAll>
    800027f0:	00e7b823          	sd	a4,16(a5)

        thread_create(threads + i,
    800027f4:	00048713          	mv	a4,s1
    800027f8:	00349513          	slli	a0,s1,0x3
    800027fc:	f7840793          	addi	a5,s0,-136
    80002800:	00a78533          	add	a0,a5,a0
    80002804:	02905663          	blez	s1,80002830 <_Z22producerConsumer_C_APIv+0x168>
    80002808:	00000597          	auipc	a1,0x0
    8000280c:	d4c58593          	addi	a1,a1,-692 # 80002554 <_ZL8producerPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80002810:	00171613          	slli	a2,a4,0x1
    80002814:	00e60633          	add	a2,a2,a4
    80002818:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000281c:	00c90633          	add	a2,s2,a2
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	a3c080e7          	jalr	-1476(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002828:	0014849b          	addiw	s1,s1,1
    8000282c:	f9dff06f          	j	800027c8 <_Z22producerConsumer_C_APIv+0x100>
        thread_create(threads + i,
    80002830:	00000597          	auipc	a1,0x0
    80002834:	c7458593          	addi	a1,a1,-908 # 800024a4 <_ZL16producerKeyboardPv>
    80002838:	fd9ff06f          	j	80002810 <_Z22producerConsumer_C_APIv+0x148>
    }

    thread_dispatch();
    8000283c:	fffff097          	auipc	ra,0xfffff
    80002840:	af4080e7          	jalr	-1292(ra) # 80001330 <_Z15thread_dispatchv>

    for (int i = 0; i <= threadNum; i++) {
    80002844:	00000493          	li	s1,0
    80002848:	0180006f          	j	80002860 <_Z22producerConsumer_C_APIv+0x198>
        sem_wait(waitForAll);
    8000284c:	00006517          	auipc	a0,0x6
    80002850:	22c53503          	ld	a0,556(a0) # 80008a78 <_ZL10waitForAll>
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	b60080e7          	jalr	-1184(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>
    for (int i = 0; i <= threadNum; i++) {
    8000285c:	0014849b          	addiw	s1,s1,1
    80002860:	00a00793          	li	a5,10
    80002864:	fe97d4e3          	bge	a5,s1,8000284c <_Z22producerConsumer_C_APIv+0x184>
    }

    sem_close(waitForAll);
    80002868:	00006517          	auipc	a0,0x6
    8000286c:	21053503          	ld	a0,528(a0) # 80008a78 <_ZL10waitForAll>
    80002870:	fffff097          	auipc	ra,0xfffff
    80002874:	b18080e7          	jalr	-1256(ra) # 80001388 <_Z9sem_closeP10KSemaphore>

    delete buffer;
    80002878:	00098e63          	beqz	s3,80002894 <_Z22producerConsumer_C_APIv+0x1cc>
    8000287c:	00098513          	mv	a0,s3
    80002880:	00002097          	auipc	ra,0x2
    80002884:	af4080e7          	jalr	-1292(ra) # 80004374 <_ZN6BufferD1Ev>
    80002888:	00098513          	mv	a0,s3
    8000288c:	fffff097          	auipc	ra,0xfffff
    80002890:	1c0080e7          	jalr	448(ra) # 80001a4c <_ZdlPv>

}
    80002894:	f7040113          	addi	sp,s0,-144
    80002898:	08813083          	ld	ra,136(sp)
    8000289c:	08013403          	ld	s0,128(sp)
    800028a0:	07813483          	ld	s1,120(sp)
    800028a4:	07013903          	ld	s2,112(sp)
    800028a8:	06813983          	ld	s3,104(sp)
    800028ac:	09010113          	addi	sp,sp,144
    800028b0:	00008067          	ret
    800028b4:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800028b8:	00098513          	mv	a0,s3
    800028bc:	fffff097          	auipc	ra,0xfffff
    800028c0:	190080e7          	jalr	400(ra) # 80001a4c <_ZdlPv>
    800028c4:	00048513          	mv	a0,s1
    800028c8:	00007097          	auipc	ra,0x7
    800028cc:	2a0080e7          	jalr	672(ra) # 80009b68 <_Unwind_Resume>

00000000800028d0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800028d0:	fe010113          	addi	sp,sp,-32
    800028d4:	00113c23          	sd	ra,24(sp)
    800028d8:	00813823          	sd	s0,16(sp)
    800028dc:	00913423          	sd	s1,8(sp)
    800028e0:	01213023          	sd	s2,0(sp)
    800028e4:	02010413          	addi	s0,sp,32
    800028e8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800028ec:	00100793          	li	a5,1
    800028f0:	02a7f863          	bgeu	a5,a0,80002920 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800028f4:	00a00793          	li	a5,10
    800028f8:	02f577b3          	remu	a5,a0,a5
    800028fc:	02078e63          	beqz	a5,80002938 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002900:	fff48513          	addi	a0,s1,-1
    80002904:	00000097          	auipc	ra,0x0
    80002908:	fcc080e7          	jalr	-52(ra) # 800028d0 <_ZL9fibonaccim>
    8000290c:	00050913          	mv	s2,a0
    80002910:	ffe48513          	addi	a0,s1,-2
    80002914:	00000097          	auipc	ra,0x0
    80002918:	fbc080e7          	jalr	-68(ra) # 800028d0 <_ZL9fibonaccim>
    8000291c:	00a90533          	add	a0,s2,a0
}
    80002920:	01813083          	ld	ra,24(sp)
    80002924:	01013403          	ld	s0,16(sp)
    80002928:	00813483          	ld	s1,8(sp)
    8000292c:	00013903          	ld	s2,0(sp)
    80002930:	02010113          	addi	sp,sp,32
    80002934:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002938:	fffff097          	auipc	ra,0xfffff
    8000293c:	9f8080e7          	jalr	-1544(ra) # 80001330 <_Z15thread_dispatchv>
    80002940:	fc1ff06f          	j	80002900 <_ZL9fibonaccim+0x30>

0000000080002944 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002944:	fe010113          	addi	sp,sp,-32
    80002948:	00113c23          	sd	ra,24(sp)
    8000294c:	00813823          	sd	s0,16(sp)
    80002950:	00913423          	sd	s1,8(sp)
    80002954:	01213023          	sd	s2,0(sp)
    80002958:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000295c:	00000913          	li	s2,0
    80002960:	0380006f          	j	80002998 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002964:	fffff097          	auipc	ra,0xfffff
    80002968:	9cc080e7          	jalr	-1588(ra) # 80001330 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000296c:	00148493          	addi	s1,s1,1
    80002970:	000027b7          	lui	a5,0x2
    80002974:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002978:	0097ee63          	bltu	a5,s1,80002994 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000297c:	00000713          	li	a4,0
    80002980:	000077b7          	lui	a5,0x7
    80002984:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002988:	fce7eee3          	bltu	a5,a4,80002964 <_ZN7WorkerA11workerBodyAEPv+0x20>
    8000298c:	00170713          	addi	a4,a4,1
    80002990:	ff1ff06f          	j	80002980 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002994:	00190913          	addi	s2,s2,1
    80002998:	00900793          	li	a5,9
    8000299c:	0527e063          	bltu	a5,s2,800029dc <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800029a0:	00005517          	auipc	a0,0x5
    800029a4:	80850513          	addi	a0,a0,-2040 # 800071a8 <CONSOLE_STATUS+0x198>
    800029a8:	00001097          	auipc	ra,0x1
    800029ac:	e9c080e7          	jalr	-356(ra) # 80003844 <_Z11printStringPKc>
    800029b0:	00000613          	li	a2,0
    800029b4:	00a00593          	li	a1,10
    800029b8:	0009051b          	sext.w	a0,s2
    800029bc:	00001097          	auipc	ra,0x1
    800029c0:	038080e7          	jalr	56(ra) # 800039f4 <_Z8printIntiii>
    800029c4:	00004517          	auipc	a0,0x4
    800029c8:	7a450513          	addi	a0,a0,1956 # 80007168 <CONSOLE_STATUS+0x158>
    800029cc:	00001097          	auipc	ra,0x1
    800029d0:	e78080e7          	jalr	-392(ra) # 80003844 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800029d4:	00000493          	li	s1,0
    800029d8:	f99ff06f          	j	80002970 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800029dc:	00004517          	auipc	a0,0x4
    800029e0:	7d450513          	addi	a0,a0,2004 # 800071b0 <CONSOLE_STATUS+0x1a0>
    800029e4:	00001097          	auipc	ra,0x1
    800029e8:	e60080e7          	jalr	-416(ra) # 80003844 <_Z11printStringPKc>
    finishedA = true;
    800029ec:	00100793          	li	a5,1
    800029f0:	00006717          	auipc	a4,0x6
    800029f4:	08f70823          	sb	a5,144(a4) # 80008a80 <_ZL9finishedA>
}
    800029f8:	01813083          	ld	ra,24(sp)
    800029fc:	01013403          	ld	s0,16(sp)
    80002a00:	00813483          	ld	s1,8(sp)
    80002a04:	00013903          	ld	s2,0(sp)
    80002a08:	02010113          	addi	sp,sp,32
    80002a0c:	00008067          	ret

0000000080002a10 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002a10:	fe010113          	addi	sp,sp,-32
    80002a14:	00113c23          	sd	ra,24(sp)
    80002a18:	00813823          	sd	s0,16(sp)
    80002a1c:	00913423          	sd	s1,8(sp)
    80002a20:	01213023          	sd	s2,0(sp)
    80002a24:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002a28:	00000913          	li	s2,0
    80002a2c:	0380006f          	j	80002a64 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	900080e7          	jalr	-1792(ra) # 80001330 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a38:	00148493          	addi	s1,s1,1
    80002a3c:	000027b7          	lui	a5,0x2
    80002a40:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002a44:	0097ee63          	bltu	a5,s1,80002a60 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002a48:	00000713          	li	a4,0
    80002a4c:	000077b7          	lui	a5,0x7
    80002a50:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002a54:	fce7eee3          	bltu	a5,a4,80002a30 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002a58:	00170713          	addi	a4,a4,1
    80002a5c:	ff1ff06f          	j	80002a4c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002a60:	00190913          	addi	s2,s2,1
    80002a64:	00f00793          	li	a5,15
    80002a68:	0527e063          	bltu	a5,s2,80002aa8 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002a6c:	00004517          	auipc	a0,0x4
    80002a70:	75450513          	addi	a0,a0,1876 # 800071c0 <CONSOLE_STATUS+0x1b0>
    80002a74:	00001097          	auipc	ra,0x1
    80002a78:	dd0080e7          	jalr	-560(ra) # 80003844 <_Z11printStringPKc>
    80002a7c:	00000613          	li	a2,0
    80002a80:	00a00593          	li	a1,10
    80002a84:	0009051b          	sext.w	a0,s2
    80002a88:	00001097          	auipc	ra,0x1
    80002a8c:	f6c080e7          	jalr	-148(ra) # 800039f4 <_Z8printIntiii>
    80002a90:	00004517          	auipc	a0,0x4
    80002a94:	6d850513          	addi	a0,a0,1752 # 80007168 <CONSOLE_STATUS+0x158>
    80002a98:	00001097          	auipc	ra,0x1
    80002a9c:	dac080e7          	jalr	-596(ra) # 80003844 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002aa0:	00000493          	li	s1,0
    80002aa4:	f99ff06f          	j	80002a3c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002aa8:	00004517          	auipc	a0,0x4
    80002aac:	72050513          	addi	a0,a0,1824 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80002ab0:	00001097          	auipc	ra,0x1
    80002ab4:	d94080e7          	jalr	-620(ra) # 80003844 <_Z11printStringPKc>
    finishedB = true;
    80002ab8:	00100793          	li	a5,1
    80002abc:	00006717          	auipc	a4,0x6
    80002ac0:	fcf702a3          	sb	a5,-59(a4) # 80008a81 <_ZL9finishedB>
    thread_dispatch();
    80002ac4:	fffff097          	auipc	ra,0xfffff
    80002ac8:	86c080e7          	jalr	-1940(ra) # 80001330 <_Z15thread_dispatchv>
}
    80002acc:	01813083          	ld	ra,24(sp)
    80002ad0:	01013403          	ld	s0,16(sp)
    80002ad4:	00813483          	ld	s1,8(sp)
    80002ad8:	00013903          	ld	s2,0(sp)
    80002adc:	02010113          	addi	sp,sp,32
    80002ae0:	00008067          	ret

0000000080002ae4 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002ae4:	fe010113          	addi	sp,sp,-32
    80002ae8:	00113c23          	sd	ra,24(sp)
    80002aec:	00813823          	sd	s0,16(sp)
    80002af0:	00913423          	sd	s1,8(sp)
    80002af4:	01213023          	sd	s2,0(sp)
    80002af8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002afc:	00000493          	li	s1,0
    80002b00:	0400006f          	j	80002b40 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002b04:	00004517          	auipc	a0,0x4
    80002b08:	6d450513          	addi	a0,a0,1748 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80002b0c:	00001097          	auipc	ra,0x1
    80002b10:	d38080e7          	jalr	-712(ra) # 80003844 <_Z11printStringPKc>
    80002b14:	00000613          	li	a2,0
    80002b18:	00a00593          	li	a1,10
    80002b1c:	00048513          	mv	a0,s1
    80002b20:	00001097          	auipc	ra,0x1
    80002b24:	ed4080e7          	jalr	-300(ra) # 800039f4 <_Z8printIntiii>
    80002b28:	00004517          	auipc	a0,0x4
    80002b2c:	64050513          	addi	a0,a0,1600 # 80007168 <CONSOLE_STATUS+0x158>
    80002b30:	00001097          	auipc	ra,0x1
    80002b34:	d14080e7          	jalr	-748(ra) # 80003844 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002b38:	0014849b          	addiw	s1,s1,1
    80002b3c:	0ff4f493          	andi	s1,s1,255
    80002b40:	00200793          	li	a5,2
    80002b44:	fc97f0e3          	bgeu	a5,s1,80002b04 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002b48:	00004517          	auipc	a0,0x4
    80002b4c:	69850513          	addi	a0,a0,1688 # 800071e0 <CONSOLE_STATUS+0x1d0>
    80002b50:	00001097          	auipc	ra,0x1
    80002b54:	cf4080e7          	jalr	-780(ra) # 80003844 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002b58:	00700313          	li	t1,7
    thread_dispatch();
    80002b5c:	ffffe097          	auipc	ra,0xffffe
    80002b60:	7d4080e7          	jalr	2004(ra) # 80001330 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002b64:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002b68:	00004517          	auipc	a0,0x4
    80002b6c:	68850513          	addi	a0,a0,1672 # 800071f0 <CONSOLE_STATUS+0x1e0>
    80002b70:	00001097          	auipc	ra,0x1
    80002b74:	cd4080e7          	jalr	-812(ra) # 80003844 <_Z11printStringPKc>
    80002b78:	00000613          	li	a2,0
    80002b7c:	00a00593          	li	a1,10
    80002b80:	0009051b          	sext.w	a0,s2
    80002b84:	00001097          	auipc	ra,0x1
    80002b88:	e70080e7          	jalr	-400(ra) # 800039f4 <_Z8printIntiii>
    80002b8c:	00004517          	auipc	a0,0x4
    80002b90:	5dc50513          	addi	a0,a0,1500 # 80007168 <CONSOLE_STATUS+0x158>
    80002b94:	00001097          	auipc	ra,0x1
    80002b98:	cb0080e7          	jalr	-848(ra) # 80003844 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002b9c:	00c00513          	li	a0,12
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	d30080e7          	jalr	-720(ra) # 800028d0 <_ZL9fibonaccim>
    80002ba8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002bac:	00004517          	auipc	a0,0x4
    80002bb0:	64c50513          	addi	a0,a0,1612 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80002bb4:	00001097          	auipc	ra,0x1
    80002bb8:	c90080e7          	jalr	-880(ra) # 80003844 <_Z11printStringPKc>
    80002bbc:	00000613          	li	a2,0
    80002bc0:	00a00593          	li	a1,10
    80002bc4:	0009051b          	sext.w	a0,s2
    80002bc8:	00001097          	auipc	ra,0x1
    80002bcc:	e2c080e7          	jalr	-468(ra) # 800039f4 <_Z8printIntiii>
    80002bd0:	00004517          	auipc	a0,0x4
    80002bd4:	59850513          	addi	a0,a0,1432 # 80007168 <CONSOLE_STATUS+0x158>
    80002bd8:	00001097          	auipc	ra,0x1
    80002bdc:	c6c080e7          	jalr	-916(ra) # 80003844 <_Z11printStringPKc>
    80002be0:	0400006f          	j	80002c20 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002be4:	00004517          	auipc	a0,0x4
    80002be8:	5f450513          	addi	a0,a0,1524 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80002bec:	00001097          	auipc	ra,0x1
    80002bf0:	c58080e7          	jalr	-936(ra) # 80003844 <_Z11printStringPKc>
    80002bf4:	00000613          	li	a2,0
    80002bf8:	00a00593          	li	a1,10
    80002bfc:	00048513          	mv	a0,s1
    80002c00:	00001097          	auipc	ra,0x1
    80002c04:	df4080e7          	jalr	-524(ra) # 800039f4 <_Z8printIntiii>
    80002c08:	00004517          	auipc	a0,0x4
    80002c0c:	56050513          	addi	a0,a0,1376 # 80007168 <CONSOLE_STATUS+0x158>
    80002c10:	00001097          	auipc	ra,0x1
    80002c14:	c34080e7          	jalr	-972(ra) # 80003844 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002c18:	0014849b          	addiw	s1,s1,1
    80002c1c:	0ff4f493          	andi	s1,s1,255
    80002c20:	00500793          	li	a5,5
    80002c24:	fc97f0e3          	bgeu	a5,s1,80002be4 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002c28:	00004517          	auipc	a0,0x4
    80002c2c:	58850513          	addi	a0,a0,1416 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80002c30:	00001097          	auipc	ra,0x1
    80002c34:	c14080e7          	jalr	-1004(ra) # 80003844 <_Z11printStringPKc>
    finishedC = true;
    80002c38:	00100793          	li	a5,1
    80002c3c:	00006717          	auipc	a4,0x6
    80002c40:	e4f70323          	sb	a5,-442(a4) # 80008a82 <_ZL9finishedC>
    thread_dispatch();
    80002c44:	ffffe097          	auipc	ra,0xffffe
    80002c48:	6ec080e7          	jalr	1772(ra) # 80001330 <_Z15thread_dispatchv>
}
    80002c4c:	01813083          	ld	ra,24(sp)
    80002c50:	01013403          	ld	s0,16(sp)
    80002c54:	00813483          	ld	s1,8(sp)
    80002c58:	00013903          	ld	s2,0(sp)
    80002c5c:	02010113          	addi	sp,sp,32
    80002c60:	00008067          	ret

0000000080002c64 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002c64:	fe010113          	addi	sp,sp,-32
    80002c68:	00113c23          	sd	ra,24(sp)
    80002c6c:	00813823          	sd	s0,16(sp)
    80002c70:	00913423          	sd	s1,8(sp)
    80002c74:	01213023          	sd	s2,0(sp)
    80002c78:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002c7c:	00a00493          	li	s1,10
    80002c80:	0400006f          	j	80002cc0 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002c84:	00004517          	auipc	a0,0x4
    80002c88:	58450513          	addi	a0,a0,1412 # 80007208 <CONSOLE_STATUS+0x1f8>
    80002c8c:	00001097          	auipc	ra,0x1
    80002c90:	bb8080e7          	jalr	-1096(ra) # 80003844 <_Z11printStringPKc>
    80002c94:	00000613          	li	a2,0
    80002c98:	00a00593          	li	a1,10
    80002c9c:	00048513          	mv	a0,s1
    80002ca0:	00001097          	auipc	ra,0x1
    80002ca4:	d54080e7          	jalr	-684(ra) # 800039f4 <_Z8printIntiii>
    80002ca8:	00004517          	auipc	a0,0x4
    80002cac:	4c050513          	addi	a0,a0,1216 # 80007168 <CONSOLE_STATUS+0x158>
    80002cb0:	00001097          	auipc	ra,0x1
    80002cb4:	b94080e7          	jalr	-1132(ra) # 80003844 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002cb8:	0014849b          	addiw	s1,s1,1
    80002cbc:	0ff4f493          	andi	s1,s1,255
    80002cc0:	00c00793          	li	a5,12
    80002cc4:	fc97f0e3          	bgeu	a5,s1,80002c84 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002cc8:	00004517          	auipc	a0,0x4
    80002ccc:	54850513          	addi	a0,a0,1352 # 80007210 <CONSOLE_STATUS+0x200>
    80002cd0:	00001097          	auipc	ra,0x1
    80002cd4:	b74080e7          	jalr	-1164(ra) # 80003844 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002cd8:	00500313          	li	t1,5
    thread_dispatch();
    80002cdc:	ffffe097          	auipc	ra,0xffffe
    80002ce0:	654080e7          	jalr	1620(ra) # 80001330 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002ce4:	01000513          	li	a0,16
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	be8080e7          	jalr	-1048(ra) # 800028d0 <_ZL9fibonaccim>
    80002cf0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002cf4:	00004517          	auipc	a0,0x4
    80002cf8:	52c50513          	addi	a0,a0,1324 # 80007220 <CONSOLE_STATUS+0x210>
    80002cfc:	00001097          	auipc	ra,0x1
    80002d00:	b48080e7          	jalr	-1208(ra) # 80003844 <_Z11printStringPKc>
    80002d04:	00000613          	li	a2,0
    80002d08:	00a00593          	li	a1,10
    80002d0c:	0009051b          	sext.w	a0,s2
    80002d10:	00001097          	auipc	ra,0x1
    80002d14:	ce4080e7          	jalr	-796(ra) # 800039f4 <_Z8printIntiii>
    80002d18:	00004517          	auipc	a0,0x4
    80002d1c:	45050513          	addi	a0,a0,1104 # 80007168 <CONSOLE_STATUS+0x158>
    80002d20:	00001097          	auipc	ra,0x1
    80002d24:	b24080e7          	jalr	-1244(ra) # 80003844 <_Z11printStringPKc>
    80002d28:	0400006f          	j	80002d68 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002d2c:	00004517          	auipc	a0,0x4
    80002d30:	4dc50513          	addi	a0,a0,1244 # 80007208 <CONSOLE_STATUS+0x1f8>
    80002d34:	00001097          	auipc	ra,0x1
    80002d38:	b10080e7          	jalr	-1264(ra) # 80003844 <_Z11printStringPKc>
    80002d3c:	00000613          	li	a2,0
    80002d40:	00a00593          	li	a1,10
    80002d44:	00048513          	mv	a0,s1
    80002d48:	00001097          	auipc	ra,0x1
    80002d4c:	cac080e7          	jalr	-852(ra) # 800039f4 <_Z8printIntiii>
    80002d50:	00004517          	auipc	a0,0x4
    80002d54:	41850513          	addi	a0,a0,1048 # 80007168 <CONSOLE_STATUS+0x158>
    80002d58:	00001097          	auipc	ra,0x1
    80002d5c:	aec080e7          	jalr	-1300(ra) # 80003844 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002d60:	0014849b          	addiw	s1,s1,1
    80002d64:	0ff4f493          	andi	s1,s1,255
    80002d68:	00f00793          	li	a5,15
    80002d6c:	fc97f0e3          	bgeu	a5,s1,80002d2c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002d70:	00004517          	auipc	a0,0x4
    80002d74:	4c050513          	addi	a0,a0,1216 # 80007230 <CONSOLE_STATUS+0x220>
    80002d78:	00001097          	auipc	ra,0x1
    80002d7c:	acc080e7          	jalr	-1332(ra) # 80003844 <_Z11printStringPKc>
    finishedD = true;
    80002d80:	00100793          	li	a5,1
    80002d84:	00006717          	auipc	a4,0x6
    80002d88:	cef70fa3          	sb	a5,-769(a4) # 80008a83 <_ZL9finishedD>
    thread_dispatch();
    80002d8c:	ffffe097          	auipc	ra,0xffffe
    80002d90:	5a4080e7          	jalr	1444(ra) # 80001330 <_Z15thread_dispatchv>
}
    80002d94:	01813083          	ld	ra,24(sp)
    80002d98:	01013403          	ld	s0,16(sp)
    80002d9c:	00813483          	ld	s1,8(sp)
    80002da0:	00013903          	ld	s2,0(sp)
    80002da4:	02010113          	addi	sp,sp,32
    80002da8:	00008067          	ret

0000000080002dac <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002dac:	fc010113          	addi	sp,sp,-64
    80002db0:	02113c23          	sd	ra,56(sp)
    80002db4:	02813823          	sd	s0,48(sp)
    80002db8:	02913423          	sd	s1,40(sp)
    80002dbc:	03213023          	sd	s2,32(sp)
    80002dc0:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002dc4:	02000513          	li	a0,32
    80002dc8:	fffff097          	auipc	ra,0xfffff
    80002dcc:	c5c080e7          	jalr	-932(ra) # 80001a24 <_Znwm>
    80002dd0:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002dd4:	fffff097          	auipc	ra,0xfffff
    80002dd8:	da0080e7          	jalr	-608(ra) # 80001b74 <_ZN6ThreadC1Ev>
    80002ddc:	00006797          	auipc	a5,0x6
    80002de0:	b4478793          	addi	a5,a5,-1212 # 80008920 <_ZTV7WorkerA+0x10>
    80002de4:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002de8:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002dec:	00004517          	auipc	a0,0x4
    80002df0:	45450513          	addi	a0,a0,1108 # 80007240 <CONSOLE_STATUS+0x230>
    80002df4:	00001097          	auipc	ra,0x1
    80002df8:	a50080e7          	jalr	-1456(ra) # 80003844 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002dfc:	02000513          	li	a0,32
    80002e00:	fffff097          	auipc	ra,0xfffff
    80002e04:	c24080e7          	jalr	-988(ra) # 80001a24 <_Znwm>
    80002e08:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002e0c:	fffff097          	auipc	ra,0xfffff
    80002e10:	d68080e7          	jalr	-664(ra) # 80001b74 <_ZN6ThreadC1Ev>
    80002e14:	00006797          	auipc	a5,0x6
    80002e18:	b3478793          	addi	a5,a5,-1228 # 80008948 <_ZTV7WorkerB+0x10>
    80002e1c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002e20:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002e24:	00004517          	auipc	a0,0x4
    80002e28:	43450513          	addi	a0,a0,1076 # 80007258 <CONSOLE_STATUS+0x248>
    80002e2c:	00001097          	auipc	ra,0x1
    80002e30:	a18080e7          	jalr	-1512(ra) # 80003844 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002e34:	02000513          	li	a0,32
    80002e38:	fffff097          	auipc	ra,0xfffff
    80002e3c:	bec080e7          	jalr	-1044(ra) # 80001a24 <_Znwm>
    80002e40:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002e44:	fffff097          	auipc	ra,0xfffff
    80002e48:	d30080e7          	jalr	-720(ra) # 80001b74 <_ZN6ThreadC1Ev>
    80002e4c:	00006797          	auipc	a5,0x6
    80002e50:	b2478793          	addi	a5,a5,-1244 # 80008970 <_ZTV7WorkerC+0x10>
    80002e54:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002e58:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002e5c:	00004517          	auipc	a0,0x4
    80002e60:	41450513          	addi	a0,a0,1044 # 80007270 <CONSOLE_STATUS+0x260>
    80002e64:	00001097          	auipc	ra,0x1
    80002e68:	9e0080e7          	jalr	-1568(ra) # 80003844 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002e6c:	02000513          	li	a0,32
    80002e70:	fffff097          	auipc	ra,0xfffff
    80002e74:	bb4080e7          	jalr	-1100(ra) # 80001a24 <_Znwm>
    80002e78:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002e7c:	fffff097          	auipc	ra,0xfffff
    80002e80:	cf8080e7          	jalr	-776(ra) # 80001b74 <_ZN6ThreadC1Ev>
    80002e84:	00006797          	auipc	a5,0x6
    80002e88:	b1478793          	addi	a5,a5,-1260 # 80008998 <_ZTV7WorkerD+0x10>
    80002e8c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002e90:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002e94:	00004517          	auipc	a0,0x4
    80002e98:	3f450513          	addi	a0,a0,1012 # 80007288 <CONSOLE_STATUS+0x278>
    80002e9c:	00001097          	auipc	ra,0x1
    80002ea0:	9a8080e7          	jalr	-1624(ra) # 80003844 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002ea4:	00000493          	li	s1,0
    80002ea8:	00300793          	li	a5,3
    80002eac:	0297c663          	blt	a5,s1,80002ed8 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002eb0:	00349793          	slli	a5,s1,0x3
    80002eb4:	fe040713          	addi	a4,s0,-32
    80002eb8:	00f707b3          	add	a5,a4,a5
    80002ebc:	fe07b503          	ld	a0,-32(a5)
    80002ec0:	fffff097          	auipc	ra,0xfffff
    80002ec4:	ce4080e7          	jalr	-796(ra) # 80001ba4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002ec8:	0014849b          	addiw	s1,s1,1
    80002ecc:	fddff06f          	j	80002ea8 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002ed0:	fffff097          	auipc	ra,0xfffff
    80002ed4:	d28080e7          	jalr	-728(ra) # 80001bf8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002ed8:	00006797          	auipc	a5,0x6
    80002edc:	ba87c783          	lbu	a5,-1112(a5) # 80008a80 <_ZL9finishedA>
    80002ee0:	fe0788e3          	beqz	a5,80002ed0 <_Z20Threads_CPP_API_testv+0x124>
    80002ee4:	00006797          	auipc	a5,0x6
    80002ee8:	b9d7c783          	lbu	a5,-1123(a5) # 80008a81 <_ZL9finishedB>
    80002eec:	fe0782e3          	beqz	a5,80002ed0 <_Z20Threads_CPP_API_testv+0x124>
    80002ef0:	00006797          	auipc	a5,0x6
    80002ef4:	b927c783          	lbu	a5,-1134(a5) # 80008a82 <_ZL9finishedC>
    80002ef8:	fc078ce3          	beqz	a5,80002ed0 <_Z20Threads_CPP_API_testv+0x124>
    80002efc:	00006797          	auipc	a5,0x6
    80002f00:	b877c783          	lbu	a5,-1145(a5) # 80008a83 <_ZL9finishedD>
    80002f04:	fc0786e3          	beqz	a5,80002ed0 <_Z20Threads_CPP_API_testv+0x124>
    80002f08:	fc040493          	addi	s1,s0,-64
    80002f0c:	0080006f          	j	80002f14 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002f10:	00848493          	addi	s1,s1,8
    80002f14:	fe040793          	addi	a5,s0,-32
    80002f18:	08f48663          	beq	s1,a5,80002fa4 <_Z20Threads_CPP_API_testv+0x1f8>
    80002f1c:	0004b503          	ld	a0,0(s1)
    80002f20:	fe0508e3          	beqz	a0,80002f10 <_Z20Threads_CPP_API_testv+0x164>
    80002f24:	00053783          	ld	a5,0(a0)
    80002f28:	0087b783          	ld	a5,8(a5)
    80002f2c:	000780e7          	jalr	a5
    80002f30:	fe1ff06f          	j	80002f10 <_Z20Threads_CPP_API_testv+0x164>
    80002f34:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002f38:	00048513          	mv	a0,s1
    80002f3c:	fffff097          	auipc	ra,0xfffff
    80002f40:	b10080e7          	jalr	-1264(ra) # 80001a4c <_ZdlPv>
    80002f44:	00090513          	mv	a0,s2
    80002f48:	00007097          	auipc	ra,0x7
    80002f4c:	c20080e7          	jalr	-992(ra) # 80009b68 <_Unwind_Resume>
    80002f50:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002f54:	00048513          	mv	a0,s1
    80002f58:	fffff097          	auipc	ra,0xfffff
    80002f5c:	af4080e7          	jalr	-1292(ra) # 80001a4c <_ZdlPv>
    80002f60:	00090513          	mv	a0,s2
    80002f64:	00007097          	auipc	ra,0x7
    80002f68:	c04080e7          	jalr	-1020(ra) # 80009b68 <_Unwind_Resume>
    80002f6c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002f70:	00048513          	mv	a0,s1
    80002f74:	fffff097          	auipc	ra,0xfffff
    80002f78:	ad8080e7          	jalr	-1320(ra) # 80001a4c <_ZdlPv>
    80002f7c:	00090513          	mv	a0,s2
    80002f80:	00007097          	auipc	ra,0x7
    80002f84:	be8080e7          	jalr	-1048(ra) # 80009b68 <_Unwind_Resume>
    80002f88:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002f8c:	00048513          	mv	a0,s1
    80002f90:	fffff097          	auipc	ra,0xfffff
    80002f94:	abc080e7          	jalr	-1348(ra) # 80001a4c <_ZdlPv>
    80002f98:	00090513          	mv	a0,s2
    80002f9c:	00007097          	auipc	ra,0x7
    80002fa0:	bcc080e7          	jalr	-1076(ra) # 80009b68 <_Unwind_Resume>
}
    80002fa4:	03813083          	ld	ra,56(sp)
    80002fa8:	03013403          	ld	s0,48(sp)
    80002fac:	02813483          	ld	s1,40(sp)
    80002fb0:	02013903          	ld	s2,32(sp)
    80002fb4:	04010113          	addi	sp,sp,64
    80002fb8:	00008067          	ret

0000000080002fbc <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002fbc:	ff010113          	addi	sp,sp,-16
    80002fc0:	00113423          	sd	ra,8(sp)
    80002fc4:	00813023          	sd	s0,0(sp)
    80002fc8:	01010413          	addi	s0,sp,16
    80002fcc:	00006797          	auipc	a5,0x6
    80002fd0:	95478793          	addi	a5,a5,-1708 # 80008920 <_ZTV7WorkerA+0x10>
    80002fd4:	00f53023          	sd	a5,0(a0)
    80002fd8:	fffff097          	auipc	ra,0xfffff
    80002fdc:	9a0080e7          	jalr	-1632(ra) # 80001978 <_ZN6ThreadD1Ev>
    80002fe0:	00813083          	ld	ra,8(sp)
    80002fe4:	00013403          	ld	s0,0(sp)
    80002fe8:	01010113          	addi	sp,sp,16
    80002fec:	00008067          	ret

0000000080002ff0 <_ZN7WorkerAD0Ev>:
    80002ff0:	fe010113          	addi	sp,sp,-32
    80002ff4:	00113c23          	sd	ra,24(sp)
    80002ff8:	00813823          	sd	s0,16(sp)
    80002ffc:	00913423          	sd	s1,8(sp)
    80003000:	02010413          	addi	s0,sp,32
    80003004:	00050493          	mv	s1,a0
    80003008:	00006797          	auipc	a5,0x6
    8000300c:	91878793          	addi	a5,a5,-1768 # 80008920 <_ZTV7WorkerA+0x10>
    80003010:	00f53023          	sd	a5,0(a0)
    80003014:	fffff097          	auipc	ra,0xfffff
    80003018:	964080e7          	jalr	-1692(ra) # 80001978 <_ZN6ThreadD1Ev>
    8000301c:	00048513          	mv	a0,s1
    80003020:	fffff097          	auipc	ra,0xfffff
    80003024:	a2c080e7          	jalr	-1492(ra) # 80001a4c <_ZdlPv>
    80003028:	01813083          	ld	ra,24(sp)
    8000302c:	01013403          	ld	s0,16(sp)
    80003030:	00813483          	ld	s1,8(sp)
    80003034:	02010113          	addi	sp,sp,32
    80003038:	00008067          	ret

000000008000303c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000303c:	ff010113          	addi	sp,sp,-16
    80003040:	00113423          	sd	ra,8(sp)
    80003044:	00813023          	sd	s0,0(sp)
    80003048:	01010413          	addi	s0,sp,16
    8000304c:	00006797          	auipc	a5,0x6
    80003050:	8fc78793          	addi	a5,a5,-1796 # 80008948 <_ZTV7WorkerB+0x10>
    80003054:	00f53023          	sd	a5,0(a0)
    80003058:	fffff097          	auipc	ra,0xfffff
    8000305c:	920080e7          	jalr	-1760(ra) # 80001978 <_ZN6ThreadD1Ev>
    80003060:	00813083          	ld	ra,8(sp)
    80003064:	00013403          	ld	s0,0(sp)
    80003068:	01010113          	addi	sp,sp,16
    8000306c:	00008067          	ret

0000000080003070 <_ZN7WorkerBD0Ev>:
    80003070:	fe010113          	addi	sp,sp,-32
    80003074:	00113c23          	sd	ra,24(sp)
    80003078:	00813823          	sd	s0,16(sp)
    8000307c:	00913423          	sd	s1,8(sp)
    80003080:	02010413          	addi	s0,sp,32
    80003084:	00050493          	mv	s1,a0
    80003088:	00006797          	auipc	a5,0x6
    8000308c:	8c078793          	addi	a5,a5,-1856 # 80008948 <_ZTV7WorkerB+0x10>
    80003090:	00f53023          	sd	a5,0(a0)
    80003094:	fffff097          	auipc	ra,0xfffff
    80003098:	8e4080e7          	jalr	-1820(ra) # 80001978 <_ZN6ThreadD1Ev>
    8000309c:	00048513          	mv	a0,s1
    800030a0:	fffff097          	auipc	ra,0xfffff
    800030a4:	9ac080e7          	jalr	-1620(ra) # 80001a4c <_ZdlPv>
    800030a8:	01813083          	ld	ra,24(sp)
    800030ac:	01013403          	ld	s0,16(sp)
    800030b0:	00813483          	ld	s1,8(sp)
    800030b4:	02010113          	addi	sp,sp,32
    800030b8:	00008067          	ret

00000000800030bc <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800030bc:	ff010113          	addi	sp,sp,-16
    800030c0:	00113423          	sd	ra,8(sp)
    800030c4:	00813023          	sd	s0,0(sp)
    800030c8:	01010413          	addi	s0,sp,16
    800030cc:	00006797          	auipc	a5,0x6
    800030d0:	8a478793          	addi	a5,a5,-1884 # 80008970 <_ZTV7WorkerC+0x10>
    800030d4:	00f53023          	sd	a5,0(a0)
    800030d8:	fffff097          	auipc	ra,0xfffff
    800030dc:	8a0080e7          	jalr	-1888(ra) # 80001978 <_ZN6ThreadD1Ev>
    800030e0:	00813083          	ld	ra,8(sp)
    800030e4:	00013403          	ld	s0,0(sp)
    800030e8:	01010113          	addi	sp,sp,16
    800030ec:	00008067          	ret

00000000800030f0 <_ZN7WorkerCD0Ev>:
    800030f0:	fe010113          	addi	sp,sp,-32
    800030f4:	00113c23          	sd	ra,24(sp)
    800030f8:	00813823          	sd	s0,16(sp)
    800030fc:	00913423          	sd	s1,8(sp)
    80003100:	02010413          	addi	s0,sp,32
    80003104:	00050493          	mv	s1,a0
    80003108:	00006797          	auipc	a5,0x6
    8000310c:	86878793          	addi	a5,a5,-1944 # 80008970 <_ZTV7WorkerC+0x10>
    80003110:	00f53023          	sd	a5,0(a0)
    80003114:	fffff097          	auipc	ra,0xfffff
    80003118:	864080e7          	jalr	-1948(ra) # 80001978 <_ZN6ThreadD1Ev>
    8000311c:	00048513          	mv	a0,s1
    80003120:	fffff097          	auipc	ra,0xfffff
    80003124:	92c080e7          	jalr	-1748(ra) # 80001a4c <_ZdlPv>
    80003128:	01813083          	ld	ra,24(sp)
    8000312c:	01013403          	ld	s0,16(sp)
    80003130:	00813483          	ld	s1,8(sp)
    80003134:	02010113          	addi	sp,sp,32
    80003138:	00008067          	ret

000000008000313c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000313c:	ff010113          	addi	sp,sp,-16
    80003140:	00113423          	sd	ra,8(sp)
    80003144:	00813023          	sd	s0,0(sp)
    80003148:	01010413          	addi	s0,sp,16
    8000314c:	00006797          	auipc	a5,0x6
    80003150:	84c78793          	addi	a5,a5,-1972 # 80008998 <_ZTV7WorkerD+0x10>
    80003154:	00f53023          	sd	a5,0(a0)
    80003158:	fffff097          	auipc	ra,0xfffff
    8000315c:	820080e7          	jalr	-2016(ra) # 80001978 <_ZN6ThreadD1Ev>
    80003160:	00813083          	ld	ra,8(sp)
    80003164:	00013403          	ld	s0,0(sp)
    80003168:	01010113          	addi	sp,sp,16
    8000316c:	00008067          	ret

0000000080003170 <_ZN7WorkerDD0Ev>:
    80003170:	fe010113          	addi	sp,sp,-32
    80003174:	00113c23          	sd	ra,24(sp)
    80003178:	00813823          	sd	s0,16(sp)
    8000317c:	00913423          	sd	s1,8(sp)
    80003180:	02010413          	addi	s0,sp,32
    80003184:	00050493          	mv	s1,a0
    80003188:	00006797          	auipc	a5,0x6
    8000318c:	81078793          	addi	a5,a5,-2032 # 80008998 <_ZTV7WorkerD+0x10>
    80003190:	00f53023          	sd	a5,0(a0)
    80003194:	ffffe097          	auipc	ra,0xffffe
    80003198:	7e4080e7          	jalr	2020(ra) # 80001978 <_ZN6ThreadD1Ev>
    8000319c:	00048513          	mv	a0,s1
    800031a0:	fffff097          	auipc	ra,0xfffff
    800031a4:	8ac080e7          	jalr	-1876(ra) # 80001a4c <_ZdlPv>
    800031a8:	01813083          	ld	ra,24(sp)
    800031ac:	01013403          	ld	s0,16(sp)
    800031b0:	00813483          	ld	s1,8(sp)
    800031b4:	02010113          	addi	sp,sp,32
    800031b8:	00008067          	ret

00000000800031bc <_ZN7WorkerA3runEv>:
    void run() override {
    800031bc:	ff010113          	addi	sp,sp,-16
    800031c0:	00113423          	sd	ra,8(sp)
    800031c4:	00813023          	sd	s0,0(sp)
    800031c8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800031cc:	00000593          	li	a1,0
    800031d0:	fffff097          	auipc	ra,0xfffff
    800031d4:	774080e7          	jalr	1908(ra) # 80002944 <_ZN7WorkerA11workerBodyAEPv>
    }
    800031d8:	00813083          	ld	ra,8(sp)
    800031dc:	00013403          	ld	s0,0(sp)
    800031e0:	01010113          	addi	sp,sp,16
    800031e4:	00008067          	ret

00000000800031e8 <_ZN7WorkerB3runEv>:
    void run() override {
    800031e8:	ff010113          	addi	sp,sp,-16
    800031ec:	00113423          	sd	ra,8(sp)
    800031f0:	00813023          	sd	s0,0(sp)
    800031f4:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800031f8:	00000593          	li	a1,0
    800031fc:	00000097          	auipc	ra,0x0
    80003200:	814080e7          	jalr	-2028(ra) # 80002a10 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003204:	00813083          	ld	ra,8(sp)
    80003208:	00013403          	ld	s0,0(sp)
    8000320c:	01010113          	addi	sp,sp,16
    80003210:	00008067          	ret

0000000080003214 <_ZN7WorkerC3runEv>:
    void run() override {
    80003214:	ff010113          	addi	sp,sp,-16
    80003218:	00113423          	sd	ra,8(sp)
    8000321c:	00813023          	sd	s0,0(sp)
    80003220:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003224:	00000593          	li	a1,0
    80003228:	00000097          	auipc	ra,0x0
    8000322c:	8bc080e7          	jalr	-1860(ra) # 80002ae4 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003230:	00813083          	ld	ra,8(sp)
    80003234:	00013403          	ld	s0,0(sp)
    80003238:	01010113          	addi	sp,sp,16
    8000323c:	00008067          	ret

0000000080003240 <_ZN7WorkerD3runEv>:
    void run() override {
    80003240:	ff010113          	addi	sp,sp,-16
    80003244:	00113423          	sd	ra,8(sp)
    80003248:	00813023          	sd	s0,0(sp)
    8000324c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003250:	00000593          	li	a1,0
    80003254:	00000097          	auipc	ra,0x0
    80003258:	a10080e7          	jalr	-1520(ra) # 80002c64 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000325c:	00813083          	ld	ra,8(sp)
    80003260:	00013403          	ld	s0,0(sp)
    80003264:	01010113          	addi	sp,sp,16
    80003268:	00008067          	ret

000000008000326c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000326c:	fe010113          	addi	sp,sp,-32
    80003270:	00113c23          	sd	ra,24(sp)
    80003274:	00813823          	sd	s0,16(sp)
    80003278:	00913423          	sd	s1,8(sp)
    8000327c:	01213023          	sd	s2,0(sp)
    80003280:	02010413          	addi	s0,sp,32
    80003284:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003288:	00100793          	li	a5,1
    8000328c:	02a7f863          	bgeu	a5,a0,800032bc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003290:	00a00793          	li	a5,10
    80003294:	02f577b3          	remu	a5,a0,a5
    80003298:	02078e63          	beqz	a5,800032d4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000329c:	fff48513          	addi	a0,s1,-1
    800032a0:	00000097          	auipc	ra,0x0
    800032a4:	fcc080e7          	jalr	-52(ra) # 8000326c <_ZL9fibonaccim>
    800032a8:	00050913          	mv	s2,a0
    800032ac:	ffe48513          	addi	a0,s1,-2
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	fbc080e7          	jalr	-68(ra) # 8000326c <_ZL9fibonaccim>
    800032b8:	00a90533          	add	a0,s2,a0
}
    800032bc:	01813083          	ld	ra,24(sp)
    800032c0:	01013403          	ld	s0,16(sp)
    800032c4:	00813483          	ld	s1,8(sp)
    800032c8:	00013903          	ld	s2,0(sp)
    800032cc:	02010113          	addi	sp,sp,32
    800032d0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800032d4:	ffffe097          	auipc	ra,0xffffe
    800032d8:	05c080e7          	jalr	92(ra) # 80001330 <_Z15thread_dispatchv>
    800032dc:	fc1ff06f          	j	8000329c <_ZL9fibonaccim+0x30>

00000000800032e0 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800032e0:	fe010113          	addi	sp,sp,-32
    800032e4:	00113c23          	sd	ra,24(sp)
    800032e8:	00813823          	sd	s0,16(sp)
    800032ec:	00913423          	sd	s1,8(sp)
    800032f0:	01213023          	sd	s2,0(sp)
    800032f4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800032f8:	00a00493          	li	s1,10
    800032fc:	0400006f          	j	8000333c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003300:	00004517          	auipc	a0,0x4
    80003304:	f0850513          	addi	a0,a0,-248 # 80007208 <CONSOLE_STATUS+0x1f8>
    80003308:	00000097          	auipc	ra,0x0
    8000330c:	53c080e7          	jalr	1340(ra) # 80003844 <_Z11printStringPKc>
    80003310:	00000613          	li	a2,0
    80003314:	00a00593          	li	a1,10
    80003318:	00048513          	mv	a0,s1
    8000331c:	00000097          	auipc	ra,0x0
    80003320:	6d8080e7          	jalr	1752(ra) # 800039f4 <_Z8printIntiii>
    80003324:	00004517          	auipc	a0,0x4
    80003328:	e4450513          	addi	a0,a0,-444 # 80007168 <CONSOLE_STATUS+0x158>
    8000332c:	00000097          	auipc	ra,0x0
    80003330:	518080e7          	jalr	1304(ra) # 80003844 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003334:	0014849b          	addiw	s1,s1,1
    80003338:	0ff4f493          	andi	s1,s1,255
    8000333c:	00c00793          	li	a5,12
    80003340:	fc97f0e3          	bgeu	a5,s1,80003300 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003344:	00004517          	auipc	a0,0x4
    80003348:	ecc50513          	addi	a0,a0,-308 # 80007210 <CONSOLE_STATUS+0x200>
    8000334c:	00000097          	auipc	ra,0x0
    80003350:	4f8080e7          	jalr	1272(ra) # 80003844 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003354:	00500313          	li	t1,5
    thread_dispatch();
    80003358:	ffffe097          	auipc	ra,0xffffe
    8000335c:	fd8080e7          	jalr	-40(ra) # 80001330 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003360:	01000513          	li	a0,16
    80003364:	00000097          	auipc	ra,0x0
    80003368:	f08080e7          	jalr	-248(ra) # 8000326c <_ZL9fibonaccim>
    8000336c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003370:	00004517          	auipc	a0,0x4
    80003374:	eb050513          	addi	a0,a0,-336 # 80007220 <CONSOLE_STATUS+0x210>
    80003378:	00000097          	auipc	ra,0x0
    8000337c:	4cc080e7          	jalr	1228(ra) # 80003844 <_Z11printStringPKc>
    80003380:	00000613          	li	a2,0
    80003384:	00a00593          	li	a1,10
    80003388:	0009051b          	sext.w	a0,s2
    8000338c:	00000097          	auipc	ra,0x0
    80003390:	668080e7          	jalr	1640(ra) # 800039f4 <_Z8printIntiii>
    80003394:	00004517          	auipc	a0,0x4
    80003398:	dd450513          	addi	a0,a0,-556 # 80007168 <CONSOLE_STATUS+0x158>
    8000339c:	00000097          	auipc	ra,0x0
    800033a0:	4a8080e7          	jalr	1192(ra) # 80003844 <_Z11printStringPKc>
    800033a4:	0400006f          	j	800033e4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800033a8:	00004517          	auipc	a0,0x4
    800033ac:	e6050513          	addi	a0,a0,-416 # 80007208 <CONSOLE_STATUS+0x1f8>
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	494080e7          	jalr	1172(ra) # 80003844 <_Z11printStringPKc>
    800033b8:	00000613          	li	a2,0
    800033bc:	00a00593          	li	a1,10
    800033c0:	00048513          	mv	a0,s1
    800033c4:	00000097          	auipc	ra,0x0
    800033c8:	630080e7          	jalr	1584(ra) # 800039f4 <_Z8printIntiii>
    800033cc:	00004517          	auipc	a0,0x4
    800033d0:	d9c50513          	addi	a0,a0,-612 # 80007168 <CONSOLE_STATUS+0x158>
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	470080e7          	jalr	1136(ra) # 80003844 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800033dc:	0014849b          	addiw	s1,s1,1
    800033e0:	0ff4f493          	andi	s1,s1,255
    800033e4:	00f00793          	li	a5,15
    800033e8:	fc97f0e3          	bgeu	a5,s1,800033a8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800033ec:	00004517          	auipc	a0,0x4
    800033f0:	e4450513          	addi	a0,a0,-444 # 80007230 <CONSOLE_STATUS+0x220>
    800033f4:	00000097          	auipc	ra,0x0
    800033f8:	450080e7          	jalr	1104(ra) # 80003844 <_Z11printStringPKc>
    finishedD = true;
    800033fc:	00100793          	li	a5,1
    80003400:	00005717          	auipc	a4,0x5
    80003404:	68f70223          	sb	a5,1668(a4) # 80008a84 <_ZL9finishedD>
    thread_dispatch();
    80003408:	ffffe097          	auipc	ra,0xffffe
    8000340c:	f28080e7          	jalr	-216(ra) # 80001330 <_Z15thread_dispatchv>
}
    80003410:	01813083          	ld	ra,24(sp)
    80003414:	01013403          	ld	s0,16(sp)
    80003418:	00813483          	ld	s1,8(sp)
    8000341c:	00013903          	ld	s2,0(sp)
    80003420:	02010113          	addi	sp,sp,32
    80003424:	00008067          	ret

0000000080003428 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003428:	fe010113          	addi	sp,sp,-32
    8000342c:	00113c23          	sd	ra,24(sp)
    80003430:	00813823          	sd	s0,16(sp)
    80003434:	00913423          	sd	s1,8(sp)
    80003438:	01213023          	sd	s2,0(sp)
    8000343c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003440:	00000493          	li	s1,0
    80003444:	0400006f          	j	80003484 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003448:	00004517          	auipc	a0,0x4
    8000344c:	d9050513          	addi	a0,a0,-624 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80003450:	00000097          	auipc	ra,0x0
    80003454:	3f4080e7          	jalr	1012(ra) # 80003844 <_Z11printStringPKc>
    80003458:	00000613          	li	a2,0
    8000345c:	00a00593          	li	a1,10
    80003460:	00048513          	mv	a0,s1
    80003464:	00000097          	auipc	ra,0x0
    80003468:	590080e7          	jalr	1424(ra) # 800039f4 <_Z8printIntiii>
    8000346c:	00004517          	auipc	a0,0x4
    80003470:	cfc50513          	addi	a0,a0,-772 # 80007168 <CONSOLE_STATUS+0x158>
    80003474:	00000097          	auipc	ra,0x0
    80003478:	3d0080e7          	jalr	976(ra) # 80003844 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000347c:	0014849b          	addiw	s1,s1,1
    80003480:	0ff4f493          	andi	s1,s1,255
    80003484:	00200793          	li	a5,2
    80003488:	fc97f0e3          	bgeu	a5,s1,80003448 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000348c:	00004517          	auipc	a0,0x4
    80003490:	d5450513          	addi	a0,a0,-684 # 800071e0 <CONSOLE_STATUS+0x1d0>
    80003494:	00000097          	auipc	ra,0x0
    80003498:	3b0080e7          	jalr	944(ra) # 80003844 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000349c:	00700313          	li	t1,7
    thread_dispatch();
    800034a0:	ffffe097          	auipc	ra,0xffffe
    800034a4:	e90080e7          	jalr	-368(ra) # 80001330 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800034a8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800034ac:	00004517          	auipc	a0,0x4
    800034b0:	d4450513          	addi	a0,a0,-700 # 800071f0 <CONSOLE_STATUS+0x1e0>
    800034b4:	00000097          	auipc	ra,0x0
    800034b8:	390080e7          	jalr	912(ra) # 80003844 <_Z11printStringPKc>
    800034bc:	00000613          	li	a2,0
    800034c0:	00a00593          	li	a1,10
    800034c4:	0009051b          	sext.w	a0,s2
    800034c8:	00000097          	auipc	ra,0x0
    800034cc:	52c080e7          	jalr	1324(ra) # 800039f4 <_Z8printIntiii>
    800034d0:	00004517          	auipc	a0,0x4
    800034d4:	c9850513          	addi	a0,a0,-872 # 80007168 <CONSOLE_STATUS+0x158>
    800034d8:	00000097          	auipc	ra,0x0
    800034dc:	36c080e7          	jalr	876(ra) # 80003844 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800034e0:	00c00513          	li	a0,12
    800034e4:	00000097          	auipc	ra,0x0
    800034e8:	d88080e7          	jalr	-632(ra) # 8000326c <_ZL9fibonaccim>
    800034ec:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800034f0:	00004517          	auipc	a0,0x4
    800034f4:	d0850513          	addi	a0,a0,-760 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	34c080e7          	jalr	844(ra) # 80003844 <_Z11printStringPKc>
    80003500:	00000613          	li	a2,0
    80003504:	00a00593          	li	a1,10
    80003508:	0009051b          	sext.w	a0,s2
    8000350c:	00000097          	auipc	ra,0x0
    80003510:	4e8080e7          	jalr	1256(ra) # 800039f4 <_Z8printIntiii>
    80003514:	00004517          	auipc	a0,0x4
    80003518:	c5450513          	addi	a0,a0,-940 # 80007168 <CONSOLE_STATUS+0x158>
    8000351c:	00000097          	auipc	ra,0x0
    80003520:	328080e7          	jalr	808(ra) # 80003844 <_Z11printStringPKc>
    80003524:	0400006f          	j	80003564 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003528:	00004517          	auipc	a0,0x4
    8000352c:	cb050513          	addi	a0,a0,-848 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80003530:	00000097          	auipc	ra,0x0
    80003534:	314080e7          	jalr	788(ra) # 80003844 <_Z11printStringPKc>
    80003538:	00000613          	li	a2,0
    8000353c:	00a00593          	li	a1,10
    80003540:	00048513          	mv	a0,s1
    80003544:	00000097          	auipc	ra,0x0
    80003548:	4b0080e7          	jalr	1200(ra) # 800039f4 <_Z8printIntiii>
    8000354c:	00004517          	auipc	a0,0x4
    80003550:	c1c50513          	addi	a0,a0,-996 # 80007168 <CONSOLE_STATUS+0x158>
    80003554:	00000097          	auipc	ra,0x0
    80003558:	2f0080e7          	jalr	752(ra) # 80003844 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000355c:	0014849b          	addiw	s1,s1,1
    80003560:	0ff4f493          	andi	s1,s1,255
    80003564:	00500793          	li	a5,5
    80003568:	fc97f0e3          	bgeu	a5,s1,80003528 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    8000356c:	00004517          	auipc	a0,0x4
    80003570:	d3450513          	addi	a0,a0,-716 # 800072a0 <CONSOLE_STATUS+0x290>
    80003574:	00000097          	auipc	ra,0x0
    80003578:	2d0080e7          	jalr	720(ra) # 80003844 <_Z11printStringPKc>
    finishedC = true;
    8000357c:	00100793          	li	a5,1
    80003580:	00005717          	auipc	a4,0x5
    80003584:	50f702a3          	sb	a5,1285(a4) # 80008a85 <_ZL9finishedC>
    thread_dispatch();
    80003588:	ffffe097          	auipc	ra,0xffffe
    8000358c:	da8080e7          	jalr	-600(ra) # 80001330 <_Z15thread_dispatchv>
}
    80003590:	01813083          	ld	ra,24(sp)
    80003594:	01013403          	ld	s0,16(sp)
    80003598:	00813483          	ld	s1,8(sp)
    8000359c:	00013903          	ld	s2,0(sp)
    800035a0:	02010113          	addi	sp,sp,32
    800035a4:	00008067          	ret

00000000800035a8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800035a8:	fe010113          	addi	sp,sp,-32
    800035ac:	00113c23          	sd	ra,24(sp)
    800035b0:	00813823          	sd	s0,16(sp)
    800035b4:	00913423          	sd	s1,8(sp)
    800035b8:	01213023          	sd	s2,0(sp)
    800035bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800035c0:	00000913          	li	s2,0
    800035c4:	0380006f          	j	800035fc <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800035c8:	ffffe097          	auipc	ra,0xffffe
    800035cc:	d68080e7          	jalr	-664(ra) # 80001330 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800035d0:	00148493          	addi	s1,s1,1
    800035d4:	000027b7          	lui	a5,0x2
    800035d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800035dc:	0097ee63          	bltu	a5,s1,800035f8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800035e0:	00000713          	li	a4,0
    800035e4:	000077b7          	lui	a5,0x7
    800035e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800035ec:	fce7eee3          	bltu	a5,a4,800035c8 <_ZL11workerBodyBPv+0x20>
    800035f0:	00170713          	addi	a4,a4,1
    800035f4:	ff1ff06f          	j	800035e4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800035f8:	00190913          	addi	s2,s2,1
    800035fc:	00f00793          	li	a5,15
    80003600:	0527e063          	bltu	a5,s2,80003640 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003604:	00004517          	auipc	a0,0x4
    80003608:	bbc50513          	addi	a0,a0,-1092 # 800071c0 <CONSOLE_STATUS+0x1b0>
    8000360c:	00000097          	auipc	ra,0x0
    80003610:	238080e7          	jalr	568(ra) # 80003844 <_Z11printStringPKc>
    80003614:	00000613          	li	a2,0
    80003618:	00a00593          	li	a1,10
    8000361c:	0009051b          	sext.w	a0,s2
    80003620:	00000097          	auipc	ra,0x0
    80003624:	3d4080e7          	jalr	980(ra) # 800039f4 <_Z8printIntiii>
    80003628:	00004517          	auipc	a0,0x4
    8000362c:	b4050513          	addi	a0,a0,-1216 # 80007168 <CONSOLE_STATUS+0x158>
    80003630:	00000097          	auipc	ra,0x0
    80003634:	214080e7          	jalr	532(ra) # 80003844 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003638:	00000493          	li	s1,0
    8000363c:	f99ff06f          	j	800035d4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003640:	00004517          	auipc	a0,0x4
    80003644:	b8850513          	addi	a0,a0,-1144 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80003648:	00000097          	auipc	ra,0x0
    8000364c:	1fc080e7          	jalr	508(ra) # 80003844 <_Z11printStringPKc>
    finishedB = true;
    80003650:	00100793          	li	a5,1
    80003654:	00005717          	auipc	a4,0x5
    80003658:	42f70923          	sb	a5,1074(a4) # 80008a86 <_ZL9finishedB>
    thread_dispatch();
    8000365c:	ffffe097          	auipc	ra,0xffffe
    80003660:	cd4080e7          	jalr	-812(ra) # 80001330 <_Z15thread_dispatchv>
}
    80003664:	01813083          	ld	ra,24(sp)
    80003668:	01013403          	ld	s0,16(sp)
    8000366c:	00813483          	ld	s1,8(sp)
    80003670:	00013903          	ld	s2,0(sp)
    80003674:	02010113          	addi	sp,sp,32
    80003678:	00008067          	ret

000000008000367c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000367c:	fe010113          	addi	sp,sp,-32
    80003680:	00113c23          	sd	ra,24(sp)
    80003684:	00813823          	sd	s0,16(sp)
    80003688:	00913423          	sd	s1,8(sp)
    8000368c:	01213023          	sd	s2,0(sp)
    80003690:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003694:	00000913          	li	s2,0
    80003698:	0380006f          	j	800036d0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000369c:	ffffe097          	auipc	ra,0xffffe
    800036a0:	c94080e7          	jalr	-876(ra) # 80001330 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800036a4:	00148493          	addi	s1,s1,1
    800036a8:	000027b7          	lui	a5,0x2
    800036ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800036b0:	0097ee63          	bltu	a5,s1,800036cc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800036b4:	00000713          	li	a4,0
    800036b8:	000077b7          	lui	a5,0x7
    800036bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036c0:	fce7eee3          	bltu	a5,a4,8000369c <_ZL11workerBodyAPv+0x20>
    800036c4:	00170713          	addi	a4,a4,1
    800036c8:	ff1ff06f          	j	800036b8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800036cc:	00190913          	addi	s2,s2,1
    800036d0:	00900793          	li	a5,9
    800036d4:	0527e063          	bltu	a5,s2,80003714 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800036d8:	00004517          	auipc	a0,0x4
    800036dc:	ad050513          	addi	a0,a0,-1328 # 800071a8 <CONSOLE_STATUS+0x198>
    800036e0:	00000097          	auipc	ra,0x0
    800036e4:	164080e7          	jalr	356(ra) # 80003844 <_Z11printStringPKc>
    800036e8:	00000613          	li	a2,0
    800036ec:	00a00593          	li	a1,10
    800036f0:	0009051b          	sext.w	a0,s2
    800036f4:	00000097          	auipc	ra,0x0
    800036f8:	300080e7          	jalr	768(ra) # 800039f4 <_Z8printIntiii>
    800036fc:	00004517          	auipc	a0,0x4
    80003700:	a6c50513          	addi	a0,a0,-1428 # 80007168 <CONSOLE_STATUS+0x158>
    80003704:	00000097          	auipc	ra,0x0
    80003708:	140080e7          	jalr	320(ra) # 80003844 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000370c:	00000493          	li	s1,0
    80003710:	f99ff06f          	j	800036a8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003714:	00004517          	auipc	a0,0x4
    80003718:	a9c50513          	addi	a0,a0,-1380 # 800071b0 <CONSOLE_STATUS+0x1a0>
    8000371c:	00000097          	auipc	ra,0x0
    80003720:	128080e7          	jalr	296(ra) # 80003844 <_Z11printStringPKc>
    finishedA = true;
    80003724:	00100793          	li	a5,1
    80003728:	00005717          	auipc	a4,0x5
    8000372c:	34f70fa3          	sb	a5,863(a4) # 80008a87 <_ZL9finishedA>
}
    80003730:	01813083          	ld	ra,24(sp)
    80003734:	01013403          	ld	s0,16(sp)
    80003738:	00813483          	ld	s1,8(sp)
    8000373c:	00013903          	ld	s2,0(sp)
    80003740:	02010113          	addi	sp,sp,32
    80003744:	00008067          	ret

0000000080003748 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003748:	fd010113          	addi	sp,sp,-48
    8000374c:	02113423          	sd	ra,40(sp)
    80003750:	02813023          	sd	s0,32(sp)
    80003754:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003758:	00000613          	li	a2,0
    8000375c:	00000597          	auipc	a1,0x0
    80003760:	f2058593          	addi	a1,a1,-224 # 8000367c <_ZL11workerBodyAPv>
    80003764:	fd040513          	addi	a0,s0,-48
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	af4080e7          	jalr	-1292(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80003770:	00004517          	auipc	a0,0x4
    80003774:	ad050513          	addi	a0,a0,-1328 # 80007240 <CONSOLE_STATUS+0x230>
    80003778:	00000097          	auipc	ra,0x0
    8000377c:	0cc080e7          	jalr	204(ra) # 80003844 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003780:	00000613          	li	a2,0
    80003784:	00000597          	auipc	a1,0x0
    80003788:	e2458593          	addi	a1,a1,-476 # 800035a8 <_ZL11workerBodyBPv>
    8000378c:	fd840513          	addi	a0,s0,-40
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	acc080e7          	jalr	-1332(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    80003798:	00004517          	auipc	a0,0x4
    8000379c:	ac050513          	addi	a0,a0,-1344 # 80007258 <CONSOLE_STATUS+0x248>
    800037a0:	00000097          	auipc	ra,0x0
    800037a4:	0a4080e7          	jalr	164(ra) # 80003844 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800037a8:	00000613          	li	a2,0
    800037ac:	00000597          	auipc	a1,0x0
    800037b0:	c7c58593          	addi	a1,a1,-900 # 80003428 <_ZL11workerBodyCPv>
    800037b4:	fe040513          	addi	a0,s0,-32
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	aa4080e7          	jalr	-1372(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    800037c0:	00004517          	auipc	a0,0x4
    800037c4:	ab050513          	addi	a0,a0,-1360 # 80007270 <CONSOLE_STATUS+0x260>
    800037c8:	00000097          	auipc	ra,0x0
    800037cc:	07c080e7          	jalr	124(ra) # 80003844 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800037d0:	00000613          	li	a2,0
    800037d4:	00000597          	auipc	a1,0x0
    800037d8:	b0c58593          	addi	a1,a1,-1268 # 800032e0 <_ZL11workerBodyDPv>
    800037dc:	fe840513          	addi	a0,s0,-24
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	a7c080e7          	jalr	-1412(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    800037e8:	00004517          	auipc	a0,0x4
    800037ec:	aa050513          	addi	a0,a0,-1376 # 80007288 <CONSOLE_STATUS+0x278>
    800037f0:	00000097          	auipc	ra,0x0
    800037f4:	054080e7          	jalr	84(ra) # 80003844 <_Z11printStringPKc>
    800037f8:	00c0006f          	j	80003804 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	b34080e7          	jalr	-1228(ra) # 80001330 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003804:	00005797          	auipc	a5,0x5
    80003808:	2837c783          	lbu	a5,643(a5) # 80008a87 <_ZL9finishedA>
    8000380c:	fe0788e3          	beqz	a5,800037fc <_Z18Threads_C_API_testv+0xb4>
    80003810:	00005797          	auipc	a5,0x5
    80003814:	2767c783          	lbu	a5,630(a5) # 80008a86 <_ZL9finishedB>
    80003818:	fe0782e3          	beqz	a5,800037fc <_Z18Threads_C_API_testv+0xb4>
    8000381c:	00005797          	auipc	a5,0x5
    80003820:	2697c783          	lbu	a5,617(a5) # 80008a85 <_ZL9finishedC>
    80003824:	fc078ce3          	beqz	a5,800037fc <_Z18Threads_C_API_testv+0xb4>
    80003828:	00005797          	auipc	a5,0x5
    8000382c:	25c7c783          	lbu	a5,604(a5) # 80008a84 <_ZL9finishedD>
    80003830:	fc0786e3          	beqz	a5,800037fc <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003834:	02813083          	ld	ra,40(sp)
    80003838:	02013403          	ld	s0,32(sp)
    8000383c:	03010113          	addi	sp,sp,48
    80003840:	00008067          	ret

0000000080003844 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003844:	fe010113          	addi	sp,sp,-32
    80003848:	00113c23          	sd	ra,24(sp)
    8000384c:	00813823          	sd	s0,16(sp)
    80003850:	00913423          	sd	s1,8(sp)
    80003854:	02010413          	addi	s0,sp,32
    80003858:	00050493          	mv	s1,a0
    LOCK();
    8000385c:	00100613          	li	a2,1
    80003860:	00000593          	li	a1,0
    80003864:	00005517          	auipc	a0,0x5
    80003868:	22450513          	addi	a0,a0,548 # 80008a88 <lockPrint>
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	8d8080e7          	jalr	-1832(ra) # 80001144 <copy_and_swap>
    80003874:	00050863          	beqz	a0,80003884 <_Z11printStringPKc+0x40>
    80003878:	ffffe097          	auipc	ra,0xffffe
    8000387c:	ab8080e7          	jalr	-1352(ra) # 80001330 <_Z15thread_dispatchv>
    80003880:	fddff06f          	j	8000385c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003884:	0004c503          	lbu	a0,0(s1)
    80003888:	00050a63          	beqz	a0,8000389c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	ba8080e7          	jalr	-1112(ra) # 80001434 <_Z4putcc>
        string++;
    80003894:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003898:	fedff06f          	j	80003884 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000389c:	00000613          	li	a2,0
    800038a0:	00100593          	li	a1,1
    800038a4:	00005517          	auipc	a0,0x5
    800038a8:	1e450513          	addi	a0,a0,484 # 80008a88 <lockPrint>
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	898080e7          	jalr	-1896(ra) # 80001144 <copy_and_swap>
    800038b4:	fe0514e3          	bnez	a0,8000389c <_Z11printStringPKc+0x58>
}
    800038b8:	01813083          	ld	ra,24(sp)
    800038bc:	01013403          	ld	s0,16(sp)
    800038c0:	00813483          	ld	s1,8(sp)
    800038c4:	02010113          	addi	sp,sp,32
    800038c8:	00008067          	ret

00000000800038cc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800038cc:	fd010113          	addi	sp,sp,-48
    800038d0:	02113423          	sd	ra,40(sp)
    800038d4:	02813023          	sd	s0,32(sp)
    800038d8:	00913c23          	sd	s1,24(sp)
    800038dc:	01213823          	sd	s2,16(sp)
    800038e0:	01313423          	sd	s3,8(sp)
    800038e4:	01413023          	sd	s4,0(sp)
    800038e8:	03010413          	addi	s0,sp,48
    800038ec:	00050993          	mv	s3,a0
    800038f0:	00058a13          	mv	s4,a1
    LOCK();
    800038f4:	00100613          	li	a2,1
    800038f8:	00000593          	li	a1,0
    800038fc:	00005517          	auipc	a0,0x5
    80003900:	18c50513          	addi	a0,a0,396 # 80008a88 <lockPrint>
    80003904:	ffffe097          	auipc	ra,0xffffe
    80003908:	840080e7          	jalr	-1984(ra) # 80001144 <copy_and_swap>
    8000390c:	00050863          	beqz	a0,8000391c <_Z9getStringPci+0x50>
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	a20080e7          	jalr	-1504(ra) # 80001330 <_Z15thread_dispatchv>
    80003918:	fddff06f          	j	800038f4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000391c:	00000913          	li	s2,0
    80003920:	00090493          	mv	s1,s2
    80003924:	0019091b          	addiw	s2,s2,1
    80003928:	03495a63          	bge	s2,s4,8000395c <_Z9getStringPci+0x90>
        cc = getc();
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	ae0080e7          	jalr	-1312(ra) # 8000140c <_Z4getcv>
        if(cc < 1)
    80003934:	02050463          	beqz	a0,8000395c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80003938:	009984b3          	add	s1,s3,s1
    8000393c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80003940:	00a00793          	li	a5,10
    80003944:	00f50a63          	beq	a0,a5,80003958 <_Z9getStringPci+0x8c>
    80003948:	00d00793          	li	a5,13
    8000394c:	fcf51ae3          	bne	a0,a5,80003920 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80003950:	00090493          	mv	s1,s2
    80003954:	0080006f          	j	8000395c <_Z9getStringPci+0x90>
    80003958:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000395c:	009984b3          	add	s1,s3,s1
    80003960:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003964:	00000613          	li	a2,0
    80003968:	00100593          	li	a1,1
    8000396c:	00005517          	auipc	a0,0x5
    80003970:	11c50513          	addi	a0,a0,284 # 80008a88 <lockPrint>
    80003974:	ffffd097          	auipc	ra,0xffffd
    80003978:	7d0080e7          	jalr	2000(ra) # 80001144 <copy_and_swap>
    8000397c:	fe0514e3          	bnez	a0,80003964 <_Z9getStringPci+0x98>
    return buf;
}
    80003980:	00098513          	mv	a0,s3
    80003984:	02813083          	ld	ra,40(sp)
    80003988:	02013403          	ld	s0,32(sp)
    8000398c:	01813483          	ld	s1,24(sp)
    80003990:	01013903          	ld	s2,16(sp)
    80003994:	00813983          	ld	s3,8(sp)
    80003998:	00013a03          	ld	s4,0(sp)
    8000399c:	03010113          	addi	sp,sp,48
    800039a0:	00008067          	ret

00000000800039a4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800039a4:	ff010113          	addi	sp,sp,-16
    800039a8:	00813423          	sd	s0,8(sp)
    800039ac:	01010413          	addi	s0,sp,16
    800039b0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800039b4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800039b8:	0006c603          	lbu	a2,0(a3)
    800039bc:	fd06071b          	addiw	a4,a2,-48
    800039c0:	0ff77713          	andi	a4,a4,255
    800039c4:	00900793          	li	a5,9
    800039c8:	02e7e063          	bltu	a5,a4,800039e8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800039cc:	0025179b          	slliw	a5,a0,0x2
    800039d0:	00a787bb          	addw	a5,a5,a0
    800039d4:	0017979b          	slliw	a5,a5,0x1
    800039d8:	00168693          	addi	a3,a3,1
    800039dc:	00c787bb          	addw	a5,a5,a2
    800039e0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800039e4:	fd5ff06f          	j	800039b8 <_Z11stringToIntPKc+0x14>
    return n;
}
    800039e8:	00813403          	ld	s0,8(sp)
    800039ec:	01010113          	addi	sp,sp,16
    800039f0:	00008067          	ret

00000000800039f4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800039f4:	fc010113          	addi	sp,sp,-64
    800039f8:	02113c23          	sd	ra,56(sp)
    800039fc:	02813823          	sd	s0,48(sp)
    80003a00:	02913423          	sd	s1,40(sp)
    80003a04:	03213023          	sd	s2,32(sp)
    80003a08:	01313c23          	sd	s3,24(sp)
    80003a0c:	04010413          	addi	s0,sp,64
    80003a10:	00050493          	mv	s1,a0
    80003a14:	00058913          	mv	s2,a1
    80003a18:	00060993          	mv	s3,a2
    LOCK();
    80003a1c:	00100613          	li	a2,1
    80003a20:	00000593          	li	a1,0
    80003a24:	00005517          	auipc	a0,0x5
    80003a28:	06450513          	addi	a0,a0,100 # 80008a88 <lockPrint>
    80003a2c:	ffffd097          	auipc	ra,0xffffd
    80003a30:	718080e7          	jalr	1816(ra) # 80001144 <copy_and_swap>
    80003a34:	00050863          	beqz	a0,80003a44 <_Z8printIntiii+0x50>
    80003a38:	ffffe097          	auipc	ra,0xffffe
    80003a3c:	8f8080e7          	jalr	-1800(ra) # 80001330 <_Z15thread_dispatchv>
    80003a40:	fddff06f          	j	80003a1c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003a44:	00098463          	beqz	s3,80003a4c <_Z8printIntiii+0x58>
    80003a48:	0804c463          	bltz	s1,80003ad0 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003a4c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003a50:	00000593          	li	a1,0
    }

    i = 0;
    80003a54:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003a58:	0009079b          	sext.w	a5,s2
    80003a5c:	0325773b          	remuw	a4,a0,s2
    80003a60:	00048613          	mv	a2,s1
    80003a64:	0014849b          	addiw	s1,s1,1
    80003a68:	02071693          	slli	a3,a4,0x20
    80003a6c:	0206d693          	srli	a3,a3,0x20
    80003a70:	00005717          	auipc	a4,0x5
    80003a74:	f4070713          	addi	a4,a4,-192 # 800089b0 <digits>
    80003a78:	00d70733          	add	a4,a4,a3
    80003a7c:	00074683          	lbu	a3,0(a4)
    80003a80:	fd040713          	addi	a4,s0,-48
    80003a84:	00c70733          	add	a4,a4,a2
    80003a88:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003a8c:	0005071b          	sext.w	a4,a0
    80003a90:	0325553b          	divuw	a0,a0,s2
    80003a94:	fcf772e3          	bgeu	a4,a5,80003a58 <_Z8printIntiii+0x64>
    if(neg)
    80003a98:	00058c63          	beqz	a1,80003ab0 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80003a9c:	fd040793          	addi	a5,s0,-48
    80003aa0:	009784b3          	add	s1,a5,s1
    80003aa4:	02d00793          	li	a5,45
    80003aa8:	fef48823          	sb	a5,-16(s1)
    80003aac:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003ab0:	fff4849b          	addiw	s1,s1,-1
    80003ab4:	0204c463          	bltz	s1,80003adc <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80003ab8:	fd040793          	addi	a5,s0,-48
    80003abc:	009787b3          	add	a5,a5,s1
    80003ac0:	ff07c503          	lbu	a0,-16(a5)
    80003ac4:	ffffe097          	auipc	ra,0xffffe
    80003ac8:	970080e7          	jalr	-1680(ra) # 80001434 <_Z4putcc>
    80003acc:	fe5ff06f          	j	80003ab0 <_Z8printIntiii+0xbc>
        x = -xx;
    80003ad0:	4090053b          	negw	a0,s1
        neg = 1;
    80003ad4:	00100593          	li	a1,1
        x = -xx;
    80003ad8:	f7dff06f          	j	80003a54 <_Z8printIntiii+0x60>

    UNLOCK();
    80003adc:	00000613          	li	a2,0
    80003ae0:	00100593          	li	a1,1
    80003ae4:	00005517          	auipc	a0,0x5
    80003ae8:	fa450513          	addi	a0,a0,-92 # 80008a88 <lockPrint>
    80003aec:	ffffd097          	auipc	ra,0xffffd
    80003af0:	658080e7          	jalr	1624(ra) # 80001144 <copy_and_swap>
    80003af4:	fe0514e3          	bnez	a0,80003adc <_Z8printIntiii+0xe8>
    80003af8:	03813083          	ld	ra,56(sp)
    80003afc:	03013403          	ld	s0,48(sp)
    80003b00:	02813483          	ld	s1,40(sp)
    80003b04:	02013903          	ld	s2,32(sp)
    80003b08:	01813983          	ld	s3,24(sp)
    80003b0c:	04010113          	addi	sp,sp,64
    80003b10:	00008067          	ret

0000000080003b14 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80003b14:	ff010113          	addi	sp,sp,-16
    80003b18:	00113423          	sd	ra,8(sp)
    80003b1c:	00813023          	sd	s0,0(sp)
    80003b20:	01010413          	addi	s0,sp,16
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80003b24:	00000097          	auipc	ra,0x0
    80003b28:	c24080e7          	jalr	-988(ra) # 80003748 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80003b2c:	00003517          	auipc	a0,0x3
    80003b30:	78450513          	addi	a0,a0,1924 # 800072b0 <CONSOLE_STATUS+0x2a0>
    80003b34:	00000097          	auipc	ra,0x0
    80003b38:	d10080e7          	jalr	-752(ra) # 80003844 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80003b3c:	00813083          	ld	ra,8(sp)
    80003b40:	00013403          	ld	s0,0(sp)
    80003b44:	01010113          	addi	sp,sp,16
    80003b48:	00008067          	ret

0000000080003b4c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003b4c:	fe010113          	addi	sp,sp,-32
    80003b50:	00113c23          	sd	ra,24(sp)
    80003b54:	00813823          	sd	s0,16(sp)
    80003b58:	00913423          	sd	s1,8(sp)
    80003b5c:	01213023          	sd	s2,0(sp)
    80003b60:	02010413          	addi	s0,sp,32
    80003b64:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003b68:	00100793          	li	a5,1
    80003b6c:	02a7f863          	bgeu	a5,a0,80003b9c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003b70:	00a00793          	li	a5,10
    80003b74:	02f577b3          	remu	a5,a0,a5
    80003b78:	02078e63          	beqz	a5,80003bb4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003b7c:	fff48513          	addi	a0,s1,-1
    80003b80:	00000097          	auipc	ra,0x0
    80003b84:	fcc080e7          	jalr	-52(ra) # 80003b4c <_ZL9fibonaccim>
    80003b88:	00050913          	mv	s2,a0
    80003b8c:	ffe48513          	addi	a0,s1,-2
    80003b90:	00000097          	auipc	ra,0x0
    80003b94:	fbc080e7          	jalr	-68(ra) # 80003b4c <_ZL9fibonaccim>
    80003b98:	00a90533          	add	a0,s2,a0
}
    80003b9c:	01813083          	ld	ra,24(sp)
    80003ba0:	01013403          	ld	s0,16(sp)
    80003ba4:	00813483          	ld	s1,8(sp)
    80003ba8:	00013903          	ld	s2,0(sp)
    80003bac:	02010113          	addi	sp,sp,32
    80003bb0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003bb4:	ffffd097          	auipc	ra,0xffffd
    80003bb8:	77c080e7          	jalr	1916(ra) # 80001330 <_Z15thread_dispatchv>
    80003bbc:	fc1ff06f          	j	80003b7c <_ZL9fibonaccim+0x30>

0000000080003bc0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003bc0:	fe010113          	addi	sp,sp,-32
    80003bc4:	00113c23          	sd	ra,24(sp)
    80003bc8:	00813823          	sd	s0,16(sp)
    80003bcc:	00913423          	sd	s1,8(sp)
    80003bd0:	01213023          	sd	s2,0(sp)
    80003bd4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003bd8:	00a00493          	li	s1,10
    80003bdc:	0400006f          	j	80003c1c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003be0:	00003517          	auipc	a0,0x3
    80003be4:	62850513          	addi	a0,a0,1576 # 80007208 <CONSOLE_STATUS+0x1f8>
    80003be8:	00000097          	auipc	ra,0x0
    80003bec:	c5c080e7          	jalr	-932(ra) # 80003844 <_Z11printStringPKc>
    80003bf0:	00000613          	li	a2,0
    80003bf4:	00a00593          	li	a1,10
    80003bf8:	00048513          	mv	a0,s1
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	df8080e7          	jalr	-520(ra) # 800039f4 <_Z8printIntiii>
    80003c04:	00003517          	auipc	a0,0x3
    80003c08:	56450513          	addi	a0,a0,1380 # 80007168 <CONSOLE_STATUS+0x158>
    80003c0c:	00000097          	auipc	ra,0x0
    80003c10:	c38080e7          	jalr	-968(ra) # 80003844 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003c14:	0014849b          	addiw	s1,s1,1
    80003c18:	0ff4f493          	andi	s1,s1,255
    80003c1c:	00c00793          	li	a5,12
    80003c20:	fc97f0e3          	bgeu	a5,s1,80003be0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003c24:	00003517          	auipc	a0,0x3
    80003c28:	5ec50513          	addi	a0,a0,1516 # 80007210 <CONSOLE_STATUS+0x200>
    80003c2c:	00000097          	auipc	ra,0x0
    80003c30:	c18080e7          	jalr	-1000(ra) # 80003844 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003c34:	00500313          	li	t1,5
    thread_dispatch();
    80003c38:	ffffd097          	auipc	ra,0xffffd
    80003c3c:	6f8080e7          	jalr	1784(ra) # 80001330 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003c40:	01000513          	li	a0,16
    80003c44:	00000097          	auipc	ra,0x0
    80003c48:	f08080e7          	jalr	-248(ra) # 80003b4c <_ZL9fibonaccim>
    80003c4c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003c50:	00003517          	auipc	a0,0x3
    80003c54:	5d050513          	addi	a0,a0,1488 # 80007220 <CONSOLE_STATUS+0x210>
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	bec080e7          	jalr	-1044(ra) # 80003844 <_Z11printStringPKc>
    80003c60:	00000613          	li	a2,0
    80003c64:	00a00593          	li	a1,10
    80003c68:	0009051b          	sext.w	a0,s2
    80003c6c:	00000097          	auipc	ra,0x0
    80003c70:	d88080e7          	jalr	-632(ra) # 800039f4 <_Z8printIntiii>
    80003c74:	00003517          	auipc	a0,0x3
    80003c78:	4f450513          	addi	a0,a0,1268 # 80007168 <CONSOLE_STATUS+0x158>
    80003c7c:	00000097          	auipc	ra,0x0
    80003c80:	bc8080e7          	jalr	-1080(ra) # 80003844 <_Z11printStringPKc>
    80003c84:	0400006f          	j	80003cc4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c88:	00003517          	auipc	a0,0x3
    80003c8c:	58050513          	addi	a0,a0,1408 # 80007208 <CONSOLE_STATUS+0x1f8>
    80003c90:	00000097          	auipc	ra,0x0
    80003c94:	bb4080e7          	jalr	-1100(ra) # 80003844 <_Z11printStringPKc>
    80003c98:	00000613          	li	a2,0
    80003c9c:	00a00593          	li	a1,10
    80003ca0:	00048513          	mv	a0,s1
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	d50080e7          	jalr	-688(ra) # 800039f4 <_Z8printIntiii>
    80003cac:	00003517          	auipc	a0,0x3
    80003cb0:	4bc50513          	addi	a0,a0,1212 # 80007168 <CONSOLE_STATUS+0x158>
    80003cb4:	00000097          	auipc	ra,0x0
    80003cb8:	b90080e7          	jalr	-1136(ra) # 80003844 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003cbc:	0014849b          	addiw	s1,s1,1
    80003cc0:	0ff4f493          	andi	s1,s1,255
    80003cc4:	00f00793          	li	a5,15
    80003cc8:	fc97f0e3          	bgeu	a5,s1,80003c88 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003ccc:	00003517          	auipc	a0,0x3
    80003cd0:	56450513          	addi	a0,a0,1380 # 80007230 <CONSOLE_STATUS+0x220>
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	b70080e7          	jalr	-1168(ra) # 80003844 <_Z11printStringPKc>
    finishedD = true;
    80003cdc:	00100793          	li	a5,1
    80003ce0:	00005717          	auipc	a4,0x5
    80003ce4:	daf70823          	sb	a5,-592(a4) # 80008a90 <_ZL9finishedD>
    thread_dispatch();
    80003ce8:	ffffd097          	auipc	ra,0xffffd
    80003cec:	648080e7          	jalr	1608(ra) # 80001330 <_Z15thread_dispatchv>
}
    80003cf0:	01813083          	ld	ra,24(sp)
    80003cf4:	01013403          	ld	s0,16(sp)
    80003cf8:	00813483          	ld	s1,8(sp)
    80003cfc:	00013903          	ld	s2,0(sp)
    80003d00:	02010113          	addi	sp,sp,32
    80003d04:	00008067          	ret

0000000080003d08 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003d08:	fe010113          	addi	sp,sp,-32
    80003d0c:	00113c23          	sd	ra,24(sp)
    80003d10:	00813823          	sd	s0,16(sp)
    80003d14:	00913423          	sd	s1,8(sp)
    80003d18:	01213023          	sd	s2,0(sp)
    80003d1c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003d20:	00000493          	li	s1,0
    80003d24:	0400006f          	j	80003d64 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003d28:	00003517          	auipc	a0,0x3
    80003d2c:	4b050513          	addi	a0,a0,1200 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	b14080e7          	jalr	-1260(ra) # 80003844 <_Z11printStringPKc>
    80003d38:	00000613          	li	a2,0
    80003d3c:	00a00593          	li	a1,10
    80003d40:	00048513          	mv	a0,s1
    80003d44:	00000097          	auipc	ra,0x0
    80003d48:	cb0080e7          	jalr	-848(ra) # 800039f4 <_Z8printIntiii>
    80003d4c:	00003517          	auipc	a0,0x3
    80003d50:	41c50513          	addi	a0,a0,1052 # 80007168 <CONSOLE_STATUS+0x158>
    80003d54:	00000097          	auipc	ra,0x0
    80003d58:	af0080e7          	jalr	-1296(ra) # 80003844 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003d5c:	0014849b          	addiw	s1,s1,1
    80003d60:	0ff4f493          	andi	s1,s1,255
    80003d64:	00200793          	li	a5,2
    80003d68:	fc97f0e3          	bgeu	a5,s1,80003d28 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003d6c:	00003517          	auipc	a0,0x3
    80003d70:	47450513          	addi	a0,a0,1140 # 800071e0 <CONSOLE_STATUS+0x1d0>
    80003d74:	00000097          	auipc	ra,0x0
    80003d78:	ad0080e7          	jalr	-1328(ra) # 80003844 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003d7c:	00700313          	li	t1,7
    thread_dispatch();
    80003d80:	ffffd097          	auipc	ra,0xffffd
    80003d84:	5b0080e7          	jalr	1456(ra) # 80001330 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d88:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003d8c:	00003517          	auipc	a0,0x3
    80003d90:	46450513          	addi	a0,a0,1124 # 800071f0 <CONSOLE_STATUS+0x1e0>
    80003d94:	00000097          	auipc	ra,0x0
    80003d98:	ab0080e7          	jalr	-1360(ra) # 80003844 <_Z11printStringPKc>
    80003d9c:	00000613          	li	a2,0
    80003da0:	00a00593          	li	a1,10
    80003da4:	0009051b          	sext.w	a0,s2
    80003da8:	00000097          	auipc	ra,0x0
    80003dac:	c4c080e7          	jalr	-948(ra) # 800039f4 <_Z8printIntiii>
    80003db0:	00003517          	auipc	a0,0x3
    80003db4:	3b850513          	addi	a0,a0,952 # 80007168 <CONSOLE_STATUS+0x158>
    80003db8:	00000097          	auipc	ra,0x0
    80003dbc:	a8c080e7          	jalr	-1396(ra) # 80003844 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003dc0:	00c00513          	li	a0,12
    80003dc4:	00000097          	auipc	ra,0x0
    80003dc8:	d88080e7          	jalr	-632(ra) # 80003b4c <_ZL9fibonaccim>
    80003dcc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003dd0:	00003517          	auipc	a0,0x3
    80003dd4:	42850513          	addi	a0,a0,1064 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80003dd8:	00000097          	auipc	ra,0x0
    80003ddc:	a6c080e7          	jalr	-1428(ra) # 80003844 <_Z11printStringPKc>
    80003de0:	00000613          	li	a2,0
    80003de4:	00a00593          	li	a1,10
    80003de8:	0009051b          	sext.w	a0,s2
    80003dec:	00000097          	auipc	ra,0x0
    80003df0:	c08080e7          	jalr	-1016(ra) # 800039f4 <_Z8printIntiii>
    80003df4:	00003517          	auipc	a0,0x3
    80003df8:	37450513          	addi	a0,a0,884 # 80007168 <CONSOLE_STATUS+0x158>
    80003dfc:	00000097          	auipc	ra,0x0
    80003e00:	a48080e7          	jalr	-1464(ra) # 80003844 <_Z11printStringPKc>
    80003e04:	0400006f          	j	80003e44 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003e08:	00003517          	auipc	a0,0x3
    80003e0c:	3d050513          	addi	a0,a0,976 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80003e10:	00000097          	auipc	ra,0x0
    80003e14:	a34080e7          	jalr	-1484(ra) # 80003844 <_Z11printStringPKc>
    80003e18:	00000613          	li	a2,0
    80003e1c:	00a00593          	li	a1,10
    80003e20:	00048513          	mv	a0,s1
    80003e24:	00000097          	auipc	ra,0x0
    80003e28:	bd0080e7          	jalr	-1072(ra) # 800039f4 <_Z8printIntiii>
    80003e2c:	00003517          	auipc	a0,0x3
    80003e30:	33c50513          	addi	a0,a0,828 # 80007168 <CONSOLE_STATUS+0x158>
    80003e34:	00000097          	auipc	ra,0x0
    80003e38:	a10080e7          	jalr	-1520(ra) # 80003844 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003e3c:	0014849b          	addiw	s1,s1,1
    80003e40:	0ff4f493          	andi	s1,s1,255
    80003e44:	00500793          	li	a5,5
    80003e48:	fc97f0e3          	bgeu	a5,s1,80003e08 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003e4c:	00003517          	auipc	a0,0x3
    80003e50:	36450513          	addi	a0,a0,868 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80003e54:	00000097          	auipc	ra,0x0
    80003e58:	9f0080e7          	jalr	-1552(ra) # 80003844 <_Z11printStringPKc>
    finishedC = true;
    80003e5c:	00100793          	li	a5,1
    80003e60:	00005717          	auipc	a4,0x5
    80003e64:	c2f708a3          	sb	a5,-975(a4) # 80008a91 <_ZL9finishedC>
    thread_dispatch();
    80003e68:	ffffd097          	auipc	ra,0xffffd
    80003e6c:	4c8080e7          	jalr	1224(ra) # 80001330 <_Z15thread_dispatchv>
}
    80003e70:	01813083          	ld	ra,24(sp)
    80003e74:	01013403          	ld	s0,16(sp)
    80003e78:	00813483          	ld	s1,8(sp)
    80003e7c:	00013903          	ld	s2,0(sp)
    80003e80:	02010113          	addi	sp,sp,32
    80003e84:	00008067          	ret

0000000080003e88 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003e88:	fe010113          	addi	sp,sp,-32
    80003e8c:	00113c23          	sd	ra,24(sp)
    80003e90:	00813823          	sd	s0,16(sp)
    80003e94:	00913423          	sd	s1,8(sp)
    80003e98:	01213023          	sd	s2,0(sp)
    80003e9c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003ea0:	00000913          	li	s2,0
    80003ea4:	0400006f          	j	80003ee4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003ea8:	ffffd097          	auipc	ra,0xffffd
    80003eac:	488080e7          	jalr	1160(ra) # 80001330 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003eb0:	00148493          	addi	s1,s1,1
    80003eb4:	000027b7          	lui	a5,0x2
    80003eb8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003ebc:	0097ee63          	bltu	a5,s1,80003ed8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003ec0:	00000713          	li	a4,0
    80003ec4:	000077b7          	lui	a5,0x7
    80003ec8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ecc:	fce7eee3          	bltu	a5,a4,80003ea8 <_ZL11workerBodyBPv+0x20>
    80003ed0:	00170713          	addi	a4,a4,1
    80003ed4:	ff1ff06f          	j	80003ec4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003ed8:	00a00793          	li	a5,10
    80003edc:	04f90663          	beq	s2,a5,80003f28 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003ee0:	00190913          	addi	s2,s2,1
    80003ee4:	00f00793          	li	a5,15
    80003ee8:	0527e463          	bltu	a5,s2,80003f30 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80003eec:	00003517          	auipc	a0,0x3
    80003ef0:	2d450513          	addi	a0,a0,724 # 800071c0 <CONSOLE_STATUS+0x1b0>
    80003ef4:	00000097          	auipc	ra,0x0
    80003ef8:	950080e7          	jalr	-1712(ra) # 80003844 <_Z11printStringPKc>
    80003efc:	00000613          	li	a2,0
    80003f00:	00a00593          	li	a1,10
    80003f04:	0009051b          	sext.w	a0,s2
    80003f08:	00000097          	auipc	ra,0x0
    80003f0c:	aec080e7          	jalr	-1300(ra) # 800039f4 <_Z8printIntiii>
    80003f10:	00003517          	auipc	a0,0x3
    80003f14:	25850513          	addi	a0,a0,600 # 80007168 <CONSOLE_STATUS+0x158>
    80003f18:	00000097          	auipc	ra,0x0
    80003f1c:	92c080e7          	jalr	-1748(ra) # 80003844 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f20:	00000493          	li	s1,0
    80003f24:	f91ff06f          	j	80003eb4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003f28:	14102ff3          	csrr	t6,sepc
    80003f2c:	fb5ff06f          	j	80003ee0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80003f30:	00003517          	auipc	a0,0x3
    80003f34:	29850513          	addi	a0,a0,664 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80003f38:	00000097          	auipc	ra,0x0
    80003f3c:	90c080e7          	jalr	-1780(ra) # 80003844 <_Z11printStringPKc>
    finishedB = true;
    80003f40:	00100793          	li	a5,1
    80003f44:	00005717          	auipc	a4,0x5
    80003f48:	b4f70723          	sb	a5,-1202(a4) # 80008a92 <_ZL9finishedB>
    thread_dispatch();
    80003f4c:	ffffd097          	auipc	ra,0xffffd
    80003f50:	3e4080e7          	jalr	996(ra) # 80001330 <_Z15thread_dispatchv>
}
    80003f54:	01813083          	ld	ra,24(sp)
    80003f58:	01013403          	ld	s0,16(sp)
    80003f5c:	00813483          	ld	s1,8(sp)
    80003f60:	00013903          	ld	s2,0(sp)
    80003f64:	02010113          	addi	sp,sp,32
    80003f68:	00008067          	ret

0000000080003f6c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003f6c:	fe010113          	addi	sp,sp,-32
    80003f70:	00113c23          	sd	ra,24(sp)
    80003f74:	00813823          	sd	s0,16(sp)
    80003f78:	00913423          	sd	s1,8(sp)
    80003f7c:	01213023          	sd	s2,0(sp)
    80003f80:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003f84:	00000913          	li	s2,0
    80003f88:	0380006f          	j	80003fc0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003f8c:	ffffd097          	auipc	ra,0xffffd
    80003f90:	3a4080e7          	jalr	932(ra) # 80001330 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f94:	00148493          	addi	s1,s1,1
    80003f98:	000027b7          	lui	a5,0x2
    80003f9c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003fa0:	0097ee63          	bltu	a5,s1,80003fbc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003fa4:	00000713          	li	a4,0
    80003fa8:	000077b7          	lui	a5,0x7
    80003fac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003fb0:	fce7eee3          	bltu	a5,a4,80003f8c <_ZL11workerBodyAPv+0x20>
    80003fb4:	00170713          	addi	a4,a4,1
    80003fb8:	ff1ff06f          	j	80003fa8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003fbc:	00190913          	addi	s2,s2,1
    80003fc0:	00900793          	li	a5,9
    80003fc4:	0527e063          	bltu	a5,s2,80004004 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003fc8:	00003517          	auipc	a0,0x3
    80003fcc:	1e050513          	addi	a0,a0,480 # 800071a8 <CONSOLE_STATUS+0x198>
    80003fd0:	00000097          	auipc	ra,0x0
    80003fd4:	874080e7          	jalr	-1932(ra) # 80003844 <_Z11printStringPKc>
    80003fd8:	00000613          	li	a2,0
    80003fdc:	00a00593          	li	a1,10
    80003fe0:	0009051b          	sext.w	a0,s2
    80003fe4:	00000097          	auipc	ra,0x0
    80003fe8:	a10080e7          	jalr	-1520(ra) # 800039f4 <_Z8printIntiii>
    80003fec:	00003517          	auipc	a0,0x3
    80003ff0:	17c50513          	addi	a0,a0,380 # 80007168 <CONSOLE_STATUS+0x158>
    80003ff4:	00000097          	auipc	ra,0x0
    80003ff8:	850080e7          	jalr	-1968(ra) # 80003844 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ffc:	00000493          	li	s1,0
    80004000:	f99ff06f          	j	80003f98 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004004:	00003517          	auipc	a0,0x3
    80004008:	1ac50513          	addi	a0,a0,428 # 800071b0 <CONSOLE_STATUS+0x1a0>
    8000400c:	00000097          	auipc	ra,0x0
    80004010:	838080e7          	jalr	-1992(ra) # 80003844 <_Z11printStringPKc>
    finishedA = true;
    80004014:	00100793          	li	a5,1
    80004018:	00005717          	auipc	a4,0x5
    8000401c:	a6f70da3          	sb	a5,-1413(a4) # 80008a93 <_ZL9finishedA>
}
    80004020:	01813083          	ld	ra,24(sp)
    80004024:	01013403          	ld	s0,16(sp)
    80004028:	00813483          	ld	s1,8(sp)
    8000402c:	00013903          	ld	s2,0(sp)
    80004030:	02010113          	addi	sp,sp,32
    80004034:	00008067          	ret

0000000080004038 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80004038:	fd010113          	addi	sp,sp,-48
    8000403c:	02113423          	sd	ra,40(sp)
    80004040:	02813023          	sd	s0,32(sp)
    80004044:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004048:	00000613          	li	a2,0
    8000404c:	00000597          	auipc	a1,0x0
    80004050:	f2058593          	addi	a1,a1,-224 # 80003f6c <_ZL11workerBodyAPv>
    80004054:	fd040513          	addi	a0,s0,-48
    80004058:	ffffd097          	auipc	ra,0xffffd
    8000405c:	204080e7          	jalr	516(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80004060:	00003517          	auipc	a0,0x3
    80004064:	1e050513          	addi	a0,a0,480 # 80007240 <CONSOLE_STATUS+0x230>
    80004068:	fffff097          	auipc	ra,0xfffff
    8000406c:	7dc080e7          	jalr	2012(ra) # 80003844 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004070:	00000613          	li	a2,0
    80004074:	00000597          	auipc	a1,0x0
    80004078:	e1458593          	addi	a1,a1,-492 # 80003e88 <_ZL11workerBodyBPv>
    8000407c:	fd840513          	addi	a0,s0,-40
    80004080:	ffffd097          	auipc	ra,0xffffd
    80004084:	1dc080e7          	jalr	476(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    80004088:	00003517          	auipc	a0,0x3
    8000408c:	1d050513          	addi	a0,a0,464 # 80007258 <CONSOLE_STATUS+0x248>
    80004090:	fffff097          	auipc	ra,0xfffff
    80004094:	7b4080e7          	jalr	1972(ra) # 80003844 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004098:	00000613          	li	a2,0
    8000409c:	00000597          	auipc	a1,0x0
    800040a0:	c6c58593          	addi	a1,a1,-916 # 80003d08 <_ZL11workerBodyCPv>
    800040a4:	fe040513          	addi	a0,s0,-32
    800040a8:	ffffd097          	auipc	ra,0xffffd
    800040ac:	1b4080e7          	jalr	436(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    800040b0:	00003517          	auipc	a0,0x3
    800040b4:	1c050513          	addi	a0,a0,448 # 80007270 <CONSOLE_STATUS+0x260>
    800040b8:	fffff097          	auipc	ra,0xfffff
    800040bc:	78c080e7          	jalr	1932(ra) # 80003844 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800040c0:	00000613          	li	a2,0
    800040c4:	00000597          	auipc	a1,0x0
    800040c8:	afc58593          	addi	a1,a1,-1284 # 80003bc0 <_ZL11workerBodyDPv>
    800040cc:	fe840513          	addi	a0,s0,-24
    800040d0:	ffffd097          	auipc	ra,0xffffd
    800040d4:	18c080e7          	jalr	396(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    800040d8:	00003517          	auipc	a0,0x3
    800040dc:	1b050513          	addi	a0,a0,432 # 80007288 <CONSOLE_STATUS+0x278>
    800040e0:	fffff097          	auipc	ra,0xfffff
    800040e4:	764080e7          	jalr	1892(ra) # 80003844 <_Z11printStringPKc>
    800040e8:	00c0006f          	j	800040f4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800040ec:	ffffd097          	auipc	ra,0xffffd
    800040f0:	244080e7          	jalr	580(ra) # 80001330 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800040f4:	00005797          	auipc	a5,0x5
    800040f8:	99f7c783          	lbu	a5,-1633(a5) # 80008a93 <_ZL9finishedA>
    800040fc:	fe0788e3          	beqz	a5,800040ec <_Z16System_Mode_testv+0xb4>
    80004100:	00005797          	auipc	a5,0x5
    80004104:	9927c783          	lbu	a5,-1646(a5) # 80008a92 <_ZL9finishedB>
    80004108:	fe0782e3          	beqz	a5,800040ec <_Z16System_Mode_testv+0xb4>
    8000410c:	00005797          	auipc	a5,0x5
    80004110:	9857c783          	lbu	a5,-1659(a5) # 80008a91 <_ZL9finishedC>
    80004114:	fc078ce3          	beqz	a5,800040ec <_Z16System_Mode_testv+0xb4>
    80004118:	00005797          	auipc	a5,0x5
    8000411c:	9787c783          	lbu	a5,-1672(a5) # 80008a90 <_ZL9finishedD>
    80004120:	fc0786e3          	beqz	a5,800040ec <_Z16System_Mode_testv+0xb4>
    }

}
    80004124:	02813083          	ld	ra,40(sp)
    80004128:	02013403          	ld	s0,32(sp)
    8000412c:	03010113          	addi	sp,sp,48
    80004130:	00008067          	ret

0000000080004134 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004134:	fe010113          	addi	sp,sp,-32
    80004138:	00113c23          	sd	ra,24(sp)
    8000413c:	00813823          	sd	s0,16(sp)
    80004140:	00913423          	sd	s1,8(sp)
    80004144:	01213023          	sd	s2,0(sp)
    80004148:	02010413          	addi	s0,sp,32
    8000414c:	00050493          	mv	s1,a0
    80004150:	00058913          	mv	s2,a1
    80004154:	0015879b          	addiw	a5,a1,1
    80004158:	0007851b          	sext.w	a0,a5
    8000415c:	00f4a023          	sw	a5,0(s1)
    80004160:	0004a823          	sw	zero,16(s1)
    80004164:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004168:	00251513          	slli	a0,a0,0x2
    8000416c:	ffffd097          	auipc	ra,0xffffd
    80004170:	ff8080e7          	jalr	-8(ra) # 80001164 <_Z9mem_allocm>
    80004174:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004178:	00000593          	li	a1,0
    8000417c:	02048513          	addi	a0,s1,32
    80004180:	ffffd097          	auipc	ra,0xffffd
    80004184:	1d0080e7          	jalr	464(ra) # 80001350 <_Z8sem_openPP10KSemaphorej>
    sem_open(&spaceAvailable, _cap);
    80004188:	00090593          	mv	a1,s2
    8000418c:	01848513          	addi	a0,s1,24
    80004190:	ffffd097          	auipc	ra,0xffffd
    80004194:	1c0080e7          	jalr	448(ra) # 80001350 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexHead, 1);
    80004198:	00100593          	li	a1,1
    8000419c:	02848513          	addi	a0,s1,40
    800041a0:	ffffd097          	auipc	ra,0xffffd
    800041a4:	1b0080e7          	jalr	432(ra) # 80001350 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexTail, 1);
    800041a8:	00100593          	li	a1,1
    800041ac:	03048513          	addi	a0,s1,48
    800041b0:	ffffd097          	auipc	ra,0xffffd
    800041b4:	1a0080e7          	jalr	416(ra) # 80001350 <_Z8sem_openPP10KSemaphorej>
}
    800041b8:	01813083          	ld	ra,24(sp)
    800041bc:	01013403          	ld	s0,16(sp)
    800041c0:	00813483          	ld	s1,8(sp)
    800041c4:	00013903          	ld	s2,0(sp)
    800041c8:	02010113          	addi	sp,sp,32
    800041cc:	00008067          	ret

00000000800041d0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800041d0:	fe010113          	addi	sp,sp,-32
    800041d4:	00113c23          	sd	ra,24(sp)
    800041d8:	00813823          	sd	s0,16(sp)
    800041dc:	00913423          	sd	s1,8(sp)
    800041e0:	01213023          	sd	s2,0(sp)
    800041e4:	02010413          	addi	s0,sp,32
    800041e8:	00050493          	mv	s1,a0
    800041ec:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800041f0:	01853503          	ld	a0,24(a0)
    800041f4:	ffffd097          	auipc	ra,0xffffd
    800041f8:	1c0080e7          	jalr	448(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexTail);
    800041fc:	0304b503          	ld	a0,48(s1)
    80004200:	ffffd097          	auipc	ra,0xffffd
    80004204:	1b4080e7          	jalr	436(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>
    buffer[tail] = val;
    80004208:	0084b783          	ld	a5,8(s1)
    8000420c:	0144a703          	lw	a4,20(s1)
    80004210:	00271713          	slli	a4,a4,0x2
    80004214:	00e787b3          	add	a5,a5,a4
    80004218:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000421c:	0144a783          	lw	a5,20(s1)
    80004220:	0017879b          	addiw	a5,a5,1
    80004224:	0004a703          	lw	a4,0(s1)
    80004228:	02e7e7bb          	remw	a5,a5,a4
    8000422c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004230:	0304b503          	ld	a0,48(s1)
    80004234:	ffffd097          	auipc	ra,0xffffd
    80004238:	1ac080e7          	jalr	428(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>

    sem_signal(itemAvailable);
    8000423c:	0204b503          	ld	a0,32(s1)
    80004240:	ffffd097          	auipc	ra,0xffffd
    80004244:	1a0080e7          	jalr	416(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>

}
    80004248:	01813083          	ld	ra,24(sp)
    8000424c:	01013403          	ld	s0,16(sp)
    80004250:	00813483          	ld	s1,8(sp)
    80004254:	00013903          	ld	s2,0(sp)
    80004258:	02010113          	addi	sp,sp,32
    8000425c:	00008067          	ret

0000000080004260 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004260:	fe010113          	addi	sp,sp,-32
    80004264:	00113c23          	sd	ra,24(sp)
    80004268:	00813823          	sd	s0,16(sp)
    8000426c:	00913423          	sd	s1,8(sp)
    80004270:	01213023          	sd	s2,0(sp)
    80004274:	02010413          	addi	s0,sp,32
    80004278:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000427c:	02053503          	ld	a0,32(a0)
    80004280:	ffffd097          	auipc	ra,0xffffd
    80004284:	134080e7          	jalr	308(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexHead);
    80004288:	0284b503          	ld	a0,40(s1)
    8000428c:	ffffd097          	auipc	ra,0xffffd
    80004290:	128080e7          	jalr	296(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>

    int ret = buffer[head];
    80004294:	0084b703          	ld	a4,8(s1)
    80004298:	0104a783          	lw	a5,16(s1)
    8000429c:	00279693          	slli	a3,a5,0x2
    800042a0:	00d70733          	add	a4,a4,a3
    800042a4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800042a8:	0017879b          	addiw	a5,a5,1
    800042ac:	0004a703          	lw	a4,0(s1)
    800042b0:	02e7e7bb          	remw	a5,a5,a4
    800042b4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800042b8:	0284b503          	ld	a0,40(s1)
    800042bc:	ffffd097          	auipc	ra,0xffffd
    800042c0:	124080e7          	jalr	292(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>

    sem_signal(spaceAvailable);
    800042c4:	0184b503          	ld	a0,24(s1)
    800042c8:	ffffd097          	auipc	ra,0xffffd
    800042cc:	118080e7          	jalr	280(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    800042d0:	00090513          	mv	a0,s2
    800042d4:	01813083          	ld	ra,24(sp)
    800042d8:	01013403          	ld	s0,16(sp)
    800042dc:	00813483          	ld	s1,8(sp)
    800042e0:	00013903          	ld	s2,0(sp)
    800042e4:	02010113          	addi	sp,sp,32
    800042e8:	00008067          	ret

00000000800042ec <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800042ec:	fe010113          	addi	sp,sp,-32
    800042f0:	00113c23          	sd	ra,24(sp)
    800042f4:	00813823          	sd	s0,16(sp)
    800042f8:	00913423          	sd	s1,8(sp)
    800042fc:	01213023          	sd	s2,0(sp)
    80004300:	02010413          	addi	s0,sp,32
    80004304:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004308:	02853503          	ld	a0,40(a0)
    8000430c:	ffffd097          	auipc	ra,0xffffd
    80004310:	0a8080e7          	jalr	168(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>
    sem_wait(mutexTail);
    80004314:	0304b503          	ld	a0,48(s1)
    80004318:	ffffd097          	auipc	ra,0xffffd
    8000431c:	09c080e7          	jalr	156(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>

    if (tail >= head) {
    80004320:	0144a783          	lw	a5,20(s1)
    80004324:	0104a903          	lw	s2,16(s1)
    80004328:	0327ce63          	blt	a5,s2,80004364 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000432c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004330:	0304b503          	ld	a0,48(s1)
    80004334:	ffffd097          	auipc	ra,0xffffd
    80004338:	0ac080e7          	jalr	172(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>
    sem_signal(mutexHead);
    8000433c:	0284b503          	ld	a0,40(s1)
    80004340:	ffffd097          	auipc	ra,0xffffd
    80004344:	0a0080e7          	jalr	160(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    80004348:	00090513          	mv	a0,s2
    8000434c:	01813083          	ld	ra,24(sp)
    80004350:	01013403          	ld	s0,16(sp)
    80004354:	00813483          	ld	s1,8(sp)
    80004358:	00013903          	ld	s2,0(sp)
    8000435c:	02010113          	addi	sp,sp,32
    80004360:	00008067          	ret
        ret = cap - head + tail;
    80004364:	0004a703          	lw	a4,0(s1)
    80004368:	4127093b          	subw	s2,a4,s2
    8000436c:	00f9093b          	addw	s2,s2,a5
    80004370:	fc1ff06f          	j	80004330 <_ZN6Buffer6getCntEv+0x44>

0000000080004374 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004374:	fe010113          	addi	sp,sp,-32
    80004378:	00113c23          	sd	ra,24(sp)
    8000437c:	00813823          	sd	s0,16(sp)
    80004380:	00913423          	sd	s1,8(sp)
    80004384:	02010413          	addi	s0,sp,32
    80004388:	00050493          	mv	s1,a0
    putc('\n');
    8000438c:	00a00513          	li	a0,10
    80004390:	ffffd097          	auipc	ra,0xffffd
    80004394:	0a4080e7          	jalr	164(ra) # 80001434 <_Z4putcc>
    printString("Buffer deleted!\n");
    80004398:	00003517          	auipc	a0,0x3
    8000439c:	f5850513          	addi	a0,a0,-168 # 800072f0 <CONSOLE_STATUS+0x2e0>
    800043a0:	fffff097          	auipc	ra,0xfffff
    800043a4:	4a4080e7          	jalr	1188(ra) # 80003844 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800043a8:	00048513          	mv	a0,s1
    800043ac:	00000097          	auipc	ra,0x0
    800043b0:	f40080e7          	jalr	-192(ra) # 800042ec <_ZN6Buffer6getCntEv>
    800043b4:	02a05c63          	blez	a0,800043ec <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800043b8:	0084b783          	ld	a5,8(s1)
    800043bc:	0104a703          	lw	a4,16(s1)
    800043c0:	00271713          	slli	a4,a4,0x2
    800043c4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800043c8:	0007c503          	lbu	a0,0(a5)
    800043cc:	ffffd097          	auipc	ra,0xffffd
    800043d0:	068080e7          	jalr	104(ra) # 80001434 <_Z4putcc>
        head = (head + 1) % cap;
    800043d4:	0104a783          	lw	a5,16(s1)
    800043d8:	0017879b          	addiw	a5,a5,1
    800043dc:	0004a703          	lw	a4,0(s1)
    800043e0:	02e7e7bb          	remw	a5,a5,a4
    800043e4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800043e8:	fc1ff06f          	j	800043a8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800043ec:	02100513          	li	a0,33
    800043f0:	ffffd097          	auipc	ra,0xffffd
    800043f4:	044080e7          	jalr	68(ra) # 80001434 <_Z4putcc>
    putc('\n');
    800043f8:	00a00513          	li	a0,10
    800043fc:	ffffd097          	auipc	ra,0xffffd
    80004400:	038080e7          	jalr	56(ra) # 80001434 <_Z4putcc>
    mem_free(buffer);
    80004404:	0084b503          	ld	a0,8(s1)
    80004408:	ffffd097          	auipc	ra,0xffffd
    8000440c:	da0080e7          	jalr	-608(ra) # 800011a8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004410:	0204b503          	ld	a0,32(s1)
    80004414:	ffffd097          	auipc	ra,0xffffd
    80004418:	f74080e7          	jalr	-140(ra) # 80001388 <_Z9sem_closeP10KSemaphore>
    sem_close(spaceAvailable);
    8000441c:	0184b503          	ld	a0,24(s1)
    80004420:	ffffd097          	auipc	ra,0xffffd
    80004424:	f68080e7          	jalr	-152(ra) # 80001388 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexTail);
    80004428:	0304b503          	ld	a0,48(s1)
    8000442c:	ffffd097          	auipc	ra,0xffffd
    80004430:	f5c080e7          	jalr	-164(ra) # 80001388 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexHead);
    80004434:	0284b503          	ld	a0,40(s1)
    80004438:	ffffd097          	auipc	ra,0xffffd
    8000443c:	f50080e7          	jalr	-176(ra) # 80001388 <_Z9sem_closeP10KSemaphore>
}
    80004440:	01813083          	ld	ra,24(sp)
    80004444:	01013403          	ld	s0,16(sp)
    80004448:	00813483          	ld	s1,8(sp)
    8000444c:	02010113          	addi	sp,sp,32
    80004450:	00008067          	ret

0000000080004454 <start>:
    80004454:	ff010113          	addi	sp,sp,-16
    80004458:	00813423          	sd	s0,8(sp)
    8000445c:	01010413          	addi	s0,sp,16
    80004460:	300027f3          	csrr	a5,mstatus
    80004464:	ffffe737          	lui	a4,0xffffe
    80004468:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff4aff>
    8000446c:	00e7f7b3          	and	a5,a5,a4
    80004470:	00001737          	lui	a4,0x1
    80004474:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004478:	00e7e7b3          	or	a5,a5,a4
    8000447c:	30079073          	csrw	mstatus,a5
    80004480:	00000797          	auipc	a5,0x0
    80004484:	16078793          	addi	a5,a5,352 # 800045e0 <system_main>
    80004488:	34179073          	csrw	mepc,a5
    8000448c:	00000793          	li	a5,0
    80004490:	18079073          	csrw	satp,a5
    80004494:	000107b7          	lui	a5,0x10
    80004498:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000449c:	30279073          	csrw	medeleg,a5
    800044a0:	30379073          	csrw	mideleg,a5
    800044a4:	104027f3          	csrr	a5,sie
    800044a8:	2227e793          	ori	a5,a5,546
    800044ac:	10479073          	csrw	sie,a5
    800044b0:	fff00793          	li	a5,-1
    800044b4:	00a7d793          	srli	a5,a5,0xa
    800044b8:	3b079073          	csrw	pmpaddr0,a5
    800044bc:	00f00793          	li	a5,15
    800044c0:	3a079073          	csrw	pmpcfg0,a5
    800044c4:	f14027f3          	csrr	a5,mhartid
    800044c8:	0200c737          	lui	a4,0x200c
    800044cc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800044d0:	0007869b          	sext.w	a3,a5
    800044d4:	00269713          	slli	a4,a3,0x2
    800044d8:	000f4637          	lui	a2,0xf4
    800044dc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800044e0:	00d70733          	add	a4,a4,a3
    800044e4:	0037979b          	slliw	a5,a5,0x3
    800044e8:	020046b7          	lui	a3,0x2004
    800044ec:	00d787b3          	add	a5,a5,a3
    800044f0:	00c585b3          	add	a1,a1,a2
    800044f4:	00371693          	slli	a3,a4,0x3
    800044f8:	00004717          	auipc	a4,0x4
    800044fc:	5a870713          	addi	a4,a4,1448 # 80008aa0 <timer_scratch>
    80004500:	00b7b023          	sd	a1,0(a5)
    80004504:	00d70733          	add	a4,a4,a3
    80004508:	00f73c23          	sd	a5,24(a4)
    8000450c:	02c73023          	sd	a2,32(a4)
    80004510:	34071073          	csrw	mscratch,a4
    80004514:	00000797          	auipc	a5,0x0
    80004518:	6ec78793          	addi	a5,a5,1772 # 80004c00 <timervec>
    8000451c:	30579073          	csrw	mtvec,a5
    80004520:	300027f3          	csrr	a5,mstatus
    80004524:	0087e793          	ori	a5,a5,8
    80004528:	30079073          	csrw	mstatus,a5
    8000452c:	304027f3          	csrr	a5,mie
    80004530:	0807e793          	ori	a5,a5,128
    80004534:	30479073          	csrw	mie,a5
    80004538:	f14027f3          	csrr	a5,mhartid
    8000453c:	0007879b          	sext.w	a5,a5
    80004540:	00078213          	mv	tp,a5
    80004544:	30200073          	mret
    80004548:	00813403          	ld	s0,8(sp)
    8000454c:	01010113          	addi	sp,sp,16
    80004550:	00008067          	ret

0000000080004554 <timerinit>:
    80004554:	ff010113          	addi	sp,sp,-16
    80004558:	00813423          	sd	s0,8(sp)
    8000455c:	01010413          	addi	s0,sp,16
    80004560:	f14027f3          	csrr	a5,mhartid
    80004564:	0200c737          	lui	a4,0x200c
    80004568:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000456c:	0007869b          	sext.w	a3,a5
    80004570:	00269713          	slli	a4,a3,0x2
    80004574:	000f4637          	lui	a2,0xf4
    80004578:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000457c:	00d70733          	add	a4,a4,a3
    80004580:	0037979b          	slliw	a5,a5,0x3
    80004584:	020046b7          	lui	a3,0x2004
    80004588:	00d787b3          	add	a5,a5,a3
    8000458c:	00c585b3          	add	a1,a1,a2
    80004590:	00371693          	slli	a3,a4,0x3
    80004594:	00004717          	auipc	a4,0x4
    80004598:	50c70713          	addi	a4,a4,1292 # 80008aa0 <timer_scratch>
    8000459c:	00b7b023          	sd	a1,0(a5)
    800045a0:	00d70733          	add	a4,a4,a3
    800045a4:	00f73c23          	sd	a5,24(a4)
    800045a8:	02c73023          	sd	a2,32(a4)
    800045ac:	34071073          	csrw	mscratch,a4
    800045b0:	00000797          	auipc	a5,0x0
    800045b4:	65078793          	addi	a5,a5,1616 # 80004c00 <timervec>
    800045b8:	30579073          	csrw	mtvec,a5
    800045bc:	300027f3          	csrr	a5,mstatus
    800045c0:	0087e793          	ori	a5,a5,8
    800045c4:	30079073          	csrw	mstatus,a5
    800045c8:	304027f3          	csrr	a5,mie
    800045cc:	0807e793          	ori	a5,a5,128
    800045d0:	30479073          	csrw	mie,a5
    800045d4:	00813403          	ld	s0,8(sp)
    800045d8:	01010113          	addi	sp,sp,16
    800045dc:	00008067          	ret

00000000800045e0 <system_main>:
    800045e0:	fe010113          	addi	sp,sp,-32
    800045e4:	00813823          	sd	s0,16(sp)
    800045e8:	00913423          	sd	s1,8(sp)
    800045ec:	00113c23          	sd	ra,24(sp)
    800045f0:	02010413          	addi	s0,sp,32
    800045f4:	00000097          	auipc	ra,0x0
    800045f8:	0c4080e7          	jalr	196(ra) # 800046b8 <cpuid>
    800045fc:	00004497          	auipc	s1,0x4
    80004600:	41448493          	addi	s1,s1,1044 # 80008a10 <started>
    80004604:	02050263          	beqz	a0,80004628 <system_main+0x48>
    80004608:	0004a783          	lw	a5,0(s1)
    8000460c:	0007879b          	sext.w	a5,a5
    80004610:	fe078ce3          	beqz	a5,80004608 <system_main+0x28>
    80004614:	0ff0000f          	fence
    80004618:	00003517          	auipc	a0,0x3
    8000461c:	d2050513          	addi	a0,a0,-736 # 80007338 <CONSOLE_STATUS+0x328>
    80004620:	00001097          	auipc	ra,0x1
    80004624:	a7c080e7          	jalr	-1412(ra) # 8000509c <panic>
    80004628:	00001097          	auipc	ra,0x1
    8000462c:	9d0080e7          	jalr	-1584(ra) # 80004ff8 <consoleinit>
    80004630:	00001097          	auipc	ra,0x1
    80004634:	15c080e7          	jalr	348(ra) # 8000578c <printfinit>
    80004638:	00003517          	auipc	a0,0x3
    8000463c:	b3050513          	addi	a0,a0,-1232 # 80007168 <CONSOLE_STATUS+0x158>
    80004640:	00001097          	auipc	ra,0x1
    80004644:	ab8080e7          	jalr	-1352(ra) # 800050f8 <__printf>
    80004648:	00003517          	auipc	a0,0x3
    8000464c:	cc050513          	addi	a0,a0,-832 # 80007308 <CONSOLE_STATUS+0x2f8>
    80004650:	00001097          	auipc	ra,0x1
    80004654:	aa8080e7          	jalr	-1368(ra) # 800050f8 <__printf>
    80004658:	00003517          	auipc	a0,0x3
    8000465c:	b1050513          	addi	a0,a0,-1264 # 80007168 <CONSOLE_STATUS+0x158>
    80004660:	00001097          	auipc	ra,0x1
    80004664:	a98080e7          	jalr	-1384(ra) # 800050f8 <__printf>
    80004668:	00001097          	auipc	ra,0x1
    8000466c:	4b0080e7          	jalr	1200(ra) # 80005b18 <kinit>
    80004670:	00000097          	auipc	ra,0x0
    80004674:	148080e7          	jalr	328(ra) # 800047b8 <trapinit>
    80004678:	00000097          	auipc	ra,0x0
    8000467c:	16c080e7          	jalr	364(ra) # 800047e4 <trapinithart>
    80004680:	00000097          	auipc	ra,0x0
    80004684:	5c0080e7          	jalr	1472(ra) # 80004c40 <plicinit>
    80004688:	00000097          	auipc	ra,0x0
    8000468c:	5e0080e7          	jalr	1504(ra) # 80004c68 <plicinithart>
    80004690:	00000097          	auipc	ra,0x0
    80004694:	078080e7          	jalr	120(ra) # 80004708 <userinit>
    80004698:	0ff0000f          	fence
    8000469c:	00100793          	li	a5,1
    800046a0:	00003517          	auipc	a0,0x3
    800046a4:	c8050513          	addi	a0,a0,-896 # 80007320 <CONSOLE_STATUS+0x310>
    800046a8:	00f4a023          	sw	a5,0(s1)
    800046ac:	00001097          	auipc	ra,0x1
    800046b0:	a4c080e7          	jalr	-1460(ra) # 800050f8 <__printf>
    800046b4:	0000006f          	j	800046b4 <system_main+0xd4>

00000000800046b8 <cpuid>:
    800046b8:	ff010113          	addi	sp,sp,-16
    800046bc:	00813423          	sd	s0,8(sp)
    800046c0:	01010413          	addi	s0,sp,16
    800046c4:	00020513          	mv	a0,tp
    800046c8:	00813403          	ld	s0,8(sp)
    800046cc:	0005051b          	sext.w	a0,a0
    800046d0:	01010113          	addi	sp,sp,16
    800046d4:	00008067          	ret

00000000800046d8 <mycpu>:
    800046d8:	ff010113          	addi	sp,sp,-16
    800046dc:	00813423          	sd	s0,8(sp)
    800046e0:	01010413          	addi	s0,sp,16
    800046e4:	00020793          	mv	a5,tp
    800046e8:	00813403          	ld	s0,8(sp)
    800046ec:	0007879b          	sext.w	a5,a5
    800046f0:	00779793          	slli	a5,a5,0x7
    800046f4:	00005517          	auipc	a0,0x5
    800046f8:	3dc50513          	addi	a0,a0,988 # 80009ad0 <cpus>
    800046fc:	00f50533          	add	a0,a0,a5
    80004700:	01010113          	addi	sp,sp,16
    80004704:	00008067          	ret

0000000080004708 <userinit>:
    80004708:	ff010113          	addi	sp,sp,-16
    8000470c:	00813423          	sd	s0,8(sp)
    80004710:	01010413          	addi	s0,sp,16
    80004714:	00813403          	ld	s0,8(sp)
    80004718:	01010113          	addi	sp,sp,16
    8000471c:	ffffd317          	auipc	t1,0xffffd
    80004720:	1d430067          	jr	468(t1) # 800018f0 <main>

0000000080004724 <either_copyout>:
    80004724:	ff010113          	addi	sp,sp,-16
    80004728:	00813023          	sd	s0,0(sp)
    8000472c:	00113423          	sd	ra,8(sp)
    80004730:	01010413          	addi	s0,sp,16
    80004734:	02051663          	bnez	a0,80004760 <either_copyout+0x3c>
    80004738:	00058513          	mv	a0,a1
    8000473c:	00060593          	mv	a1,a2
    80004740:	0006861b          	sext.w	a2,a3
    80004744:	00002097          	auipc	ra,0x2
    80004748:	c60080e7          	jalr	-928(ra) # 800063a4 <__memmove>
    8000474c:	00813083          	ld	ra,8(sp)
    80004750:	00013403          	ld	s0,0(sp)
    80004754:	00000513          	li	a0,0
    80004758:	01010113          	addi	sp,sp,16
    8000475c:	00008067          	ret
    80004760:	00003517          	auipc	a0,0x3
    80004764:	c0050513          	addi	a0,a0,-1024 # 80007360 <CONSOLE_STATUS+0x350>
    80004768:	00001097          	auipc	ra,0x1
    8000476c:	934080e7          	jalr	-1740(ra) # 8000509c <panic>

0000000080004770 <either_copyin>:
    80004770:	ff010113          	addi	sp,sp,-16
    80004774:	00813023          	sd	s0,0(sp)
    80004778:	00113423          	sd	ra,8(sp)
    8000477c:	01010413          	addi	s0,sp,16
    80004780:	02059463          	bnez	a1,800047a8 <either_copyin+0x38>
    80004784:	00060593          	mv	a1,a2
    80004788:	0006861b          	sext.w	a2,a3
    8000478c:	00002097          	auipc	ra,0x2
    80004790:	c18080e7          	jalr	-1000(ra) # 800063a4 <__memmove>
    80004794:	00813083          	ld	ra,8(sp)
    80004798:	00013403          	ld	s0,0(sp)
    8000479c:	00000513          	li	a0,0
    800047a0:	01010113          	addi	sp,sp,16
    800047a4:	00008067          	ret
    800047a8:	00003517          	auipc	a0,0x3
    800047ac:	be050513          	addi	a0,a0,-1056 # 80007388 <CONSOLE_STATUS+0x378>
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	8ec080e7          	jalr	-1812(ra) # 8000509c <panic>

00000000800047b8 <trapinit>:
    800047b8:	ff010113          	addi	sp,sp,-16
    800047bc:	00813423          	sd	s0,8(sp)
    800047c0:	01010413          	addi	s0,sp,16
    800047c4:	00813403          	ld	s0,8(sp)
    800047c8:	00003597          	auipc	a1,0x3
    800047cc:	be858593          	addi	a1,a1,-1048 # 800073b0 <CONSOLE_STATUS+0x3a0>
    800047d0:	00005517          	auipc	a0,0x5
    800047d4:	38050513          	addi	a0,a0,896 # 80009b50 <tickslock>
    800047d8:	01010113          	addi	sp,sp,16
    800047dc:	00001317          	auipc	t1,0x1
    800047e0:	5cc30067          	jr	1484(t1) # 80005da8 <initlock>

00000000800047e4 <trapinithart>:
    800047e4:	ff010113          	addi	sp,sp,-16
    800047e8:	00813423          	sd	s0,8(sp)
    800047ec:	01010413          	addi	s0,sp,16
    800047f0:	00000797          	auipc	a5,0x0
    800047f4:	30078793          	addi	a5,a5,768 # 80004af0 <kernelvec>
    800047f8:	10579073          	csrw	stvec,a5
    800047fc:	00813403          	ld	s0,8(sp)
    80004800:	01010113          	addi	sp,sp,16
    80004804:	00008067          	ret

0000000080004808 <usertrap>:
    80004808:	ff010113          	addi	sp,sp,-16
    8000480c:	00813423          	sd	s0,8(sp)
    80004810:	01010413          	addi	s0,sp,16
    80004814:	00813403          	ld	s0,8(sp)
    80004818:	01010113          	addi	sp,sp,16
    8000481c:	00008067          	ret

0000000080004820 <usertrapret>:
    80004820:	ff010113          	addi	sp,sp,-16
    80004824:	00813423          	sd	s0,8(sp)
    80004828:	01010413          	addi	s0,sp,16
    8000482c:	00813403          	ld	s0,8(sp)
    80004830:	01010113          	addi	sp,sp,16
    80004834:	00008067          	ret

0000000080004838 <kerneltrap>:
    80004838:	fe010113          	addi	sp,sp,-32
    8000483c:	00813823          	sd	s0,16(sp)
    80004840:	00113c23          	sd	ra,24(sp)
    80004844:	00913423          	sd	s1,8(sp)
    80004848:	02010413          	addi	s0,sp,32
    8000484c:	142025f3          	csrr	a1,scause
    80004850:	100027f3          	csrr	a5,sstatus
    80004854:	0027f793          	andi	a5,a5,2
    80004858:	10079c63          	bnez	a5,80004970 <kerneltrap+0x138>
    8000485c:	142027f3          	csrr	a5,scause
    80004860:	0207ce63          	bltz	a5,8000489c <kerneltrap+0x64>
    80004864:	00003517          	auipc	a0,0x3
    80004868:	b9450513          	addi	a0,a0,-1132 # 800073f8 <CONSOLE_STATUS+0x3e8>
    8000486c:	00001097          	auipc	ra,0x1
    80004870:	88c080e7          	jalr	-1908(ra) # 800050f8 <__printf>
    80004874:	141025f3          	csrr	a1,sepc
    80004878:	14302673          	csrr	a2,stval
    8000487c:	00003517          	auipc	a0,0x3
    80004880:	b8c50513          	addi	a0,a0,-1140 # 80007408 <CONSOLE_STATUS+0x3f8>
    80004884:	00001097          	auipc	ra,0x1
    80004888:	874080e7          	jalr	-1932(ra) # 800050f8 <__printf>
    8000488c:	00003517          	auipc	a0,0x3
    80004890:	b9450513          	addi	a0,a0,-1132 # 80007420 <CONSOLE_STATUS+0x410>
    80004894:	00001097          	auipc	ra,0x1
    80004898:	808080e7          	jalr	-2040(ra) # 8000509c <panic>
    8000489c:	0ff7f713          	andi	a4,a5,255
    800048a0:	00900693          	li	a3,9
    800048a4:	04d70063          	beq	a4,a3,800048e4 <kerneltrap+0xac>
    800048a8:	fff00713          	li	a4,-1
    800048ac:	03f71713          	slli	a4,a4,0x3f
    800048b0:	00170713          	addi	a4,a4,1
    800048b4:	fae798e3          	bne	a5,a4,80004864 <kerneltrap+0x2c>
    800048b8:	00000097          	auipc	ra,0x0
    800048bc:	e00080e7          	jalr	-512(ra) # 800046b8 <cpuid>
    800048c0:	06050663          	beqz	a0,8000492c <kerneltrap+0xf4>
    800048c4:	144027f3          	csrr	a5,sip
    800048c8:	ffd7f793          	andi	a5,a5,-3
    800048cc:	14479073          	csrw	sip,a5
    800048d0:	01813083          	ld	ra,24(sp)
    800048d4:	01013403          	ld	s0,16(sp)
    800048d8:	00813483          	ld	s1,8(sp)
    800048dc:	02010113          	addi	sp,sp,32
    800048e0:	00008067          	ret
    800048e4:	00000097          	auipc	ra,0x0
    800048e8:	3d0080e7          	jalr	976(ra) # 80004cb4 <plic_claim>
    800048ec:	00a00793          	li	a5,10
    800048f0:	00050493          	mv	s1,a0
    800048f4:	06f50863          	beq	a0,a5,80004964 <kerneltrap+0x12c>
    800048f8:	fc050ce3          	beqz	a0,800048d0 <kerneltrap+0x98>
    800048fc:	00050593          	mv	a1,a0
    80004900:	00003517          	auipc	a0,0x3
    80004904:	ad850513          	addi	a0,a0,-1320 # 800073d8 <CONSOLE_STATUS+0x3c8>
    80004908:	00000097          	auipc	ra,0x0
    8000490c:	7f0080e7          	jalr	2032(ra) # 800050f8 <__printf>
    80004910:	01013403          	ld	s0,16(sp)
    80004914:	01813083          	ld	ra,24(sp)
    80004918:	00048513          	mv	a0,s1
    8000491c:	00813483          	ld	s1,8(sp)
    80004920:	02010113          	addi	sp,sp,32
    80004924:	00000317          	auipc	t1,0x0
    80004928:	3c830067          	jr	968(t1) # 80004cec <plic_complete>
    8000492c:	00005517          	auipc	a0,0x5
    80004930:	22450513          	addi	a0,a0,548 # 80009b50 <tickslock>
    80004934:	00001097          	auipc	ra,0x1
    80004938:	498080e7          	jalr	1176(ra) # 80005dcc <acquire>
    8000493c:	00004717          	auipc	a4,0x4
    80004940:	0d870713          	addi	a4,a4,216 # 80008a14 <ticks>
    80004944:	00072783          	lw	a5,0(a4)
    80004948:	00005517          	auipc	a0,0x5
    8000494c:	20850513          	addi	a0,a0,520 # 80009b50 <tickslock>
    80004950:	0017879b          	addiw	a5,a5,1
    80004954:	00f72023          	sw	a5,0(a4)
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	540080e7          	jalr	1344(ra) # 80005e98 <release>
    80004960:	f65ff06f          	j	800048c4 <kerneltrap+0x8c>
    80004964:	00001097          	auipc	ra,0x1
    80004968:	09c080e7          	jalr	156(ra) # 80005a00 <uartintr>
    8000496c:	fa5ff06f          	j	80004910 <kerneltrap+0xd8>
    80004970:	00003517          	auipc	a0,0x3
    80004974:	a4850513          	addi	a0,a0,-1464 # 800073b8 <CONSOLE_STATUS+0x3a8>
    80004978:	00000097          	auipc	ra,0x0
    8000497c:	724080e7          	jalr	1828(ra) # 8000509c <panic>

0000000080004980 <clockintr>:
    80004980:	fe010113          	addi	sp,sp,-32
    80004984:	00813823          	sd	s0,16(sp)
    80004988:	00913423          	sd	s1,8(sp)
    8000498c:	00113c23          	sd	ra,24(sp)
    80004990:	02010413          	addi	s0,sp,32
    80004994:	00005497          	auipc	s1,0x5
    80004998:	1bc48493          	addi	s1,s1,444 # 80009b50 <tickslock>
    8000499c:	00048513          	mv	a0,s1
    800049a0:	00001097          	auipc	ra,0x1
    800049a4:	42c080e7          	jalr	1068(ra) # 80005dcc <acquire>
    800049a8:	00004717          	auipc	a4,0x4
    800049ac:	06c70713          	addi	a4,a4,108 # 80008a14 <ticks>
    800049b0:	00072783          	lw	a5,0(a4)
    800049b4:	01013403          	ld	s0,16(sp)
    800049b8:	01813083          	ld	ra,24(sp)
    800049bc:	00048513          	mv	a0,s1
    800049c0:	0017879b          	addiw	a5,a5,1
    800049c4:	00813483          	ld	s1,8(sp)
    800049c8:	00f72023          	sw	a5,0(a4)
    800049cc:	02010113          	addi	sp,sp,32
    800049d0:	00001317          	auipc	t1,0x1
    800049d4:	4c830067          	jr	1224(t1) # 80005e98 <release>

00000000800049d8 <devintr>:
    800049d8:	142027f3          	csrr	a5,scause
    800049dc:	00000513          	li	a0,0
    800049e0:	0007c463          	bltz	a5,800049e8 <devintr+0x10>
    800049e4:	00008067          	ret
    800049e8:	fe010113          	addi	sp,sp,-32
    800049ec:	00813823          	sd	s0,16(sp)
    800049f0:	00113c23          	sd	ra,24(sp)
    800049f4:	00913423          	sd	s1,8(sp)
    800049f8:	02010413          	addi	s0,sp,32
    800049fc:	0ff7f713          	andi	a4,a5,255
    80004a00:	00900693          	li	a3,9
    80004a04:	04d70c63          	beq	a4,a3,80004a5c <devintr+0x84>
    80004a08:	fff00713          	li	a4,-1
    80004a0c:	03f71713          	slli	a4,a4,0x3f
    80004a10:	00170713          	addi	a4,a4,1
    80004a14:	00e78c63          	beq	a5,a4,80004a2c <devintr+0x54>
    80004a18:	01813083          	ld	ra,24(sp)
    80004a1c:	01013403          	ld	s0,16(sp)
    80004a20:	00813483          	ld	s1,8(sp)
    80004a24:	02010113          	addi	sp,sp,32
    80004a28:	00008067          	ret
    80004a2c:	00000097          	auipc	ra,0x0
    80004a30:	c8c080e7          	jalr	-884(ra) # 800046b8 <cpuid>
    80004a34:	06050663          	beqz	a0,80004aa0 <devintr+0xc8>
    80004a38:	144027f3          	csrr	a5,sip
    80004a3c:	ffd7f793          	andi	a5,a5,-3
    80004a40:	14479073          	csrw	sip,a5
    80004a44:	01813083          	ld	ra,24(sp)
    80004a48:	01013403          	ld	s0,16(sp)
    80004a4c:	00813483          	ld	s1,8(sp)
    80004a50:	00200513          	li	a0,2
    80004a54:	02010113          	addi	sp,sp,32
    80004a58:	00008067          	ret
    80004a5c:	00000097          	auipc	ra,0x0
    80004a60:	258080e7          	jalr	600(ra) # 80004cb4 <plic_claim>
    80004a64:	00a00793          	li	a5,10
    80004a68:	00050493          	mv	s1,a0
    80004a6c:	06f50663          	beq	a0,a5,80004ad8 <devintr+0x100>
    80004a70:	00100513          	li	a0,1
    80004a74:	fa0482e3          	beqz	s1,80004a18 <devintr+0x40>
    80004a78:	00048593          	mv	a1,s1
    80004a7c:	00003517          	auipc	a0,0x3
    80004a80:	95c50513          	addi	a0,a0,-1700 # 800073d8 <CONSOLE_STATUS+0x3c8>
    80004a84:	00000097          	auipc	ra,0x0
    80004a88:	674080e7          	jalr	1652(ra) # 800050f8 <__printf>
    80004a8c:	00048513          	mv	a0,s1
    80004a90:	00000097          	auipc	ra,0x0
    80004a94:	25c080e7          	jalr	604(ra) # 80004cec <plic_complete>
    80004a98:	00100513          	li	a0,1
    80004a9c:	f7dff06f          	j	80004a18 <devintr+0x40>
    80004aa0:	00005517          	auipc	a0,0x5
    80004aa4:	0b050513          	addi	a0,a0,176 # 80009b50 <tickslock>
    80004aa8:	00001097          	auipc	ra,0x1
    80004aac:	324080e7          	jalr	804(ra) # 80005dcc <acquire>
    80004ab0:	00004717          	auipc	a4,0x4
    80004ab4:	f6470713          	addi	a4,a4,-156 # 80008a14 <ticks>
    80004ab8:	00072783          	lw	a5,0(a4)
    80004abc:	00005517          	auipc	a0,0x5
    80004ac0:	09450513          	addi	a0,a0,148 # 80009b50 <tickslock>
    80004ac4:	0017879b          	addiw	a5,a5,1
    80004ac8:	00f72023          	sw	a5,0(a4)
    80004acc:	00001097          	auipc	ra,0x1
    80004ad0:	3cc080e7          	jalr	972(ra) # 80005e98 <release>
    80004ad4:	f65ff06f          	j	80004a38 <devintr+0x60>
    80004ad8:	00001097          	auipc	ra,0x1
    80004adc:	f28080e7          	jalr	-216(ra) # 80005a00 <uartintr>
    80004ae0:	fadff06f          	j	80004a8c <devintr+0xb4>
	...

0000000080004af0 <kernelvec>:
    80004af0:	f0010113          	addi	sp,sp,-256
    80004af4:	00113023          	sd	ra,0(sp)
    80004af8:	00213423          	sd	sp,8(sp)
    80004afc:	00313823          	sd	gp,16(sp)
    80004b00:	00413c23          	sd	tp,24(sp)
    80004b04:	02513023          	sd	t0,32(sp)
    80004b08:	02613423          	sd	t1,40(sp)
    80004b0c:	02713823          	sd	t2,48(sp)
    80004b10:	02813c23          	sd	s0,56(sp)
    80004b14:	04913023          	sd	s1,64(sp)
    80004b18:	04a13423          	sd	a0,72(sp)
    80004b1c:	04b13823          	sd	a1,80(sp)
    80004b20:	04c13c23          	sd	a2,88(sp)
    80004b24:	06d13023          	sd	a3,96(sp)
    80004b28:	06e13423          	sd	a4,104(sp)
    80004b2c:	06f13823          	sd	a5,112(sp)
    80004b30:	07013c23          	sd	a6,120(sp)
    80004b34:	09113023          	sd	a7,128(sp)
    80004b38:	09213423          	sd	s2,136(sp)
    80004b3c:	09313823          	sd	s3,144(sp)
    80004b40:	09413c23          	sd	s4,152(sp)
    80004b44:	0b513023          	sd	s5,160(sp)
    80004b48:	0b613423          	sd	s6,168(sp)
    80004b4c:	0b713823          	sd	s7,176(sp)
    80004b50:	0b813c23          	sd	s8,184(sp)
    80004b54:	0d913023          	sd	s9,192(sp)
    80004b58:	0da13423          	sd	s10,200(sp)
    80004b5c:	0db13823          	sd	s11,208(sp)
    80004b60:	0dc13c23          	sd	t3,216(sp)
    80004b64:	0fd13023          	sd	t4,224(sp)
    80004b68:	0fe13423          	sd	t5,232(sp)
    80004b6c:	0ff13823          	sd	t6,240(sp)
    80004b70:	cc9ff0ef          	jal	ra,80004838 <kerneltrap>
    80004b74:	00013083          	ld	ra,0(sp)
    80004b78:	00813103          	ld	sp,8(sp)
    80004b7c:	01013183          	ld	gp,16(sp)
    80004b80:	02013283          	ld	t0,32(sp)
    80004b84:	02813303          	ld	t1,40(sp)
    80004b88:	03013383          	ld	t2,48(sp)
    80004b8c:	03813403          	ld	s0,56(sp)
    80004b90:	04013483          	ld	s1,64(sp)
    80004b94:	04813503          	ld	a0,72(sp)
    80004b98:	05013583          	ld	a1,80(sp)
    80004b9c:	05813603          	ld	a2,88(sp)
    80004ba0:	06013683          	ld	a3,96(sp)
    80004ba4:	06813703          	ld	a4,104(sp)
    80004ba8:	07013783          	ld	a5,112(sp)
    80004bac:	07813803          	ld	a6,120(sp)
    80004bb0:	08013883          	ld	a7,128(sp)
    80004bb4:	08813903          	ld	s2,136(sp)
    80004bb8:	09013983          	ld	s3,144(sp)
    80004bbc:	09813a03          	ld	s4,152(sp)
    80004bc0:	0a013a83          	ld	s5,160(sp)
    80004bc4:	0a813b03          	ld	s6,168(sp)
    80004bc8:	0b013b83          	ld	s7,176(sp)
    80004bcc:	0b813c03          	ld	s8,184(sp)
    80004bd0:	0c013c83          	ld	s9,192(sp)
    80004bd4:	0c813d03          	ld	s10,200(sp)
    80004bd8:	0d013d83          	ld	s11,208(sp)
    80004bdc:	0d813e03          	ld	t3,216(sp)
    80004be0:	0e013e83          	ld	t4,224(sp)
    80004be4:	0e813f03          	ld	t5,232(sp)
    80004be8:	0f013f83          	ld	t6,240(sp)
    80004bec:	10010113          	addi	sp,sp,256
    80004bf0:	10200073          	sret
    80004bf4:	00000013          	nop
    80004bf8:	00000013          	nop
    80004bfc:	00000013          	nop

0000000080004c00 <timervec>:
    80004c00:	34051573          	csrrw	a0,mscratch,a0
    80004c04:	00b53023          	sd	a1,0(a0)
    80004c08:	00c53423          	sd	a2,8(a0)
    80004c0c:	00d53823          	sd	a3,16(a0)
    80004c10:	01853583          	ld	a1,24(a0)
    80004c14:	02053603          	ld	a2,32(a0)
    80004c18:	0005b683          	ld	a3,0(a1)
    80004c1c:	00c686b3          	add	a3,a3,a2
    80004c20:	00d5b023          	sd	a3,0(a1)
    80004c24:	00200593          	li	a1,2
    80004c28:	14459073          	csrw	sip,a1
    80004c2c:	01053683          	ld	a3,16(a0)
    80004c30:	00853603          	ld	a2,8(a0)
    80004c34:	00053583          	ld	a1,0(a0)
    80004c38:	34051573          	csrrw	a0,mscratch,a0
    80004c3c:	30200073          	mret

0000000080004c40 <plicinit>:
    80004c40:	ff010113          	addi	sp,sp,-16
    80004c44:	00813423          	sd	s0,8(sp)
    80004c48:	01010413          	addi	s0,sp,16
    80004c4c:	00813403          	ld	s0,8(sp)
    80004c50:	0c0007b7          	lui	a5,0xc000
    80004c54:	00100713          	li	a4,1
    80004c58:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80004c5c:	00e7a223          	sw	a4,4(a5)
    80004c60:	01010113          	addi	sp,sp,16
    80004c64:	00008067          	ret

0000000080004c68 <plicinithart>:
    80004c68:	ff010113          	addi	sp,sp,-16
    80004c6c:	00813023          	sd	s0,0(sp)
    80004c70:	00113423          	sd	ra,8(sp)
    80004c74:	01010413          	addi	s0,sp,16
    80004c78:	00000097          	auipc	ra,0x0
    80004c7c:	a40080e7          	jalr	-1472(ra) # 800046b8 <cpuid>
    80004c80:	0085171b          	slliw	a4,a0,0x8
    80004c84:	0c0027b7          	lui	a5,0xc002
    80004c88:	00e787b3          	add	a5,a5,a4
    80004c8c:	40200713          	li	a4,1026
    80004c90:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004c94:	00813083          	ld	ra,8(sp)
    80004c98:	00013403          	ld	s0,0(sp)
    80004c9c:	00d5151b          	slliw	a0,a0,0xd
    80004ca0:	0c2017b7          	lui	a5,0xc201
    80004ca4:	00a78533          	add	a0,a5,a0
    80004ca8:	00052023          	sw	zero,0(a0)
    80004cac:	01010113          	addi	sp,sp,16
    80004cb0:	00008067          	ret

0000000080004cb4 <plic_claim>:
    80004cb4:	ff010113          	addi	sp,sp,-16
    80004cb8:	00813023          	sd	s0,0(sp)
    80004cbc:	00113423          	sd	ra,8(sp)
    80004cc0:	01010413          	addi	s0,sp,16
    80004cc4:	00000097          	auipc	ra,0x0
    80004cc8:	9f4080e7          	jalr	-1548(ra) # 800046b8 <cpuid>
    80004ccc:	00813083          	ld	ra,8(sp)
    80004cd0:	00013403          	ld	s0,0(sp)
    80004cd4:	00d5151b          	slliw	a0,a0,0xd
    80004cd8:	0c2017b7          	lui	a5,0xc201
    80004cdc:	00a78533          	add	a0,a5,a0
    80004ce0:	00452503          	lw	a0,4(a0)
    80004ce4:	01010113          	addi	sp,sp,16
    80004ce8:	00008067          	ret

0000000080004cec <plic_complete>:
    80004cec:	fe010113          	addi	sp,sp,-32
    80004cf0:	00813823          	sd	s0,16(sp)
    80004cf4:	00913423          	sd	s1,8(sp)
    80004cf8:	00113c23          	sd	ra,24(sp)
    80004cfc:	02010413          	addi	s0,sp,32
    80004d00:	00050493          	mv	s1,a0
    80004d04:	00000097          	auipc	ra,0x0
    80004d08:	9b4080e7          	jalr	-1612(ra) # 800046b8 <cpuid>
    80004d0c:	01813083          	ld	ra,24(sp)
    80004d10:	01013403          	ld	s0,16(sp)
    80004d14:	00d5179b          	slliw	a5,a0,0xd
    80004d18:	0c201737          	lui	a4,0xc201
    80004d1c:	00f707b3          	add	a5,a4,a5
    80004d20:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004d24:	00813483          	ld	s1,8(sp)
    80004d28:	02010113          	addi	sp,sp,32
    80004d2c:	00008067          	ret

0000000080004d30 <consolewrite>:
    80004d30:	fb010113          	addi	sp,sp,-80
    80004d34:	04813023          	sd	s0,64(sp)
    80004d38:	04113423          	sd	ra,72(sp)
    80004d3c:	02913c23          	sd	s1,56(sp)
    80004d40:	03213823          	sd	s2,48(sp)
    80004d44:	03313423          	sd	s3,40(sp)
    80004d48:	03413023          	sd	s4,32(sp)
    80004d4c:	01513c23          	sd	s5,24(sp)
    80004d50:	05010413          	addi	s0,sp,80
    80004d54:	06c05c63          	blez	a2,80004dcc <consolewrite+0x9c>
    80004d58:	00060993          	mv	s3,a2
    80004d5c:	00050a13          	mv	s4,a0
    80004d60:	00058493          	mv	s1,a1
    80004d64:	00000913          	li	s2,0
    80004d68:	fff00a93          	li	s5,-1
    80004d6c:	01c0006f          	j	80004d88 <consolewrite+0x58>
    80004d70:	fbf44503          	lbu	a0,-65(s0)
    80004d74:	0019091b          	addiw	s2,s2,1
    80004d78:	00148493          	addi	s1,s1,1
    80004d7c:	00001097          	auipc	ra,0x1
    80004d80:	a9c080e7          	jalr	-1380(ra) # 80005818 <uartputc>
    80004d84:	03298063          	beq	s3,s2,80004da4 <consolewrite+0x74>
    80004d88:	00048613          	mv	a2,s1
    80004d8c:	00100693          	li	a3,1
    80004d90:	000a0593          	mv	a1,s4
    80004d94:	fbf40513          	addi	a0,s0,-65
    80004d98:	00000097          	auipc	ra,0x0
    80004d9c:	9d8080e7          	jalr	-1576(ra) # 80004770 <either_copyin>
    80004da0:	fd5518e3          	bne	a0,s5,80004d70 <consolewrite+0x40>
    80004da4:	04813083          	ld	ra,72(sp)
    80004da8:	04013403          	ld	s0,64(sp)
    80004dac:	03813483          	ld	s1,56(sp)
    80004db0:	02813983          	ld	s3,40(sp)
    80004db4:	02013a03          	ld	s4,32(sp)
    80004db8:	01813a83          	ld	s5,24(sp)
    80004dbc:	00090513          	mv	a0,s2
    80004dc0:	03013903          	ld	s2,48(sp)
    80004dc4:	05010113          	addi	sp,sp,80
    80004dc8:	00008067          	ret
    80004dcc:	00000913          	li	s2,0
    80004dd0:	fd5ff06f          	j	80004da4 <consolewrite+0x74>

0000000080004dd4 <consoleread>:
    80004dd4:	f9010113          	addi	sp,sp,-112
    80004dd8:	06813023          	sd	s0,96(sp)
    80004ddc:	04913c23          	sd	s1,88(sp)
    80004de0:	05213823          	sd	s2,80(sp)
    80004de4:	05313423          	sd	s3,72(sp)
    80004de8:	05413023          	sd	s4,64(sp)
    80004dec:	03513c23          	sd	s5,56(sp)
    80004df0:	03613823          	sd	s6,48(sp)
    80004df4:	03713423          	sd	s7,40(sp)
    80004df8:	03813023          	sd	s8,32(sp)
    80004dfc:	06113423          	sd	ra,104(sp)
    80004e00:	01913c23          	sd	s9,24(sp)
    80004e04:	07010413          	addi	s0,sp,112
    80004e08:	00060b93          	mv	s7,a2
    80004e0c:	00050913          	mv	s2,a0
    80004e10:	00058c13          	mv	s8,a1
    80004e14:	00060b1b          	sext.w	s6,a2
    80004e18:	00005497          	auipc	s1,0x5
    80004e1c:	d6048493          	addi	s1,s1,-672 # 80009b78 <cons>
    80004e20:	00400993          	li	s3,4
    80004e24:	fff00a13          	li	s4,-1
    80004e28:	00a00a93          	li	s5,10
    80004e2c:	05705e63          	blez	s7,80004e88 <consoleread+0xb4>
    80004e30:	09c4a703          	lw	a4,156(s1)
    80004e34:	0984a783          	lw	a5,152(s1)
    80004e38:	0007071b          	sext.w	a4,a4
    80004e3c:	08e78463          	beq	a5,a4,80004ec4 <consoleread+0xf0>
    80004e40:	07f7f713          	andi	a4,a5,127
    80004e44:	00e48733          	add	a4,s1,a4
    80004e48:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80004e4c:	0017869b          	addiw	a3,a5,1
    80004e50:	08d4ac23          	sw	a3,152(s1)
    80004e54:	00070c9b          	sext.w	s9,a4
    80004e58:	0b370663          	beq	a4,s3,80004f04 <consoleread+0x130>
    80004e5c:	00100693          	li	a3,1
    80004e60:	f9f40613          	addi	a2,s0,-97
    80004e64:	000c0593          	mv	a1,s8
    80004e68:	00090513          	mv	a0,s2
    80004e6c:	f8e40fa3          	sb	a4,-97(s0)
    80004e70:	00000097          	auipc	ra,0x0
    80004e74:	8b4080e7          	jalr	-1868(ra) # 80004724 <either_copyout>
    80004e78:	01450863          	beq	a0,s4,80004e88 <consoleread+0xb4>
    80004e7c:	001c0c13          	addi	s8,s8,1
    80004e80:	fffb8b9b          	addiw	s7,s7,-1
    80004e84:	fb5c94e3          	bne	s9,s5,80004e2c <consoleread+0x58>
    80004e88:	000b851b          	sext.w	a0,s7
    80004e8c:	06813083          	ld	ra,104(sp)
    80004e90:	06013403          	ld	s0,96(sp)
    80004e94:	05813483          	ld	s1,88(sp)
    80004e98:	05013903          	ld	s2,80(sp)
    80004e9c:	04813983          	ld	s3,72(sp)
    80004ea0:	04013a03          	ld	s4,64(sp)
    80004ea4:	03813a83          	ld	s5,56(sp)
    80004ea8:	02813b83          	ld	s7,40(sp)
    80004eac:	02013c03          	ld	s8,32(sp)
    80004eb0:	01813c83          	ld	s9,24(sp)
    80004eb4:	40ab053b          	subw	a0,s6,a0
    80004eb8:	03013b03          	ld	s6,48(sp)
    80004ebc:	07010113          	addi	sp,sp,112
    80004ec0:	00008067          	ret
    80004ec4:	00001097          	auipc	ra,0x1
    80004ec8:	1d8080e7          	jalr	472(ra) # 8000609c <push_on>
    80004ecc:	0984a703          	lw	a4,152(s1)
    80004ed0:	09c4a783          	lw	a5,156(s1)
    80004ed4:	0007879b          	sext.w	a5,a5
    80004ed8:	fef70ce3          	beq	a4,a5,80004ed0 <consoleread+0xfc>
    80004edc:	00001097          	auipc	ra,0x1
    80004ee0:	234080e7          	jalr	564(ra) # 80006110 <pop_on>
    80004ee4:	0984a783          	lw	a5,152(s1)
    80004ee8:	07f7f713          	andi	a4,a5,127
    80004eec:	00e48733          	add	a4,s1,a4
    80004ef0:	01874703          	lbu	a4,24(a4)
    80004ef4:	0017869b          	addiw	a3,a5,1
    80004ef8:	08d4ac23          	sw	a3,152(s1)
    80004efc:	00070c9b          	sext.w	s9,a4
    80004f00:	f5371ee3          	bne	a4,s3,80004e5c <consoleread+0x88>
    80004f04:	000b851b          	sext.w	a0,s7
    80004f08:	f96bf2e3          	bgeu	s7,s6,80004e8c <consoleread+0xb8>
    80004f0c:	08f4ac23          	sw	a5,152(s1)
    80004f10:	f7dff06f          	j	80004e8c <consoleread+0xb8>

0000000080004f14 <consputc>:
    80004f14:	10000793          	li	a5,256
    80004f18:	00f50663          	beq	a0,a5,80004f24 <consputc+0x10>
    80004f1c:	00001317          	auipc	t1,0x1
    80004f20:	9f430067          	jr	-1548(t1) # 80005910 <uartputc_sync>
    80004f24:	ff010113          	addi	sp,sp,-16
    80004f28:	00113423          	sd	ra,8(sp)
    80004f2c:	00813023          	sd	s0,0(sp)
    80004f30:	01010413          	addi	s0,sp,16
    80004f34:	00800513          	li	a0,8
    80004f38:	00001097          	auipc	ra,0x1
    80004f3c:	9d8080e7          	jalr	-1576(ra) # 80005910 <uartputc_sync>
    80004f40:	02000513          	li	a0,32
    80004f44:	00001097          	auipc	ra,0x1
    80004f48:	9cc080e7          	jalr	-1588(ra) # 80005910 <uartputc_sync>
    80004f4c:	00013403          	ld	s0,0(sp)
    80004f50:	00813083          	ld	ra,8(sp)
    80004f54:	00800513          	li	a0,8
    80004f58:	01010113          	addi	sp,sp,16
    80004f5c:	00001317          	auipc	t1,0x1
    80004f60:	9b430067          	jr	-1612(t1) # 80005910 <uartputc_sync>

0000000080004f64 <consoleintr>:
    80004f64:	fe010113          	addi	sp,sp,-32
    80004f68:	00813823          	sd	s0,16(sp)
    80004f6c:	00913423          	sd	s1,8(sp)
    80004f70:	01213023          	sd	s2,0(sp)
    80004f74:	00113c23          	sd	ra,24(sp)
    80004f78:	02010413          	addi	s0,sp,32
    80004f7c:	00005917          	auipc	s2,0x5
    80004f80:	bfc90913          	addi	s2,s2,-1028 # 80009b78 <cons>
    80004f84:	00050493          	mv	s1,a0
    80004f88:	00090513          	mv	a0,s2
    80004f8c:	00001097          	auipc	ra,0x1
    80004f90:	e40080e7          	jalr	-448(ra) # 80005dcc <acquire>
    80004f94:	02048c63          	beqz	s1,80004fcc <consoleintr+0x68>
    80004f98:	0a092783          	lw	a5,160(s2)
    80004f9c:	09892703          	lw	a4,152(s2)
    80004fa0:	07f00693          	li	a3,127
    80004fa4:	40e7873b          	subw	a4,a5,a4
    80004fa8:	02e6e263          	bltu	a3,a4,80004fcc <consoleintr+0x68>
    80004fac:	00d00713          	li	a4,13
    80004fb0:	04e48063          	beq	s1,a4,80004ff0 <consoleintr+0x8c>
    80004fb4:	07f7f713          	andi	a4,a5,127
    80004fb8:	00e90733          	add	a4,s2,a4
    80004fbc:	0017879b          	addiw	a5,a5,1
    80004fc0:	0af92023          	sw	a5,160(s2)
    80004fc4:	00970c23          	sb	s1,24(a4)
    80004fc8:	08f92e23          	sw	a5,156(s2)
    80004fcc:	01013403          	ld	s0,16(sp)
    80004fd0:	01813083          	ld	ra,24(sp)
    80004fd4:	00813483          	ld	s1,8(sp)
    80004fd8:	00013903          	ld	s2,0(sp)
    80004fdc:	00005517          	auipc	a0,0x5
    80004fe0:	b9c50513          	addi	a0,a0,-1124 # 80009b78 <cons>
    80004fe4:	02010113          	addi	sp,sp,32
    80004fe8:	00001317          	auipc	t1,0x1
    80004fec:	eb030067          	jr	-336(t1) # 80005e98 <release>
    80004ff0:	00a00493          	li	s1,10
    80004ff4:	fc1ff06f          	j	80004fb4 <consoleintr+0x50>

0000000080004ff8 <consoleinit>:
    80004ff8:	fe010113          	addi	sp,sp,-32
    80004ffc:	00113c23          	sd	ra,24(sp)
    80005000:	00813823          	sd	s0,16(sp)
    80005004:	00913423          	sd	s1,8(sp)
    80005008:	02010413          	addi	s0,sp,32
    8000500c:	00005497          	auipc	s1,0x5
    80005010:	b6c48493          	addi	s1,s1,-1172 # 80009b78 <cons>
    80005014:	00048513          	mv	a0,s1
    80005018:	00002597          	auipc	a1,0x2
    8000501c:	41858593          	addi	a1,a1,1048 # 80007430 <CONSOLE_STATUS+0x420>
    80005020:	00001097          	auipc	ra,0x1
    80005024:	d88080e7          	jalr	-632(ra) # 80005da8 <initlock>
    80005028:	00000097          	auipc	ra,0x0
    8000502c:	7ac080e7          	jalr	1964(ra) # 800057d4 <uartinit>
    80005030:	01813083          	ld	ra,24(sp)
    80005034:	01013403          	ld	s0,16(sp)
    80005038:	00000797          	auipc	a5,0x0
    8000503c:	d9c78793          	addi	a5,a5,-612 # 80004dd4 <consoleread>
    80005040:	0af4bc23          	sd	a5,184(s1)
    80005044:	00000797          	auipc	a5,0x0
    80005048:	cec78793          	addi	a5,a5,-788 # 80004d30 <consolewrite>
    8000504c:	0cf4b023          	sd	a5,192(s1)
    80005050:	00813483          	ld	s1,8(sp)
    80005054:	02010113          	addi	sp,sp,32
    80005058:	00008067          	ret

000000008000505c <console_read>:
    8000505c:	ff010113          	addi	sp,sp,-16
    80005060:	00813423          	sd	s0,8(sp)
    80005064:	01010413          	addi	s0,sp,16
    80005068:	00813403          	ld	s0,8(sp)
    8000506c:	00005317          	auipc	t1,0x5
    80005070:	bc433303          	ld	t1,-1084(t1) # 80009c30 <devsw+0x10>
    80005074:	01010113          	addi	sp,sp,16
    80005078:	00030067          	jr	t1

000000008000507c <console_write>:
    8000507c:	ff010113          	addi	sp,sp,-16
    80005080:	00813423          	sd	s0,8(sp)
    80005084:	01010413          	addi	s0,sp,16
    80005088:	00813403          	ld	s0,8(sp)
    8000508c:	00005317          	auipc	t1,0x5
    80005090:	bac33303          	ld	t1,-1108(t1) # 80009c38 <devsw+0x18>
    80005094:	01010113          	addi	sp,sp,16
    80005098:	00030067          	jr	t1

000000008000509c <panic>:
    8000509c:	fe010113          	addi	sp,sp,-32
    800050a0:	00113c23          	sd	ra,24(sp)
    800050a4:	00813823          	sd	s0,16(sp)
    800050a8:	00913423          	sd	s1,8(sp)
    800050ac:	02010413          	addi	s0,sp,32
    800050b0:	00050493          	mv	s1,a0
    800050b4:	00002517          	auipc	a0,0x2
    800050b8:	38450513          	addi	a0,a0,900 # 80007438 <CONSOLE_STATUS+0x428>
    800050bc:	00005797          	auipc	a5,0x5
    800050c0:	c007ae23          	sw	zero,-996(a5) # 80009cd8 <pr+0x18>
    800050c4:	00000097          	auipc	ra,0x0
    800050c8:	034080e7          	jalr	52(ra) # 800050f8 <__printf>
    800050cc:	00048513          	mv	a0,s1
    800050d0:	00000097          	auipc	ra,0x0
    800050d4:	028080e7          	jalr	40(ra) # 800050f8 <__printf>
    800050d8:	00002517          	auipc	a0,0x2
    800050dc:	09050513          	addi	a0,a0,144 # 80007168 <CONSOLE_STATUS+0x158>
    800050e0:	00000097          	auipc	ra,0x0
    800050e4:	018080e7          	jalr	24(ra) # 800050f8 <__printf>
    800050e8:	00100793          	li	a5,1
    800050ec:	00004717          	auipc	a4,0x4
    800050f0:	92f72623          	sw	a5,-1748(a4) # 80008a18 <panicked>
    800050f4:	0000006f          	j	800050f4 <panic+0x58>

00000000800050f8 <__printf>:
    800050f8:	f3010113          	addi	sp,sp,-208
    800050fc:	08813023          	sd	s0,128(sp)
    80005100:	07313423          	sd	s3,104(sp)
    80005104:	09010413          	addi	s0,sp,144
    80005108:	05813023          	sd	s8,64(sp)
    8000510c:	08113423          	sd	ra,136(sp)
    80005110:	06913c23          	sd	s1,120(sp)
    80005114:	07213823          	sd	s2,112(sp)
    80005118:	07413023          	sd	s4,96(sp)
    8000511c:	05513c23          	sd	s5,88(sp)
    80005120:	05613823          	sd	s6,80(sp)
    80005124:	05713423          	sd	s7,72(sp)
    80005128:	03913c23          	sd	s9,56(sp)
    8000512c:	03a13823          	sd	s10,48(sp)
    80005130:	03b13423          	sd	s11,40(sp)
    80005134:	00005317          	auipc	t1,0x5
    80005138:	b8c30313          	addi	t1,t1,-1140 # 80009cc0 <pr>
    8000513c:	01832c03          	lw	s8,24(t1)
    80005140:	00b43423          	sd	a1,8(s0)
    80005144:	00c43823          	sd	a2,16(s0)
    80005148:	00d43c23          	sd	a3,24(s0)
    8000514c:	02e43023          	sd	a4,32(s0)
    80005150:	02f43423          	sd	a5,40(s0)
    80005154:	03043823          	sd	a6,48(s0)
    80005158:	03143c23          	sd	a7,56(s0)
    8000515c:	00050993          	mv	s3,a0
    80005160:	4a0c1663          	bnez	s8,8000560c <__printf+0x514>
    80005164:	60098c63          	beqz	s3,8000577c <__printf+0x684>
    80005168:	0009c503          	lbu	a0,0(s3)
    8000516c:	00840793          	addi	a5,s0,8
    80005170:	f6f43c23          	sd	a5,-136(s0)
    80005174:	00000493          	li	s1,0
    80005178:	22050063          	beqz	a0,80005398 <__printf+0x2a0>
    8000517c:	00002a37          	lui	s4,0x2
    80005180:	00018ab7          	lui	s5,0x18
    80005184:	000f4b37          	lui	s6,0xf4
    80005188:	00989bb7          	lui	s7,0x989
    8000518c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005190:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005194:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005198:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000519c:	00148c9b          	addiw	s9,s1,1
    800051a0:	02500793          	li	a5,37
    800051a4:	01998933          	add	s2,s3,s9
    800051a8:	38f51263          	bne	a0,a5,8000552c <__printf+0x434>
    800051ac:	00094783          	lbu	a5,0(s2)
    800051b0:	00078c9b          	sext.w	s9,a5
    800051b4:	1e078263          	beqz	a5,80005398 <__printf+0x2a0>
    800051b8:	0024849b          	addiw	s1,s1,2
    800051bc:	07000713          	li	a4,112
    800051c0:	00998933          	add	s2,s3,s1
    800051c4:	38e78a63          	beq	a5,a4,80005558 <__printf+0x460>
    800051c8:	20f76863          	bltu	a4,a5,800053d8 <__printf+0x2e0>
    800051cc:	42a78863          	beq	a5,a0,800055fc <__printf+0x504>
    800051d0:	06400713          	li	a4,100
    800051d4:	40e79663          	bne	a5,a4,800055e0 <__printf+0x4e8>
    800051d8:	f7843783          	ld	a5,-136(s0)
    800051dc:	0007a603          	lw	a2,0(a5)
    800051e0:	00878793          	addi	a5,a5,8
    800051e4:	f6f43c23          	sd	a5,-136(s0)
    800051e8:	42064a63          	bltz	a2,8000561c <__printf+0x524>
    800051ec:	00a00713          	li	a4,10
    800051f0:	02e677bb          	remuw	a5,a2,a4
    800051f4:	00002d97          	auipc	s11,0x2
    800051f8:	26cd8d93          	addi	s11,s11,620 # 80007460 <digits>
    800051fc:	00900593          	li	a1,9
    80005200:	0006051b          	sext.w	a0,a2
    80005204:	00000c93          	li	s9,0
    80005208:	02079793          	slli	a5,a5,0x20
    8000520c:	0207d793          	srli	a5,a5,0x20
    80005210:	00fd87b3          	add	a5,s11,a5
    80005214:	0007c783          	lbu	a5,0(a5)
    80005218:	02e656bb          	divuw	a3,a2,a4
    8000521c:	f8f40023          	sb	a5,-128(s0)
    80005220:	14c5d863          	bge	a1,a2,80005370 <__printf+0x278>
    80005224:	06300593          	li	a1,99
    80005228:	00100c93          	li	s9,1
    8000522c:	02e6f7bb          	remuw	a5,a3,a4
    80005230:	02079793          	slli	a5,a5,0x20
    80005234:	0207d793          	srli	a5,a5,0x20
    80005238:	00fd87b3          	add	a5,s11,a5
    8000523c:	0007c783          	lbu	a5,0(a5)
    80005240:	02e6d73b          	divuw	a4,a3,a4
    80005244:	f8f400a3          	sb	a5,-127(s0)
    80005248:	12a5f463          	bgeu	a1,a0,80005370 <__printf+0x278>
    8000524c:	00a00693          	li	a3,10
    80005250:	00900593          	li	a1,9
    80005254:	02d777bb          	remuw	a5,a4,a3
    80005258:	02079793          	slli	a5,a5,0x20
    8000525c:	0207d793          	srli	a5,a5,0x20
    80005260:	00fd87b3          	add	a5,s11,a5
    80005264:	0007c503          	lbu	a0,0(a5)
    80005268:	02d757bb          	divuw	a5,a4,a3
    8000526c:	f8a40123          	sb	a0,-126(s0)
    80005270:	48e5f263          	bgeu	a1,a4,800056f4 <__printf+0x5fc>
    80005274:	06300513          	li	a0,99
    80005278:	02d7f5bb          	remuw	a1,a5,a3
    8000527c:	02059593          	slli	a1,a1,0x20
    80005280:	0205d593          	srli	a1,a1,0x20
    80005284:	00bd85b3          	add	a1,s11,a1
    80005288:	0005c583          	lbu	a1,0(a1)
    8000528c:	02d7d7bb          	divuw	a5,a5,a3
    80005290:	f8b401a3          	sb	a1,-125(s0)
    80005294:	48e57263          	bgeu	a0,a4,80005718 <__printf+0x620>
    80005298:	3e700513          	li	a0,999
    8000529c:	02d7f5bb          	remuw	a1,a5,a3
    800052a0:	02059593          	slli	a1,a1,0x20
    800052a4:	0205d593          	srli	a1,a1,0x20
    800052a8:	00bd85b3          	add	a1,s11,a1
    800052ac:	0005c583          	lbu	a1,0(a1)
    800052b0:	02d7d7bb          	divuw	a5,a5,a3
    800052b4:	f8b40223          	sb	a1,-124(s0)
    800052b8:	46e57663          	bgeu	a0,a4,80005724 <__printf+0x62c>
    800052bc:	02d7f5bb          	remuw	a1,a5,a3
    800052c0:	02059593          	slli	a1,a1,0x20
    800052c4:	0205d593          	srli	a1,a1,0x20
    800052c8:	00bd85b3          	add	a1,s11,a1
    800052cc:	0005c583          	lbu	a1,0(a1)
    800052d0:	02d7d7bb          	divuw	a5,a5,a3
    800052d4:	f8b402a3          	sb	a1,-123(s0)
    800052d8:	46ea7863          	bgeu	s4,a4,80005748 <__printf+0x650>
    800052dc:	02d7f5bb          	remuw	a1,a5,a3
    800052e0:	02059593          	slli	a1,a1,0x20
    800052e4:	0205d593          	srli	a1,a1,0x20
    800052e8:	00bd85b3          	add	a1,s11,a1
    800052ec:	0005c583          	lbu	a1,0(a1)
    800052f0:	02d7d7bb          	divuw	a5,a5,a3
    800052f4:	f8b40323          	sb	a1,-122(s0)
    800052f8:	3eeaf863          	bgeu	s5,a4,800056e8 <__printf+0x5f0>
    800052fc:	02d7f5bb          	remuw	a1,a5,a3
    80005300:	02059593          	slli	a1,a1,0x20
    80005304:	0205d593          	srli	a1,a1,0x20
    80005308:	00bd85b3          	add	a1,s11,a1
    8000530c:	0005c583          	lbu	a1,0(a1)
    80005310:	02d7d7bb          	divuw	a5,a5,a3
    80005314:	f8b403a3          	sb	a1,-121(s0)
    80005318:	42eb7e63          	bgeu	s6,a4,80005754 <__printf+0x65c>
    8000531c:	02d7f5bb          	remuw	a1,a5,a3
    80005320:	02059593          	slli	a1,a1,0x20
    80005324:	0205d593          	srli	a1,a1,0x20
    80005328:	00bd85b3          	add	a1,s11,a1
    8000532c:	0005c583          	lbu	a1,0(a1)
    80005330:	02d7d7bb          	divuw	a5,a5,a3
    80005334:	f8b40423          	sb	a1,-120(s0)
    80005338:	42ebfc63          	bgeu	s7,a4,80005770 <__printf+0x678>
    8000533c:	02079793          	slli	a5,a5,0x20
    80005340:	0207d793          	srli	a5,a5,0x20
    80005344:	00fd8db3          	add	s11,s11,a5
    80005348:	000dc703          	lbu	a4,0(s11)
    8000534c:	00a00793          	li	a5,10
    80005350:	00900c93          	li	s9,9
    80005354:	f8e404a3          	sb	a4,-119(s0)
    80005358:	00065c63          	bgez	a2,80005370 <__printf+0x278>
    8000535c:	f9040713          	addi	a4,s0,-112
    80005360:	00f70733          	add	a4,a4,a5
    80005364:	02d00693          	li	a3,45
    80005368:	fed70823          	sb	a3,-16(a4)
    8000536c:	00078c93          	mv	s9,a5
    80005370:	f8040793          	addi	a5,s0,-128
    80005374:	01978cb3          	add	s9,a5,s9
    80005378:	f7f40d13          	addi	s10,s0,-129
    8000537c:	000cc503          	lbu	a0,0(s9)
    80005380:	fffc8c93          	addi	s9,s9,-1
    80005384:	00000097          	auipc	ra,0x0
    80005388:	b90080e7          	jalr	-1136(ra) # 80004f14 <consputc>
    8000538c:	ffac98e3          	bne	s9,s10,8000537c <__printf+0x284>
    80005390:	00094503          	lbu	a0,0(s2)
    80005394:	e00514e3          	bnez	a0,8000519c <__printf+0xa4>
    80005398:	1a0c1663          	bnez	s8,80005544 <__printf+0x44c>
    8000539c:	08813083          	ld	ra,136(sp)
    800053a0:	08013403          	ld	s0,128(sp)
    800053a4:	07813483          	ld	s1,120(sp)
    800053a8:	07013903          	ld	s2,112(sp)
    800053ac:	06813983          	ld	s3,104(sp)
    800053b0:	06013a03          	ld	s4,96(sp)
    800053b4:	05813a83          	ld	s5,88(sp)
    800053b8:	05013b03          	ld	s6,80(sp)
    800053bc:	04813b83          	ld	s7,72(sp)
    800053c0:	04013c03          	ld	s8,64(sp)
    800053c4:	03813c83          	ld	s9,56(sp)
    800053c8:	03013d03          	ld	s10,48(sp)
    800053cc:	02813d83          	ld	s11,40(sp)
    800053d0:	0d010113          	addi	sp,sp,208
    800053d4:	00008067          	ret
    800053d8:	07300713          	li	a4,115
    800053dc:	1ce78a63          	beq	a5,a4,800055b0 <__printf+0x4b8>
    800053e0:	07800713          	li	a4,120
    800053e4:	1ee79e63          	bne	a5,a4,800055e0 <__printf+0x4e8>
    800053e8:	f7843783          	ld	a5,-136(s0)
    800053ec:	0007a703          	lw	a4,0(a5)
    800053f0:	00878793          	addi	a5,a5,8
    800053f4:	f6f43c23          	sd	a5,-136(s0)
    800053f8:	28074263          	bltz	a4,8000567c <__printf+0x584>
    800053fc:	00002d97          	auipc	s11,0x2
    80005400:	064d8d93          	addi	s11,s11,100 # 80007460 <digits>
    80005404:	00f77793          	andi	a5,a4,15
    80005408:	00fd87b3          	add	a5,s11,a5
    8000540c:	0007c683          	lbu	a3,0(a5)
    80005410:	00f00613          	li	a2,15
    80005414:	0007079b          	sext.w	a5,a4
    80005418:	f8d40023          	sb	a3,-128(s0)
    8000541c:	0047559b          	srliw	a1,a4,0x4
    80005420:	0047569b          	srliw	a3,a4,0x4
    80005424:	00000c93          	li	s9,0
    80005428:	0ee65063          	bge	a2,a4,80005508 <__printf+0x410>
    8000542c:	00f6f693          	andi	a3,a3,15
    80005430:	00dd86b3          	add	a3,s11,a3
    80005434:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005438:	0087d79b          	srliw	a5,a5,0x8
    8000543c:	00100c93          	li	s9,1
    80005440:	f8d400a3          	sb	a3,-127(s0)
    80005444:	0cb67263          	bgeu	a2,a1,80005508 <__printf+0x410>
    80005448:	00f7f693          	andi	a3,a5,15
    8000544c:	00dd86b3          	add	a3,s11,a3
    80005450:	0006c583          	lbu	a1,0(a3)
    80005454:	00f00613          	li	a2,15
    80005458:	0047d69b          	srliw	a3,a5,0x4
    8000545c:	f8b40123          	sb	a1,-126(s0)
    80005460:	0047d593          	srli	a1,a5,0x4
    80005464:	28f67e63          	bgeu	a2,a5,80005700 <__printf+0x608>
    80005468:	00f6f693          	andi	a3,a3,15
    8000546c:	00dd86b3          	add	a3,s11,a3
    80005470:	0006c503          	lbu	a0,0(a3)
    80005474:	0087d813          	srli	a6,a5,0x8
    80005478:	0087d69b          	srliw	a3,a5,0x8
    8000547c:	f8a401a3          	sb	a0,-125(s0)
    80005480:	28b67663          	bgeu	a2,a1,8000570c <__printf+0x614>
    80005484:	00f6f693          	andi	a3,a3,15
    80005488:	00dd86b3          	add	a3,s11,a3
    8000548c:	0006c583          	lbu	a1,0(a3)
    80005490:	00c7d513          	srli	a0,a5,0xc
    80005494:	00c7d69b          	srliw	a3,a5,0xc
    80005498:	f8b40223          	sb	a1,-124(s0)
    8000549c:	29067a63          	bgeu	a2,a6,80005730 <__printf+0x638>
    800054a0:	00f6f693          	andi	a3,a3,15
    800054a4:	00dd86b3          	add	a3,s11,a3
    800054a8:	0006c583          	lbu	a1,0(a3)
    800054ac:	0107d813          	srli	a6,a5,0x10
    800054b0:	0107d69b          	srliw	a3,a5,0x10
    800054b4:	f8b402a3          	sb	a1,-123(s0)
    800054b8:	28a67263          	bgeu	a2,a0,8000573c <__printf+0x644>
    800054bc:	00f6f693          	andi	a3,a3,15
    800054c0:	00dd86b3          	add	a3,s11,a3
    800054c4:	0006c683          	lbu	a3,0(a3)
    800054c8:	0147d79b          	srliw	a5,a5,0x14
    800054cc:	f8d40323          	sb	a3,-122(s0)
    800054d0:	21067663          	bgeu	a2,a6,800056dc <__printf+0x5e4>
    800054d4:	02079793          	slli	a5,a5,0x20
    800054d8:	0207d793          	srli	a5,a5,0x20
    800054dc:	00fd8db3          	add	s11,s11,a5
    800054e0:	000dc683          	lbu	a3,0(s11)
    800054e4:	00800793          	li	a5,8
    800054e8:	00700c93          	li	s9,7
    800054ec:	f8d403a3          	sb	a3,-121(s0)
    800054f0:	00075c63          	bgez	a4,80005508 <__printf+0x410>
    800054f4:	f9040713          	addi	a4,s0,-112
    800054f8:	00f70733          	add	a4,a4,a5
    800054fc:	02d00693          	li	a3,45
    80005500:	fed70823          	sb	a3,-16(a4)
    80005504:	00078c93          	mv	s9,a5
    80005508:	f8040793          	addi	a5,s0,-128
    8000550c:	01978cb3          	add	s9,a5,s9
    80005510:	f7f40d13          	addi	s10,s0,-129
    80005514:	000cc503          	lbu	a0,0(s9)
    80005518:	fffc8c93          	addi	s9,s9,-1
    8000551c:	00000097          	auipc	ra,0x0
    80005520:	9f8080e7          	jalr	-1544(ra) # 80004f14 <consputc>
    80005524:	ff9d18e3          	bne	s10,s9,80005514 <__printf+0x41c>
    80005528:	0100006f          	j	80005538 <__printf+0x440>
    8000552c:	00000097          	auipc	ra,0x0
    80005530:	9e8080e7          	jalr	-1560(ra) # 80004f14 <consputc>
    80005534:	000c8493          	mv	s1,s9
    80005538:	00094503          	lbu	a0,0(s2)
    8000553c:	c60510e3          	bnez	a0,8000519c <__printf+0xa4>
    80005540:	e40c0ee3          	beqz	s8,8000539c <__printf+0x2a4>
    80005544:	00004517          	auipc	a0,0x4
    80005548:	77c50513          	addi	a0,a0,1916 # 80009cc0 <pr>
    8000554c:	00001097          	auipc	ra,0x1
    80005550:	94c080e7          	jalr	-1716(ra) # 80005e98 <release>
    80005554:	e49ff06f          	j	8000539c <__printf+0x2a4>
    80005558:	f7843783          	ld	a5,-136(s0)
    8000555c:	03000513          	li	a0,48
    80005560:	01000d13          	li	s10,16
    80005564:	00878713          	addi	a4,a5,8
    80005568:	0007bc83          	ld	s9,0(a5)
    8000556c:	f6e43c23          	sd	a4,-136(s0)
    80005570:	00000097          	auipc	ra,0x0
    80005574:	9a4080e7          	jalr	-1628(ra) # 80004f14 <consputc>
    80005578:	07800513          	li	a0,120
    8000557c:	00000097          	auipc	ra,0x0
    80005580:	998080e7          	jalr	-1640(ra) # 80004f14 <consputc>
    80005584:	00002d97          	auipc	s11,0x2
    80005588:	edcd8d93          	addi	s11,s11,-292 # 80007460 <digits>
    8000558c:	03ccd793          	srli	a5,s9,0x3c
    80005590:	00fd87b3          	add	a5,s11,a5
    80005594:	0007c503          	lbu	a0,0(a5)
    80005598:	fffd0d1b          	addiw	s10,s10,-1
    8000559c:	004c9c93          	slli	s9,s9,0x4
    800055a0:	00000097          	auipc	ra,0x0
    800055a4:	974080e7          	jalr	-1676(ra) # 80004f14 <consputc>
    800055a8:	fe0d12e3          	bnez	s10,8000558c <__printf+0x494>
    800055ac:	f8dff06f          	j	80005538 <__printf+0x440>
    800055b0:	f7843783          	ld	a5,-136(s0)
    800055b4:	0007bc83          	ld	s9,0(a5)
    800055b8:	00878793          	addi	a5,a5,8
    800055bc:	f6f43c23          	sd	a5,-136(s0)
    800055c0:	000c9a63          	bnez	s9,800055d4 <__printf+0x4dc>
    800055c4:	1080006f          	j	800056cc <__printf+0x5d4>
    800055c8:	001c8c93          	addi	s9,s9,1
    800055cc:	00000097          	auipc	ra,0x0
    800055d0:	948080e7          	jalr	-1720(ra) # 80004f14 <consputc>
    800055d4:	000cc503          	lbu	a0,0(s9)
    800055d8:	fe0518e3          	bnez	a0,800055c8 <__printf+0x4d0>
    800055dc:	f5dff06f          	j	80005538 <__printf+0x440>
    800055e0:	02500513          	li	a0,37
    800055e4:	00000097          	auipc	ra,0x0
    800055e8:	930080e7          	jalr	-1744(ra) # 80004f14 <consputc>
    800055ec:	000c8513          	mv	a0,s9
    800055f0:	00000097          	auipc	ra,0x0
    800055f4:	924080e7          	jalr	-1756(ra) # 80004f14 <consputc>
    800055f8:	f41ff06f          	j	80005538 <__printf+0x440>
    800055fc:	02500513          	li	a0,37
    80005600:	00000097          	auipc	ra,0x0
    80005604:	914080e7          	jalr	-1772(ra) # 80004f14 <consputc>
    80005608:	f31ff06f          	j	80005538 <__printf+0x440>
    8000560c:	00030513          	mv	a0,t1
    80005610:	00000097          	auipc	ra,0x0
    80005614:	7bc080e7          	jalr	1980(ra) # 80005dcc <acquire>
    80005618:	b4dff06f          	j	80005164 <__printf+0x6c>
    8000561c:	40c0053b          	negw	a0,a2
    80005620:	00a00713          	li	a4,10
    80005624:	02e576bb          	remuw	a3,a0,a4
    80005628:	00002d97          	auipc	s11,0x2
    8000562c:	e38d8d93          	addi	s11,s11,-456 # 80007460 <digits>
    80005630:	ff700593          	li	a1,-9
    80005634:	02069693          	slli	a3,a3,0x20
    80005638:	0206d693          	srli	a3,a3,0x20
    8000563c:	00dd86b3          	add	a3,s11,a3
    80005640:	0006c683          	lbu	a3,0(a3)
    80005644:	02e557bb          	divuw	a5,a0,a4
    80005648:	f8d40023          	sb	a3,-128(s0)
    8000564c:	10b65e63          	bge	a2,a1,80005768 <__printf+0x670>
    80005650:	06300593          	li	a1,99
    80005654:	02e7f6bb          	remuw	a3,a5,a4
    80005658:	02069693          	slli	a3,a3,0x20
    8000565c:	0206d693          	srli	a3,a3,0x20
    80005660:	00dd86b3          	add	a3,s11,a3
    80005664:	0006c683          	lbu	a3,0(a3)
    80005668:	02e7d73b          	divuw	a4,a5,a4
    8000566c:	00200793          	li	a5,2
    80005670:	f8d400a3          	sb	a3,-127(s0)
    80005674:	bca5ece3          	bltu	a1,a0,8000524c <__printf+0x154>
    80005678:	ce5ff06f          	j	8000535c <__printf+0x264>
    8000567c:	40e007bb          	negw	a5,a4
    80005680:	00002d97          	auipc	s11,0x2
    80005684:	de0d8d93          	addi	s11,s11,-544 # 80007460 <digits>
    80005688:	00f7f693          	andi	a3,a5,15
    8000568c:	00dd86b3          	add	a3,s11,a3
    80005690:	0006c583          	lbu	a1,0(a3)
    80005694:	ff100613          	li	a2,-15
    80005698:	0047d69b          	srliw	a3,a5,0x4
    8000569c:	f8b40023          	sb	a1,-128(s0)
    800056a0:	0047d59b          	srliw	a1,a5,0x4
    800056a4:	0ac75e63          	bge	a4,a2,80005760 <__printf+0x668>
    800056a8:	00f6f693          	andi	a3,a3,15
    800056ac:	00dd86b3          	add	a3,s11,a3
    800056b0:	0006c603          	lbu	a2,0(a3)
    800056b4:	00f00693          	li	a3,15
    800056b8:	0087d79b          	srliw	a5,a5,0x8
    800056bc:	f8c400a3          	sb	a2,-127(s0)
    800056c0:	d8b6e4e3          	bltu	a3,a1,80005448 <__printf+0x350>
    800056c4:	00200793          	li	a5,2
    800056c8:	e2dff06f          	j	800054f4 <__printf+0x3fc>
    800056cc:	00002c97          	auipc	s9,0x2
    800056d0:	d74c8c93          	addi	s9,s9,-652 # 80007440 <CONSOLE_STATUS+0x430>
    800056d4:	02800513          	li	a0,40
    800056d8:	ef1ff06f          	j	800055c8 <__printf+0x4d0>
    800056dc:	00700793          	li	a5,7
    800056e0:	00600c93          	li	s9,6
    800056e4:	e0dff06f          	j	800054f0 <__printf+0x3f8>
    800056e8:	00700793          	li	a5,7
    800056ec:	00600c93          	li	s9,6
    800056f0:	c69ff06f          	j	80005358 <__printf+0x260>
    800056f4:	00300793          	li	a5,3
    800056f8:	00200c93          	li	s9,2
    800056fc:	c5dff06f          	j	80005358 <__printf+0x260>
    80005700:	00300793          	li	a5,3
    80005704:	00200c93          	li	s9,2
    80005708:	de9ff06f          	j	800054f0 <__printf+0x3f8>
    8000570c:	00400793          	li	a5,4
    80005710:	00300c93          	li	s9,3
    80005714:	dddff06f          	j	800054f0 <__printf+0x3f8>
    80005718:	00400793          	li	a5,4
    8000571c:	00300c93          	li	s9,3
    80005720:	c39ff06f          	j	80005358 <__printf+0x260>
    80005724:	00500793          	li	a5,5
    80005728:	00400c93          	li	s9,4
    8000572c:	c2dff06f          	j	80005358 <__printf+0x260>
    80005730:	00500793          	li	a5,5
    80005734:	00400c93          	li	s9,4
    80005738:	db9ff06f          	j	800054f0 <__printf+0x3f8>
    8000573c:	00600793          	li	a5,6
    80005740:	00500c93          	li	s9,5
    80005744:	dadff06f          	j	800054f0 <__printf+0x3f8>
    80005748:	00600793          	li	a5,6
    8000574c:	00500c93          	li	s9,5
    80005750:	c09ff06f          	j	80005358 <__printf+0x260>
    80005754:	00800793          	li	a5,8
    80005758:	00700c93          	li	s9,7
    8000575c:	bfdff06f          	j	80005358 <__printf+0x260>
    80005760:	00100793          	li	a5,1
    80005764:	d91ff06f          	j	800054f4 <__printf+0x3fc>
    80005768:	00100793          	li	a5,1
    8000576c:	bf1ff06f          	j	8000535c <__printf+0x264>
    80005770:	00900793          	li	a5,9
    80005774:	00800c93          	li	s9,8
    80005778:	be1ff06f          	j	80005358 <__printf+0x260>
    8000577c:	00002517          	auipc	a0,0x2
    80005780:	ccc50513          	addi	a0,a0,-820 # 80007448 <CONSOLE_STATUS+0x438>
    80005784:	00000097          	auipc	ra,0x0
    80005788:	918080e7          	jalr	-1768(ra) # 8000509c <panic>

000000008000578c <printfinit>:
    8000578c:	fe010113          	addi	sp,sp,-32
    80005790:	00813823          	sd	s0,16(sp)
    80005794:	00913423          	sd	s1,8(sp)
    80005798:	00113c23          	sd	ra,24(sp)
    8000579c:	02010413          	addi	s0,sp,32
    800057a0:	00004497          	auipc	s1,0x4
    800057a4:	52048493          	addi	s1,s1,1312 # 80009cc0 <pr>
    800057a8:	00048513          	mv	a0,s1
    800057ac:	00002597          	auipc	a1,0x2
    800057b0:	cac58593          	addi	a1,a1,-852 # 80007458 <CONSOLE_STATUS+0x448>
    800057b4:	00000097          	auipc	ra,0x0
    800057b8:	5f4080e7          	jalr	1524(ra) # 80005da8 <initlock>
    800057bc:	01813083          	ld	ra,24(sp)
    800057c0:	01013403          	ld	s0,16(sp)
    800057c4:	0004ac23          	sw	zero,24(s1)
    800057c8:	00813483          	ld	s1,8(sp)
    800057cc:	02010113          	addi	sp,sp,32
    800057d0:	00008067          	ret

00000000800057d4 <uartinit>:
    800057d4:	ff010113          	addi	sp,sp,-16
    800057d8:	00813423          	sd	s0,8(sp)
    800057dc:	01010413          	addi	s0,sp,16
    800057e0:	100007b7          	lui	a5,0x10000
    800057e4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800057e8:	f8000713          	li	a4,-128
    800057ec:	00e781a3          	sb	a4,3(a5)
    800057f0:	00300713          	li	a4,3
    800057f4:	00e78023          	sb	a4,0(a5)
    800057f8:	000780a3          	sb	zero,1(a5)
    800057fc:	00e781a3          	sb	a4,3(a5)
    80005800:	00700693          	li	a3,7
    80005804:	00d78123          	sb	a3,2(a5)
    80005808:	00e780a3          	sb	a4,1(a5)
    8000580c:	00813403          	ld	s0,8(sp)
    80005810:	01010113          	addi	sp,sp,16
    80005814:	00008067          	ret

0000000080005818 <uartputc>:
    80005818:	00003797          	auipc	a5,0x3
    8000581c:	2007a783          	lw	a5,512(a5) # 80008a18 <panicked>
    80005820:	00078463          	beqz	a5,80005828 <uartputc+0x10>
    80005824:	0000006f          	j	80005824 <uartputc+0xc>
    80005828:	fd010113          	addi	sp,sp,-48
    8000582c:	02813023          	sd	s0,32(sp)
    80005830:	00913c23          	sd	s1,24(sp)
    80005834:	01213823          	sd	s2,16(sp)
    80005838:	01313423          	sd	s3,8(sp)
    8000583c:	02113423          	sd	ra,40(sp)
    80005840:	03010413          	addi	s0,sp,48
    80005844:	00003917          	auipc	s2,0x3
    80005848:	1dc90913          	addi	s2,s2,476 # 80008a20 <uart_tx_r>
    8000584c:	00093783          	ld	a5,0(s2)
    80005850:	00003497          	auipc	s1,0x3
    80005854:	1d848493          	addi	s1,s1,472 # 80008a28 <uart_tx_w>
    80005858:	0004b703          	ld	a4,0(s1)
    8000585c:	02078693          	addi	a3,a5,32
    80005860:	00050993          	mv	s3,a0
    80005864:	02e69c63          	bne	a3,a4,8000589c <uartputc+0x84>
    80005868:	00001097          	auipc	ra,0x1
    8000586c:	834080e7          	jalr	-1996(ra) # 8000609c <push_on>
    80005870:	00093783          	ld	a5,0(s2)
    80005874:	0004b703          	ld	a4,0(s1)
    80005878:	02078793          	addi	a5,a5,32
    8000587c:	00e79463          	bne	a5,a4,80005884 <uartputc+0x6c>
    80005880:	0000006f          	j	80005880 <uartputc+0x68>
    80005884:	00001097          	auipc	ra,0x1
    80005888:	88c080e7          	jalr	-1908(ra) # 80006110 <pop_on>
    8000588c:	00093783          	ld	a5,0(s2)
    80005890:	0004b703          	ld	a4,0(s1)
    80005894:	02078693          	addi	a3,a5,32
    80005898:	fce688e3          	beq	a3,a4,80005868 <uartputc+0x50>
    8000589c:	01f77693          	andi	a3,a4,31
    800058a0:	00004597          	auipc	a1,0x4
    800058a4:	44058593          	addi	a1,a1,1088 # 80009ce0 <uart_tx_buf>
    800058a8:	00d586b3          	add	a3,a1,a3
    800058ac:	00170713          	addi	a4,a4,1
    800058b0:	01368023          	sb	s3,0(a3)
    800058b4:	00e4b023          	sd	a4,0(s1)
    800058b8:	10000637          	lui	a2,0x10000
    800058bc:	02f71063          	bne	a4,a5,800058dc <uartputc+0xc4>
    800058c0:	0340006f          	j	800058f4 <uartputc+0xdc>
    800058c4:	00074703          	lbu	a4,0(a4)
    800058c8:	00f93023          	sd	a5,0(s2)
    800058cc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800058d0:	00093783          	ld	a5,0(s2)
    800058d4:	0004b703          	ld	a4,0(s1)
    800058d8:	00f70e63          	beq	a4,a5,800058f4 <uartputc+0xdc>
    800058dc:	00564683          	lbu	a3,5(a2)
    800058e0:	01f7f713          	andi	a4,a5,31
    800058e4:	00e58733          	add	a4,a1,a4
    800058e8:	0206f693          	andi	a3,a3,32
    800058ec:	00178793          	addi	a5,a5,1
    800058f0:	fc069ae3          	bnez	a3,800058c4 <uartputc+0xac>
    800058f4:	02813083          	ld	ra,40(sp)
    800058f8:	02013403          	ld	s0,32(sp)
    800058fc:	01813483          	ld	s1,24(sp)
    80005900:	01013903          	ld	s2,16(sp)
    80005904:	00813983          	ld	s3,8(sp)
    80005908:	03010113          	addi	sp,sp,48
    8000590c:	00008067          	ret

0000000080005910 <uartputc_sync>:
    80005910:	ff010113          	addi	sp,sp,-16
    80005914:	00813423          	sd	s0,8(sp)
    80005918:	01010413          	addi	s0,sp,16
    8000591c:	00003717          	auipc	a4,0x3
    80005920:	0fc72703          	lw	a4,252(a4) # 80008a18 <panicked>
    80005924:	02071663          	bnez	a4,80005950 <uartputc_sync+0x40>
    80005928:	00050793          	mv	a5,a0
    8000592c:	100006b7          	lui	a3,0x10000
    80005930:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005934:	02077713          	andi	a4,a4,32
    80005938:	fe070ce3          	beqz	a4,80005930 <uartputc_sync+0x20>
    8000593c:	0ff7f793          	andi	a5,a5,255
    80005940:	00f68023          	sb	a5,0(a3)
    80005944:	00813403          	ld	s0,8(sp)
    80005948:	01010113          	addi	sp,sp,16
    8000594c:	00008067          	ret
    80005950:	0000006f          	j	80005950 <uartputc_sync+0x40>

0000000080005954 <uartstart>:
    80005954:	ff010113          	addi	sp,sp,-16
    80005958:	00813423          	sd	s0,8(sp)
    8000595c:	01010413          	addi	s0,sp,16
    80005960:	00003617          	auipc	a2,0x3
    80005964:	0c060613          	addi	a2,a2,192 # 80008a20 <uart_tx_r>
    80005968:	00003517          	auipc	a0,0x3
    8000596c:	0c050513          	addi	a0,a0,192 # 80008a28 <uart_tx_w>
    80005970:	00063783          	ld	a5,0(a2)
    80005974:	00053703          	ld	a4,0(a0)
    80005978:	04f70263          	beq	a4,a5,800059bc <uartstart+0x68>
    8000597c:	100005b7          	lui	a1,0x10000
    80005980:	00004817          	auipc	a6,0x4
    80005984:	36080813          	addi	a6,a6,864 # 80009ce0 <uart_tx_buf>
    80005988:	01c0006f          	j	800059a4 <uartstart+0x50>
    8000598c:	0006c703          	lbu	a4,0(a3)
    80005990:	00f63023          	sd	a5,0(a2)
    80005994:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005998:	00063783          	ld	a5,0(a2)
    8000599c:	00053703          	ld	a4,0(a0)
    800059a0:	00f70e63          	beq	a4,a5,800059bc <uartstart+0x68>
    800059a4:	01f7f713          	andi	a4,a5,31
    800059a8:	00e806b3          	add	a3,a6,a4
    800059ac:	0055c703          	lbu	a4,5(a1)
    800059b0:	00178793          	addi	a5,a5,1
    800059b4:	02077713          	andi	a4,a4,32
    800059b8:	fc071ae3          	bnez	a4,8000598c <uartstart+0x38>
    800059bc:	00813403          	ld	s0,8(sp)
    800059c0:	01010113          	addi	sp,sp,16
    800059c4:	00008067          	ret

00000000800059c8 <uartgetc>:
    800059c8:	ff010113          	addi	sp,sp,-16
    800059cc:	00813423          	sd	s0,8(sp)
    800059d0:	01010413          	addi	s0,sp,16
    800059d4:	10000737          	lui	a4,0x10000
    800059d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800059dc:	0017f793          	andi	a5,a5,1
    800059e0:	00078c63          	beqz	a5,800059f8 <uartgetc+0x30>
    800059e4:	00074503          	lbu	a0,0(a4)
    800059e8:	0ff57513          	andi	a0,a0,255
    800059ec:	00813403          	ld	s0,8(sp)
    800059f0:	01010113          	addi	sp,sp,16
    800059f4:	00008067          	ret
    800059f8:	fff00513          	li	a0,-1
    800059fc:	ff1ff06f          	j	800059ec <uartgetc+0x24>

0000000080005a00 <uartintr>:
    80005a00:	100007b7          	lui	a5,0x10000
    80005a04:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005a08:	0017f793          	andi	a5,a5,1
    80005a0c:	0a078463          	beqz	a5,80005ab4 <uartintr+0xb4>
    80005a10:	fe010113          	addi	sp,sp,-32
    80005a14:	00813823          	sd	s0,16(sp)
    80005a18:	00913423          	sd	s1,8(sp)
    80005a1c:	00113c23          	sd	ra,24(sp)
    80005a20:	02010413          	addi	s0,sp,32
    80005a24:	100004b7          	lui	s1,0x10000
    80005a28:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80005a2c:	0ff57513          	andi	a0,a0,255
    80005a30:	fffff097          	auipc	ra,0xfffff
    80005a34:	534080e7          	jalr	1332(ra) # 80004f64 <consoleintr>
    80005a38:	0054c783          	lbu	a5,5(s1)
    80005a3c:	0017f793          	andi	a5,a5,1
    80005a40:	fe0794e3          	bnez	a5,80005a28 <uartintr+0x28>
    80005a44:	00003617          	auipc	a2,0x3
    80005a48:	fdc60613          	addi	a2,a2,-36 # 80008a20 <uart_tx_r>
    80005a4c:	00003517          	auipc	a0,0x3
    80005a50:	fdc50513          	addi	a0,a0,-36 # 80008a28 <uart_tx_w>
    80005a54:	00063783          	ld	a5,0(a2)
    80005a58:	00053703          	ld	a4,0(a0)
    80005a5c:	04f70263          	beq	a4,a5,80005aa0 <uartintr+0xa0>
    80005a60:	100005b7          	lui	a1,0x10000
    80005a64:	00004817          	auipc	a6,0x4
    80005a68:	27c80813          	addi	a6,a6,636 # 80009ce0 <uart_tx_buf>
    80005a6c:	01c0006f          	j	80005a88 <uartintr+0x88>
    80005a70:	0006c703          	lbu	a4,0(a3)
    80005a74:	00f63023          	sd	a5,0(a2)
    80005a78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005a7c:	00063783          	ld	a5,0(a2)
    80005a80:	00053703          	ld	a4,0(a0)
    80005a84:	00f70e63          	beq	a4,a5,80005aa0 <uartintr+0xa0>
    80005a88:	01f7f713          	andi	a4,a5,31
    80005a8c:	00e806b3          	add	a3,a6,a4
    80005a90:	0055c703          	lbu	a4,5(a1)
    80005a94:	00178793          	addi	a5,a5,1
    80005a98:	02077713          	andi	a4,a4,32
    80005a9c:	fc071ae3          	bnez	a4,80005a70 <uartintr+0x70>
    80005aa0:	01813083          	ld	ra,24(sp)
    80005aa4:	01013403          	ld	s0,16(sp)
    80005aa8:	00813483          	ld	s1,8(sp)
    80005aac:	02010113          	addi	sp,sp,32
    80005ab0:	00008067          	ret
    80005ab4:	00003617          	auipc	a2,0x3
    80005ab8:	f6c60613          	addi	a2,a2,-148 # 80008a20 <uart_tx_r>
    80005abc:	00003517          	auipc	a0,0x3
    80005ac0:	f6c50513          	addi	a0,a0,-148 # 80008a28 <uart_tx_w>
    80005ac4:	00063783          	ld	a5,0(a2)
    80005ac8:	00053703          	ld	a4,0(a0)
    80005acc:	04f70263          	beq	a4,a5,80005b10 <uartintr+0x110>
    80005ad0:	100005b7          	lui	a1,0x10000
    80005ad4:	00004817          	auipc	a6,0x4
    80005ad8:	20c80813          	addi	a6,a6,524 # 80009ce0 <uart_tx_buf>
    80005adc:	01c0006f          	j	80005af8 <uartintr+0xf8>
    80005ae0:	0006c703          	lbu	a4,0(a3)
    80005ae4:	00f63023          	sd	a5,0(a2)
    80005ae8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005aec:	00063783          	ld	a5,0(a2)
    80005af0:	00053703          	ld	a4,0(a0)
    80005af4:	02f70063          	beq	a4,a5,80005b14 <uartintr+0x114>
    80005af8:	01f7f713          	andi	a4,a5,31
    80005afc:	00e806b3          	add	a3,a6,a4
    80005b00:	0055c703          	lbu	a4,5(a1)
    80005b04:	00178793          	addi	a5,a5,1
    80005b08:	02077713          	andi	a4,a4,32
    80005b0c:	fc071ae3          	bnez	a4,80005ae0 <uartintr+0xe0>
    80005b10:	00008067          	ret
    80005b14:	00008067          	ret

0000000080005b18 <kinit>:
    80005b18:	fc010113          	addi	sp,sp,-64
    80005b1c:	02913423          	sd	s1,40(sp)
    80005b20:	fffff7b7          	lui	a5,0xfffff
    80005b24:	00005497          	auipc	s1,0x5
    80005b28:	1db48493          	addi	s1,s1,475 # 8000acff <end+0xfff>
    80005b2c:	02813823          	sd	s0,48(sp)
    80005b30:	01313c23          	sd	s3,24(sp)
    80005b34:	00f4f4b3          	and	s1,s1,a5
    80005b38:	02113c23          	sd	ra,56(sp)
    80005b3c:	03213023          	sd	s2,32(sp)
    80005b40:	01413823          	sd	s4,16(sp)
    80005b44:	01513423          	sd	s5,8(sp)
    80005b48:	04010413          	addi	s0,sp,64
    80005b4c:	000017b7          	lui	a5,0x1
    80005b50:	01100993          	li	s3,17
    80005b54:	00f487b3          	add	a5,s1,a5
    80005b58:	01b99993          	slli	s3,s3,0x1b
    80005b5c:	06f9e063          	bltu	s3,a5,80005bbc <kinit+0xa4>
    80005b60:	00004a97          	auipc	s5,0x4
    80005b64:	1a0a8a93          	addi	s5,s5,416 # 80009d00 <end>
    80005b68:	0754ec63          	bltu	s1,s5,80005be0 <kinit+0xc8>
    80005b6c:	0734fa63          	bgeu	s1,s3,80005be0 <kinit+0xc8>
    80005b70:	00088a37          	lui	s4,0x88
    80005b74:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005b78:	00003917          	auipc	s2,0x3
    80005b7c:	eb890913          	addi	s2,s2,-328 # 80008a30 <kmem>
    80005b80:	00ca1a13          	slli	s4,s4,0xc
    80005b84:	0140006f          	j	80005b98 <kinit+0x80>
    80005b88:	000017b7          	lui	a5,0x1
    80005b8c:	00f484b3          	add	s1,s1,a5
    80005b90:	0554e863          	bltu	s1,s5,80005be0 <kinit+0xc8>
    80005b94:	0534f663          	bgeu	s1,s3,80005be0 <kinit+0xc8>
    80005b98:	00001637          	lui	a2,0x1
    80005b9c:	00100593          	li	a1,1
    80005ba0:	00048513          	mv	a0,s1
    80005ba4:	00000097          	auipc	ra,0x0
    80005ba8:	5e4080e7          	jalr	1508(ra) # 80006188 <__memset>
    80005bac:	00093783          	ld	a5,0(s2)
    80005bb0:	00f4b023          	sd	a5,0(s1)
    80005bb4:	00993023          	sd	s1,0(s2)
    80005bb8:	fd4498e3          	bne	s1,s4,80005b88 <kinit+0x70>
    80005bbc:	03813083          	ld	ra,56(sp)
    80005bc0:	03013403          	ld	s0,48(sp)
    80005bc4:	02813483          	ld	s1,40(sp)
    80005bc8:	02013903          	ld	s2,32(sp)
    80005bcc:	01813983          	ld	s3,24(sp)
    80005bd0:	01013a03          	ld	s4,16(sp)
    80005bd4:	00813a83          	ld	s5,8(sp)
    80005bd8:	04010113          	addi	sp,sp,64
    80005bdc:	00008067          	ret
    80005be0:	00002517          	auipc	a0,0x2
    80005be4:	89850513          	addi	a0,a0,-1896 # 80007478 <digits+0x18>
    80005be8:	fffff097          	auipc	ra,0xfffff
    80005bec:	4b4080e7          	jalr	1204(ra) # 8000509c <panic>

0000000080005bf0 <freerange>:
    80005bf0:	fc010113          	addi	sp,sp,-64
    80005bf4:	000017b7          	lui	a5,0x1
    80005bf8:	02913423          	sd	s1,40(sp)
    80005bfc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005c00:	009504b3          	add	s1,a0,s1
    80005c04:	fffff537          	lui	a0,0xfffff
    80005c08:	02813823          	sd	s0,48(sp)
    80005c0c:	02113c23          	sd	ra,56(sp)
    80005c10:	03213023          	sd	s2,32(sp)
    80005c14:	01313c23          	sd	s3,24(sp)
    80005c18:	01413823          	sd	s4,16(sp)
    80005c1c:	01513423          	sd	s5,8(sp)
    80005c20:	01613023          	sd	s6,0(sp)
    80005c24:	04010413          	addi	s0,sp,64
    80005c28:	00a4f4b3          	and	s1,s1,a0
    80005c2c:	00f487b3          	add	a5,s1,a5
    80005c30:	06f5e463          	bltu	a1,a5,80005c98 <freerange+0xa8>
    80005c34:	00004a97          	auipc	s5,0x4
    80005c38:	0cca8a93          	addi	s5,s5,204 # 80009d00 <end>
    80005c3c:	0954e263          	bltu	s1,s5,80005cc0 <freerange+0xd0>
    80005c40:	01100993          	li	s3,17
    80005c44:	01b99993          	slli	s3,s3,0x1b
    80005c48:	0734fc63          	bgeu	s1,s3,80005cc0 <freerange+0xd0>
    80005c4c:	00058a13          	mv	s4,a1
    80005c50:	00003917          	auipc	s2,0x3
    80005c54:	de090913          	addi	s2,s2,-544 # 80008a30 <kmem>
    80005c58:	00002b37          	lui	s6,0x2
    80005c5c:	0140006f          	j	80005c70 <freerange+0x80>
    80005c60:	000017b7          	lui	a5,0x1
    80005c64:	00f484b3          	add	s1,s1,a5
    80005c68:	0554ec63          	bltu	s1,s5,80005cc0 <freerange+0xd0>
    80005c6c:	0534fa63          	bgeu	s1,s3,80005cc0 <freerange+0xd0>
    80005c70:	00001637          	lui	a2,0x1
    80005c74:	00100593          	li	a1,1
    80005c78:	00048513          	mv	a0,s1
    80005c7c:	00000097          	auipc	ra,0x0
    80005c80:	50c080e7          	jalr	1292(ra) # 80006188 <__memset>
    80005c84:	00093703          	ld	a4,0(s2)
    80005c88:	016487b3          	add	a5,s1,s6
    80005c8c:	00e4b023          	sd	a4,0(s1)
    80005c90:	00993023          	sd	s1,0(s2)
    80005c94:	fcfa76e3          	bgeu	s4,a5,80005c60 <freerange+0x70>
    80005c98:	03813083          	ld	ra,56(sp)
    80005c9c:	03013403          	ld	s0,48(sp)
    80005ca0:	02813483          	ld	s1,40(sp)
    80005ca4:	02013903          	ld	s2,32(sp)
    80005ca8:	01813983          	ld	s3,24(sp)
    80005cac:	01013a03          	ld	s4,16(sp)
    80005cb0:	00813a83          	ld	s5,8(sp)
    80005cb4:	00013b03          	ld	s6,0(sp)
    80005cb8:	04010113          	addi	sp,sp,64
    80005cbc:	00008067          	ret
    80005cc0:	00001517          	auipc	a0,0x1
    80005cc4:	7b850513          	addi	a0,a0,1976 # 80007478 <digits+0x18>
    80005cc8:	fffff097          	auipc	ra,0xfffff
    80005ccc:	3d4080e7          	jalr	980(ra) # 8000509c <panic>

0000000080005cd0 <kfree>:
    80005cd0:	fe010113          	addi	sp,sp,-32
    80005cd4:	00813823          	sd	s0,16(sp)
    80005cd8:	00113c23          	sd	ra,24(sp)
    80005cdc:	00913423          	sd	s1,8(sp)
    80005ce0:	02010413          	addi	s0,sp,32
    80005ce4:	03451793          	slli	a5,a0,0x34
    80005ce8:	04079c63          	bnez	a5,80005d40 <kfree+0x70>
    80005cec:	00004797          	auipc	a5,0x4
    80005cf0:	01478793          	addi	a5,a5,20 # 80009d00 <end>
    80005cf4:	00050493          	mv	s1,a0
    80005cf8:	04f56463          	bltu	a0,a5,80005d40 <kfree+0x70>
    80005cfc:	01100793          	li	a5,17
    80005d00:	01b79793          	slli	a5,a5,0x1b
    80005d04:	02f57e63          	bgeu	a0,a5,80005d40 <kfree+0x70>
    80005d08:	00001637          	lui	a2,0x1
    80005d0c:	00100593          	li	a1,1
    80005d10:	00000097          	auipc	ra,0x0
    80005d14:	478080e7          	jalr	1144(ra) # 80006188 <__memset>
    80005d18:	00003797          	auipc	a5,0x3
    80005d1c:	d1878793          	addi	a5,a5,-744 # 80008a30 <kmem>
    80005d20:	0007b703          	ld	a4,0(a5)
    80005d24:	01813083          	ld	ra,24(sp)
    80005d28:	01013403          	ld	s0,16(sp)
    80005d2c:	00e4b023          	sd	a4,0(s1)
    80005d30:	0097b023          	sd	s1,0(a5)
    80005d34:	00813483          	ld	s1,8(sp)
    80005d38:	02010113          	addi	sp,sp,32
    80005d3c:	00008067          	ret
    80005d40:	00001517          	auipc	a0,0x1
    80005d44:	73850513          	addi	a0,a0,1848 # 80007478 <digits+0x18>
    80005d48:	fffff097          	auipc	ra,0xfffff
    80005d4c:	354080e7          	jalr	852(ra) # 8000509c <panic>

0000000080005d50 <kalloc>:
    80005d50:	fe010113          	addi	sp,sp,-32
    80005d54:	00813823          	sd	s0,16(sp)
    80005d58:	00913423          	sd	s1,8(sp)
    80005d5c:	00113c23          	sd	ra,24(sp)
    80005d60:	02010413          	addi	s0,sp,32
    80005d64:	00003797          	auipc	a5,0x3
    80005d68:	ccc78793          	addi	a5,a5,-820 # 80008a30 <kmem>
    80005d6c:	0007b483          	ld	s1,0(a5)
    80005d70:	02048063          	beqz	s1,80005d90 <kalloc+0x40>
    80005d74:	0004b703          	ld	a4,0(s1)
    80005d78:	00001637          	lui	a2,0x1
    80005d7c:	00500593          	li	a1,5
    80005d80:	00048513          	mv	a0,s1
    80005d84:	00e7b023          	sd	a4,0(a5)
    80005d88:	00000097          	auipc	ra,0x0
    80005d8c:	400080e7          	jalr	1024(ra) # 80006188 <__memset>
    80005d90:	01813083          	ld	ra,24(sp)
    80005d94:	01013403          	ld	s0,16(sp)
    80005d98:	00048513          	mv	a0,s1
    80005d9c:	00813483          	ld	s1,8(sp)
    80005da0:	02010113          	addi	sp,sp,32
    80005da4:	00008067          	ret

0000000080005da8 <initlock>:
    80005da8:	ff010113          	addi	sp,sp,-16
    80005dac:	00813423          	sd	s0,8(sp)
    80005db0:	01010413          	addi	s0,sp,16
    80005db4:	00813403          	ld	s0,8(sp)
    80005db8:	00b53423          	sd	a1,8(a0)
    80005dbc:	00052023          	sw	zero,0(a0)
    80005dc0:	00053823          	sd	zero,16(a0)
    80005dc4:	01010113          	addi	sp,sp,16
    80005dc8:	00008067          	ret

0000000080005dcc <acquire>:
    80005dcc:	fe010113          	addi	sp,sp,-32
    80005dd0:	00813823          	sd	s0,16(sp)
    80005dd4:	00913423          	sd	s1,8(sp)
    80005dd8:	00113c23          	sd	ra,24(sp)
    80005ddc:	01213023          	sd	s2,0(sp)
    80005de0:	02010413          	addi	s0,sp,32
    80005de4:	00050493          	mv	s1,a0
    80005de8:	10002973          	csrr	s2,sstatus
    80005dec:	100027f3          	csrr	a5,sstatus
    80005df0:	ffd7f793          	andi	a5,a5,-3
    80005df4:	10079073          	csrw	sstatus,a5
    80005df8:	fffff097          	auipc	ra,0xfffff
    80005dfc:	8e0080e7          	jalr	-1824(ra) # 800046d8 <mycpu>
    80005e00:	07852783          	lw	a5,120(a0)
    80005e04:	06078e63          	beqz	a5,80005e80 <acquire+0xb4>
    80005e08:	fffff097          	auipc	ra,0xfffff
    80005e0c:	8d0080e7          	jalr	-1840(ra) # 800046d8 <mycpu>
    80005e10:	07852783          	lw	a5,120(a0)
    80005e14:	0004a703          	lw	a4,0(s1)
    80005e18:	0017879b          	addiw	a5,a5,1
    80005e1c:	06f52c23          	sw	a5,120(a0)
    80005e20:	04071063          	bnez	a4,80005e60 <acquire+0x94>
    80005e24:	00100713          	li	a4,1
    80005e28:	00070793          	mv	a5,a4
    80005e2c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005e30:	0007879b          	sext.w	a5,a5
    80005e34:	fe079ae3          	bnez	a5,80005e28 <acquire+0x5c>
    80005e38:	0ff0000f          	fence
    80005e3c:	fffff097          	auipc	ra,0xfffff
    80005e40:	89c080e7          	jalr	-1892(ra) # 800046d8 <mycpu>
    80005e44:	01813083          	ld	ra,24(sp)
    80005e48:	01013403          	ld	s0,16(sp)
    80005e4c:	00a4b823          	sd	a0,16(s1)
    80005e50:	00013903          	ld	s2,0(sp)
    80005e54:	00813483          	ld	s1,8(sp)
    80005e58:	02010113          	addi	sp,sp,32
    80005e5c:	00008067          	ret
    80005e60:	0104b903          	ld	s2,16(s1)
    80005e64:	fffff097          	auipc	ra,0xfffff
    80005e68:	874080e7          	jalr	-1932(ra) # 800046d8 <mycpu>
    80005e6c:	faa91ce3          	bne	s2,a0,80005e24 <acquire+0x58>
    80005e70:	00001517          	auipc	a0,0x1
    80005e74:	61050513          	addi	a0,a0,1552 # 80007480 <digits+0x20>
    80005e78:	fffff097          	auipc	ra,0xfffff
    80005e7c:	224080e7          	jalr	548(ra) # 8000509c <panic>
    80005e80:	00195913          	srli	s2,s2,0x1
    80005e84:	fffff097          	auipc	ra,0xfffff
    80005e88:	854080e7          	jalr	-1964(ra) # 800046d8 <mycpu>
    80005e8c:	00197913          	andi	s2,s2,1
    80005e90:	07252e23          	sw	s2,124(a0)
    80005e94:	f75ff06f          	j	80005e08 <acquire+0x3c>

0000000080005e98 <release>:
    80005e98:	fe010113          	addi	sp,sp,-32
    80005e9c:	00813823          	sd	s0,16(sp)
    80005ea0:	00113c23          	sd	ra,24(sp)
    80005ea4:	00913423          	sd	s1,8(sp)
    80005ea8:	01213023          	sd	s2,0(sp)
    80005eac:	02010413          	addi	s0,sp,32
    80005eb0:	00052783          	lw	a5,0(a0)
    80005eb4:	00079a63          	bnez	a5,80005ec8 <release+0x30>
    80005eb8:	00001517          	auipc	a0,0x1
    80005ebc:	5d050513          	addi	a0,a0,1488 # 80007488 <digits+0x28>
    80005ec0:	fffff097          	auipc	ra,0xfffff
    80005ec4:	1dc080e7          	jalr	476(ra) # 8000509c <panic>
    80005ec8:	01053903          	ld	s2,16(a0)
    80005ecc:	00050493          	mv	s1,a0
    80005ed0:	fffff097          	auipc	ra,0xfffff
    80005ed4:	808080e7          	jalr	-2040(ra) # 800046d8 <mycpu>
    80005ed8:	fea910e3          	bne	s2,a0,80005eb8 <release+0x20>
    80005edc:	0004b823          	sd	zero,16(s1)
    80005ee0:	0ff0000f          	fence
    80005ee4:	0f50000f          	fence	iorw,ow
    80005ee8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80005eec:	ffffe097          	auipc	ra,0xffffe
    80005ef0:	7ec080e7          	jalr	2028(ra) # 800046d8 <mycpu>
    80005ef4:	100027f3          	csrr	a5,sstatus
    80005ef8:	0027f793          	andi	a5,a5,2
    80005efc:	04079a63          	bnez	a5,80005f50 <release+0xb8>
    80005f00:	07852783          	lw	a5,120(a0)
    80005f04:	02f05e63          	blez	a5,80005f40 <release+0xa8>
    80005f08:	fff7871b          	addiw	a4,a5,-1
    80005f0c:	06e52c23          	sw	a4,120(a0)
    80005f10:	00071c63          	bnez	a4,80005f28 <release+0x90>
    80005f14:	07c52783          	lw	a5,124(a0)
    80005f18:	00078863          	beqz	a5,80005f28 <release+0x90>
    80005f1c:	100027f3          	csrr	a5,sstatus
    80005f20:	0027e793          	ori	a5,a5,2
    80005f24:	10079073          	csrw	sstatus,a5
    80005f28:	01813083          	ld	ra,24(sp)
    80005f2c:	01013403          	ld	s0,16(sp)
    80005f30:	00813483          	ld	s1,8(sp)
    80005f34:	00013903          	ld	s2,0(sp)
    80005f38:	02010113          	addi	sp,sp,32
    80005f3c:	00008067          	ret
    80005f40:	00001517          	auipc	a0,0x1
    80005f44:	56850513          	addi	a0,a0,1384 # 800074a8 <digits+0x48>
    80005f48:	fffff097          	auipc	ra,0xfffff
    80005f4c:	154080e7          	jalr	340(ra) # 8000509c <panic>
    80005f50:	00001517          	auipc	a0,0x1
    80005f54:	54050513          	addi	a0,a0,1344 # 80007490 <digits+0x30>
    80005f58:	fffff097          	auipc	ra,0xfffff
    80005f5c:	144080e7          	jalr	324(ra) # 8000509c <panic>

0000000080005f60 <holding>:
    80005f60:	00052783          	lw	a5,0(a0)
    80005f64:	00079663          	bnez	a5,80005f70 <holding+0x10>
    80005f68:	00000513          	li	a0,0
    80005f6c:	00008067          	ret
    80005f70:	fe010113          	addi	sp,sp,-32
    80005f74:	00813823          	sd	s0,16(sp)
    80005f78:	00913423          	sd	s1,8(sp)
    80005f7c:	00113c23          	sd	ra,24(sp)
    80005f80:	02010413          	addi	s0,sp,32
    80005f84:	01053483          	ld	s1,16(a0)
    80005f88:	ffffe097          	auipc	ra,0xffffe
    80005f8c:	750080e7          	jalr	1872(ra) # 800046d8 <mycpu>
    80005f90:	01813083          	ld	ra,24(sp)
    80005f94:	01013403          	ld	s0,16(sp)
    80005f98:	40a48533          	sub	a0,s1,a0
    80005f9c:	00153513          	seqz	a0,a0
    80005fa0:	00813483          	ld	s1,8(sp)
    80005fa4:	02010113          	addi	sp,sp,32
    80005fa8:	00008067          	ret

0000000080005fac <push_off>:
    80005fac:	fe010113          	addi	sp,sp,-32
    80005fb0:	00813823          	sd	s0,16(sp)
    80005fb4:	00113c23          	sd	ra,24(sp)
    80005fb8:	00913423          	sd	s1,8(sp)
    80005fbc:	02010413          	addi	s0,sp,32
    80005fc0:	100024f3          	csrr	s1,sstatus
    80005fc4:	100027f3          	csrr	a5,sstatus
    80005fc8:	ffd7f793          	andi	a5,a5,-3
    80005fcc:	10079073          	csrw	sstatus,a5
    80005fd0:	ffffe097          	auipc	ra,0xffffe
    80005fd4:	708080e7          	jalr	1800(ra) # 800046d8 <mycpu>
    80005fd8:	07852783          	lw	a5,120(a0)
    80005fdc:	02078663          	beqz	a5,80006008 <push_off+0x5c>
    80005fe0:	ffffe097          	auipc	ra,0xffffe
    80005fe4:	6f8080e7          	jalr	1784(ra) # 800046d8 <mycpu>
    80005fe8:	07852783          	lw	a5,120(a0)
    80005fec:	01813083          	ld	ra,24(sp)
    80005ff0:	01013403          	ld	s0,16(sp)
    80005ff4:	0017879b          	addiw	a5,a5,1
    80005ff8:	06f52c23          	sw	a5,120(a0)
    80005ffc:	00813483          	ld	s1,8(sp)
    80006000:	02010113          	addi	sp,sp,32
    80006004:	00008067          	ret
    80006008:	0014d493          	srli	s1,s1,0x1
    8000600c:	ffffe097          	auipc	ra,0xffffe
    80006010:	6cc080e7          	jalr	1740(ra) # 800046d8 <mycpu>
    80006014:	0014f493          	andi	s1,s1,1
    80006018:	06952e23          	sw	s1,124(a0)
    8000601c:	fc5ff06f          	j	80005fe0 <push_off+0x34>

0000000080006020 <pop_off>:
    80006020:	ff010113          	addi	sp,sp,-16
    80006024:	00813023          	sd	s0,0(sp)
    80006028:	00113423          	sd	ra,8(sp)
    8000602c:	01010413          	addi	s0,sp,16
    80006030:	ffffe097          	auipc	ra,0xffffe
    80006034:	6a8080e7          	jalr	1704(ra) # 800046d8 <mycpu>
    80006038:	100027f3          	csrr	a5,sstatus
    8000603c:	0027f793          	andi	a5,a5,2
    80006040:	04079663          	bnez	a5,8000608c <pop_off+0x6c>
    80006044:	07852783          	lw	a5,120(a0)
    80006048:	02f05a63          	blez	a5,8000607c <pop_off+0x5c>
    8000604c:	fff7871b          	addiw	a4,a5,-1
    80006050:	06e52c23          	sw	a4,120(a0)
    80006054:	00071c63          	bnez	a4,8000606c <pop_off+0x4c>
    80006058:	07c52783          	lw	a5,124(a0)
    8000605c:	00078863          	beqz	a5,8000606c <pop_off+0x4c>
    80006060:	100027f3          	csrr	a5,sstatus
    80006064:	0027e793          	ori	a5,a5,2
    80006068:	10079073          	csrw	sstatus,a5
    8000606c:	00813083          	ld	ra,8(sp)
    80006070:	00013403          	ld	s0,0(sp)
    80006074:	01010113          	addi	sp,sp,16
    80006078:	00008067          	ret
    8000607c:	00001517          	auipc	a0,0x1
    80006080:	42c50513          	addi	a0,a0,1068 # 800074a8 <digits+0x48>
    80006084:	fffff097          	auipc	ra,0xfffff
    80006088:	018080e7          	jalr	24(ra) # 8000509c <panic>
    8000608c:	00001517          	auipc	a0,0x1
    80006090:	40450513          	addi	a0,a0,1028 # 80007490 <digits+0x30>
    80006094:	fffff097          	auipc	ra,0xfffff
    80006098:	008080e7          	jalr	8(ra) # 8000509c <panic>

000000008000609c <push_on>:
    8000609c:	fe010113          	addi	sp,sp,-32
    800060a0:	00813823          	sd	s0,16(sp)
    800060a4:	00113c23          	sd	ra,24(sp)
    800060a8:	00913423          	sd	s1,8(sp)
    800060ac:	02010413          	addi	s0,sp,32
    800060b0:	100024f3          	csrr	s1,sstatus
    800060b4:	100027f3          	csrr	a5,sstatus
    800060b8:	0027e793          	ori	a5,a5,2
    800060bc:	10079073          	csrw	sstatus,a5
    800060c0:	ffffe097          	auipc	ra,0xffffe
    800060c4:	618080e7          	jalr	1560(ra) # 800046d8 <mycpu>
    800060c8:	07852783          	lw	a5,120(a0)
    800060cc:	02078663          	beqz	a5,800060f8 <push_on+0x5c>
    800060d0:	ffffe097          	auipc	ra,0xffffe
    800060d4:	608080e7          	jalr	1544(ra) # 800046d8 <mycpu>
    800060d8:	07852783          	lw	a5,120(a0)
    800060dc:	01813083          	ld	ra,24(sp)
    800060e0:	01013403          	ld	s0,16(sp)
    800060e4:	0017879b          	addiw	a5,a5,1
    800060e8:	06f52c23          	sw	a5,120(a0)
    800060ec:	00813483          	ld	s1,8(sp)
    800060f0:	02010113          	addi	sp,sp,32
    800060f4:	00008067          	ret
    800060f8:	0014d493          	srli	s1,s1,0x1
    800060fc:	ffffe097          	auipc	ra,0xffffe
    80006100:	5dc080e7          	jalr	1500(ra) # 800046d8 <mycpu>
    80006104:	0014f493          	andi	s1,s1,1
    80006108:	06952e23          	sw	s1,124(a0)
    8000610c:	fc5ff06f          	j	800060d0 <push_on+0x34>

0000000080006110 <pop_on>:
    80006110:	ff010113          	addi	sp,sp,-16
    80006114:	00813023          	sd	s0,0(sp)
    80006118:	00113423          	sd	ra,8(sp)
    8000611c:	01010413          	addi	s0,sp,16
    80006120:	ffffe097          	auipc	ra,0xffffe
    80006124:	5b8080e7          	jalr	1464(ra) # 800046d8 <mycpu>
    80006128:	100027f3          	csrr	a5,sstatus
    8000612c:	0027f793          	andi	a5,a5,2
    80006130:	04078463          	beqz	a5,80006178 <pop_on+0x68>
    80006134:	07852783          	lw	a5,120(a0)
    80006138:	02f05863          	blez	a5,80006168 <pop_on+0x58>
    8000613c:	fff7879b          	addiw	a5,a5,-1
    80006140:	06f52c23          	sw	a5,120(a0)
    80006144:	07853783          	ld	a5,120(a0)
    80006148:	00079863          	bnez	a5,80006158 <pop_on+0x48>
    8000614c:	100027f3          	csrr	a5,sstatus
    80006150:	ffd7f793          	andi	a5,a5,-3
    80006154:	10079073          	csrw	sstatus,a5
    80006158:	00813083          	ld	ra,8(sp)
    8000615c:	00013403          	ld	s0,0(sp)
    80006160:	01010113          	addi	sp,sp,16
    80006164:	00008067          	ret
    80006168:	00001517          	auipc	a0,0x1
    8000616c:	36850513          	addi	a0,a0,872 # 800074d0 <digits+0x70>
    80006170:	fffff097          	auipc	ra,0xfffff
    80006174:	f2c080e7          	jalr	-212(ra) # 8000509c <panic>
    80006178:	00001517          	auipc	a0,0x1
    8000617c:	33850513          	addi	a0,a0,824 # 800074b0 <digits+0x50>
    80006180:	fffff097          	auipc	ra,0xfffff
    80006184:	f1c080e7          	jalr	-228(ra) # 8000509c <panic>

0000000080006188 <__memset>:
    80006188:	ff010113          	addi	sp,sp,-16
    8000618c:	00813423          	sd	s0,8(sp)
    80006190:	01010413          	addi	s0,sp,16
    80006194:	1a060e63          	beqz	a2,80006350 <__memset+0x1c8>
    80006198:	40a007b3          	neg	a5,a0
    8000619c:	0077f793          	andi	a5,a5,7
    800061a0:	00778693          	addi	a3,a5,7
    800061a4:	00b00813          	li	a6,11
    800061a8:	0ff5f593          	andi	a1,a1,255
    800061ac:	fff6071b          	addiw	a4,a2,-1
    800061b0:	1b06e663          	bltu	a3,a6,8000635c <__memset+0x1d4>
    800061b4:	1cd76463          	bltu	a4,a3,8000637c <__memset+0x1f4>
    800061b8:	1a078e63          	beqz	a5,80006374 <__memset+0x1ec>
    800061bc:	00b50023          	sb	a1,0(a0)
    800061c0:	00100713          	li	a4,1
    800061c4:	1ae78463          	beq	a5,a4,8000636c <__memset+0x1e4>
    800061c8:	00b500a3          	sb	a1,1(a0)
    800061cc:	00200713          	li	a4,2
    800061d0:	1ae78a63          	beq	a5,a4,80006384 <__memset+0x1fc>
    800061d4:	00b50123          	sb	a1,2(a0)
    800061d8:	00300713          	li	a4,3
    800061dc:	18e78463          	beq	a5,a4,80006364 <__memset+0x1dc>
    800061e0:	00b501a3          	sb	a1,3(a0)
    800061e4:	00400713          	li	a4,4
    800061e8:	1ae78263          	beq	a5,a4,8000638c <__memset+0x204>
    800061ec:	00b50223          	sb	a1,4(a0)
    800061f0:	00500713          	li	a4,5
    800061f4:	1ae78063          	beq	a5,a4,80006394 <__memset+0x20c>
    800061f8:	00b502a3          	sb	a1,5(a0)
    800061fc:	00700713          	li	a4,7
    80006200:	18e79e63          	bne	a5,a4,8000639c <__memset+0x214>
    80006204:	00b50323          	sb	a1,6(a0)
    80006208:	00700e93          	li	t4,7
    8000620c:	00859713          	slli	a4,a1,0x8
    80006210:	00e5e733          	or	a4,a1,a4
    80006214:	01059e13          	slli	t3,a1,0x10
    80006218:	01c76e33          	or	t3,a4,t3
    8000621c:	01859313          	slli	t1,a1,0x18
    80006220:	006e6333          	or	t1,t3,t1
    80006224:	02059893          	slli	a7,a1,0x20
    80006228:	40f60e3b          	subw	t3,a2,a5
    8000622c:	011368b3          	or	a7,t1,a7
    80006230:	02859813          	slli	a6,a1,0x28
    80006234:	0108e833          	or	a6,a7,a6
    80006238:	03059693          	slli	a3,a1,0x30
    8000623c:	003e589b          	srliw	a7,t3,0x3
    80006240:	00d866b3          	or	a3,a6,a3
    80006244:	03859713          	slli	a4,a1,0x38
    80006248:	00389813          	slli	a6,a7,0x3
    8000624c:	00f507b3          	add	a5,a0,a5
    80006250:	00e6e733          	or	a4,a3,a4
    80006254:	000e089b          	sext.w	a7,t3
    80006258:	00f806b3          	add	a3,a6,a5
    8000625c:	00e7b023          	sd	a4,0(a5)
    80006260:	00878793          	addi	a5,a5,8
    80006264:	fed79ce3          	bne	a5,a3,8000625c <__memset+0xd4>
    80006268:	ff8e7793          	andi	a5,t3,-8
    8000626c:	0007871b          	sext.w	a4,a5
    80006270:	01d787bb          	addw	a5,a5,t4
    80006274:	0ce88e63          	beq	a7,a4,80006350 <__memset+0x1c8>
    80006278:	00f50733          	add	a4,a0,a5
    8000627c:	00b70023          	sb	a1,0(a4)
    80006280:	0017871b          	addiw	a4,a5,1
    80006284:	0cc77663          	bgeu	a4,a2,80006350 <__memset+0x1c8>
    80006288:	00e50733          	add	a4,a0,a4
    8000628c:	00b70023          	sb	a1,0(a4)
    80006290:	0027871b          	addiw	a4,a5,2
    80006294:	0ac77e63          	bgeu	a4,a2,80006350 <__memset+0x1c8>
    80006298:	00e50733          	add	a4,a0,a4
    8000629c:	00b70023          	sb	a1,0(a4)
    800062a0:	0037871b          	addiw	a4,a5,3
    800062a4:	0ac77663          	bgeu	a4,a2,80006350 <__memset+0x1c8>
    800062a8:	00e50733          	add	a4,a0,a4
    800062ac:	00b70023          	sb	a1,0(a4)
    800062b0:	0047871b          	addiw	a4,a5,4
    800062b4:	08c77e63          	bgeu	a4,a2,80006350 <__memset+0x1c8>
    800062b8:	00e50733          	add	a4,a0,a4
    800062bc:	00b70023          	sb	a1,0(a4)
    800062c0:	0057871b          	addiw	a4,a5,5
    800062c4:	08c77663          	bgeu	a4,a2,80006350 <__memset+0x1c8>
    800062c8:	00e50733          	add	a4,a0,a4
    800062cc:	00b70023          	sb	a1,0(a4)
    800062d0:	0067871b          	addiw	a4,a5,6
    800062d4:	06c77e63          	bgeu	a4,a2,80006350 <__memset+0x1c8>
    800062d8:	00e50733          	add	a4,a0,a4
    800062dc:	00b70023          	sb	a1,0(a4)
    800062e0:	0077871b          	addiw	a4,a5,7
    800062e4:	06c77663          	bgeu	a4,a2,80006350 <__memset+0x1c8>
    800062e8:	00e50733          	add	a4,a0,a4
    800062ec:	00b70023          	sb	a1,0(a4)
    800062f0:	0087871b          	addiw	a4,a5,8
    800062f4:	04c77e63          	bgeu	a4,a2,80006350 <__memset+0x1c8>
    800062f8:	00e50733          	add	a4,a0,a4
    800062fc:	00b70023          	sb	a1,0(a4)
    80006300:	0097871b          	addiw	a4,a5,9
    80006304:	04c77663          	bgeu	a4,a2,80006350 <__memset+0x1c8>
    80006308:	00e50733          	add	a4,a0,a4
    8000630c:	00b70023          	sb	a1,0(a4)
    80006310:	00a7871b          	addiw	a4,a5,10
    80006314:	02c77e63          	bgeu	a4,a2,80006350 <__memset+0x1c8>
    80006318:	00e50733          	add	a4,a0,a4
    8000631c:	00b70023          	sb	a1,0(a4)
    80006320:	00b7871b          	addiw	a4,a5,11
    80006324:	02c77663          	bgeu	a4,a2,80006350 <__memset+0x1c8>
    80006328:	00e50733          	add	a4,a0,a4
    8000632c:	00b70023          	sb	a1,0(a4)
    80006330:	00c7871b          	addiw	a4,a5,12
    80006334:	00c77e63          	bgeu	a4,a2,80006350 <__memset+0x1c8>
    80006338:	00e50733          	add	a4,a0,a4
    8000633c:	00b70023          	sb	a1,0(a4)
    80006340:	00d7879b          	addiw	a5,a5,13
    80006344:	00c7f663          	bgeu	a5,a2,80006350 <__memset+0x1c8>
    80006348:	00f507b3          	add	a5,a0,a5
    8000634c:	00b78023          	sb	a1,0(a5)
    80006350:	00813403          	ld	s0,8(sp)
    80006354:	01010113          	addi	sp,sp,16
    80006358:	00008067          	ret
    8000635c:	00b00693          	li	a3,11
    80006360:	e55ff06f          	j	800061b4 <__memset+0x2c>
    80006364:	00300e93          	li	t4,3
    80006368:	ea5ff06f          	j	8000620c <__memset+0x84>
    8000636c:	00100e93          	li	t4,1
    80006370:	e9dff06f          	j	8000620c <__memset+0x84>
    80006374:	00000e93          	li	t4,0
    80006378:	e95ff06f          	j	8000620c <__memset+0x84>
    8000637c:	00000793          	li	a5,0
    80006380:	ef9ff06f          	j	80006278 <__memset+0xf0>
    80006384:	00200e93          	li	t4,2
    80006388:	e85ff06f          	j	8000620c <__memset+0x84>
    8000638c:	00400e93          	li	t4,4
    80006390:	e7dff06f          	j	8000620c <__memset+0x84>
    80006394:	00500e93          	li	t4,5
    80006398:	e75ff06f          	j	8000620c <__memset+0x84>
    8000639c:	00600e93          	li	t4,6
    800063a0:	e6dff06f          	j	8000620c <__memset+0x84>

00000000800063a4 <__memmove>:
    800063a4:	ff010113          	addi	sp,sp,-16
    800063a8:	00813423          	sd	s0,8(sp)
    800063ac:	01010413          	addi	s0,sp,16
    800063b0:	0e060863          	beqz	a2,800064a0 <__memmove+0xfc>
    800063b4:	fff6069b          	addiw	a3,a2,-1
    800063b8:	0006881b          	sext.w	a6,a3
    800063bc:	0ea5e863          	bltu	a1,a0,800064ac <__memmove+0x108>
    800063c0:	00758713          	addi	a4,a1,7
    800063c4:	00a5e7b3          	or	a5,a1,a0
    800063c8:	40a70733          	sub	a4,a4,a0
    800063cc:	0077f793          	andi	a5,a5,7
    800063d0:	00f73713          	sltiu	a4,a4,15
    800063d4:	00174713          	xori	a4,a4,1
    800063d8:	0017b793          	seqz	a5,a5
    800063dc:	00e7f7b3          	and	a5,a5,a4
    800063e0:	10078863          	beqz	a5,800064f0 <__memmove+0x14c>
    800063e4:	00900793          	li	a5,9
    800063e8:	1107f463          	bgeu	a5,a6,800064f0 <__memmove+0x14c>
    800063ec:	0036581b          	srliw	a6,a2,0x3
    800063f0:	fff8081b          	addiw	a6,a6,-1
    800063f4:	02081813          	slli	a6,a6,0x20
    800063f8:	01d85893          	srli	a7,a6,0x1d
    800063fc:	00858813          	addi	a6,a1,8
    80006400:	00058793          	mv	a5,a1
    80006404:	00050713          	mv	a4,a0
    80006408:	01088833          	add	a6,a7,a6
    8000640c:	0007b883          	ld	a7,0(a5)
    80006410:	00878793          	addi	a5,a5,8
    80006414:	00870713          	addi	a4,a4,8
    80006418:	ff173c23          	sd	a7,-8(a4)
    8000641c:	ff0798e3          	bne	a5,a6,8000640c <__memmove+0x68>
    80006420:	ff867713          	andi	a4,a2,-8
    80006424:	02071793          	slli	a5,a4,0x20
    80006428:	0207d793          	srli	a5,a5,0x20
    8000642c:	00f585b3          	add	a1,a1,a5
    80006430:	40e686bb          	subw	a3,a3,a4
    80006434:	00f507b3          	add	a5,a0,a5
    80006438:	06e60463          	beq	a2,a4,800064a0 <__memmove+0xfc>
    8000643c:	0005c703          	lbu	a4,0(a1)
    80006440:	00e78023          	sb	a4,0(a5)
    80006444:	04068e63          	beqz	a3,800064a0 <__memmove+0xfc>
    80006448:	0015c603          	lbu	a2,1(a1)
    8000644c:	00100713          	li	a4,1
    80006450:	00c780a3          	sb	a2,1(a5)
    80006454:	04e68663          	beq	a3,a4,800064a0 <__memmove+0xfc>
    80006458:	0025c603          	lbu	a2,2(a1)
    8000645c:	00200713          	li	a4,2
    80006460:	00c78123          	sb	a2,2(a5)
    80006464:	02e68e63          	beq	a3,a4,800064a0 <__memmove+0xfc>
    80006468:	0035c603          	lbu	a2,3(a1)
    8000646c:	00300713          	li	a4,3
    80006470:	00c781a3          	sb	a2,3(a5)
    80006474:	02e68663          	beq	a3,a4,800064a0 <__memmove+0xfc>
    80006478:	0045c603          	lbu	a2,4(a1)
    8000647c:	00400713          	li	a4,4
    80006480:	00c78223          	sb	a2,4(a5)
    80006484:	00e68e63          	beq	a3,a4,800064a0 <__memmove+0xfc>
    80006488:	0055c603          	lbu	a2,5(a1)
    8000648c:	00500713          	li	a4,5
    80006490:	00c782a3          	sb	a2,5(a5)
    80006494:	00e68663          	beq	a3,a4,800064a0 <__memmove+0xfc>
    80006498:	0065c703          	lbu	a4,6(a1)
    8000649c:	00e78323          	sb	a4,6(a5)
    800064a0:	00813403          	ld	s0,8(sp)
    800064a4:	01010113          	addi	sp,sp,16
    800064a8:	00008067          	ret
    800064ac:	02061713          	slli	a4,a2,0x20
    800064b0:	02075713          	srli	a4,a4,0x20
    800064b4:	00e587b3          	add	a5,a1,a4
    800064b8:	f0f574e3          	bgeu	a0,a5,800063c0 <__memmove+0x1c>
    800064bc:	02069613          	slli	a2,a3,0x20
    800064c0:	02065613          	srli	a2,a2,0x20
    800064c4:	fff64613          	not	a2,a2
    800064c8:	00e50733          	add	a4,a0,a4
    800064cc:	00c78633          	add	a2,a5,a2
    800064d0:	fff7c683          	lbu	a3,-1(a5)
    800064d4:	fff78793          	addi	a5,a5,-1
    800064d8:	fff70713          	addi	a4,a4,-1
    800064dc:	00d70023          	sb	a3,0(a4)
    800064e0:	fec798e3          	bne	a5,a2,800064d0 <__memmove+0x12c>
    800064e4:	00813403          	ld	s0,8(sp)
    800064e8:	01010113          	addi	sp,sp,16
    800064ec:	00008067          	ret
    800064f0:	02069713          	slli	a4,a3,0x20
    800064f4:	02075713          	srli	a4,a4,0x20
    800064f8:	00170713          	addi	a4,a4,1
    800064fc:	00e50733          	add	a4,a0,a4
    80006500:	00050793          	mv	a5,a0
    80006504:	0005c683          	lbu	a3,0(a1)
    80006508:	00178793          	addi	a5,a5,1
    8000650c:	00158593          	addi	a1,a1,1
    80006510:	fed78fa3          	sb	a3,-1(a5)
    80006514:	fee798e3          	bne	a5,a4,80006504 <__memmove+0x160>
    80006518:	f89ff06f          	j	800064a0 <__memmove+0xfc>

000000008000651c <__putc>:
    8000651c:	fe010113          	addi	sp,sp,-32
    80006520:	00813823          	sd	s0,16(sp)
    80006524:	00113c23          	sd	ra,24(sp)
    80006528:	02010413          	addi	s0,sp,32
    8000652c:	00050793          	mv	a5,a0
    80006530:	fef40593          	addi	a1,s0,-17
    80006534:	00100613          	li	a2,1
    80006538:	00000513          	li	a0,0
    8000653c:	fef407a3          	sb	a5,-17(s0)
    80006540:	fffff097          	auipc	ra,0xfffff
    80006544:	b3c080e7          	jalr	-1220(ra) # 8000507c <console_write>
    80006548:	01813083          	ld	ra,24(sp)
    8000654c:	01013403          	ld	s0,16(sp)
    80006550:	02010113          	addi	sp,sp,32
    80006554:	00008067          	ret

0000000080006558 <__getc>:
    80006558:	fe010113          	addi	sp,sp,-32
    8000655c:	00813823          	sd	s0,16(sp)
    80006560:	00113c23          	sd	ra,24(sp)
    80006564:	02010413          	addi	s0,sp,32
    80006568:	fe840593          	addi	a1,s0,-24
    8000656c:	00100613          	li	a2,1
    80006570:	00000513          	li	a0,0
    80006574:	fffff097          	auipc	ra,0xfffff
    80006578:	ae8080e7          	jalr	-1304(ra) # 8000505c <console_read>
    8000657c:	fe844503          	lbu	a0,-24(s0)
    80006580:	01813083          	ld	ra,24(sp)
    80006584:	01013403          	ld	s0,16(sp)
    80006588:	02010113          	addi	sp,sp,32
    8000658c:	00008067          	ret

0000000080006590 <console_handler>:
    80006590:	fe010113          	addi	sp,sp,-32
    80006594:	00813823          	sd	s0,16(sp)
    80006598:	00113c23          	sd	ra,24(sp)
    8000659c:	00913423          	sd	s1,8(sp)
    800065a0:	02010413          	addi	s0,sp,32
    800065a4:	14202773          	csrr	a4,scause
    800065a8:	100027f3          	csrr	a5,sstatus
    800065ac:	0027f793          	andi	a5,a5,2
    800065b0:	06079e63          	bnez	a5,8000662c <console_handler+0x9c>
    800065b4:	00074c63          	bltz	a4,800065cc <console_handler+0x3c>
    800065b8:	01813083          	ld	ra,24(sp)
    800065bc:	01013403          	ld	s0,16(sp)
    800065c0:	00813483          	ld	s1,8(sp)
    800065c4:	02010113          	addi	sp,sp,32
    800065c8:	00008067          	ret
    800065cc:	0ff77713          	andi	a4,a4,255
    800065d0:	00900793          	li	a5,9
    800065d4:	fef712e3          	bne	a4,a5,800065b8 <console_handler+0x28>
    800065d8:	ffffe097          	auipc	ra,0xffffe
    800065dc:	6dc080e7          	jalr	1756(ra) # 80004cb4 <plic_claim>
    800065e0:	00a00793          	li	a5,10
    800065e4:	00050493          	mv	s1,a0
    800065e8:	02f50c63          	beq	a0,a5,80006620 <console_handler+0x90>
    800065ec:	fc0506e3          	beqz	a0,800065b8 <console_handler+0x28>
    800065f0:	00050593          	mv	a1,a0
    800065f4:	00001517          	auipc	a0,0x1
    800065f8:	de450513          	addi	a0,a0,-540 # 800073d8 <CONSOLE_STATUS+0x3c8>
    800065fc:	fffff097          	auipc	ra,0xfffff
    80006600:	afc080e7          	jalr	-1284(ra) # 800050f8 <__printf>
    80006604:	01013403          	ld	s0,16(sp)
    80006608:	01813083          	ld	ra,24(sp)
    8000660c:	00048513          	mv	a0,s1
    80006610:	00813483          	ld	s1,8(sp)
    80006614:	02010113          	addi	sp,sp,32
    80006618:	ffffe317          	auipc	t1,0xffffe
    8000661c:	6d430067          	jr	1748(t1) # 80004cec <plic_complete>
    80006620:	fffff097          	auipc	ra,0xfffff
    80006624:	3e0080e7          	jalr	992(ra) # 80005a00 <uartintr>
    80006628:	fddff06f          	j	80006604 <console_handler+0x74>
    8000662c:	00001517          	auipc	a0,0x1
    80006630:	eac50513          	addi	a0,a0,-340 # 800074d8 <digits+0x78>
    80006634:	fffff097          	auipc	ra,0xfffff
    80006638:	a68080e7          	jalr	-1432(ra) # 8000509c <panic>
	...
