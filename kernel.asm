
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	98813103          	ld	sp,-1656(sp) # 80008988 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	41c040ef          	jal	ra,80004438 <start>

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
    80001088:	9822b623          	sd	sp,-1652(t0) # 80008a10 <framePointer>

    call _ZN5Riscv11trapHandlerEv
    8000108c:	4a1000ef          	jal	ra,80001d2c <_ZN5Riscv11trapHandlerEv>

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
}
    800013bc:	0005051b          	sext.w	a0,a0
    800013c0:	00813403          	ld	s0,8(sp)
    800013c4:	01010113          	addi	sp,sp,16
    800013c8:	00008067          	ret

00000000800013cc <_Z4getcv>:

char getc() {
    800013cc:	ff010113          	addi	sp,sp,-16
    800013d0:	00813423          	sd	s0,8(sp)
    800013d4:	01010413          	addi	s0,sp,16
    char c;

    asm volatile("li a0, 0x41");
    800013d8:	04100513          	li	a0,65
    asm volatile("ecall");
    800013dc:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(c));
    800013e0:	00050513          	mv	a0,a0

    return c;
}
    800013e4:	0ff57513          	andi	a0,a0,255
    800013e8:	00813403          	ld	s0,8(sp)
    800013ec:	01010113          	addi	sp,sp,16
    800013f0:	00008067          	ret

00000000800013f4 <_Z4putcc>:

void putc(char c) {
    800013f4:	ff010113          	addi	sp,sp,-16
    800013f8:	00813423          	sd	s0,8(sp)
    800013fc:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0" :: "r"(c));
    80001400:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x42");
    80001404:	04200513          	li	a0,66
    asm volatile("ecall");
    80001408:	00000073          	ecall
    8000140c:	00813403          	ld	s0,8(sp)
    80001410:	01010113          	addi	sp,sp,16
    80001414:	00008067          	ret

0000000080001418 <_ZN7KThreadC1EPFvPvES0_S0_>:

KThread* KThread::running = nullptr;

int KThread::staticId = 0;

KThread::KThread(Body body, void* args, void* stack)
    80001418:	ff010113          	addi	sp,sp,-16
    8000141c:	00813423          	sd	s0,8(sp)
    80001420:	01010413          	addi	s0,sp,16
    : body(body), id(staticId++), args(args), stack(body != nullptr ? (char*)stack : nullptr),
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64)&this->stack[DEFAULT_STACK_SIZE] : 0}),
    state(NEW) {
    80001424:	00b53023          	sd	a1,0(a0) # 1000 <_entry-0x7ffff000>
    : body(body), id(staticId++), args(args), stack(body != nullptr ? (char*)stack : nullptr),
    80001428:	00007717          	auipc	a4,0x7
    8000142c:	5c870713          	addi	a4,a4,1480 # 800089f0 <_ZN7KThread8staticIdE>
    80001430:	00072783          	lw	a5,0(a4)
    80001434:	0017881b          	addiw	a6,a5,1
    80001438:	01072023          	sw	a6,0(a4)
    state(NEW) {
    8000143c:	00f52423          	sw	a5,8(a0)
    80001440:	00c53823          	sd	a2,16(a0)
    : body(body), id(staticId++), args(args), stack(body != nullptr ? (char*)stack : nullptr),
    80001444:	02058e63          	beqz	a1,80001480 <_ZN7KThreadC1EPFvPvES0_S0_+0x68>
    80001448:	00068793          	mv	a5,a3
    state(NEW) {
    8000144c:	00f53c23          	sd	a5,24(a0)
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64)&this->stack[DEFAULT_STACK_SIZE] : 0}),
    80001450:	02058c63          	beqz	a1,80001488 <_ZN7KThreadC1EPFvPvES0_S0_+0x70>
    80001454:	00000717          	auipc	a4,0x0
    80001458:	32c70713          	addi	a4,a4,812 # 80001780 <_ZN7KThread7wrapperEv>
    state(NEW) {
    8000145c:	02e53023          	sd	a4,32(a0)
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64)&this->stack[DEFAULT_STACK_SIZE] : 0}),
    80001460:	02068863          	beqz	a3,80001490 <_ZN7KThreadC1EPFvPvES0_S0_+0x78>
    80001464:	00001737          	lui	a4,0x1
    80001468:	00e787b3          	add	a5,a5,a4
    state(NEW) {
    8000146c:	02f53423          	sd	a5,40(a0)
    80001470:	02052823          	sw	zero,48(a0)
    if (body != nullptr) {
        //Scheduler::put(this);
    }
}
    80001474:	00813403          	ld	s0,8(sp)
    80001478:	01010113          	addi	sp,sp,16
    8000147c:	00008067          	ret
    : body(body), id(staticId++), args(args), stack(body != nullptr ? (char*)stack : nullptr),
    80001480:	00000793          	li	a5,0
    80001484:	fc9ff06f          	j	8000144c <_ZN7KThreadC1EPFvPvES0_S0_+0x34>
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64)&this->stack[DEFAULT_STACK_SIZE] : 0}),
    80001488:	00000713          	li	a4,0
    8000148c:	fd1ff06f          	j	8000145c <_ZN7KThreadC1EPFvPvES0_S0_+0x44>
    80001490:	00000793          	li	a5,0
    80001494:	fd9ff06f          	j	8000146c <_ZN7KThreadC1EPFvPvES0_S0_+0x54>

0000000080001498 <_ZN7KThreadC1EPFvPvE>:

KThread::KThread(Body body)
    80001498:	fe010113          	addi	sp,sp,-32
    8000149c:	00113c23          	sd	ra,24(sp)
    800014a0:	00813823          	sd	s0,16(sp)
    800014a4:	00913423          	sd	s1,8(sp)
    800014a8:	01213023          	sd	s2,0(sp)
    800014ac:	02010413          	addi	s0,sp,32
    800014b0:	00050493          	mv	s1,a0
    800014b4:	00058913          	mv	s2,a1
    : body(body), id(staticId++), args(nullptr), stack(body != nullptr ? new char[DEFAULT_STACK_SIZE] : nullptr),
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0}),
    state(NEW) {
    800014b8:	00b53023          	sd	a1,0(a0)
    : body(body), id(staticId++), args(nullptr), stack(body != nullptr ? new char[DEFAULT_STACK_SIZE] : nullptr),
    800014bc:	00007717          	auipc	a4,0x7
    800014c0:	53470713          	addi	a4,a4,1332 # 800089f0 <_ZN7KThread8staticIdE>
    800014c4:	00072783          	lw	a5,0(a4)
    800014c8:	0017869b          	addiw	a3,a5,1
    800014cc:	00d72023          	sw	a3,0(a4)
    state(NEW) {
    800014d0:	00f52423          	sw	a5,8(a0)
    800014d4:	00053823          	sd	zero,16(a0)
    : body(body), id(staticId++), args(nullptr), stack(body != nullptr ? new char[DEFAULT_STACK_SIZE] : nullptr),
    800014d8:	04058863          	beqz	a1,80001528 <_ZN7KThreadC1EPFvPvE+0x90>
    800014dc:	00001537          	lui	a0,0x1
    800014e0:	00000097          	auipc	ra,0x0
    800014e4:	5dc080e7          	jalr	1500(ra) # 80001abc <_Znam>
    state(NEW) {
    800014e8:	00a4bc23          	sd	a0,24(s1)
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0}),
    800014ec:	04090263          	beqz	s2,80001530 <_ZN7KThreadC1EPFvPvE+0x98>
    800014f0:	00000797          	auipc	a5,0x0
    800014f4:	29078793          	addi	a5,a5,656 # 80001780 <_ZN7KThread7wrapperEv>
    state(NEW) {
    800014f8:	02f4b023          	sd	a5,32(s1)
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0}),
    800014fc:	02050e63          	beqz	a0,80001538 <_ZN7KThreadC1EPFvPvE+0xa0>
    80001500:	000017b7          	lui	a5,0x1
    80001504:	00f50533          	add	a0,a0,a5
    state(NEW) {
    80001508:	02a4b423          	sd	a0,40(s1)
    8000150c:	0204a823          	sw	zero,48(s1)
    if (body != nullptr) {
        //Scheduler::put(this);
    }
}
    80001510:	01813083          	ld	ra,24(sp)
    80001514:	01013403          	ld	s0,16(sp)
    80001518:	00813483          	ld	s1,8(sp)
    8000151c:	00013903          	ld	s2,0(sp)
    80001520:	02010113          	addi	sp,sp,32
    80001524:	00008067          	ret
    : body(body), id(staticId++), args(nullptr), stack(body != nullptr ? new char[DEFAULT_STACK_SIZE] : nullptr),
    80001528:	00000513          	li	a0,0
    8000152c:	fbdff06f          	j	800014e8 <_ZN7KThreadC1EPFvPvE+0x50>
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0}),
    80001530:	00000793          	li	a5,0
    80001534:	fc5ff06f          	j	800014f8 <_ZN7KThreadC1EPFvPvE+0x60>
    80001538:	00000513          	li	a0,0
    8000153c:	fcdff06f          	j	80001508 <_ZN7KThreadC1EPFvPvE+0x70>

0000000080001540 <_ZN7KThreadD1Ev>:

KThread::~KThread() {
    80001540:	ff010113          	addi	sp,sp,-16
    80001544:	00113423          	sd	ra,8(sp)
    80001548:	00813023          	sd	s0,0(sp)
    8000154c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(stack);
    80001550:	01853503          	ld	a0,24(a0) # 1018 <_entry-0x7fffefe8>
    80001554:	00001097          	auipc	ra,0x1
    80001558:	c40080e7          	jalr	-960(ra) # 80002194 <_ZN15MemoryAllocator8mem_freeEPv>
    stack = nullptr;
}
    8000155c:	00813083          	ld	ra,8(sp)
    80001560:	00013403          	ld	s0,0(sp)
    80001564:	01010113          	addi	sp,sp,16
    80001568:	00008067          	ret

000000008000156c <_ZN7KThread12createThreadEPFvPvES0_S0_>:

KThread* KThread::createThread(Body body, void* args, void* stack) {
    8000156c:	fd010113          	addi	sp,sp,-48
    80001570:	02113423          	sd	ra,40(sp)
    80001574:	02813023          	sd	s0,32(sp)
    80001578:	00913c23          	sd	s1,24(sp)
    8000157c:	01213823          	sd	s2,16(sp)
    80001580:	01313423          	sd	s3,8(sp)
    80001584:	01413023          	sd	s4,0(sp)
    80001588:	03010413          	addi	s0,sp,48
    8000158c:	00050913          	mv	s2,a0
    80001590:	00058993          	mv	s3,a1
    80001594:	00060a13          	mv	s4,a2

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    80001598:	00200513          	li	a0,2
    8000159c:	00001097          	auipc	ra,0x1
    800015a0:	af8080e7          	jalr	-1288(ra) # 80002094 <_ZN15MemoryAllocator9mem_allocEm>
    800015a4:	00050493          	mv	s1,a0
    return new KThread(body, args, stack);
    800015a8:	000a0693          	mv	a3,s4
    800015ac:	00098613          	mv	a2,s3
    800015b0:	00090593          	mv	a1,s2
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	e64080e7          	jalr	-412(ra) # 80001418 <_ZN7KThreadC1EPFvPvES0_S0_>
}
    800015bc:	00048513          	mv	a0,s1
    800015c0:	02813083          	ld	ra,40(sp)
    800015c4:	02013403          	ld	s0,32(sp)
    800015c8:	01813483          	ld	s1,24(sp)
    800015cc:	01013903          	ld	s2,16(sp)
    800015d0:	00813983          	ld	s3,8(sp)
    800015d4:	00013a03          	ld	s4,0(sp)
    800015d8:	03010113          	addi	sp,sp,48
    800015dc:	00008067          	ret

00000000800015e0 <_ZN7KThread12createThreadEPFvPvE>:

KThread* KThread::createThread(Body body) {
    800015e0:	fe010113          	addi	sp,sp,-32
    800015e4:	00113c23          	sd	ra,24(sp)
    800015e8:	00813823          	sd	s0,16(sp)
    800015ec:	00913423          	sd	s1,8(sp)
    800015f0:	01213023          	sd	s2,0(sp)
    800015f4:	02010413          	addi	s0,sp,32
    800015f8:	00050913          	mv	s2,a0
    800015fc:	00200513          	li	a0,2
    80001600:	00001097          	auipc	ra,0x1
    80001604:	a94080e7          	jalr	-1388(ra) # 80002094 <_ZN15MemoryAllocator9mem_allocEm>
    80001608:	00050493          	mv	s1,a0
    return new KThread(body);
    8000160c:	00090593          	mv	a1,s2
    80001610:	00000097          	auipc	ra,0x0
    80001614:	e88080e7          	jalr	-376(ra) # 80001498 <_ZN7KThreadC1EPFvPvE>
    80001618:	0200006f          	j	80001638 <_ZN7KThread12createThreadEPFvPvE+0x58>
    8000161c:	00050913          	mv	s2,a0
    }

    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    80001620:	00048513          	mv	a0,s1
    80001624:	00001097          	auipc	ra,0x1
    80001628:	b70080e7          	jalr	-1168(ra) # 80002194 <_ZN15MemoryAllocator8mem_freeEPv>
    8000162c:	00090513          	mv	a0,s2
    80001630:	00008097          	auipc	ra,0x8
    80001634:	4e8080e7          	jalr	1256(ra) # 80009b18 <_Unwind_Resume>
}
    80001638:	00048513          	mv	a0,s1
    8000163c:	01813083          	ld	ra,24(sp)
    80001640:	01013403          	ld	s0,16(sp)
    80001644:	00813483          	ld	s1,8(sp)
    80001648:	00013903          	ld	s2,0(sp)
    8000164c:	02010113          	addi	sp,sp,32
    80001650:	00008067          	ret

0000000080001654 <_ZN7KThread5startEv>:

void KThread::start() {
    if (state != NEW) return;
    80001654:	03052783          	lw	a5,48(a0)
    80001658:	00078463          	beqz	a5,80001660 <_ZN7KThread5startEv+0xc>
    8000165c:	00008067          	ret
void KThread::start() {
    80001660:	ff010113          	addi	sp,sp,-16
    80001664:	00113423          	sd	ra,8(sp)
    80001668:	00813023          	sd	s0,0(sp)
    8000166c:	01010413          	addi	s0,sp,16

    state = READY;
    80001670:	00100793          	li	a5,1
    80001674:	02f52823          	sw	a5,48(a0)
    Scheduler::put(this);
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	1a8080e7          	jalr	424(ra) # 80001820 <_ZN9Scheduler3putEP7KThread>
}
    80001680:	00813083          	ld	ra,8(sp)
    80001684:	00013403          	ld	s0,0(sp)
    80001688:	01010113          	addi	sp,sp,16
    8000168c:	00008067          	ret

0000000080001690 <_ZN7KThread4exitEv>:

void KThread::exit() {
    80001690:	ff010113          	addi	sp,sp,-16
    80001694:	00813423          	sd	s0,8(sp)
    80001698:	01010413          	addi	s0,sp,16
    state = FINISHED;
    8000169c:	00400793          	li	a5,4
    800016a0:	02f52823          	sw	a5,48(a0)
}
    800016a4:	00813403          	ld	s0,8(sp)
    800016a8:	01010113          	addi	sp,sp,16
    800016ac:	00008067          	ret

00000000800016b0 <_ZN7KThread8dispatchEv>:
    running->body(running->args);
    running->exit();
    yield();
}

void KThread::dispatch() {
    800016b0:	fe010113          	addi	sp,sp,-32
    800016b4:	00113c23          	sd	ra,24(sp)
    800016b8:	00813823          	sd	s0,16(sp)
    800016bc:	00913423          	sd	s1,8(sp)
    800016c0:	02010413          	addi	s0,sp,32
    KThread* old = running;
    800016c4:	00007497          	auipc	s1,0x7
    800016c8:	3344b483          	ld	s1,820(s1) # 800089f8 <_ZN7KThread7runningE>

    if (old && old->state != FINISHED) {
    800016cc:	00048863          	beqz	s1,800016dc <_ZN7KThread8dispatchEv+0x2c>
    800016d0:	0304a703          	lw	a4,48(s1)
    800016d4:	00400793          	li	a5,4
    800016d8:	04f71e63          	bne	a4,a5,80001734 <_ZN7KThread8dispatchEv+0x84>
        old->state = READY;
        Scheduler::put(old);
    }

    running = Scheduler::get();
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	100080e7          	jalr	256(ra) # 800017dc <_ZN9Scheduler3getEv>
    800016e4:	00007797          	auipc	a5,0x7
    800016e8:	30a7ba23          	sd	a0,788(a5) # 800089f8 <_ZN7KThread7runningE>
    if (!running) return;
    800016ec:	02050a63          	beqz	a0,80001720 <_ZN7KThread8dispatchEv+0x70>

    running->state = RUNNING;
    800016f0:	00200793          	li	a5,2
    800016f4:	02f52823          	sw	a5,48(a0)

    if (old && old->state == FINISHED) {
    800016f8:	00048863          	beqz	s1,80001708 <_ZN7KThread8dispatchEv+0x58>
    800016fc:	0304a703          	lw	a4,48(s1)
    80001700:	00400793          	li	a5,4
    80001704:	04f70463          	beq	a4,a5,8000174c <_ZN7KThread8dispatchEv+0x9c>
        MemoryAllocator::mem_free(old->stack);
        old->stack = nullptr;
    }

    contextSwitch(&old->context, &running->context);
    80001708:	00007597          	auipc	a1,0x7
    8000170c:	2f05b583          	ld	a1,752(a1) # 800089f8 <_ZN7KThread7runningE>
    80001710:	02058593          	addi	a1,a1,32
    80001714:	02048513          	addi	a0,s1,32
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	a08080e7          	jalr	-1528(ra) # 80001120 <_ZN7KThread13contextSwitchEPNS_7ContextES1_>
}
    80001720:	01813083          	ld	ra,24(sp)
    80001724:	01013403          	ld	s0,16(sp)
    80001728:	00813483          	ld	s1,8(sp)
    8000172c:	02010113          	addi	sp,sp,32
    80001730:	00008067          	ret
        old->state = READY;
    80001734:	00100793          	li	a5,1
    80001738:	02f4a823          	sw	a5,48(s1)
        Scheduler::put(old);
    8000173c:	00048513          	mv	a0,s1
    80001740:	00000097          	auipc	ra,0x0
    80001744:	0e0080e7          	jalr	224(ra) # 80001820 <_ZN9Scheduler3putEP7KThread>
    80001748:	f95ff06f          	j	800016dc <_ZN7KThread8dispatchEv+0x2c>
        MemoryAllocator::mem_free(old->stack);
    8000174c:	0184b503          	ld	a0,24(s1)
    80001750:	00001097          	auipc	ra,0x1
    80001754:	a44080e7          	jalr	-1468(ra) # 80002194 <_ZN15MemoryAllocator8mem_freeEPv>
        old->stack = nullptr;
    80001758:	0004bc23          	sd	zero,24(s1)
    8000175c:	fadff06f          	j	80001708 <_ZN7KThread8dispatchEv+0x58>

0000000080001760 <_ZN7KThread5yieldEv>:

void KThread::yield() {
    80001760:	ff010113          	addi	sp,sp,-16
    80001764:	00813423          	sd	s0,8(sp)
    80001768:	01010413          	addi	s0,sp,16
    asm volatile ("li a0, 0x13");
    8000176c:	01300513          	li	a0,19
    asm volatile ("ecall");
    80001770:	00000073          	ecall
    80001774:	00813403          	ld	s0,8(sp)
    80001778:	01010113          	addi	sp,sp,16
    8000177c:	00008067          	ret

0000000080001780 <_ZN7KThread7wrapperEv>:
void KThread::wrapper() {
    80001780:	fe010113          	addi	sp,sp,-32
    80001784:	00113c23          	sd	ra,24(sp)
    80001788:	00813823          	sd	s0,16(sp)
    8000178c:	00913423          	sd	s1,8(sp)
    80001790:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001794:	00000097          	auipc	ra,0x0
    80001798:	54c080e7          	jalr	1356(ra) # 80001ce0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    8000179c:	00007497          	auipc	s1,0x7
    800017a0:	25448493          	addi	s1,s1,596 # 800089f0 <_ZN7KThread8staticIdE>
    800017a4:	0084b783          	ld	a5,8(s1)
    800017a8:	0007b703          	ld	a4,0(a5)
    800017ac:	0107b503          	ld	a0,16(a5)
    800017b0:	000700e7          	jalr	a4
    running->exit();
    800017b4:	0084b503          	ld	a0,8(s1)
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	ed8080e7          	jalr	-296(ra) # 80001690 <_ZN7KThread4exitEv>
    yield();
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	fa0080e7          	jalr	-96(ra) # 80001760 <_ZN7KThread5yieldEv>
}
    800017c8:	01813083          	ld	ra,24(sp)
    800017cc:	01013403          	ld	s0,16(sp)
    800017d0:	00813483          	ld	s1,8(sp)
    800017d4:	02010113          	addi	sp,sp,32
    800017d8:	00008067          	ret

00000000800017dc <_ZN9Scheduler3getEv>:
#include "../h/KThread.hpp"

KThread* Scheduler::head = nullptr;
KThread* Scheduler::tail = nullptr;

KThread* Scheduler::get() {
    800017dc:	ff010113          	addi	sp,sp,-16
    800017e0:	00813423          	sd	s0,8(sp)
    800017e4:	01010413          	addi	s0,sp,16
    if (!head) return nullptr;
    800017e8:	00007517          	auipc	a0,0x7
    800017ec:	21853503          	ld	a0,536(a0) # 80008a00 <_ZN9Scheduler4headE>
    800017f0:	00050c63          	beqz	a0,80001808 <_ZN9Scheduler3getEv+0x2c>

    KThread* thread = head;
    head = head->schedulerNext;
    800017f4:	03853783          	ld	a5,56(a0)
    800017f8:	00007717          	auipc	a4,0x7
    800017fc:	20f73423          	sd	a5,520(a4) # 80008a00 <_ZN9Scheduler4headE>

    if (!head) tail = nullptr;
    80001800:	00078a63          	beqz	a5,80001814 <_ZN9Scheduler3getEv+0x38>
    thread->schedulerNext = nullptr;
    80001804:	02053c23          	sd	zero,56(a0)

    return thread;
}
    80001808:	00813403          	ld	s0,8(sp)
    8000180c:	01010113          	addi	sp,sp,16
    80001810:	00008067          	ret
    if (!head) tail = nullptr;
    80001814:	00007797          	auipc	a5,0x7
    80001818:	1e07ba23          	sd	zero,500(a5) # 80008a08 <_ZN9Scheduler4tailE>
    8000181c:	fe9ff06f          	j	80001804 <_ZN9Scheduler3getEv+0x28>

0000000080001820 <_ZN9Scheduler3putEP7KThread>:

void Scheduler::put(KThread* thread) {
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00813423          	sd	s0,8(sp)
    80001828:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    8000182c:	00007797          	auipc	a5,0x7
    80001830:	1d47b783          	ld	a5,468(a5) # 80008a00 <_ZN9Scheduler4headE>
    80001834:	02078263          	beqz	a5,80001858 <_ZN9Scheduler3putEP7KThread+0x38>
    else tail->schedulerNext = thread;
    80001838:	00007797          	auipc	a5,0x7
    8000183c:	1d07b783          	ld	a5,464(a5) # 80008a08 <_ZN9Scheduler4tailE>
    80001840:	02a7bc23          	sd	a0,56(a5)
    tail = thread;
    80001844:	00007797          	auipc	a5,0x7
    80001848:	1ca7b223          	sd	a0,452(a5) # 80008a08 <_ZN9Scheduler4tailE>
}
    8000184c:	00813403          	ld	s0,8(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret
    if (!head) head = thread;
    80001858:	00007797          	auipc	a5,0x7
    8000185c:	1aa7b423          	sd	a0,424(a5) # 80008a00 <_ZN9Scheduler4headE>
    80001860:	fe5ff06f          	j	80001844 <_ZN9Scheduler3putEP7KThread+0x24>

0000000080001864 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80001864:	ff010113          	addi	sp,sp,-16
    80001868:	00813423          	sd	s0,8(sp)
    8000186c:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80001870:	00007517          	auipc	a0,0x7
    80001874:	19053503          	ld	a0,400(a0) # 80008a00 <_ZN9Scheduler4headE>
    80001878:	00153513          	seqz	a0,a0
    8000187c:	00813403          	ld	s0,8(sp)
    80001880:	01010113          	addi	sp,sp,16
    80001884:	00008067          	ret

0000000080001888 <_Z11userWrapperPv>:
#include "../h/KThread.hpp"

uint64 framePointer;

void userMain();
void userWrapper(void* arg) {
    80001888:	ff010113          	addi	sp,sp,-16
    8000188c:	00113423          	sd	ra,8(sp)
    80001890:	00813023          	sd	s0,0(sp)
    80001894:	01010413          	addi	s0,sp,16
    userMain();
    80001898:	00002097          	auipc	ra,0x2
    8000189c:	260080e7          	jalr	608(ra) # 80003af8 <_Z8userMainv>
}
    800018a0:	00813083          	ld	ra,8(sp)
    800018a4:	00013403          	ld	s0,0(sp)
    800018a8:	01010113          	addi	sp,sp,16
    800018ac:	00008067          	ret

00000000800018b0 <main>:

void main() {
    800018b0:	fe010113          	addi	sp,sp,-32
    800018b4:	00113c23          	sd	ra,24(sp)
    800018b8:	00813823          	sd	s0,16(sp)
    800018bc:	02010413          	addi	s0,sp,32
    MemoryAllocator::initHeap();
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	784080e7          	jalr	1924(ra) # 80002044 <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	440080e7          	jalr	1088(ra) # 80001d08 <_ZN5Riscv16setupTrapHandlerEv>

    thread_t mainThread, userBody;

    mainThread = KThread::createThread(nullptr, nullptr, nullptr);
    800018d0:	00000613          	li	a2,0
    800018d4:	00000593          	li	a1,0
    800018d8:	00000513          	li	a0,0
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	c90080e7          	jalr	-880(ra) # 8000156c <_ZN7KThread12createThreadEPFvPvES0_S0_>
    KThread::running = mainThread;
    800018e4:	00007797          	auipc	a5,0x7
    800018e8:	0bc7b783          	ld	a5,188(a5) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018ec:	00a7b023          	sd	a0,0(a5)
    void setState(ThreadState s) { state = s; }
    800018f0:	00200793          	li	a5,2
    800018f4:	02f52823          	sw	a5,48(a0)
    mainThread->setState(RUNNING);

    thread_create(&userBody, &userWrapper, nullptr);
    800018f8:	00000613          	li	a2,0
    800018fc:	00000597          	auipc	a1,0x0
    80001900:	f8c58593          	addi	a1,a1,-116 # 80001888 <_Z11userWrapperPv>
    80001904:	fe840513          	addi	a0,s0,-24
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	914080e7          	jalr	-1772(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
inline void Riscv::w_sip(uint64 sip) {
    asm volatile("csrw sip, %0" :: "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    asm volatile("csrs sstatus, %0" :: "r"(mask));
    80001910:	00200793          	li	a5,2
    80001914:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!Scheduler::isEmpty()) {
    80001918:	00000097          	auipc	ra,0x0
    8000191c:	f4c080e7          	jalr	-180(ra) # 80001864 <_ZN9Scheduler7isEmptyEv>
    80001920:	00051863          	bnez	a0,80001930 <main+0x80>
        KThread::yield();
    80001924:	00000097          	auipc	ra,0x0
    80001928:	e3c080e7          	jalr	-452(ra) # 80001760 <_ZN7KThread5yieldEv>
    8000192c:	fedff06f          	j	80001918 <main+0x68>
    }
    80001930:	01813083          	ld	ra,24(sp)
    80001934:	01013403          	ld	s0,16(sp)
    80001938:	02010113          	addi	sp,sp,32
    8000193c:	00008067          	ret

0000000080001940 <_ZN6ThreadD1Ev>:
    : myHandle(nullptr), body(body), arg(arg) {}

Thread::Thread()
    : myHandle(nullptr), body(nullptr), arg(nullptr) {}

Thread::~Thread() {
    80001940:	00007797          	auipc	a5,0x7
    80001944:	f4878793          	addi	a5,a5,-184 # 80008888 <_ZTV6Thread+0x10>
    80001948:	00f53023          	sd	a5,0(a0)
    if (myHandle) {
    8000194c:	00853503          	ld	a0,8(a0)
    80001950:	02050663          	beqz	a0,8000197c <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread() {
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00113423          	sd	ra,8(sp)
    8000195c:	00813023          	sd	s0,0(sp)
    80001960:	01010413          	addi	s0,sp,16
        mem_free(myHandle);
    80001964:	00000097          	auipc	ra,0x0
    80001968:	844080e7          	jalr	-1980(ra) # 800011a8 <_Z8mem_freePv>
        myHandle = nullptr;
    }
}
    8000196c:	00813083          	ld	ra,8(sp)
    80001970:	00013403          	ld	s0,0(sp)
    80001974:	01010113          	addi	sp,sp,16
    80001978:	00008067          	ret
    8000197c:	00008067          	ret

0000000080001980 <_ZN6Thread7wrapperEPv>:
void Thread::wrapper(void* arg) {
    80001980:	ff010113          	addi	sp,sp,-16
    80001984:	00113423          	sd	ra,8(sp)
    80001988:	00813023          	sd	s0,0(sp)
    8000198c:	01010413          	addi	s0,sp,16
    thread->run();
    80001990:	00053783          	ld	a5,0(a0)
    80001994:	0107b783          	ld	a5,16(a5)
    80001998:	000780e7          	jalr	a5
    thread_exit();
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	92c080e7          	jalr	-1748(ra) # 800012c8 <_Z11thread_exitv>
}
    800019a4:	00813083          	ld	ra,8(sp)
    800019a8:	00013403          	ld	s0,0(sp)
    800019ac:	01010113          	addi	sp,sp,16
    800019b0:	00008067          	ret

00000000800019b4 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800019b4:	ff010113          	addi	sp,sp,-16
    800019b8:	00113423          	sd	ra,8(sp)
    800019bc:	00813023          	sd	s0,0(sp)
    800019c0:	01010413          	addi	s0,sp,16
    800019c4:	00007797          	auipc	a5,0x7
    800019c8:	eec78793          	addi	a5,a5,-276 # 800088b0 <_ZTV9Semaphore+0x10>
    800019cc:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800019d0:	00853503          	ld	a0,8(a0)
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	974080e7          	jalr	-1676(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
}
    800019dc:	00813083          	ld	ra,8(sp)
    800019e0:	00013403          	ld	s0,0(sp)
    800019e4:	01010113          	addi	sp,sp,16
    800019e8:	00008067          	ret

00000000800019ec <_Znwm>:
void* operator new(size_t size) {
    800019ec:	ff010113          	addi	sp,sp,-16
    800019f0:	00113423          	sd	ra,8(sp)
    800019f4:	00813023          	sd	s0,0(sp)
    800019f8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800019fc:	fffff097          	auipc	ra,0xfffff
    80001a00:	768080e7          	jalr	1896(ra) # 80001164 <_Z9mem_allocm>
}
    80001a04:	00813083          	ld	ra,8(sp)
    80001a08:	00013403          	ld	s0,0(sp)
    80001a0c:	01010113          	addi	sp,sp,16
    80001a10:	00008067          	ret

0000000080001a14 <_ZdlPv>:
void operator delete(void* ptr) {
    80001a14:	ff010113          	addi	sp,sp,-16
    80001a18:	00113423          	sd	ra,8(sp)
    80001a1c:	00813023          	sd	s0,0(sp)
    80001a20:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001a24:	fffff097          	auipc	ra,0xfffff
    80001a28:	784080e7          	jalr	1924(ra) # 800011a8 <_Z8mem_freePv>
}
    80001a2c:	00813083          	ld	ra,8(sp)
    80001a30:	00013403          	ld	s0,0(sp)
    80001a34:	01010113          	addi	sp,sp,16
    80001a38:	00008067          	ret

0000000080001a3c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001a3c:	fe010113          	addi	sp,sp,-32
    80001a40:	00113c23          	sd	ra,24(sp)
    80001a44:	00813823          	sd	s0,16(sp)
    80001a48:	00913423          	sd	s1,8(sp)
    80001a4c:	02010413          	addi	s0,sp,32
    80001a50:	00050493          	mv	s1,a0
}
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	eec080e7          	jalr	-276(ra) # 80001940 <_ZN6ThreadD1Ev>
    80001a5c:	00048513          	mv	a0,s1
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	fb4080e7          	jalr	-76(ra) # 80001a14 <_ZdlPv>
    80001a68:	01813083          	ld	ra,24(sp)
    80001a6c:	01013403          	ld	s0,16(sp)
    80001a70:	00813483          	ld	s1,8(sp)
    80001a74:	02010113          	addi	sp,sp,32
    80001a78:	00008067          	ret

0000000080001a7c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001a7c:	fe010113          	addi	sp,sp,-32
    80001a80:	00113c23          	sd	ra,24(sp)
    80001a84:	00813823          	sd	s0,16(sp)
    80001a88:	00913423          	sd	s1,8(sp)
    80001a8c:	02010413          	addi	s0,sp,32
    80001a90:	00050493          	mv	s1,a0
}
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	f20080e7          	jalr	-224(ra) # 800019b4 <_ZN9SemaphoreD1Ev>
    80001a9c:	00048513          	mv	a0,s1
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	f74080e7          	jalr	-140(ra) # 80001a14 <_ZdlPv>
    80001aa8:	01813083          	ld	ra,24(sp)
    80001aac:	01013403          	ld	s0,16(sp)
    80001ab0:	00813483          	ld	s1,8(sp)
    80001ab4:	02010113          	addi	sp,sp,32
    80001ab8:	00008067          	ret

0000000080001abc <_Znam>:
void* operator new[](size_t size) {
    80001abc:	ff010113          	addi	sp,sp,-16
    80001ac0:	00113423          	sd	ra,8(sp)
    80001ac4:	00813023          	sd	s0,0(sp)
    80001ac8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001acc:	fffff097          	auipc	ra,0xfffff
    80001ad0:	698080e7          	jalr	1688(ra) # 80001164 <_Z9mem_allocm>
}
    80001ad4:	00813083          	ld	ra,8(sp)
    80001ad8:	00013403          	ld	s0,0(sp)
    80001adc:	01010113          	addi	sp,sp,16
    80001ae0:	00008067          	ret

0000000080001ae4 <_ZdaPv>:
void operator delete[](void* ptr) {
    80001ae4:	ff010113          	addi	sp,sp,-16
    80001ae8:	00113423          	sd	ra,8(sp)
    80001aec:	00813023          	sd	s0,0(sp)
    80001af0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001af4:	fffff097          	auipc	ra,0xfffff
    80001af8:	6b4080e7          	jalr	1716(ra) # 800011a8 <_Z8mem_freePv>
}
    80001afc:	00813083          	ld	ra,8(sp)
    80001b00:	00013403          	ld	s0,0(sp)
    80001b04:	01010113          	addi	sp,sp,16
    80001b08:	00008067          	ret

0000000080001b0c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg)
    80001b0c:	ff010113          	addi	sp,sp,-16
    80001b10:	00813423          	sd	s0,8(sp)
    80001b14:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(body), arg(arg) {}
    80001b18:	00007797          	auipc	a5,0x7
    80001b1c:	d7078793          	addi	a5,a5,-656 # 80008888 <_ZTV6Thread+0x10>
    80001b20:	00f53023          	sd	a5,0(a0)
    80001b24:	00053423          	sd	zero,8(a0)
    80001b28:	00b53823          	sd	a1,16(a0)
    80001b2c:	00c53c23          	sd	a2,24(a0)
    80001b30:	00813403          	ld	s0,8(sp)
    80001b34:	01010113          	addi	sp,sp,16
    80001b38:	00008067          	ret

0000000080001b3c <_ZN6ThreadC1Ev>:
Thread::Thread()
    80001b3c:	ff010113          	addi	sp,sp,-16
    80001b40:	00813423          	sd	s0,8(sp)
    80001b44:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80001b48:	00007797          	auipc	a5,0x7
    80001b4c:	d4078793          	addi	a5,a5,-704 # 80008888 <_ZTV6Thread+0x10>
    80001b50:	00f53023          	sd	a5,0(a0)
    80001b54:	00053423          	sd	zero,8(a0)
    80001b58:	00053823          	sd	zero,16(a0)
    80001b5c:	00053c23          	sd	zero,24(a0)
    80001b60:	00813403          	ld	s0,8(sp)
    80001b64:	01010113          	addi	sp,sp,16
    80001b68:	00008067          	ret

0000000080001b6c <_ZN6Thread5startEv>:
int Thread::start() {
    80001b6c:	ff010113          	addi	sp,sp,-16
    80001b70:	00113423          	sd	ra,8(sp)
    80001b74:	00813023          	sd	s0,0(sp)
    80001b78:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    80001b7c:	01053583          	ld	a1,16(a0)
    80001b80:	02058263          	beqz	a1,80001ba4 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80001b84:	01853603          	ld	a2,24(a0)
    80001b88:	00850513          	addi	a0,a0,8
    80001b8c:	fffff097          	auipc	ra,0xfffff
    80001b90:	690080e7          	jalr	1680(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
}
    80001b94:	00813083          	ld	ra,8(sp)
    80001b98:	00013403          	ld	s0,0(sp)
    80001b9c:	01010113          	addi	sp,sp,16
    80001ba0:	00008067          	ret
    return thread_create(&myHandle, wrapper, this);
    80001ba4:	00050613          	mv	a2,a0
    80001ba8:	00000597          	auipc	a1,0x0
    80001bac:	dd858593          	addi	a1,a1,-552 # 80001980 <_ZN6Thread7wrapperEPv>
    80001bb0:	00850513          	addi	a0,a0,8
    80001bb4:	fffff097          	auipc	ra,0xfffff
    80001bb8:	668080e7          	jalr	1640(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    80001bbc:	fd9ff06f          	j	80001b94 <_ZN6Thread5startEv+0x28>

0000000080001bc0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001bc0:	ff010113          	addi	sp,sp,-16
    80001bc4:	00113423          	sd	ra,8(sp)
    80001bc8:	00813023          	sd	s0,0(sp)
    80001bcc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001bd0:	fffff097          	auipc	ra,0xfffff
    80001bd4:	720080e7          	jalr	1824(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80001bd8:	00813083          	ld	ra,8(sp)
    80001bdc:	00013403          	ld	s0,0(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret

0000000080001be8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00113423          	sd	ra,8(sp)
    80001bf0:	00813023          	sd	s0,0(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    80001bf8:	00007797          	auipc	a5,0x7
    80001bfc:	cb878793          	addi	a5,a5,-840 # 800088b0 <_ZTV9Semaphore+0x10>
    80001c00:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001c04:	00850513          	addi	a0,a0,8
    80001c08:	fffff097          	auipc	ra,0xfffff
    80001c0c:	708080e7          	jalr	1800(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
}
    80001c10:	00813083          	ld	ra,8(sp)
    80001c14:	00013403          	ld	s0,0(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00113423          	sd	ra,8(sp)
    80001c28:	00813023          	sd	s0,0(sp)
    80001c2c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001c30:	00853503          	ld	a0,8(a0)
    80001c34:	fffff097          	auipc	ra,0xfffff
    80001c38:	740080e7          	jalr	1856(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
}
    80001c3c:	00813083          	ld	ra,8(sp)
    80001c40:	00013403          	ld	s0,0(sp)
    80001c44:	01010113          	addi	sp,sp,16
    80001c48:	00008067          	ret

0000000080001c4c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001c4c:	ff010113          	addi	sp,sp,-16
    80001c50:	00113423          	sd	ra,8(sp)
    80001c54:	00813023          	sd	s0,0(sp)
    80001c58:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001c5c:	00853503          	ld	a0,8(a0)
    80001c60:	fffff097          	auipc	ra,0xfffff
    80001c64:	740080e7          	jalr	1856(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    80001c68:	00813083          	ld	ra,8(sp)
    80001c6c:	00013403          	ld	s0,0(sp)
    80001c70:	01010113          	addi	sp,sp,16
    80001c74:	00008067          	ret

0000000080001c78 <_ZN7Console4getcEv>:

char Console::getc() {
    80001c78:	ff010113          	addi	sp,sp,-16
    80001c7c:	00113423          	sd	ra,8(sp)
    80001c80:	00813023          	sd	s0,0(sp)
    80001c84:	01010413          	addi	s0,sp,16
    return ::getc();
    80001c88:	fffff097          	auipc	ra,0xfffff
    80001c8c:	744080e7          	jalr	1860(ra) # 800013cc <_Z4getcv>
}
    80001c90:	00813083          	ld	ra,8(sp)
    80001c94:	00013403          	ld	s0,0(sp)
    80001c98:	01010113          	addi	sp,sp,16
    80001c9c:	00008067          	ret

0000000080001ca0 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001ca0:	ff010113          	addi	sp,sp,-16
    80001ca4:	00113423          	sd	ra,8(sp)
    80001ca8:	00813023          	sd	s0,0(sp)
    80001cac:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001cb0:	fffff097          	auipc	ra,0xfffff
    80001cb4:	744080e7          	jalr	1860(ra) # 800013f4 <_Z4putcc>
    80001cb8:	00813083          	ld	ra,8(sp)
    80001cbc:	00013403          	ld	s0,0(sp)
    80001cc0:	01010113          	addi	sp,sp,16
    80001cc4:	00008067          	ret

0000000080001cc8 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001cc8:	ff010113          	addi	sp,sp,-16
    80001ccc:	00813423          	sd	s0,8(sp)
    80001cd0:	01010413          	addi	s0,sp,16
    80001cd4:	00813403          	ld	s0,8(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <_ZN5Riscv10popSppSpieEv>:

constexpr uint64 GETC = 0x41;
constexpr uint64 PUTC = 0x42;

void Riscv::popSppSpie()
{
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00813423          	sd	s0,8(sp)
    80001ce8:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    asm volatile("csrc sstatus, %0" :: "r"(mask));
    80001cec:	10000793          	li	a5,256
    80001cf0:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    asm volatile("csrw sepc, ra");
    80001cf4:	14109073          	csrw	sepc,ra
    asm volatile("sret");
    80001cf8:	10200073          	sret
}
    80001cfc:	00813403          	ld	s0,8(sp)
    80001d00:	01010113          	addi	sp,sp,16
    80001d04:	00008067          	ret

0000000080001d08 <_ZN5Riscv16setupTrapHandlerEv>:


void Riscv::setupTrapHandler() {
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00813423          	sd	s0,8(sp)
    80001d10:	01010413          	addi	s0,sp,16
    uint64 addr = (uint64)&trap_handler;
    80001d14:	00007797          	auipc	a5,0x7
    80001d18:	c7c7b783          	ld	a5,-900(a5) # 80008990 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(stvec));
    80001d1c:	10579073          	csrw	stvec,a5
    w_stvec(addr);
}
    80001d20:	00813403          	ld	s0,8(sp)
    80001d24:	01010113          	addi	sp,sp,16
    80001d28:	00008067          	ret

0000000080001d2c <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001d2c:	fb010113          	addi	sp,sp,-80
    80001d30:	04113423          	sd	ra,72(sp)
    80001d34:	04813023          	sd	s0,64(sp)
    80001d38:	02913c23          	sd	s1,56(sp)
    80001d3c:	03213823          	sd	s2,48(sp)
    80001d40:	03313423          	sd	s3,40(sp)
    80001d44:	05010413          	addi	s0,sp,80
    asm volatile("csrr %0, scause" : "=r"(scause));
    80001d48:	142027f3          	csrr	a5,scause
    80001d4c:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001d50:	fc043703          	ld	a4,-64(s0)
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    80001d54:	141027f3          	csrr	a5,sepc
    80001d58:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001d5c:	fb843483          	ld	s1,-72(s0)
    uint64 scause = r_scause();
    uint64 sepc = r_sepc();

    uint64 interrupt = scause >> 63;
    80001d60:	03f75693          	srli	a3,a4,0x3f
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    80001d64:	fff00793          	li	a5,-1
    80001d68:	0017d793          	srli	a5,a5,0x1
    80001d6c:	00f777b3          	and	a5,a4,a5

    if (interrupt == 0 && (cause == 8 || cause == 9)) {
    80001d70:	00074863          	bltz	a4,80001d80 <_ZN5Riscv11trapHandlerEv+0x54>
    80001d74:	ff878713          	addi	a4,a5,-8
    80001d78:	00100613          	li	a2,1
    80001d7c:	02e67463          	bgeu	a2,a4,80001da4 <_ZN5Riscv11trapHandlerEv+0x78>

        sepc += 4;
        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else if (interrupt == 1 && cause == 1) {
    80001d80:	28069e63          	bnez	a3,8000201c <_ZN5Riscv11trapHandlerEv+0x2f0>
        mc_sip(SIP_SSIP);
    }
    else if (interrupt == 1 && cause == 9) {
    80001d84:	2a069663          	bnez	a3,80002030 <_ZN5Riscv11trapHandlerEv+0x304>
        console_handler();
    }
    80001d88:	04813083          	ld	ra,72(sp)
    80001d8c:	04013403          	ld	s0,64(sp)
    80001d90:	03813483          	ld	s1,56(sp)
    80001d94:	03013903          	ld	s2,48(sp)
    80001d98:	02813983          	ld	s3,40(sp)
    80001d9c:	05010113          	addi	sp,sp,80
    80001da0:	00008067          	ret
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    asm volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001da4:	100027f3          	csrr	a5,sstatus
    80001da8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001dac:	fc843903          	ld	s2,-56(s0)
        asm volatile("mv %0, a0" : "=r"(code));
    80001db0:	00050793          	mv	a5,a0
        switch (code) {
    80001db4:	04200713          	li	a4,66
    80001db8:	04f76463          	bltu	a4,a5,80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
    80001dbc:	00279793          	slli	a5,a5,0x2
    80001dc0:	00005717          	auipc	a4,0x5
    80001dc4:	26070713          	addi	a4,a4,608 # 80007020 <CONSOLE_STATUS+0x10>
    80001dc8:	00e787b3          	add	a5,a5,a4
    80001dcc:	0007a783          	lw	a5,0(a5)
    80001dd0:	00e787b3          	add	a5,a5,a4
    80001dd4:	00078067          	jr	a5
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001dd8:	00007997          	auipc	s3,0x7
    80001ddc:	bd09b983          	ld	s3,-1072(s3) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001de0:	0009b783          	ld	a5,0(s3)
    80001de4:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(size));
    80001de8:	00058513          	mv	a0,a1
                void* ptr = MemoryAllocator::mem_alloc(size);
    80001dec:	00000097          	auipc	ra,0x0
    80001df0:	2a8080e7          	jalr	680(ra) # 80002094 <_ZN15MemoryAllocator9mem_allocEm>
                asm volatile("mv a0, %0" :: "r"(ptr));
    80001df4:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001df8:	0009b783          	ld	a5,0(s3)
    80001dfc:	04a7b823          	sd	a0,80(a5)
        sepc += 4;
    80001e00:	00448493          	addi	s1,s1,4
    asm volatile("csrw sepc, %0" :: "r"(sepc));
    80001e04:	14149073          	csrw	sepc,s1
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    asm volatile("csrw sstatus, %0" :: "r"(sstatus));
    80001e08:	10091073          	csrw	sstatus,s2
}
    80001e0c:	f7dff06f          	j	80001d88 <_ZN5Riscv11trapHandlerEv+0x5c>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001e10:	00007997          	auipc	s3,0x7
    80001e14:	b989b983          	ld	s3,-1128(s3) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e18:	0009b783          	ld	a5,0(s3)
    80001e1c:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(addr));
    80001e20:	00058513          	mv	a0,a1
                int status = MemoryAllocator::mem_free(addr);
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	370080e7          	jalr	880(ra) # 80002194 <_ZN15MemoryAllocator8mem_freeEPv>
                asm volatile("mv a0, %0" :: "r"(status));
    80001e2c:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e30:	0009b783          	ld	a5,0(s3)
    80001e34:	04a7b823          	sd	a0,80(a5)
                break;
    80001e38:	fc9ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
    80001e3c:	00000097          	auipc	ra,0x0
    80001e40:	3fc080e7          	jalr	1020(ra) # 80002238 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                asm volatile("mv a0, %0" :: "r"(freeSpace));
    80001e44:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e48:	00007797          	auipc	a5,0x7
    80001e4c:	b607b783          	ld	a5,-1184(a5) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e50:	0007b783          	ld	a5,0(a5)
    80001e54:	04a7b823          	sd	a0,80(a5)
                break;
    80001e58:	fa9ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	424080e7          	jalr	1060(ra) # 80002280 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                asm volatile("mv a0, %0" :: "r"(largest));
    80001e64:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e68:	00007797          	auipc	a5,0x7
    80001e6c:	b407b783          	ld	a5,-1216(a5) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e70:	0007b783          	ld	a5,0(a5)
    80001e74:	04a7b823          	sd	a0,80(a5)
                break;
    80001e78:	f89ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001e7c:	00007797          	auipc	a5,0x7
    80001e80:	b2c7b783          	ld	a5,-1236(a5) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e84:	0007b783          	ld	a5,0(a5)
    80001e88:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001e8c:	00058993          	mv	s3,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001e90:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(start_routine));
    80001e94:	00060513          	mv	a0,a2
                asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
    80001e98:	0687b683          	ld	a3,104(a5)
                asm volatile("mv %0, a3" : "=r"(args));
    80001e9c:	00068593          	mv	a1,a3
                asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
    80001ea0:	0707b703          	ld	a4,112(a5)
                asm volatile("mv %0, a4" : "=r"(stack));
    80001ea4:	00070613          	mv	a2,a4
                *handle = KThread::createThread(start_routine, args, stack);
    80001ea8:	fffff097          	auipc	ra,0xfffff
    80001eac:	6c4080e7          	jalr	1732(ra) # 8000156c <_ZN7KThread12createThreadEPFvPvES0_S0_>
    80001eb0:	00a9b023          	sd	a0,0(s3)
                if (*handle != nullptr) {
    80001eb4:	02050263          	beqz	a0,80001ed8 <_ZN5Riscv11trapHandlerEv+0x1ac>
                    (*handle)->start();
    80001eb8:	fffff097          	auipc	ra,0xfffff
    80001ebc:	79c080e7          	jalr	1948(ra) # 80001654 <_ZN7KThread5startEv>
                    asm volatile("li a0, 0");
    80001ec0:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001ec4:	00007797          	auipc	a5,0x7
    80001ec8:	ae47b783          	ld	a5,-1308(a5) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ecc:	0007b783          	ld	a5,0(a5)
    80001ed0:	04a7b823          	sd	a0,80(a5)
                break;
    80001ed4:	f2dff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001ed8:	fff00513          	li	a0,-1
    80001edc:	fe9ff06f          	j	80001ec4 <_ZN5Riscv11trapHandlerEv+0x198>
                if (KThread::running) {
    80001ee0:	00007797          	auipc	a5,0x7
    80001ee4:	ac07b783          	ld	a5,-1344(a5) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ee8:	0007b503          	ld	a0,0(a5)
    80001eec:	00050663          	beqz	a0,80001ef8 <_ZN5Riscv11trapHandlerEv+0x1cc>
                    KThread::running->exit();
    80001ef0:	fffff097          	auipc	ra,0xfffff
    80001ef4:	7a0080e7          	jalr	1952(ra) # 80001690 <_ZN7KThread4exitEv>
                KThread::dispatch();
    80001ef8:	fffff097          	auipc	ra,0xfffff
    80001efc:	7b8080e7          	jalr	1976(ra) # 800016b0 <_ZN7KThread8dispatchEv>
                asm volatile("li a0, 0");
    80001f00:	00000513          	li	a0,0
                break;
    80001f04:	efdff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                KThread::dispatch();
    80001f08:	fffff097          	auipc	ra,0xfffff
    80001f0c:	7a8080e7          	jalr	1960(ra) # 800016b0 <_ZN7KThread8dispatchEv>
                break;
    80001f10:	ef1ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f14:	00007797          	auipc	a5,0x7
    80001f18:	a947b783          	ld	a5,-1388(a5) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f1c:	0007b783          	ld	a5,0(a5)
    80001f20:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001f24:	00058993          	mv	s3,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001f28:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(init));
    80001f2c:	00060513          	mv	a0,a2
                *handle = KSemaphore::createSemaphore(init);
    80001f30:	02051513          	slli	a0,a0,0x20
    80001f34:	02055513          	srli	a0,a0,0x20
    80001f38:	00000097          	auipc	ra,0x0
    80001f3c:	398080e7          	jalr	920(ra) # 800022d0 <_ZN10KSemaphore15createSemaphoreEm>
    80001f40:	00a9b023          	sd	a0,0(s3)
                if (*handle != nullptr) asm volatile("li a0, 0");
    80001f44:	00050e63          	beqz	a0,80001f60 <_ZN5Riscv11trapHandlerEv+0x234>
    80001f48:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001f4c:	00007797          	auipc	a5,0x7
    80001f50:	a5c7b783          	ld	a5,-1444(a5) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f54:	0007b783          	ld	a5,0(a5)
    80001f58:	04a7b823          	sd	a0,80(a5)
                break;
    80001f5c:	ea5ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001f60:	fff00513          	li	a0,-1
    80001f64:	fe9ff06f          	j	80001f4c <_ZN5Riscv11trapHandlerEv+0x220>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f68:	00007797          	auipc	a5,0x7
    80001f6c:	a407b783          	ld	a5,-1472(a5) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f70:	0007b783          	ld	a5,0(a5)
    80001f74:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001f78:	00058513          	mv	a0,a1
                if (handle) {
    80001f7c:	00050a63          	beqz	a0,80001f90 <_ZN5Riscv11trapHandlerEv+0x264>
                    handle->close();
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	4b4080e7          	jalr	1204(ra) # 80002434 <_ZN10KSemaphore5closeEv>
                    asm volatile("li a0, 0");
    80001f88:	00000513          	li	a0,0
    80001f8c:	e75ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001f90:	fff00513          	li	a0,-1
    80001f94:	e6dff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f98:	00007797          	auipc	a5,0x7
    80001f9c:	a107b783          	ld	a5,-1520(a5) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fa0:	0007b783          	ld	a5,0(a5)
    80001fa4:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001fa8:	00058513          	mv	a0,a1
                if (handle) {
    80001fac:	00050a63          	beqz	a0,80001fc0 <_ZN5Riscv11trapHandlerEv+0x294>
                    handle->wait();
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	3d4080e7          	jalr	980(ra) # 80002384 <_ZN10KSemaphore4waitEv>
                    asm volatile("li a0, 0");
    80001fb8:	00000513          	li	a0,0
    80001fbc:	e45ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001fc0:	fff00513          	li	a0,-1
    80001fc4:	e3dff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001fc8:	00007797          	auipc	a5,0x7
    80001fcc:	9e07b783          	ld	a5,-1568(a5) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fd0:	0007b783          	ld	a5,0(a5)
    80001fd4:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001fd8:	00058513          	mv	a0,a1
                if (handle) {
    80001fdc:	00050a63          	beqz	a0,80001ff0 <_ZN5Riscv11trapHandlerEv+0x2c4>
                    handle->signal();
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	400080e7          	jalr	1024(ra) # 800023e0 <_ZN10KSemaphore6signalEv>
                    asm volatile("li a0, 0");
    80001fe8:	00000513          	li	a0,0
    80001fec:	e15ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001ff0:	fff00513          	li	a0,-1
    80001ff4:	e0dff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                char c = __getc();
    80001ff8:	00004097          	auipc	ra,0x4
    80001ffc:	540080e7          	jalr	1344(ra) # 80006538 <__getc>
                asm volatile("mv a0, %0" :: "r"(c));
    80002000:	00050513          	mv	a0,a0
                break;
    80002004:	dfdff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                asm volatile("mv %0, a1" : "=r"(c));
    80002008:	00058513          	mv	a0,a1
                __putc(c);
    8000200c:	0ff57513          	andi	a0,a0,255
    80002010:	00004097          	auipc	ra,0x4
    80002014:	4ec080e7          	jalr	1260(ra) # 800064fc <__putc>
                break;
    80002018:	de9ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
    else if (interrupt == 1 && cause == 1) {
    8000201c:	00100713          	li	a4,1
    80002020:	d6e792e3          	bne	a5,a4,80001d84 <_ZN5Riscv11trapHandlerEv+0x58>
    asm volatile("csrc sip, %0" :: "r"(mask));
    80002024:	00200793          	li	a5,2
    80002028:	1447b073          	csrc	sip,a5
}
    8000202c:	d5dff06f          	j	80001d88 <_ZN5Riscv11trapHandlerEv+0x5c>
    else if (interrupt == 1 && cause == 9) {
    80002030:	00900713          	li	a4,9
    80002034:	d4e79ae3          	bne	a5,a4,80001d88 <_ZN5Riscv11trapHandlerEv+0x5c>
        console_handler();
    80002038:	00004097          	auipc	ra,0x4
    8000203c:	538080e7          	jalr	1336(ra) # 80006570 <console_handler>
    80002040:	d49ff06f          	j	80001d88 <_ZN5Riscv11trapHandlerEv+0x5c>

0000000080002044 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00813423          	sd	s0,8(sp)
    8000204c:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80002050:	00007697          	auipc	a3,0x7
    80002054:	9306b683          	ld	a3,-1744(a3) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002058:	0006b783          	ld	a5,0(a3)
    8000205c:	00007717          	auipc	a4,0x7
    80002060:	9bc70713          	addi	a4,a4,-1604 # 80008a18 <_ZN15MemoryAllocator12freeListHeadE>
    80002064:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    80002068:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    8000206c:	00007797          	auipc	a5,0x7
    80002070:	92c7b783          	ld	a5,-1748(a5) # 80008998 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002074:	0007b783          	ld	a5,0(a5)
    80002078:	0006b683          	ld	a3,0(a3)
    8000207c:	00073703          	ld	a4,0(a4)
    80002080:	40d787b3          	sub	a5,a5,a3
    80002084:	00f73423          	sd	a5,8(a4)
}
    80002088:	00813403          	ld	s0,8(sp)
    8000208c:	01010113          	addi	sp,sp,16
    80002090:	00008067          	ret

0000000080002094 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    80002094:	ff010113          	addi	sp,sp,-16
    80002098:	00813423          	sd	s0,8(sp)
    8000209c:	01010413          	addi	s0,sp,16
    800020a0:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    800020a4:	00007517          	auipc	a0,0x7
    800020a8:	97453503          	ld	a0,-1676(a0) # 80008a18 <_ZN15MemoryAllocator12freeListHeadE>
    800020ac:	06050063          	beqz	a0,8000210c <_ZN15MemoryAllocator9mem_allocEm+0x78>
    800020b0:	08078a63          	beqz	a5,80002144 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    800020b4:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    800020b8:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    800020bc:	00000613          	li	a2,0
    800020c0:	00c0006f          	j	800020cc <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    800020c4:	00050613          	mv	a2,a0
        curr = curr->next;
    800020c8:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    800020cc:	00050663          	beqz	a0,800020d8 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    800020d0:	00853783          	ld	a5,8(a0)
    800020d4:	fee7e8e3          	bltu	a5,a4,800020c4 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    800020d8:	02050a63          	beqz	a0,8000210c <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    800020dc:	00853583          	ld	a1,8(a0)
    800020e0:	02068793          	addi	a5,a3,32
    800020e4:	04f5e063          	bltu	a1,a5,80002124 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    800020e8:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    800020ec:	40e585b3          	sub	a1,a1,a4
    800020f0:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    800020f4:	00053683          	ld	a3,0(a0)
    800020f8:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    800020fc:	00060e63          	beqz	a2,80002118 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80002100:	00f63023          	sd	a5,0(a2)
        else freeListHead = newBlock;

        curr->size = totalSize;
    80002104:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
    80002108:	01050513          	addi	a0,a0,16
}
    8000210c:	00813403          	ld	s0,8(sp)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret
        else freeListHead = newBlock;
    80002118:	00007697          	auipc	a3,0x7
    8000211c:	90f6b023          	sd	a5,-1792(a3) # 80008a18 <_ZN15MemoryAllocator12freeListHeadE>
    80002120:	fe5ff06f          	j	80002104 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    80002124:	00060863          	beqz	a2,80002134 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80002128:	00053783          	ld	a5,0(a0)
    8000212c:	00f63023          	sd	a5,0(a2)
    80002130:	fd9ff06f          	j	80002108 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    80002134:	00053783          	ld	a5,0(a0)
    80002138:	00007717          	auipc	a4,0x7
    8000213c:	8ef73023          	sd	a5,-1824(a4) # 80008a18 <_ZN15MemoryAllocator12freeListHeadE>
    80002140:	fc9ff06f          	j	80002108 <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    80002144:	00000513          	li	a0,0
    80002148:	fc5ff06f          	j	8000210c <_ZN15MemoryAllocator9mem_allocEm+0x78>

000000008000214c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    8000214c:	ff010113          	addi	sp,sp,-16
    80002150:	00813423          	sd	s0,8(sp)
    80002154:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80002158:	00050c63          	beqz	a0,80002170 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    8000215c:	00053783          	ld	a5,0(a0)
    80002160:	00078863          	beqz	a5,80002170 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    80002164:	00853703          	ld	a4,8(a0)
    80002168:	00e506b3          	add	a3,a0,a4
    8000216c:	00d78863          	beq	a5,a3,8000217c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    80002170:	00813403          	ld	s0,8(sp)
    80002174:	01010113          	addi	sp,sp,16
    80002178:	00008067          	ret
        curr->size += curr->next->size;
    8000217c:	0087b683          	ld	a3,8(a5)
    80002180:	00d70733          	add	a4,a4,a3
    80002184:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    80002188:	0007b783          	ld	a5,0(a5)
    8000218c:	00f53023          	sd	a5,0(a0)
    80002190:	fe1ff06f          	j	80002170 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

0000000080002194 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    80002194:	08050e63          	beqz	a0,80002230 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80002198:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    8000219c:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    800021a0:	00007797          	auipc	a5,0x7
    800021a4:	8787b783          	ld	a5,-1928(a5) # 80008a18 <_ZN15MemoryAllocator12freeListHeadE>
    800021a8:	02078863          	beqz	a5,800021d8 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    800021ac:	fe010113          	addi	sp,sp,-32
    800021b0:	00113c23          	sd	ra,24(sp)
    800021b4:	00813823          	sd	s0,16(sp)
    800021b8:	00913423          	sd	s1,8(sp)
    800021bc:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    800021c0:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    800021c4:	02078463          	beqz	a5,800021ec <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800021c8:	02a7f263          	bgeu	a5,a0,800021ec <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    800021cc:	00078493          	mv	s1,a5
        curr = curr->next;
    800021d0:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    800021d4:	ff1ff06f          	j	800021c4 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    800021d8:	00007797          	auipc	a5,0x7
    800021dc:	84a7b023          	sd	a0,-1984(a5) # 80008a18 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    800021e0:	fe073823          	sd	zero,-16(a4)
        return 0;
    800021e4:	00000513          	li	a0,0
    800021e8:	00008067          	ret
    blockToFree->next = curr;
    800021ec:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    800021f0:	02048a63          	beqz	s1,80002224 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    800021f4:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	f54080e7          	jalr	-172(ra) # 8000214c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    80002200:	00048513          	mv	a0,s1
    80002204:	00000097          	auipc	ra,0x0
    80002208:	f48080e7          	jalr	-184(ra) # 8000214c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    8000220c:	00000513          	li	a0,0
}
    80002210:	01813083          	ld	ra,24(sp)
    80002214:	01013403          	ld	s0,16(sp)
    80002218:	00813483          	ld	s1,8(sp)
    8000221c:	02010113          	addi	sp,sp,32
    80002220:	00008067          	ret
    else freeListHead = blockToFree;
    80002224:	00006797          	auipc	a5,0x6
    80002228:	7ea7ba23          	sd	a0,2036(a5) # 80008a18 <_ZN15MemoryAllocator12freeListHeadE>
    8000222c:	fcdff06f          	j	800021f8 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    80002230:	fff00513          	li	a0,-1
}
    80002234:	00008067          	ret

0000000080002238 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002238:	ff010113          	addi	sp,sp,-16
    8000223c:	00813423          	sd	s0,8(sp)
    80002240:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002244:	00006797          	auipc	a5,0x6
    80002248:	7d47b783          	ld	a5,2004(a5) # 80008a18 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    8000224c:	00000513          	li	a0,0
    80002250:	0080006f          	j	80002258 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002254:	0007b783          	ld	a5,0(a5)
    80002258:	00078e63          	beqz	a5,80002274 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    8000225c:	0087b703          	ld	a4,8(a5)
    80002260:	01000693          	li	a3,16
    80002264:	fee6f8e3          	bgeu	a3,a4,80002254 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    80002268:	00a70533          	add	a0,a4,a0
    8000226c:	ff050513          	addi	a0,a0,-16
    80002270:	fe5ff06f          	j	80002254 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    80002274:	00813403          	ld	s0,8(sp)
    80002278:	01010113          	addi	sp,sp,16
    8000227c:	00008067          	ret

0000000080002280 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002280:	ff010113          	addi	sp,sp,-16
    80002284:	00813423          	sd	s0,8(sp)
    80002288:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    8000228c:	00006717          	auipc	a4,0x6
    80002290:	78c73703          	ld	a4,1932(a4) # 80008a18 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    80002294:	00000513          	li	a0,0
    80002298:	0080006f          	j	800022a0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    8000229c:	00073703          	ld	a4,0(a4)
    800022a0:	02070263          	beqz	a4,800022c4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    800022a4:	00873783          	ld	a5,8(a4)
    800022a8:	01000693          	li	a3,16
    800022ac:	00d7f463          	bgeu	a5,a3,800022b4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    800022b0:	01000793          	li	a5,16
    800022b4:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    800022b8:	fef572e3          	bgeu	a0,a5,8000229c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    800022bc:	00078513          	mv	a0,a5
    800022c0:	fddff06f          	j	8000229c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    800022c4:	00813403          	ld	s0,8(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret

00000000800022d0 <_ZN10KSemaphore15createSemaphoreEm>:

#include "../h/KSemaphore.hpp"
#include "../h/KThread.hpp"
#include "../h/Scheduler.hpp"

KSemaphore* KSemaphore::createSemaphore(uint64 init) {
    800022d0:	fe010113          	addi	sp,sp,-32
    800022d4:	00113c23          	sd	ra,24(sp)
    800022d8:	00813823          	sd	s0,16(sp)
    800022dc:	00913423          	sd	s1,8(sp)
    800022e0:	02010413          	addi	s0,sp,32
    800022e4:	00050493          	mv	s1,a0

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    800022e8:	00100513          	li	a0,1
    800022ec:	00000097          	auipc	ra,0x0
    800022f0:	da8080e7          	jalr	-600(ra) # 80002094 <_ZN15MemoryAllocator9mem_allocEm>
    void operator delete[](void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    explicit KSemaphore(uint64 init) : val(init) {}
    800022f4:	00952023          	sw	s1,0(a0)
    800022f8:	00053423          	sd	zero,8(a0)
    800022fc:	00053823          	sd	zero,16(a0)
    return new KSemaphore(init);
}
    80002300:	01813083          	ld	ra,24(sp)
    80002304:	01013403          	ld	s0,16(sp)
    80002308:	00813483          	ld	s1,8(sp)
    8000230c:	02010113          	addi	sp,sp,32
    80002310:	00008067          	ret

0000000080002314 <_ZN10KSemaphore3getEv>:

KThread* KSemaphore::get() {
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00813423          	sd	s0,8(sp)
    8000231c:	01010413          	addi	s0,sp,16
    80002320:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002324:	00853503          	ld	a0,8(a0)
    80002328:	00050a63          	beqz	a0,8000233c <_ZN10KSemaphore3getEv+0x28>

    KThread* thread = head;
    head = head->semaphoreNext;
    8000232c:	04053703          	ld	a4,64(a0)
    80002330:	00e7b423          	sd	a4,8(a5)

    if (!head) tail = nullptr;
    80002334:	00070a63          	beqz	a4,80002348 <_ZN10KSemaphore3getEv+0x34>
    thread->semaphoreNext = nullptr;
    80002338:	04053023          	sd	zero,64(a0)

    return thread;
}
    8000233c:	00813403          	ld	s0,8(sp)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret
    if (!head) tail = nullptr;
    80002348:	0007b823          	sd	zero,16(a5)
    8000234c:	fedff06f          	j	80002338 <_ZN10KSemaphore3getEv+0x24>

0000000080002350 <_ZN10KSemaphore3putEP7KThread>:


void KSemaphore::put(KThread *thread) {
    80002350:	ff010113          	addi	sp,sp,-16
    80002354:	00813423          	sd	s0,8(sp)
    80002358:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    8000235c:	00853783          	ld	a5,8(a0)
    80002360:	00078e63          	beqz	a5,8000237c <_ZN10KSemaphore3putEP7KThread+0x2c>
    else tail->semaphoreNext = thread;
    80002364:	01053783          	ld	a5,16(a0)
    80002368:	04b7b023          	sd	a1,64(a5)
    tail = thread;
    8000236c:	00b53823          	sd	a1,16(a0)
}
    80002370:	00813403          	ld	s0,8(sp)
    80002374:	01010113          	addi	sp,sp,16
    80002378:	00008067          	ret
    if (!head) head = thread;
    8000237c:	00b53423          	sd	a1,8(a0)
    80002380:	fedff06f          	j	8000236c <_ZN10KSemaphore3putEP7KThread+0x1c>

0000000080002384 <_ZN10KSemaphore4waitEv>:

void KSemaphore::wait() {
    val--;
    80002384:	00052783          	lw	a5,0(a0)
    80002388:	fff7879b          	addiw	a5,a5,-1
    8000238c:	00f52023          	sw	a5,0(a0)

    if (val < 0) {
    80002390:	02079713          	slli	a4,a5,0x20
    80002394:	00074463          	bltz	a4,8000239c <_ZN10KSemaphore4waitEv+0x18>
    80002398:	00008067          	ret
void KSemaphore::wait() {
    8000239c:	ff010113          	addi	sp,sp,-16
    800023a0:	00113423          	sd	ra,8(sp)
    800023a4:	00813023          	sd	s0,0(sp)
    800023a8:	01010413          	addi	s0,sp,16
        KThread::running->setState(BLOCKED);
    800023ac:	00006797          	auipc	a5,0x6
    800023b0:	5f47b783          	ld	a5,1524(a5) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023b4:	0007b583          	ld	a1,0(a5)
    800023b8:	00300793          	li	a5,3
    800023bc:	02f5a823          	sw	a5,48(a1)
        put(KThread::running);
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	f90080e7          	jalr	-112(ra) # 80002350 <_ZN10KSemaphore3putEP7KThread>
        KThread::dispatch();
    800023c8:	fffff097          	auipc	ra,0xfffff
    800023cc:	2e8080e7          	jalr	744(ra) # 800016b0 <_ZN7KThread8dispatchEv>
    }
}
    800023d0:	00813083          	ld	ra,8(sp)
    800023d4:	00013403          	ld	s0,0(sp)
    800023d8:	01010113          	addi	sp,sp,16
    800023dc:	00008067          	ret

00000000800023e0 <_ZN10KSemaphore6signalEv>:

void KSemaphore::signal() {
    val++;
    800023e0:	00052783          	lw	a5,0(a0)
    800023e4:	0017879b          	addiw	a5,a5,1
    800023e8:	0007871b          	sext.w	a4,a5
    800023ec:	00f52023          	sw	a5,0(a0)

    if (val <= 0) {
    800023f0:	00e05463          	blez	a4,800023f8 <_ZN10KSemaphore6signalEv+0x18>
    800023f4:	00008067          	ret
void KSemaphore::signal() {
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00113423          	sd	ra,8(sp)
    80002400:	00813023          	sd	s0,0(sp)
    80002404:	01010413          	addi	s0,sp,16
        KThread* thread = get();
    80002408:	00000097          	auipc	ra,0x0
    8000240c:	f0c080e7          	jalr	-244(ra) # 80002314 <_ZN10KSemaphore3getEv>

        if (thread) {
    80002410:	00050a63          	beqz	a0,80002424 <_ZN10KSemaphore6signalEv+0x44>
    80002414:	00100793          	li	a5,1
    80002418:	02f52823          	sw	a5,48(a0)
            thread->setState(READY);
            Scheduler::put(thread);
    8000241c:	fffff097          	auipc	ra,0xfffff
    80002420:	404080e7          	jalr	1028(ra) # 80001820 <_ZN9Scheduler3putEP7KThread>
        }
    }
}
    80002424:	00813083          	ld	ra,8(sp)
    80002428:	00013403          	ld	s0,0(sp)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret

0000000080002434 <_ZN10KSemaphore5closeEv>:

void KSemaphore::close() {
    80002434:	fe010113          	addi	sp,sp,-32
    80002438:	00113c23          	sd	ra,24(sp)
    8000243c:	00813823          	sd	s0,16(sp)
    80002440:	00913423          	sd	s1,8(sp)
    80002444:	02010413          	addi	s0,sp,32
    80002448:	00050493          	mv	s1,a0
    while (head) {
    8000244c:	0084b783          	ld	a5,8(s1)
    80002450:	02078263          	beqz	a5,80002474 <_ZN10KSemaphore5closeEv+0x40>
        KThread* thread = get();
    80002454:	00048513          	mv	a0,s1
    80002458:	00000097          	auipc	ra,0x0
    8000245c:	ebc080e7          	jalr	-324(ra) # 80002314 <_ZN10KSemaphore3getEv>
    80002460:	00100793          	li	a5,1
    80002464:	02f52823          	sw	a5,48(a0)
        thread->setState(READY);
        Scheduler::put(thread);
    80002468:	fffff097          	auipc	ra,0xfffff
    8000246c:	3b8080e7          	jalr	952(ra) # 80001820 <_ZN9Scheduler3putEP7KThread>
    while (head) {
    80002470:	fddff06f          	j	8000244c <_ZN10KSemaphore5closeEv+0x18>
    }
    80002474:	01813083          	ld	ra,24(sp)
    80002478:	01013403          	ld	s0,16(sp)
    8000247c:	00813483          	ld	s1,8(sp)
    80002480:	02010113          	addi	sp,sp,32
    80002484:	00008067          	ret

0000000080002488 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002488:	fe010113          	addi	sp,sp,-32
    8000248c:	00113c23          	sd	ra,24(sp)
    80002490:	00813823          	sd	s0,16(sp)
    80002494:	00913423          	sd	s1,8(sp)
    80002498:	01213023          	sd	s2,0(sp)
    8000249c:	02010413          	addi	s0,sp,32
    800024a0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800024a4:	00000913          	li	s2,0
    800024a8:	00c0006f          	j	800024b4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800024ac:	fffff097          	auipc	ra,0xfffff
    800024b0:	e44080e7          	jalr	-444(ra) # 800012f0 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	f18080e7          	jalr	-232(ra) # 800013cc <_Z4getcv>
    800024bc:	0005059b          	sext.w	a1,a0
    800024c0:	01b00793          	li	a5,27
    800024c4:	02f58a63          	beq	a1,a5,800024f8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800024c8:	0084b503          	ld	a0,8(s1)
    800024cc:	00002097          	auipc	ra,0x2
    800024d0:	ce8080e7          	jalr	-792(ra) # 800041b4 <_ZN6Buffer3putEi>
        i++;
    800024d4:	0019071b          	addiw	a4,s2,1
    800024d8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800024dc:	0004a683          	lw	a3,0(s1)
    800024e0:	0026979b          	slliw	a5,a3,0x2
    800024e4:	00d787bb          	addw	a5,a5,a3
    800024e8:	0017979b          	slliw	a5,a5,0x1
    800024ec:	02f767bb          	remw	a5,a4,a5
    800024f0:	fc0792e3          	bnez	a5,800024b4 <_ZL16producerKeyboardPv+0x2c>
    800024f4:	fb9ff06f          	j	800024ac <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800024f8:	00100793          	li	a5,1
    800024fc:	00006717          	auipc	a4,0x6
    80002500:	52f72223          	sw	a5,1316(a4) # 80008a20 <_ZL9threadEnd>
    data->buffer->put('!');
    80002504:	02100593          	li	a1,33
    80002508:	0084b503          	ld	a0,8(s1)
    8000250c:	00002097          	auipc	ra,0x2
    80002510:	ca8080e7          	jalr	-856(ra) # 800041b4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002514:	0104b503          	ld	a0,16(s1)
    80002518:	fffff097          	auipc	ra,0xfffff
    8000251c:	e88080e7          	jalr	-376(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    80002520:	01813083          	ld	ra,24(sp)
    80002524:	01013403          	ld	s0,16(sp)
    80002528:	00813483          	ld	s1,8(sp)
    8000252c:	00013903          	ld	s2,0(sp)
    80002530:	02010113          	addi	sp,sp,32
    80002534:	00008067          	ret

0000000080002538 <_ZL8producerPv>:

static void producer(void *arg) {
    80002538:	fe010113          	addi	sp,sp,-32
    8000253c:	00113c23          	sd	ra,24(sp)
    80002540:	00813823          	sd	s0,16(sp)
    80002544:	00913423          	sd	s1,8(sp)
    80002548:	01213023          	sd	s2,0(sp)
    8000254c:	02010413          	addi	s0,sp,32
    80002550:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002554:	00000913          	li	s2,0
    80002558:	00c0006f          	j	80002564 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000255c:	fffff097          	auipc	ra,0xfffff
    80002560:	d94080e7          	jalr	-620(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002564:	00006797          	auipc	a5,0x6
    80002568:	4bc7a783          	lw	a5,1212(a5) # 80008a20 <_ZL9threadEnd>
    8000256c:	02079e63          	bnez	a5,800025a8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002570:	0004a583          	lw	a1,0(s1)
    80002574:	0305859b          	addiw	a1,a1,48
    80002578:	0084b503          	ld	a0,8(s1)
    8000257c:	00002097          	auipc	ra,0x2
    80002580:	c38080e7          	jalr	-968(ra) # 800041b4 <_ZN6Buffer3putEi>
        i++;
    80002584:	0019071b          	addiw	a4,s2,1
    80002588:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000258c:	0004a683          	lw	a3,0(s1)
    80002590:	0026979b          	slliw	a5,a3,0x2
    80002594:	00d787bb          	addw	a5,a5,a3
    80002598:	0017979b          	slliw	a5,a5,0x1
    8000259c:	02f767bb          	remw	a5,a4,a5
    800025a0:	fc0792e3          	bnez	a5,80002564 <_ZL8producerPv+0x2c>
    800025a4:	fb9ff06f          	j	8000255c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800025a8:	0104b503          	ld	a0,16(s1)
    800025ac:	fffff097          	auipc	ra,0xfffff
    800025b0:	df4080e7          	jalr	-524(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    800025b4:	01813083          	ld	ra,24(sp)
    800025b8:	01013403          	ld	s0,16(sp)
    800025bc:	00813483          	ld	s1,8(sp)
    800025c0:	00013903          	ld	s2,0(sp)
    800025c4:	02010113          	addi	sp,sp,32
    800025c8:	00008067          	ret

00000000800025cc <_ZL8consumerPv>:

static void consumer(void *arg) {
    800025cc:	fd010113          	addi	sp,sp,-48
    800025d0:	02113423          	sd	ra,40(sp)
    800025d4:	02813023          	sd	s0,32(sp)
    800025d8:	00913c23          	sd	s1,24(sp)
    800025dc:	01213823          	sd	s2,16(sp)
    800025e0:	01313423          	sd	s3,8(sp)
    800025e4:	03010413          	addi	s0,sp,48
    800025e8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800025ec:	00000993          	li	s3,0
    800025f0:	01c0006f          	j	8000260c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800025f4:	fffff097          	auipc	ra,0xfffff
    800025f8:	cfc080e7          	jalr	-772(ra) # 800012f0 <_Z15thread_dispatchv>
    800025fc:	0500006f          	j	8000264c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002600:	00a00513          	li	a0,10
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	df0080e7          	jalr	-528(ra) # 800013f4 <_Z4putcc>
    while (!threadEnd) {
    8000260c:	00006797          	auipc	a5,0x6
    80002610:	4147a783          	lw	a5,1044(a5) # 80008a20 <_ZL9threadEnd>
    80002614:	06079063          	bnez	a5,80002674 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002618:	00893503          	ld	a0,8(s2)
    8000261c:	00002097          	auipc	ra,0x2
    80002620:	c28080e7          	jalr	-984(ra) # 80004244 <_ZN6Buffer3getEv>
        i++;
    80002624:	0019849b          	addiw	s1,s3,1
    80002628:	0004899b          	sext.w	s3,s1
        putc(key);
    8000262c:	0ff57513          	andi	a0,a0,255
    80002630:	fffff097          	auipc	ra,0xfffff
    80002634:	dc4080e7          	jalr	-572(ra) # 800013f4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002638:	00092703          	lw	a4,0(s2)
    8000263c:	0027179b          	slliw	a5,a4,0x2
    80002640:	00e787bb          	addw	a5,a5,a4
    80002644:	02f4e7bb          	remw	a5,s1,a5
    80002648:	fa0786e3          	beqz	a5,800025f4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000264c:	05000793          	li	a5,80
    80002650:	02f4e4bb          	remw	s1,s1,a5
    80002654:	fa049ce3          	bnez	s1,8000260c <_ZL8consumerPv+0x40>
    80002658:	fa9ff06f          	j	80002600 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000265c:	00893503          	ld	a0,8(s2)
    80002660:	00002097          	auipc	ra,0x2
    80002664:	be4080e7          	jalr	-1052(ra) # 80004244 <_ZN6Buffer3getEv>
        putc(key);
    80002668:	0ff57513          	andi	a0,a0,255
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	d88080e7          	jalr	-632(ra) # 800013f4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002674:	00893503          	ld	a0,8(s2)
    80002678:	00002097          	auipc	ra,0x2
    8000267c:	c58080e7          	jalr	-936(ra) # 800042d0 <_ZN6Buffer6getCntEv>
    80002680:	fca04ee3          	bgtz	a0,8000265c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002684:	01093503          	ld	a0,16(s2)
    80002688:	fffff097          	auipc	ra,0xfffff
    8000268c:	d18080e7          	jalr	-744(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    80002690:	02813083          	ld	ra,40(sp)
    80002694:	02013403          	ld	s0,32(sp)
    80002698:	01813483          	ld	s1,24(sp)
    8000269c:	01013903          	ld	s2,16(sp)
    800026a0:	00813983          	ld	s3,8(sp)
    800026a4:	03010113          	addi	sp,sp,48
    800026a8:	00008067          	ret

00000000800026ac <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800026ac:	f7010113          	addi	sp,sp,-144
    800026b0:	08113423          	sd	ra,136(sp)
    800026b4:	08813023          	sd	s0,128(sp)
    800026b8:	06913c23          	sd	s1,120(sp)
    800026bc:	07213823          	sd	s2,112(sp)
    800026c0:	07313423          	sd	s3,104(sp)
    800026c4:	09010413          	addi	s0,sp,144
    // char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    800026c8:	00005517          	auipc	a0,0x5
    800026cc:	a6850513          	addi	a0,a0,-1432 # 80007130 <CONSOLE_STATUS+0x120>
    800026d0:	00001097          	auipc	ra,0x1
    800026d4:	158080e7          	jalr	344(ra) # 80003828 <_Z11printStringPKc>
    // getString(input, 30);
    // threadNum = stringToInt(input);
    threadNum = 10;

    printString("Unesite velicinu bafera?\n");
    800026d8:	00005517          	auipc	a0,0x5
    800026dc:	a7850513          	addi	a0,a0,-1416 # 80007150 <CONSOLE_STATUS+0x140>
    800026e0:	00001097          	auipc	ra,0x1
    800026e4:	148080e7          	jalr	328(ra) # 80003828 <_Z11printStringPKc>
    // getString(input, 30);
    // n = stringToInt(input);
    n = 30;

    printString("Broj proizvodjaca "); printInt(threadNum);
    800026e8:	00005517          	auipc	a0,0x5
    800026ec:	a8850513          	addi	a0,a0,-1400 # 80007170 <CONSOLE_STATUS+0x160>
    800026f0:	00001097          	auipc	ra,0x1
    800026f4:	138080e7          	jalr	312(ra) # 80003828 <_Z11printStringPKc>
    800026f8:	00000613          	li	a2,0
    800026fc:	00a00593          	li	a1,10
    80002700:	00a00513          	li	a0,10
    80002704:	00001097          	auipc	ra,0x1
    80002708:	2d4080e7          	jalr	724(ra) # 800039d8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000270c:	00005517          	auipc	a0,0x5
    80002710:	a7c50513          	addi	a0,a0,-1412 # 80007188 <CONSOLE_STATUS+0x178>
    80002714:	00001097          	auipc	ra,0x1
    80002718:	114080e7          	jalr	276(ra) # 80003828 <_Z11printStringPKc>
    8000271c:	00000613          	li	a2,0
    80002720:	00a00593          	li	a1,10
    80002724:	01e00513          	li	a0,30
    80002728:	00001097          	auipc	ra,0x1
    8000272c:	2b0080e7          	jalr	688(ra) # 800039d8 <_Z8printIntiii>
    printString(".\n");
    80002730:	00005517          	auipc	a0,0x5
    80002734:	a7050513          	addi	a0,a0,-1424 # 800071a0 <CONSOLE_STATUS+0x190>
    80002738:	00001097          	auipc	ra,0x1
    8000273c:	0f0080e7          	jalr	240(ra) # 80003828 <_Z11printStringPKc>
    } else if (threadNum < 1) {
        printString("Broj proizvodjaca mora biti veci od nula!\n");
        return;
    }

    Buffer *buffer = new Buffer(n);
    80002740:	03800513          	li	a0,56
    80002744:	fffff097          	auipc	ra,0xfffff
    80002748:	2a8080e7          	jalr	680(ra) # 800019ec <_Znwm>
    8000274c:	00050993          	mv	s3,a0
    80002750:	01e00593          	li	a1,30
    80002754:	00002097          	auipc	ra,0x2
    80002758:	9c4080e7          	jalr	-1596(ra) # 80004118 <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    8000275c:	00000593          	li	a1,0
    80002760:	00006517          	auipc	a0,0x6
    80002764:	2c850513          	addi	a0,a0,712 # 80008a28 <_ZL10waitForAll>
    80002768:	fffff097          	auipc	ra,0xfffff
    8000276c:	ba8080e7          	jalr	-1112(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>

    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80002770:	ef010113          	addi	sp,sp,-272
    80002774:	00010913          	mv	s2,sp

    data[threadNum].id = threadNum;
    80002778:	00a00793          	li	a5,10
    8000277c:	0ef92823          	sw	a5,240(s2)
    data[threadNum].buffer = buffer;
    80002780:	0f393c23          	sd	s3,248(s2)
    data[threadNum].wait = waitForAll;
    80002784:	00006797          	auipc	a5,0x6
    80002788:	2a47b783          	ld	a5,676(a5) # 80008a28 <_ZL10waitForAll>
    8000278c:	10f93023          	sd	a5,256(s2)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002790:	0f090613          	addi	a2,s2,240
    80002794:	00000597          	auipc	a1,0x0
    80002798:	e3858593          	addi	a1,a1,-456 # 800025cc <_ZL8consumerPv>
    8000279c:	fc840513          	addi	a0,s0,-56
    800027a0:	fffff097          	auipc	ra,0xfffff
    800027a4:	a7c080e7          	jalr	-1412(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>

    for (int i = 0; i < threadNum; i++) {
    800027a8:	00000493          	li	s1,0
    800027ac:	00900793          	li	a5,9
    800027b0:	0697c863          	blt	a5,s1,80002820 <_Z22producerConsumer_C_APIv+0x174>
        data[i].id = i;
    800027b4:	00149793          	slli	a5,s1,0x1
    800027b8:	009787b3          	add	a5,a5,s1
    800027bc:	00379793          	slli	a5,a5,0x3
    800027c0:	00f907b3          	add	a5,s2,a5
    800027c4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800027c8:	0137b423          	sd	s3,8(a5)
        data[i].wait = waitForAll;
    800027cc:	00006717          	auipc	a4,0x6
    800027d0:	25c73703          	ld	a4,604(a4) # 80008a28 <_ZL10waitForAll>
    800027d4:	00e7b823          	sd	a4,16(a5)

        thread_create(threads + i,
    800027d8:	00048713          	mv	a4,s1
    800027dc:	00349513          	slli	a0,s1,0x3
    800027e0:	f7840793          	addi	a5,s0,-136
    800027e4:	00a78533          	add	a0,a5,a0
    800027e8:	02905663          	blez	s1,80002814 <_Z22producerConsumer_C_APIv+0x168>
    800027ec:	00000597          	auipc	a1,0x0
    800027f0:	d4c58593          	addi	a1,a1,-692 # 80002538 <_ZL8producerPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    800027f4:	00171613          	slli	a2,a4,0x1
    800027f8:	00e60633          	add	a2,a2,a4
    800027fc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002800:	00c90633          	add	a2,s2,a2
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	a18080e7          	jalr	-1512(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000280c:	0014849b          	addiw	s1,s1,1
    80002810:	f9dff06f          	j	800027ac <_Z22producerConsumer_C_APIv+0x100>
        thread_create(threads + i,
    80002814:	00000597          	auipc	a1,0x0
    80002818:	c7458593          	addi	a1,a1,-908 # 80002488 <_ZL16producerKeyboardPv>
    8000281c:	fd9ff06f          	j	800027f4 <_Z22producerConsumer_C_APIv+0x148>
    }

    thread_dispatch();
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	ad0080e7          	jalr	-1328(ra) # 800012f0 <_Z15thread_dispatchv>

    for (int i = 0; i <= threadNum; i++) {
    80002828:	00000493          	li	s1,0
    8000282c:	0180006f          	j	80002844 <_Z22producerConsumer_C_APIv+0x198>
        sem_wait(waitForAll);
    80002830:	00006517          	auipc	a0,0x6
    80002834:	1f853503          	ld	a0,504(a0) # 80008a28 <_ZL10waitForAll>
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	b3c080e7          	jalr	-1220(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80002840:	0014849b          	addiw	s1,s1,1
    80002844:	00a00793          	li	a5,10
    80002848:	fe97d4e3          	bge	a5,s1,80002830 <_Z22producerConsumer_C_APIv+0x184>
    }

    sem_close(waitForAll);
    8000284c:	00006517          	auipc	a0,0x6
    80002850:	1dc53503          	ld	a0,476(a0) # 80008a28 <_ZL10waitForAll>
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	af4080e7          	jalr	-1292(ra) # 80001348 <_Z9sem_closeP10KSemaphore>

    delete buffer;
    8000285c:	00098e63          	beqz	s3,80002878 <_Z22producerConsumer_C_APIv+0x1cc>
    80002860:	00098513          	mv	a0,s3
    80002864:	00002097          	auipc	ra,0x2
    80002868:	af4080e7          	jalr	-1292(ra) # 80004358 <_ZN6BufferD1Ev>
    8000286c:	00098513          	mv	a0,s3
    80002870:	fffff097          	auipc	ra,0xfffff
    80002874:	1a4080e7          	jalr	420(ra) # 80001a14 <_ZdlPv>

}
    80002878:	f7040113          	addi	sp,s0,-144
    8000287c:	08813083          	ld	ra,136(sp)
    80002880:	08013403          	ld	s0,128(sp)
    80002884:	07813483          	ld	s1,120(sp)
    80002888:	07013903          	ld	s2,112(sp)
    8000288c:	06813983          	ld	s3,104(sp)
    80002890:	09010113          	addi	sp,sp,144
    80002894:	00008067          	ret
    80002898:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000289c:	00098513          	mv	a0,s3
    800028a0:	fffff097          	auipc	ra,0xfffff
    800028a4:	174080e7          	jalr	372(ra) # 80001a14 <_ZdlPv>
    800028a8:	00048513          	mv	a0,s1
    800028ac:	00007097          	auipc	ra,0x7
    800028b0:	26c080e7          	jalr	620(ra) # 80009b18 <_Unwind_Resume>

00000000800028b4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800028b4:	fe010113          	addi	sp,sp,-32
    800028b8:	00113c23          	sd	ra,24(sp)
    800028bc:	00813823          	sd	s0,16(sp)
    800028c0:	00913423          	sd	s1,8(sp)
    800028c4:	01213023          	sd	s2,0(sp)
    800028c8:	02010413          	addi	s0,sp,32
    800028cc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800028d0:	00100793          	li	a5,1
    800028d4:	02a7f863          	bgeu	a5,a0,80002904 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800028d8:	00a00793          	li	a5,10
    800028dc:	02f577b3          	remu	a5,a0,a5
    800028e0:	02078e63          	beqz	a5,8000291c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800028e4:	fff48513          	addi	a0,s1,-1
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	fcc080e7          	jalr	-52(ra) # 800028b4 <_ZL9fibonaccim>
    800028f0:	00050913          	mv	s2,a0
    800028f4:	ffe48513          	addi	a0,s1,-2
    800028f8:	00000097          	auipc	ra,0x0
    800028fc:	fbc080e7          	jalr	-68(ra) # 800028b4 <_ZL9fibonaccim>
    80002900:	00a90533          	add	a0,s2,a0
}
    80002904:	01813083          	ld	ra,24(sp)
    80002908:	01013403          	ld	s0,16(sp)
    8000290c:	00813483          	ld	s1,8(sp)
    80002910:	00013903          	ld	s2,0(sp)
    80002914:	02010113          	addi	sp,sp,32
    80002918:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	9d4080e7          	jalr	-1580(ra) # 800012f0 <_Z15thread_dispatchv>
    80002924:	fc1ff06f          	j	800028e4 <_ZL9fibonaccim+0x30>

0000000080002928 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002928:	fe010113          	addi	sp,sp,-32
    8000292c:	00113c23          	sd	ra,24(sp)
    80002930:	00813823          	sd	s0,16(sp)
    80002934:	00913423          	sd	s1,8(sp)
    80002938:	01213023          	sd	s2,0(sp)
    8000293c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002940:	00000913          	li	s2,0
    80002944:	0380006f          	j	8000297c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	9a8080e7          	jalr	-1624(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002950:	00148493          	addi	s1,s1,1
    80002954:	000027b7          	lui	a5,0x2
    80002958:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000295c:	0097ee63          	bltu	a5,s1,80002978 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002960:	00000713          	li	a4,0
    80002964:	000077b7          	lui	a5,0x7
    80002968:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000296c:	fce7eee3          	bltu	a5,a4,80002948 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002970:	00170713          	addi	a4,a4,1
    80002974:	ff1ff06f          	j	80002964 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002978:	00190913          	addi	s2,s2,1
    8000297c:	00900793          	li	a5,9
    80002980:	0527e063          	bltu	a5,s2,800029c0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002984:	00005517          	auipc	a0,0x5
    80002988:	82450513          	addi	a0,a0,-2012 # 800071a8 <CONSOLE_STATUS+0x198>
    8000298c:	00001097          	auipc	ra,0x1
    80002990:	e9c080e7          	jalr	-356(ra) # 80003828 <_Z11printStringPKc>
    80002994:	00000613          	li	a2,0
    80002998:	00a00593          	li	a1,10
    8000299c:	0009051b          	sext.w	a0,s2
    800029a0:	00001097          	auipc	ra,0x1
    800029a4:	038080e7          	jalr	56(ra) # 800039d8 <_Z8printIntiii>
    800029a8:	00004517          	auipc	a0,0x4
    800029ac:	7c050513          	addi	a0,a0,1984 # 80007168 <CONSOLE_STATUS+0x158>
    800029b0:	00001097          	auipc	ra,0x1
    800029b4:	e78080e7          	jalr	-392(ra) # 80003828 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800029b8:	00000493          	li	s1,0
    800029bc:	f99ff06f          	j	80002954 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800029c0:	00004517          	auipc	a0,0x4
    800029c4:	7f050513          	addi	a0,a0,2032 # 800071b0 <CONSOLE_STATUS+0x1a0>
    800029c8:	00001097          	auipc	ra,0x1
    800029cc:	e60080e7          	jalr	-416(ra) # 80003828 <_Z11printStringPKc>
    finishedA = true;
    800029d0:	00100793          	li	a5,1
    800029d4:	00006717          	auipc	a4,0x6
    800029d8:	04f70e23          	sb	a5,92(a4) # 80008a30 <_ZL9finishedA>
}
    800029dc:	01813083          	ld	ra,24(sp)
    800029e0:	01013403          	ld	s0,16(sp)
    800029e4:	00813483          	ld	s1,8(sp)
    800029e8:	00013903          	ld	s2,0(sp)
    800029ec:	02010113          	addi	sp,sp,32
    800029f0:	00008067          	ret

00000000800029f4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800029f4:	fe010113          	addi	sp,sp,-32
    800029f8:	00113c23          	sd	ra,24(sp)
    800029fc:	00813823          	sd	s0,16(sp)
    80002a00:	00913423          	sd	s1,8(sp)
    80002a04:	01213023          	sd	s2,0(sp)
    80002a08:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002a0c:	00000913          	li	s2,0
    80002a10:	0380006f          	j	80002a48 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002a14:	fffff097          	auipc	ra,0xfffff
    80002a18:	8dc080e7          	jalr	-1828(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a1c:	00148493          	addi	s1,s1,1
    80002a20:	000027b7          	lui	a5,0x2
    80002a24:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002a28:	0097ee63          	bltu	a5,s1,80002a44 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002a2c:	00000713          	li	a4,0
    80002a30:	000077b7          	lui	a5,0x7
    80002a34:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002a38:	fce7eee3          	bltu	a5,a4,80002a14 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002a3c:	00170713          	addi	a4,a4,1
    80002a40:	ff1ff06f          	j	80002a30 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002a44:	00190913          	addi	s2,s2,1
    80002a48:	00f00793          	li	a5,15
    80002a4c:	0527e063          	bltu	a5,s2,80002a8c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002a50:	00004517          	auipc	a0,0x4
    80002a54:	77050513          	addi	a0,a0,1904 # 800071c0 <CONSOLE_STATUS+0x1b0>
    80002a58:	00001097          	auipc	ra,0x1
    80002a5c:	dd0080e7          	jalr	-560(ra) # 80003828 <_Z11printStringPKc>
    80002a60:	00000613          	li	a2,0
    80002a64:	00a00593          	li	a1,10
    80002a68:	0009051b          	sext.w	a0,s2
    80002a6c:	00001097          	auipc	ra,0x1
    80002a70:	f6c080e7          	jalr	-148(ra) # 800039d8 <_Z8printIntiii>
    80002a74:	00004517          	auipc	a0,0x4
    80002a78:	6f450513          	addi	a0,a0,1780 # 80007168 <CONSOLE_STATUS+0x158>
    80002a7c:	00001097          	auipc	ra,0x1
    80002a80:	dac080e7          	jalr	-596(ra) # 80003828 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002a84:	00000493          	li	s1,0
    80002a88:	f99ff06f          	j	80002a20 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002a8c:	00004517          	auipc	a0,0x4
    80002a90:	73c50513          	addi	a0,a0,1852 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80002a94:	00001097          	auipc	ra,0x1
    80002a98:	d94080e7          	jalr	-620(ra) # 80003828 <_Z11printStringPKc>
    finishedB = true;
    80002a9c:	00100793          	li	a5,1
    80002aa0:	00006717          	auipc	a4,0x6
    80002aa4:	f8f708a3          	sb	a5,-111(a4) # 80008a31 <_ZL9finishedB>
    thread_dispatch();
    80002aa8:	fffff097          	auipc	ra,0xfffff
    80002aac:	848080e7          	jalr	-1976(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002ab0:	01813083          	ld	ra,24(sp)
    80002ab4:	01013403          	ld	s0,16(sp)
    80002ab8:	00813483          	ld	s1,8(sp)
    80002abc:	00013903          	ld	s2,0(sp)
    80002ac0:	02010113          	addi	sp,sp,32
    80002ac4:	00008067          	ret

0000000080002ac8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002ac8:	fe010113          	addi	sp,sp,-32
    80002acc:	00113c23          	sd	ra,24(sp)
    80002ad0:	00813823          	sd	s0,16(sp)
    80002ad4:	00913423          	sd	s1,8(sp)
    80002ad8:	01213023          	sd	s2,0(sp)
    80002adc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002ae0:	00000493          	li	s1,0
    80002ae4:	0400006f          	j	80002b24 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002ae8:	00004517          	auipc	a0,0x4
    80002aec:	6f050513          	addi	a0,a0,1776 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80002af0:	00001097          	auipc	ra,0x1
    80002af4:	d38080e7          	jalr	-712(ra) # 80003828 <_Z11printStringPKc>
    80002af8:	00000613          	li	a2,0
    80002afc:	00a00593          	li	a1,10
    80002b00:	00048513          	mv	a0,s1
    80002b04:	00001097          	auipc	ra,0x1
    80002b08:	ed4080e7          	jalr	-300(ra) # 800039d8 <_Z8printIntiii>
    80002b0c:	00004517          	auipc	a0,0x4
    80002b10:	65c50513          	addi	a0,a0,1628 # 80007168 <CONSOLE_STATUS+0x158>
    80002b14:	00001097          	auipc	ra,0x1
    80002b18:	d14080e7          	jalr	-748(ra) # 80003828 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002b1c:	0014849b          	addiw	s1,s1,1
    80002b20:	0ff4f493          	andi	s1,s1,255
    80002b24:	00200793          	li	a5,2
    80002b28:	fc97f0e3          	bgeu	a5,s1,80002ae8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002b2c:	00004517          	auipc	a0,0x4
    80002b30:	6b450513          	addi	a0,a0,1716 # 800071e0 <CONSOLE_STATUS+0x1d0>
    80002b34:	00001097          	auipc	ra,0x1
    80002b38:	cf4080e7          	jalr	-780(ra) # 80003828 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002b3c:	00700313          	li	t1,7
    thread_dispatch();
    80002b40:	ffffe097          	auipc	ra,0xffffe
    80002b44:	7b0080e7          	jalr	1968(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002b48:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002b4c:	00004517          	auipc	a0,0x4
    80002b50:	6a450513          	addi	a0,a0,1700 # 800071f0 <CONSOLE_STATUS+0x1e0>
    80002b54:	00001097          	auipc	ra,0x1
    80002b58:	cd4080e7          	jalr	-812(ra) # 80003828 <_Z11printStringPKc>
    80002b5c:	00000613          	li	a2,0
    80002b60:	00a00593          	li	a1,10
    80002b64:	0009051b          	sext.w	a0,s2
    80002b68:	00001097          	auipc	ra,0x1
    80002b6c:	e70080e7          	jalr	-400(ra) # 800039d8 <_Z8printIntiii>
    80002b70:	00004517          	auipc	a0,0x4
    80002b74:	5f850513          	addi	a0,a0,1528 # 80007168 <CONSOLE_STATUS+0x158>
    80002b78:	00001097          	auipc	ra,0x1
    80002b7c:	cb0080e7          	jalr	-848(ra) # 80003828 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002b80:	00c00513          	li	a0,12
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	d30080e7          	jalr	-720(ra) # 800028b4 <_ZL9fibonaccim>
    80002b8c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002b90:	00004517          	auipc	a0,0x4
    80002b94:	66850513          	addi	a0,a0,1640 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80002b98:	00001097          	auipc	ra,0x1
    80002b9c:	c90080e7          	jalr	-880(ra) # 80003828 <_Z11printStringPKc>
    80002ba0:	00000613          	li	a2,0
    80002ba4:	00a00593          	li	a1,10
    80002ba8:	0009051b          	sext.w	a0,s2
    80002bac:	00001097          	auipc	ra,0x1
    80002bb0:	e2c080e7          	jalr	-468(ra) # 800039d8 <_Z8printIntiii>
    80002bb4:	00004517          	auipc	a0,0x4
    80002bb8:	5b450513          	addi	a0,a0,1460 # 80007168 <CONSOLE_STATUS+0x158>
    80002bbc:	00001097          	auipc	ra,0x1
    80002bc0:	c6c080e7          	jalr	-916(ra) # 80003828 <_Z11printStringPKc>
    80002bc4:	0400006f          	j	80002c04 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002bc8:	00004517          	auipc	a0,0x4
    80002bcc:	61050513          	addi	a0,a0,1552 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80002bd0:	00001097          	auipc	ra,0x1
    80002bd4:	c58080e7          	jalr	-936(ra) # 80003828 <_Z11printStringPKc>
    80002bd8:	00000613          	li	a2,0
    80002bdc:	00a00593          	li	a1,10
    80002be0:	00048513          	mv	a0,s1
    80002be4:	00001097          	auipc	ra,0x1
    80002be8:	df4080e7          	jalr	-524(ra) # 800039d8 <_Z8printIntiii>
    80002bec:	00004517          	auipc	a0,0x4
    80002bf0:	57c50513          	addi	a0,a0,1404 # 80007168 <CONSOLE_STATUS+0x158>
    80002bf4:	00001097          	auipc	ra,0x1
    80002bf8:	c34080e7          	jalr	-972(ra) # 80003828 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002bfc:	0014849b          	addiw	s1,s1,1
    80002c00:	0ff4f493          	andi	s1,s1,255
    80002c04:	00500793          	li	a5,5
    80002c08:	fc97f0e3          	bgeu	a5,s1,80002bc8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002c0c:	00004517          	auipc	a0,0x4
    80002c10:	5a450513          	addi	a0,a0,1444 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80002c14:	00001097          	auipc	ra,0x1
    80002c18:	c14080e7          	jalr	-1004(ra) # 80003828 <_Z11printStringPKc>
    finishedC = true;
    80002c1c:	00100793          	li	a5,1
    80002c20:	00006717          	auipc	a4,0x6
    80002c24:	e0f70923          	sb	a5,-494(a4) # 80008a32 <_ZL9finishedC>
    thread_dispatch();
    80002c28:	ffffe097          	auipc	ra,0xffffe
    80002c2c:	6c8080e7          	jalr	1736(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002c30:	01813083          	ld	ra,24(sp)
    80002c34:	01013403          	ld	s0,16(sp)
    80002c38:	00813483          	ld	s1,8(sp)
    80002c3c:	00013903          	ld	s2,0(sp)
    80002c40:	02010113          	addi	sp,sp,32
    80002c44:	00008067          	ret

0000000080002c48 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002c48:	fe010113          	addi	sp,sp,-32
    80002c4c:	00113c23          	sd	ra,24(sp)
    80002c50:	00813823          	sd	s0,16(sp)
    80002c54:	00913423          	sd	s1,8(sp)
    80002c58:	01213023          	sd	s2,0(sp)
    80002c5c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002c60:	00a00493          	li	s1,10
    80002c64:	0400006f          	j	80002ca4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002c68:	00004517          	auipc	a0,0x4
    80002c6c:	5a050513          	addi	a0,a0,1440 # 80007208 <CONSOLE_STATUS+0x1f8>
    80002c70:	00001097          	auipc	ra,0x1
    80002c74:	bb8080e7          	jalr	-1096(ra) # 80003828 <_Z11printStringPKc>
    80002c78:	00000613          	li	a2,0
    80002c7c:	00a00593          	li	a1,10
    80002c80:	00048513          	mv	a0,s1
    80002c84:	00001097          	auipc	ra,0x1
    80002c88:	d54080e7          	jalr	-684(ra) # 800039d8 <_Z8printIntiii>
    80002c8c:	00004517          	auipc	a0,0x4
    80002c90:	4dc50513          	addi	a0,a0,1244 # 80007168 <CONSOLE_STATUS+0x158>
    80002c94:	00001097          	auipc	ra,0x1
    80002c98:	b94080e7          	jalr	-1132(ra) # 80003828 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002c9c:	0014849b          	addiw	s1,s1,1
    80002ca0:	0ff4f493          	andi	s1,s1,255
    80002ca4:	00c00793          	li	a5,12
    80002ca8:	fc97f0e3          	bgeu	a5,s1,80002c68 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002cac:	00004517          	auipc	a0,0x4
    80002cb0:	56450513          	addi	a0,a0,1380 # 80007210 <CONSOLE_STATUS+0x200>
    80002cb4:	00001097          	auipc	ra,0x1
    80002cb8:	b74080e7          	jalr	-1164(ra) # 80003828 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002cbc:	00500313          	li	t1,5
    thread_dispatch();
    80002cc0:	ffffe097          	auipc	ra,0xffffe
    80002cc4:	630080e7          	jalr	1584(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002cc8:	01000513          	li	a0,16
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	be8080e7          	jalr	-1048(ra) # 800028b4 <_ZL9fibonaccim>
    80002cd4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002cd8:	00004517          	auipc	a0,0x4
    80002cdc:	54850513          	addi	a0,a0,1352 # 80007220 <CONSOLE_STATUS+0x210>
    80002ce0:	00001097          	auipc	ra,0x1
    80002ce4:	b48080e7          	jalr	-1208(ra) # 80003828 <_Z11printStringPKc>
    80002ce8:	00000613          	li	a2,0
    80002cec:	00a00593          	li	a1,10
    80002cf0:	0009051b          	sext.w	a0,s2
    80002cf4:	00001097          	auipc	ra,0x1
    80002cf8:	ce4080e7          	jalr	-796(ra) # 800039d8 <_Z8printIntiii>
    80002cfc:	00004517          	auipc	a0,0x4
    80002d00:	46c50513          	addi	a0,a0,1132 # 80007168 <CONSOLE_STATUS+0x158>
    80002d04:	00001097          	auipc	ra,0x1
    80002d08:	b24080e7          	jalr	-1244(ra) # 80003828 <_Z11printStringPKc>
    80002d0c:	0400006f          	j	80002d4c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002d10:	00004517          	auipc	a0,0x4
    80002d14:	4f850513          	addi	a0,a0,1272 # 80007208 <CONSOLE_STATUS+0x1f8>
    80002d18:	00001097          	auipc	ra,0x1
    80002d1c:	b10080e7          	jalr	-1264(ra) # 80003828 <_Z11printStringPKc>
    80002d20:	00000613          	li	a2,0
    80002d24:	00a00593          	li	a1,10
    80002d28:	00048513          	mv	a0,s1
    80002d2c:	00001097          	auipc	ra,0x1
    80002d30:	cac080e7          	jalr	-852(ra) # 800039d8 <_Z8printIntiii>
    80002d34:	00004517          	auipc	a0,0x4
    80002d38:	43450513          	addi	a0,a0,1076 # 80007168 <CONSOLE_STATUS+0x158>
    80002d3c:	00001097          	auipc	ra,0x1
    80002d40:	aec080e7          	jalr	-1300(ra) # 80003828 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002d44:	0014849b          	addiw	s1,s1,1
    80002d48:	0ff4f493          	andi	s1,s1,255
    80002d4c:	00f00793          	li	a5,15
    80002d50:	fc97f0e3          	bgeu	a5,s1,80002d10 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002d54:	00004517          	auipc	a0,0x4
    80002d58:	4dc50513          	addi	a0,a0,1244 # 80007230 <CONSOLE_STATUS+0x220>
    80002d5c:	00001097          	auipc	ra,0x1
    80002d60:	acc080e7          	jalr	-1332(ra) # 80003828 <_Z11printStringPKc>
    finishedD = true;
    80002d64:	00100793          	li	a5,1
    80002d68:	00006717          	auipc	a4,0x6
    80002d6c:	ccf705a3          	sb	a5,-821(a4) # 80008a33 <_ZL9finishedD>
    thread_dispatch();
    80002d70:	ffffe097          	auipc	ra,0xffffe
    80002d74:	580080e7          	jalr	1408(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002d78:	01813083          	ld	ra,24(sp)
    80002d7c:	01013403          	ld	s0,16(sp)
    80002d80:	00813483          	ld	s1,8(sp)
    80002d84:	00013903          	ld	s2,0(sp)
    80002d88:	02010113          	addi	sp,sp,32
    80002d8c:	00008067          	ret

0000000080002d90 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002d90:	fc010113          	addi	sp,sp,-64
    80002d94:	02113c23          	sd	ra,56(sp)
    80002d98:	02813823          	sd	s0,48(sp)
    80002d9c:	02913423          	sd	s1,40(sp)
    80002da0:	03213023          	sd	s2,32(sp)
    80002da4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002da8:	02000513          	li	a0,32
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	c40080e7          	jalr	-960(ra) # 800019ec <_Znwm>
    80002db4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	d84080e7          	jalr	-636(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80002dc0:	00006797          	auipc	a5,0x6
    80002dc4:	b1078793          	addi	a5,a5,-1264 # 800088d0 <_ZTV7WorkerA+0x10>
    80002dc8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002dcc:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002dd0:	00004517          	auipc	a0,0x4
    80002dd4:	47050513          	addi	a0,a0,1136 # 80007240 <CONSOLE_STATUS+0x230>
    80002dd8:	00001097          	auipc	ra,0x1
    80002ddc:	a50080e7          	jalr	-1456(ra) # 80003828 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002de0:	02000513          	li	a0,32
    80002de4:	fffff097          	auipc	ra,0xfffff
    80002de8:	c08080e7          	jalr	-1016(ra) # 800019ec <_Znwm>
    80002dec:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002df0:	fffff097          	auipc	ra,0xfffff
    80002df4:	d4c080e7          	jalr	-692(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80002df8:	00006797          	auipc	a5,0x6
    80002dfc:	b0078793          	addi	a5,a5,-1280 # 800088f8 <_ZTV7WorkerB+0x10>
    80002e00:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002e04:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002e08:	00004517          	auipc	a0,0x4
    80002e0c:	45050513          	addi	a0,a0,1104 # 80007258 <CONSOLE_STATUS+0x248>
    80002e10:	00001097          	auipc	ra,0x1
    80002e14:	a18080e7          	jalr	-1512(ra) # 80003828 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002e18:	02000513          	li	a0,32
    80002e1c:	fffff097          	auipc	ra,0xfffff
    80002e20:	bd0080e7          	jalr	-1072(ra) # 800019ec <_Znwm>
    80002e24:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	d14080e7          	jalr	-748(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80002e30:	00006797          	auipc	a5,0x6
    80002e34:	af078793          	addi	a5,a5,-1296 # 80008920 <_ZTV7WorkerC+0x10>
    80002e38:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002e3c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002e40:	00004517          	auipc	a0,0x4
    80002e44:	43050513          	addi	a0,a0,1072 # 80007270 <CONSOLE_STATUS+0x260>
    80002e48:	00001097          	auipc	ra,0x1
    80002e4c:	9e0080e7          	jalr	-1568(ra) # 80003828 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002e50:	02000513          	li	a0,32
    80002e54:	fffff097          	auipc	ra,0xfffff
    80002e58:	b98080e7          	jalr	-1128(ra) # 800019ec <_Znwm>
    80002e5c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	cdc080e7          	jalr	-804(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80002e68:	00006797          	auipc	a5,0x6
    80002e6c:	ae078793          	addi	a5,a5,-1312 # 80008948 <_ZTV7WorkerD+0x10>
    80002e70:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002e74:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002e78:	00004517          	auipc	a0,0x4
    80002e7c:	41050513          	addi	a0,a0,1040 # 80007288 <CONSOLE_STATUS+0x278>
    80002e80:	00001097          	auipc	ra,0x1
    80002e84:	9a8080e7          	jalr	-1624(ra) # 80003828 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002e88:	00000493          	li	s1,0
    80002e8c:	00300793          	li	a5,3
    80002e90:	0297c663          	blt	a5,s1,80002ebc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002e94:	00349793          	slli	a5,s1,0x3
    80002e98:	fe040713          	addi	a4,s0,-32
    80002e9c:	00f707b3          	add	a5,a4,a5
    80002ea0:	fe07b503          	ld	a0,-32(a5)
    80002ea4:	fffff097          	auipc	ra,0xfffff
    80002ea8:	cc8080e7          	jalr	-824(ra) # 80001b6c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002eac:	0014849b          	addiw	s1,s1,1
    80002eb0:	fddff06f          	j	80002e8c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002eb4:	fffff097          	auipc	ra,0xfffff
    80002eb8:	d0c080e7          	jalr	-756(ra) # 80001bc0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002ebc:	00006797          	auipc	a5,0x6
    80002ec0:	b747c783          	lbu	a5,-1164(a5) # 80008a30 <_ZL9finishedA>
    80002ec4:	fe0788e3          	beqz	a5,80002eb4 <_Z20Threads_CPP_API_testv+0x124>
    80002ec8:	00006797          	auipc	a5,0x6
    80002ecc:	b697c783          	lbu	a5,-1175(a5) # 80008a31 <_ZL9finishedB>
    80002ed0:	fe0782e3          	beqz	a5,80002eb4 <_Z20Threads_CPP_API_testv+0x124>
    80002ed4:	00006797          	auipc	a5,0x6
    80002ed8:	b5e7c783          	lbu	a5,-1186(a5) # 80008a32 <_ZL9finishedC>
    80002edc:	fc078ce3          	beqz	a5,80002eb4 <_Z20Threads_CPP_API_testv+0x124>
    80002ee0:	00006797          	auipc	a5,0x6
    80002ee4:	b537c783          	lbu	a5,-1197(a5) # 80008a33 <_ZL9finishedD>
    80002ee8:	fc0786e3          	beqz	a5,80002eb4 <_Z20Threads_CPP_API_testv+0x124>
    80002eec:	fc040493          	addi	s1,s0,-64
    80002ef0:	0080006f          	j	80002ef8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002ef4:	00848493          	addi	s1,s1,8
    80002ef8:	fe040793          	addi	a5,s0,-32
    80002efc:	08f48663          	beq	s1,a5,80002f88 <_Z20Threads_CPP_API_testv+0x1f8>
    80002f00:	0004b503          	ld	a0,0(s1)
    80002f04:	fe0508e3          	beqz	a0,80002ef4 <_Z20Threads_CPP_API_testv+0x164>
    80002f08:	00053783          	ld	a5,0(a0)
    80002f0c:	0087b783          	ld	a5,8(a5)
    80002f10:	000780e7          	jalr	a5
    80002f14:	fe1ff06f          	j	80002ef4 <_Z20Threads_CPP_API_testv+0x164>
    80002f18:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002f1c:	00048513          	mv	a0,s1
    80002f20:	fffff097          	auipc	ra,0xfffff
    80002f24:	af4080e7          	jalr	-1292(ra) # 80001a14 <_ZdlPv>
    80002f28:	00090513          	mv	a0,s2
    80002f2c:	00007097          	auipc	ra,0x7
    80002f30:	bec080e7          	jalr	-1044(ra) # 80009b18 <_Unwind_Resume>
    80002f34:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002f38:	00048513          	mv	a0,s1
    80002f3c:	fffff097          	auipc	ra,0xfffff
    80002f40:	ad8080e7          	jalr	-1320(ra) # 80001a14 <_ZdlPv>
    80002f44:	00090513          	mv	a0,s2
    80002f48:	00007097          	auipc	ra,0x7
    80002f4c:	bd0080e7          	jalr	-1072(ra) # 80009b18 <_Unwind_Resume>
    80002f50:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002f54:	00048513          	mv	a0,s1
    80002f58:	fffff097          	auipc	ra,0xfffff
    80002f5c:	abc080e7          	jalr	-1348(ra) # 80001a14 <_ZdlPv>
    80002f60:	00090513          	mv	a0,s2
    80002f64:	00007097          	auipc	ra,0x7
    80002f68:	bb4080e7          	jalr	-1100(ra) # 80009b18 <_Unwind_Resume>
    80002f6c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002f70:	00048513          	mv	a0,s1
    80002f74:	fffff097          	auipc	ra,0xfffff
    80002f78:	aa0080e7          	jalr	-1376(ra) # 80001a14 <_ZdlPv>
    80002f7c:	00090513          	mv	a0,s2
    80002f80:	00007097          	auipc	ra,0x7
    80002f84:	b98080e7          	jalr	-1128(ra) # 80009b18 <_Unwind_Resume>
}
    80002f88:	03813083          	ld	ra,56(sp)
    80002f8c:	03013403          	ld	s0,48(sp)
    80002f90:	02813483          	ld	s1,40(sp)
    80002f94:	02013903          	ld	s2,32(sp)
    80002f98:	04010113          	addi	sp,sp,64
    80002f9c:	00008067          	ret

0000000080002fa0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002fa0:	ff010113          	addi	sp,sp,-16
    80002fa4:	00113423          	sd	ra,8(sp)
    80002fa8:	00813023          	sd	s0,0(sp)
    80002fac:	01010413          	addi	s0,sp,16
    80002fb0:	00006797          	auipc	a5,0x6
    80002fb4:	92078793          	addi	a5,a5,-1760 # 800088d0 <_ZTV7WorkerA+0x10>
    80002fb8:	00f53023          	sd	a5,0(a0)
    80002fbc:	fffff097          	auipc	ra,0xfffff
    80002fc0:	984080e7          	jalr	-1660(ra) # 80001940 <_ZN6ThreadD1Ev>
    80002fc4:	00813083          	ld	ra,8(sp)
    80002fc8:	00013403          	ld	s0,0(sp)
    80002fcc:	01010113          	addi	sp,sp,16
    80002fd0:	00008067          	ret

0000000080002fd4 <_ZN7WorkerAD0Ev>:
    80002fd4:	fe010113          	addi	sp,sp,-32
    80002fd8:	00113c23          	sd	ra,24(sp)
    80002fdc:	00813823          	sd	s0,16(sp)
    80002fe0:	00913423          	sd	s1,8(sp)
    80002fe4:	02010413          	addi	s0,sp,32
    80002fe8:	00050493          	mv	s1,a0
    80002fec:	00006797          	auipc	a5,0x6
    80002ff0:	8e478793          	addi	a5,a5,-1820 # 800088d0 <_ZTV7WorkerA+0x10>
    80002ff4:	00f53023          	sd	a5,0(a0)
    80002ff8:	fffff097          	auipc	ra,0xfffff
    80002ffc:	948080e7          	jalr	-1720(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003000:	00048513          	mv	a0,s1
    80003004:	fffff097          	auipc	ra,0xfffff
    80003008:	a10080e7          	jalr	-1520(ra) # 80001a14 <_ZdlPv>
    8000300c:	01813083          	ld	ra,24(sp)
    80003010:	01013403          	ld	s0,16(sp)
    80003014:	00813483          	ld	s1,8(sp)
    80003018:	02010113          	addi	sp,sp,32
    8000301c:	00008067          	ret

0000000080003020 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003020:	ff010113          	addi	sp,sp,-16
    80003024:	00113423          	sd	ra,8(sp)
    80003028:	00813023          	sd	s0,0(sp)
    8000302c:	01010413          	addi	s0,sp,16
    80003030:	00006797          	auipc	a5,0x6
    80003034:	8c878793          	addi	a5,a5,-1848 # 800088f8 <_ZTV7WorkerB+0x10>
    80003038:	00f53023          	sd	a5,0(a0)
    8000303c:	fffff097          	auipc	ra,0xfffff
    80003040:	904080e7          	jalr	-1788(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003044:	00813083          	ld	ra,8(sp)
    80003048:	00013403          	ld	s0,0(sp)
    8000304c:	01010113          	addi	sp,sp,16
    80003050:	00008067          	ret

0000000080003054 <_ZN7WorkerBD0Ev>:
    80003054:	fe010113          	addi	sp,sp,-32
    80003058:	00113c23          	sd	ra,24(sp)
    8000305c:	00813823          	sd	s0,16(sp)
    80003060:	00913423          	sd	s1,8(sp)
    80003064:	02010413          	addi	s0,sp,32
    80003068:	00050493          	mv	s1,a0
    8000306c:	00006797          	auipc	a5,0x6
    80003070:	88c78793          	addi	a5,a5,-1908 # 800088f8 <_ZTV7WorkerB+0x10>
    80003074:	00f53023          	sd	a5,0(a0)
    80003078:	fffff097          	auipc	ra,0xfffff
    8000307c:	8c8080e7          	jalr	-1848(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003080:	00048513          	mv	a0,s1
    80003084:	fffff097          	auipc	ra,0xfffff
    80003088:	990080e7          	jalr	-1648(ra) # 80001a14 <_ZdlPv>
    8000308c:	01813083          	ld	ra,24(sp)
    80003090:	01013403          	ld	s0,16(sp)
    80003094:	00813483          	ld	s1,8(sp)
    80003098:	02010113          	addi	sp,sp,32
    8000309c:	00008067          	ret

00000000800030a0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800030a0:	ff010113          	addi	sp,sp,-16
    800030a4:	00113423          	sd	ra,8(sp)
    800030a8:	00813023          	sd	s0,0(sp)
    800030ac:	01010413          	addi	s0,sp,16
    800030b0:	00006797          	auipc	a5,0x6
    800030b4:	87078793          	addi	a5,a5,-1936 # 80008920 <_ZTV7WorkerC+0x10>
    800030b8:	00f53023          	sd	a5,0(a0)
    800030bc:	fffff097          	auipc	ra,0xfffff
    800030c0:	884080e7          	jalr	-1916(ra) # 80001940 <_ZN6ThreadD1Ev>
    800030c4:	00813083          	ld	ra,8(sp)
    800030c8:	00013403          	ld	s0,0(sp)
    800030cc:	01010113          	addi	sp,sp,16
    800030d0:	00008067          	ret

00000000800030d4 <_ZN7WorkerCD0Ev>:
    800030d4:	fe010113          	addi	sp,sp,-32
    800030d8:	00113c23          	sd	ra,24(sp)
    800030dc:	00813823          	sd	s0,16(sp)
    800030e0:	00913423          	sd	s1,8(sp)
    800030e4:	02010413          	addi	s0,sp,32
    800030e8:	00050493          	mv	s1,a0
    800030ec:	00006797          	auipc	a5,0x6
    800030f0:	83478793          	addi	a5,a5,-1996 # 80008920 <_ZTV7WorkerC+0x10>
    800030f4:	00f53023          	sd	a5,0(a0)
    800030f8:	fffff097          	auipc	ra,0xfffff
    800030fc:	848080e7          	jalr	-1976(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003100:	00048513          	mv	a0,s1
    80003104:	fffff097          	auipc	ra,0xfffff
    80003108:	910080e7          	jalr	-1776(ra) # 80001a14 <_ZdlPv>
    8000310c:	01813083          	ld	ra,24(sp)
    80003110:	01013403          	ld	s0,16(sp)
    80003114:	00813483          	ld	s1,8(sp)
    80003118:	02010113          	addi	sp,sp,32
    8000311c:	00008067          	ret

0000000080003120 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003120:	ff010113          	addi	sp,sp,-16
    80003124:	00113423          	sd	ra,8(sp)
    80003128:	00813023          	sd	s0,0(sp)
    8000312c:	01010413          	addi	s0,sp,16
    80003130:	00006797          	auipc	a5,0x6
    80003134:	81878793          	addi	a5,a5,-2024 # 80008948 <_ZTV7WorkerD+0x10>
    80003138:	00f53023          	sd	a5,0(a0)
    8000313c:	fffff097          	auipc	ra,0xfffff
    80003140:	804080e7          	jalr	-2044(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003144:	00813083          	ld	ra,8(sp)
    80003148:	00013403          	ld	s0,0(sp)
    8000314c:	01010113          	addi	sp,sp,16
    80003150:	00008067          	ret

0000000080003154 <_ZN7WorkerDD0Ev>:
    80003154:	fe010113          	addi	sp,sp,-32
    80003158:	00113c23          	sd	ra,24(sp)
    8000315c:	00813823          	sd	s0,16(sp)
    80003160:	00913423          	sd	s1,8(sp)
    80003164:	02010413          	addi	s0,sp,32
    80003168:	00050493          	mv	s1,a0
    8000316c:	00005797          	auipc	a5,0x5
    80003170:	7dc78793          	addi	a5,a5,2012 # 80008948 <_ZTV7WorkerD+0x10>
    80003174:	00f53023          	sd	a5,0(a0)
    80003178:	ffffe097          	auipc	ra,0xffffe
    8000317c:	7c8080e7          	jalr	1992(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003180:	00048513          	mv	a0,s1
    80003184:	fffff097          	auipc	ra,0xfffff
    80003188:	890080e7          	jalr	-1904(ra) # 80001a14 <_ZdlPv>
    8000318c:	01813083          	ld	ra,24(sp)
    80003190:	01013403          	ld	s0,16(sp)
    80003194:	00813483          	ld	s1,8(sp)
    80003198:	02010113          	addi	sp,sp,32
    8000319c:	00008067          	ret

00000000800031a0 <_ZN7WorkerA3runEv>:
    void run() override {
    800031a0:	ff010113          	addi	sp,sp,-16
    800031a4:	00113423          	sd	ra,8(sp)
    800031a8:	00813023          	sd	s0,0(sp)
    800031ac:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800031b0:	00000593          	li	a1,0
    800031b4:	fffff097          	auipc	ra,0xfffff
    800031b8:	774080e7          	jalr	1908(ra) # 80002928 <_ZN7WorkerA11workerBodyAEPv>
    }
    800031bc:	00813083          	ld	ra,8(sp)
    800031c0:	00013403          	ld	s0,0(sp)
    800031c4:	01010113          	addi	sp,sp,16
    800031c8:	00008067          	ret

00000000800031cc <_ZN7WorkerB3runEv>:
    void run() override {
    800031cc:	ff010113          	addi	sp,sp,-16
    800031d0:	00113423          	sd	ra,8(sp)
    800031d4:	00813023          	sd	s0,0(sp)
    800031d8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800031dc:	00000593          	li	a1,0
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	814080e7          	jalr	-2028(ra) # 800029f4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800031e8:	00813083          	ld	ra,8(sp)
    800031ec:	00013403          	ld	s0,0(sp)
    800031f0:	01010113          	addi	sp,sp,16
    800031f4:	00008067          	ret

00000000800031f8 <_ZN7WorkerC3runEv>:
    void run() override {
    800031f8:	ff010113          	addi	sp,sp,-16
    800031fc:	00113423          	sd	ra,8(sp)
    80003200:	00813023          	sd	s0,0(sp)
    80003204:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003208:	00000593          	li	a1,0
    8000320c:	00000097          	auipc	ra,0x0
    80003210:	8bc080e7          	jalr	-1860(ra) # 80002ac8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003214:	00813083          	ld	ra,8(sp)
    80003218:	00013403          	ld	s0,0(sp)
    8000321c:	01010113          	addi	sp,sp,16
    80003220:	00008067          	ret

0000000080003224 <_ZN7WorkerD3runEv>:
    void run() override {
    80003224:	ff010113          	addi	sp,sp,-16
    80003228:	00113423          	sd	ra,8(sp)
    8000322c:	00813023          	sd	s0,0(sp)
    80003230:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003234:	00000593          	li	a1,0
    80003238:	00000097          	auipc	ra,0x0
    8000323c:	a10080e7          	jalr	-1520(ra) # 80002c48 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003240:	00813083          	ld	ra,8(sp)
    80003244:	00013403          	ld	s0,0(sp)
    80003248:	01010113          	addi	sp,sp,16
    8000324c:	00008067          	ret

0000000080003250 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003250:	fe010113          	addi	sp,sp,-32
    80003254:	00113c23          	sd	ra,24(sp)
    80003258:	00813823          	sd	s0,16(sp)
    8000325c:	00913423          	sd	s1,8(sp)
    80003260:	01213023          	sd	s2,0(sp)
    80003264:	02010413          	addi	s0,sp,32
    80003268:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000326c:	00100793          	li	a5,1
    80003270:	02a7f863          	bgeu	a5,a0,800032a0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003274:	00a00793          	li	a5,10
    80003278:	02f577b3          	remu	a5,a0,a5
    8000327c:	02078e63          	beqz	a5,800032b8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003280:	fff48513          	addi	a0,s1,-1
    80003284:	00000097          	auipc	ra,0x0
    80003288:	fcc080e7          	jalr	-52(ra) # 80003250 <_ZL9fibonaccim>
    8000328c:	00050913          	mv	s2,a0
    80003290:	ffe48513          	addi	a0,s1,-2
    80003294:	00000097          	auipc	ra,0x0
    80003298:	fbc080e7          	jalr	-68(ra) # 80003250 <_ZL9fibonaccim>
    8000329c:	00a90533          	add	a0,s2,a0
}
    800032a0:	01813083          	ld	ra,24(sp)
    800032a4:	01013403          	ld	s0,16(sp)
    800032a8:	00813483          	ld	s1,8(sp)
    800032ac:	00013903          	ld	s2,0(sp)
    800032b0:	02010113          	addi	sp,sp,32
    800032b4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800032b8:	ffffe097          	auipc	ra,0xffffe
    800032bc:	038080e7          	jalr	56(ra) # 800012f0 <_Z15thread_dispatchv>
    800032c0:	fc1ff06f          	j	80003280 <_ZL9fibonaccim+0x30>

00000000800032c4 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800032c4:	fe010113          	addi	sp,sp,-32
    800032c8:	00113c23          	sd	ra,24(sp)
    800032cc:	00813823          	sd	s0,16(sp)
    800032d0:	00913423          	sd	s1,8(sp)
    800032d4:	01213023          	sd	s2,0(sp)
    800032d8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800032dc:	00a00493          	li	s1,10
    800032e0:	0400006f          	j	80003320 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800032e4:	00004517          	auipc	a0,0x4
    800032e8:	f2450513          	addi	a0,a0,-220 # 80007208 <CONSOLE_STATUS+0x1f8>
    800032ec:	00000097          	auipc	ra,0x0
    800032f0:	53c080e7          	jalr	1340(ra) # 80003828 <_Z11printStringPKc>
    800032f4:	00000613          	li	a2,0
    800032f8:	00a00593          	li	a1,10
    800032fc:	00048513          	mv	a0,s1
    80003300:	00000097          	auipc	ra,0x0
    80003304:	6d8080e7          	jalr	1752(ra) # 800039d8 <_Z8printIntiii>
    80003308:	00004517          	auipc	a0,0x4
    8000330c:	e6050513          	addi	a0,a0,-416 # 80007168 <CONSOLE_STATUS+0x158>
    80003310:	00000097          	auipc	ra,0x0
    80003314:	518080e7          	jalr	1304(ra) # 80003828 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003318:	0014849b          	addiw	s1,s1,1
    8000331c:	0ff4f493          	andi	s1,s1,255
    80003320:	00c00793          	li	a5,12
    80003324:	fc97f0e3          	bgeu	a5,s1,800032e4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003328:	00004517          	auipc	a0,0x4
    8000332c:	ee850513          	addi	a0,a0,-280 # 80007210 <CONSOLE_STATUS+0x200>
    80003330:	00000097          	auipc	ra,0x0
    80003334:	4f8080e7          	jalr	1272(ra) # 80003828 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003338:	00500313          	li	t1,5
    thread_dispatch();
    8000333c:	ffffe097          	auipc	ra,0xffffe
    80003340:	fb4080e7          	jalr	-76(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003344:	01000513          	li	a0,16
    80003348:	00000097          	auipc	ra,0x0
    8000334c:	f08080e7          	jalr	-248(ra) # 80003250 <_ZL9fibonaccim>
    80003350:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003354:	00004517          	auipc	a0,0x4
    80003358:	ecc50513          	addi	a0,a0,-308 # 80007220 <CONSOLE_STATUS+0x210>
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	4cc080e7          	jalr	1228(ra) # 80003828 <_Z11printStringPKc>
    80003364:	00000613          	li	a2,0
    80003368:	00a00593          	li	a1,10
    8000336c:	0009051b          	sext.w	a0,s2
    80003370:	00000097          	auipc	ra,0x0
    80003374:	668080e7          	jalr	1640(ra) # 800039d8 <_Z8printIntiii>
    80003378:	00004517          	auipc	a0,0x4
    8000337c:	df050513          	addi	a0,a0,-528 # 80007168 <CONSOLE_STATUS+0x158>
    80003380:	00000097          	auipc	ra,0x0
    80003384:	4a8080e7          	jalr	1192(ra) # 80003828 <_Z11printStringPKc>
    80003388:	0400006f          	j	800033c8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000338c:	00004517          	auipc	a0,0x4
    80003390:	e7c50513          	addi	a0,a0,-388 # 80007208 <CONSOLE_STATUS+0x1f8>
    80003394:	00000097          	auipc	ra,0x0
    80003398:	494080e7          	jalr	1172(ra) # 80003828 <_Z11printStringPKc>
    8000339c:	00000613          	li	a2,0
    800033a0:	00a00593          	li	a1,10
    800033a4:	00048513          	mv	a0,s1
    800033a8:	00000097          	auipc	ra,0x0
    800033ac:	630080e7          	jalr	1584(ra) # 800039d8 <_Z8printIntiii>
    800033b0:	00004517          	auipc	a0,0x4
    800033b4:	db850513          	addi	a0,a0,-584 # 80007168 <CONSOLE_STATUS+0x158>
    800033b8:	00000097          	auipc	ra,0x0
    800033bc:	470080e7          	jalr	1136(ra) # 80003828 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800033c0:	0014849b          	addiw	s1,s1,1
    800033c4:	0ff4f493          	andi	s1,s1,255
    800033c8:	00f00793          	li	a5,15
    800033cc:	fc97f0e3          	bgeu	a5,s1,8000338c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800033d0:	00004517          	auipc	a0,0x4
    800033d4:	e6050513          	addi	a0,a0,-416 # 80007230 <CONSOLE_STATUS+0x220>
    800033d8:	00000097          	auipc	ra,0x0
    800033dc:	450080e7          	jalr	1104(ra) # 80003828 <_Z11printStringPKc>
    finishedD = true;
    800033e0:	00100793          	li	a5,1
    800033e4:	00005717          	auipc	a4,0x5
    800033e8:	64f70823          	sb	a5,1616(a4) # 80008a34 <_ZL9finishedD>
    thread_dispatch();
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	f04080e7          	jalr	-252(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800033f4:	01813083          	ld	ra,24(sp)
    800033f8:	01013403          	ld	s0,16(sp)
    800033fc:	00813483          	ld	s1,8(sp)
    80003400:	00013903          	ld	s2,0(sp)
    80003404:	02010113          	addi	sp,sp,32
    80003408:	00008067          	ret

000000008000340c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000340c:	fe010113          	addi	sp,sp,-32
    80003410:	00113c23          	sd	ra,24(sp)
    80003414:	00813823          	sd	s0,16(sp)
    80003418:	00913423          	sd	s1,8(sp)
    8000341c:	01213023          	sd	s2,0(sp)
    80003420:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003424:	00000493          	li	s1,0
    80003428:	0400006f          	j	80003468 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000342c:	00004517          	auipc	a0,0x4
    80003430:	dac50513          	addi	a0,a0,-596 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80003434:	00000097          	auipc	ra,0x0
    80003438:	3f4080e7          	jalr	1012(ra) # 80003828 <_Z11printStringPKc>
    8000343c:	00000613          	li	a2,0
    80003440:	00a00593          	li	a1,10
    80003444:	00048513          	mv	a0,s1
    80003448:	00000097          	auipc	ra,0x0
    8000344c:	590080e7          	jalr	1424(ra) # 800039d8 <_Z8printIntiii>
    80003450:	00004517          	auipc	a0,0x4
    80003454:	d1850513          	addi	a0,a0,-744 # 80007168 <CONSOLE_STATUS+0x158>
    80003458:	00000097          	auipc	ra,0x0
    8000345c:	3d0080e7          	jalr	976(ra) # 80003828 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003460:	0014849b          	addiw	s1,s1,1
    80003464:	0ff4f493          	andi	s1,s1,255
    80003468:	00200793          	li	a5,2
    8000346c:	fc97f0e3          	bgeu	a5,s1,8000342c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003470:	00004517          	auipc	a0,0x4
    80003474:	d7050513          	addi	a0,a0,-656 # 800071e0 <CONSOLE_STATUS+0x1d0>
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	3b0080e7          	jalr	944(ra) # 80003828 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003480:	00700313          	li	t1,7
    thread_dispatch();
    80003484:	ffffe097          	auipc	ra,0xffffe
    80003488:	e6c080e7          	jalr	-404(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000348c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003490:	00004517          	auipc	a0,0x4
    80003494:	d6050513          	addi	a0,a0,-672 # 800071f0 <CONSOLE_STATUS+0x1e0>
    80003498:	00000097          	auipc	ra,0x0
    8000349c:	390080e7          	jalr	912(ra) # 80003828 <_Z11printStringPKc>
    800034a0:	00000613          	li	a2,0
    800034a4:	00a00593          	li	a1,10
    800034a8:	0009051b          	sext.w	a0,s2
    800034ac:	00000097          	auipc	ra,0x0
    800034b0:	52c080e7          	jalr	1324(ra) # 800039d8 <_Z8printIntiii>
    800034b4:	00004517          	auipc	a0,0x4
    800034b8:	cb450513          	addi	a0,a0,-844 # 80007168 <CONSOLE_STATUS+0x158>
    800034bc:	00000097          	auipc	ra,0x0
    800034c0:	36c080e7          	jalr	876(ra) # 80003828 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800034c4:	00c00513          	li	a0,12
    800034c8:	00000097          	auipc	ra,0x0
    800034cc:	d88080e7          	jalr	-632(ra) # 80003250 <_ZL9fibonaccim>
    800034d0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800034d4:	00004517          	auipc	a0,0x4
    800034d8:	d2450513          	addi	a0,a0,-732 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	34c080e7          	jalr	844(ra) # 80003828 <_Z11printStringPKc>
    800034e4:	00000613          	li	a2,0
    800034e8:	00a00593          	li	a1,10
    800034ec:	0009051b          	sext.w	a0,s2
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	4e8080e7          	jalr	1256(ra) # 800039d8 <_Z8printIntiii>
    800034f8:	00004517          	auipc	a0,0x4
    800034fc:	c7050513          	addi	a0,a0,-912 # 80007168 <CONSOLE_STATUS+0x158>
    80003500:	00000097          	auipc	ra,0x0
    80003504:	328080e7          	jalr	808(ra) # 80003828 <_Z11printStringPKc>
    80003508:	0400006f          	j	80003548 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000350c:	00004517          	auipc	a0,0x4
    80003510:	ccc50513          	addi	a0,a0,-820 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80003514:	00000097          	auipc	ra,0x0
    80003518:	314080e7          	jalr	788(ra) # 80003828 <_Z11printStringPKc>
    8000351c:	00000613          	li	a2,0
    80003520:	00a00593          	li	a1,10
    80003524:	00048513          	mv	a0,s1
    80003528:	00000097          	auipc	ra,0x0
    8000352c:	4b0080e7          	jalr	1200(ra) # 800039d8 <_Z8printIntiii>
    80003530:	00004517          	auipc	a0,0x4
    80003534:	c3850513          	addi	a0,a0,-968 # 80007168 <CONSOLE_STATUS+0x158>
    80003538:	00000097          	auipc	ra,0x0
    8000353c:	2f0080e7          	jalr	752(ra) # 80003828 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003540:	0014849b          	addiw	s1,s1,1
    80003544:	0ff4f493          	andi	s1,s1,255
    80003548:	00500793          	li	a5,5
    8000354c:	fc97f0e3          	bgeu	a5,s1,8000350c <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80003550:	00004517          	auipc	a0,0x4
    80003554:	d5050513          	addi	a0,a0,-688 # 800072a0 <CONSOLE_STATUS+0x290>
    80003558:	00000097          	auipc	ra,0x0
    8000355c:	2d0080e7          	jalr	720(ra) # 80003828 <_Z11printStringPKc>
    finishedC = true;
    80003560:	00100793          	li	a5,1
    80003564:	00005717          	auipc	a4,0x5
    80003568:	4cf708a3          	sb	a5,1233(a4) # 80008a35 <_ZL9finishedC>
    thread_dispatch();
    8000356c:	ffffe097          	auipc	ra,0xffffe
    80003570:	d84080e7          	jalr	-636(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003574:	01813083          	ld	ra,24(sp)
    80003578:	01013403          	ld	s0,16(sp)
    8000357c:	00813483          	ld	s1,8(sp)
    80003580:	00013903          	ld	s2,0(sp)
    80003584:	02010113          	addi	sp,sp,32
    80003588:	00008067          	ret

000000008000358c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000358c:	fe010113          	addi	sp,sp,-32
    80003590:	00113c23          	sd	ra,24(sp)
    80003594:	00813823          	sd	s0,16(sp)
    80003598:	00913423          	sd	s1,8(sp)
    8000359c:	01213023          	sd	s2,0(sp)
    800035a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800035a4:	00000913          	li	s2,0
    800035a8:	0380006f          	j	800035e0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	d44080e7          	jalr	-700(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800035b4:	00148493          	addi	s1,s1,1
    800035b8:	000027b7          	lui	a5,0x2
    800035bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800035c0:	0097ee63          	bltu	a5,s1,800035dc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800035c4:	00000713          	li	a4,0
    800035c8:	000077b7          	lui	a5,0x7
    800035cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800035d0:	fce7eee3          	bltu	a5,a4,800035ac <_ZL11workerBodyBPv+0x20>
    800035d4:	00170713          	addi	a4,a4,1
    800035d8:	ff1ff06f          	j	800035c8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800035dc:	00190913          	addi	s2,s2,1
    800035e0:	00f00793          	li	a5,15
    800035e4:	0527e063          	bltu	a5,s2,80003624 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800035e8:	00004517          	auipc	a0,0x4
    800035ec:	bd850513          	addi	a0,a0,-1064 # 800071c0 <CONSOLE_STATUS+0x1b0>
    800035f0:	00000097          	auipc	ra,0x0
    800035f4:	238080e7          	jalr	568(ra) # 80003828 <_Z11printStringPKc>
    800035f8:	00000613          	li	a2,0
    800035fc:	00a00593          	li	a1,10
    80003600:	0009051b          	sext.w	a0,s2
    80003604:	00000097          	auipc	ra,0x0
    80003608:	3d4080e7          	jalr	980(ra) # 800039d8 <_Z8printIntiii>
    8000360c:	00004517          	auipc	a0,0x4
    80003610:	b5c50513          	addi	a0,a0,-1188 # 80007168 <CONSOLE_STATUS+0x158>
    80003614:	00000097          	auipc	ra,0x0
    80003618:	214080e7          	jalr	532(ra) # 80003828 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000361c:	00000493          	li	s1,0
    80003620:	f99ff06f          	j	800035b8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003624:	00004517          	auipc	a0,0x4
    80003628:	ba450513          	addi	a0,a0,-1116 # 800071c8 <CONSOLE_STATUS+0x1b8>
    8000362c:	00000097          	auipc	ra,0x0
    80003630:	1fc080e7          	jalr	508(ra) # 80003828 <_Z11printStringPKc>
    finishedB = true;
    80003634:	00100793          	li	a5,1
    80003638:	00005717          	auipc	a4,0x5
    8000363c:	3ef70f23          	sb	a5,1022(a4) # 80008a36 <_ZL9finishedB>
    thread_dispatch();
    80003640:	ffffe097          	auipc	ra,0xffffe
    80003644:	cb0080e7          	jalr	-848(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003648:	01813083          	ld	ra,24(sp)
    8000364c:	01013403          	ld	s0,16(sp)
    80003650:	00813483          	ld	s1,8(sp)
    80003654:	00013903          	ld	s2,0(sp)
    80003658:	02010113          	addi	sp,sp,32
    8000365c:	00008067          	ret

0000000080003660 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003660:	fe010113          	addi	sp,sp,-32
    80003664:	00113c23          	sd	ra,24(sp)
    80003668:	00813823          	sd	s0,16(sp)
    8000366c:	00913423          	sd	s1,8(sp)
    80003670:	01213023          	sd	s2,0(sp)
    80003674:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003678:	00000913          	li	s2,0
    8000367c:	0380006f          	j	800036b4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	c70080e7          	jalr	-912(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003688:	00148493          	addi	s1,s1,1
    8000368c:	000027b7          	lui	a5,0x2
    80003690:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003694:	0097ee63          	bltu	a5,s1,800036b0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003698:	00000713          	li	a4,0
    8000369c:	000077b7          	lui	a5,0x7
    800036a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036a4:	fce7eee3          	bltu	a5,a4,80003680 <_ZL11workerBodyAPv+0x20>
    800036a8:	00170713          	addi	a4,a4,1
    800036ac:	ff1ff06f          	j	8000369c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800036b0:	00190913          	addi	s2,s2,1
    800036b4:	00900793          	li	a5,9
    800036b8:	0527e063          	bltu	a5,s2,800036f8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800036bc:	00004517          	auipc	a0,0x4
    800036c0:	aec50513          	addi	a0,a0,-1300 # 800071a8 <CONSOLE_STATUS+0x198>
    800036c4:	00000097          	auipc	ra,0x0
    800036c8:	164080e7          	jalr	356(ra) # 80003828 <_Z11printStringPKc>
    800036cc:	00000613          	li	a2,0
    800036d0:	00a00593          	li	a1,10
    800036d4:	0009051b          	sext.w	a0,s2
    800036d8:	00000097          	auipc	ra,0x0
    800036dc:	300080e7          	jalr	768(ra) # 800039d8 <_Z8printIntiii>
    800036e0:	00004517          	auipc	a0,0x4
    800036e4:	a8850513          	addi	a0,a0,-1400 # 80007168 <CONSOLE_STATUS+0x158>
    800036e8:	00000097          	auipc	ra,0x0
    800036ec:	140080e7          	jalr	320(ra) # 80003828 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800036f0:	00000493          	li	s1,0
    800036f4:	f99ff06f          	j	8000368c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800036f8:	00004517          	auipc	a0,0x4
    800036fc:	ab850513          	addi	a0,a0,-1352 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80003700:	00000097          	auipc	ra,0x0
    80003704:	128080e7          	jalr	296(ra) # 80003828 <_Z11printStringPKc>
    finishedA = true;
    80003708:	00100793          	li	a5,1
    8000370c:	00005717          	auipc	a4,0x5
    80003710:	32f705a3          	sb	a5,811(a4) # 80008a37 <_ZL9finishedA>
}
    80003714:	01813083          	ld	ra,24(sp)
    80003718:	01013403          	ld	s0,16(sp)
    8000371c:	00813483          	ld	s1,8(sp)
    80003720:	00013903          	ld	s2,0(sp)
    80003724:	02010113          	addi	sp,sp,32
    80003728:	00008067          	ret

000000008000372c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000372c:	fd010113          	addi	sp,sp,-48
    80003730:	02113423          	sd	ra,40(sp)
    80003734:	02813023          	sd	s0,32(sp)
    80003738:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000373c:	00000613          	li	a2,0
    80003740:	00000597          	auipc	a1,0x0
    80003744:	f2058593          	addi	a1,a1,-224 # 80003660 <_ZL11workerBodyAPv>
    80003748:	fd040513          	addi	a0,s0,-48
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	ad0080e7          	jalr	-1328(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80003754:	00004517          	auipc	a0,0x4
    80003758:	aec50513          	addi	a0,a0,-1300 # 80007240 <CONSOLE_STATUS+0x230>
    8000375c:	00000097          	auipc	ra,0x0
    80003760:	0cc080e7          	jalr	204(ra) # 80003828 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003764:	00000613          	li	a2,0
    80003768:	00000597          	auipc	a1,0x0
    8000376c:	e2458593          	addi	a1,a1,-476 # 8000358c <_ZL11workerBodyBPv>
    80003770:	fd840513          	addi	a0,s0,-40
    80003774:	ffffe097          	auipc	ra,0xffffe
    80003778:	aa8080e7          	jalr	-1368(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    8000377c:	00004517          	auipc	a0,0x4
    80003780:	adc50513          	addi	a0,a0,-1316 # 80007258 <CONSOLE_STATUS+0x248>
    80003784:	00000097          	auipc	ra,0x0
    80003788:	0a4080e7          	jalr	164(ra) # 80003828 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000378c:	00000613          	li	a2,0
    80003790:	00000597          	auipc	a1,0x0
    80003794:	c7c58593          	addi	a1,a1,-900 # 8000340c <_ZL11workerBodyCPv>
    80003798:	fe040513          	addi	a0,s0,-32
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	a80080e7          	jalr	-1408(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    800037a4:	00004517          	auipc	a0,0x4
    800037a8:	acc50513          	addi	a0,a0,-1332 # 80007270 <CONSOLE_STATUS+0x260>
    800037ac:	00000097          	auipc	ra,0x0
    800037b0:	07c080e7          	jalr	124(ra) # 80003828 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800037b4:	00000613          	li	a2,0
    800037b8:	00000597          	auipc	a1,0x0
    800037bc:	b0c58593          	addi	a1,a1,-1268 # 800032c4 <_ZL11workerBodyDPv>
    800037c0:	fe840513          	addi	a0,s0,-24
    800037c4:	ffffe097          	auipc	ra,0xffffe
    800037c8:	a58080e7          	jalr	-1448(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    800037cc:	00004517          	auipc	a0,0x4
    800037d0:	abc50513          	addi	a0,a0,-1348 # 80007288 <CONSOLE_STATUS+0x278>
    800037d4:	00000097          	auipc	ra,0x0
    800037d8:	054080e7          	jalr	84(ra) # 80003828 <_Z11printStringPKc>
    800037dc:	00c0006f          	j	800037e8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	b10080e7          	jalr	-1264(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800037e8:	00005797          	auipc	a5,0x5
    800037ec:	24f7c783          	lbu	a5,591(a5) # 80008a37 <_ZL9finishedA>
    800037f0:	fe0788e3          	beqz	a5,800037e0 <_Z18Threads_C_API_testv+0xb4>
    800037f4:	00005797          	auipc	a5,0x5
    800037f8:	2427c783          	lbu	a5,578(a5) # 80008a36 <_ZL9finishedB>
    800037fc:	fe0782e3          	beqz	a5,800037e0 <_Z18Threads_C_API_testv+0xb4>
    80003800:	00005797          	auipc	a5,0x5
    80003804:	2357c783          	lbu	a5,565(a5) # 80008a35 <_ZL9finishedC>
    80003808:	fc078ce3          	beqz	a5,800037e0 <_Z18Threads_C_API_testv+0xb4>
    8000380c:	00005797          	auipc	a5,0x5
    80003810:	2287c783          	lbu	a5,552(a5) # 80008a34 <_ZL9finishedD>
    80003814:	fc0786e3          	beqz	a5,800037e0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003818:	02813083          	ld	ra,40(sp)
    8000381c:	02013403          	ld	s0,32(sp)
    80003820:	03010113          	addi	sp,sp,48
    80003824:	00008067          	ret

0000000080003828 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003828:	fe010113          	addi	sp,sp,-32
    8000382c:	00113c23          	sd	ra,24(sp)
    80003830:	00813823          	sd	s0,16(sp)
    80003834:	00913423          	sd	s1,8(sp)
    80003838:	02010413          	addi	s0,sp,32
    8000383c:	00050493          	mv	s1,a0
    LOCK();
    80003840:	00100613          	li	a2,1
    80003844:	00000593          	li	a1,0
    80003848:	00005517          	auipc	a0,0x5
    8000384c:	1f050513          	addi	a0,a0,496 # 80008a38 <lockPrint>
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	8f4080e7          	jalr	-1804(ra) # 80001144 <copy_and_swap>
    80003858:	00050863          	beqz	a0,80003868 <_Z11printStringPKc+0x40>
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	a94080e7          	jalr	-1388(ra) # 800012f0 <_Z15thread_dispatchv>
    80003864:	fddff06f          	j	80003840 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003868:	0004c503          	lbu	a0,0(s1)
    8000386c:	00050a63          	beqz	a0,80003880 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	b84080e7          	jalr	-1148(ra) # 800013f4 <_Z4putcc>
        string++;
    80003878:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000387c:	fedff06f          	j	80003868 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80003880:	00000613          	li	a2,0
    80003884:	00100593          	li	a1,1
    80003888:	00005517          	auipc	a0,0x5
    8000388c:	1b050513          	addi	a0,a0,432 # 80008a38 <lockPrint>
    80003890:	ffffe097          	auipc	ra,0xffffe
    80003894:	8b4080e7          	jalr	-1868(ra) # 80001144 <copy_and_swap>
    80003898:	fe0514e3          	bnez	a0,80003880 <_Z11printStringPKc+0x58>
}
    8000389c:	01813083          	ld	ra,24(sp)
    800038a0:	01013403          	ld	s0,16(sp)
    800038a4:	00813483          	ld	s1,8(sp)
    800038a8:	02010113          	addi	sp,sp,32
    800038ac:	00008067          	ret

00000000800038b0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800038b0:	fd010113          	addi	sp,sp,-48
    800038b4:	02113423          	sd	ra,40(sp)
    800038b8:	02813023          	sd	s0,32(sp)
    800038bc:	00913c23          	sd	s1,24(sp)
    800038c0:	01213823          	sd	s2,16(sp)
    800038c4:	01313423          	sd	s3,8(sp)
    800038c8:	01413023          	sd	s4,0(sp)
    800038cc:	03010413          	addi	s0,sp,48
    800038d0:	00050993          	mv	s3,a0
    800038d4:	00058a13          	mv	s4,a1
    LOCK();
    800038d8:	00100613          	li	a2,1
    800038dc:	00000593          	li	a1,0
    800038e0:	00005517          	auipc	a0,0x5
    800038e4:	15850513          	addi	a0,a0,344 # 80008a38 <lockPrint>
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	85c080e7          	jalr	-1956(ra) # 80001144 <copy_and_swap>
    800038f0:	00050863          	beqz	a0,80003900 <_Z9getStringPci+0x50>
    800038f4:	ffffe097          	auipc	ra,0xffffe
    800038f8:	9fc080e7          	jalr	-1540(ra) # 800012f0 <_Z15thread_dispatchv>
    800038fc:	fddff06f          	j	800038d8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80003900:	00000913          	li	s2,0
    80003904:	00090493          	mv	s1,s2
    80003908:	0019091b          	addiw	s2,s2,1
    8000390c:	03495a63          	bge	s2,s4,80003940 <_Z9getStringPci+0x90>
        cc = getc();
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	abc080e7          	jalr	-1348(ra) # 800013cc <_Z4getcv>
        if(cc < 1)
    80003918:	02050463          	beqz	a0,80003940 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000391c:	009984b3          	add	s1,s3,s1
    80003920:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80003924:	00a00793          	li	a5,10
    80003928:	00f50a63          	beq	a0,a5,8000393c <_Z9getStringPci+0x8c>
    8000392c:	00d00793          	li	a5,13
    80003930:	fcf51ae3          	bne	a0,a5,80003904 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80003934:	00090493          	mv	s1,s2
    80003938:	0080006f          	j	80003940 <_Z9getStringPci+0x90>
    8000393c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003940:	009984b3          	add	s1,s3,s1
    80003944:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003948:	00000613          	li	a2,0
    8000394c:	00100593          	li	a1,1
    80003950:	00005517          	auipc	a0,0x5
    80003954:	0e850513          	addi	a0,a0,232 # 80008a38 <lockPrint>
    80003958:	ffffd097          	auipc	ra,0xffffd
    8000395c:	7ec080e7          	jalr	2028(ra) # 80001144 <copy_and_swap>
    80003960:	fe0514e3          	bnez	a0,80003948 <_Z9getStringPci+0x98>
    return buf;
}
    80003964:	00098513          	mv	a0,s3
    80003968:	02813083          	ld	ra,40(sp)
    8000396c:	02013403          	ld	s0,32(sp)
    80003970:	01813483          	ld	s1,24(sp)
    80003974:	01013903          	ld	s2,16(sp)
    80003978:	00813983          	ld	s3,8(sp)
    8000397c:	00013a03          	ld	s4,0(sp)
    80003980:	03010113          	addi	sp,sp,48
    80003984:	00008067          	ret

0000000080003988 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003988:	ff010113          	addi	sp,sp,-16
    8000398c:	00813423          	sd	s0,8(sp)
    80003990:	01010413          	addi	s0,sp,16
    80003994:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003998:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000399c:	0006c603          	lbu	a2,0(a3)
    800039a0:	fd06071b          	addiw	a4,a2,-48
    800039a4:	0ff77713          	andi	a4,a4,255
    800039a8:	00900793          	li	a5,9
    800039ac:	02e7e063          	bltu	a5,a4,800039cc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800039b0:	0025179b          	slliw	a5,a0,0x2
    800039b4:	00a787bb          	addw	a5,a5,a0
    800039b8:	0017979b          	slliw	a5,a5,0x1
    800039bc:	00168693          	addi	a3,a3,1
    800039c0:	00c787bb          	addw	a5,a5,a2
    800039c4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800039c8:	fd5ff06f          	j	8000399c <_Z11stringToIntPKc+0x14>
    return n;
}
    800039cc:	00813403          	ld	s0,8(sp)
    800039d0:	01010113          	addi	sp,sp,16
    800039d4:	00008067          	ret

00000000800039d8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800039d8:	fc010113          	addi	sp,sp,-64
    800039dc:	02113c23          	sd	ra,56(sp)
    800039e0:	02813823          	sd	s0,48(sp)
    800039e4:	02913423          	sd	s1,40(sp)
    800039e8:	03213023          	sd	s2,32(sp)
    800039ec:	01313c23          	sd	s3,24(sp)
    800039f0:	04010413          	addi	s0,sp,64
    800039f4:	00050493          	mv	s1,a0
    800039f8:	00058913          	mv	s2,a1
    800039fc:	00060993          	mv	s3,a2
    LOCK();
    80003a00:	00100613          	li	a2,1
    80003a04:	00000593          	li	a1,0
    80003a08:	00005517          	auipc	a0,0x5
    80003a0c:	03050513          	addi	a0,a0,48 # 80008a38 <lockPrint>
    80003a10:	ffffd097          	auipc	ra,0xffffd
    80003a14:	734080e7          	jalr	1844(ra) # 80001144 <copy_and_swap>
    80003a18:	00050863          	beqz	a0,80003a28 <_Z8printIntiii+0x50>
    80003a1c:	ffffe097          	auipc	ra,0xffffe
    80003a20:	8d4080e7          	jalr	-1836(ra) # 800012f0 <_Z15thread_dispatchv>
    80003a24:	fddff06f          	j	80003a00 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003a28:	00098463          	beqz	s3,80003a30 <_Z8printIntiii+0x58>
    80003a2c:	0804c463          	bltz	s1,80003ab4 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003a30:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003a34:	00000593          	li	a1,0
    }

    i = 0;
    80003a38:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003a3c:	0009079b          	sext.w	a5,s2
    80003a40:	0325773b          	remuw	a4,a0,s2
    80003a44:	00048613          	mv	a2,s1
    80003a48:	0014849b          	addiw	s1,s1,1
    80003a4c:	02071693          	slli	a3,a4,0x20
    80003a50:	0206d693          	srli	a3,a3,0x20
    80003a54:	00005717          	auipc	a4,0x5
    80003a58:	f0c70713          	addi	a4,a4,-244 # 80008960 <digits>
    80003a5c:	00d70733          	add	a4,a4,a3
    80003a60:	00074683          	lbu	a3,0(a4)
    80003a64:	fd040713          	addi	a4,s0,-48
    80003a68:	00c70733          	add	a4,a4,a2
    80003a6c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003a70:	0005071b          	sext.w	a4,a0
    80003a74:	0325553b          	divuw	a0,a0,s2
    80003a78:	fcf772e3          	bgeu	a4,a5,80003a3c <_Z8printIntiii+0x64>
    if(neg)
    80003a7c:	00058c63          	beqz	a1,80003a94 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80003a80:	fd040793          	addi	a5,s0,-48
    80003a84:	009784b3          	add	s1,a5,s1
    80003a88:	02d00793          	li	a5,45
    80003a8c:	fef48823          	sb	a5,-16(s1)
    80003a90:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003a94:	fff4849b          	addiw	s1,s1,-1
    80003a98:	0204c463          	bltz	s1,80003ac0 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80003a9c:	fd040793          	addi	a5,s0,-48
    80003aa0:	009787b3          	add	a5,a5,s1
    80003aa4:	ff07c503          	lbu	a0,-16(a5)
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	94c080e7          	jalr	-1716(ra) # 800013f4 <_Z4putcc>
    80003ab0:	fe5ff06f          	j	80003a94 <_Z8printIntiii+0xbc>
        x = -xx;
    80003ab4:	4090053b          	negw	a0,s1
        neg = 1;
    80003ab8:	00100593          	li	a1,1
        x = -xx;
    80003abc:	f7dff06f          	j	80003a38 <_Z8printIntiii+0x60>

    UNLOCK();
    80003ac0:	00000613          	li	a2,0
    80003ac4:	00100593          	li	a1,1
    80003ac8:	00005517          	auipc	a0,0x5
    80003acc:	f7050513          	addi	a0,a0,-144 # 80008a38 <lockPrint>
    80003ad0:	ffffd097          	auipc	ra,0xffffd
    80003ad4:	674080e7          	jalr	1652(ra) # 80001144 <copy_and_swap>
    80003ad8:	fe0514e3          	bnez	a0,80003ac0 <_Z8printIntiii+0xe8>
    80003adc:	03813083          	ld	ra,56(sp)
    80003ae0:	03013403          	ld	s0,48(sp)
    80003ae4:	02813483          	ld	s1,40(sp)
    80003ae8:	02013903          	ld	s2,32(sp)
    80003aec:	01813983          	ld	s3,24(sp)
    80003af0:	04010113          	addi	sp,sp,64
    80003af4:	00008067          	ret

0000000080003af8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80003af8:	ff010113          	addi	sp,sp,-16
    80003afc:	00113423          	sd	ra,8(sp)
    80003b00:	00813023          	sd	s0,0(sp)
    80003b04:	01010413          	addi	s0,sp,16
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80003b08:	00000097          	auipc	ra,0x0
    80003b0c:	c24080e7          	jalr	-988(ra) # 8000372c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80003b10:	00003517          	auipc	a0,0x3
    80003b14:	7a050513          	addi	a0,a0,1952 # 800072b0 <CONSOLE_STATUS+0x2a0>
    80003b18:	00000097          	auipc	ra,0x0
    80003b1c:	d10080e7          	jalr	-752(ra) # 80003828 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80003b20:	00813083          	ld	ra,8(sp)
    80003b24:	00013403          	ld	s0,0(sp)
    80003b28:	01010113          	addi	sp,sp,16
    80003b2c:	00008067          	ret

0000000080003b30 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003b30:	fe010113          	addi	sp,sp,-32
    80003b34:	00113c23          	sd	ra,24(sp)
    80003b38:	00813823          	sd	s0,16(sp)
    80003b3c:	00913423          	sd	s1,8(sp)
    80003b40:	01213023          	sd	s2,0(sp)
    80003b44:	02010413          	addi	s0,sp,32
    80003b48:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003b4c:	00100793          	li	a5,1
    80003b50:	02a7f863          	bgeu	a5,a0,80003b80 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003b54:	00a00793          	li	a5,10
    80003b58:	02f577b3          	remu	a5,a0,a5
    80003b5c:	02078e63          	beqz	a5,80003b98 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003b60:	fff48513          	addi	a0,s1,-1
    80003b64:	00000097          	auipc	ra,0x0
    80003b68:	fcc080e7          	jalr	-52(ra) # 80003b30 <_ZL9fibonaccim>
    80003b6c:	00050913          	mv	s2,a0
    80003b70:	ffe48513          	addi	a0,s1,-2
    80003b74:	00000097          	auipc	ra,0x0
    80003b78:	fbc080e7          	jalr	-68(ra) # 80003b30 <_ZL9fibonaccim>
    80003b7c:	00a90533          	add	a0,s2,a0
}
    80003b80:	01813083          	ld	ra,24(sp)
    80003b84:	01013403          	ld	s0,16(sp)
    80003b88:	00813483          	ld	s1,8(sp)
    80003b8c:	00013903          	ld	s2,0(sp)
    80003b90:	02010113          	addi	sp,sp,32
    80003b94:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003b98:	ffffd097          	auipc	ra,0xffffd
    80003b9c:	758080e7          	jalr	1880(ra) # 800012f0 <_Z15thread_dispatchv>
    80003ba0:	fc1ff06f          	j	80003b60 <_ZL9fibonaccim+0x30>

0000000080003ba4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003ba4:	fe010113          	addi	sp,sp,-32
    80003ba8:	00113c23          	sd	ra,24(sp)
    80003bac:	00813823          	sd	s0,16(sp)
    80003bb0:	00913423          	sd	s1,8(sp)
    80003bb4:	01213023          	sd	s2,0(sp)
    80003bb8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003bbc:	00a00493          	li	s1,10
    80003bc0:	0400006f          	j	80003c00 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003bc4:	00003517          	auipc	a0,0x3
    80003bc8:	64450513          	addi	a0,a0,1604 # 80007208 <CONSOLE_STATUS+0x1f8>
    80003bcc:	00000097          	auipc	ra,0x0
    80003bd0:	c5c080e7          	jalr	-932(ra) # 80003828 <_Z11printStringPKc>
    80003bd4:	00000613          	li	a2,0
    80003bd8:	00a00593          	li	a1,10
    80003bdc:	00048513          	mv	a0,s1
    80003be0:	00000097          	auipc	ra,0x0
    80003be4:	df8080e7          	jalr	-520(ra) # 800039d8 <_Z8printIntiii>
    80003be8:	00003517          	auipc	a0,0x3
    80003bec:	58050513          	addi	a0,a0,1408 # 80007168 <CONSOLE_STATUS+0x158>
    80003bf0:	00000097          	auipc	ra,0x0
    80003bf4:	c38080e7          	jalr	-968(ra) # 80003828 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003bf8:	0014849b          	addiw	s1,s1,1
    80003bfc:	0ff4f493          	andi	s1,s1,255
    80003c00:	00c00793          	li	a5,12
    80003c04:	fc97f0e3          	bgeu	a5,s1,80003bc4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003c08:	00003517          	auipc	a0,0x3
    80003c0c:	60850513          	addi	a0,a0,1544 # 80007210 <CONSOLE_STATUS+0x200>
    80003c10:	00000097          	auipc	ra,0x0
    80003c14:	c18080e7          	jalr	-1000(ra) # 80003828 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003c18:	00500313          	li	t1,5
    thread_dispatch();
    80003c1c:	ffffd097          	auipc	ra,0xffffd
    80003c20:	6d4080e7          	jalr	1748(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003c24:	01000513          	li	a0,16
    80003c28:	00000097          	auipc	ra,0x0
    80003c2c:	f08080e7          	jalr	-248(ra) # 80003b30 <_ZL9fibonaccim>
    80003c30:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003c34:	00003517          	auipc	a0,0x3
    80003c38:	5ec50513          	addi	a0,a0,1516 # 80007220 <CONSOLE_STATUS+0x210>
    80003c3c:	00000097          	auipc	ra,0x0
    80003c40:	bec080e7          	jalr	-1044(ra) # 80003828 <_Z11printStringPKc>
    80003c44:	00000613          	li	a2,0
    80003c48:	00a00593          	li	a1,10
    80003c4c:	0009051b          	sext.w	a0,s2
    80003c50:	00000097          	auipc	ra,0x0
    80003c54:	d88080e7          	jalr	-632(ra) # 800039d8 <_Z8printIntiii>
    80003c58:	00003517          	auipc	a0,0x3
    80003c5c:	51050513          	addi	a0,a0,1296 # 80007168 <CONSOLE_STATUS+0x158>
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	bc8080e7          	jalr	-1080(ra) # 80003828 <_Z11printStringPKc>
    80003c68:	0400006f          	j	80003ca8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c6c:	00003517          	auipc	a0,0x3
    80003c70:	59c50513          	addi	a0,a0,1436 # 80007208 <CONSOLE_STATUS+0x1f8>
    80003c74:	00000097          	auipc	ra,0x0
    80003c78:	bb4080e7          	jalr	-1100(ra) # 80003828 <_Z11printStringPKc>
    80003c7c:	00000613          	li	a2,0
    80003c80:	00a00593          	li	a1,10
    80003c84:	00048513          	mv	a0,s1
    80003c88:	00000097          	auipc	ra,0x0
    80003c8c:	d50080e7          	jalr	-688(ra) # 800039d8 <_Z8printIntiii>
    80003c90:	00003517          	auipc	a0,0x3
    80003c94:	4d850513          	addi	a0,a0,1240 # 80007168 <CONSOLE_STATUS+0x158>
    80003c98:	00000097          	auipc	ra,0x0
    80003c9c:	b90080e7          	jalr	-1136(ra) # 80003828 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003ca0:	0014849b          	addiw	s1,s1,1
    80003ca4:	0ff4f493          	andi	s1,s1,255
    80003ca8:	00f00793          	li	a5,15
    80003cac:	fc97f0e3          	bgeu	a5,s1,80003c6c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003cb0:	00003517          	auipc	a0,0x3
    80003cb4:	58050513          	addi	a0,a0,1408 # 80007230 <CONSOLE_STATUS+0x220>
    80003cb8:	00000097          	auipc	ra,0x0
    80003cbc:	b70080e7          	jalr	-1168(ra) # 80003828 <_Z11printStringPKc>
    finishedD = true;
    80003cc0:	00100793          	li	a5,1
    80003cc4:	00005717          	auipc	a4,0x5
    80003cc8:	d6f70e23          	sb	a5,-644(a4) # 80008a40 <_ZL9finishedD>
    thread_dispatch();
    80003ccc:	ffffd097          	auipc	ra,0xffffd
    80003cd0:	624080e7          	jalr	1572(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003cd4:	01813083          	ld	ra,24(sp)
    80003cd8:	01013403          	ld	s0,16(sp)
    80003cdc:	00813483          	ld	s1,8(sp)
    80003ce0:	00013903          	ld	s2,0(sp)
    80003ce4:	02010113          	addi	sp,sp,32
    80003ce8:	00008067          	ret

0000000080003cec <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003cec:	fe010113          	addi	sp,sp,-32
    80003cf0:	00113c23          	sd	ra,24(sp)
    80003cf4:	00813823          	sd	s0,16(sp)
    80003cf8:	00913423          	sd	s1,8(sp)
    80003cfc:	01213023          	sd	s2,0(sp)
    80003d00:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003d04:	00000493          	li	s1,0
    80003d08:	0400006f          	j	80003d48 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003d0c:	00003517          	auipc	a0,0x3
    80003d10:	4cc50513          	addi	a0,a0,1228 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80003d14:	00000097          	auipc	ra,0x0
    80003d18:	b14080e7          	jalr	-1260(ra) # 80003828 <_Z11printStringPKc>
    80003d1c:	00000613          	li	a2,0
    80003d20:	00a00593          	li	a1,10
    80003d24:	00048513          	mv	a0,s1
    80003d28:	00000097          	auipc	ra,0x0
    80003d2c:	cb0080e7          	jalr	-848(ra) # 800039d8 <_Z8printIntiii>
    80003d30:	00003517          	auipc	a0,0x3
    80003d34:	43850513          	addi	a0,a0,1080 # 80007168 <CONSOLE_STATUS+0x158>
    80003d38:	00000097          	auipc	ra,0x0
    80003d3c:	af0080e7          	jalr	-1296(ra) # 80003828 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003d40:	0014849b          	addiw	s1,s1,1
    80003d44:	0ff4f493          	andi	s1,s1,255
    80003d48:	00200793          	li	a5,2
    80003d4c:	fc97f0e3          	bgeu	a5,s1,80003d0c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003d50:	00003517          	auipc	a0,0x3
    80003d54:	49050513          	addi	a0,a0,1168 # 800071e0 <CONSOLE_STATUS+0x1d0>
    80003d58:	00000097          	auipc	ra,0x0
    80003d5c:	ad0080e7          	jalr	-1328(ra) # 80003828 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003d60:	00700313          	li	t1,7
    thread_dispatch();
    80003d64:	ffffd097          	auipc	ra,0xffffd
    80003d68:	58c080e7          	jalr	1420(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d6c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003d70:	00003517          	auipc	a0,0x3
    80003d74:	48050513          	addi	a0,a0,1152 # 800071f0 <CONSOLE_STATUS+0x1e0>
    80003d78:	00000097          	auipc	ra,0x0
    80003d7c:	ab0080e7          	jalr	-1360(ra) # 80003828 <_Z11printStringPKc>
    80003d80:	00000613          	li	a2,0
    80003d84:	00a00593          	li	a1,10
    80003d88:	0009051b          	sext.w	a0,s2
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	c4c080e7          	jalr	-948(ra) # 800039d8 <_Z8printIntiii>
    80003d94:	00003517          	auipc	a0,0x3
    80003d98:	3d450513          	addi	a0,a0,980 # 80007168 <CONSOLE_STATUS+0x158>
    80003d9c:	00000097          	auipc	ra,0x0
    80003da0:	a8c080e7          	jalr	-1396(ra) # 80003828 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003da4:	00c00513          	li	a0,12
    80003da8:	00000097          	auipc	ra,0x0
    80003dac:	d88080e7          	jalr	-632(ra) # 80003b30 <_ZL9fibonaccim>
    80003db0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003db4:	00003517          	auipc	a0,0x3
    80003db8:	44450513          	addi	a0,a0,1092 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80003dbc:	00000097          	auipc	ra,0x0
    80003dc0:	a6c080e7          	jalr	-1428(ra) # 80003828 <_Z11printStringPKc>
    80003dc4:	00000613          	li	a2,0
    80003dc8:	00a00593          	li	a1,10
    80003dcc:	0009051b          	sext.w	a0,s2
    80003dd0:	00000097          	auipc	ra,0x0
    80003dd4:	c08080e7          	jalr	-1016(ra) # 800039d8 <_Z8printIntiii>
    80003dd8:	00003517          	auipc	a0,0x3
    80003ddc:	39050513          	addi	a0,a0,912 # 80007168 <CONSOLE_STATUS+0x158>
    80003de0:	00000097          	auipc	ra,0x0
    80003de4:	a48080e7          	jalr	-1464(ra) # 80003828 <_Z11printStringPKc>
    80003de8:	0400006f          	j	80003e28 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003dec:	00003517          	auipc	a0,0x3
    80003df0:	3ec50513          	addi	a0,a0,1004 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80003df4:	00000097          	auipc	ra,0x0
    80003df8:	a34080e7          	jalr	-1484(ra) # 80003828 <_Z11printStringPKc>
    80003dfc:	00000613          	li	a2,0
    80003e00:	00a00593          	li	a1,10
    80003e04:	00048513          	mv	a0,s1
    80003e08:	00000097          	auipc	ra,0x0
    80003e0c:	bd0080e7          	jalr	-1072(ra) # 800039d8 <_Z8printIntiii>
    80003e10:	00003517          	auipc	a0,0x3
    80003e14:	35850513          	addi	a0,a0,856 # 80007168 <CONSOLE_STATUS+0x158>
    80003e18:	00000097          	auipc	ra,0x0
    80003e1c:	a10080e7          	jalr	-1520(ra) # 80003828 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003e20:	0014849b          	addiw	s1,s1,1
    80003e24:	0ff4f493          	andi	s1,s1,255
    80003e28:	00500793          	li	a5,5
    80003e2c:	fc97f0e3          	bgeu	a5,s1,80003dec <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003e30:	00003517          	auipc	a0,0x3
    80003e34:	38050513          	addi	a0,a0,896 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80003e38:	00000097          	auipc	ra,0x0
    80003e3c:	9f0080e7          	jalr	-1552(ra) # 80003828 <_Z11printStringPKc>
    finishedC = true;
    80003e40:	00100793          	li	a5,1
    80003e44:	00005717          	auipc	a4,0x5
    80003e48:	bef70ea3          	sb	a5,-1027(a4) # 80008a41 <_ZL9finishedC>
    thread_dispatch();
    80003e4c:	ffffd097          	auipc	ra,0xffffd
    80003e50:	4a4080e7          	jalr	1188(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003e54:	01813083          	ld	ra,24(sp)
    80003e58:	01013403          	ld	s0,16(sp)
    80003e5c:	00813483          	ld	s1,8(sp)
    80003e60:	00013903          	ld	s2,0(sp)
    80003e64:	02010113          	addi	sp,sp,32
    80003e68:	00008067          	ret

0000000080003e6c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003e6c:	fe010113          	addi	sp,sp,-32
    80003e70:	00113c23          	sd	ra,24(sp)
    80003e74:	00813823          	sd	s0,16(sp)
    80003e78:	00913423          	sd	s1,8(sp)
    80003e7c:	01213023          	sd	s2,0(sp)
    80003e80:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003e84:	00000913          	li	s2,0
    80003e88:	0400006f          	j	80003ec8 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003e8c:	ffffd097          	auipc	ra,0xffffd
    80003e90:	464080e7          	jalr	1124(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e94:	00148493          	addi	s1,s1,1
    80003e98:	000027b7          	lui	a5,0x2
    80003e9c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003ea0:	0097ee63          	bltu	a5,s1,80003ebc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003ea4:	00000713          	li	a4,0
    80003ea8:	000077b7          	lui	a5,0x7
    80003eac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003eb0:	fce7eee3          	bltu	a5,a4,80003e8c <_ZL11workerBodyBPv+0x20>
    80003eb4:	00170713          	addi	a4,a4,1
    80003eb8:	ff1ff06f          	j	80003ea8 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003ebc:	00a00793          	li	a5,10
    80003ec0:	04f90663          	beq	s2,a5,80003f0c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003ec4:	00190913          	addi	s2,s2,1
    80003ec8:	00f00793          	li	a5,15
    80003ecc:	0527e463          	bltu	a5,s2,80003f14 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80003ed0:	00003517          	auipc	a0,0x3
    80003ed4:	2f050513          	addi	a0,a0,752 # 800071c0 <CONSOLE_STATUS+0x1b0>
    80003ed8:	00000097          	auipc	ra,0x0
    80003edc:	950080e7          	jalr	-1712(ra) # 80003828 <_Z11printStringPKc>
    80003ee0:	00000613          	li	a2,0
    80003ee4:	00a00593          	li	a1,10
    80003ee8:	0009051b          	sext.w	a0,s2
    80003eec:	00000097          	auipc	ra,0x0
    80003ef0:	aec080e7          	jalr	-1300(ra) # 800039d8 <_Z8printIntiii>
    80003ef4:	00003517          	auipc	a0,0x3
    80003ef8:	27450513          	addi	a0,a0,628 # 80007168 <CONSOLE_STATUS+0x158>
    80003efc:	00000097          	auipc	ra,0x0
    80003f00:	92c080e7          	jalr	-1748(ra) # 80003828 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f04:	00000493          	li	s1,0
    80003f08:	f91ff06f          	j	80003e98 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003f0c:	14102ff3          	csrr	t6,sepc
    80003f10:	fb5ff06f          	j	80003ec4 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80003f14:	00003517          	auipc	a0,0x3
    80003f18:	2b450513          	addi	a0,a0,692 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80003f1c:	00000097          	auipc	ra,0x0
    80003f20:	90c080e7          	jalr	-1780(ra) # 80003828 <_Z11printStringPKc>
    finishedB = true;
    80003f24:	00100793          	li	a5,1
    80003f28:	00005717          	auipc	a4,0x5
    80003f2c:	b0f70d23          	sb	a5,-1254(a4) # 80008a42 <_ZL9finishedB>
    thread_dispatch();
    80003f30:	ffffd097          	auipc	ra,0xffffd
    80003f34:	3c0080e7          	jalr	960(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003f38:	01813083          	ld	ra,24(sp)
    80003f3c:	01013403          	ld	s0,16(sp)
    80003f40:	00813483          	ld	s1,8(sp)
    80003f44:	00013903          	ld	s2,0(sp)
    80003f48:	02010113          	addi	sp,sp,32
    80003f4c:	00008067          	ret

0000000080003f50 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003f50:	fe010113          	addi	sp,sp,-32
    80003f54:	00113c23          	sd	ra,24(sp)
    80003f58:	00813823          	sd	s0,16(sp)
    80003f5c:	00913423          	sd	s1,8(sp)
    80003f60:	01213023          	sd	s2,0(sp)
    80003f64:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003f68:	00000913          	li	s2,0
    80003f6c:	0380006f          	j	80003fa4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003f70:	ffffd097          	auipc	ra,0xffffd
    80003f74:	380080e7          	jalr	896(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f78:	00148493          	addi	s1,s1,1
    80003f7c:	000027b7          	lui	a5,0x2
    80003f80:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f84:	0097ee63          	bltu	a5,s1,80003fa0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f88:	00000713          	li	a4,0
    80003f8c:	000077b7          	lui	a5,0x7
    80003f90:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f94:	fce7eee3          	bltu	a5,a4,80003f70 <_ZL11workerBodyAPv+0x20>
    80003f98:	00170713          	addi	a4,a4,1
    80003f9c:	ff1ff06f          	j	80003f8c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003fa0:	00190913          	addi	s2,s2,1
    80003fa4:	00900793          	li	a5,9
    80003fa8:	0527e063          	bltu	a5,s2,80003fe8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003fac:	00003517          	auipc	a0,0x3
    80003fb0:	1fc50513          	addi	a0,a0,508 # 800071a8 <CONSOLE_STATUS+0x198>
    80003fb4:	00000097          	auipc	ra,0x0
    80003fb8:	874080e7          	jalr	-1932(ra) # 80003828 <_Z11printStringPKc>
    80003fbc:	00000613          	li	a2,0
    80003fc0:	00a00593          	li	a1,10
    80003fc4:	0009051b          	sext.w	a0,s2
    80003fc8:	00000097          	auipc	ra,0x0
    80003fcc:	a10080e7          	jalr	-1520(ra) # 800039d8 <_Z8printIntiii>
    80003fd0:	00003517          	auipc	a0,0x3
    80003fd4:	19850513          	addi	a0,a0,408 # 80007168 <CONSOLE_STATUS+0x158>
    80003fd8:	00000097          	auipc	ra,0x0
    80003fdc:	850080e7          	jalr	-1968(ra) # 80003828 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003fe0:	00000493          	li	s1,0
    80003fe4:	f99ff06f          	j	80003f7c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003fe8:	00003517          	auipc	a0,0x3
    80003fec:	1c850513          	addi	a0,a0,456 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80003ff0:	00000097          	auipc	ra,0x0
    80003ff4:	838080e7          	jalr	-1992(ra) # 80003828 <_Z11printStringPKc>
    finishedA = true;
    80003ff8:	00100793          	li	a5,1
    80003ffc:	00005717          	auipc	a4,0x5
    80004000:	a4f703a3          	sb	a5,-1465(a4) # 80008a43 <_ZL9finishedA>
}
    80004004:	01813083          	ld	ra,24(sp)
    80004008:	01013403          	ld	s0,16(sp)
    8000400c:	00813483          	ld	s1,8(sp)
    80004010:	00013903          	ld	s2,0(sp)
    80004014:	02010113          	addi	sp,sp,32
    80004018:	00008067          	ret

000000008000401c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000401c:	fd010113          	addi	sp,sp,-48
    80004020:	02113423          	sd	ra,40(sp)
    80004024:	02813023          	sd	s0,32(sp)
    80004028:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000402c:	00000613          	li	a2,0
    80004030:	00000597          	auipc	a1,0x0
    80004034:	f2058593          	addi	a1,a1,-224 # 80003f50 <_ZL11workerBodyAPv>
    80004038:	fd040513          	addi	a0,s0,-48
    8000403c:	ffffd097          	auipc	ra,0xffffd
    80004040:	1e0080e7          	jalr	480(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80004044:	00003517          	auipc	a0,0x3
    80004048:	1fc50513          	addi	a0,a0,508 # 80007240 <CONSOLE_STATUS+0x230>
    8000404c:	fffff097          	auipc	ra,0xfffff
    80004050:	7dc080e7          	jalr	2012(ra) # 80003828 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004054:	00000613          	li	a2,0
    80004058:	00000597          	auipc	a1,0x0
    8000405c:	e1458593          	addi	a1,a1,-492 # 80003e6c <_ZL11workerBodyBPv>
    80004060:	fd840513          	addi	a0,s0,-40
    80004064:	ffffd097          	auipc	ra,0xffffd
    80004068:	1b8080e7          	jalr	440(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    8000406c:	00003517          	auipc	a0,0x3
    80004070:	1ec50513          	addi	a0,a0,492 # 80007258 <CONSOLE_STATUS+0x248>
    80004074:	fffff097          	auipc	ra,0xfffff
    80004078:	7b4080e7          	jalr	1972(ra) # 80003828 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000407c:	00000613          	li	a2,0
    80004080:	00000597          	auipc	a1,0x0
    80004084:	c6c58593          	addi	a1,a1,-916 # 80003cec <_ZL11workerBodyCPv>
    80004088:	fe040513          	addi	a0,s0,-32
    8000408c:	ffffd097          	auipc	ra,0xffffd
    80004090:	190080e7          	jalr	400(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    80004094:	00003517          	auipc	a0,0x3
    80004098:	1dc50513          	addi	a0,a0,476 # 80007270 <CONSOLE_STATUS+0x260>
    8000409c:	fffff097          	auipc	ra,0xfffff
    800040a0:	78c080e7          	jalr	1932(ra) # 80003828 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800040a4:	00000613          	li	a2,0
    800040a8:	00000597          	auipc	a1,0x0
    800040ac:	afc58593          	addi	a1,a1,-1284 # 80003ba4 <_ZL11workerBodyDPv>
    800040b0:	fe840513          	addi	a0,s0,-24
    800040b4:	ffffd097          	auipc	ra,0xffffd
    800040b8:	168080e7          	jalr	360(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    800040bc:	00003517          	auipc	a0,0x3
    800040c0:	1cc50513          	addi	a0,a0,460 # 80007288 <CONSOLE_STATUS+0x278>
    800040c4:	fffff097          	auipc	ra,0xfffff
    800040c8:	764080e7          	jalr	1892(ra) # 80003828 <_Z11printStringPKc>
    800040cc:	00c0006f          	j	800040d8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800040d0:	ffffd097          	auipc	ra,0xffffd
    800040d4:	220080e7          	jalr	544(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800040d8:	00005797          	auipc	a5,0x5
    800040dc:	96b7c783          	lbu	a5,-1685(a5) # 80008a43 <_ZL9finishedA>
    800040e0:	fe0788e3          	beqz	a5,800040d0 <_Z16System_Mode_testv+0xb4>
    800040e4:	00005797          	auipc	a5,0x5
    800040e8:	95e7c783          	lbu	a5,-1698(a5) # 80008a42 <_ZL9finishedB>
    800040ec:	fe0782e3          	beqz	a5,800040d0 <_Z16System_Mode_testv+0xb4>
    800040f0:	00005797          	auipc	a5,0x5
    800040f4:	9517c783          	lbu	a5,-1711(a5) # 80008a41 <_ZL9finishedC>
    800040f8:	fc078ce3          	beqz	a5,800040d0 <_Z16System_Mode_testv+0xb4>
    800040fc:	00005797          	auipc	a5,0x5
    80004100:	9447c783          	lbu	a5,-1724(a5) # 80008a40 <_ZL9finishedD>
    80004104:	fc0786e3          	beqz	a5,800040d0 <_Z16System_Mode_testv+0xb4>
    }

}
    80004108:	02813083          	ld	ra,40(sp)
    8000410c:	02013403          	ld	s0,32(sp)
    80004110:	03010113          	addi	sp,sp,48
    80004114:	00008067          	ret

0000000080004118 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004118:	fe010113          	addi	sp,sp,-32
    8000411c:	00113c23          	sd	ra,24(sp)
    80004120:	00813823          	sd	s0,16(sp)
    80004124:	00913423          	sd	s1,8(sp)
    80004128:	01213023          	sd	s2,0(sp)
    8000412c:	02010413          	addi	s0,sp,32
    80004130:	00050493          	mv	s1,a0
    80004134:	00058913          	mv	s2,a1
    80004138:	0015879b          	addiw	a5,a1,1
    8000413c:	0007851b          	sext.w	a0,a5
    80004140:	00f4a023          	sw	a5,0(s1)
    80004144:	0004a823          	sw	zero,16(s1)
    80004148:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000414c:	00251513          	slli	a0,a0,0x2
    80004150:	ffffd097          	auipc	ra,0xffffd
    80004154:	014080e7          	jalr	20(ra) # 80001164 <_Z9mem_allocm>
    80004158:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000415c:	00000593          	li	a1,0
    80004160:	02048513          	addi	a0,s1,32
    80004164:	ffffd097          	auipc	ra,0xffffd
    80004168:	1ac080e7          	jalr	428(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&spaceAvailable, _cap);
    8000416c:	00090593          	mv	a1,s2
    80004170:	01848513          	addi	a0,s1,24
    80004174:	ffffd097          	auipc	ra,0xffffd
    80004178:	19c080e7          	jalr	412(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexHead, 1);
    8000417c:	00100593          	li	a1,1
    80004180:	02848513          	addi	a0,s1,40
    80004184:	ffffd097          	auipc	ra,0xffffd
    80004188:	18c080e7          	jalr	396(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexTail, 1);
    8000418c:	00100593          	li	a1,1
    80004190:	03048513          	addi	a0,s1,48
    80004194:	ffffd097          	auipc	ra,0xffffd
    80004198:	17c080e7          	jalr	380(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
}
    8000419c:	01813083          	ld	ra,24(sp)
    800041a0:	01013403          	ld	s0,16(sp)
    800041a4:	00813483          	ld	s1,8(sp)
    800041a8:	00013903          	ld	s2,0(sp)
    800041ac:	02010113          	addi	sp,sp,32
    800041b0:	00008067          	ret

00000000800041b4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800041b4:	fe010113          	addi	sp,sp,-32
    800041b8:	00113c23          	sd	ra,24(sp)
    800041bc:	00813823          	sd	s0,16(sp)
    800041c0:	00913423          	sd	s1,8(sp)
    800041c4:	01213023          	sd	s2,0(sp)
    800041c8:	02010413          	addi	s0,sp,32
    800041cc:	00050493          	mv	s1,a0
    800041d0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800041d4:	01853503          	ld	a0,24(a0)
    800041d8:	ffffd097          	auipc	ra,0xffffd
    800041dc:	19c080e7          	jalr	412(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexTail);
    800041e0:	0304b503          	ld	a0,48(s1)
    800041e4:	ffffd097          	auipc	ra,0xffffd
    800041e8:	190080e7          	jalr	400(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    buffer[tail] = val;
    800041ec:	0084b783          	ld	a5,8(s1)
    800041f0:	0144a703          	lw	a4,20(s1)
    800041f4:	00271713          	slli	a4,a4,0x2
    800041f8:	00e787b3          	add	a5,a5,a4
    800041fc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004200:	0144a783          	lw	a5,20(s1)
    80004204:	0017879b          	addiw	a5,a5,1
    80004208:	0004a703          	lw	a4,0(s1)
    8000420c:	02e7e7bb          	remw	a5,a5,a4
    80004210:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004214:	0304b503          	ld	a0,48(s1)
    80004218:	ffffd097          	auipc	ra,0xffffd
    8000421c:	188080e7          	jalr	392(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    sem_signal(itemAvailable);
    80004220:	0204b503          	ld	a0,32(s1)
    80004224:	ffffd097          	auipc	ra,0xffffd
    80004228:	17c080e7          	jalr	380(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

}
    8000422c:	01813083          	ld	ra,24(sp)
    80004230:	01013403          	ld	s0,16(sp)
    80004234:	00813483          	ld	s1,8(sp)
    80004238:	00013903          	ld	s2,0(sp)
    8000423c:	02010113          	addi	sp,sp,32
    80004240:	00008067          	ret

0000000080004244 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004244:	fe010113          	addi	sp,sp,-32
    80004248:	00113c23          	sd	ra,24(sp)
    8000424c:	00813823          	sd	s0,16(sp)
    80004250:	00913423          	sd	s1,8(sp)
    80004254:	01213023          	sd	s2,0(sp)
    80004258:	02010413          	addi	s0,sp,32
    8000425c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004260:	02053503          	ld	a0,32(a0)
    80004264:	ffffd097          	auipc	ra,0xffffd
    80004268:	110080e7          	jalr	272(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexHead);
    8000426c:	0284b503          	ld	a0,40(s1)
    80004270:	ffffd097          	auipc	ra,0xffffd
    80004274:	104080e7          	jalr	260(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    int ret = buffer[head];
    80004278:	0084b703          	ld	a4,8(s1)
    8000427c:	0104a783          	lw	a5,16(s1)
    80004280:	00279693          	slli	a3,a5,0x2
    80004284:	00d70733          	add	a4,a4,a3
    80004288:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000428c:	0017879b          	addiw	a5,a5,1
    80004290:	0004a703          	lw	a4,0(s1)
    80004294:	02e7e7bb          	remw	a5,a5,a4
    80004298:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000429c:	0284b503          	ld	a0,40(s1)
    800042a0:	ffffd097          	auipc	ra,0xffffd
    800042a4:	100080e7          	jalr	256(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    sem_signal(spaceAvailable);
    800042a8:	0184b503          	ld	a0,24(s1)
    800042ac:	ffffd097          	auipc	ra,0xffffd
    800042b0:	0f4080e7          	jalr	244(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    800042b4:	00090513          	mv	a0,s2
    800042b8:	01813083          	ld	ra,24(sp)
    800042bc:	01013403          	ld	s0,16(sp)
    800042c0:	00813483          	ld	s1,8(sp)
    800042c4:	00013903          	ld	s2,0(sp)
    800042c8:	02010113          	addi	sp,sp,32
    800042cc:	00008067          	ret

00000000800042d0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800042d0:	fe010113          	addi	sp,sp,-32
    800042d4:	00113c23          	sd	ra,24(sp)
    800042d8:	00813823          	sd	s0,16(sp)
    800042dc:	00913423          	sd	s1,8(sp)
    800042e0:	01213023          	sd	s2,0(sp)
    800042e4:	02010413          	addi	s0,sp,32
    800042e8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800042ec:	02853503          	ld	a0,40(a0)
    800042f0:	ffffd097          	auipc	ra,0xffffd
    800042f4:	084080e7          	jalr	132(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    sem_wait(mutexTail);
    800042f8:	0304b503          	ld	a0,48(s1)
    800042fc:	ffffd097          	auipc	ra,0xffffd
    80004300:	078080e7          	jalr	120(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    if (tail >= head) {
    80004304:	0144a783          	lw	a5,20(s1)
    80004308:	0104a903          	lw	s2,16(s1)
    8000430c:	0327ce63          	blt	a5,s2,80004348 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004310:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004314:	0304b503          	ld	a0,48(s1)
    80004318:	ffffd097          	auipc	ra,0xffffd
    8000431c:	088080e7          	jalr	136(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
    sem_signal(mutexHead);
    80004320:	0284b503          	ld	a0,40(s1)
    80004324:	ffffd097          	auipc	ra,0xffffd
    80004328:	07c080e7          	jalr	124(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    8000432c:	00090513          	mv	a0,s2
    80004330:	01813083          	ld	ra,24(sp)
    80004334:	01013403          	ld	s0,16(sp)
    80004338:	00813483          	ld	s1,8(sp)
    8000433c:	00013903          	ld	s2,0(sp)
    80004340:	02010113          	addi	sp,sp,32
    80004344:	00008067          	ret
        ret = cap - head + tail;
    80004348:	0004a703          	lw	a4,0(s1)
    8000434c:	4127093b          	subw	s2,a4,s2
    80004350:	00f9093b          	addw	s2,s2,a5
    80004354:	fc1ff06f          	j	80004314 <_ZN6Buffer6getCntEv+0x44>

0000000080004358 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004358:	fe010113          	addi	sp,sp,-32
    8000435c:	00113c23          	sd	ra,24(sp)
    80004360:	00813823          	sd	s0,16(sp)
    80004364:	00913423          	sd	s1,8(sp)
    80004368:	02010413          	addi	s0,sp,32
    8000436c:	00050493          	mv	s1,a0
    putc('\n');
    80004370:	00a00513          	li	a0,10
    80004374:	ffffd097          	auipc	ra,0xffffd
    80004378:	080080e7          	jalr	128(ra) # 800013f4 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000437c:	00003517          	auipc	a0,0x3
    80004380:	f7450513          	addi	a0,a0,-140 # 800072f0 <CONSOLE_STATUS+0x2e0>
    80004384:	fffff097          	auipc	ra,0xfffff
    80004388:	4a4080e7          	jalr	1188(ra) # 80003828 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000438c:	00048513          	mv	a0,s1
    80004390:	00000097          	auipc	ra,0x0
    80004394:	f40080e7          	jalr	-192(ra) # 800042d0 <_ZN6Buffer6getCntEv>
    80004398:	02a05c63          	blez	a0,800043d0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000439c:	0084b783          	ld	a5,8(s1)
    800043a0:	0104a703          	lw	a4,16(s1)
    800043a4:	00271713          	slli	a4,a4,0x2
    800043a8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800043ac:	0007c503          	lbu	a0,0(a5)
    800043b0:	ffffd097          	auipc	ra,0xffffd
    800043b4:	044080e7          	jalr	68(ra) # 800013f4 <_Z4putcc>
        head = (head + 1) % cap;
    800043b8:	0104a783          	lw	a5,16(s1)
    800043bc:	0017879b          	addiw	a5,a5,1
    800043c0:	0004a703          	lw	a4,0(s1)
    800043c4:	02e7e7bb          	remw	a5,a5,a4
    800043c8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800043cc:	fc1ff06f          	j	8000438c <_ZN6BufferD1Ev+0x34>
    putc('!');
    800043d0:	02100513          	li	a0,33
    800043d4:	ffffd097          	auipc	ra,0xffffd
    800043d8:	020080e7          	jalr	32(ra) # 800013f4 <_Z4putcc>
    putc('\n');
    800043dc:	00a00513          	li	a0,10
    800043e0:	ffffd097          	auipc	ra,0xffffd
    800043e4:	014080e7          	jalr	20(ra) # 800013f4 <_Z4putcc>
    mem_free(buffer);
    800043e8:	0084b503          	ld	a0,8(s1)
    800043ec:	ffffd097          	auipc	ra,0xffffd
    800043f0:	dbc080e7          	jalr	-580(ra) # 800011a8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800043f4:	0204b503          	ld	a0,32(s1)
    800043f8:	ffffd097          	auipc	ra,0xffffd
    800043fc:	f50080e7          	jalr	-176(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(spaceAvailable);
    80004400:	0184b503          	ld	a0,24(s1)
    80004404:	ffffd097          	auipc	ra,0xffffd
    80004408:	f44080e7          	jalr	-188(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexTail);
    8000440c:	0304b503          	ld	a0,48(s1)
    80004410:	ffffd097          	auipc	ra,0xffffd
    80004414:	f38080e7          	jalr	-200(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexHead);
    80004418:	0284b503          	ld	a0,40(s1)
    8000441c:	ffffd097          	auipc	ra,0xffffd
    80004420:	f2c080e7          	jalr	-212(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
}
    80004424:	01813083          	ld	ra,24(sp)
    80004428:	01013403          	ld	s0,16(sp)
    8000442c:	00813483          	ld	s1,8(sp)
    80004430:	02010113          	addi	sp,sp,32
    80004434:	00008067          	ret

0000000080004438 <start>:
    80004438:	ff010113          	addi	sp,sp,-16
    8000443c:	00813423          	sd	s0,8(sp)
    80004440:	01010413          	addi	s0,sp,16
    80004444:	300027f3          	csrr	a5,mstatus
    80004448:	ffffe737          	lui	a4,0xffffe
    8000444c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff4b4f>
    80004450:	00e7f7b3          	and	a5,a5,a4
    80004454:	00001737          	lui	a4,0x1
    80004458:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000445c:	00e7e7b3          	or	a5,a5,a4
    80004460:	30079073          	csrw	mstatus,a5
    80004464:	00000797          	auipc	a5,0x0
    80004468:	16078793          	addi	a5,a5,352 # 800045c4 <system_main>
    8000446c:	34179073          	csrw	mepc,a5
    80004470:	00000793          	li	a5,0
    80004474:	18079073          	csrw	satp,a5
    80004478:	000107b7          	lui	a5,0x10
    8000447c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004480:	30279073          	csrw	medeleg,a5
    80004484:	30379073          	csrw	mideleg,a5
    80004488:	104027f3          	csrr	a5,sie
    8000448c:	2227e793          	ori	a5,a5,546
    80004490:	10479073          	csrw	sie,a5
    80004494:	fff00793          	li	a5,-1
    80004498:	00a7d793          	srli	a5,a5,0xa
    8000449c:	3b079073          	csrw	pmpaddr0,a5
    800044a0:	00f00793          	li	a5,15
    800044a4:	3a079073          	csrw	pmpcfg0,a5
    800044a8:	f14027f3          	csrr	a5,mhartid
    800044ac:	0200c737          	lui	a4,0x200c
    800044b0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800044b4:	0007869b          	sext.w	a3,a5
    800044b8:	00269713          	slli	a4,a3,0x2
    800044bc:	000f4637          	lui	a2,0xf4
    800044c0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800044c4:	00d70733          	add	a4,a4,a3
    800044c8:	0037979b          	slliw	a5,a5,0x3
    800044cc:	020046b7          	lui	a3,0x2004
    800044d0:	00d787b3          	add	a5,a5,a3
    800044d4:	00c585b3          	add	a1,a1,a2
    800044d8:	00371693          	slli	a3,a4,0x3
    800044dc:	00004717          	auipc	a4,0x4
    800044e0:	57470713          	addi	a4,a4,1396 # 80008a50 <timer_scratch>
    800044e4:	00b7b023          	sd	a1,0(a5)
    800044e8:	00d70733          	add	a4,a4,a3
    800044ec:	00f73c23          	sd	a5,24(a4)
    800044f0:	02c73023          	sd	a2,32(a4)
    800044f4:	34071073          	csrw	mscratch,a4
    800044f8:	00000797          	auipc	a5,0x0
    800044fc:	6e878793          	addi	a5,a5,1768 # 80004be0 <timervec>
    80004500:	30579073          	csrw	mtvec,a5
    80004504:	300027f3          	csrr	a5,mstatus
    80004508:	0087e793          	ori	a5,a5,8
    8000450c:	30079073          	csrw	mstatus,a5
    80004510:	304027f3          	csrr	a5,mie
    80004514:	0807e793          	ori	a5,a5,128
    80004518:	30479073          	csrw	mie,a5
    8000451c:	f14027f3          	csrr	a5,mhartid
    80004520:	0007879b          	sext.w	a5,a5
    80004524:	00078213          	mv	tp,a5
    80004528:	30200073          	mret
    8000452c:	00813403          	ld	s0,8(sp)
    80004530:	01010113          	addi	sp,sp,16
    80004534:	00008067          	ret

0000000080004538 <timerinit>:
    80004538:	ff010113          	addi	sp,sp,-16
    8000453c:	00813423          	sd	s0,8(sp)
    80004540:	01010413          	addi	s0,sp,16
    80004544:	f14027f3          	csrr	a5,mhartid
    80004548:	0200c737          	lui	a4,0x200c
    8000454c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004550:	0007869b          	sext.w	a3,a5
    80004554:	00269713          	slli	a4,a3,0x2
    80004558:	000f4637          	lui	a2,0xf4
    8000455c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004560:	00d70733          	add	a4,a4,a3
    80004564:	0037979b          	slliw	a5,a5,0x3
    80004568:	020046b7          	lui	a3,0x2004
    8000456c:	00d787b3          	add	a5,a5,a3
    80004570:	00c585b3          	add	a1,a1,a2
    80004574:	00371693          	slli	a3,a4,0x3
    80004578:	00004717          	auipc	a4,0x4
    8000457c:	4d870713          	addi	a4,a4,1240 # 80008a50 <timer_scratch>
    80004580:	00b7b023          	sd	a1,0(a5)
    80004584:	00d70733          	add	a4,a4,a3
    80004588:	00f73c23          	sd	a5,24(a4)
    8000458c:	02c73023          	sd	a2,32(a4)
    80004590:	34071073          	csrw	mscratch,a4
    80004594:	00000797          	auipc	a5,0x0
    80004598:	64c78793          	addi	a5,a5,1612 # 80004be0 <timervec>
    8000459c:	30579073          	csrw	mtvec,a5
    800045a0:	300027f3          	csrr	a5,mstatus
    800045a4:	0087e793          	ori	a5,a5,8
    800045a8:	30079073          	csrw	mstatus,a5
    800045ac:	304027f3          	csrr	a5,mie
    800045b0:	0807e793          	ori	a5,a5,128
    800045b4:	30479073          	csrw	mie,a5
    800045b8:	00813403          	ld	s0,8(sp)
    800045bc:	01010113          	addi	sp,sp,16
    800045c0:	00008067          	ret

00000000800045c4 <system_main>:
    800045c4:	fe010113          	addi	sp,sp,-32
    800045c8:	00813823          	sd	s0,16(sp)
    800045cc:	00913423          	sd	s1,8(sp)
    800045d0:	00113c23          	sd	ra,24(sp)
    800045d4:	02010413          	addi	s0,sp,32
    800045d8:	00000097          	auipc	ra,0x0
    800045dc:	0c4080e7          	jalr	196(ra) # 8000469c <cpuid>
    800045e0:	00004497          	auipc	s1,0x4
    800045e4:	3e048493          	addi	s1,s1,992 # 800089c0 <started>
    800045e8:	02050263          	beqz	a0,8000460c <system_main+0x48>
    800045ec:	0004a783          	lw	a5,0(s1)
    800045f0:	0007879b          	sext.w	a5,a5
    800045f4:	fe078ce3          	beqz	a5,800045ec <system_main+0x28>
    800045f8:	0ff0000f          	fence
    800045fc:	00003517          	auipc	a0,0x3
    80004600:	d3c50513          	addi	a0,a0,-708 # 80007338 <CONSOLE_STATUS+0x328>
    80004604:	00001097          	auipc	ra,0x1
    80004608:	a78080e7          	jalr	-1416(ra) # 8000507c <panic>
    8000460c:	00001097          	auipc	ra,0x1
    80004610:	9cc080e7          	jalr	-1588(ra) # 80004fd8 <consoleinit>
    80004614:	00001097          	auipc	ra,0x1
    80004618:	158080e7          	jalr	344(ra) # 8000576c <printfinit>
    8000461c:	00003517          	auipc	a0,0x3
    80004620:	b4c50513          	addi	a0,a0,-1204 # 80007168 <CONSOLE_STATUS+0x158>
    80004624:	00001097          	auipc	ra,0x1
    80004628:	ab4080e7          	jalr	-1356(ra) # 800050d8 <__printf>
    8000462c:	00003517          	auipc	a0,0x3
    80004630:	cdc50513          	addi	a0,a0,-804 # 80007308 <CONSOLE_STATUS+0x2f8>
    80004634:	00001097          	auipc	ra,0x1
    80004638:	aa4080e7          	jalr	-1372(ra) # 800050d8 <__printf>
    8000463c:	00003517          	auipc	a0,0x3
    80004640:	b2c50513          	addi	a0,a0,-1236 # 80007168 <CONSOLE_STATUS+0x158>
    80004644:	00001097          	auipc	ra,0x1
    80004648:	a94080e7          	jalr	-1388(ra) # 800050d8 <__printf>
    8000464c:	00001097          	auipc	ra,0x1
    80004650:	4ac080e7          	jalr	1196(ra) # 80005af8 <kinit>
    80004654:	00000097          	auipc	ra,0x0
    80004658:	148080e7          	jalr	328(ra) # 8000479c <trapinit>
    8000465c:	00000097          	auipc	ra,0x0
    80004660:	16c080e7          	jalr	364(ra) # 800047c8 <trapinithart>
    80004664:	00000097          	auipc	ra,0x0
    80004668:	5bc080e7          	jalr	1468(ra) # 80004c20 <plicinit>
    8000466c:	00000097          	auipc	ra,0x0
    80004670:	5dc080e7          	jalr	1500(ra) # 80004c48 <plicinithart>
    80004674:	00000097          	auipc	ra,0x0
    80004678:	078080e7          	jalr	120(ra) # 800046ec <userinit>
    8000467c:	0ff0000f          	fence
    80004680:	00100793          	li	a5,1
    80004684:	00003517          	auipc	a0,0x3
    80004688:	c9c50513          	addi	a0,a0,-868 # 80007320 <CONSOLE_STATUS+0x310>
    8000468c:	00f4a023          	sw	a5,0(s1)
    80004690:	00001097          	auipc	ra,0x1
    80004694:	a48080e7          	jalr	-1464(ra) # 800050d8 <__printf>
    80004698:	0000006f          	j	80004698 <system_main+0xd4>

000000008000469c <cpuid>:
    8000469c:	ff010113          	addi	sp,sp,-16
    800046a0:	00813423          	sd	s0,8(sp)
    800046a4:	01010413          	addi	s0,sp,16
    800046a8:	00020513          	mv	a0,tp
    800046ac:	00813403          	ld	s0,8(sp)
    800046b0:	0005051b          	sext.w	a0,a0
    800046b4:	01010113          	addi	sp,sp,16
    800046b8:	00008067          	ret

00000000800046bc <mycpu>:
    800046bc:	ff010113          	addi	sp,sp,-16
    800046c0:	00813423          	sd	s0,8(sp)
    800046c4:	01010413          	addi	s0,sp,16
    800046c8:	00020793          	mv	a5,tp
    800046cc:	00813403          	ld	s0,8(sp)
    800046d0:	0007879b          	sext.w	a5,a5
    800046d4:	00779793          	slli	a5,a5,0x7
    800046d8:	00005517          	auipc	a0,0x5
    800046dc:	3a850513          	addi	a0,a0,936 # 80009a80 <cpus>
    800046e0:	00f50533          	add	a0,a0,a5
    800046e4:	01010113          	addi	sp,sp,16
    800046e8:	00008067          	ret

00000000800046ec <userinit>:
    800046ec:	ff010113          	addi	sp,sp,-16
    800046f0:	00813423          	sd	s0,8(sp)
    800046f4:	01010413          	addi	s0,sp,16
    800046f8:	00813403          	ld	s0,8(sp)
    800046fc:	01010113          	addi	sp,sp,16
    80004700:	ffffd317          	auipc	t1,0xffffd
    80004704:	1b030067          	jr	432(t1) # 800018b0 <main>

0000000080004708 <either_copyout>:
    80004708:	ff010113          	addi	sp,sp,-16
    8000470c:	00813023          	sd	s0,0(sp)
    80004710:	00113423          	sd	ra,8(sp)
    80004714:	01010413          	addi	s0,sp,16
    80004718:	02051663          	bnez	a0,80004744 <either_copyout+0x3c>
    8000471c:	00058513          	mv	a0,a1
    80004720:	00060593          	mv	a1,a2
    80004724:	0006861b          	sext.w	a2,a3
    80004728:	00002097          	auipc	ra,0x2
    8000472c:	c5c080e7          	jalr	-932(ra) # 80006384 <__memmove>
    80004730:	00813083          	ld	ra,8(sp)
    80004734:	00013403          	ld	s0,0(sp)
    80004738:	00000513          	li	a0,0
    8000473c:	01010113          	addi	sp,sp,16
    80004740:	00008067          	ret
    80004744:	00003517          	auipc	a0,0x3
    80004748:	c1c50513          	addi	a0,a0,-996 # 80007360 <CONSOLE_STATUS+0x350>
    8000474c:	00001097          	auipc	ra,0x1
    80004750:	930080e7          	jalr	-1744(ra) # 8000507c <panic>

0000000080004754 <either_copyin>:
    80004754:	ff010113          	addi	sp,sp,-16
    80004758:	00813023          	sd	s0,0(sp)
    8000475c:	00113423          	sd	ra,8(sp)
    80004760:	01010413          	addi	s0,sp,16
    80004764:	02059463          	bnez	a1,8000478c <either_copyin+0x38>
    80004768:	00060593          	mv	a1,a2
    8000476c:	0006861b          	sext.w	a2,a3
    80004770:	00002097          	auipc	ra,0x2
    80004774:	c14080e7          	jalr	-1004(ra) # 80006384 <__memmove>
    80004778:	00813083          	ld	ra,8(sp)
    8000477c:	00013403          	ld	s0,0(sp)
    80004780:	00000513          	li	a0,0
    80004784:	01010113          	addi	sp,sp,16
    80004788:	00008067          	ret
    8000478c:	00003517          	auipc	a0,0x3
    80004790:	bfc50513          	addi	a0,a0,-1028 # 80007388 <CONSOLE_STATUS+0x378>
    80004794:	00001097          	auipc	ra,0x1
    80004798:	8e8080e7          	jalr	-1816(ra) # 8000507c <panic>

000000008000479c <trapinit>:
    8000479c:	ff010113          	addi	sp,sp,-16
    800047a0:	00813423          	sd	s0,8(sp)
    800047a4:	01010413          	addi	s0,sp,16
    800047a8:	00813403          	ld	s0,8(sp)
    800047ac:	00003597          	auipc	a1,0x3
    800047b0:	c0458593          	addi	a1,a1,-1020 # 800073b0 <CONSOLE_STATUS+0x3a0>
    800047b4:	00005517          	auipc	a0,0x5
    800047b8:	34c50513          	addi	a0,a0,844 # 80009b00 <tickslock>
    800047bc:	01010113          	addi	sp,sp,16
    800047c0:	00001317          	auipc	t1,0x1
    800047c4:	5c830067          	jr	1480(t1) # 80005d88 <initlock>

00000000800047c8 <trapinithart>:
    800047c8:	ff010113          	addi	sp,sp,-16
    800047cc:	00813423          	sd	s0,8(sp)
    800047d0:	01010413          	addi	s0,sp,16
    800047d4:	00000797          	auipc	a5,0x0
    800047d8:	2fc78793          	addi	a5,a5,764 # 80004ad0 <kernelvec>
    800047dc:	10579073          	csrw	stvec,a5
    800047e0:	00813403          	ld	s0,8(sp)
    800047e4:	01010113          	addi	sp,sp,16
    800047e8:	00008067          	ret

00000000800047ec <usertrap>:
    800047ec:	ff010113          	addi	sp,sp,-16
    800047f0:	00813423          	sd	s0,8(sp)
    800047f4:	01010413          	addi	s0,sp,16
    800047f8:	00813403          	ld	s0,8(sp)
    800047fc:	01010113          	addi	sp,sp,16
    80004800:	00008067          	ret

0000000080004804 <usertrapret>:
    80004804:	ff010113          	addi	sp,sp,-16
    80004808:	00813423          	sd	s0,8(sp)
    8000480c:	01010413          	addi	s0,sp,16
    80004810:	00813403          	ld	s0,8(sp)
    80004814:	01010113          	addi	sp,sp,16
    80004818:	00008067          	ret

000000008000481c <kerneltrap>:
    8000481c:	fe010113          	addi	sp,sp,-32
    80004820:	00813823          	sd	s0,16(sp)
    80004824:	00113c23          	sd	ra,24(sp)
    80004828:	00913423          	sd	s1,8(sp)
    8000482c:	02010413          	addi	s0,sp,32
    80004830:	142025f3          	csrr	a1,scause
    80004834:	100027f3          	csrr	a5,sstatus
    80004838:	0027f793          	andi	a5,a5,2
    8000483c:	10079c63          	bnez	a5,80004954 <kerneltrap+0x138>
    80004840:	142027f3          	csrr	a5,scause
    80004844:	0207ce63          	bltz	a5,80004880 <kerneltrap+0x64>
    80004848:	00003517          	auipc	a0,0x3
    8000484c:	bb050513          	addi	a0,a0,-1104 # 800073f8 <CONSOLE_STATUS+0x3e8>
    80004850:	00001097          	auipc	ra,0x1
    80004854:	888080e7          	jalr	-1912(ra) # 800050d8 <__printf>
    80004858:	141025f3          	csrr	a1,sepc
    8000485c:	14302673          	csrr	a2,stval
    80004860:	00003517          	auipc	a0,0x3
    80004864:	ba850513          	addi	a0,a0,-1112 # 80007408 <CONSOLE_STATUS+0x3f8>
    80004868:	00001097          	auipc	ra,0x1
    8000486c:	870080e7          	jalr	-1936(ra) # 800050d8 <__printf>
    80004870:	00003517          	auipc	a0,0x3
    80004874:	bb050513          	addi	a0,a0,-1104 # 80007420 <CONSOLE_STATUS+0x410>
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	804080e7          	jalr	-2044(ra) # 8000507c <panic>
    80004880:	0ff7f713          	andi	a4,a5,255
    80004884:	00900693          	li	a3,9
    80004888:	04d70063          	beq	a4,a3,800048c8 <kerneltrap+0xac>
    8000488c:	fff00713          	li	a4,-1
    80004890:	03f71713          	slli	a4,a4,0x3f
    80004894:	00170713          	addi	a4,a4,1
    80004898:	fae798e3          	bne	a5,a4,80004848 <kerneltrap+0x2c>
    8000489c:	00000097          	auipc	ra,0x0
    800048a0:	e00080e7          	jalr	-512(ra) # 8000469c <cpuid>
    800048a4:	06050663          	beqz	a0,80004910 <kerneltrap+0xf4>
    800048a8:	144027f3          	csrr	a5,sip
    800048ac:	ffd7f793          	andi	a5,a5,-3
    800048b0:	14479073          	csrw	sip,a5
    800048b4:	01813083          	ld	ra,24(sp)
    800048b8:	01013403          	ld	s0,16(sp)
    800048bc:	00813483          	ld	s1,8(sp)
    800048c0:	02010113          	addi	sp,sp,32
    800048c4:	00008067          	ret
    800048c8:	00000097          	auipc	ra,0x0
    800048cc:	3cc080e7          	jalr	972(ra) # 80004c94 <plic_claim>
    800048d0:	00a00793          	li	a5,10
    800048d4:	00050493          	mv	s1,a0
    800048d8:	06f50863          	beq	a0,a5,80004948 <kerneltrap+0x12c>
    800048dc:	fc050ce3          	beqz	a0,800048b4 <kerneltrap+0x98>
    800048e0:	00050593          	mv	a1,a0
    800048e4:	00003517          	auipc	a0,0x3
    800048e8:	af450513          	addi	a0,a0,-1292 # 800073d8 <CONSOLE_STATUS+0x3c8>
    800048ec:	00000097          	auipc	ra,0x0
    800048f0:	7ec080e7          	jalr	2028(ra) # 800050d8 <__printf>
    800048f4:	01013403          	ld	s0,16(sp)
    800048f8:	01813083          	ld	ra,24(sp)
    800048fc:	00048513          	mv	a0,s1
    80004900:	00813483          	ld	s1,8(sp)
    80004904:	02010113          	addi	sp,sp,32
    80004908:	00000317          	auipc	t1,0x0
    8000490c:	3c430067          	jr	964(t1) # 80004ccc <plic_complete>
    80004910:	00005517          	auipc	a0,0x5
    80004914:	1f050513          	addi	a0,a0,496 # 80009b00 <tickslock>
    80004918:	00001097          	auipc	ra,0x1
    8000491c:	494080e7          	jalr	1172(ra) # 80005dac <acquire>
    80004920:	00004717          	auipc	a4,0x4
    80004924:	0a470713          	addi	a4,a4,164 # 800089c4 <ticks>
    80004928:	00072783          	lw	a5,0(a4)
    8000492c:	00005517          	auipc	a0,0x5
    80004930:	1d450513          	addi	a0,a0,468 # 80009b00 <tickslock>
    80004934:	0017879b          	addiw	a5,a5,1
    80004938:	00f72023          	sw	a5,0(a4)
    8000493c:	00001097          	auipc	ra,0x1
    80004940:	53c080e7          	jalr	1340(ra) # 80005e78 <release>
    80004944:	f65ff06f          	j	800048a8 <kerneltrap+0x8c>
    80004948:	00001097          	auipc	ra,0x1
    8000494c:	098080e7          	jalr	152(ra) # 800059e0 <uartintr>
    80004950:	fa5ff06f          	j	800048f4 <kerneltrap+0xd8>
    80004954:	00003517          	auipc	a0,0x3
    80004958:	a6450513          	addi	a0,a0,-1436 # 800073b8 <CONSOLE_STATUS+0x3a8>
    8000495c:	00000097          	auipc	ra,0x0
    80004960:	720080e7          	jalr	1824(ra) # 8000507c <panic>

0000000080004964 <clockintr>:
    80004964:	fe010113          	addi	sp,sp,-32
    80004968:	00813823          	sd	s0,16(sp)
    8000496c:	00913423          	sd	s1,8(sp)
    80004970:	00113c23          	sd	ra,24(sp)
    80004974:	02010413          	addi	s0,sp,32
    80004978:	00005497          	auipc	s1,0x5
    8000497c:	18848493          	addi	s1,s1,392 # 80009b00 <tickslock>
    80004980:	00048513          	mv	a0,s1
    80004984:	00001097          	auipc	ra,0x1
    80004988:	428080e7          	jalr	1064(ra) # 80005dac <acquire>
    8000498c:	00004717          	auipc	a4,0x4
    80004990:	03870713          	addi	a4,a4,56 # 800089c4 <ticks>
    80004994:	00072783          	lw	a5,0(a4)
    80004998:	01013403          	ld	s0,16(sp)
    8000499c:	01813083          	ld	ra,24(sp)
    800049a0:	00048513          	mv	a0,s1
    800049a4:	0017879b          	addiw	a5,a5,1
    800049a8:	00813483          	ld	s1,8(sp)
    800049ac:	00f72023          	sw	a5,0(a4)
    800049b0:	02010113          	addi	sp,sp,32
    800049b4:	00001317          	auipc	t1,0x1
    800049b8:	4c430067          	jr	1220(t1) # 80005e78 <release>

00000000800049bc <devintr>:
    800049bc:	142027f3          	csrr	a5,scause
    800049c0:	00000513          	li	a0,0
    800049c4:	0007c463          	bltz	a5,800049cc <devintr+0x10>
    800049c8:	00008067          	ret
    800049cc:	fe010113          	addi	sp,sp,-32
    800049d0:	00813823          	sd	s0,16(sp)
    800049d4:	00113c23          	sd	ra,24(sp)
    800049d8:	00913423          	sd	s1,8(sp)
    800049dc:	02010413          	addi	s0,sp,32
    800049e0:	0ff7f713          	andi	a4,a5,255
    800049e4:	00900693          	li	a3,9
    800049e8:	04d70c63          	beq	a4,a3,80004a40 <devintr+0x84>
    800049ec:	fff00713          	li	a4,-1
    800049f0:	03f71713          	slli	a4,a4,0x3f
    800049f4:	00170713          	addi	a4,a4,1
    800049f8:	00e78c63          	beq	a5,a4,80004a10 <devintr+0x54>
    800049fc:	01813083          	ld	ra,24(sp)
    80004a00:	01013403          	ld	s0,16(sp)
    80004a04:	00813483          	ld	s1,8(sp)
    80004a08:	02010113          	addi	sp,sp,32
    80004a0c:	00008067          	ret
    80004a10:	00000097          	auipc	ra,0x0
    80004a14:	c8c080e7          	jalr	-884(ra) # 8000469c <cpuid>
    80004a18:	06050663          	beqz	a0,80004a84 <devintr+0xc8>
    80004a1c:	144027f3          	csrr	a5,sip
    80004a20:	ffd7f793          	andi	a5,a5,-3
    80004a24:	14479073          	csrw	sip,a5
    80004a28:	01813083          	ld	ra,24(sp)
    80004a2c:	01013403          	ld	s0,16(sp)
    80004a30:	00813483          	ld	s1,8(sp)
    80004a34:	00200513          	li	a0,2
    80004a38:	02010113          	addi	sp,sp,32
    80004a3c:	00008067          	ret
    80004a40:	00000097          	auipc	ra,0x0
    80004a44:	254080e7          	jalr	596(ra) # 80004c94 <plic_claim>
    80004a48:	00a00793          	li	a5,10
    80004a4c:	00050493          	mv	s1,a0
    80004a50:	06f50663          	beq	a0,a5,80004abc <devintr+0x100>
    80004a54:	00100513          	li	a0,1
    80004a58:	fa0482e3          	beqz	s1,800049fc <devintr+0x40>
    80004a5c:	00048593          	mv	a1,s1
    80004a60:	00003517          	auipc	a0,0x3
    80004a64:	97850513          	addi	a0,a0,-1672 # 800073d8 <CONSOLE_STATUS+0x3c8>
    80004a68:	00000097          	auipc	ra,0x0
    80004a6c:	670080e7          	jalr	1648(ra) # 800050d8 <__printf>
    80004a70:	00048513          	mv	a0,s1
    80004a74:	00000097          	auipc	ra,0x0
    80004a78:	258080e7          	jalr	600(ra) # 80004ccc <plic_complete>
    80004a7c:	00100513          	li	a0,1
    80004a80:	f7dff06f          	j	800049fc <devintr+0x40>
    80004a84:	00005517          	auipc	a0,0x5
    80004a88:	07c50513          	addi	a0,a0,124 # 80009b00 <tickslock>
    80004a8c:	00001097          	auipc	ra,0x1
    80004a90:	320080e7          	jalr	800(ra) # 80005dac <acquire>
    80004a94:	00004717          	auipc	a4,0x4
    80004a98:	f3070713          	addi	a4,a4,-208 # 800089c4 <ticks>
    80004a9c:	00072783          	lw	a5,0(a4)
    80004aa0:	00005517          	auipc	a0,0x5
    80004aa4:	06050513          	addi	a0,a0,96 # 80009b00 <tickslock>
    80004aa8:	0017879b          	addiw	a5,a5,1
    80004aac:	00f72023          	sw	a5,0(a4)
    80004ab0:	00001097          	auipc	ra,0x1
    80004ab4:	3c8080e7          	jalr	968(ra) # 80005e78 <release>
    80004ab8:	f65ff06f          	j	80004a1c <devintr+0x60>
    80004abc:	00001097          	auipc	ra,0x1
    80004ac0:	f24080e7          	jalr	-220(ra) # 800059e0 <uartintr>
    80004ac4:	fadff06f          	j	80004a70 <devintr+0xb4>
	...

0000000080004ad0 <kernelvec>:
    80004ad0:	f0010113          	addi	sp,sp,-256
    80004ad4:	00113023          	sd	ra,0(sp)
    80004ad8:	00213423          	sd	sp,8(sp)
    80004adc:	00313823          	sd	gp,16(sp)
    80004ae0:	00413c23          	sd	tp,24(sp)
    80004ae4:	02513023          	sd	t0,32(sp)
    80004ae8:	02613423          	sd	t1,40(sp)
    80004aec:	02713823          	sd	t2,48(sp)
    80004af0:	02813c23          	sd	s0,56(sp)
    80004af4:	04913023          	sd	s1,64(sp)
    80004af8:	04a13423          	sd	a0,72(sp)
    80004afc:	04b13823          	sd	a1,80(sp)
    80004b00:	04c13c23          	sd	a2,88(sp)
    80004b04:	06d13023          	sd	a3,96(sp)
    80004b08:	06e13423          	sd	a4,104(sp)
    80004b0c:	06f13823          	sd	a5,112(sp)
    80004b10:	07013c23          	sd	a6,120(sp)
    80004b14:	09113023          	sd	a7,128(sp)
    80004b18:	09213423          	sd	s2,136(sp)
    80004b1c:	09313823          	sd	s3,144(sp)
    80004b20:	09413c23          	sd	s4,152(sp)
    80004b24:	0b513023          	sd	s5,160(sp)
    80004b28:	0b613423          	sd	s6,168(sp)
    80004b2c:	0b713823          	sd	s7,176(sp)
    80004b30:	0b813c23          	sd	s8,184(sp)
    80004b34:	0d913023          	sd	s9,192(sp)
    80004b38:	0da13423          	sd	s10,200(sp)
    80004b3c:	0db13823          	sd	s11,208(sp)
    80004b40:	0dc13c23          	sd	t3,216(sp)
    80004b44:	0fd13023          	sd	t4,224(sp)
    80004b48:	0fe13423          	sd	t5,232(sp)
    80004b4c:	0ff13823          	sd	t6,240(sp)
    80004b50:	ccdff0ef          	jal	ra,8000481c <kerneltrap>
    80004b54:	00013083          	ld	ra,0(sp)
    80004b58:	00813103          	ld	sp,8(sp)
    80004b5c:	01013183          	ld	gp,16(sp)
    80004b60:	02013283          	ld	t0,32(sp)
    80004b64:	02813303          	ld	t1,40(sp)
    80004b68:	03013383          	ld	t2,48(sp)
    80004b6c:	03813403          	ld	s0,56(sp)
    80004b70:	04013483          	ld	s1,64(sp)
    80004b74:	04813503          	ld	a0,72(sp)
    80004b78:	05013583          	ld	a1,80(sp)
    80004b7c:	05813603          	ld	a2,88(sp)
    80004b80:	06013683          	ld	a3,96(sp)
    80004b84:	06813703          	ld	a4,104(sp)
    80004b88:	07013783          	ld	a5,112(sp)
    80004b8c:	07813803          	ld	a6,120(sp)
    80004b90:	08013883          	ld	a7,128(sp)
    80004b94:	08813903          	ld	s2,136(sp)
    80004b98:	09013983          	ld	s3,144(sp)
    80004b9c:	09813a03          	ld	s4,152(sp)
    80004ba0:	0a013a83          	ld	s5,160(sp)
    80004ba4:	0a813b03          	ld	s6,168(sp)
    80004ba8:	0b013b83          	ld	s7,176(sp)
    80004bac:	0b813c03          	ld	s8,184(sp)
    80004bb0:	0c013c83          	ld	s9,192(sp)
    80004bb4:	0c813d03          	ld	s10,200(sp)
    80004bb8:	0d013d83          	ld	s11,208(sp)
    80004bbc:	0d813e03          	ld	t3,216(sp)
    80004bc0:	0e013e83          	ld	t4,224(sp)
    80004bc4:	0e813f03          	ld	t5,232(sp)
    80004bc8:	0f013f83          	ld	t6,240(sp)
    80004bcc:	10010113          	addi	sp,sp,256
    80004bd0:	10200073          	sret
    80004bd4:	00000013          	nop
    80004bd8:	00000013          	nop
    80004bdc:	00000013          	nop

0000000080004be0 <timervec>:
    80004be0:	34051573          	csrrw	a0,mscratch,a0
    80004be4:	00b53023          	sd	a1,0(a0)
    80004be8:	00c53423          	sd	a2,8(a0)
    80004bec:	00d53823          	sd	a3,16(a0)
    80004bf0:	01853583          	ld	a1,24(a0)
    80004bf4:	02053603          	ld	a2,32(a0)
    80004bf8:	0005b683          	ld	a3,0(a1)
    80004bfc:	00c686b3          	add	a3,a3,a2
    80004c00:	00d5b023          	sd	a3,0(a1)
    80004c04:	00200593          	li	a1,2
    80004c08:	14459073          	csrw	sip,a1
    80004c0c:	01053683          	ld	a3,16(a0)
    80004c10:	00853603          	ld	a2,8(a0)
    80004c14:	00053583          	ld	a1,0(a0)
    80004c18:	34051573          	csrrw	a0,mscratch,a0
    80004c1c:	30200073          	mret

0000000080004c20 <plicinit>:
    80004c20:	ff010113          	addi	sp,sp,-16
    80004c24:	00813423          	sd	s0,8(sp)
    80004c28:	01010413          	addi	s0,sp,16
    80004c2c:	00813403          	ld	s0,8(sp)
    80004c30:	0c0007b7          	lui	a5,0xc000
    80004c34:	00100713          	li	a4,1
    80004c38:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80004c3c:	00e7a223          	sw	a4,4(a5)
    80004c40:	01010113          	addi	sp,sp,16
    80004c44:	00008067          	ret

0000000080004c48 <plicinithart>:
    80004c48:	ff010113          	addi	sp,sp,-16
    80004c4c:	00813023          	sd	s0,0(sp)
    80004c50:	00113423          	sd	ra,8(sp)
    80004c54:	01010413          	addi	s0,sp,16
    80004c58:	00000097          	auipc	ra,0x0
    80004c5c:	a44080e7          	jalr	-1468(ra) # 8000469c <cpuid>
    80004c60:	0085171b          	slliw	a4,a0,0x8
    80004c64:	0c0027b7          	lui	a5,0xc002
    80004c68:	00e787b3          	add	a5,a5,a4
    80004c6c:	40200713          	li	a4,1026
    80004c70:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004c74:	00813083          	ld	ra,8(sp)
    80004c78:	00013403          	ld	s0,0(sp)
    80004c7c:	00d5151b          	slliw	a0,a0,0xd
    80004c80:	0c2017b7          	lui	a5,0xc201
    80004c84:	00a78533          	add	a0,a5,a0
    80004c88:	00052023          	sw	zero,0(a0)
    80004c8c:	01010113          	addi	sp,sp,16
    80004c90:	00008067          	ret

0000000080004c94 <plic_claim>:
    80004c94:	ff010113          	addi	sp,sp,-16
    80004c98:	00813023          	sd	s0,0(sp)
    80004c9c:	00113423          	sd	ra,8(sp)
    80004ca0:	01010413          	addi	s0,sp,16
    80004ca4:	00000097          	auipc	ra,0x0
    80004ca8:	9f8080e7          	jalr	-1544(ra) # 8000469c <cpuid>
    80004cac:	00813083          	ld	ra,8(sp)
    80004cb0:	00013403          	ld	s0,0(sp)
    80004cb4:	00d5151b          	slliw	a0,a0,0xd
    80004cb8:	0c2017b7          	lui	a5,0xc201
    80004cbc:	00a78533          	add	a0,a5,a0
    80004cc0:	00452503          	lw	a0,4(a0)
    80004cc4:	01010113          	addi	sp,sp,16
    80004cc8:	00008067          	ret

0000000080004ccc <plic_complete>:
    80004ccc:	fe010113          	addi	sp,sp,-32
    80004cd0:	00813823          	sd	s0,16(sp)
    80004cd4:	00913423          	sd	s1,8(sp)
    80004cd8:	00113c23          	sd	ra,24(sp)
    80004cdc:	02010413          	addi	s0,sp,32
    80004ce0:	00050493          	mv	s1,a0
    80004ce4:	00000097          	auipc	ra,0x0
    80004ce8:	9b8080e7          	jalr	-1608(ra) # 8000469c <cpuid>
    80004cec:	01813083          	ld	ra,24(sp)
    80004cf0:	01013403          	ld	s0,16(sp)
    80004cf4:	00d5179b          	slliw	a5,a0,0xd
    80004cf8:	0c201737          	lui	a4,0xc201
    80004cfc:	00f707b3          	add	a5,a4,a5
    80004d00:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004d04:	00813483          	ld	s1,8(sp)
    80004d08:	02010113          	addi	sp,sp,32
    80004d0c:	00008067          	ret

0000000080004d10 <consolewrite>:
    80004d10:	fb010113          	addi	sp,sp,-80
    80004d14:	04813023          	sd	s0,64(sp)
    80004d18:	04113423          	sd	ra,72(sp)
    80004d1c:	02913c23          	sd	s1,56(sp)
    80004d20:	03213823          	sd	s2,48(sp)
    80004d24:	03313423          	sd	s3,40(sp)
    80004d28:	03413023          	sd	s4,32(sp)
    80004d2c:	01513c23          	sd	s5,24(sp)
    80004d30:	05010413          	addi	s0,sp,80
    80004d34:	06c05c63          	blez	a2,80004dac <consolewrite+0x9c>
    80004d38:	00060993          	mv	s3,a2
    80004d3c:	00050a13          	mv	s4,a0
    80004d40:	00058493          	mv	s1,a1
    80004d44:	00000913          	li	s2,0
    80004d48:	fff00a93          	li	s5,-1
    80004d4c:	01c0006f          	j	80004d68 <consolewrite+0x58>
    80004d50:	fbf44503          	lbu	a0,-65(s0)
    80004d54:	0019091b          	addiw	s2,s2,1
    80004d58:	00148493          	addi	s1,s1,1
    80004d5c:	00001097          	auipc	ra,0x1
    80004d60:	a9c080e7          	jalr	-1380(ra) # 800057f8 <uartputc>
    80004d64:	03298063          	beq	s3,s2,80004d84 <consolewrite+0x74>
    80004d68:	00048613          	mv	a2,s1
    80004d6c:	00100693          	li	a3,1
    80004d70:	000a0593          	mv	a1,s4
    80004d74:	fbf40513          	addi	a0,s0,-65
    80004d78:	00000097          	auipc	ra,0x0
    80004d7c:	9dc080e7          	jalr	-1572(ra) # 80004754 <either_copyin>
    80004d80:	fd5518e3          	bne	a0,s5,80004d50 <consolewrite+0x40>
    80004d84:	04813083          	ld	ra,72(sp)
    80004d88:	04013403          	ld	s0,64(sp)
    80004d8c:	03813483          	ld	s1,56(sp)
    80004d90:	02813983          	ld	s3,40(sp)
    80004d94:	02013a03          	ld	s4,32(sp)
    80004d98:	01813a83          	ld	s5,24(sp)
    80004d9c:	00090513          	mv	a0,s2
    80004da0:	03013903          	ld	s2,48(sp)
    80004da4:	05010113          	addi	sp,sp,80
    80004da8:	00008067          	ret
    80004dac:	00000913          	li	s2,0
    80004db0:	fd5ff06f          	j	80004d84 <consolewrite+0x74>

0000000080004db4 <consoleread>:
    80004db4:	f9010113          	addi	sp,sp,-112
    80004db8:	06813023          	sd	s0,96(sp)
    80004dbc:	04913c23          	sd	s1,88(sp)
    80004dc0:	05213823          	sd	s2,80(sp)
    80004dc4:	05313423          	sd	s3,72(sp)
    80004dc8:	05413023          	sd	s4,64(sp)
    80004dcc:	03513c23          	sd	s5,56(sp)
    80004dd0:	03613823          	sd	s6,48(sp)
    80004dd4:	03713423          	sd	s7,40(sp)
    80004dd8:	03813023          	sd	s8,32(sp)
    80004ddc:	06113423          	sd	ra,104(sp)
    80004de0:	01913c23          	sd	s9,24(sp)
    80004de4:	07010413          	addi	s0,sp,112
    80004de8:	00060b93          	mv	s7,a2
    80004dec:	00050913          	mv	s2,a0
    80004df0:	00058c13          	mv	s8,a1
    80004df4:	00060b1b          	sext.w	s6,a2
    80004df8:	00005497          	auipc	s1,0x5
    80004dfc:	d3048493          	addi	s1,s1,-720 # 80009b28 <cons>
    80004e00:	00400993          	li	s3,4
    80004e04:	fff00a13          	li	s4,-1
    80004e08:	00a00a93          	li	s5,10
    80004e0c:	05705e63          	blez	s7,80004e68 <consoleread+0xb4>
    80004e10:	09c4a703          	lw	a4,156(s1)
    80004e14:	0984a783          	lw	a5,152(s1)
    80004e18:	0007071b          	sext.w	a4,a4
    80004e1c:	08e78463          	beq	a5,a4,80004ea4 <consoleread+0xf0>
    80004e20:	07f7f713          	andi	a4,a5,127
    80004e24:	00e48733          	add	a4,s1,a4
    80004e28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80004e2c:	0017869b          	addiw	a3,a5,1
    80004e30:	08d4ac23          	sw	a3,152(s1)
    80004e34:	00070c9b          	sext.w	s9,a4
    80004e38:	0b370663          	beq	a4,s3,80004ee4 <consoleread+0x130>
    80004e3c:	00100693          	li	a3,1
    80004e40:	f9f40613          	addi	a2,s0,-97
    80004e44:	000c0593          	mv	a1,s8
    80004e48:	00090513          	mv	a0,s2
    80004e4c:	f8e40fa3          	sb	a4,-97(s0)
    80004e50:	00000097          	auipc	ra,0x0
    80004e54:	8b8080e7          	jalr	-1864(ra) # 80004708 <either_copyout>
    80004e58:	01450863          	beq	a0,s4,80004e68 <consoleread+0xb4>
    80004e5c:	001c0c13          	addi	s8,s8,1
    80004e60:	fffb8b9b          	addiw	s7,s7,-1
    80004e64:	fb5c94e3          	bne	s9,s5,80004e0c <consoleread+0x58>
    80004e68:	000b851b          	sext.w	a0,s7
    80004e6c:	06813083          	ld	ra,104(sp)
    80004e70:	06013403          	ld	s0,96(sp)
    80004e74:	05813483          	ld	s1,88(sp)
    80004e78:	05013903          	ld	s2,80(sp)
    80004e7c:	04813983          	ld	s3,72(sp)
    80004e80:	04013a03          	ld	s4,64(sp)
    80004e84:	03813a83          	ld	s5,56(sp)
    80004e88:	02813b83          	ld	s7,40(sp)
    80004e8c:	02013c03          	ld	s8,32(sp)
    80004e90:	01813c83          	ld	s9,24(sp)
    80004e94:	40ab053b          	subw	a0,s6,a0
    80004e98:	03013b03          	ld	s6,48(sp)
    80004e9c:	07010113          	addi	sp,sp,112
    80004ea0:	00008067          	ret
    80004ea4:	00001097          	auipc	ra,0x1
    80004ea8:	1d8080e7          	jalr	472(ra) # 8000607c <push_on>
    80004eac:	0984a703          	lw	a4,152(s1)
    80004eb0:	09c4a783          	lw	a5,156(s1)
    80004eb4:	0007879b          	sext.w	a5,a5
    80004eb8:	fef70ce3          	beq	a4,a5,80004eb0 <consoleread+0xfc>
    80004ebc:	00001097          	auipc	ra,0x1
    80004ec0:	234080e7          	jalr	564(ra) # 800060f0 <pop_on>
    80004ec4:	0984a783          	lw	a5,152(s1)
    80004ec8:	07f7f713          	andi	a4,a5,127
    80004ecc:	00e48733          	add	a4,s1,a4
    80004ed0:	01874703          	lbu	a4,24(a4)
    80004ed4:	0017869b          	addiw	a3,a5,1
    80004ed8:	08d4ac23          	sw	a3,152(s1)
    80004edc:	00070c9b          	sext.w	s9,a4
    80004ee0:	f5371ee3          	bne	a4,s3,80004e3c <consoleread+0x88>
    80004ee4:	000b851b          	sext.w	a0,s7
    80004ee8:	f96bf2e3          	bgeu	s7,s6,80004e6c <consoleread+0xb8>
    80004eec:	08f4ac23          	sw	a5,152(s1)
    80004ef0:	f7dff06f          	j	80004e6c <consoleread+0xb8>

0000000080004ef4 <consputc>:
    80004ef4:	10000793          	li	a5,256
    80004ef8:	00f50663          	beq	a0,a5,80004f04 <consputc+0x10>
    80004efc:	00001317          	auipc	t1,0x1
    80004f00:	9f430067          	jr	-1548(t1) # 800058f0 <uartputc_sync>
    80004f04:	ff010113          	addi	sp,sp,-16
    80004f08:	00113423          	sd	ra,8(sp)
    80004f0c:	00813023          	sd	s0,0(sp)
    80004f10:	01010413          	addi	s0,sp,16
    80004f14:	00800513          	li	a0,8
    80004f18:	00001097          	auipc	ra,0x1
    80004f1c:	9d8080e7          	jalr	-1576(ra) # 800058f0 <uartputc_sync>
    80004f20:	02000513          	li	a0,32
    80004f24:	00001097          	auipc	ra,0x1
    80004f28:	9cc080e7          	jalr	-1588(ra) # 800058f0 <uartputc_sync>
    80004f2c:	00013403          	ld	s0,0(sp)
    80004f30:	00813083          	ld	ra,8(sp)
    80004f34:	00800513          	li	a0,8
    80004f38:	01010113          	addi	sp,sp,16
    80004f3c:	00001317          	auipc	t1,0x1
    80004f40:	9b430067          	jr	-1612(t1) # 800058f0 <uartputc_sync>

0000000080004f44 <consoleintr>:
    80004f44:	fe010113          	addi	sp,sp,-32
    80004f48:	00813823          	sd	s0,16(sp)
    80004f4c:	00913423          	sd	s1,8(sp)
    80004f50:	01213023          	sd	s2,0(sp)
    80004f54:	00113c23          	sd	ra,24(sp)
    80004f58:	02010413          	addi	s0,sp,32
    80004f5c:	00005917          	auipc	s2,0x5
    80004f60:	bcc90913          	addi	s2,s2,-1076 # 80009b28 <cons>
    80004f64:	00050493          	mv	s1,a0
    80004f68:	00090513          	mv	a0,s2
    80004f6c:	00001097          	auipc	ra,0x1
    80004f70:	e40080e7          	jalr	-448(ra) # 80005dac <acquire>
    80004f74:	02048c63          	beqz	s1,80004fac <consoleintr+0x68>
    80004f78:	0a092783          	lw	a5,160(s2)
    80004f7c:	09892703          	lw	a4,152(s2)
    80004f80:	07f00693          	li	a3,127
    80004f84:	40e7873b          	subw	a4,a5,a4
    80004f88:	02e6e263          	bltu	a3,a4,80004fac <consoleintr+0x68>
    80004f8c:	00d00713          	li	a4,13
    80004f90:	04e48063          	beq	s1,a4,80004fd0 <consoleintr+0x8c>
    80004f94:	07f7f713          	andi	a4,a5,127
    80004f98:	00e90733          	add	a4,s2,a4
    80004f9c:	0017879b          	addiw	a5,a5,1
    80004fa0:	0af92023          	sw	a5,160(s2)
    80004fa4:	00970c23          	sb	s1,24(a4)
    80004fa8:	08f92e23          	sw	a5,156(s2)
    80004fac:	01013403          	ld	s0,16(sp)
    80004fb0:	01813083          	ld	ra,24(sp)
    80004fb4:	00813483          	ld	s1,8(sp)
    80004fb8:	00013903          	ld	s2,0(sp)
    80004fbc:	00005517          	auipc	a0,0x5
    80004fc0:	b6c50513          	addi	a0,a0,-1172 # 80009b28 <cons>
    80004fc4:	02010113          	addi	sp,sp,32
    80004fc8:	00001317          	auipc	t1,0x1
    80004fcc:	eb030067          	jr	-336(t1) # 80005e78 <release>
    80004fd0:	00a00493          	li	s1,10
    80004fd4:	fc1ff06f          	j	80004f94 <consoleintr+0x50>

0000000080004fd8 <consoleinit>:
    80004fd8:	fe010113          	addi	sp,sp,-32
    80004fdc:	00113c23          	sd	ra,24(sp)
    80004fe0:	00813823          	sd	s0,16(sp)
    80004fe4:	00913423          	sd	s1,8(sp)
    80004fe8:	02010413          	addi	s0,sp,32
    80004fec:	00005497          	auipc	s1,0x5
    80004ff0:	b3c48493          	addi	s1,s1,-1220 # 80009b28 <cons>
    80004ff4:	00048513          	mv	a0,s1
    80004ff8:	00002597          	auipc	a1,0x2
    80004ffc:	43858593          	addi	a1,a1,1080 # 80007430 <CONSOLE_STATUS+0x420>
    80005000:	00001097          	auipc	ra,0x1
    80005004:	d88080e7          	jalr	-632(ra) # 80005d88 <initlock>
    80005008:	00000097          	auipc	ra,0x0
    8000500c:	7ac080e7          	jalr	1964(ra) # 800057b4 <uartinit>
    80005010:	01813083          	ld	ra,24(sp)
    80005014:	01013403          	ld	s0,16(sp)
    80005018:	00000797          	auipc	a5,0x0
    8000501c:	d9c78793          	addi	a5,a5,-612 # 80004db4 <consoleread>
    80005020:	0af4bc23          	sd	a5,184(s1)
    80005024:	00000797          	auipc	a5,0x0
    80005028:	cec78793          	addi	a5,a5,-788 # 80004d10 <consolewrite>
    8000502c:	0cf4b023          	sd	a5,192(s1)
    80005030:	00813483          	ld	s1,8(sp)
    80005034:	02010113          	addi	sp,sp,32
    80005038:	00008067          	ret

000000008000503c <console_read>:
    8000503c:	ff010113          	addi	sp,sp,-16
    80005040:	00813423          	sd	s0,8(sp)
    80005044:	01010413          	addi	s0,sp,16
    80005048:	00813403          	ld	s0,8(sp)
    8000504c:	00005317          	auipc	t1,0x5
    80005050:	b9433303          	ld	t1,-1132(t1) # 80009be0 <devsw+0x10>
    80005054:	01010113          	addi	sp,sp,16
    80005058:	00030067          	jr	t1

000000008000505c <console_write>:
    8000505c:	ff010113          	addi	sp,sp,-16
    80005060:	00813423          	sd	s0,8(sp)
    80005064:	01010413          	addi	s0,sp,16
    80005068:	00813403          	ld	s0,8(sp)
    8000506c:	00005317          	auipc	t1,0x5
    80005070:	b7c33303          	ld	t1,-1156(t1) # 80009be8 <devsw+0x18>
    80005074:	01010113          	addi	sp,sp,16
    80005078:	00030067          	jr	t1

000000008000507c <panic>:
    8000507c:	fe010113          	addi	sp,sp,-32
    80005080:	00113c23          	sd	ra,24(sp)
    80005084:	00813823          	sd	s0,16(sp)
    80005088:	00913423          	sd	s1,8(sp)
    8000508c:	02010413          	addi	s0,sp,32
    80005090:	00050493          	mv	s1,a0
    80005094:	00002517          	auipc	a0,0x2
    80005098:	3a450513          	addi	a0,a0,932 # 80007438 <CONSOLE_STATUS+0x428>
    8000509c:	00005797          	auipc	a5,0x5
    800050a0:	be07a623          	sw	zero,-1044(a5) # 80009c88 <pr+0x18>
    800050a4:	00000097          	auipc	ra,0x0
    800050a8:	034080e7          	jalr	52(ra) # 800050d8 <__printf>
    800050ac:	00048513          	mv	a0,s1
    800050b0:	00000097          	auipc	ra,0x0
    800050b4:	028080e7          	jalr	40(ra) # 800050d8 <__printf>
    800050b8:	00002517          	auipc	a0,0x2
    800050bc:	0b050513          	addi	a0,a0,176 # 80007168 <CONSOLE_STATUS+0x158>
    800050c0:	00000097          	auipc	ra,0x0
    800050c4:	018080e7          	jalr	24(ra) # 800050d8 <__printf>
    800050c8:	00100793          	li	a5,1
    800050cc:	00004717          	auipc	a4,0x4
    800050d0:	8ef72e23          	sw	a5,-1796(a4) # 800089c8 <panicked>
    800050d4:	0000006f          	j	800050d4 <panic+0x58>

00000000800050d8 <__printf>:
    800050d8:	f3010113          	addi	sp,sp,-208
    800050dc:	08813023          	sd	s0,128(sp)
    800050e0:	07313423          	sd	s3,104(sp)
    800050e4:	09010413          	addi	s0,sp,144
    800050e8:	05813023          	sd	s8,64(sp)
    800050ec:	08113423          	sd	ra,136(sp)
    800050f0:	06913c23          	sd	s1,120(sp)
    800050f4:	07213823          	sd	s2,112(sp)
    800050f8:	07413023          	sd	s4,96(sp)
    800050fc:	05513c23          	sd	s5,88(sp)
    80005100:	05613823          	sd	s6,80(sp)
    80005104:	05713423          	sd	s7,72(sp)
    80005108:	03913c23          	sd	s9,56(sp)
    8000510c:	03a13823          	sd	s10,48(sp)
    80005110:	03b13423          	sd	s11,40(sp)
    80005114:	00005317          	auipc	t1,0x5
    80005118:	b5c30313          	addi	t1,t1,-1188 # 80009c70 <pr>
    8000511c:	01832c03          	lw	s8,24(t1)
    80005120:	00b43423          	sd	a1,8(s0)
    80005124:	00c43823          	sd	a2,16(s0)
    80005128:	00d43c23          	sd	a3,24(s0)
    8000512c:	02e43023          	sd	a4,32(s0)
    80005130:	02f43423          	sd	a5,40(s0)
    80005134:	03043823          	sd	a6,48(s0)
    80005138:	03143c23          	sd	a7,56(s0)
    8000513c:	00050993          	mv	s3,a0
    80005140:	4a0c1663          	bnez	s8,800055ec <__printf+0x514>
    80005144:	60098c63          	beqz	s3,8000575c <__printf+0x684>
    80005148:	0009c503          	lbu	a0,0(s3)
    8000514c:	00840793          	addi	a5,s0,8
    80005150:	f6f43c23          	sd	a5,-136(s0)
    80005154:	00000493          	li	s1,0
    80005158:	22050063          	beqz	a0,80005378 <__printf+0x2a0>
    8000515c:	00002a37          	lui	s4,0x2
    80005160:	00018ab7          	lui	s5,0x18
    80005164:	000f4b37          	lui	s6,0xf4
    80005168:	00989bb7          	lui	s7,0x989
    8000516c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005170:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005174:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005178:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000517c:	00148c9b          	addiw	s9,s1,1
    80005180:	02500793          	li	a5,37
    80005184:	01998933          	add	s2,s3,s9
    80005188:	38f51263          	bne	a0,a5,8000550c <__printf+0x434>
    8000518c:	00094783          	lbu	a5,0(s2)
    80005190:	00078c9b          	sext.w	s9,a5
    80005194:	1e078263          	beqz	a5,80005378 <__printf+0x2a0>
    80005198:	0024849b          	addiw	s1,s1,2
    8000519c:	07000713          	li	a4,112
    800051a0:	00998933          	add	s2,s3,s1
    800051a4:	38e78a63          	beq	a5,a4,80005538 <__printf+0x460>
    800051a8:	20f76863          	bltu	a4,a5,800053b8 <__printf+0x2e0>
    800051ac:	42a78863          	beq	a5,a0,800055dc <__printf+0x504>
    800051b0:	06400713          	li	a4,100
    800051b4:	40e79663          	bne	a5,a4,800055c0 <__printf+0x4e8>
    800051b8:	f7843783          	ld	a5,-136(s0)
    800051bc:	0007a603          	lw	a2,0(a5)
    800051c0:	00878793          	addi	a5,a5,8
    800051c4:	f6f43c23          	sd	a5,-136(s0)
    800051c8:	42064a63          	bltz	a2,800055fc <__printf+0x524>
    800051cc:	00a00713          	li	a4,10
    800051d0:	02e677bb          	remuw	a5,a2,a4
    800051d4:	00002d97          	auipc	s11,0x2
    800051d8:	28cd8d93          	addi	s11,s11,652 # 80007460 <digits>
    800051dc:	00900593          	li	a1,9
    800051e0:	0006051b          	sext.w	a0,a2
    800051e4:	00000c93          	li	s9,0
    800051e8:	02079793          	slli	a5,a5,0x20
    800051ec:	0207d793          	srli	a5,a5,0x20
    800051f0:	00fd87b3          	add	a5,s11,a5
    800051f4:	0007c783          	lbu	a5,0(a5)
    800051f8:	02e656bb          	divuw	a3,a2,a4
    800051fc:	f8f40023          	sb	a5,-128(s0)
    80005200:	14c5d863          	bge	a1,a2,80005350 <__printf+0x278>
    80005204:	06300593          	li	a1,99
    80005208:	00100c93          	li	s9,1
    8000520c:	02e6f7bb          	remuw	a5,a3,a4
    80005210:	02079793          	slli	a5,a5,0x20
    80005214:	0207d793          	srli	a5,a5,0x20
    80005218:	00fd87b3          	add	a5,s11,a5
    8000521c:	0007c783          	lbu	a5,0(a5)
    80005220:	02e6d73b          	divuw	a4,a3,a4
    80005224:	f8f400a3          	sb	a5,-127(s0)
    80005228:	12a5f463          	bgeu	a1,a0,80005350 <__printf+0x278>
    8000522c:	00a00693          	li	a3,10
    80005230:	00900593          	li	a1,9
    80005234:	02d777bb          	remuw	a5,a4,a3
    80005238:	02079793          	slli	a5,a5,0x20
    8000523c:	0207d793          	srli	a5,a5,0x20
    80005240:	00fd87b3          	add	a5,s11,a5
    80005244:	0007c503          	lbu	a0,0(a5)
    80005248:	02d757bb          	divuw	a5,a4,a3
    8000524c:	f8a40123          	sb	a0,-126(s0)
    80005250:	48e5f263          	bgeu	a1,a4,800056d4 <__printf+0x5fc>
    80005254:	06300513          	li	a0,99
    80005258:	02d7f5bb          	remuw	a1,a5,a3
    8000525c:	02059593          	slli	a1,a1,0x20
    80005260:	0205d593          	srli	a1,a1,0x20
    80005264:	00bd85b3          	add	a1,s11,a1
    80005268:	0005c583          	lbu	a1,0(a1)
    8000526c:	02d7d7bb          	divuw	a5,a5,a3
    80005270:	f8b401a3          	sb	a1,-125(s0)
    80005274:	48e57263          	bgeu	a0,a4,800056f8 <__printf+0x620>
    80005278:	3e700513          	li	a0,999
    8000527c:	02d7f5bb          	remuw	a1,a5,a3
    80005280:	02059593          	slli	a1,a1,0x20
    80005284:	0205d593          	srli	a1,a1,0x20
    80005288:	00bd85b3          	add	a1,s11,a1
    8000528c:	0005c583          	lbu	a1,0(a1)
    80005290:	02d7d7bb          	divuw	a5,a5,a3
    80005294:	f8b40223          	sb	a1,-124(s0)
    80005298:	46e57663          	bgeu	a0,a4,80005704 <__printf+0x62c>
    8000529c:	02d7f5bb          	remuw	a1,a5,a3
    800052a0:	02059593          	slli	a1,a1,0x20
    800052a4:	0205d593          	srli	a1,a1,0x20
    800052a8:	00bd85b3          	add	a1,s11,a1
    800052ac:	0005c583          	lbu	a1,0(a1)
    800052b0:	02d7d7bb          	divuw	a5,a5,a3
    800052b4:	f8b402a3          	sb	a1,-123(s0)
    800052b8:	46ea7863          	bgeu	s4,a4,80005728 <__printf+0x650>
    800052bc:	02d7f5bb          	remuw	a1,a5,a3
    800052c0:	02059593          	slli	a1,a1,0x20
    800052c4:	0205d593          	srli	a1,a1,0x20
    800052c8:	00bd85b3          	add	a1,s11,a1
    800052cc:	0005c583          	lbu	a1,0(a1)
    800052d0:	02d7d7bb          	divuw	a5,a5,a3
    800052d4:	f8b40323          	sb	a1,-122(s0)
    800052d8:	3eeaf863          	bgeu	s5,a4,800056c8 <__printf+0x5f0>
    800052dc:	02d7f5bb          	remuw	a1,a5,a3
    800052e0:	02059593          	slli	a1,a1,0x20
    800052e4:	0205d593          	srli	a1,a1,0x20
    800052e8:	00bd85b3          	add	a1,s11,a1
    800052ec:	0005c583          	lbu	a1,0(a1)
    800052f0:	02d7d7bb          	divuw	a5,a5,a3
    800052f4:	f8b403a3          	sb	a1,-121(s0)
    800052f8:	42eb7e63          	bgeu	s6,a4,80005734 <__printf+0x65c>
    800052fc:	02d7f5bb          	remuw	a1,a5,a3
    80005300:	02059593          	slli	a1,a1,0x20
    80005304:	0205d593          	srli	a1,a1,0x20
    80005308:	00bd85b3          	add	a1,s11,a1
    8000530c:	0005c583          	lbu	a1,0(a1)
    80005310:	02d7d7bb          	divuw	a5,a5,a3
    80005314:	f8b40423          	sb	a1,-120(s0)
    80005318:	42ebfc63          	bgeu	s7,a4,80005750 <__printf+0x678>
    8000531c:	02079793          	slli	a5,a5,0x20
    80005320:	0207d793          	srli	a5,a5,0x20
    80005324:	00fd8db3          	add	s11,s11,a5
    80005328:	000dc703          	lbu	a4,0(s11)
    8000532c:	00a00793          	li	a5,10
    80005330:	00900c93          	li	s9,9
    80005334:	f8e404a3          	sb	a4,-119(s0)
    80005338:	00065c63          	bgez	a2,80005350 <__printf+0x278>
    8000533c:	f9040713          	addi	a4,s0,-112
    80005340:	00f70733          	add	a4,a4,a5
    80005344:	02d00693          	li	a3,45
    80005348:	fed70823          	sb	a3,-16(a4)
    8000534c:	00078c93          	mv	s9,a5
    80005350:	f8040793          	addi	a5,s0,-128
    80005354:	01978cb3          	add	s9,a5,s9
    80005358:	f7f40d13          	addi	s10,s0,-129
    8000535c:	000cc503          	lbu	a0,0(s9)
    80005360:	fffc8c93          	addi	s9,s9,-1
    80005364:	00000097          	auipc	ra,0x0
    80005368:	b90080e7          	jalr	-1136(ra) # 80004ef4 <consputc>
    8000536c:	ffac98e3          	bne	s9,s10,8000535c <__printf+0x284>
    80005370:	00094503          	lbu	a0,0(s2)
    80005374:	e00514e3          	bnez	a0,8000517c <__printf+0xa4>
    80005378:	1a0c1663          	bnez	s8,80005524 <__printf+0x44c>
    8000537c:	08813083          	ld	ra,136(sp)
    80005380:	08013403          	ld	s0,128(sp)
    80005384:	07813483          	ld	s1,120(sp)
    80005388:	07013903          	ld	s2,112(sp)
    8000538c:	06813983          	ld	s3,104(sp)
    80005390:	06013a03          	ld	s4,96(sp)
    80005394:	05813a83          	ld	s5,88(sp)
    80005398:	05013b03          	ld	s6,80(sp)
    8000539c:	04813b83          	ld	s7,72(sp)
    800053a0:	04013c03          	ld	s8,64(sp)
    800053a4:	03813c83          	ld	s9,56(sp)
    800053a8:	03013d03          	ld	s10,48(sp)
    800053ac:	02813d83          	ld	s11,40(sp)
    800053b0:	0d010113          	addi	sp,sp,208
    800053b4:	00008067          	ret
    800053b8:	07300713          	li	a4,115
    800053bc:	1ce78a63          	beq	a5,a4,80005590 <__printf+0x4b8>
    800053c0:	07800713          	li	a4,120
    800053c4:	1ee79e63          	bne	a5,a4,800055c0 <__printf+0x4e8>
    800053c8:	f7843783          	ld	a5,-136(s0)
    800053cc:	0007a703          	lw	a4,0(a5)
    800053d0:	00878793          	addi	a5,a5,8
    800053d4:	f6f43c23          	sd	a5,-136(s0)
    800053d8:	28074263          	bltz	a4,8000565c <__printf+0x584>
    800053dc:	00002d97          	auipc	s11,0x2
    800053e0:	084d8d93          	addi	s11,s11,132 # 80007460 <digits>
    800053e4:	00f77793          	andi	a5,a4,15
    800053e8:	00fd87b3          	add	a5,s11,a5
    800053ec:	0007c683          	lbu	a3,0(a5)
    800053f0:	00f00613          	li	a2,15
    800053f4:	0007079b          	sext.w	a5,a4
    800053f8:	f8d40023          	sb	a3,-128(s0)
    800053fc:	0047559b          	srliw	a1,a4,0x4
    80005400:	0047569b          	srliw	a3,a4,0x4
    80005404:	00000c93          	li	s9,0
    80005408:	0ee65063          	bge	a2,a4,800054e8 <__printf+0x410>
    8000540c:	00f6f693          	andi	a3,a3,15
    80005410:	00dd86b3          	add	a3,s11,a3
    80005414:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005418:	0087d79b          	srliw	a5,a5,0x8
    8000541c:	00100c93          	li	s9,1
    80005420:	f8d400a3          	sb	a3,-127(s0)
    80005424:	0cb67263          	bgeu	a2,a1,800054e8 <__printf+0x410>
    80005428:	00f7f693          	andi	a3,a5,15
    8000542c:	00dd86b3          	add	a3,s11,a3
    80005430:	0006c583          	lbu	a1,0(a3)
    80005434:	00f00613          	li	a2,15
    80005438:	0047d69b          	srliw	a3,a5,0x4
    8000543c:	f8b40123          	sb	a1,-126(s0)
    80005440:	0047d593          	srli	a1,a5,0x4
    80005444:	28f67e63          	bgeu	a2,a5,800056e0 <__printf+0x608>
    80005448:	00f6f693          	andi	a3,a3,15
    8000544c:	00dd86b3          	add	a3,s11,a3
    80005450:	0006c503          	lbu	a0,0(a3)
    80005454:	0087d813          	srli	a6,a5,0x8
    80005458:	0087d69b          	srliw	a3,a5,0x8
    8000545c:	f8a401a3          	sb	a0,-125(s0)
    80005460:	28b67663          	bgeu	a2,a1,800056ec <__printf+0x614>
    80005464:	00f6f693          	andi	a3,a3,15
    80005468:	00dd86b3          	add	a3,s11,a3
    8000546c:	0006c583          	lbu	a1,0(a3)
    80005470:	00c7d513          	srli	a0,a5,0xc
    80005474:	00c7d69b          	srliw	a3,a5,0xc
    80005478:	f8b40223          	sb	a1,-124(s0)
    8000547c:	29067a63          	bgeu	a2,a6,80005710 <__printf+0x638>
    80005480:	00f6f693          	andi	a3,a3,15
    80005484:	00dd86b3          	add	a3,s11,a3
    80005488:	0006c583          	lbu	a1,0(a3)
    8000548c:	0107d813          	srli	a6,a5,0x10
    80005490:	0107d69b          	srliw	a3,a5,0x10
    80005494:	f8b402a3          	sb	a1,-123(s0)
    80005498:	28a67263          	bgeu	a2,a0,8000571c <__printf+0x644>
    8000549c:	00f6f693          	andi	a3,a3,15
    800054a0:	00dd86b3          	add	a3,s11,a3
    800054a4:	0006c683          	lbu	a3,0(a3)
    800054a8:	0147d79b          	srliw	a5,a5,0x14
    800054ac:	f8d40323          	sb	a3,-122(s0)
    800054b0:	21067663          	bgeu	a2,a6,800056bc <__printf+0x5e4>
    800054b4:	02079793          	slli	a5,a5,0x20
    800054b8:	0207d793          	srli	a5,a5,0x20
    800054bc:	00fd8db3          	add	s11,s11,a5
    800054c0:	000dc683          	lbu	a3,0(s11)
    800054c4:	00800793          	li	a5,8
    800054c8:	00700c93          	li	s9,7
    800054cc:	f8d403a3          	sb	a3,-121(s0)
    800054d0:	00075c63          	bgez	a4,800054e8 <__printf+0x410>
    800054d4:	f9040713          	addi	a4,s0,-112
    800054d8:	00f70733          	add	a4,a4,a5
    800054dc:	02d00693          	li	a3,45
    800054e0:	fed70823          	sb	a3,-16(a4)
    800054e4:	00078c93          	mv	s9,a5
    800054e8:	f8040793          	addi	a5,s0,-128
    800054ec:	01978cb3          	add	s9,a5,s9
    800054f0:	f7f40d13          	addi	s10,s0,-129
    800054f4:	000cc503          	lbu	a0,0(s9)
    800054f8:	fffc8c93          	addi	s9,s9,-1
    800054fc:	00000097          	auipc	ra,0x0
    80005500:	9f8080e7          	jalr	-1544(ra) # 80004ef4 <consputc>
    80005504:	ff9d18e3          	bne	s10,s9,800054f4 <__printf+0x41c>
    80005508:	0100006f          	j	80005518 <__printf+0x440>
    8000550c:	00000097          	auipc	ra,0x0
    80005510:	9e8080e7          	jalr	-1560(ra) # 80004ef4 <consputc>
    80005514:	000c8493          	mv	s1,s9
    80005518:	00094503          	lbu	a0,0(s2)
    8000551c:	c60510e3          	bnez	a0,8000517c <__printf+0xa4>
    80005520:	e40c0ee3          	beqz	s8,8000537c <__printf+0x2a4>
    80005524:	00004517          	auipc	a0,0x4
    80005528:	74c50513          	addi	a0,a0,1868 # 80009c70 <pr>
    8000552c:	00001097          	auipc	ra,0x1
    80005530:	94c080e7          	jalr	-1716(ra) # 80005e78 <release>
    80005534:	e49ff06f          	j	8000537c <__printf+0x2a4>
    80005538:	f7843783          	ld	a5,-136(s0)
    8000553c:	03000513          	li	a0,48
    80005540:	01000d13          	li	s10,16
    80005544:	00878713          	addi	a4,a5,8
    80005548:	0007bc83          	ld	s9,0(a5)
    8000554c:	f6e43c23          	sd	a4,-136(s0)
    80005550:	00000097          	auipc	ra,0x0
    80005554:	9a4080e7          	jalr	-1628(ra) # 80004ef4 <consputc>
    80005558:	07800513          	li	a0,120
    8000555c:	00000097          	auipc	ra,0x0
    80005560:	998080e7          	jalr	-1640(ra) # 80004ef4 <consputc>
    80005564:	00002d97          	auipc	s11,0x2
    80005568:	efcd8d93          	addi	s11,s11,-260 # 80007460 <digits>
    8000556c:	03ccd793          	srli	a5,s9,0x3c
    80005570:	00fd87b3          	add	a5,s11,a5
    80005574:	0007c503          	lbu	a0,0(a5)
    80005578:	fffd0d1b          	addiw	s10,s10,-1
    8000557c:	004c9c93          	slli	s9,s9,0x4
    80005580:	00000097          	auipc	ra,0x0
    80005584:	974080e7          	jalr	-1676(ra) # 80004ef4 <consputc>
    80005588:	fe0d12e3          	bnez	s10,8000556c <__printf+0x494>
    8000558c:	f8dff06f          	j	80005518 <__printf+0x440>
    80005590:	f7843783          	ld	a5,-136(s0)
    80005594:	0007bc83          	ld	s9,0(a5)
    80005598:	00878793          	addi	a5,a5,8
    8000559c:	f6f43c23          	sd	a5,-136(s0)
    800055a0:	000c9a63          	bnez	s9,800055b4 <__printf+0x4dc>
    800055a4:	1080006f          	j	800056ac <__printf+0x5d4>
    800055a8:	001c8c93          	addi	s9,s9,1
    800055ac:	00000097          	auipc	ra,0x0
    800055b0:	948080e7          	jalr	-1720(ra) # 80004ef4 <consputc>
    800055b4:	000cc503          	lbu	a0,0(s9)
    800055b8:	fe0518e3          	bnez	a0,800055a8 <__printf+0x4d0>
    800055bc:	f5dff06f          	j	80005518 <__printf+0x440>
    800055c0:	02500513          	li	a0,37
    800055c4:	00000097          	auipc	ra,0x0
    800055c8:	930080e7          	jalr	-1744(ra) # 80004ef4 <consputc>
    800055cc:	000c8513          	mv	a0,s9
    800055d0:	00000097          	auipc	ra,0x0
    800055d4:	924080e7          	jalr	-1756(ra) # 80004ef4 <consputc>
    800055d8:	f41ff06f          	j	80005518 <__printf+0x440>
    800055dc:	02500513          	li	a0,37
    800055e0:	00000097          	auipc	ra,0x0
    800055e4:	914080e7          	jalr	-1772(ra) # 80004ef4 <consputc>
    800055e8:	f31ff06f          	j	80005518 <__printf+0x440>
    800055ec:	00030513          	mv	a0,t1
    800055f0:	00000097          	auipc	ra,0x0
    800055f4:	7bc080e7          	jalr	1980(ra) # 80005dac <acquire>
    800055f8:	b4dff06f          	j	80005144 <__printf+0x6c>
    800055fc:	40c0053b          	negw	a0,a2
    80005600:	00a00713          	li	a4,10
    80005604:	02e576bb          	remuw	a3,a0,a4
    80005608:	00002d97          	auipc	s11,0x2
    8000560c:	e58d8d93          	addi	s11,s11,-424 # 80007460 <digits>
    80005610:	ff700593          	li	a1,-9
    80005614:	02069693          	slli	a3,a3,0x20
    80005618:	0206d693          	srli	a3,a3,0x20
    8000561c:	00dd86b3          	add	a3,s11,a3
    80005620:	0006c683          	lbu	a3,0(a3)
    80005624:	02e557bb          	divuw	a5,a0,a4
    80005628:	f8d40023          	sb	a3,-128(s0)
    8000562c:	10b65e63          	bge	a2,a1,80005748 <__printf+0x670>
    80005630:	06300593          	li	a1,99
    80005634:	02e7f6bb          	remuw	a3,a5,a4
    80005638:	02069693          	slli	a3,a3,0x20
    8000563c:	0206d693          	srli	a3,a3,0x20
    80005640:	00dd86b3          	add	a3,s11,a3
    80005644:	0006c683          	lbu	a3,0(a3)
    80005648:	02e7d73b          	divuw	a4,a5,a4
    8000564c:	00200793          	li	a5,2
    80005650:	f8d400a3          	sb	a3,-127(s0)
    80005654:	bca5ece3          	bltu	a1,a0,8000522c <__printf+0x154>
    80005658:	ce5ff06f          	j	8000533c <__printf+0x264>
    8000565c:	40e007bb          	negw	a5,a4
    80005660:	00002d97          	auipc	s11,0x2
    80005664:	e00d8d93          	addi	s11,s11,-512 # 80007460 <digits>
    80005668:	00f7f693          	andi	a3,a5,15
    8000566c:	00dd86b3          	add	a3,s11,a3
    80005670:	0006c583          	lbu	a1,0(a3)
    80005674:	ff100613          	li	a2,-15
    80005678:	0047d69b          	srliw	a3,a5,0x4
    8000567c:	f8b40023          	sb	a1,-128(s0)
    80005680:	0047d59b          	srliw	a1,a5,0x4
    80005684:	0ac75e63          	bge	a4,a2,80005740 <__printf+0x668>
    80005688:	00f6f693          	andi	a3,a3,15
    8000568c:	00dd86b3          	add	a3,s11,a3
    80005690:	0006c603          	lbu	a2,0(a3)
    80005694:	00f00693          	li	a3,15
    80005698:	0087d79b          	srliw	a5,a5,0x8
    8000569c:	f8c400a3          	sb	a2,-127(s0)
    800056a0:	d8b6e4e3          	bltu	a3,a1,80005428 <__printf+0x350>
    800056a4:	00200793          	li	a5,2
    800056a8:	e2dff06f          	j	800054d4 <__printf+0x3fc>
    800056ac:	00002c97          	auipc	s9,0x2
    800056b0:	d94c8c93          	addi	s9,s9,-620 # 80007440 <CONSOLE_STATUS+0x430>
    800056b4:	02800513          	li	a0,40
    800056b8:	ef1ff06f          	j	800055a8 <__printf+0x4d0>
    800056bc:	00700793          	li	a5,7
    800056c0:	00600c93          	li	s9,6
    800056c4:	e0dff06f          	j	800054d0 <__printf+0x3f8>
    800056c8:	00700793          	li	a5,7
    800056cc:	00600c93          	li	s9,6
    800056d0:	c69ff06f          	j	80005338 <__printf+0x260>
    800056d4:	00300793          	li	a5,3
    800056d8:	00200c93          	li	s9,2
    800056dc:	c5dff06f          	j	80005338 <__printf+0x260>
    800056e0:	00300793          	li	a5,3
    800056e4:	00200c93          	li	s9,2
    800056e8:	de9ff06f          	j	800054d0 <__printf+0x3f8>
    800056ec:	00400793          	li	a5,4
    800056f0:	00300c93          	li	s9,3
    800056f4:	dddff06f          	j	800054d0 <__printf+0x3f8>
    800056f8:	00400793          	li	a5,4
    800056fc:	00300c93          	li	s9,3
    80005700:	c39ff06f          	j	80005338 <__printf+0x260>
    80005704:	00500793          	li	a5,5
    80005708:	00400c93          	li	s9,4
    8000570c:	c2dff06f          	j	80005338 <__printf+0x260>
    80005710:	00500793          	li	a5,5
    80005714:	00400c93          	li	s9,4
    80005718:	db9ff06f          	j	800054d0 <__printf+0x3f8>
    8000571c:	00600793          	li	a5,6
    80005720:	00500c93          	li	s9,5
    80005724:	dadff06f          	j	800054d0 <__printf+0x3f8>
    80005728:	00600793          	li	a5,6
    8000572c:	00500c93          	li	s9,5
    80005730:	c09ff06f          	j	80005338 <__printf+0x260>
    80005734:	00800793          	li	a5,8
    80005738:	00700c93          	li	s9,7
    8000573c:	bfdff06f          	j	80005338 <__printf+0x260>
    80005740:	00100793          	li	a5,1
    80005744:	d91ff06f          	j	800054d4 <__printf+0x3fc>
    80005748:	00100793          	li	a5,1
    8000574c:	bf1ff06f          	j	8000533c <__printf+0x264>
    80005750:	00900793          	li	a5,9
    80005754:	00800c93          	li	s9,8
    80005758:	be1ff06f          	j	80005338 <__printf+0x260>
    8000575c:	00002517          	auipc	a0,0x2
    80005760:	cec50513          	addi	a0,a0,-788 # 80007448 <CONSOLE_STATUS+0x438>
    80005764:	00000097          	auipc	ra,0x0
    80005768:	918080e7          	jalr	-1768(ra) # 8000507c <panic>

000000008000576c <printfinit>:
    8000576c:	fe010113          	addi	sp,sp,-32
    80005770:	00813823          	sd	s0,16(sp)
    80005774:	00913423          	sd	s1,8(sp)
    80005778:	00113c23          	sd	ra,24(sp)
    8000577c:	02010413          	addi	s0,sp,32
    80005780:	00004497          	auipc	s1,0x4
    80005784:	4f048493          	addi	s1,s1,1264 # 80009c70 <pr>
    80005788:	00048513          	mv	a0,s1
    8000578c:	00002597          	auipc	a1,0x2
    80005790:	ccc58593          	addi	a1,a1,-820 # 80007458 <CONSOLE_STATUS+0x448>
    80005794:	00000097          	auipc	ra,0x0
    80005798:	5f4080e7          	jalr	1524(ra) # 80005d88 <initlock>
    8000579c:	01813083          	ld	ra,24(sp)
    800057a0:	01013403          	ld	s0,16(sp)
    800057a4:	0004ac23          	sw	zero,24(s1)
    800057a8:	00813483          	ld	s1,8(sp)
    800057ac:	02010113          	addi	sp,sp,32
    800057b0:	00008067          	ret

00000000800057b4 <uartinit>:
    800057b4:	ff010113          	addi	sp,sp,-16
    800057b8:	00813423          	sd	s0,8(sp)
    800057bc:	01010413          	addi	s0,sp,16
    800057c0:	100007b7          	lui	a5,0x10000
    800057c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800057c8:	f8000713          	li	a4,-128
    800057cc:	00e781a3          	sb	a4,3(a5)
    800057d0:	00300713          	li	a4,3
    800057d4:	00e78023          	sb	a4,0(a5)
    800057d8:	000780a3          	sb	zero,1(a5)
    800057dc:	00e781a3          	sb	a4,3(a5)
    800057e0:	00700693          	li	a3,7
    800057e4:	00d78123          	sb	a3,2(a5)
    800057e8:	00e780a3          	sb	a4,1(a5)
    800057ec:	00813403          	ld	s0,8(sp)
    800057f0:	01010113          	addi	sp,sp,16
    800057f4:	00008067          	ret

00000000800057f8 <uartputc>:
    800057f8:	00003797          	auipc	a5,0x3
    800057fc:	1d07a783          	lw	a5,464(a5) # 800089c8 <panicked>
    80005800:	00078463          	beqz	a5,80005808 <uartputc+0x10>
    80005804:	0000006f          	j	80005804 <uartputc+0xc>
    80005808:	fd010113          	addi	sp,sp,-48
    8000580c:	02813023          	sd	s0,32(sp)
    80005810:	00913c23          	sd	s1,24(sp)
    80005814:	01213823          	sd	s2,16(sp)
    80005818:	01313423          	sd	s3,8(sp)
    8000581c:	02113423          	sd	ra,40(sp)
    80005820:	03010413          	addi	s0,sp,48
    80005824:	00003917          	auipc	s2,0x3
    80005828:	1ac90913          	addi	s2,s2,428 # 800089d0 <uart_tx_r>
    8000582c:	00093783          	ld	a5,0(s2)
    80005830:	00003497          	auipc	s1,0x3
    80005834:	1a848493          	addi	s1,s1,424 # 800089d8 <uart_tx_w>
    80005838:	0004b703          	ld	a4,0(s1)
    8000583c:	02078693          	addi	a3,a5,32
    80005840:	00050993          	mv	s3,a0
    80005844:	02e69c63          	bne	a3,a4,8000587c <uartputc+0x84>
    80005848:	00001097          	auipc	ra,0x1
    8000584c:	834080e7          	jalr	-1996(ra) # 8000607c <push_on>
    80005850:	00093783          	ld	a5,0(s2)
    80005854:	0004b703          	ld	a4,0(s1)
    80005858:	02078793          	addi	a5,a5,32
    8000585c:	00e79463          	bne	a5,a4,80005864 <uartputc+0x6c>
    80005860:	0000006f          	j	80005860 <uartputc+0x68>
    80005864:	00001097          	auipc	ra,0x1
    80005868:	88c080e7          	jalr	-1908(ra) # 800060f0 <pop_on>
    8000586c:	00093783          	ld	a5,0(s2)
    80005870:	0004b703          	ld	a4,0(s1)
    80005874:	02078693          	addi	a3,a5,32
    80005878:	fce688e3          	beq	a3,a4,80005848 <uartputc+0x50>
    8000587c:	01f77693          	andi	a3,a4,31
    80005880:	00004597          	auipc	a1,0x4
    80005884:	41058593          	addi	a1,a1,1040 # 80009c90 <uart_tx_buf>
    80005888:	00d586b3          	add	a3,a1,a3
    8000588c:	00170713          	addi	a4,a4,1
    80005890:	01368023          	sb	s3,0(a3)
    80005894:	00e4b023          	sd	a4,0(s1)
    80005898:	10000637          	lui	a2,0x10000
    8000589c:	02f71063          	bne	a4,a5,800058bc <uartputc+0xc4>
    800058a0:	0340006f          	j	800058d4 <uartputc+0xdc>
    800058a4:	00074703          	lbu	a4,0(a4)
    800058a8:	00f93023          	sd	a5,0(s2)
    800058ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800058b0:	00093783          	ld	a5,0(s2)
    800058b4:	0004b703          	ld	a4,0(s1)
    800058b8:	00f70e63          	beq	a4,a5,800058d4 <uartputc+0xdc>
    800058bc:	00564683          	lbu	a3,5(a2)
    800058c0:	01f7f713          	andi	a4,a5,31
    800058c4:	00e58733          	add	a4,a1,a4
    800058c8:	0206f693          	andi	a3,a3,32
    800058cc:	00178793          	addi	a5,a5,1
    800058d0:	fc069ae3          	bnez	a3,800058a4 <uartputc+0xac>
    800058d4:	02813083          	ld	ra,40(sp)
    800058d8:	02013403          	ld	s0,32(sp)
    800058dc:	01813483          	ld	s1,24(sp)
    800058e0:	01013903          	ld	s2,16(sp)
    800058e4:	00813983          	ld	s3,8(sp)
    800058e8:	03010113          	addi	sp,sp,48
    800058ec:	00008067          	ret

00000000800058f0 <uartputc_sync>:
    800058f0:	ff010113          	addi	sp,sp,-16
    800058f4:	00813423          	sd	s0,8(sp)
    800058f8:	01010413          	addi	s0,sp,16
    800058fc:	00003717          	auipc	a4,0x3
    80005900:	0cc72703          	lw	a4,204(a4) # 800089c8 <panicked>
    80005904:	02071663          	bnez	a4,80005930 <uartputc_sync+0x40>
    80005908:	00050793          	mv	a5,a0
    8000590c:	100006b7          	lui	a3,0x10000
    80005910:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005914:	02077713          	andi	a4,a4,32
    80005918:	fe070ce3          	beqz	a4,80005910 <uartputc_sync+0x20>
    8000591c:	0ff7f793          	andi	a5,a5,255
    80005920:	00f68023          	sb	a5,0(a3)
    80005924:	00813403          	ld	s0,8(sp)
    80005928:	01010113          	addi	sp,sp,16
    8000592c:	00008067          	ret
    80005930:	0000006f          	j	80005930 <uartputc_sync+0x40>

0000000080005934 <uartstart>:
    80005934:	ff010113          	addi	sp,sp,-16
    80005938:	00813423          	sd	s0,8(sp)
    8000593c:	01010413          	addi	s0,sp,16
    80005940:	00003617          	auipc	a2,0x3
    80005944:	09060613          	addi	a2,a2,144 # 800089d0 <uart_tx_r>
    80005948:	00003517          	auipc	a0,0x3
    8000594c:	09050513          	addi	a0,a0,144 # 800089d8 <uart_tx_w>
    80005950:	00063783          	ld	a5,0(a2)
    80005954:	00053703          	ld	a4,0(a0)
    80005958:	04f70263          	beq	a4,a5,8000599c <uartstart+0x68>
    8000595c:	100005b7          	lui	a1,0x10000
    80005960:	00004817          	auipc	a6,0x4
    80005964:	33080813          	addi	a6,a6,816 # 80009c90 <uart_tx_buf>
    80005968:	01c0006f          	j	80005984 <uartstart+0x50>
    8000596c:	0006c703          	lbu	a4,0(a3)
    80005970:	00f63023          	sd	a5,0(a2)
    80005974:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005978:	00063783          	ld	a5,0(a2)
    8000597c:	00053703          	ld	a4,0(a0)
    80005980:	00f70e63          	beq	a4,a5,8000599c <uartstart+0x68>
    80005984:	01f7f713          	andi	a4,a5,31
    80005988:	00e806b3          	add	a3,a6,a4
    8000598c:	0055c703          	lbu	a4,5(a1)
    80005990:	00178793          	addi	a5,a5,1
    80005994:	02077713          	andi	a4,a4,32
    80005998:	fc071ae3          	bnez	a4,8000596c <uartstart+0x38>
    8000599c:	00813403          	ld	s0,8(sp)
    800059a0:	01010113          	addi	sp,sp,16
    800059a4:	00008067          	ret

00000000800059a8 <uartgetc>:
    800059a8:	ff010113          	addi	sp,sp,-16
    800059ac:	00813423          	sd	s0,8(sp)
    800059b0:	01010413          	addi	s0,sp,16
    800059b4:	10000737          	lui	a4,0x10000
    800059b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800059bc:	0017f793          	andi	a5,a5,1
    800059c0:	00078c63          	beqz	a5,800059d8 <uartgetc+0x30>
    800059c4:	00074503          	lbu	a0,0(a4)
    800059c8:	0ff57513          	andi	a0,a0,255
    800059cc:	00813403          	ld	s0,8(sp)
    800059d0:	01010113          	addi	sp,sp,16
    800059d4:	00008067          	ret
    800059d8:	fff00513          	li	a0,-1
    800059dc:	ff1ff06f          	j	800059cc <uartgetc+0x24>

00000000800059e0 <uartintr>:
    800059e0:	100007b7          	lui	a5,0x10000
    800059e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800059e8:	0017f793          	andi	a5,a5,1
    800059ec:	0a078463          	beqz	a5,80005a94 <uartintr+0xb4>
    800059f0:	fe010113          	addi	sp,sp,-32
    800059f4:	00813823          	sd	s0,16(sp)
    800059f8:	00913423          	sd	s1,8(sp)
    800059fc:	00113c23          	sd	ra,24(sp)
    80005a00:	02010413          	addi	s0,sp,32
    80005a04:	100004b7          	lui	s1,0x10000
    80005a08:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80005a0c:	0ff57513          	andi	a0,a0,255
    80005a10:	fffff097          	auipc	ra,0xfffff
    80005a14:	534080e7          	jalr	1332(ra) # 80004f44 <consoleintr>
    80005a18:	0054c783          	lbu	a5,5(s1)
    80005a1c:	0017f793          	andi	a5,a5,1
    80005a20:	fe0794e3          	bnez	a5,80005a08 <uartintr+0x28>
    80005a24:	00003617          	auipc	a2,0x3
    80005a28:	fac60613          	addi	a2,a2,-84 # 800089d0 <uart_tx_r>
    80005a2c:	00003517          	auipc	a0,0x3
    80005a30:	fac50513          	addi	a0,a0,-84 # 800089d8 <uart_tx_w>
    80005a34:	00063783          	ld	a5,0(a2)
    80005a38:	00053703          	ld	a4,0(a0)
    80005a3c:	04f70263          	beq	a4,a5,80005a80 <uartintr+0xa0>
    80005a40:	100005b7          	lui	a1,0x10000
    80005a44:	00004817          	auipc	a6,0x4
    80005a48:	24c80813          	addi	a6,a6,588 # 80009c90 <uart_tx_buf>
    80005a4c:	01c0006f          	j	80005a68 <uartintr+0x88>
    80005a50:	0006c703          	lbu	a4,0(a3)
    80005a54:	00f63023          	sd	a5,0(a2)
    80005a58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005a5c:	00063783          	ld	a5,0(a2)
    80005a60:	00053703          	ld	a4,0(a0)
    80005a64:	00f70e63          	beq	a4,a5,80005a80 <uartintr+0xa0>
    80005a68:	01f7f713          	andi	a4,a5,31
    80005a6c:	00e806b3          	add	a3,a6,a4
    80005a70:	0055c703          	lbu	a4,5(a1)
    80005a74:	00178793          	addi	a5,a5,1
    80005a78:	02077713          	andi	a4,a4,32
    80005a7c:	fc071ae3          	bnez	a4,80005a50 <uartintr+0x70>
    80005a80:	01813083          	ld	ra,24(sp)
    80005a84:	01013403          	ld	s0,16(sp)
    80005a88:	00813483          	ld	s1,8(sp)
    80005a8c:	02010113          	addi	sp,sp,32
    80005a90:	00008067          	ret
    80005a94:	00003617          	auipc	a2,0x3
    80005a98:	f3c60613          	addi	a2,a2,-196 # 800089d0 <uart_tx_r>
    80005a9c:	00003517          	auipc	a0,0x3
    80005aa0:	f3c50513          	addi	a0,a0,-196 # 800089d8 <uart_tx_w>
    80005aa4:	00063783          	ld	a5,0(a2)
    80005aa8:	00053703          	ld	a4,0(a0)
    80005aac:	04f70263          	beq	a4,a5,80005af0 <uartintr+0x110>
    80005ab0:	100005b7          	lui	a1,0x10000
    80005ab4:	00004817          	auipc	a6,0x4
    80005ab8:	1dc80813          	addi	a6,a6,476 # 80009c90 <uart_tx_buf>
    80005abc:	01c0006f          	j	80005ad8 <uartintr+0xf8>
    80005ac0:	0006c703          	lbu	a4,0(a3)
    80005ac4:	00f63023          	sd	a5,0(a2)
    80005ac8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005acc:	00063783          	ld	a5,0(a2)
    80005ad0:	00053703          	ld	a4,0(a0)
    80005ad4:	02f70063          	beq	a4,a5,80005af4 <uartintr+0x114>
    80005ad8:	01f7f713          	andi	a4,a5,31
    80005adc:	00e806b3          	add	a3,a6,a4
    80005ae0:	0055c703          	lbu	a4,5(a1)
    80005ae4:	00178793          	addi	a5,a5,1
    80005ae8:	02077713          	andi	a4,a4,32
    80005aec:	fc071ae3          	bnez	a4,80005ac0 <uartintr+0xe0>
    80005af0:	00008067          	ret
    80005af4:	00008067          	ret

0000000080005af8 <kinit>:
    80005af8:	fc010113          	addi	sp,sp,-64
    80005afc:	02913423          	sd	s1,40(sp)
    80005b00:	fffff7b7          	lui	a5,0xfffff
    80005b04:	00005497          	auipc	s1,0x5
    80005b08:	1ab48493          	addi	s1,s1,427 # 8000acaf <end+0xfff>
    80005b0c:	02813823          	sd	s0,48(sp)
    80005b10:	01313c23          	sd	s3,24(sp)
    80005b14:	00f4f4b3          	and	s1,s1,a5
    80005b18:	02113c23          	sd	ra,56(sp)
    80005b1c:	03213023          	sd	s2,32(sp)
    80005b20:	01413823          	sd	s4,16(sp)
    80005b24:	01513423          	sd	s5,8(sp)
    80005b28:	04010413          	addi	s0,sp,64
    80005b2c:	000017b7          	lui	a5,0x1
    80005b30:	01100993          	li	s3,17
    80005b34:	00f487b3          	add	a5,s1,a5
    80005b38:	01b99993          	slli	s3,s3,0x1b
    80005b3c:	06f9e063          	bltu	s3,a5,80005b9c <kinit+0xa4>
    80005b40:	00004a97          	auipc	s5,0x4
    80005b44:	170a8a93          	addi	s5,s5,368 # 80009cb0 <end>
    80005b48:	0754ec63          	bltu	s1,s5,80005bc0 <kinit+0xc8>
    80005b4c:	0734fa63          	bgeu	s1,s3,80005bc0 <kinit+0xc8>
    80005b50:	00088a37          	lui	s4,0x88
    80005b54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005b58:	00003917          	auipc	s2,0x3
    80005b5c:	e8890913          	addi	s2,s2,-376 # 800089e0 <kmem>
    80005b60:	00ca1a13          	slli	s4,s4,0xc
    80005b64:	0140006f          	j	80005b78 <kinit+0x80>
    80005b68:	000017b7          	lui	a5,0x1
    80005b6c:	00f484b3          	add	s1,s1,a5
    80005b70:	0554e863          	bltu	s1,s5,80005bc0 <kinit+0xc8>
    80005b74:	0534f663          	bgeu	s1,s3,80005bc0 <kinit+0xc8>
    80005b78:	00001637          	lui	a2,0x1
    80005b7c:	00100593          	li	a1,1
    80005b80:	00048513          	mv	a0,s1
    80005b84:	00000097          	auipc	ra,0x0
    80005b88:	5e4080e7          	jalr	1508(ra) # 80006168 <__memset>
    80005b8c:	00093783          	ld	a5,0(s2)
    80005b90:	00f4b023          	sd	a5,0(s1)
    80005b94:	00993023          	sd	s1,0(s2)
    80005b98:	fd4498e3          	bne	s1,s4,80005b68 <kinit+0x70>
    80005b9c:	03813083          	ld	ra,56(sp)
    80005ba0:	03013403          	ld	s0,48(sp)
    80005ba4:	02813483          	ld	s1,40(sp)
    80005ba8:	02013903          	ld	s2,32(sp)
    80005bac:	01813983          	ld	s3,24(sp)
    80005bb0:	01013a03          	ld	s4,16(sp)
    80005bb4:	00813a83          	ld	s5,8(sp)
    80005bb8:	04010113          	addi	sp,sp,64
    80005bbc:	00008067          	ret
    80005bc0:	00002517          	auipc	a0,0x2
    80005bc4:	8b850513          	addi	a0,a0,-1864 # 80007478 <digits+0x18>
    80005bc8:	fffff097          	auipc	ra,0xfffff
    80005bcc:	4b4080e7          	jalr	1204(ra) # 8000507c <panic>

0000000080005bd0 <freerange>:
    80005bd0:	fc010113          	addi	sp,sp,-64
    80005bd4:	000017b7          	lui	a5,0x1
    80005bd8:	02913423          	sd	s1,40(sp)
    80005bdc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005be0:	009504b3          	add	s1,a0,s1
    80005be4:	fffff537          	lui	a0,0xfffff
    80005be8:	02813823          	sd	s0,48(sp)
    80005bec:	02113c23          	sd	ra,56(sp)
    80005bf0:	03213023          	sd	s2,32(sp)
    80005bf4:	01313c23          	sd	s3,24(sp)
    80005bf8:	01413823          	sd	s4,16(sp)
    80005bfc:	01513423          	sd	s5,8(sp)
    80005c00:	01613023          	sd	s6,0(sp)
    80005c04:	04010413          	addi	s0,sp,64
    80005c08:	00a4f4b3          	and	s1,s1,a0
    80005c0c:	00f487b3          	add	a5,s1,a5
    80005c10:	06f5e463          	bltu	a1,a5,80005c78 <freerange+0xa8>
    80005c14:	00004a97          	auipc	s5,0x4
    80005c18:	09ca8a93          	addi	s5,s5,156 # 80009cb0 <end>
    80005c1c:	0954e263          	bltu	s1,s5,80005ca0 <freerange+0xd0>
    80005c20:	01100993          	li	s3,17
    80005c24:	01b99993          	slli	s3,s3,0x1b
    80005c28:	0734fc63          	bgeu	s1,s3,80005ca0 <freerange+0xd0>
    80005c2c:	00058a13          	mv	s4,a1
    80005c30:	00003917          	auipc	s2,0x3
    80005c34:	db090913          	addi	s2,s2,-592 # 800089e0 <kmem>
    80005c38:	00002b37          	lui	s6,0x2
    80005c3c:	0140006f          	j	80005c50 <freerange+0x80>
    80005c40:	000017b7          	lui	a5,0x1
    80005c44:	00f484b3          	add	s1,s1,a5
    80005c48:	0554ec63          	bltu	s1,s5,80005ca0 <freerange+0xd0>
    80005c4c:	0534fa63          	bgeu	s1,s3,80005ca0 <freerange+0xd0>
    80005c50:	00001637          	lui	a2,0x1
    80005c54:	00100593          	li	a1,1
    80005c58:	00048513          	mv	a0,s1
    80005c5c:	00000097          	auipc	ra,0x0
    80005c60:	50c080e7          	jalr	1292(ra) # 80006168 <__memset>
    80005c64:	00093703          	ld	a4,0(s2)
    80005c68:	016487b3          	add	a5,s1,s6
    80005c6c:	00e4b023          	sd	a4,0(s1)
    80005c70:	00993023          	sd	s1,0(s2)
    80005c74:	fcfa76e3          	bgeu	s4,a5,80005c40 <freerange+0x70>
    80005c78:	03813083          	ld	ra,56(sp)
    80005c7c:	03013403          	ld	s0,48(sp)
    80005c80:	02813483          	ld	s1,40(sp)
    80005c84:	02013903          	ld	s2,32(sp)
    80005c88:	01813983          	ld	s3,24(sp)
    80005c8c:	01013a03          	ld	s4,16(sp)
    80005c90:	00813a83          	ld	s5,8(sp)
    80005c94:	00013b03          	ld	s6,0(sp)
    80005c98:	04010113          	addi	sp,sp,64
    80005c9c:	00008067          	ret
    80005ca0:	00001517          	auipc	a0,0x1
    80005ca4:	7d850513          	addi	a0,a0,2008 # 80007478 <digits+0x18>
    80005ca8:	fffff097          	auipc	ra,0xfffff
    80005cac:	3d4080e7          	jalr	980(ra) # 8000507c <panic>

0000000080005cb0 <kfree>:
    80005cb0:	fe010113          	addi	sp,sp,-32
    80005cb4:	00813823          	sd	s0,16(sp)
    80005cb8:	00113c23          	sd	ra,24(sp)
    80005cbc:	00913423          	sd	s1,8(sp)
    80005cc0:	02010413          	addi	s0,sp,32
    80005cc4:	03451793          	slli	a5,a0,0x34
    80005cc8:	04079c63          	bnez	a5,80005d20 <kfree+0x70>
    80005ccc:	00004797          	auipc	a5,0x4
    80005cd0:	fe478793          	addi	a5,a5,-28 # 80009cb0 <end>
    80005cd4:	00050493          	mv	s1,a0
    80005cd8:	04f56463          	bltu	a0,a5,80005d20 <kfree+0x70>
    80005cdc:	01100793          	li	a5,17
    80005ce0:	01b79793          	slli	a5,a5,0x1b
    80005ce4:	02f57e63          	bgeu	a0,a5,80005d20 <kfree+0x70>
    80005ce8:	00001637          	lui	a2,0x1
    80005cec:	00100593          	li	a1,1
    80005cf0:	00000097          	auipc	ra,0x0
    80005cf4:	478080e7          	jalr	1144(ra) # 80006168 <__memset>
    80005cf8:	00003797          	auipc	a5,0x3
    80005cfc:	ce878793          	addi	a5,a5,-792 # 800089e0 <kmem>
    80005d00:	0007b703          	ld	a4,0(a5)
    80005d04:	01813083          	ld	ra,24(sp)
    80005d08:	01013403          	ld	s0,16(sp)
    80005d0c:	00e4b023          	sd	a4,0(s1)
    80005d10:	0097b023          	sd	s1,0(a5)
    80005d14:	00813483          	ld	s1,8(sp)
    80005d18:	02010113          	addi	sp,sp,32
    80005d1c:	00008067          	ret
    80005d20:	00001517          	auipc	a0,0x1
    80005d24:	75850513          	addi	a0,a0,1880 # 80007478 <digits+0x18>
    80005d28:	fffff097          	auipc	ra,0xfffff
    80005d2c:	354080e7          	jalr	852(ra) # 8000507c <panic>

0000000080005d30 <kalloc>:
    80005d30:	fe010113          	addi	sp,sp,-32
    80005d34:	00813823          	sd	s0,16(sp)
    80005d38:	00913423          	sd	s1,8(sp)
    80005d3c:	00113c23          	sd	ra,24(sp)
    80005d40:	02010413          	addi	s0,sp,32
    80005d44:	00003797          	auipc	a5,0x3
    80005d48:	c9c78793          	addi	a5,a5,-868 # 800089e0 <kmem>
    80005d4c:	0007b483          	ld	s1,0(a5)
    80005d50:	02048063          	beqz	s1,80005d70 <kalloc+0x40>
    80005d54:	0004b703          	ld	a4,0(s1)
    80005d58:	00001637          	lui	a2,0x1
    80005d5c:	00500593          	li	a1,5
    80005d60:	00048513          	mv	a0,s1
    80005d64:	00e7b023          	sd	a4,0(a5)
    80005d68:	00000097          	auipc	ra,0x0
    80005d6c:	400080e7          	jalr	1024(ra) # 80006168 <__memset>
    80005d70:	01813083          	ld	ra,24(sp)
    80005d74:	01013403          	ld	s0,16(sp)
    80005d78:	00048513          	mv	a0,s1
    80005d7c:	00813483          	ld	s1,8(sp)
    80005d80:	02010113          	addi	sp,sp,32
    80005d84:	00008067          	ret

0000000080005d88 <initlock>:
    80005d88:	ff010113          	addi	sp,sp,-16
    80005d8c:	00813423          	sd	s0,8(sp)
    80005d90:	01010413          	addi	s0,sp,16
    80005d94:	00813403          	ld	s0,8(sp)
    80005d98:	00b53423          	sd	a1,8(a0)
    80005d9c:	00052023          	sw	zero,0(a0)
    80005da0:	00053823          	sd	zero,16(a0)
    80005da4:	01010113          	addi	sp,sp,16
    80005da8:	00008067          	ret

0000000080005dac <acquire>:
    80005dac:	fe010113          	addi	sp,sp,-32
    80005db0:	00813823          	sd	s0,16(sp)
    80005db4:	00913423          	sd	s1,8(sp)
    80005db8:	00113c23          	sd	ra,24(sp)
    80005dbc:	01213023          	sd	s2,0(sp)
    80005dc0:	02010413          	addi	s0,sp,32
    80005dc4:	00050493          	mv	s1,a0
    80005dc8:	10002973          	csrr	s2,sstatus
    80005dcc:	100027f3          	csrr	a5,sstatus
    80005dd0:	ffd7f793          	andi	a5,a5,-3
    80005dd4:	10079073          	csrw	sstatus,a5
    80005dd8:	fffff097          	auipc	ra,0xfffff
    80005ddc:	8e4080e7          	jalr	-1820(ra) # 800046bc <mycpu>
    80005de0:	07852783          	lw	a5,120(a0)
    80005de4:	06078e63          	beqz	a5,80005e60 <acquire+0xb4>
    80005de8:	fffff097          	auipc	ra,0xfffff
    80005dec:	8d4080e7          	jalr	-1836(ra) # 800046bc <mycpu>
    80005df0:	07852783          	lw	a5,120(a0)
    80005df4:	0004a703          	lw	a4,0(s1)
    80005df8:	0017879b          	addiw	a5,a5,1
    80005dfc:	06f52c23          	sw	a5,120(a0)
    80005e00:	04071063          	bnez	a4,80005e40 <acquire+0x94>
    80005e04:	00100713          	li	a4,1
    80005e08:	00070793          	mv	a5,a4
    80005e0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005e10:	0007879b          	sext.w	a5,a5
    80005e14:	fe079ae3          	bnez	a5,80005e08 <acquire+0x5c>
    80005e18:	0ff0000f          	fence
    80005e1c:	fffff097          	auipc	ra,0xfffff
    80005e20:	8a0080e7          	jalr	-1888(ra) # 800046bc <mycpu>
    80005e24:	01813083          	ld	ra,24(sp)
    80005e28:	01013403          	ld	s0,16(sp)
    80005e2c:	00a4b823          	sd	a0,16(s1)
    80005e30:	00013903          	ld	s2,0(sp)
    80005e34:	00813483          	ld	s1,8(sp)
    80005e38:	02010113          	addi	sp,sp,32
    80005e3c:	00008067          	ret
    80005e40:	0104b903          	ld	s2,16(s1)
    80005e44:	fffff097          	auipc	ra,0xfffff
    80005e48:	878080e7          	jalr	-1928(ra) # 800046bc <mycpu>
    80005e4c:	faa91ce3          	bne	s2,a0,80005e04 <acquire+0x58>
    80005e50:	00001517          	auipc	a0,0x1
    80005e54:	63050513          	addi	a0,a0,1584 # 80007480 <digits+0x20>
    80005e58:	fffff097          	auipc	ra,0xfffff
    80005e5c:	224080e7          	jalr	548(ra) # 8000507c <panic>
    80005e60:	00195913          	srli	s2,s2,0x1
    80005e64:	fffff097          	auipc	ra,0xfffff
    80005e68:	858080e7          	jalr	-1960(ra) # 800046bc <mycpu>
    80005e6c:	00197913          	andi	s2,s2,1
    80005e70:	07252e23          	sw	s2,124(a0)
    80005e74:	f75ff06f          	j	80005de8 <acquire+0x3c>

0000000080005e78 <release>:
    80005e78:	fe010113          	addi	sp,sp,-32
    80005e7c:	00813823          	sd	s0,16(sp)
    80005e80:	00113c23          	sd	ra,24(sp)
    80005e84:	00913423          	sd	s1,8(sp)
    80005e88:	01213023          	sd	s2,0(sp)
    80005e8c:	02010413          	addi	s0,sp,32
    80005e90:	00052783          	lw	a5,0(a0)
    80005e94:	00079a63          	bnez	a5,80005ea8 <release+0x30>
    80005e98:	00001517          	auipc	a0,0x1
    80005e9c:	5f050513          	addi	a0,a0,1520 # 80007488 <digits+0x28>
    80005ea0:	fffff097          	auipc	ra,0xfffff
    80005ea4:	1dc080e7          	jalr	476(ra) # 8000507c <panic>
    80005ea8:	01053903          	ld	s2,16(a0)
    80005eac:	00050493          	mv	s1,a0
    80005eb0:	fffff097          	auipc	ra,0xfffff
    80005eb4:	80c080e7          	jalr	-2036(ra) # 800046bc <mycpu>
    80005eb8:	fea910e3          	bne	s2,a0,80005e98 <release+0x20>
    80005ebc:	0004b823          	sd	zero,16(s1)
    80005ec0:	0ff0000f          	fence
    80005ec4:	0f50000f          	fence	iorw,ow
    80005ec8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80005ecc:	ffffe097          	auipc	ra,0xffffe
    80005ed0:	7f0080e7          	jalr	2032(ra) # 800046bc <mycpu>
    80005ed4:	100027f3          	csrr	a5,sstatus
    80005ed8:	0027f793          	andi	a5,a5,2
    80005edc:	04079a63          	bnez	a5,80005f30 <release+0xb8>
    80005ee0:	07852783          	lw	a5,120(a0)
    80005ee4:	02f05e63          	blez	a5,80005f20 <release+0xa8>
    80005ee8:	fff7871b          	addiw	a4,a5,-1
    80005eec:	06e52c23          	sw	a4,120(a0)
    80005ef0:	00071c63          	bnez	a4,80005f08 <release+0x90>
    80005ef4:	07c52783          	lw	a5,124(a0)
    80005ef8:	00078863          	beqz	a5,80005f08 <release+0x90>
    80005efc:	100027f3          	csrr	a5,sstatus
    80005f00:	0027e793          	ori	a5,a5,2
    80005f04:	10079073          	csrw	sstatus,a5
    80005f08:	01813083          	ld	ra,24(sp)
    80005f0c:	01013403          	ld	s0,16(sp)
    80005f10:	00813483          	ld	s1,8(sp)
    80005f14:	00013903          	ld	s2,0(sp)
    80005f18:	02010113          	addi	sp,sp,32
    80005f1c:	00008067          	ret
    80005f20:	00001517          	auipc	a0,0x1
    80005f24:	58850513          	addi	a0,a0,1416 # 800074a8 <digits+0x48>
    80005f28:	fffff097          	auipc	ra,0xfffff
    80005f2c:	154080e7          	jalr	340(ra) # 8000507c <panic>
    80005f30:	00001517          	auipc	a0,0x1
    80005f34:	56050513          	addi	a0,a0,1376 # 80007490 <digits+0x30>
    80005f38:	fffff097          	auipc	ra,0xfffff
    80005f3c:	144080e7          	jalr	324(ra) # 8000507c <panic>

0000000080005f40 <holding>:
    80005f40:	00052783          	lw	a5,0(a0)
    80005f44:	00079663          	bnez	a5,80005f50 <holding+0x10>
    80005f48:	00000513          	li	a0,0
    80005f4c:	00008067          	ret
    80005f50:	fe010113          	addi	sp,sp,-32
    80005f54:	00813823          	sd	s0,16(sp)
    80005f58:	00913423          	sd	s1,8(sp)
    80005f5c:	00113c23          	sd	ra,24(sp)
    80005f60:	02010413          	addi	s0,sp,32
    80005f64:	01053483          	ld	s1,16(a0)
    80005f68:	ffffe097          	auipc	ra,0xffffe
    80005f6c:	754080e7          	jalr	1876(ra) # 800046bc <mycpu>
    80005f70:	01813083          	ld	ra,24(sp)
    80005f74:	01013403          	ld	s0,16(sp)
    80005f78:	40a48533          	sub	a0,s1,a0
    80005f7c:	00153513          	seqz	a0,a0
    80005f80:	00813483          	ld	s1,8(sp)
    80005f84:	02010113          	addi	sp,sp,32
    80005f88:	00008067          	ret

0000000080005f8c <push_off>:
    80005f8c:	fe010113          	addi	sp,sp,-32
    80005f90:	00813823          	sd	s0,16(sp)
    80005f94:	00113c23          	sd	ra,24(sp)
    80005f98:	00913423          	sd	s1,8(sp)
    80005f9c:	02010413          	addi	s0,sp,32
    80005fa0:	100024f3          	csrr	s1,sstatus
    80005fa4:	100027f3          	csrr	a5,sstatus
    80005fa8:	ffd7f793          	andi	a5,a5,-3
    80005fac:	10079073          	csrw	sstatus,a5
    80005fb0:	ffffe097          	auipc	ra,0xffffe
    80005fb4:	70c080e7          	jalr	1804(ra) # 800046bc <mycpu>
    80005fb8:	07852783          	lw	a5,120(a0)
    80005fbc:	02078663          	beqz	a5,80005fe8 <push_off+0x5c>
    80005fc0:	ffffe097          	auipc	ra,0xffffe
    80005fc4:	6fc080e7          	jalr	1788(ra) # 800046bc <mycpu>
    80005fc8:	07852783          	lw	a5,120(a0)
    80005fcc:	01813083          	ld	ra,24(sp)
    80005fd0:	01013403          	ld	s0,16(sp)
    80005fd4:	0017879b          	addiw	a5,a5,1
    80005fd8:	06f52c23          	sw	a5,120(a0)
    80005fdc:	00813483          	ld	s1,8(sp)
    80005fe0:	02010113          	addi	sp,sp,32
    80005fe4:	00008067          	ret
    80005fe8:	0014d493          	srli	s1,s1,0x1
    80005fec:	ffffe097          	auipc	ra,0xffffe
    80005ff0:	6d0080e7          	jalr	1744(ra) # 800046bc <mycpu>
    80005ff4:	0014f493          	andi	s1,s1,1
    80005ff8:	06952e23          	sw	s1,124(a0)
    80005ffc:	fc5ff06f          	j	80005fc0 <push_off+0x34>

0000000080006000 <pop_off>:
    80006000:	ff010113          	addi	sp,sp,-16
    80006004:	00813023          	sd	s0,0(sp)
    80006008:	00113423          	sd	ra,8(sp)
    8000600c:	01010413          	addi	s0,sp,16
    80006010:	ffffe097          	auipc	ra,0xffffe
    80006014:	6ac080e7          	jalr	1708(ra) # 800046bc <mycpu>
    80006018:	100027f3          	csrr	a5,sstatus
    8000601c:	0027f793          	andi	a5,a5,2
    80006020:	04079663          	bnez	a5,8000606c <pop_off+0x6c>
    80006024:	07852783          	lw	a5,120(a0)
    80006028:	02f05a63          	blez	a5,8000605c <pop_off+0x5c>
    8000602c:	fff7871b          	addiw	a4,a5,-1
    80006030:	06e52c23          	sw	a4,120(a0)
    80006034:	00071c63          	bnez	a4,8000604c <pop_off+0x4c>
    80006038:	07c52783          	lw	a5,124(a0)
    8000603c:	00078863          	beqz	a5,8000604c <pop_off+0x4c>
    80006040:	100027f3          	csrr	a5,sstatus
    80006044:	0027e793          	ori	a5,a5,2
    80006048:	10079073          	csrw	sstatus,a5
    8000604c:	00813083          	ld	ra,8(sp)
    80006050:	00013403          	ld	s0,0(sp)
    80006054:	01010113          	addi	sp,sp,16
    80006058:	00008067          	ret
    8000605c:	00001517          	auipc	a0,0x1
    80006060:	44c50513          	addi	a0,a0,1100 # 800074a8 <digits+0x48>
    80006064:	fffff097          	auipc	ra,0xfffff
    80006068:	018080e7          	jalr	24(ra) # 8000507c <panic>
    8000606c:	00001517          	auipc	a0,0x1
    80006070:	42450513          	addi	a0,a0,1060 # 80007490 <digits+0x30>
    80006074:	fffff097          	auipc	ra,0xfffff
    80006078:	008080e7          	jalr	8(ra) # 8000507c <panic>

000000008000607c <push_on>:
    8000607c:	fe010113          	addi	sp,sp,-32
    80006080:	00813823          	sd	s0,16(sp)
    80006084:	00113c23          	sd	ra,24(sp)
    80006088:	00913423          	sd	s1,8(sp)
    8000608c:	02010413          	addi	s0,sp,32
    80006090:	100024f3          	csrr	s1,sstatus
    80006094:	100027f3          	csrr	a5,sstatus
    80006098:	0027e793          	ori	a5,a5,2
    8000609c:	10079073          	csrw	sstatus,a5
    800060a0:	ffffe097          	auipc	ra,0xffffe
    800060a4:	61c080e7          	jalr	1564(ra) # 800046bc <mycpu>
    800060a8:	07852783          	lw	a5,120(a0)
    800060ac:	02078663          	beqz	a5,800060d8 <push_on+0x5c>
    800060b0:	ffffe097          	auipc	ra,0xffffe
    800060b4:	60c080e7          	jalr	1548(ra) # 800046bc <mycpu>
    800060b8:	07852783          	lw	a5,120(a0)
    800060bc:	01813083          	ld	ra,24(sp)
    800060c0:	01013403          	ld	s0,16(sp)
    800060c4:	0017879b          	addiw	a5,a5,1
    800060c8:	06f52c23          	sw	a5,120(a0)
    800060cc:	00813483          	ld	s1,8(sp)
    800060d0:	02010113          	addi	sp,sp,32
    800060d4:	00008067          	ret
    800060d8:	0014d493          	srli	s1,s1,0x1
    800060dc:	ffffe097          	auipc	ra,0xffffe
    800060e0:	5e0080e7          	jalr	1504(ra) # 800046bc <mycpu>
    800060e4:	0014f493          	andi	s1,s1,1
    800060e8:	06952e23          	sw	s1,124(a0)
    800060ec:	fc5ff06f          	j	800060b0 <push_on+0x34>

00000000800060f0 <pop_on>:
    800060f0:	ff010113          	addi	sp,sp,-16
    800060f4:	00813023          	sd	s0,0(sp)
    800060f8:	00113423          	sd	ra,8(sp)
    800060fc:	01010413          	addi	s0,sp,16
    80006100:	ffffe097          	auipc	ra,0xffffe
    80006104:	5bc080e7          	jalr	1468(ra) # 800046bc <mycpu>
    80006108:	100027f3          	csrr	a5,sstatus
    8000610c:	0027f793          	andi	a5,a5,2
    80006110:	04078463          	beqz	a5,80006158 <pop_on+0x68>
    80006114:	07852783          	lw	a5,120(a0)
    80006118:	02f05863          	blez	a5,80006148 <pop_on+0x58>
    8000611c:	fff7879b          	addiw	a5,a5,-1
    80006120:	06f52c23          	sw	a5,120(a0)
    80006124:	07853783          	ld	a5,120(a0)
    80006128:	00079863          	bnez	a5,80006138 <pop_on+0x48>
    8000612c:	100027f3          	csrr	a5,sstatus
    80006130:	ffd7f793          	andi	a5,a5,-3
    80006134:	10079073          	csrw	sstatus,a5
    80006138:	00813083          	ld	ra,8(sp)
    8000613c:	00013403          	ld	s0,0(sp)
    80006140:	01010113          	addi	sp,sp,16
    80006144:	00008067          	ret
    80006148:	00001517          	auipc	a0,0x1
    8000614c:	38850513          	addi	a0,a0,904 # 800074d0 <digits+0x70>
    80006150:	fffff097          	auipc	ra,0xfffff
    80006154:	f2c080e7          	jalr	-212(ra) # 8000507c <panic>
    80006158:	00001517          	auipc	a0,0x1
    8000615c:	35850513          	addi	a0,a0,856 # 800074b0 <digits+0x50>
    80006160:	fffff097          	auipc	ra,0xfffff
    80006164:	f1c080e7          	jalr	-228(ra) # 8000507c <panic>

0000000080006168 <__memset>:
    80006168:	ff010113          	addi	sp,sp,-16
    8000616c:	00813423          	sd	s0,8(sp)
    80006170:	01010413          	addi	s0,sp,16
    80006174:	1a060e63          	beqz	a2,80006330 <__memset+0x1c8>
    80006178:	40a007b3          	neg	a5,a0
    8000617c:	0077f793          	andi	a5,a5,7
    80006180:	00778693          	addi	a3,a5,7
    80006184:	00b00813          	li	a6,11
    80006188:	0ff5f593          	andi	a1,a1,255
    8000618c:	fff6071b          	addiw	a4,a2,-1
    80006190:	1b06e663          	bltu	a3,a6,8000633c <__memset+0x1d4>
    80006194:	1cd76463          	bltu	a4,a3,8000635c <__memset+0x1f4>
    80006198:	1a078e63          	beqz	a5,80006354 <__memset+0x1ec>
    8000619c:	00b50023          	sb	a1,0(a0)
    800061a0:	00100713          	li	a4,1
    800061a4:	1ae78463          	beq	a5,a4,8000634c <__memset+0x1e4>
    800061a8:	00b500a3          	sb	a1,1(a0)
    800061ac:	00200713          	li	a4,2
    800061b0:	1ae78a63          	beq	a5,a4,80006364 <__memset+0x1fc>
    800061b4:	00b50123          	sb	a1,2(a0)
    800061b8:	00300713          	li	a4,3
    800061bc:	18e78463          	beq	a5,a4,80006344 <__memset+0x1dc>
    800061c0:	00b501a3          	sb	a1,3(a0)
    800061c4:	00400713          	li	a4,4
    800061c8:	1ae78263          	beq	a5,a4,8000636c <__memset+0x204>
    800061cc:	00b50223          	sb	a1,4(a0)
    800061d0:	00500713          	li	a4,5
    800061d4:	1ae78063          	beq	a5,a4,80006374 <__memset+0x20c>
    800061d8:	00b502a3          	sb	a1,5(a0)
    800061dc:	00700713          	li	a4,7
    800061e0:	18e79e63          	bne	a5,a4,8000637c <__memset+0x214>
    800061e4:	00b50323          	sb	a1,6(a0)
    800061e8:	00700e93          	li	t4,7
    800061ec:	00859713          	slli	a4,a1,0x8
    800061f0:	00e5e733          	or	a4,a1,a4
    800061f4:	01059e13          	slli	t3,a1,0x10
    800061f8:	01c76e33          	or	t3,a4,t3
    800061fc:	01859313          	slli	t1,a1,0x18
    80006200:	006e6333          	or	t1,t3,t1
    80006204:	02059893          	slli	a7,a1,0x20
    80006208:	40f60e3b          	subw	t3,a2,a5
    8000620c:	011368b3          	or	a7,t1,a7
    80006210:	02859813          	slli	a6,a1,0x28
    80006214:	0108e833          	or	a6,a7,a6
    80006218:	03059693          	slli	a3,a1,0x30
    8000621c:	003e589b          	srliw	a7,t3,0x3
    80006220:	00d866b3          	or	a3,a6,a3
    80006224:	03859713          	slli	a4,a1,0x38
    80006228:	00389813          	slli	a6,a7,0x3
    8000622c:	00f507b3          	add	a5,a0,a5
    80006230:	00e6e733          	or	a4,a3,a4
    80006234:	000e089b          	sext.w	a7,t3
    80006238:	00f806b3          	add	a3,a6,a5
    8000623c:	00e7b023          	sd	a4,0(a5)
    80006240:	00878793          	addi	a5,a5,8
    80006244:	fed79ce3          	bne	a5,a3,8000623c <__memset+0xd4>
    80006248:	ff8e7793          	andi	a5,t3,-8
    8000624c:	0007871b          	sext.w	a4,a5
    80006250:	01d787bb          	addw	a5,a5,t4
    80006254:	0ce88e63          	beq	a7,a4,80006330 <__memset+0x1c8>
    80006258:	00f50733          	add	a4,a0,a5
    8000625c:	00b70023          	sb	a1,0(a4)
    80006260:	0017871b          	addiw	a4,a5,1
    80006264:	0cc77663          	bgeu	a4,a2,80006330 <__memset+0x1c8>
    80006268:	00e50733          	add	a4,a0,a4
    8000626c:	00b70023          	sb	a1,0(a4)
    80006270:	0027871b          	addiw	a4,a5,2
    80006274:	0ac77e63          	bgeu	a4,a2,80006330 <__memset+0x1c8>
    80006278:	00e50733          	add	a4,a0,a4
    8000627c:	00b70023          	sb	a1,0(a4)
    80006280:	0037871b          	addiw	a4,a5,3
    80006284:	0ac77663          	bgeu	a4,a2,80006330 <__memset+0x1c8>
    80006288:	00e50733          	add	a4,a0,a4
    8000628c:	00b70023          	sb	a1,0(a4)
    80006290:	0047871b          	addiw	a4,a5,4
    80006294:	08c77e63          	bgeu	a4,a2,80006330 <__memset+0x1c8>
    80006298:	00e50733          	add	a4,a0,a4
    8000629c:	00b70023          	sb	a1,0(a4)
    800062a0:	0057871b          	addiw	a4,a5,5
    800062a4:	08c77663          	bgeu	a4,a2,80006330 <__memset+0x1c8>
    800062a8:	00e50733          	add	a4,a0,a4
    800062ac:	00b70023          	sb	a1,0(a4)
    800062b0:	0067871b          	addiw	a4,a5,6
    800062b4:	06c77e63          	bgeu	a4,a2,80006330 <__memset+0x1c8>
    800062b8:	00e50733          	add	a4,a0,a4
    800062bc:	00b70023          	sb	a1,0(a4)
    800062c0:	0077871b          	addiw	a4,a5,7
    800062c4:	06c77663          	bgeu	a4,a2,80006330 <__memset+0x1c8>
    800062c8:	00e50733          	add	a4,a0,a4
    800062cc:	00b70023          	sb	a1,0(a4)
    800062d0:	0087871b          	addiw	a4,a5,8
    800062d4:	04c77e63          	bgeu	a4,a2,80006330 <__memset+0x1c8>
    800062d8:	00e50733          	add	a4,a0,a4
    800062dc:	00b70023          	sb	a1,0(a4)
    800062e0:	0097871b          	addiw	a4,a5,9
    800062e4:	04c77663          	bgeu	a4,a2,80006330 <__memset+0x1c8>
    800062e8:	00e50733          	add	a4,a0,a4
    800062ec:	00b70023          	sb	a1,0(a4)
    800062f0:	00a7871b          	addiw	a4,a5,10
    800062f4:	02c77e63          	bgeu	a4,a2,80006330 <__memset+0x1c8>
    800062f8:	00e50733          	add	a4,a0,a4
    800062fc:	00b70023          	sb	a1,0(a4)
    80006300:	00b7871b          	addiw	a4,a5,11
    80006304:	02c77663          	bgeu	a4,a2,80006330 <__memset+0x1c8>
    80006308:	00e50733          	add	a4,a0,a4
    8000630c:	00b70023          	sb	a1,0(a4)
    80006310:	00c7871b          	addiw	a4,a5,12
    80006314:	00c77e63          	bgeu	a4,a2,80006330 <__memset+0x1c8>
    80006318:	00e50733          	add	a4,a0,a4
    8000631c:	00b70023          	sb	a1,0(a4)
    80006320:	00d7879b          	addiw	a5,a5,13
    80006324:	00c7f663          	bgeu	a5,a2,80006330 <__memset+0x1c8>
    80006328:	00f507b3          	add	a5,a0,a5
    8000632c:	00b78023          	sb	a1,0(a5)
    80006330:	00813403          	ld	s0,8(sp)
    80006334:	01010113          	addi	sp,sp,16
    80006338:	00008067          	ret
    8000633c:	00b00693          	li	a3,11
    80006340:	e55ff06f          	j	80006194 <__memset+0x2c>
    80006344:	00300e93          	li	t4,3
    80006348:	ea5ff06f          	j	800061ec <__memset+0x84>
    8000634c:	00100e93          	li	t4,1
    80006350:	e9dff06f          	j	800061ec <__memset+0x84>
    80006354:	00000e93          	li	t4,0
    80006358:	e95ff06f          	j	800061ec <__memset+0x84>
    8000635c:	00000793          	li	a5,0
    80006360:	ef9ff06f          	j	80006258 <__memset+0xf0>
    80006364:	00200e93          	li	t4,2
    80006368:	e85ff06f          	j	800061ec <__memset+0x84>
    8000636c:	00400e93          	li	t4,4
    80006370:	e7dff06f          	j	800061ec <__memset+0x84>
    80006374:	00500e93          	li	t4,5
    80006378:	e75ff06f          	j	800061ec <__memset+0x84>
    8000637c:	00600e93          	li	t4,6
    80006380:	e6dff06f          	j	800061ec <__memset+0x84>

0000000080006384 <__memmove>:
    80006384:	ff010113          	addi	sp,sp,-16
    80006388:	00813423          	sd	s0,8(sp)
    8000638c:	01010413          	addi	s0,sp,16
    80006390:	0e060863          	beqz	a2,80006480 <__memmove+0xfc>
    80006394:	fff6069b          	addiw	a3,a2,-1
    80006398:	0006881b          	sext.w	a6,a3
    8000639c:	0ea5e863          	bltu	a1,a0,8000648c <__memmove+0x108>
    800063a0:	00758713          	addi	a4,a1,7
    800063a4:	00a5e7b3          	or	a5,a1,a0
    800063a8:	40a70733          	sub	a4,a4,a0
    800063ac:	0077f793          	andi	a5,a5,7
    800063b0:	00f73713          	sltiu	a4,a4,15
    800063b4:	00174713          	xori	a4,a4,1
    800063b8:	0017b793          	seqz	a5,a5
    800063bc:	00e7f7b3          	and	a5,a5,a4
    800063c0:	10078863          	beqz	a5,800064d0 <__memmove+0x14c>
    800063c4:	00900793          	li	a5,9
    800063c8:	1107f463          	bgeu	a5,a6,800064d0 <__memmove+0x14c>
    800063cc:	0036581b          	srliw	a6,a2,0x3
    800063d0:	fff8081b          	addiw	a6,a6,-1
    800063d4:	02081813          	slli	a6,a6,0x20
    800063d8:	01d85893          	srli	a7,a6,0x1d
    800063dc:	00858813          	addi	a6,a1,8
    800063e0:	00058793          	mv	a5,a1
    800063e4:	00050713          	mv	a4,a0
    800063e8:	01088833          	add	a6,a7,a6
    800063ec:	0007b883          	ld	a7,0(a5)
    800063f0:	00878793          	addi	a5,a5,8
    800063f4:	00870713          	addi	a4,a4,8
    800063f8:	ff173c23          	sd	a7,-8(a4)
    800063fc:	ff0798e3          	bne	a5,a6,800063ec <__memmove+0x68>
    80006400:	ff867713          	andi	a4,a2,-8
    80006404:	02071793          	slli	a5,a4,0x20
    80006408:	0207d793          	srli	a5,a5,0x20
    8000640c:	00f585b3          	add	a1,a1,a5
    80006410:	40e686bb          	subw	a3,a3,a4
    80006414:	00f507b3          	add	a5,a0,a5
    80006418:	06e60463          	beq	a2,a4,80006480 <__memmove+0xfc>
    8000641c:	0005c703          	lbu	a4,0(a1)
    80006420:	00e78023          	sb	a4,0(a5)
    80006424:	04068e63          	beqz	a3,80006480 <__memmove+0xfc>
    80006428:	0015c603          	lbu	a2,1(a1)
    8000642c:	00100713          	li	a4,1
    80006430:	00c780a3          	sb	a2,1(a5)
    80006434:	04e68663          	beq	a3,a4,80006480 <__memmove+0xfc>
    80006438:	0025c603          	lbu	a2,2(a1)
    8000643c:	00200713          	li	a4,2
    80006440:	00c78123          	sb	a2,2(a5)
    80006444:	02e68e63          	beq	a3,a4,80006480 <__memmove+0xfc>
    80006448:	0035c603          	lbu	a2,3(a1)
    8000644c:	00300713          	li	a4,3
    80006450:	00c781a3          	sb	a2,3(a5)
    80006454:	02e68663          	beq	a3,a4,80006480 <__memmove+0xfc>
    80006458:	0045c603          	lbu	a2,4(a1)
    8000645c:	00400713          	li	a4,4
    80006460:	00c78223          	sb	a2,4(a5)
    80006464:	00e68e63          	beq	a3,a4,80006480 <__memmove+0xfc>
    80006468:	0055c603          	lbu	a2,5(a1)
    8000646c:	00500713          	li	a4,5
    80006470:	00c782a3          	sb	a2,5(a5)
    80006474:	00e68663          	beq	a3,a4,80006480 <__memmove+0xfc>
    80006478:	0065c703          	lbu	a4,6(a1)
    8000647c:	00e78323          	sb	a4,6(a5)
    80006480:	00813403          	ld	s0,8(sp)
    80006484:	01010113          	addi	sp,sp,16
    80006488:	00008067          	ret
    8000648c:	02061713          	slli	a4,a2,0x20
    80006490:	02075713          	srli	a4,a4,0x20
    80006494:	00e587b3          	add	a5,a1,a4
    80006498:	f0f574e3          	bgeu	a0,a5,800063a0 <__memmove+0x1c>
    8000649c:	02069613          	slli	a2,a3,0x20
    800064a0:	02065613          	srli	a2,a2,0x20
    800064a4:	fff64613          	not	a2,a2
    800064a8:	00e50733          	add	a4,a0,a4
    800064ac:	00c78633          	add	a2,a5,a2
    800064b0:	fff7c683          	lbu	a3,-1(a5)
    800064b4:	fff78793          	addi	a5,a5,-1
    800064b8:	fff70713          	addi	a4,a4,-1
    800064bc:	00d70023          	sb	a3,0(a4)
    800064c0:	fec798e3          	bne	a5,a2,800064b0 <__memmove+0x12c>
    800064c4:	00813403          	ld	s0,8(sp)
    800064c8:	01010113          	addi	sp,sp,16
    800064cc:	00008067          	ret
    800064d0:	02069713          	slli	a4,a3,0x20
    800064d4:	02075713          	srli	a4,a4,0x20
    800064d8:	00170713          	addi	a4,a4,1
    800064dc:	00e50733          	add	a4,a0,a4
    800064e0:	00050793          	mv	a5,a0
    800064e4:	0005c683          	lbu	a3,0(a1)
    800064e8:	00178793          	addi	a5,a5,1
    800064ec:	00158593          	addi	a1,a1,1
    800064f0:	fed78fa3          	sb	a3,-1(a5)
    800064f4:	fee798e3          	bne	a5,a4,800064e4 <__memmove+0x160>
    800064f8:	f89ff06f          	j	80006480 <__memmove+0xfc>

00000000800064fc <__putc>:
    800064fc:	fe010113          	addi	sp,sp,-32
    80006500:	00813823          	sd	s0,16(sp)
    80006504:	00113c23          	sd	ra,24(sp)
    80006508:	02010413          	addi	s0,sp,32
    8000650c:	00050793          	mv	a5,a0
    80006510:	fef40593          	addi	a1,s0,-17
    80006514:	00100613          	li	a2,1
    80006518:	00000513          	li	a0,0
    8000651c:	fef407a3          	sb	a5,-17(s0)
    80006520:	fffff097          	auipc	ra,0xfffff
    80006524:	b3c080e7          	jalr	-1220(ra) # 8000505c <console_write>
    80006528:	01813083          	ld	ra,24(sp)
    8000652c:	01013403          	ld	s0,16(sp)
    80006530:	02010113          	addi	sp,sp,32
    80006534:	00008067          	ret

0000000080006538 <__getc>:
    80006538:	fe010113          	addi	sp,sp,-32
    8000653c:	00813823          	sd	s0,16(sp)
    80006540:	00113c23          	sd	ra,24(sp)
    80006544:	02010413          	addi	s0,sp,32
    80006548:	fe840593          	addi	a1,s0,-24
    8000654c:	00100613          	li	a2,1
    80006550:	00000513          	li	a0,0
    80006554:	fffff097          	auipc	ra,0xfffff
    80006558:	ae8080e7          	jalr	-1304(ra) # 8000503c <console_read>
    8000655c:	fe844503          	lbu	a0,-24(s0)
    80006560:	01813083          	ld	ra,24(sp)
    80006564:	01013403          	ld	s0,16(sp)
    80006568:	02010113          	addi	sp,sp,32
    8000656c:	00008067          	ret

0000000080006570 <console_handler>:
    80006570:	fe010113          	addi	sp,sp,-32
    80006574:	00813823          	sd	s0,16(sp)
    80006578:	00113c23          	sd	ra,24(sp)
    8000657c:	00913423          	sd	s1,8(sp)
    80006580:	02010413          	addi	s0,sp,32
    80006584:	14202773          	csrr	a4,scause
    80006588:	100027f3          	csrr	a5,sstatus
    8000658c:	0027f793          	andi	a5,a5,2
    80006590:	06079e63          	bnez	a5,8000660c <console_handler+0x9c>
    80006594:	00074c63          	bltz	a4,800065ac <console_handler+0x3c>
    80006598:	01813083          	ld	ra,24(sp)
    8000659c:	01013403          	ld	s0,16(sp)
    800065a0:	00813483          	ld	s1,8(sp)
    800065a4:	02010113          	addi	sp,sp,32
    800065a8:	00008067          	ret
    800065ac:	0ff77713          	andi	a4,a4,255
    800065b0:	00900793          	li	a5,9
    800065b4:	fef712e3          	bne	a4,a5,80006598 <console_handler+0x28>
    800065b8:	ffffe097          	auipc	ra,0xffffe
    800065bc:	6dc080e7          	jalr	1756(ra) # 80004c94 <plic_claim>
    800065c0:	00a00793          	li	a5,10
    800065c4:	00050493          	mv	s1,a0
    800065c8:	02f50c63          	beq	a0,a5,80006600 <console_handler+0x90>
    800065cc:	fc0506e3          	beqz	a0,80006598 <console_handler+0x28>
    800065d0:	00050593          	mv	a1,a0
    800065d4:	00001517          	auipc	a0,0x1
    800065d8:	e0450513          	addi	a0,a0,-508 # 800073d8 <CONSOLE_STATUS+0x3c8>
    800065dc:	fffff097          	auipc	ra,0xfffff
    800065e0:	afc080e7          	jalr	-1284(ra) # 800050d8 <__printf>
    800065e4:	01013403          	ld	s0,16(sp)
    800065e8:	01813083          	ld	ra,24(sp)
    800065ec:	00048513          	mv	a0,s1
    800065f0:	00813483          	ld	s1,8(sp)
    800065f4:	02010113          	addi	sp,sp,32
    800065f8:	ffffe317          	auipc	t1,0xffffe
    800065fc:	6d430067          	jr	1748(t1) # 80004ccc <plic_complete>
    80006600:	fffff097          	auipc	ra,0xfffff
    80006604:	3e0080e7          	jalr	992(ra) # 800059e0 <uartintr>
    80006608:	fddff06f          	j	800065e4 <console_handler+0x74>
    8000660c:	00001517          	auipc	a0,0x1
    80006610:	ecc50513          	addi	a0,a0,-308 # 800074d8 <digits+0x78>
    80006614:	fffff097          	auipc	ra,0xfffff
    80006618:	a68080e7          	jalr	-1432(ra) # 8000507c <panic>
	...
