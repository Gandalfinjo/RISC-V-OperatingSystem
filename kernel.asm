
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	bb813103          	ld	sp,-1096(sp) # 80008bb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5e0040ef          	jal	ra,800045fc <start>

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
    80001088:	ba22be23          	sd	sp,-1092(t0) # 80008c40 <framePointer>

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
    8000142c:	7f870713          	addi	a4,a4,2040 # 80008c20 <_ZN7KThread8staticIdE>
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
    800014c0:	76470713          	addi	a4,a4,1892 # 80008c20 <_ZN7KThread8staticIdE>
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
    80001558:	c44080e7          	jalr	-956(ra) # 80002198 <_ZN15MemoryAllocator8mem_freeEPv>
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
    800015a0:	afc080e7          	jalr	-1284(ra) # 80002098 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001604:	a98080e7          	jalr	-1384(ra) # 80002098 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001628:	b74080e7          	jalr	-1164(ra) # 80002198 <_ZN15MemoryAllocator8mem_freeEPv>
    8000162c:	00090513          	mv	a0,s2
    80001630:	00008097          	auipc	ra,0x8
    80001634:	718080e7          	jalr	1816(ra) # 80009d48 <_Unwind_Resume>
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
    800016c8:	5644b483          	ld	s1,1380(s1) # 80008c28 <_ZN7KThread7runningE>

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
    800016e8:	54a7b223          	sd	a0,1348(a5) # 80008c28 <_ZN7KThread7runningE>
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
    8000170c:	5205b583          	ld	a1,1312(a1) # 80008c28 <_ZN7KThread7runningE>
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
    80001754:	a48080e7          	jalr	-1464(ra) # 80002198 <_ZN15MemoryAllocator8mem_freeEPv>
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
    800017a0:	48448493          	addi	s1,s1,1156 # 80008c20 <_ZN7KThread8staticIdE>
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
    800017ec:	44853503          	ld	a0,1096(a0) # 80008c30 <_ZN9Scheduler4headE>
    800017f0:	00050c63          	beqz	a0,80001808 <_ZN9Scheduler3getEv+0x2c>

    KThread* thread = head;
    head = head->schedulerNext;
    800017f4:	03853783          	ld	a5,56(a0)
    800017f8:	00007717          	auipc	a4,0x7
    800017fc:	42f73c23          	sd	a5,1080(a4) # 80008c30 <_ZN9Scheduler4headE>

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
    80001818:	4207b223          	sd	zero,1060(a5) # 80008c38 <_ZN9Scheduler4tailE>
    8000181c:	fe9ff06f          	j	80001804 <_ZN9Scheduler3getEv+0x28>

0000000080001820 <_ZN9Scheduler3putEP7KThread>:

void Scheduler::put(KThread* thread) {
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00813423          	sd	s0,8(sp)
    80001828:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    8000182c:	00007797          	auipc	a5,0x7
    80001830:	4047b783          	ld	a5,1028(a5) # 80008c30 <_ZN9Scheduler4headE>
    80001834:	02078263          	beqz	a5,80001858 <_ZN9Scheduler3putEP7KThread+0x38>
    else tail->schedulerNext = thread;
    80001838:	00007797          	auipc	a5,0x7
    8000183c:	4007b783          	ld	a5,1024(a5) # 80008c38 <_ZN9Scheduler4tailE>
    80001840:	02a7bc23          	sd	a0,56(a5)
    tail = thread;
    80001844:	00007797          	auipc	a5,0x7
    80001848:	3ea7ba23          	sd	a0,1012(a5) # 80008c38 <_ZN9Scheduler4tailE>
}
    8000184c:	00813403          	ld	s0,8(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret
    if (!head) head = thread;
    80001858:	00007797          	auipc	a5,0x7
    8000185c:	3ca7bc23          	sd	a0,984(a5) # 80008c30 <_ZN9Scheduler4headE>
    80001860:	fe5ff06f          	j	80001844 <_ZN9Scheduler3putEP7KThread+0x24>

0000000080001864 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80001864:	ff010113          	addi	sp,sp,-16
    80001868:	00813423          	sd	s0,8(sp)
    8000186c:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80001870:	00007517          	auipc	a0,0x7
    80001874:	3c053503          	ld	a0,960(a0) # 80008c30 <_ZN9Scheduler4headE>
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
    8000189c:	330080e7          	jalr	816(ra) # 80003bc8 <_Z8userMainv>
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
    800018c4:	788080e7          	jalr	1928(ra) # 80002048 <_ZN15MemoryAllocator8initHeapEv>
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
    800018e8:	2ec7b783          	ld	a5,748(a5) # 80008bd0 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001944:	17878793          	addi	a5,a5,376 # 80008ab8 <_ZTV6Thread+0x10>
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
    800019c8:	11c78793          	addi	a5,a5,284 # 80008ae0 <_ZTV9Semaphore+0x10>
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
    80001b1c:	fa078793          	addi	a5,a5,-96 # 80008ab8 <_ZTV6Thread+0x10>
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
    80001b4c:	f7078793          	addi	a5,a5,-144 # 80008ab8 <_ZTV6Thread+0x10>
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
    80001bfc:	ee878793          	addi	a5,a5,-280 # 80008ae0 <_ZTV9Semaphore+0x10>
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
    80001d18:	eac7b783          	ld	a5,-340(a5) # 80008bc0 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001d80:	2a069063          	bnez	a3,80002020 <_ZN5Riscv11trapHandlerEv+0x2f4>
        mc_sip(SIP_SSIP);
    }
    else if (interrupt == 1 && cause == 9) {
    80001d84:	2a069863          	bnez	a3,80002034 <_ZN5Riscv11trapHandlerEv+0x308>
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
    80001ddc:	e009b983          	ld	s3,-512(s3) # 80008bd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001de0:	0009b783          	ld	a5,0(s3)
    80001de4:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(size));
    80001de8:	00058513          	mv	a0,a1
                void* ptr = MemoryAllocator::mem_alloc(size);
    80001dec:	00000097          	auipc	ra,0x0
    80001df0:	2ac080e7          	jalr	684(ra) # 80002098 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001e14:	dc89b983          	ld	s3,-568(s3) # 80008bd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e18:	0009b783          	ld	a5,0(s3)
    80001e1c:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(addr));
    80001e20:	00058513          	mv	a0,a1
                int status = MemoryAllocator::mem_free(addr);
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	374080e7          	jalr	884(ra) # 80002198 <_ZN15MemoryAllocator8mem_freeEPv>
                asm volatile("mv a0, %0" :: "r"(status));
    80001e2c:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e30:	0009b783          	ld	a5,0(s3)
    80001e34:	04a7b823          	sd	a0,80(a5)
                break;
    80001e38:	fc9ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
    80001e3c:	00000097          	auipc	ra,0x0
    80001e40:	400080e7          	jalr	1024(ra) # 8000223c <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                asm volatile("mv a0, %0" :: "r"(freeSpace));
    80001e44:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e48:	00007797          	auipc	a5,0x7
    80001e4c:	d907b783          	ld	a5,-624(a5) # 80008bd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e50:	0007b783          	ld	a5,0(a5)
    80001e54:	04a7b823          	sd	a0,80(a5)
                break;
    80001e58:	fa9ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	428080e7          	jalr	1064(ra) # 80002284 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                asm volatile("mv a0, %0" :: "r"(largest));
    80001e64:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e68:	00007797          	auipc	a5,0x7
    80001e6c:	d707b783          	ld	a5,-656(a5) # 80008bd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e70:	0007b783          	ld	a5,0(a5)
    80001e74:	04a7b823          	sd	a0,80(a5)
                break;
    80001e78:	f89ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001e7c:	00007797          	auipc	a5,0x7
    80001e80:	d5c7b783          	ld	a5,-676(a5) # 80008bd8 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001ec8:	d147b783          	ld	a5,-748(a5) # 80008bd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ecc:	0007b783          	ld	a5,0(a5)
    80001ed0:	04a7b823          	sd	a0,80(a5)
                break;
    80001ed4:	f2dff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001ed8:	fff00513          	li	a0,-1
    80001edc:	fe9ff06f          	j	80001ec4 <_ZN5Riscv11trapHandlerEv+0x198>
                if (KThread::running) {
    80001ee0:	00007797          	auipc	a5,0x7
    80001ee4:	cf07b783          	ld	a5,-784(a5) # 80008bd0 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001f18:	cc47b783          	ld	a5,-828(a5) # 80008bd8 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001f3c:	39c080e7          	jalr	924(ra) # 800022d4 <_ZN10KSemaphore15createSemaphoreEm>
    80001f40:	00a9b023          	sd	a0,0(s3)
                if (*handle != nullptr) asm volatile("li a0, 0");
    80001f44:	00050e63          	beqz	a0,80001f60 <_ZN5Riscv11trapHandlerEv+0x234>
    80001f48:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001f4c:	00007797          	auipc	a5,0x7
    80001f50:	c8c7b783          	ld	a5,-884(a5) # 80008bd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f54:	0007b783          	ld	a5,0(a5)
    80001f58:	04a7b823          	sd	a0,80(a5)
                break;
    80001f5c:	ea5ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001f60:	fff00513          	li	a0,-1
    80001f64:	fe9ff06f          	j	80001f4c <_ZN5Riscv11trapHandlerEv+0x220>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f68:	00007797          	auipc	a5,0x7
    80001f6c:	c707b783          	ld	a5,-912(a5) # 80008bd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f70:	0007b783          	ld	a5,0(a5)
    80001f74:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001f78:	00058513          	mv	a0,a1
                if (handle) {
    80001f7c:	00050a63          	beqz	a0,80001f90 <_ZN5Riscv11trapHandlerEv+0x264>
                    handle->close();
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	4b8080e7          	jalr	1208(ra) # 80002438 <_ZN10KSemaphore5closeEv>
                    asm volatile("li a0, 0");
    80001f88:	00000513          	li	a0,0
    80001f8c:	e75ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001f90:	fff00513          	li	a0,-1
    80001f94:	e6dff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f98:	00007797          	auipc	a5,0x7
    80001f9c:	c407b783          	ld	a5,-960(a5) # 80008bd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fa0:	0007b783          	ld	a5,0(a5)
    80001fa4:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001fa8:	00058513          	mv	a0,a1
                if (handle) {
    80001fac:	00050a63          	beqz	a0,80001fc0 <_ZN5Riscv11trapHandlerEv+0x294>
                    handle->wait();
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	3d8080e7          	jalr	984(ra) # 80002388 <_ZN10KSemaphore4waitEv>
                    asm volatile("li a0, 0");
    80001fb8:	00000513          	li	a0,0
    80001fbc:	e45ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001fc0:	fff00513          	li	a0,-1
    80001fc4:	e3dff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001fc8:	00007797          	auipc	a5,0x7
    80001fcc:	c107b783          	ld	a5,-1008(a5) # 80008bd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fd0:	0007b783          	ld	a5,0(a5)
    80001fd4:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001fd8:	00058513          	mv	a0,a1
                if (handle) {
    80001fdc:	00050a63          	beqz	a0,80001ff0 <_ZN5Riscv11trapHandlerEv+0x2c4>
                    handle->signal();
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	404080e7          	jalr	1028(ra) # 800023e4 <_ZN10KSemaphore6signalEv>
                    asm volatile("li a0, 0");
    80001fe8:	00000513          	li	a0,0
    80001fec:	e15ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001ff0:	fff00513          	li	a0,-1
    80001ff4:	e0dff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                int c = __getc();
    80001ff8:	00004097          	auipc	ra,0x4
    80001ffc:	700080e7          	jalr	1792(ra) # 800066f8 <__getc>
                asm volatile ("mv t0, %0" : : "r"(c));
    80002000:	00050293          	mv	t0,a0
                asm volatile ("sw t0, 80(x8)");
    80002004:	04542823          	sw	t0,80(s0)
                break;
    80002008:	df9ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                asm volatile ("mv %0, a1" : "=r" (c));
    8000200c:	00058513          	mv	a0,a1
                __putc(c);
    80002010:	0ff57513          	andi	a0,a0,255
    80002014:	00004097          	auipc	ra,0x4
    80002018:	6a8080e7          	jalr	1704(ra) # 800066bc <__putc>
                break;
    8000201c:	de5ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
    else if (interrupt == 1 && cause == 1) {
    80002020:	00100713          	li	a4,1
    80002024:	d6e790e3          	bne	a5,a4,80001d84 <_ZN5Riscv11trapHandlerEv+0x58>
    asm volatile("csrc sip, %0" :: "r"(mask));
    80002028:	00200793          	li	a5,2
    8000202c:	1447b073          	csrc	sip,a5
}
    80002030:	d59ff06f          	j	80001d88 <_ZN5Riscv11trapHandlerEv+0x5c>
    else if (interrupt == 1 && cause == 9) {
    80002034:	00900713          	li	a4,9
    80002038:	d4e798e3          	bne	a5,a4,80001d88 <_ZN5Riscv11trapHandlerEv+0x5c>
        console_handler();
    8000203c:	00004097          	auipc	ra,0x4
    80002040:	6f4080e7          	jalr	1780(ra) # 80006730 <console_handler>
    80002044:	d45ff06f          	j	80001d88 <_ZN5Riscv11trapHandlerEv+0x5c>

0000000080002048 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80002048:	ff010113          	addi	sp,sp,-16
    8000204c:	00813423          	sd	s0,8(sp)
    80002050:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80002054:	00007697          	auipc	a3,0x7
    80002058:	b5c6b683          	ld	a3,-1188(a3) # 80008bb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000205c:	0006b783          	ld	a5,0(a3)
    80002060:	00007717          	auipc	a4,0x7
    80002064:	be870713          	addi	a4,a4,-1048 # 80008c48 <_ZN15MemoryAllocator12freeListHeadE>
    80002068:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    8000206c:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80002070:	00007797          	auipc	a5,0x7
    80002074:	b587b783          	ld	a5,-1192(a5) # 80008bc8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002078:	0007b783          	ld	a5,0(a5)
    8000207c:	0006b683          	ld	a3,0(a3)
    80002080:	00073703          	ld	a4,0(a4)
    80002084:	40d787b3          	sub	a5,a5,a3
    80002088:	00f73423          	sd	a5,8(a4)
}
    8000208c:	00813403          	ld	s0,8(sp)
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret

0000000080002098 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    80002098:	ff010113          	addi	sp,sp,-16
    8000209c:	00813423          	sd	s0,8(sp)
    800020a0:	01010413          	addi	s0,sp,16
    800020a4:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    800020a8:	00007517          	auipc	a0,0x7
    800020ac:	ba053503          	ld	a0,-1120(a0) # 80008c48 <_ZN15MemoryAllocator12freeListHeadE>
    800020b0:	06050063          	beqz	a0,80002110 <_ZN15MemoryAllocator9mem_allocEm+0x78>
    800020b4:	08078a63          	beqz	a5,80002148 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    800020b8:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    800020bc:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    800020c0:	00000613          	li	a2,0
    800020c4:	00c0006f          	j	800020d0 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    800020c8:	00050613          	mv	a2,a0
        curr = curr->next;
    800020cc:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    800020d0:	00050663          	beqz	a0,800020dc <_ZN15MemoryAllocator9mem_allocEm+0x44>
    800020d4:	00853783          	ld	a5,8(a0)
    800020d8:	fee7e8e3          	bltu	a5,a4,800020c8 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    800020dc:	02050a63          	beqz	a0,80002110 <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    800020e0:	00853583          	ld	a1,8(a0)
    800020e4:	02068793          	addi	a5,a3,32
    800020e8:	04f5e063          	bltu	a1,a5,80002128 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    800020ec:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    800020f0:	40e585b3          	sub	a1,a1,a4
    800020f4:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    800020f8:	00053683          	ld	a3,0(a0)
    800020fc:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    80002100:	00060e63          	beqz	a2,8000211c <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80002104:	00f63023          	sd	a5,0(a2)
        else freeListHead = newBlock;

        curr->size = totalSize;
    80002108:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
    8000210c:	01050513          	addi	a0,a0,16
}
    80002110:	00813403          	ld	s0,8(sp)
    80002114:	01010113          	addi	sp,sp,16
    80002118:	00008067          	ret
        else freeListHead = newBlock;
    8000211c:	00007697          	auipc	a3,0x7
    80002120:	b2f6b623          	sd	a5,-1236(a3) # 80008c48 <_ZN15MemoryAllocator12freeListHeadE>
    80002124:	fe5ff06f          	j	80002108 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    80002128:	00060863          	beqz	a2,80002138 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    8000212c:	00053783          	ld	a5,0(a0)
    80002130:	00f63023          	sd	a5,0(a2)
    80002134:	fd9ff06f          	j	8000210c <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    80002138:	00053783          	ld	a5,0(a0)
    8000213c:	00007717          	auipc	a4,0x7
    80002140:	b0f73623          	sd	a5,-1268(a4) # 80008c48 <_ZN15MemoryAllocator12freeListHeadE>
    80002144:	fc9ff06f          	j	8000210c <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    80002148:	00000513          	li	a0,0
    8000214c:	fc5ff06f          	j	80002110 <_ZN15MemoryAllocator9mem_allocEm+0x78>

0000000080002150 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    80002150:	ff010113          	addi	sp,sp,-16
    80002154:	00813423          	sd	s0,8(sp)
    80002158:	01010413          	addi	s0,sp,16
    if (!curr) return;
    8000215c:	00050c63          	beqz	a0,80002174 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    80002160:	00053783          	ld	a5,0(a0)
    80002164:	00078863          	beqz	a5,80002174 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    80002168:	00853703          	ld	a4,8(a0)
    8000216c:	00e506b3          	add	a3,a0,a4
    80002170:	00d78863          	beq	a5,a3,80002180 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    80002174:	00813403          	ld	s0,8(sp)
    80002178:	01010113          	addi	sp,sp,16
    8000217c:	00008067          	ret
        curr->size += curr->next->size;
    80002180:	0087b683          	ld	a3,8(a5)
    80002184:	00d70733          	add	a4,a4,a3
    80002188:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    8000218c:	0007b783          	ld	a5,0(a5)
    80002190:	00f53023          	sd	a5,0(a0)
    80002194:	fe1ff06f          	j	80002174 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

0000000080002198 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    80002198:	08050e63          	beqz	a0,80002234 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    8000219c:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    800021a0:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    800021a4:	00007797          	auipc	a5,0x7
    800021a8:	aa47b783          	ld	a5,-1372(a5) # 80008c48 <_ZN15MemoryAllocator12freeListHeadE>
    800021ac:	02078863          	beqz	a5,800021dc <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    800021b0:	fe010113          	addi	sp,sp,-32
    800021b4:	00113c23          	sd	ra,24(sp)
    800021b8:	00813823          	sd	s0,16(sp)
    800021bc:	00913423          	sd	s1,8(sp)
    800021c0:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    800021c4:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    800021c8:	02078463          	beqz	a5,800021f0 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800021cc:	02a7f263          	bgeu	a5,a0,800021f0 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    800021d0:	00078493          	mv	s1,a5
        curr = curr->next;
    800021d4:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    800021d8:	ff1ff06f          	j	800021c8 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    800021dc:	00007797          	auipc	a5,0x7
    800021e0:	a6a7b623          	sd	a0,-1428(a5) # 80008c48 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    800021e4:	fe073823          	sd	zero,-16(a4)
        return 0;
    800021e8:	00000513          	li	a0,0
    800021ec:	00008067          	ret
    blockToFree->next = curr;
    800021f0:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    800021f4:	02048a63          	beqz	s1,80002228 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    800021f8:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	f54080e7          	jalr	-172(ra) # 80002150 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    80002204:	00048513          	mv	a0,s1
    80002208:	00000097          	auipc	ra,0x0
    8000220c:	f48080e7          	jalr	-184(ra) # 80002150 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    80002210:	00000513          	li	a0,0
}
    80002214:	01813083          	ld	ra,24(sp)
    80002218:	01013403          	ld	s0,16(sp)
    8000221c:	00813483          	ld	s1,8(sp)
    80002220:	02010113          	addi	sp,sp,32
    80002224:	00008067          	ret
    else freeListHead = blockToFree;
    80002228:	00007797          	auipc	a5,0x7
    8000222c:	a2a7b023          	sd	a0,-1504(a5) # 80008c48 <_ZN15MemoryAllocator12freeListHeadE>
    80002230:	fcdff06f          	j	800021fc <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    80002234:	fff00513          	li	a0,-1
}
    80002238:	00008067          	ret

000000008000223c <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    8000223c:	ff010113          	addi	sp,sp,-16
    80002240:	00813423          	sd	s0,8(sp)
    80002244:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002248:	00007797          	auipc	a5,0x7
    8000224c:	a007b783          	ld	a5,-1536(a5) # 80008c48 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    80002250:	00000513          	li	a0,0
    80002254:	0080006f          	j	8000225c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002258:	0007b783          	ld	a5,0(a5)
    8000225c:	00078e63          	beqz	a5,80002278 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    80002260:	0087b703          	ld	a4,8(a5)
    80002264:	01000693          	li	a3,16
    80002268:	fee6f8e3          	bgeu	a3,a4,80002258 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    8000226c:	00a70533          	add	a0,a4,a0
    80002270:	ff050513          	addi	a0,a0,-16
    80002274:	fe5ff06f          	j	80002258 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    80002278:	00813403          	ld	s0,8(sp)
    8000227c:	01010113          	addi	sp,sp,16
    80002280:	00008067          	ret

0000000080002284 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002284:	ff010113          	addi	sp,sp,-16
    80002288:	00813423          	sd	s0,8(sp)
    8000228c:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002290:	00007717          	auipc	a4,0x7
    80002294:	9b873703          	ld	a4,-1608(a4) # 80008c48 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    80002298:	00000513          	li	a0,0
    8000229c:	0080006f          	j	800022a4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    800022a0:	00073703          	ld	a4,0(a4)
    800022a4:	02070263          	beqz	a4,800022c8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    800022a8:	00873783          	ld	a5,8(a4)
    800022ac:	01000693          	li	a3,16
    800022b0:	00d7f463          	bgeu	a5,a3,800022b8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    800022b4:	01000793          	li	a5,16
    800022b8:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    800022bc:	fef572e3          	bgeu	a0,a5,800022a0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    800022c0:	00078513          	mv	a0,a5
    800022c4:	fddff06f          	j	800022a0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    800022c8:	00813403          	ld	s0,8(sp)
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret

00000000800022d4 <_ZN10KSemaphore15createSemaphoreEm>:

#include "../h/KSemaphore.hpp"
#include "../h/KThread.hpp"
#include "../h/Scheduler.hpp"

KSemaphore* KSemaphore::createSemaphore(uint64 init) {
    800022d4:	fe010113          	addi	sp,sp,-32
    800022d8:	00113c23          	sd	ra,24(sp)
    800022dc:	00813823          	sd	s0,16(sp)
    800022e0:	00913423          	sd	s1,8(sp)
    800022e4:	02010413          	addi	s0,sp,32
    800022e8:	00050493          	mv	s1,a0

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    800022ec:	00100513          	li	a0,1
    800022f0:	00000097          	auipc	ra,0x0
    800022f4:	da8080e7          	jalr	-600(ra) # 80002098 <_ZN15MemoryAllocator9mem_allocEm>
    void operator delete[](void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    explicit KSemaphore(uint64 init) : val(init) {}
    800022f8:	00952023          	sw	s1,0(a0)
    800022fc:	00053423          	sd	zero,8(a0)
    80002300:	00053823          	sd	zero,16(a0)
    return new KSemaphore(init);
}
    80002304:	01813083          	ld	ra,24(sp)
    80002308:	01013403          	ld	s0,16(sp)
    8000230c:	00813483          	ld	s1,8(sp)
    80002310:	02010113          	addi	sp,sp,32
    80002314:	00008067          	ret

0000000080002318 <_ZN10KSemaphore3getEv>:

KThread* KSemaphore::get() {
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00813423          	sd	s0,8(sp)
    80002320:	01010413          	addi	s0,sp,16
    80002324:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002328:	00853503          	ld	a0,8(a0)
    8000232c:	00050a63          	beqz	a0,80002340 <_ZN10KSemaphore3getEv+0x28>

    KThread* thread = head;
    head = head->semaphoreNext;
    80002330:	04053703          	ld	a4,64(a0)
    80002334:	00e7b423          	sd	a4,8(a5)

    if (!head) tail = nullptr;
    80002338:	00070a63          	beqz	a4,8000234c <_ZN10KSemaphore3getEv+0x34>
    thread->semaphoreNext = nullptr;
    8000233c:	04053023          	sd	zero,64(a0)

    return thread;
}
    80002340:	00813403          	ld	s0,8(sp)
    80002344:	01010113          	addi	sp,sp,16
    80002348:	00008067          	ret
    if (!head) tail = nullptr;
    8000234c:	0007b823          	sd	zero,16(a5)
    80002350:	fedff06f          	j	8000233c <_ZN10KSemaphore3getEv+0x24>

0000000080002354 <_ZN10KSemaphore3putEP7KThread>:


void KSemaphore::put(KThread *thread) {
    80002354:	ff010113          	addi	sp,sp,-16
    80002358:	00813423          	sd	s0,8(sp)
    8000235c:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    80002360:	00853783          	ld	a5,8(a0)
    80002364:	00078e63          	beqz	a5,80002380 <_ZN10KSemaphore3putEP7KThread+0x2c>
    else tail->semaphoreNext = thread;
    80002368:	01053783          	ld	a5,16(a0)
    8000236c:	04b7b023          	sd	a1,64(a5)
    tail = thread;
    80002370:	00b53823          	sd	a1,16(a0)
}
    80002374:	00813403          	ld	s0,8(sp)
    80002378:	01010113          	addi	sp,sp,16
    8000237c:	00008067          	ret
    if (!head) head = thread;
    80002380:	00b53423          	sd	a1,8(a0)
    80002384:	fedff06f          	j	80002370 <_ZN10KSemaphore3putEP7KThread+0x1c>

0000000080002388 <_ZN10KSemaphore4waitEv>:

void KSemaphore::wait() {
    val--;
    80002388:	00052783          	lw	a5,0(a0)
    8000238c:	fff7879b          	addiw	a5,a5,-1
    80002390:	00f52023          	sw	a5,0(a0)

    if (val < 0) {
    80002394:	02079713          	slli	a4,a5,0x20
    80002398:	00074463          	bltz	a4,800023a0 <_ZN10KSemaphore4waitEv+0x18>
    8000239c:	00008067          	ret
void KSemaphore::wait() {
    800023a0:	ff010113          	addi	sp,sp,-16
    800023a4:	00113423          	sd	ra,8(sp)
    800023a8:	00813023          	sd	s0,0(sp)
    800023ac:	01010413          	addi	s0,sp,16
        KThread::running->setState(BLOCKED);
    800023b0:	00007797          	auipc	a5,0x7
    800023b4:	8207b783          	ld	a5,-2016(a5) # 80008bd0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023b8:	0007b583          	ld	a1,0(a5)
    800023bc:	00300793          	li	a5,3
    800023c0:	02f5a823          	sw	a5,48(a1)
        put(KThread::running);
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	f90080e7          	jalr	-112(ra) # 80002354 <_ZN10KSemaphore3putEP7KThread>
        KThread::dispatch();
    800023cc:	fffff097          	auipc	ra,0xfffff
    800023d0:	2e4080e7          	jalr	740(ra) # 800016b0 <_ZN7KThread8dispatchEv>
    }
}
    800023d4:	00813083          	ld	ra,8(sp)
    800023d8:	00013403          	ld	s0,0(sp)
    800023dc:	01010113          	addi	sp,sp,16
    800023e0:	00008067          	ret

00000000800023e4 <_ZN10KSemaphore6signalEv>:

void KSemaphore::signal() {
    val++;
    800023e4:	00052783          	lw	a5,0(a0)
    800023e8:	0017879b          	addiw	a5,a5,1
    800023ec:	0007871b          	sext.w	a4,a5
    800023f0:	00f52023          	sw	a5,0(a0)

    if (val <= 0) {
    800023f4:	00e05463          	blez	a4,800023fc <_ZN10KSemaphore6signalEv+0x18>
    800023f8:	00008067          	ret
void KSemaphore::signal() {
    800023fc:	ff010113          	addi	sp,sp,-16
    80002400:	00113423          	sd	ra,8(sp)
    80002404:	00813023          	sd	s0,0(sp)
    80002408:	01010413          	addi	s0,sp,16
        KThread* thread = get();
    8000240c:	00000097          	auipc	ra,0x0
    80002410:	f0c080e7          	jalr	-244(ra) # 80002318 <_ZN10KSemaphore3getEv>

        if (thread) {
    80002414:	00050a63          	beqz	a0,80002428 <_ZN10KSemaphore6signalEv+0x44>
    80002418:	00100793          	li	a5,1
    8000241c:	02f52823          	sw	a5,48(a0)
            thread->setState(READY);
            Scheduler::put(thread);
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	400080e7          	jalr	1024(ra) # 80001820 <_ZN9Scheduler3putEP7KThread>
        }
    }
}
    80002428:	00813083          	ld	ra,8(sp)
    8000242c:	00013403          	ld	s0,0(sp)
    80002430:	01010113          	addi	sp,sp,16
    80002434:	00008067          	ret

0000000080002438 <_ZN10KSemaphore5closeEv>:

void KSemaphore::close() {
    80002438:	fe010113          	addi	sp,sp,-32
    8000243c:	00113c23          	sd	ra,24(sp)
    80002440:	00813823          	sd	s0,16(sp)
    80002444:	00913423          	sd	s1,8(sp)
    80002448:	02010413          	addi	s0,sp,32
    8000244c:	00050493          	mv	s1,a0
    while (head) {
    80002450:	0084b783          	ld	a5,8(s1)
    80002454:	02078463          	beqz	a5,8000247c <_ZN10KSemaphore5closeEv+0x44>
        KThread* thread = get();
    80002458:	00048513          	mv	a0,s1
    8000245c:	00000097          	auipc	ra,0x0
    80002460:	ebc080e7          	jalr	-324(ra) # 80002318 <_ZN10KSemaphore3getEv>
    80002464:	00100713          	li	a4,1
    80002468:	02e52823          	sw	a4,48(a0)
        thread->setState(READY);
        thread->semaphoreNext = nullptr;
    8000246c:	04053023          	sd	zero,64(a0)
        Scheduler::put(thread);
    80002470:	fffff097          	auipc	ra,0xfffff
    80002474:	3b0080e7          	jalr	944(ra) # 80001820 <_ZN9Scheduler3putEP7KThread>
    while (head) {
    80002478:	fd9ff06f          	j	80002450 <_ZN10KSemaphore5closeEv+0x18>
    }
    8000247c:	01813083          	ld	ra,24(sp)
    80002480:	01013403          	ld	s0,16(sp)
    80002484:	00813483          	ld	s1,8(sp)
    80002488:	02010113          	addi	sp,sp,32
    8000248c:	00008067          	ret

0000000080002490 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002490:	fe010113          	addi	sp,sp,-32
    80002494:	00113c23          	sd	ra,24(sp)
    80002498:	00813823          	sd	s0,16(sp)
    8000249c:	00913423          	sd	s1,8(sp)
    800024a0:	01213023          	sd	s2,0(sp)
    800024a4:	02010413          	addi	s0,sp,32
    800024a8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800024ac:	00000913          	li	s2,0
    800024b0:	00c0006f          	j	800024bc <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	e3c080e7          	jalr	-452(ra) # 800012f0 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800024bc:	fffff097          	auipc	ra,0xfffff
    800024c0:	f10080e7          	jalr	-240(ra) # 800013cc <_Z4getcv>
    800024c4:	0005059b          	sext.w	a1,a0
    800024c8:	01b00793          	li	a5,27
    800024cc:	02f58a63          	beq	a1,a5,80002500 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800024d0:	0084b503          	ld	a0,8(s1)
    800024d4:	00002097          	auipc	ra,0x2
    800024d8:	ea4080e7          	jalr	-348(ra) # 80004378 <_ZN6Buffer3putEi>
        i++;
    800024dc:	0019071b          	addiw	a4,s2,1
    800024e0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800024e4:	0004a683          	lw	a3,0(s1)
    800024e8:	0026979b          	slliw	a5,a3,0x2
    800024ec:	00d787bb          	addw	a5,a5,a3
    800024f0:	0017979b          	slliw	a5,a5,0x1
    800024f4:	02f767bb          	remw	a5,a4,a5
    800024f8:	fc0792e3          	bnez	a5,800024bc <_ZL16producerKeyboardPv+0x2c>
    800024fc:	fb9ff06f          	j	800024b4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002500:	00100793          	li	a5,1
    80002504:	00006717          	auipc	a4,0x6
    80002508:	74f72623          	sw	a5,1868(a4) # 80008c50 <_ZL9threadEnd>
    data->buffer->put('!');
    8000250c:	02100593          	li	a1,33
    80002510:	0084b503          	ld	a0,8(s1)
    80002514:	00002097          	auipc	ra,0x2
    80002518:	e64080e7          	jalr	-412(ra) # 80004378 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000251c:	0104b503          	ld	a0,16(s1)
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	e80080e7          	jalr	-384(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    80002528:	01813083          	ld	ra,24(sp)
    8000252c:	01013403          	ld	s0,16(sp)
    80002530:	00813483          	ld	s1,8(sp)
    80002534:	00013903          	ld	s2,0(sp)
    80002538:	02010113          	addi	sp,sp,32
    8000253c:	00008067          	ret

0000000080002540 <_ZL8producerPv>:

static void producer(void *arg) {
    80002540:	fe010113          	addi	sp,sp,-32
    80002544:	00113c23          	sd	ra,24(sp)
    80002548:	00813823          	sd	s0,16(sp)
    8000254c:	00913423          	sd	s1,8(sp)
    80002550:	01213023          	sd	s2,0(sp)
    80002554:	02010413          	addi	s0,sp,32
    80002558:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000255c:	00000913          	li	s2,0
    80002560:	00c0006f          	j	8000256c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002564:	fffff097          	auipc	ra,0xfffff
    80002568:	d8c080e7          	jalr	-628(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000256c:	00006797          	auipc	a5,0x6
    80002570:	6e47a783          	lw	a5,1764(a5) # 80008c50 <_ZL9threadEnd>
    80002574:	02079e63          	bnez	a5,800025b0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002578:	0004a583          	lw	a1,0(s1)
    8000257c:	0305859b          	addiw	a1,a1,48
    80002580:	0084b503          	ld	a0,8(s1)
    80002584:	00002097          	auipc	ra,0x2
    80002588:	df4080e7          	jalr	-524(ra) # 80004378 <_ZN6Buffer3putEi>
        i++;
    8000258c:	0019071b          	addiw	a4,s2,1
    80002590:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002594:	0004a683          	lw	a3,0(s1)
    80002598:	0026979b          	slliw	a5,a3,0x2
    8000259c:	00d787bb          	addw	a5,a5,a3
    800025a0:	0017979b          	slliw	a5,a5,0x1
    800025a4:	02f767bb          	remw	a5,a4,a5
    800025a8:	fc0792e3          	bnez	a5,8000256c <_ZL8producerPv+0x2c>
    800025ac:	fb9ff06f          	j	80002564 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800025b0:	0104b503          	ld	a0,16(s1)
    800025b4:	fffff097          	auipc	ra,0xfffff
    800025b8:	dec080e7          	jalr	-532(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    800025bc:	01813083          	ld	ra,24(sp)
    800025c0:	01013403          	ld	s0,16(sp)
    800025c4:	00813483          	ld	s1,8(sp)
    800025c8:	00013903          	ld	s2,0(sp)
    800025cc:	02010113          	addi	sp,sp,32
    800025d0:	00008067          	ret

00000000800025d4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800025d4:	fd010113          	addi	sp,sp,-48
    800025d8:	02113423          	sd	ra,40(sp)
    800025dc:	02813023          	sd	s0,32(sp)
    800025e0:	00913c23          	sd	s1,24(sp)
    800025e4:	01213823          	sd	s2,16(sp)
    800025e8:	01313423          	sd	s3,8(sp)
    800025ec:	03010413          	addi	s0,sp,48
    800025f0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800025f4:	00000993          	li	s3,0
    800025f8:	01c0006f          	j	80002614 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800025fc:	fffff097          	auipc	ra,0xfffff
    80002600:	cf4080e7          	jalr	-780(ra) # 800012f0 <_Z15thread_dispatchv>
    80002604:	0500006f          	j	80002654 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002608:	00a00513          	li	a0,10
    8000260c:	fffff097          	auipc	ra,0xfffff
    80002610:	de8080e7          	jalr	-536(ra) # 800013f4 <_Z4putcc>
    while (!threadEnd) {
    80002614:	00006797          	auipc	a5,0x6
    80002618:	63c7a783          	lw	a5,1596(a5) # 80008c50 <_ZL9threadEnd>
    8000261c:	06079063          	bnez	a5,8000267c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002620:	00893503          	ld	a0,8(s2)
    80002624:	00002097          	auipc	ra,0x2
    80002628:	de4080e7          	jalr	-540(ra) # 80004408 <_ZN6Buffer3getEv>
        i++;
    8000262c:	0019849b          	addiw	s1,s3,1
    80002630:	0004899b          	sext.w	s3,s1
        putc(key);
    80002634:	0ff57513          	andi	a0,a0,255
    80002638:	fffff097          	auipc	ra,0xfffff
    8000263c:	dbc080e7          	jalr	-580(ra) # 800013f4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002640:	00092703          	lw	a4,0(s2)
    80002644:	0027179b          	slliw	a5,a4,0x2
    80002648:	00e787bb          	addw	a5,a5,a4
    8000264c:	02f4e7bb          	remw	a5,s1,a5
    80002650:	fa0786e3          	beqz	a5,800025fc <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002654:	05000793          	li	a5,80
    80002658:	02f4e4bb          	remw	s1,s1,a5
    8000265c:	fa049ce3          	bnez	s1,80002614 <_ZL8consumerPv+0x40>
    80002660:	fa9ff06f          	j	80002608 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002664:	00893503          	ld	a0,8(s2)
    80002668:	00002097          	auipc	ra,0x2
    8000266c:	da0080e7          	jalr	-608(ra) # 80004408 <_ZN6Buffer3getEv>
        putc(key);
    80002670:	0ff57513          	andi	a0,a0,255
    80002674:	fffff097          	auipc	ra,0xfffff
    80002678:	d80080e7          	jalr	-640(ra) # 800013f4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000267c:	00893503          	ld	a0,8(s2)
    80002680:	00002097          	auipc	ra,0x2
    80002684:	e14080e7          	jalr	-492(ra) # 80004494 <_ZN6Buffer6getCntEv>
    80002688:	fca04ee3          	bgtz	a0,80002664 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000268c:	01093503          	ld	a0,16(s2)
    80002690:	fffff097          	auipc	ra,0xfffff
    80002694:	d10080e7          	jalr	-752(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    80002698:	02813083          	ld	ra,40(sp)
    8000269c:	02013403          	ld	s0,32(sp)
    800026a0:	01813483          	ld	s1,24(sp)
    800026a4:	01013903          	ld	s2,16(sp)
    800026a8:	00813983          	ld	s3,8(sp)
    800026ac:	03010113          	addi	sp,sp,48
    800026b0:	00008067          	ret

00000000800026b4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800026b4:	f9010113          	addi	sp,sp,-112
    800026b8:	06113423          	sd	ra,104(sp)
    800026bc:	06813023          	sd	s0,96(sp)
    800026c0:	04913c23          	sd	s1,88(sp)
    800026c4:	05213823          	sd	s2,80(sp)
    800026c8:	05313423          	sd	s3,72(sp)
    800026cc:	05413023          	sd	s4,64(sp)
    800026d0:	03513c23          	sd	s5,56(sp)
    800026d4:	03613823          	sd	s6,48(sp)
    800026d8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800026dc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800026e0:	00005517          	auipc	a0,0x5
    800026e4:	a5050513          	addi	a0,a0,-1456 # 80007130 <CONSOLE_STATUS+0x120>
    800026e8:	00001097          	auipc	ra,0x1
    800026ec:	210080e7          	jalr	528(ra) # 800038f8 <_Z11printStringPKc>
    getString(input, 30);
    800026f0:	01e00593          	li	a1,30
    800026f4:	fa040493          	addi	s1,s0,-96
    800026f8:	00048513          	mv	a0,s1
    800026fc:	00001097          	auipc	ra,0x1
    80002700:	284080e7          	jalr	644(ra) # 80003980 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002704:	00048513          	mv	a0,s1
    80002708:	00001097          	auipc	ra,0x1
    8000270c:	350080e7          	jalr	848(ra) # 80003a58 <_Z11stringToIntPKc>
    80002710:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002714:	00005517          	auipc	a0,0x5
    80002718:	a3c50513          	addi	a0,a0,-1476 # 80007150 <CONSOLE_STATUS+0x140>
    8000271c:	00001097          	auipc	ra,0x1
    80002720:	1dc080e7          	jalr	476(ra) # 800038f8 <_Z11printStringPKc>
    getString(input, 30);
    80002724:	01e00593          	li	a1,30
    80002728:	00048513          	mv	a0,s1
    8000272c:	00001097          	auipc	ra,0x1
    80002730:	254080e7          	jalr	596(ra) # 80003980 <_Z9getStringPci>
    n = stringToInt(input);
    80002734:	00048513          	mv	a0,s1
    80002738:	00001097          	auipc	ra,0x1
    8000273c:	320080e7          	jalr	800(ra) # 80003a58 <_Z11stringToIntPKc>
    80002740:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002744:	00005517          	auipc	a0,0x5
    80002748:	a2c50513          	addi	a0,a0,-1492 # 80007170 <CONSOLE_STATUS+0x160>
    8000274c:	00001097          	auipc	ra,0x1
    80002750:	1ac080e7          	jalr	428(ra) # 800038f8 <_Z11printStringPKc>
    80002754:	00000613          	li	a2,0
    80002758:	00a00593          	li	a1,10
    8000275c:	00090513          	mv	a0,s2
    80002760:	00001097          	auipc	ra,0x1
    80002764:	348080e7          	jalr	840(ra) # 80003aa8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002768:	00005517          	auipc	a0,0x5
    8000276c:	a2050513          	addi	a0,a0,-1504 # 80007188 <CONSOLE_STATUS+0x178>
    80002770:	00001097          	auipc	ra,0x1
    80002774:	188080e7          	jalr	392(ra) # 800038f8 <_Z11printStringPKc>
    80002778:	00000613          	li	a2,0
    8000277c:	00a00593          	li	a1,10
    80002780:	00048513          	mv	a0,s1
    80002784:	00001097          	auipc	ra,0x1
    80002788:	324080e7          	jalr	804(ra) # 80003aa8 <_Z8printIntiii>
    printString(".\n");
    8000278c:	00005517          	auipc	a0,0x5
    80002790:	a1450513          	addi	a0,a0,-1516 # 800071a0 <CONSOLE_STATUS+0x190>
    80002794:	00001097          	auipc	ra,0x1
    80002798:	164080e7          	jalr	356(ra) # 800038f8 <_Z11printStringPKc>
    if(threadNum > n) {
    8000279c:	0324c463          	blt	s1,s2,800027c4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800027a0:	03205c63          	blez	s2,800027d8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800027a4:	03800513          	li	a0,56
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	244080e7          	jalr	580(ra) # 800019ec <_Znwm>
    800027b0:	00050a13          	mv	s4,a0
    800027b4:	00048593          	mv	a1,s1
    800027b8:	00002097          	auipc	ra,0x2
    800027bc:	b24080e7          	jalr	-1244(ra) # 800042dc <_ZN6BufferC1Ei>
    800027c0:	0300006f          	j	800027f0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800027c4:	00005517          	auipc	a0,0x5
    800027c8:	9e450513          	addi	a0,a0,-1564 # 800071a8 <CONSOLE_STATUS+0x198>
    800027cc:	00001097          	auipc	ra,0x1
    800027d0:	12c080e7          	jalr	300(ra) # 800038f8 <_Z11printStringPKc>
        return;
    800027d4:	0140006f          	j	800027e8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800027d8:	00005517          	auipc	a0,0x5
    800027dc:	a1050513          	addi	a0,a0,-1520 # 800071e8 <CONSOLE_STATUS+0x1d8>
    800027e0:	00001097          	auipc	ra,0x1
    800027e4:	118080e7          	jalr	280(ra) # 800038f8 <_Z11printStringPKc>
        return;
    800027e8:	000b0113          	mv	sp,s6
    800027ec:	1500006f          	j	8000293c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800027f0:	00000593          	li	a1,0
    800027f4:	00006517          	auipc	a0,0x6
    800027f8:	46450513          	addi	a0,a0,1124 # 80008c58 <_ZL10waitForAll>
    800027fc:	fffff097          	auipc	ra,0xfffff
    80002800:	b14080e7          	jalr	-1260(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    thread_t threads[threadNum];
    80002804:	00391793          	slli	a5,s2,0x3
    80002808:	00f78793          	addi	a5,a5,15
    8000280c:	ff07f793          	andi	a5,a5,-16
    80002810:	40f10133          	sub	sp,sp,a5
    80002814:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002818:	0019071b          	addiw	a4,s2,1
    8000281c:	00171793          	slli	a5,a4,0x1
    80002820:	00e787b3          	add	a5,a5,a4
    80002824:	00379793          	slli	a5,a5,0x3
    80002828:	00f78793          	addi	a5,a5,15
    8000282c:	ff07f793          	andi	a5,a5,-16
    80002830:	40f10133          	sub	sp,sp,a5
    80002834:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002838:	00191613          	slli	a2,s2,0x1
    8000283c:	012607b3          	add	a5,a2,s2
    80002840:	00379793          	slli	a5,a5,0x3
    80002844:	00f987b3          	add	a5,s3,a5
    80002848:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000284c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002850:	00006717          	auipc	a4,0x6
    80002854:	40873703          	ld	a4,1032(a4) # 80008c58 <_ZL10waitForAll>
    80002858:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000285c:	00078613          	mv	a2,a5
    80002860:	00000597          	auipc	a1,0x0
    80002864:	d7458593          	addi	a1,a1,-652 # 800025d4 <_ZL8consumerPv>
    80002868:	f9840513          	addi	a0,s0,-104
    8000286c:	fffff097          	auipc	ra,0xfffff
    80002870:	9b0080e7          	jalr	-1616(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002874:	00000493          	li	s1,0
    80002878:	0280006f          	j	800028a0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000287c:	00000597          	auipc	a1,0x0
    80002880:	c1458593          	addi	a1,a1,-1004 # 80002490 <_ZL16producerKeyboardPv>
                      data + i);
    80002884:	00179613          	slli	a2,a5,0x1
    80002888:	00f60633          	add	a2,a2,a5
    8000288c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002890:	00c98633          	add	a2,s3,a2
    80002894:	fffff097          	auipc	ra,0xfffff
    80002898:	988080e7          	jalr	-1656(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000289c:	0014849b          	addiw	s1,s1,1
    800028a0:	0524d263          	bge	s1,s2,800028e4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800028a4:	00149793          	slli	a5,s1,0x1
    800028a8:	009787b3          	add	a5,a5,s1
    800028ac:	00379793          	slli	a5,a5,0x3
    800028b0:	00f987b3          	add	a5,s3,a5
    800028b4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800028b8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800028bc:	00006717          	auipc	a4,0x6
    800028c0:	39c73703          	ld	a4,924(a4) # 80008c58 <_ZL10waitForAll>
    800028c4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800028c8:	00048793          	mv	a5,s1
    800028cc:	00349513          	slli	a0,s1,0x3
    800028d0:	00aa8533          	add	a0,s5,a0
    800028d4:	fa9054e3          	blez	s1,8000287c <_Z22producerConsumer_C_APIv+0x1c8>
    800028d8:	00000597          	auipc	a1,0x0
    800028dc:	c6858593          	addi	a1,a1,-920 # 80002540 <_ZL8producerPv>
    800028e0:	fa5ff06f          	j	80002884 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	a0c080e7          	jalr	-1524(ra) # 800012f0 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800028ec:	00000493          	li	s1,0
    800028f0:	00994e63          	blt	s2,s1,8000290c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800028f4:	00006517          	auipc	a0,0x6
    800028f8:	36453503          	ld	a0,868(a0) # 80008c58 <_ZL10waitForAll>
    800028fc:	fffff097          	auipc	ra,0xfffff
    80002900:	a78080e7          	jalr	-1416(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80002904:	0014849b          	addiw	s1,s1,1
    80002908:	fe9ff06f          	j	800028f0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000290c:	00006517          	auipc	a0,0x6
    80002910:	34c53503          	ld	a0,844(a0) # 80008c58 <_ZL10waitForAll>
    80002914:	fffff097          	auipc	ra,0xfffff
    80002918:	a34080e7          	jalr	-1484(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    delete buffer;
    8000291c:	000a0e63          	beqz	s4,80002938 <_Z22producerConsumer_C_APIv+0x284>
    80002920:	000a0513          	mv	a0,s4
    80002924:	00002097          	auipc	ra,0x2
    80002928:	bf8080e7          	jalr	-1032(ra) # 8000451c <_ZN6BufferD1Ev>
    8000292c:	000a0513          	mv	a0,s4
    80002930:	fffff097          	auipc	ra,0xfffff
    80002934:	0e4080e7          	jalr	228(ra) # 80001a14 <_ZdlPv>
    80002938:	000b0113          	mv	sp,s6

}
    8000293c:	f9040113          	addi	sp,s0,-112
    80002940:	06813083          	ld	ra,104(sp)
    80002944:	06013403          	ld	s0,96(sp)
    80002948:	05813483          	ld	s1,88(sp)
    8000294c:	05013903          	ld	s2,80(sp)
    80002950:	04813983          	ld	s3,72(sp)
    80002954:	04013a03          	ld	s4,64(sp)
    80002958:	03813a83          	ld	s5,56(sp)
    8000295c:	03013b03          	ld	s6,48(sp)
    80002960:	07010113          	addi	sp,sp,112
    80002964:	00008067          	ret
    80002968:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000296c:	000a0513          	mv	a0,s4
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	0a4080e7          	jalr	164(ra) # 80001a14 <_ZdlPv>
    80002978:	00048513          	mv	a0,s1
    8000297c:	00007097          	auipc	ra,0x7
    80002980:	3cc080e7          	jalr	972(ra) # 80009d48 <_Unwind_Resume>

0000000080002984 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002984:	fe010113          	addi	sp,sp,-32
    80002988:	00113c23          	sd	ra,24(sp)
    8000298c:	00813823          	sd	s0,16(sp)
    80002990:	00913423          	sd	s1,8(sp)
    80002994:	01213023          	sd	s2,0(sp)
    80002998:	02010413          	addi	s0,sp,32
    8000299c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800029a0:	00100793          	li	a5,1
    800029a4:	02a7f863          	bgeu	a5,a0,800029d4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800029a8:	00a00793          	li	a5,10
    800029ac:	02f577b3          	remu	a5,a0,a5
    800029b0:	02078e63          	beqz	a5,800029ec <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800029b4:	fff48513          	addi	a0,s1,-1
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	fcc080e7          	jalr	-52(ra) # 80002984 <_ZL9fibonaccim>
    800029c0:	00050913          	mv	s2,a0
    800029c4:	ffe48513          	addi	a0,s1,-2
    800029c8:	00000097          	auipc	ra,0x0
    800029cc:	fbc080e7          	jalr	-68(ra) # 80002984 <_ZL9fibonaccim>
    800029d0:	00a90533          	add	a0,s2,a0
}
    800029d4:	01813083          	ld	ra,24(sp)
    800029d8:	01013403          	ld	s0,16(sp)
    800029dc:	00813483          	ld	s1,8(sp)
    800029e0:	00013903          	ld	s2,0(sp)
    800029e4:	02010113          	addi	sp,sp,32
    800029e8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	904080e7          	jalr	-1788(ra) # 800012f0 <_Z15thread_dispatchv>
    800029f4:	fc1ff06f          	j	800029b4 <_ZL9fibonaccim+0x30>

00000000800029f8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800029f8:	fe010113          	addi	sp,sp,-32
    800029fc:	00113c23          	sd	ra,24(sp)
    80002a00:	00813823          	sd	s0,16(sp)
    80002a04:	00913423          	sd	s1,8(sp)
    80002a08:	01213023          	sd	s2,0(sp)
    80002a0c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002a10:	00000913          	li	s2,0
    80002a14:	0380006f          	j	80002a4c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002a18:	fffff097          	auipc	ra,0xfffff
    80002a1c:	8d8080e7          	jalr	-1832(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a20:	00148493          	addi	s1,s1,1
    80002a24:	000027b7          	lui	a5,0x2
    80002a28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002a2c:	0097ee63          	bltu	a5,s1,80002a48 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002a30:	00000713          	li	a4,0
    80002a34:	000077b7          	lui	a5,0x7
    80002a38:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002a3c:	fce7eee3          	bltu	a5,a4,80002a18 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002a40:	00170713          	addi	a4,a4,1
    80002a44:	ff1ff06f          	j	80002a34 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002a48:	00190913          	addi	s2,s2,1
    80002a4c:	00900793          	li	a5,9
    80002a50:	0527e063          	bltu	a5,s2,80002a90 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002a54:	00004517          	auipc	a0,0x4
    80002a58:	7c450513          	addi	a0,a0,1988 # 80007218 <CONSOLE_STATUS+0x208>
    80002a5c:	00001097          	auipc	ra,0x1
    80002a60:	e9c080e7          	jalr	-356(ra) # 800038f8 <_Z11printStringPKc>
    80002a64:	00000613          	li	a2,0
    80002a68:	00a00593          	li	a1,10
    80002a6c:	0009051b          	sext.w	a0,s2
    80002a70:	00001097          	auipc	ra,0x1
    80002a74:	038080e7          	jalr	56(ra) # 80003aa8 <_Z8printIntiii>
    80002a78:	00004517          	auipc	a0,0x4
    80002a7c:	6f050513          	addi	a0,a0,1776 # 80007168 <CONSOLE_STATUS+0x158>
    80002a80:	00001097          	auipc	ra,0x1
    80002a84:	e78080e7          	jalr	-392(ra) # 800038f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002a88:	00000493          	li	s1,0
    80002a8c:	f99ff06f          	j	80002a24 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002a90:	00004517          	auipc	a0,0x4
    80002a94:	79050513          	addi	a0,a0,1936 # 80007220 <CONSOLE_STATUS+0x210>
    80002a98:	00001097          	auipc	ra,0x1
    80002a9c:	e60080e7          	jalr	-416(ra) # 800038f8 <_Z11printStringPKc>
    finishedA = true;
    80002aa0:	00100793          	li	a5,1
    80002aa4:	00006717          	auipc	a4,0x6
    80002aa8:	1af70e23          	sb	a5,444(a4) # 80008c60 <_ZL9finishedA>
}
    80002aac:	01813083          	ld	ra,24(sp)
    80002ab0:	01013403          	ld	s0,16(sp)
    80002ab4:	00813483          	ld	s1,8(sp)
    80002ab8:	00013903          	ld	s2,0(sp)
    80002abc:	02010113          	addi	sp,sp,32
    80002ac0:	00008067          	ret

0000000080002ac4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002ac4:	fe010113          	addi	sp,sp,-32
    80002ac8:	00113c23          	sd	ra,24(sp)
    80002acc:	00813823          	sd	s0,16(sp)
    80002ad0:	00913423          	sd	s1,8(sp)
    80002ad4:	01213023          	sd	s2,0(sp)
    80002ad8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002adc:	00000913          	li	s2,0
    80002ae0:	0380006f          	j	80002b18 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	80c080e7          	jalr	-2036(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002aec:	00148493          	addi	s1,s1,1
    80002af0:	000027b7          	lui	a5,0x2
    80002af4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002af8:	0097ee63          	bltu	a5,s1,80002b14 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002afc:	00000713          	li	a4,0
    80002b00:	000077b7          	lui	a5,0x7
    80002b04:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b08:	fce7eee3          	bltu	a5,a4,80002ae4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002b0c:	00170713          	addi	a4,a4,1
    80002b10:	ff1ff06f          	j	80002b00 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002b14:	00190913          	addi	s2,s2,1
    80002b18:	00f00793          	li	a5,15
    80002b1c:	0527e063          	bltu	a5,s2,80002b5c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002b20:	00004517          	auipc	a0,0x4
    80002b24:	71050513          	addi	a0,a0,1808 # 80007230 <CONSOLE_STATUS+0x220>
    80002b28:	00001097          	auipc	ra,0x1
    80002b2c:	dd0080e7          	jalr	-560(ra) # 800038f8 <_Z11printStringPKc>
    80002b30:	00000613          	li	a2,0
    80002b34:	00a00593          	li	a1,10
    80002b38:	0009051b          	sext.w	a0,s2
    80002b3c:	00001097          	auipc	ra,0x1
    80002b40:	f6c080e7          	jalr	-148(ra) # 80003aa8 <_Z8printIntiii>
    80002b44:	00004517          	auipc	a0,0x4
    80002b48:	62450513          	addi	a0,a0,1572 # 80007168 <CONSOLE_STATUS+0x158>
    80002b4c:	00001097          	auipc	ra,0x1
    80002b50:	dac080e7          	jalr	-596(ra) # 800038f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b54:	00000493          	li	s1,0
    80002b58:	f99ff06f          	j	80002af0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002b5c:	00004517          	auipc	a0,0x4
    80002b60:	6dc50513          	addi	a0,a0,1756 # 80007238 <CONSOLE_STATUS+0x228>
    80002b64:	00001097          	auipc	ra,0x1
    80002b68:	d94080e7          	jalr	-620(ra) # 800038f8 <_Z11printStringPKc>
    finishedB = true;
    80002b6c:	00100793          	li	a5,1
    80002b70:	00006717          	auipc	a4,0x6
    80002b74:	0ef708a3          	sb	a5,241(a4) # 80008c61 <_ZL9finishedB>
    thread_dispatch();
    80002b78:	ffffe097          	auipc	ra,0xffffe
    80002b7c:	778080e7          	jalr	1912(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002b80:	01813083          	ld	ra,24(sp)
    80002b84:	01013403          	ld	s0,16(sp)
    80002b88:	00813483          	ld	s1,8(sp)
    80002b8c:	00013903          	ld	s2,0(sp)
    80002b90:	02010113          	addi	sp,sp,32
    80002b94:	00008067          	ret

0000000080002b98 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002b98:	fe010113          	addi	sp,sp,-32
    80002b9c:	00113c23          	sd	ra,24(sp)
    80002ba0:	00813823          	sd	s0,16(sp)
    80002ba4:	00913423          	sd	s1,8(sp)
    80002ba8:	01213023          	sd	s2,0(sp)
    80002bac:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002bb0:	00000493          	li	s1,0
    80002bb4:	0400006f          	j	80002bf4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002bb8:	00004517          	auipc	a0,0x4
    80002bbc:	69050513          	addi	a0,a0,1680 # 80007248 <CONSOLE_STATUS+0x238>
    80002bc0:	00001097          	auipc	ra,0x1
    80002bc4:	d38080e7          	jalr	-712(ra) # 800038f8 <_Z11printStringPKc>
    80002bc8:	00000613          	li	a2,0
    80002bcc:	00a00593          	li	a1,10
    80002bd0:	00048513          	mv	a0,s1
    80002bd4:	00001097          	auipc	ra,0x1
    80002bd8:	ed4080e7          	jalr	-300(ra) # 80003aa8 <_Z8printIntiii>
    80002bdc:	00004517          	auipc	a0,0x4
    80002be0:	58c50513          	addi	a0,a0,1420 # 80007168 <CONSOLE_STATUS+0x158>
    80002be4:	00001097          	auipc	ra,0x1
    80002be8:	d14080e7          	jalr	-748(ra) # 800038f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002bec:	0014849b          	addiw	s1,s1,1
    80002bf0:	0ff4f493          	andi	s1,s1,255
    80002bf4:	00200793          	li	a5,2
    80002bf8:	fc97f0e3          	bgeu	a5,s1,80002bb8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002bfc:	00004517          	auipc	a0,0x4
    80002c00:	65450513          	addi	a0,a0,1620 # 80007250 <CONSOLE_STATUS+0x240>
    80002c04:	00001097          	auipc	ra,0x1
    80002c08:	cf4080e7          	jalr	-780(ra) # 800038f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002c0c:	00700313          	li	t1,7
    thread_dispatch();
    80002c10:	ffffe097          	auipc	ra,0xffffe
    80002c14:	6e0080e7          	jalr	1760(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002c18:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002c1c:	00004517          	auipc	a0,0x4
    80002c20:	64450513          	addi	a0,a0,1604 # 80007260 <CONSOLE_STATUS+0x250>
    80002c24:	00001097          	auipc	ra,0x1
    80002c28:	cd4080e7          	jalr	-812(ra) # 800038f8 <_Z11printStringPKc>
    80002c2c:	00000613          	li	a2,0
    80002c30:	00a00593          	li	a1,10
    80002c34:	0009051b          	sext.w	a0,s2
    80002c38:	00001097          	auipc	ra,0x1
    80002c3c:	e70080e7          	jalr	-400(ra) # 80003aa8 <_Z8printIntiii>
    80002c40:	00004517          	auipc	a0,0x4
    80002c44:	52850513          	addi	a0,a0,1320 # 80007168 <CONSOLE_STATUS+0x158>
    80002c48:	00001097          	auipc	ra,0x1
    80002c4c:	cb0080e7          	jalr	-848(ra) # 800038f8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002c50:	00c00513          	li	a0,12
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	d30080e7          	jalr	-720(ra) # 80002984 <_ZL9fibonaccim>
    80002c5c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002c60:	00004517          	auipc	a0,0x4
    80002c64:	60850513          	addi	a0,a0,1544 # 80007268 <CONSOLE_STATUS+0x258>
    80002c68:	00001097          	auipc	ra,0x1
    80002c6c:	c90080e7          	jalr	-880(ra) # 800038f8 <_Z11printStringPKc>
    80002c70:	00000613          	li	a2,0
    80002c74:	00a00593          	li	a1,10
    80002c78:	0009051b          	sext.w	a0,s2
    80002c7c:	00001097          	auipc	ra,0x1
    80002c80:	e2c080e7          	jalr	-468(ra) # 80003aa8 <_Z8printIntiii>
    80002c84:	00004517          	auipc	a0,0x4
    80002c88:	4e450513          	addi	a0,a0,1252 # 80007168 <CONSOLE_STATUS+0x158>
    80002c8c:	00001097          	auipc	ra,0x1
    80002c90:	c6c080e7          	jalr	-916(ra) # 800038f8 <_Z11printStringPKc>
    80002c94:	0400006f          	j	80002cd4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002c98:	00004517          	auipc	a0,0x4
    80002c9c:	5b050513          	addi	a0,a0,1456 # 80007248 <CONSOLE_STATUS+0x238>
    80002ca0:	00001097          	auipc	ra,0x1
    80002ca4:	c58080e7          	jalr	-936(ra) # 800038f8 <_Z11printStringPKc>
    80002ca8:	00000613          	li	a2,0
    80002cac:	00a00593          	li	a1,10
    80002cb0:	00048513          	mv	a0,s1
    80002cb4:	00001097          	auipc	ra,0x1
    80002cb8:	df4080e7          	jalr	-524(ra) # 80003aa8 <_Z8printIntiii>
    80002cbc:	00004517          	auipc	a0,0x4
    80002cc0:	4ac50513          	addi	a0,a0,1196 # 80007168 <CONSOLE_STATUS+0x158>
    80002cc4:	00001097          	auipc	ra,0x1
    80002cc8:	c34080e7          	jalr	-972(ra) # 800038f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002ccc:	0014849b          	addiw	s1,s1,1
    80002cd0:	0ff4f493          	andi	s1,s1,255
    80002cd4:	00500793          	li	a5,5
    80002cd8:	fc97f0e3          	bgeu	a5,s1,80002c98 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002cdc:	00004517          	auipc	a0,0x4
    80002ce0:	54450513          	addi	a0,a0,1348 # 80007220 <CONSOLE_STATUS+0x210>
    80002ce4:	00001097          	auipc	ra,0x1
    80002ce8:	c14080e7          	jalr	-1004(ra) # 800038f8 <_Z11printStringPKc>
    finishedC = true;
    80002cec:	00100793          	li	a5,1
    80002cf0:	00006717          	auipc	a4,0x6
    80002cf4:	f6f70923          	sb	a5,-142(a4) # 80008c62 <_ZL9finishedC>
    thread_dispatch();
    80002cf8:	ffffe097          	auipc	ra,0xffffe
    80002cfc:	5f8080e7          	jalr	1528(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002d00:	01813083          	ld	ra,24(sp)
    80002d04:	01013403          	ld	s0,16(sp)
    80002d08:	00813483          	ld	s1,8(sp)
    80002d0c:	00013903          	ld	s2,0(sp)
    80002d10:	02010113          	addi	sp,sp,32
    80002d14:	00008067          	ret

0000000080002d18 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002d18:	fe010113          	addi	sp,sp,-32
    80002d1c:	00113c23          	sd	ra,24(sp)
    80002d20:	00813823          	sd	s0,16(sp)
    80002d24:	00913423          	sd	s1,8(sp)
    80002d28:	01213023          	sd	s2,0(sp)
    80002d2c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002d30:	00a00493          	li	s1,10
    80002d34:	0400006f          	j	80002d74 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002d38:	00004517          	auipc	a0,0x4
    80002d3c:	54050513          	addi	a0,a0,1344 # 80007278 <CONSOLE_STATUS+0x268>
    80002d40:	00001097          	auipc	ra,0x1
    80002d44:	bb8080e7          	jalr	-1096(ra) # 800038f8 <_Z11printStringPKc>
    80002d48:	00000613          	li	a2,0
    80002d4c:	00a00593          	li	a1,10
    80002d50:	00048513          	mv	a0,s1
    80002d54:	00001097          	auipc	ra,0x1
    80002d58:	d54080e7          	jalr	-684(ra) # 80003aa8 <_Z8printIntiii>
    80002d5c:	00004517          	auipc	a0,0x4
    80002d60:	40c50513          	addi	a0,a0,1036 # 80007168 <CONSOLE_STATUS+0x158>
    80002d64:	00001097          	auipc	ra,0x1
    80002d68:	b94080e7          	jalr	-1132(ra) # 800038f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002d6c:	0014849b          	addiw	s1,s1,1
    80002d70:	0ff4f493          	andi	s1,s1,255
    80002d74:	00c00793          	li	a5,12
    80002d78:	fc97f0e3          	bgeu	a5,s1,80002d38 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002d7c:	00004517          	auipc	a0,0x4
    80002d80:	50450513          	addi	a0,a0,1284 # 80007280 <CONSOLE_STATUS+0x270>
    80002d84:	00001097          	auipc	ra,0x1
    80002d88:	b74080e7          	jalr	-1164(ra) # 800038f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002d8c:	00500313          	li	t1,5
    thread_dispatch();
    80002d90:	ffffe097          	auipc	ra,0xffffe
    80002d94:	560080e7          	jalr	1376(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002d98:	01000513          	li	a0,16
    80002d9c:	00000097          	auipc	ra,0x0
    80002da0:	be8080e7          	jalr	-1048(ra) # 80002984 <_ZL9fibonaccim>
    80002da4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002da8:	00004517          	auipc	a0,0x4
    80002dac:	4e850513          	addi	a0,a0,1256 # 80007290 <CONSOLE_STATUS+0x280>
    80002db0:	00001097          	auipc	ra,0x1
    80002db4:	b48080e7          	jalr	-1208(ra) # 800038f8 <_Z11printStringPKc>
    80002db8:	00000613          	li	a2,0
    80002dbc:	00a00593          	li	a1,10
    80002dc0:	0009051b          	sext.w	a0,s2
    80002dc4:	00001097          	auipc	ra,0x1
    80002dc8:	ce4080e7          	jalr	-796(ra) # 80003aa8 <_Z8printIntiii>
    80002dcc:	00004517          	auipc	a0,0x4
    80002dd0:	39c50513          	addi	a0,a0,924 # 80007168 <CONSOLE_STATUS+0x158>
    80002dd4:	00001097          	auipc	ra,0x1
    80002dd8:	b24080e7          	jalr	-1244(ra) # 800038f8 <_Z11printStringPKc>
    80002ddc:	0400006f          	j	80002e1c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002de0:	00004517          	auipc	a0,0x4
    80002de4:	49850513          	addi	a0,a0,1176 # 80007278 <CONSOLE_STATUS+0x268>
    80002de8:	00001097          	auipc	ra,0x1
    80002dec:	b10080e7          	jalr	-1264(ra) # 800038f8 <_Z11printStringPKc>
    80002df0:	00000613          	li	a2,0
    80002df4:	00a00593          	li	a1,10
    80002df8:	00048513          	mv	a0,s1
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	cac080e7          	jalr	-852(ra) # 80003aa8 <_Z8printIntiii>
    80002e04:	00004517          	auipc	a0,0x4
    80002e08:	36450513          	addi	a0,a0,868 # 80007168 <CONSOLE_STATUS+0x158>
    80002e0c:	00001097          	auipc	ra,0x1
    80002e10:	aec080e7          	jalr	-1300(ra) # 800038f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002e14:	0014849b          	addiw	s1,s1,1
    80002e18:	0ff4f493          	andi	s1,s1,255
    80002e1c:	00f00793          	li	a5,15
    80002e20:	fc97f0e3          	bgeu	a5,s1,80002de0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002e24:	00004517          	auipc	a0,0x4
    80002e28:	47c50513          	addi	a0,a0,1148 # 800072a0 <CONSOLE_STATUS+0x290>
    80002e2c:	00001097          	auipc	ra,0x1
    80002e30:	acc080e7          	jalr	-1332(ra) # 800038f8 <_Z11printStringPKc>
    finishedD = true;
    80002e34:	00100793          	li	a5,1
    80002e38:	00006717          	auipc	a4,0x6
    80002e3c:	e2f705a3          	sb	a5,-469(a4) # 80008c63 <_ZL9finishedD>
    thread_dispatch();
    80002e40:	ffffe097          	auipc	ra,0xffffe
    80002e44:	4b0080e7          	jalr	1200(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002e48:	01813083          	ld	ra,24(sp)
    80002e4c:	01013403          	ld	s0,16(sp)
    80002e50:	00813483          	ld	s1,8(sp)
    80002e54:	00013903          	ld	s2,0(sp)
    80002e58:	02010113          	addi	sp,sp,32
    80002e5c:	00008067          	ret

0000000080002e60 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002e60:	fc010113          	addi	sp,sp,-64
    80002e64:	02113c23          	sd	ra,56(sp)
    80002e68:	02813823          	sd	s0,48(sp)
    80002e6c:	02913423          	sd	s1,40(sp)
    80002e70:	03213023          	sd	s2,32(sp)
    80002e74:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002e78:	02000513          	li	a0,32
    80002e7c:	fffff097          	auipc	ra,0xfffff
    80002e80:	b70080e7          	jalr	-1168(ra) # 800019ec <_Znwm>
    80002e84:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	cb4080e7          	jalr	-844(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80002e90:	00006797          	auipc	a5,0x6
    80002e94:	c7078793          	addi	a5,a5,-912 # 80008b00 <_ZTV7WorkerA+0x10>
    80002e98:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002e9c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002ea0:	00004517          	auipc	a0,0x4
    80002ea4:	41050513          	addi	a0,a0,1040 # 800072b0 <CONSOLE_STATUS+0x2a0>
    80002ea8:	00001097          	auipc	ra,0x1
    80002eac:	a50080e7          	jalr	-1456(ra) # 800038f8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002eb0:	02000513          	li	a0,32
    80002eb4:	fffff097          	auipc	ra,0xfffff
    80002eb8:	b38080e7          	jalr	-1224(ra) # 800019ec <_Znwm>
    80002ebc:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002ec0:	fffff097          	auipc	ra,0xfffff
    80002ec4:	c7c080e7          	jalr	-900(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80002ec8:	00006797          	auipc	a5,0x6
    80002ecc:	c6078793          	addi	a5,a5,-928 # 80008b28 <_ZTV7WorkerB+0x10>
    80002ed0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002ed4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002ed8:	00004517          	auipc	a0,0x4
    80002edc:	3f050513          	addi	a0,a0,1008 # 800072c8 <CONSOLE_STATUS+0x2b8>
    80002ee0:	00001097          	auipc	ra,0x1
    80002ee4:	a18080e7          	jalr	-1512(ra) # 800038f8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002ee8:	02000513          	li	a0,32
    80002eec:	fffff097          	auipc	ra,0xfffff
    80002ef0:	b00080e7          	jalr	-1280(ra) # 800019ec <_Znwm>
    80002ef4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002ef8:	fffff097          	auipc	ra,0xfffff
    80002efc:	c44080e7          	jalr	-956(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80002f00:	00006797          	auipc	a5,0x6
    80002f04:	c5078793          	addi	a5,a5,-944 # 80008b50 <_ZTV7WorkerC+0x10>
    80002f08:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002f0c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002f10:	00004517          	auipc	a0,0x4
    80002f14:	3d050513          	addi	a0,a0,976 # 800072e0 <CONSOLE_STATUS+0x2d0>
    80002f18:	00001097          	auipc	ra,0x1
    80002f1c:	9e0080e7          	jalr	-1568(ra) # 800038f8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002f20:	02000513          	li	a0,32
    80002f24:	fffff097          	auipc	ra,0xfffff
    80002f28:	ac8080e7          	jalr	-1336(ra) # 800019ec <_Znwm>
    80002f2c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002f30:	fffff097          	auipc	ra,0xfffff
    80002f34:	c0c080e7          	jalr	-1012(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80002f38:	00006797          	auipc	a5,0x6
    80002f3c:	c4078793          	addi	a5,a5,-960 # 80008b78 <_ZTV7WorkerD+0x10>
    80002f40:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002f44:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002f48:	00004517          	auipc	a0,0x4
    80002f4c:	3b050513          	addi	a0,a0,944 # 800072f8 <CONSOLE_STATUS+0x2e8>
    80002f50:	00001097          	auipc	ra,0x1
    80002f54:	9a8080e7          	jalr	-1624(ra) # 800038f8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002f58:	00000493          	li	s1,0
    80002f5c:	00300793          	li	a5,3
    80002f60:	0297c663          	blt	a5,s1,80002f8c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002f64:	00349793          	slli	a5,s1,0x3
    80002f68:	fe040713          	addi	a4,s0,-32
    80002f6c:	00f707b3          	add	a5,a4,a5
    80002f70:	fe07b503          	ld	a0,-32(a5)
    80002f74:	fffff097          	auipc	ra,0xfffff
    80002f78:	bf8080e7          	jalr	-1032(ra) # 80001b6c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002f7c:	0014849b          	addiw	s1,s1,1
    80002f80:	fddff06f          	j	80002f5c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002f84:	fffff097          	auipc	ra,0xfffff
    80002f88:	c3c080e7          	jalr	-964(ra) # 80001bc0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002f8c:	00006797          	auipc	a5,0x6
    80002f90:	cd47c783          	lbu	a5,-812(a5) # 80008c60 <_ZL9finishedA>
    80002f94:	fe0788e3          	beqz	a5,80002f84 <_Z20Threads_CPP_API_testv+0x124>
    80002f98:	00006797          	auipc	a5,0x6
    80002f9c:	cc97c783          	lbu	a5,-823(a5) # 80008c61 <_ZL9finishedB>
    80002fa0:	fe0782e3          	beqz	a5,80002f84 <_Z20Threads_CPP_API_testv+0x124>
    80002fa4:	00006797          	auipc	a5,0x6
    80002fa8:	cbe7c783          	lbu	a5,-834(a5) # 80008c62 <_ZL9finishedC>
    80002fac:	fc078ce3          	beqz	a5,80002f84 <_Z20Threads_CPP_API_testv+0x124>
    80002fb0:	00006797          	auipc	a5,0x6
    80002fb4:	cb37c783          	lbu	a5,-845(a5) # 80008c63 <_ZL9finishedD>
    80002fb8:	fc0786e3          	beqz	a5,80002f84 <_Z20Threads_CPP_API_testv+0x124>
    80002fbc:	fc040493          	addi	s1,s0,-64
    80002fc0:	0080006f          	j	80002fc8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002fc4:	00848493          	addi	s1,s1,8
    80002fc8:	fe040793          	addi	a5,s0,-32
    80002fcc:	08f48663          	beq	s1,a5,80003058 <_Z20Threads_CPP_API_testv+0x1f8>
    80002fd0:	0004b503          	ld	a0,0(s1)
    80002fd4:	fe0508e3          	beqz	a0,80002fc4 <_Z20Threads_CPP_API_testv+0x164>
    80002fd8:	00053783          	ld	a5,0(a0)
    80002fdc:	0087b783          	ld	a5,8(a5)
    80002fe0:	000780e7          	jalr	a5
    80002fe4:	fe1ff06f          	j	80002fc4 <_Z20Threads_CPP_API_testv+0x164>
    80002fe8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002fec:	00048513          	mv	a0,s1
    80002ff0:	fffff097          	auipc	ra,0xfffff
    80002ff4:	a24080e7          	jalr	-1500(ra) # 80001a14 <_ZdlPv>
    80002ff8:	00090513          	mv	a0,s2
    80002ffc:	00007097          	auipc	ra,0x7
    80003000:	d4c080e7          	jalr	-692(ra) # 80009d48 <_Unwind_Resume>
    80003004:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003008:	00048513          	mv	a0,s1
    8000300c:	fffff097          	auipc	ra,0xfffff
    80003010:	a08080e7          	jalr	-1528(ra) # 80001a14 <_ZdlPv>
    80003014:	00090513          	mv	a0,s2
    80003018:	00007097          	auipc	ra,0x7
    8000301c:	d30080e7          	jalr	-720(ra) # 80009d48 <_Unwind_Resume>
    80003020:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003024:	00048513          	mv	a0,s1
    80003028:	fffff097          	auipc	ra,0xfffff
    8000302c:	9ec080e7          	jalr	-1556(ra) # 80001a14 <_ZdlPv>
    80003030:	00090513          	mv	a0,s2
    80003034:	00007097          	auipc	ra,0x7
    80003038:	d14080e7          	jalr	-748(ra) # 80009d48 <_Unwind_Resume>
    8000303c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003040:	00048513          	mv	a0,s1
    80003044:	fffff097          	auipc	ra,0xfffff
    80003048:	9d0080e7          	jalr	-1584(ra) # 80001a14 <_ZdlPv>
    8000304c:	00090513          	mv	a0,s2
    80003050:	00007097          	auipc	ra,0x7
    80003054:	cf8080e7          	jalr	-776(ra) # 80009d48 <_Unwind_Resume>
}
    80003058:	03813083          	ld	ra,56(sp)
    8000305c:	03013403          	ld	s0,48(sp)
    80003060:	02813483          	ld	s1,40(sp)
    80003064:	02013903          	ld	s2,32(sp)
    80003068:	04010113          	addi	sp,sp,64
    8000306c:	00008067          	ret

0000000080003070 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003070:	ff010113          	addi	sp,sp,-16
    80003074:	00113423          	sd	ra,8(sp)
    80003078:	00813023          	sd	s0,0(sp)
    8000307c:	01010413          	addi	s0,sp,16
    80003080:	00006797          	auipc	a5,0x6
    80003084:	a8078793          	addi	a5,a5,-1408 # 80008b00 <_ZTV7WorkerA+0x10>
    80003088:	00f53023          	sd	a5,0(a0)
    8000308c:	fffff097          	auipc	ra,0xfffff
    80003090:	8b4080e7          	jalr	-1868(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003094:	00813083          	ld	ra,8(sp)
    80003098:	00013403          	ld	s0,0(sp)
    8000309c:	01010113          	addi	sp,sp,16
    800030a0:	00008067          	ret

00000000800030a4 <_ZN7WorkerAD0Ev>:
    800030a4:	fe010113          	addi	sp,sp,-32
    800030a8:	00113c23          	sd	ra,24(sp)
    800030ac:	00813823          	sd	s0,16(sp)
    800030b0:	00913423          	sd	s1,8(sp)
    800030b4:	02010413          	addi	s0,sp,32
    800030b8:	00050493          	mv	s1,a0
    800030bc:	00006797          	auipc	a5,0x6
    800030c0:	a4478793          	addi	a5,a5,-1468 # 80008b00 <_ZTV7WorkerA+0x10>
    800030c4:	00f53023          	sd	a5,0(a0)
    800030c8:	fffff097          	auipc	ra,0xfffff
    800030cc:	878080e7          	jalr	-1928(ra) # 80001940 <_ZN6ThreadD1Ev>
    800030d0:	00048513          	mv	a0,s1
    800030d4:	fffff097          	auipc	ra,0xfffff
    800030d8:	940080e7          	jalr	-1728(ra) # 80001a14 <_ZdlPv>
    800030dc:	01813083          	ld	ra,24(sp)
    800030e0:	01013403          	ld	s0,16(sp)
    800030e4:	00813483          	ld	s1,8(sp)
    800030e8:	02010113          	addi	sp,sp,32
    800030ec:	00008067          	ret

00000000800030f0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800030f0:	ff010113          	addi	sp,sp,-16
    800030f4:	00113423          	sd	ra,8(sp)
    800030f8:	00813023          	sd	s0,0(sp)
    800030fc:	01010413          	addi	s0,sp,16
    80003100:	00006797          	auipc	a5,0x6
    80003104:	a2878793          	addi	a5,a5,-1496 # 80008b28 <_ZTV7WorkerB+0x10>
    80003108:	00f53023          	sd	a5,0(a0)
    8000310c:	fffff097          	auipc	ra,0xfffff
    80003110:	834080e7          	jalr	-1996(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003114:	00813083          	ld	ra,8(sp)
    80003118:	00013403          	ld	s0,0(sp)
    8000311c:	01010113          	addi	sp,sp,16
    80003120:	00008067          	ret

0000000080003124 <_ZN7WorkerBD0Ev>:
    80003124:	fe010113          	addi	sp,sp,-32
    80003128:	00113c23          	sd	ra,24(sp)
    8000312c:	00813823          	sd	s0,16(sp)
    80003130:	00913423          	sd	s1,8(sp)
    80003134:	02010413          	addi	s0,sp,32
    80003138:	00050493          	mv	s1,a0
    8000313c:	00006797          	auipc	a5,0x6
    80003140:	9ec78793          	addi	a5,a5,-1556 # 80008b28 <_ZTV7WorkerB+0x10>
    80003144:	00f53023          	sd	a5,0(a0)
    80003148:	ffffe097          	auipc	ra,0xffffe
    8000314c:	7f8080e7          	jalr	2040(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003150:	00048513          	mv	a0,s1
    80003154:	fffff097          	auipc	ra,0xfffff
    80003158:	8c0080e7          	jalr	-1856(ra) # 80001a14 <_ZdlPv>
    8000315c:	01813083          	ld	ra,24(sp)
    80003160:	01013403          	ld	s0,16(sp)
    80003164:	00813483          	ld	s1,8(sp)
    80003168:	02010113          	addi	sp,sp,32
    8000316c:	00008067          	ret

0000000080003170 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003170:	ff010113          	addi	sp,sp,-16
    80003174:	00113423          	sd	ra,8(sp)
    80003178:	00813023          	sd	s0,0(sp)
    8000317c:	01010413          	addi	s0,sp,16
    80003180:	00006797          	auipc	a5,0x6
    80003184:	9d078793          	addi	a5,a5,-1584 # 80008b50 <_ZTV7WorkerC+0x10>
    80003188:	00f53023          	sd	a5,0(a0)
    8000318c:	ffffe097          	auipc	ra,0xffffe
    80003190:	7b4080e7          	jalr	1972(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003194:	00813083          	ld	ra,8(sp)
    80003198:	00013403          	ld	s0,0(sp)
    8000319c:	01010113          	addi	sp,sp,16
    800031a0:	00008067          	ret

00000000800031a4 <_ZN7WorkerCD0Ev>:
    800031a4:	fe010113          	addi	sp,sp,-32
    800031a8:	00113c23          	sd	ra,24(sp)
    800031ac:	00813823          	sd	s0,16(sp)
    800031b0:	00913423          	sd	s1,8(sp)
    800031b4:	02010413          	addi	s0,sp,32
    800031b8:	00050493          	mv	s1,a0
    800031bc:	00006797          	auipc	a5,0x6
    800031c0:	99478793          	addi	a5,a5,-1644 # 80008b50 <_ZTV7WorkerC+0x10>
    800031c4:	00f53023          	sd	a5,0(a0)
    800031c8:	ffffe097          	auipc	ra,0xffffe
    800031cc:	778080e7          	jalr	1912(ra) # 80001940 <_ZN6ThreadD1Ev>
    800031d0:	00048513          	mv	a0,s1
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	840080e7          	jalr	-1984(ra) # 80001a14 <_ZdlPv>
    800031dc:	01813083          	ld	ra,24(sp)
    800031e0:	01013403          	ld	s0,16(sp)
    800031e4:	00813483          	ld	s1,8(sp)
    800031e8:	02010113          	addi	sp,sp,32
    800031ec:	00008067          	ret

00000000800031f0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800031f0:	ff010113          	addi	sp,sp,-16
    800031f4:	00113423          	sd	ra,8(sp)
    800031f8:	00813023          	sd	s0,0(sp)
    800031fc:	01010413          	addi	s0,sp,16
    80003200:	00006797          	auipc	a5,0x6
    80003204:	97878793          	addi	a5,a5,-1672 # 80008b78 <_ZTV7WorkerD+0x10>
    80003208:	00f53023          	sd	a5,0(a0)
    8000320c:	ffffe097          	auipc	ra,0xffffe
    80003210:	734080e7          	jalr	1844(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003214:	00813083          	ld	ra,8(sp)
    80003218:	00013403          	ld	s0,0(sp)
    8000321c:	01010113          	addi	sp,sp,16
    80003220:	00008067          	ret

0000000080003224 <_ZN7WorkerDD0Ev>:
    80003224:	fe010113          	addi	sp,sp,-32
    80003228:	00113c23          	sd	ra,24(sp)
    8000322c:	00813823          	sd	s0,16(sp)
    80003230:	00913423          	sd	s1,8(sp)
    80003234:	02010413          	addi	s0,sp,32
    80003238:	00050493          	mv	s1,a0
    8000323c:	00006797          	auipc	a5,0x6
    80003240:	93c78793          	addi	a5,a5,-1732 # 80008b78 <_ZTV7WorkerD+0x10>
    80003244:	00f53023          	sd	a5,0(a0)
    80003248:	ffffe097          	auipc	ra,0xffffe
    8000324c:	6f8080e7          	jalr	1784(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003250:	00048513          	mv	a0,s1
    80003254:	ffffe097          	auipc	ra,0xffffe
    80003258:	7c0080e7          	jalr	1984(ra) # 80001a14 <_ZdlPv>
    8000325c:	01813083          	ld	ra,24(sp)
    80003260:	01013403          	ld	s0,16(sp)
    80003264:	00813483          	ld	s1,8(sp)
    80003268:	02010113          	addi	sp,sp,32
    8000326c:	00008067          	ret

0000000080003270 <_ZN7WorkerA3runEv>:
    void run() override {
    80003270:	ff010113          	addi	sp,sp,-16
    80003274:	00113423          	sd	ra,8(sp)
    80003278:	00813023          	sd	s0,0(sp)
    8000327c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003280:	00000593          	li	a1,0
    80003284:	fffff097          	auipc	ra,0xfffff
    80003288:	774080e7          	jalr	1908(ra) # 800029f8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000328c:	00813083          	ld	ra,8(sp)
    80003290:	00013403          	ld	s0,0(sp)
    80003294:	01010113          	addi	sp,sp,16
    80003298:	00008067          	ret

000000008000329c <_ZN7WorkerB3runEv>:
    void run() override {
    8000329c:	ff010113          	addi	sp,sp,-16
    800032a0:	00113423          	sd	ra,8(sp)
    800032a4:	00813023          	sd	s0,0(sp)
    800032a8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800032ac:	00000593          	li	a1,0
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	814080e7          	jalr	-2028(ra) # 80002ac4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800032b8:	00813083          	ld	ra,8(sp)
    800032bc:	00013403          	ld	s0,0(sp)
    800032c0:	01010113          	addi	sp,sp,16
    800032c4:	00008067          	ret

00000000800032c8 <_ZN7WorkerC3runEv>:
    void run() override {
    800032c8:	ff010113          	addi	sp,sp,-16
    800032cc:	00113423          	sd	ra,8(sp)
    800032d0:	00813023          	sd	s0,0(sp)
    800032d4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800032d8:	00000593          	li	a1,0
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	8bc080e7          	jalr	-1860(ra) # 80002b98 <_ZN7WorkerC11workerBodyCEPv>
    }
    800032e4:	00813083          	ld	ra,8(sp)
    800032e8:	00013403          	ld	s0,0(sp)
    800032ec:	01010113          	addi	sp,sp,16
    800032f0:	00008067          	ret

00000000800032f4 <_ZN7WorkerD3runEv>:
    void run() override {
    800032f4:	ff010113          	addi	sp,sp,-16
    800032f8:	00113423          	sd	ra,8(sp)
    800032fc:	00813023          	sd	s0,0(sp)
    80003300:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003304:	00000593          	li	a1,0
    80003308:	00000097          	auipc	ra,0x0
    8000330c:	a10080e7          	jalr	-1520(ra) # 80002d18 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003310:	00813083          	ld	ra,8(sp)
    80003314:	00013403          	ld	s0,0(sp)
    80003318:	01010113          	addi	sp,sp,16
    8000331c:	00008067          	ret

0000000080003320 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003320:	fe010113          	addi	sp,sp,-32
    80003324:	00113c23          	sd	ra,24(sp)
    80003328:	00813823          	sd	s0,16(sp)
    8000332c:	00913423          	sd	s1,8(sp)
    80003330:	01213023          	sd	s2,0(sp)
    80003334:	02010413          	addi	s0,sp,32
    80003338:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000333c:	00100793          	li	a5,1
    80003340:	02a7f863          	bgeu	a5,a0,80003370 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003344:	00a00793          	li	a5,10
    80003348:	02f577b3          	remu	a5,a0,a5
    8000334c:	02078e63          	beqz	a5,80003388 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003350:	fff48513          	addi	a0,s1,-1
    80003354:	00000097          	auipc	ra,0x0
    80003358:	fcc080e7          	jalr	-52(ra) # 80003320 <_ZL9fibonaccim>
    8000335c:	00050913          	mv	s2,a0
    80003360:	ffe48513          	addi	a0,s1,-2
    80003364:	00000097          	auipc	ra,0x0
    80003368:	fbc080e7          	jalr	-68(ra) # 80003320 <_ZL9fibonaccim>
    8000336c:	00a90533          	add	a0,s2,a0
}
    80003370:	01813083          	ld	ra,24(sp)
    80003374:	01013403          	ld	s0,16(sp)
    80003378:	00813483          	ld	s1,8(sp)
    8000337c:	00013903          	ld	s2,0(sp)
    80003380:	02010113          	addi	sp,sp,32
    80003384:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003388:	ffffe097          	auipc	ra,0xffffe
    8000338c:	f68080e7          	jalr	-152(ra) # 800012f0 <_Z15thread_dispatchv>
    80003390:	fc1ff06f          	j	80003350 <_ZL9fibonaccim+0x30>

0000000080003394 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003394:	fe010113          	addi	sp,sp,-32
    80003398:	00113c23          	sd	ra,24(sp)
    8000339c:	00813823          	sd	s0,16(sp)
    800033a0:	00913423          	sd	s1,8(sp)
    800033a4:	01213023          	sd	s2,0(sp)
    800033a8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800033ac:	00a00493          	li	s1,10
    800033b0:	0400006f          	j	800033f0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800033b4:	00004517          	auipc	a0,0x4
    800033b8:	ec450513          	addi	a0,a0,-316 # 80007278 <CONSOLE_STATUS+0x268>
    800033bc:	00000097          	auipc	ra,0x0
    800033c0:	53c080e7          	jalr	1340(ra) # 800038f8 <_Z11printStringPKc>
    800033c4:	00000613          	li	a2,0
    800033c8:	00a00593          	li	a1,10
    800033cc:	00048513          	mv	a0,s1
    800033d0:	00000097          	auipc	ra,0x0
    800033d4:	6d8080e7          	jalr	1752(ra) # 80003aa8 <_Z8printIntiii>
    800033d8:	00004517          	auipc	a0,0x4
    800033dc:	d9050513          	addi	a0,a0,-624 # 80007168 <CONSOLE_STATUS+0x158>
    800033e0:	00000097          	auipc	ra,0x0
    800033e4:	518080e7          	jalr	1304(ra) # 800038f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800033e8:	0014849b          	addiw	s1,s1,1
    800033ec:	0ff4f493          	andi	s1,s1,255
    800033f0:	00c00793          	li	a5,12
    800033f4:	fc97f0e3          	bgeu	a5,s1,800033b4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800033f8:	00004517          	auipc	a0,0x4
    800033fc:	e8850513          	addi	a0,a0,-376 # 80007280 <CONSOLE_STATUS+0x270>
    80003400:	00000097          	auipc	ra,0x0
    80003404:	4f8080e7          	jalr	1272(ra) # 800038f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003408:	00500313          	li	t1,5
    thread_dispatch();
    8000340c:	ffffe097          	auipc	ra,0xffffe
    80003410:	ee4080e7          	jalr	-284(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003414:	01000513          	li	a0,16
    80003418:	00000097          	auipc	ra,0x0
    8000341c:	f08080e7          	jalr	-248(ra) # 80003320 <_ZL9fibonaccim>
    80003420:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003424:	00004517          	auipc	a0,0x4
    80003428:	e6c50513          	addi	a0,a0,-404 # 80007290 <CONSOLE_STATUS+0x280>
    8000342c:	00000097          	auipc	ra,0x0
    80003430:	4cc080e7          	jalr	1228(ra) # 800038f8 <_Z11printStringPKc>
    80003434:	00000613          	li	a2,0
    80003438:	00a00593          	li	a1,10
    8000343c:	0009051b          	sext.w	a0,s2
    80003440:	00000097          	auipc	ra,0x0
    80003444:	668080e7          	jalr	1640(ra) # 80003aa8 <_Z8printIntiii>
    80003448:	00004517          	auipc	a0,0x4
    8000344c:	d2050513          	addi	a0,a0,-736 # 80007168 <CONSOLE_STATUS+0x158>
    80003450:	00000097          	auipc	ra,0x0
    80003454:	4a8080e7          	jalr	1192(ra) # 800038f8 <_Z11printStringPKc>
    80003458:	0400006f          	j	80003498 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000345c:	00004517          	auipc	a0,0x4
    80003460:	e1c50513          	addi	a0,a0,-484 # 80007278 <CONSOLE_STATUS+0x268>
    80003464:	00000097          	auipc	ra,0x0
    80003468:	494080e7          	jalr	1172(ra) # 800038f8 <_Z11printStringPKc>
    8000346c:	00000613          	li	a2,0
    80003470:	00a00593          	li	a1,10
    80003474:	00048513          	mv	a0,s1
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	630080e7          	jalr	1584(ra) # 80003aa8 <_Z8printIntiii>
    80003480:	00004517          	auipc	a0,0x4
    80003484:	ce850513          	addi	a0,a0,-792 # 80007168 <CONSOLE_STATUS+0x158>
    80003488:	00000097          	auipc	ra,0x0
    8000348c:	470080e7          	jalr	1136(ra) # 800038f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003490:	0014849b          	addiw	s1,s1,1
    80003494:	0ff4f493          	andi	s1,s1,255
    80003498:	00f00793          	li	a5,15
    8000349c:	fc97f0e3          	bgeu	a5,s1,8000345c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800034a0:	00004517          	auipc	a0,0x4
    800034a4:	e0050513          	addi	a0,a0,-512 # 800072a0 <CONSOLE_STATUS+0x290>
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	450080e7          	jalr	1104(ra) # 800038f8 <_Z11printStringPKc>
    finishedD = true;
    800034b0:	00100793          	li	a5,1
    800034b4:	00005717          	auipc	a4,0x5
    800034b8:	7af70823          	sb	a5,1968(a4) # 80008c64 <_ZL9finishedD>
    thread_dispatch();
    800034bc:	ffffe097          	auipc	ra,0xffffe
    800034c0:	e34080e7          	jalr	-460(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800034c4:	01813083          	ld	ra,24(sp)
    800034c8:	01013403          	ld	s0,16(sp)
    800034cc:	00813483          	ld	s1,8(sp)
    800034d0:	00013903          	ld	s2,0(sp)
    800034d4:	02010113          	addi	sp,sp,32
    800034d8:	00008067          	ret

00000000800034dc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800034dc:	fe010113          	addi	sp,sp,-32
    800034e0:	00113c23          	sd	ra,24(sp)
    800034e4:	00813823          	sd	s0,16(sp)
    800034e8:	00913423          	sd	s1,8(sp)
    800034ec:	01213023          	sd	s2,0(sp)
    800034f0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034f4:	00000493          	li	s1,0
    800034f8:	0400006f          	j	80003538 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800034fc:	00004517          	auipc	a0,0x4
    80003500:	d4c50513          	addi	a0,a0,-692 # 80007248 <CONSOLE_STATUS+0x238>
    80003504:	00000097          	auipc	ra,0x0
    80003508:	3f4080e7          	jalr	1012(ra) # 800038f8 <_Z11printStringPKc>
    8000350c:	00000613          	li	a2,0
    80003510:	00a00593          	li	a1,10
    80003514:	00048513          	mv	a0,s1
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	590080e7          	jalr	1424(ra) # 80003aa8 <_Z8printIntiii>
    80003520:	00004517          	auipc	a0,0x4
    80003524:	c4850513          	addi	a0,a0,-952 # 80007168 <CONSOLE_STATUS+0x158>
    80003528:	00000097          	auipc	ra,0x0
    8000352c:	3d0080e7          	jalr	976(ra) # 800038f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003530:	0014849b          	addiw	s1,s1,1
    80003534:	0ff4f493          	andi	s1,s1,255
    80003538:	00200793          	li	a5,2
    8000353c:	fc97f0e3          	bgeu	a5,s1,800034fc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003540:	00004517          	auipc	a0,0x4
    80003544:	d1050513          	addi	a0,a0,-752 # 80007250 <CONSOLE_STATUS+0x240>
    80003548:	00000097          	auipc	ra,0x0
    8000354c:	3b0080e7          	jalr	944(ra) # 800038f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003550:	00700313          	li	t1,7
    thread_dispatch();
    80003554:	ffffe097          	auipc	ra,0xffffe
    80003558:	d9c080e7          	jalr	-612(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000355c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003560:	00004517          	auipc	a0,0x4
    80003564:	d0050513          	addi	a0,a0,-768 # 80007260 <CONSOLE_STATUS+0x250>
    80003568:	00000097          	auipc	ra,0x0
    8000356c:	390080e7          	jalr	912(ra) # 800038f8 <_Z11printStringPKc>
    80003570:	00000613          	li	a2,0
    80003574:	00a00593          	li	a1,10
    80003578:	0009051b          	sext.w	a0,s2
    8000357c:	00000097          	auipc	ra,0x0
    80003580:	52c080e7          	jalr	1324(ra) # 80003aa8 <_Z8printIntiii>
    80003584:	00004517          	auipc	a0,0x4
    80003588:	be450513          	addi	a0,a0,-1052 # 80007168 <CONSOLE_STATUS+0x158>
    8000358c:	00000097          	auipc	ra,0x0
    80003590:	36c080e7          	jalr	876(ra) # 800038f8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003594:	00c00513          	li	a0,12
    80003598:	00000097          	auipc	ra,0x0
    8000359c:	d88080e7          	jalr	-632(ra) # 80003320 <_ZL9fibonaccim>
    800035a0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800035a4:	00004517          	auipc	a0,0x4
    800035a8:	cc450513          	addi	a0,a0,-828 # 80007268 <CONSOLE_STATUS+0x258>
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	34c080e7          	jalr	844(ra) # 800038f8 <_Z11printStringPKc>
    800035b4:	00000613          	li	a2,0
    800035b8:	00a00593          	li	a1,10
    800035bc:	0009051b          	sext.w	a0,s2
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	4e8080e7          	jalr	1256(ra) # 80003aa8 <_Z8printIntiii>
    800035c8:	00004517          	auipc	a0,0x4
    800035cc:	ba050513          	addi	a0,a0,-1120 # 80007168 <CONSOLE_STATUS+0x158>
    800035d0:	00000097          	auipc	ra,0x0
    800035d4:	328080e7          	jalr	808(ra) # 800038f8 <_Z11printStringPKc>
    800035d8:	0400006f          	j	80003618 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800035dc:	00004517          	auipc	a0,0x4
    800035e0:	c6c50513          	addi	a0,a0,-916 # 80007248 <CONSOLE_STATUS+0x238>
    800035e4:	00000097          	auipc	ra,0x0
    800035e8:	314080e7          	jalr	788(ra) # 800038f8 <_Z11printStringPKc>
    800035ec:	00000613          	li	a2,0
    800035f0:	00a00593          	li	a1,10
    800035f4:	00048513          	mv	a0,s1
    800035f8:	00000097          	auipc	ra,0x0
    800035fc:	4b0080e7          	jalr	1200(ra) # 80003aa8 <_Z8printIntiii>
    80003600:	00004517          	auipc	a0,0x4
    80003604:	b6850513          	addi	a0,a0,-1176 # 80007168 <CONSOLE_STATUS+0x158>
    80003608:	00000097          	auipc	ra,0x0
    8000360c:	2f0080e7          	jalr	752(ra) # 800038f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003610:	0014849b          	addiw	s1,s1,1
    80003614:	0ff4f493          	andi	s1,s1,255
    80003618:	00500793          	li	a5,5
    8000361c:	fc97f0e3          	bgeu	a5,s1,800035dc <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80003620:	00004517          	auipc	a0,0x4
    80003624:	cf050513          	addi	a0,a0,-784 # 80007310 <CONSOLE_STATUS+0x300>
    80003628:	00000097          	auipc	ra,0x0
    8000362c:	2d0080e7          	jalr	720(ra) # 800038f8 <_Z11printStringPKc>
    finishedC = true;
    80003630:	00100793          	li	a5,1
    80003634:	00005717          	auipc	a4,0x5
    80003638:	62f708a3          	sb	a5,1585(a4) # 80008c65 <_ZL9finishedC>
    thread_dispatch();
    8000363c:	ffffe097          	auipc	ra,0xffffe
    80003640:	cb4080e7          	jalr	-844(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003644:	01813083          	ld	ra,24(sp)
    80003648:	01013403          	ld	s0,16(sp)
    8000364c:	00813483          	ld	s1,8(sp)
    80003650:	00013903          	ld	s2,0(sp)
    80003654:	02010113          	addi	sp,sp,32
    80003658:	00008067          	ret

000000008000365c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000365c:	fe010113          	addi	sp,sp,-32
    80003660:	00113c23          	sd	ra,24(sp)
    80003664:	00813823          	sd	s0,16(sp)
    80003668:	00913423          	sd	s1,8(sp)
    8000366c:	01213023          	sd	s2,0(sp)
    80003670:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003674:	00000913          	li	s2,0
    80003678:	0380006f          	j	800036b0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000367c:	ffffe097          	auipc	ra,0xffffe
    80003680:	c74080e7          	jalr	-908(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003684:	00148493          	addi	s1,s1,1
    80003688:	000027b7          	lui	a5,0x2
    8000368c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003690:	0097ee63          	bltu	a5,s1,800036ac <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003694:	00000713          	li	a4,0
    80003698:	000077b7          	lui	a5,0x7
    8000369c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036a0:	fce7eee3          	bltu	a5,a4,8000367c <_ZL11workerBodyBPv+0x20>
    800036a4:	00170713          	addi	a4,a4,1
    800036a8:	ff1ff06f          	j	80003698 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800036ac:	00190913          	addi	s2,s2,1
    800036b0:	00f00793          	li	a5,15
    800036b4:	0527e063          	bltu	a5,s2,800036f4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800036b8:	00004517          	auipc	a0,0x4
    800036bc:	b7850513          	addi	a0,a0,-1160 # 80007230 <CONSOLE_STATUS+0x220>
    800036c0:	00000097          	auipc	ra,0x0
    800036c4:	238080e7          	jalr	568(ra) # 800038f8 <_Z11printStringPKc>
    800036c8:	00000613          	li	a2,0
    800036cc:	00a00593          	li	a1,10
    800036d0:	0009051b          	sext.w	a0,s2
    800036d4:	00000097          	auipc	ra,0x0
    800036d8:	3d4080e7          	jalr	980(ra) # 80003aa8 <_Z8printIntiii>
    800036dc:	00004517          	auipc	a0,0x4
    800036e0:	a8c50513          	addi	a0,a0,-1396 # 80007168 <CONSOLE_STATUS+0x158>
    800036e4:	00000097          	auipc	ra,0x0
    800036e8:	214080e7          	jalr	532(ra) # 800038f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800036ec:	00000493          	li	s1,0
    800036f0:	f99ff06f          	j	80003688 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800036f4:	00004517          	auipc	a0,0x4
    800036f8:	b4450513          	addi	a0,a0,-1212 # 80007238 <CONSOLE_STATUS+0x228>
    800036fc:	00000097          	auipc	ra,0x0
    80003700:	1fc080e7          	jalr	508(ra) # 800038f8 <_Z11printStringPKc>
    finishedB = true;
    80003704:	00100793          	li	a5,1
    80003708:	00005717          	auipc	a4,0x5
    8000370c:	54f70f23          	sb	a5,1374(a4) # 80008c66 <_ZL9finishedB>
    thread_dispatch();
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	be0080e7          	jalr	-1056(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003718:	01813083          	ld	ra,24(sp)
    8000371c:	01013403          	ld	s0,16(sp)
    80003720:	00813483          	ld	s1,8(sp)
    80003724:	00013903          	ld	s2,0(sp)
    80003728:	02010113          	addi	sp,sp,32
    8000372c:	00008067          	ret

0000000080003730 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003730:	fe010113          	addi	sp,sp,-32
    80003734:	00113c23          	sd	ra,24(sp)
    80003738:	00813823          	sd	s0,16(sp)
    8000373c:	00913423          	sd	s1,8(sp)
    80003740:	01213023          	sd	s2,0(sp)
    80003744:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003748:	00000913          	li	s2,0
    8000374c:	0380006f          	j	80003784 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	ba0080e7          	jalr	-1120(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003758:	00148493          	addi	s1,s1,1
    8000375c:	000027b7          	lui	a5,0x2
    80003760:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003764:	0097ee63          	bltu	a5,s1,80003780 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003768:	00000713          	li	a4,0
    8000376c:	000077b7          	lui	a5,0x7
    80003770:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003774:	fce7eee3          	bltu	a5,a4,80003750 <_ZL11workerBodyAPv+0x20>
    80003778:	00170713          	addi	a4,a4,1
    8000377c:	ff1ff06f          	j	8000376c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003780:	00190913          	addi	s2,s2,1
    80003784:	00900793          	li	a5,9
    80003788:	0527e063          	bltu	a5,s2,800037c8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000378c:	00004517          	auipc	a0,0x4
    80003790:	a8c50513          	addi	a0,a0,-1396 # 80007218 <CONSOLE_STATUS+0x208>
    80003794:	00000097          	auipc	ra,0x0
    80003798:	164080e7          	jalr	356(ra) # 800038f8 <_Z11printStringPKc>
    8000379c:	00000613          	li	a2,0
    800037a0:	00a00593          	li	a1,10
    800037a4:	0009051b          	sext.w	a0,s2
    800037a8:	00000097          	auipc	ra,0x0
    800037ac:	300080e7          	jalr	768(ra) # 80003aa8 <_Z8printIntiii>
    800037b0:	00004517          	auipc	a0,0x4
    800037b4:	9b850513          	addi	a0,a0,-1608 # 80007168 <CONSOLE_STATUS+0x158>
    800037b8:	00000097          	auipc	ra,0x0
    800037bc:	140080e7          	jalr	320(ra) # 800038f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800037c0:	00000493          	li	s1,0
    800037c4:	f99ff06f          	j	8000375c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800037c8:	00004517          	auipc	a0,0x4
    800037cc:	a5850513          	addi	a0,a0,-1448 # 80007220 <CONSOLE_STATUS+0x210>
    800037d0:	00000097          	auipc	ra,0x0
    800037d4:	128080e7          	jalr	296(ra) # 800038f8 <_Z11printStringPKc>
    finishedA = true;
    800037d8:	00100793          	li	a5,1
    800037dc:	00005717          	auipc	a4,0x5
    800037e0:	48f705a3          	sb	a5,1163(a4) # 80008c67 <_ZL9finishedA>
}
    800037e4:	01813083          	ld	ra,24(sp)
    800037e8:	01013403          	ld	s0,16(sp)
    800037ec:	00813483          	ld	s1,8(sp)
    800037f0:	00013903          	ld	s2,0(sp)
    800037f4:	02010113          	addi	sp,sp,32
    800037f8:	00008067          	ret

00000000800037fc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800037fc:	fd010113          	addi	sp,sp,-48
    80003800:	02113423          	sd	ra,40(sp)
    80003804:	02813023          	sd	s0,32(sp)
    80003808:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000380c:	00000613          	li	a2,0
    80003810:	00000597          	auipc	a1,0x0
    80003814:	f2058593          	addi	a1,a1,-224 # 80003730 <_ZL11workerBodyAPv>
    80003818:	fd040513          	addi	a0,s0,-48
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	a00080e7          	jalr	-1536(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80003824:	00004517          	auipc	a0,0x4
    80003828:	a8c50513          	addi	a0,a0,-1396 # 800072b0 <CONSOLE_STATUS+0x2a0>
    8000382c:	00000097          	auipc	ra,0x0
    80003830:	0cc080e7          	jalr	204(ra) # 800038f8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003834:	00000613          	li	a2,0
    80003838:	00000597          	auipc	a1,0x0
    8000383c:	e2458593          	addi	a1,a1,-476 # 8000365c <_ZL11workerBodyBPv>
    80003840:	fd840513          	addi	a0,s0,-40
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	9d8080e7          	jalr	-1576(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    8000384c:	00004517          	auipc	a0,0x4
    80003850:	a7c50513          	addi	a0,a0,-1412 # 800072c8 <CONSOLE_STATUS+0x2b8>
    80003854:	00000097          	auipc	ra,0x0
    80003858:	0a4080e7          	jalr	164(ra) # 800038f8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000385c:	00000613          	li	a2,0
    80003860:	00000597          	auipc	a1,0x0
    80003864:	c7c58593          	addi	a1,a1,-900 # 800034dc <_ZL11workerBodyCPv>
    80003868:	fe040513          	addi	a0,s0,-32
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	9b0080e7          	jalr	-1616(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    80003874:	00004517          	auipc	a0,0x4
    80003878:	a6c50513          	addi	a0,a0,-1428 # 800072e0 <CONSOLE_STATUS+0x2d0>
    8000387c:	00000097          	auipc	ra,0x0
    80003880:	07c080e7          	jalr	124(ra) # 800038f8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003884:	00000613          	li	a2,0
    80003888:	00000597          	auipc	a1,0x0
    8000388c:	b0c58593          	addi	a1,a1,-1268 # 80003394 <_ZL11workerBodyDPv>
    80003890:	fe840513          	addi	a0,s0,-24
    80003894:	ffffe097          	auipc	ra,0xffffe
    80003898:	988080e7          	jalr	-1656(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    8000389c:	00004517          	auipc	a0,0x4
    800038a0:	a5c50513          	addi	a0,a0,-1444 # 800072f8 <CONSOLE_STATUS+0x2e8>
    800038a4:	00000097          	auipc	ra,0x0
    800038a8:	054080e7          	jalr	84(ra) # 800038f8 <_Z11printStringPKc>
    800038ac:	00c0006f          	j	800038b8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800038b0:	ffffe097          	auipc	ra,0xffffe
    800038b4:	a40080e7          	jalr	-1472(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800038b8:	00005797          	auipc	a5,0x5
    800038bc:	3af7c783          	lbu	a5,943(a5) # 80008c67 <_ZL9finishedA>
    800038c0:	fe0788e3          	beqz	a5,800038b0 <_Z18Threads_C_API_testv+0xb4>
    800038c4:	00005797          	auipc	a5,0x5
    800038c8:	3a27c783          	lbu	a5,930(a5) # 80008c66 <_ZL9finishedB>
    800038cc:	fe0782e3          	beqz	a5,800038b0 <_Z18Threads_C_API_testv+0xb4>
    800038d0:	00005797          	auipc	a5,0x5
    800038d4:	3957c783          	lbu	a5,917(a5) # 80008c65 <_ZL9finishedC>
    800038d8:	fc078ce3          	beqz	a5,800038b0 <_Z18Threads_C_API_testv+0xb4>
    800038dc:	00005797          	auipc	a5,0x5
    800038e0:	3887c783          	lbu	a5,904(a5) # 80008c64 <_ZL9finishedD>
    800038e4:	fc0786e3          	beqz	a5,800038b0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800038e8:	02813083          	ld	ra,40(sp)
    800038ec:	02013403          	ld	s0,32(sp)
    800038f0:	03010113          	addi	sp,sp,48
    800038f4:	00008067          	ret

00000000800038f8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800038f8:	fe010113          	addi	sp,sp,-32
    800038fc:	00113c23          	sd	ra,24(sp)
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00913423          	sd	s1,8(sp)
    80003908:	02010413          	addi	s0,sp,32
    8000390c:	00050493          	mv	s1,a0
    LOCK();
    80003910:	00100613          	li	a2,1
    80003914:	00000593          	li	a1,0
    80003918:	00005517          	auipc	a0,0x5
    8000391c:	35050513          	addi	a0,a0,848 # 80008c68 <lockPrint>
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	824080e7          	jalr	-2012(ra) # 80001144 <copy_and_swap>
    80003928:	00050863          	beqz	a0,80003938 <_Z11printStringPKc+0x40>
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	9c4080e7          	jalr	-1596(ra) # 800012f0 <_Z15thread_dispatchv>
    80003934:	fddff06f          	j	80003910 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003938:	0004c503          	lbu	a0,0(s1)
    8000393c:	00050a63          	beqz	a0,80003950 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	ab4080e7          	jalr	-1356(ra) # 800013f4 <_Z4putcc>
        string++;
    80003948:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000394c:	fedff06f          	j	80003938 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80003950:	00000613          	li	a2,0
    80003954:	00100593          	li	a1,1
    80003958:	00005517          	auipc	a0,0x5
    8000395c:	31050513          	addi	a0,a0,784 # 80008c68 <lockPrint>
    80003960:	ffffd097          	auipc	ra,0xffffd
    80003964:	7e4080e7          	jalr	2020(ra) # 80001144 <copy_and_swap>
    80003968:	fe0514e3          	bnez	a0,80003950 <_Z11printStringPKc+0x58>
}
    8000396c:	01813083          	ld	ra,24(sp)
    80003970:	01013403          	ld	s0,16(sp)
    80003974:	00813483          	ld	s1,8(sp)
    80003978:	02010113          	addi	sp,sp,32
    8000397c:	00008067          	ret

0000000080003980 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003980:	fd010113          	addi	sp,sp,-48
    80003984:	02113423          	sd	ra,40(sp)
    80003988:	02813023          	sd	s0,32(sp)
    8000398c:	00913c23          	sd	s1,24(sp)
    80003990:	01213823          	sd	s2,16(sp)
    80003994:	01313423          	sd	s3,8(sp)
    80003998:	01413023          	sd	s4,0(sp)
    8000399c:	03010413          	addi	s0,sp,48
    800039a0:	00050993          	mv	s3,a0
    800039a4:	00058a13          	mv	s4,a1
    LOCK();
    800039a8:	00100613          	li	a2,1
    800039ac:	00000593          	li	a1,0
    800039b0:	00005517          	auipc	a0,0x5
    800039b4:	2b850513          	addi	a0,a0,696 # 80008c68 <lockPrint>
    800039b8:	ffffd097          	auipc	ra,0xffffd
    800039bc:	78c080e7          	jalr	1932(ra) # 80001144 <copy_and_swap>
    800039c0:	00050863          	beqz	a0,800039d0 <_Z9getStringPci+0x50>
    800039c4:	ffffe097          	auipc	ra,0xffffe
    800039c8:	92c080e7          	jalr	-1748(ra) # 800012f0 <_Z15thread_dispatchv>
    800039cc:	fddff06f          	j	800039a8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800039d0:	00000913          	li	s2,0
    800039d4:	00090493          	mv	s1,s2
    800039d8:	0019091b          	addiw	s2,s2,1
    800039dc:	03495a63          	bge	s2,s4,80003a10 <_Z9getStringPci+0x90>
        cc = getc();
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	9ec080e7          	jalr	-1556(ra) # 800013cc <_Z4getcv>
        if(cc < 1)
    800039e8:	02050463          	beqz	a0,80003a10 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800039ec:	009984b3          	add	s1,s3,s1
    800039f0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800039f4:	00a00793          	li	a5,10
    800039f8:	00f50a63          	beq	a0,a5,80003a0c <_Z9getStringPci+0x8c>
    800039fc:	00d00793          	li	a5,13
    80003a00:	fcf51ae3          	bne	a0,a5,800039d4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80003a04:	00090493          	mv	s1,s2
    80003a08:	0080006f          	j	80003a10 <_Z9getStringPci+0x90>
    80003a0c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003a10:	009984b3          	add	s1,s3,s1
    80003a14:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003a18:	00000613          	li	a2,0
    80003a1c:	00100593          	li	a1,1
    80003a20:	00005517          	auipc	a0,0x5
    80003a24:	24850513          	addi	a0,a0,584 # 80008c68 <lockPrint>
    80003a28:	ffffd097          	auipc	ra,0xffffd
    80003a2c:	71c080e7          	jalr	1820(ra) # 80001144 <copy_and_swap>
    80003a30:	fe0514e3          	bnez	a0,80003a18 <_Z9getStringPci+0x98>
    return buf;
}
    80003a34:	00098513          	mv	a0,s3
    80003a38:	02813083          	ld	ra,40(sp)
    80003a3c:	02013403          	ld	s0,32(sp)
    80003a40:	01813483          	ld	s1,24(sp)
    80003a44:	01013903          	ld	s2,16(sp)
    80003a48:	00813983          	ld	s3,8(sp)
    80003a4c:	00013a03          	ld	s4,0(sp)
    80003a50:	03010113          	addi	sp,sp,48
    80003a54:	00008067          	ret

0000000080003a58 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00813423          	sd	s0,8(sp)
    80003a60:	01010413          	addi	s0,sp,16
    80003a64:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003a68:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003a6c:	0006c603          	lbu	a2,0(a3)
    80003a70:	fd06071b          	addiw	a4,a2,-48
    80003a74:	0ff77713          	andi	a4,a4,255
    80003a78:	00900793          	li	a5,9
    80003a7c:	02e7e063          	bltu	a5,a4,80003a9c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003a80:	0025179b          	slliw	a5,a0,0x2
    80003a84:	00a787bb          	addw	a5,a5,a0
    80003a88:	0017979b          	slliw	a5,a5,0x1
    80003a8c:	00168693          	addi	a3,a3,1
    80003a90:	00c787bb          	addw	a5,a5,a2
    80003a94:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003a98:	fd5ff06f          	j	80003a6c <_Z11stringToIntPKc+0x14>
    return n;
}
    80003a9c:	00813403          	ld	s0,8(sp)
    80003aa0:	01010113          	addi	sp,sp,16
    80003aa4:	00008067          	ret

0000000080003aa8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003aa8:	fc010113          	addi	sp,sp,-64
    80003aac:	02113c23          	sd	ra,56(sp)
    80003ab0:	02813823          	sd	s0,48(sp)
    80003ab4:	02913423          	sd	s1,40(sp)
    80003ab8:	03213023          	sd	s2,32(sp)
    80003abc:	01313c23          	sd	s3,24(sp)
    80003ac0:	04010413          	addi	s0,sp,64
    80003ac4:	00050493          	mv	s1,a0
    80003ac8:	00058913          	mv	s2,a1
    80003acc:	00060993          	mv	s3,a2
    LOCK();
    80003ad0:	00100613          	li	a2,1
    80003ad4:	00000593          	li	a1,0
    80003ad8:	00005517          	auipc	a0,0x5
    80003adc:	19050513          	addi	a0,a0,400 # 80008c68 <lockPrint>
    80003ae0:	ffffd097          	auipc	ra,0xffffd
    80003ae4:	664080e7          	jalr	1636(ra) # 80001144 <copy_and_swap>
    80003ae8:	00050863          	beqz	a0,80003af8 <_Z8printIntiii+0x50>
    80003aec:	ffffe097          	auipc	ra,0xffffe
    80003af0:	804080e7          	jalr	-2044(ra) # 800012f0 <_Z15thread_dispatchv>
    80003af4:	fddff06f          	j	80003ad0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003af8:	00098463          	beqz	s3,80003b00 <_Z8printIntiii+0x58>
    80003afc:	0804c463          	bltz	s1,80003b84 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003b00:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003b04:	00000593          	li	a1,0
    }

    i = 0;
    80003b08:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003b0c:	0009079b          	sext.w	a5,s2
    80003b10:	0325773b          	remuw	a4,a0,s2
    80003b14:	00048613          	mv	a2,s1
    80003b18:	0014849b          	addiw	s1,s1,1
    80003b1c:	02071693          	slli	a3,a4,0x20
    80003b20:	0206d693          	srli	a3,a3,0x20
    80003b24:	00005717          	auipc	a4,0x5
    80003b28:	06c70713          	addi	a4,a4,108 # 80008b90 <digits>
    80003b2c:	00d70733          	add	a4,a4,a3
    80003b30:	00074683          	lbu	a3,0(a4)
    80003b34:	fd040713          	addi	a4,s0,-48
    80003b38:	00c70733          	add	a4,a4,a2
    80003b3c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003b40:	0005071b          	sext.w	a4,a0
    80003b44:	0325553b          	divuw	a0,a0,s2
    80003b48:	fcf772e3          	bgeu	a4,a5,80003b0c <_Z8printIntiii+0x64>
    if(neg)
    80003b4c:	00058c63          	beqz	a1,80003b64 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80003b50:	fd040793          	addi	a5,s0,-48
    80003b54:	009784b3          	add	s1,a5,s1
    80003b58:	02d00793          	li	a5,45
    80003b5c:	fef48823          	sb	a5,-16(s1)
    80003b60:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003b64:	fff4849b          	addiw	s1,s1,-1
    80003b68:	0204c463          	bltz	s1,80003b90 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80003b6c:	fd040793          	addi	a5,s0,-48
    80003b70:	009787b3          	add	a5,a5,s1
    80003b74:	ff07c503          	lbu	a0,-16(a5)
    80003b78:	ffffe097          	auipc	ra,0xffffe
    80003b7c:	87c080e7          	jalr	-1924(ra) # 800013f4 <_Z4putcc>
    80003b80:	fe5ff06f          	j	80003b64 <_Z8printIntiii+0xbc>
        x = -xx;
    80003b84:	4090053b          	negw	a0,s1
        neg = 1;
    80003b88:	00100593          	li	a1,1
        x = -xx;
    80003b8c:	f7dff06f          	j	80003b08 <_Z8printIntiii+0x60>

    UNLOCK();
    80003b90:	00000613          	li	a2,0
    80003b94:	00100593          	li	a1,1
    80003b98:	00005517          	auipc	a0,0x5
    80003b9c:	0d050513          	addi	a0,a0,208 # 80008c68 <lockPrint>
    80003ba0:	ffffd097          	auipc	ra,0xffffd
    80003ba4:	5a4080e7          	jalr	1444(ra) # 80001144 <copy_and_swap>
    80003ba8:	fe0514e3          	bnez	a0,80003b90 <_Z8printIntiii+0xe8>
    80003bac:	03813083          	ld	ra,56(sp)
    80003bb0:	03013403          	ld	s0,48(sp)
    80003bb4:	02813483          	ld	s1,40(sp)
    80003bb8:	02013903          	ld	s2,32(sp)
    80003bbc:	01813983          	ld	s3,24(sp)
    80003bc0:	04010113          	addi	sp,sp,64
    80003bc4:	00008067          	ret

0000000080003bc8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80003bc8:	fe010113          	addi	sp,sp,-32
    80003bcc:	00113c23          	sd	ra,24(sp)
    80003bd0:	00813823          	sd	s0,16(sp)
    80003bd4:	00913423          	sd	s1,8(sp)
    80003bd8:	01213023          	sd	s2,0(sp)
    80003bdc:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80003be0:	00003517          	auipc	a0,0x3
    80003be4:	74050513          	addi	a0,a0,1856 # 80007320 <CONSOLE_STATUS+0x310>
    80003be8:	00000097          	auipc	ra,0x0
    80003bec:	d10080e7          	jalr	-752(ra) # 800038f8 <_Z11printStringPKc>
    int test = getc() - '0';
    80003bf0:	ffffd097          	auipc	ra,0xffffd
    80003bf4:	7dc080e7          	jalr	2012(ra) # 800013cc <_Z4getcv>
    80003bf8:	00050913          	mv	s2,a0
    80003bfc:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80003c00:	ffffd097          	auipc	ra,0xffffd
    80003c04:	7cc080e7          	jalr	1996(ra) # 800013cc <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80003c08:	fcb9091b          	addiw	s2,s2,-53
    80003c0c:	00100793          	li	a5,1
    80003c10:	0327f463          	bgeu	a5,s2,80003c38 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80003c14:	00700793          	li	a5,7
    80003c18:	0c97e463          	bltu	a5,s1,80003ce0 <_Z8userMainv+0x118>
    80003c1c:	00249493          	slli	s1,s1,0x2
    80003c20:	00004717          	auipc	a4,0x4
    80003c24:	8c070713          	addi	a4,a4,-1856 # 800074e0 <CONSOLE_STATUS+0x4d0>
    80003c28:	00e484b3          	add	s1,s1,a4
    80003c2c:	0004a783          	lw	a5,0(s1)
    80003c30:	00e787b3          	add	a5,a5,a4
    80003c34:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80003c38:	00003517          	auipc	a0,0x3
    80003c3c:	70850513          	addi	a0,a0,1800 # 80007340 <CONSOLE_STATUS+0x330>
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	cb8080e7          	jalr	-840(ra) # 800038f8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80003c48:	01813083          	ld	ra,24(sp)
    80003c4c:	01013403          	ld	s0,16(sp)
    80003c50:	00813483          	ld	s1,8(sp)
    80003c54:	00013903          	ld	s2,0(sp)
    80003c58:	02010113          	addi	sp,sp,32
    80003c5c:	00008067          	ret
            Threads_C_API_test();
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	b9c080e7          	jalr	-1124(ra) # 800037fc <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80003c68:	00003517          	auipc	a0,0x3
    80003c6c:	70850513          	addi	a0,a0,1800 # 80007370 <CONSOLE_STATUS+0x360>
    80003c70:	00000097          	auipc	ra,0x0
    80003c74:	c88080e7          	jalr	-888(ra) # 800038f8 <_Z11printStringPKc>
            break;
    80003c78:	fd1ff06f          	j	80003c48 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80003c7c:	fffff097          	auipc	ra,0xfffff
    80003c80:	1e4080e7          	jalr	484(ra) # 80002e60 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80003c84:	00003517          	auipc	a0,0x3
    80003c88:	72c50513          	addi	a0,a0,1836 # 800073b0 <CONSOLE_STATUS+0x3a0>
    80003c8c:	00000097          	auipc	ra,0x0
    80003c90:	c6c080e7          	jalr	-916(ra) # 800038f8 <_Z11printStringPKc>
            break;
    80003c94:	fb5ff06f          	j	80003c48 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	a1c080e7          	jalr	-1508(ra) # 800026b4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80003ca0:	00003517          	auipc	a0,0x3
    80003ca4:	75050513          	addi	a0,a0,1872 # 800073f0 <CONSOLE_STATUS+0x3e0>
    80003ca8:	00000097          	auipc	ra,0x0
    80003cac:	c50080e7          	jalr	-944(ra) # 800038f8 <_Z11printStringPKc>
            break;
    80003cb0:	f99ff06f          	j	80003c48 <_Z8userMainv+0x80>
            System_Mode_test();
    80003cb4:	00000097          	auipc	ra,0x0
    80003cb8:	52c080e7          	jalr	1324(ra) # 800041e0 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80003cbc:	00003517          	auipc	a0,0x3
    80003cc0:	78450513          	addi	a0,a0,1924 # 80007440 <CONSOLE_STATUS+0x430>
    80003cc4:	00000097          	auipc	ra,0x0
    80003cc8:	c34080e7          	jalr	-972(ra) # 800038f8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80003ccc:	00003517          	auipc	a0,0x3
    80003cd0:	79450513          	addi	a0,a0,1940 # 80007460 <CONSOLE_STATUS+0x450>
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	c24080e7          	jalr	-988(ra) # 800038f8 <_Z11printStringPKc>
            break;
    80003cdc:	f6dff06f          	j	80003c48 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80003ce0:	00003517          	auipc	a0,0x3
    80003ce4:	7d850513          	addi	a0,a0,2008 # 800074b8 <CONSOLE_STATUS+0x4a8>
    80003ce8:	00000097          	auipc	ra,0x0
    80003cec:	c10080e7          	jalr	-1008(ra) # 800038f8 <_Z11printStringPKc>
    80003cf0:	f59ff06f          	j	80003c48 <_Z8userMainv+0x80>

0000000080003cf4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003cf4:	fe010113          	addi	sp,sp,-32
    80003cf8:	00113c23          	sd	ra,24(sp)
    80003cfc:	00813823          	sd	s0,16(sp)
    80003d00:	00913423          	sd	s1,8(sp)
    80003d04:	01213023          	sd	s2,0(sp)
    80003d08:	02010413          	addi	s0,sp,32
    80003d0c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003d10:	00100793          	li	a5,1
    80003d14:	02a7f863          	bgeu	a5,a0,80003d44 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003d18:	00a00793          	li	a5,10
    80003d1c:	02f577b3          	remu	a5,a0,a5
    80003d20:	02078e63          	beqz	a5,80003d5c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003d24:	fff48513          	addi	a0,s1,-1
    80003d28:	00000097          	auipc	ra,0x0
    80003d2c:	fcc080e7          	jalr	-52(ra) # 80003cf4 <_ZL9fibonaccim>
    80003d30:	00050913          	mv	s2,a0
    80003d34:	ffe48513          	addi	a0,s1,-2
    80003d38:	00000097          	auipc	ra,0x0
    80003d3c:	fbc080e7          	jalr	-68(ra) # 80003cf4 <_ZL9fibonaccim>
    80003d40:	00a90533          	add	a0,s2,a0
}
    80003d44:	01813083          	ld	ra,24(sp)
    80003d48:	01013403          	ld	s0,16(sp)
    80003d4c:	00813483          	ld	s1,8(sp)
    80003d50:	00013903          	ld	s2,0(sp)
    80003d54:	02010113          	addi	sp,sp,32
    80003d58:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003d5c:	ffffd097          	auipc	ra,0xffffd
    80003d60:	594080e7          	jalr	1428(ra) # 800012f0 <_Z15thread_dispatchv>
    80003d64:	fc1ff06f          	j	80003d24 <_ZL9fibonaccim+0x30>

0000000080003d68 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003d68:	fe010113          	addi	sp,sp,-32
    80003d6c:	00113c23          	sd	ra,24(sp)
    80003d70:	00813823          	sd	s0,16(sp)
    80003d74:	00913423          	sd	s1,8(sp)
    80003d78:	01213023          	sd	s2,0(sp)
    80003d7c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003d80:	00a00493          	li	s1,10
    80003d84:	0400006f          	j	80003dc4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d88:	00003517          	auipc	a0,0x3
    80003d8c:	4f050513          	addi	a0,a0,1264 # 80007278 <CONSOLE_STATUS+0x268>
    80003d90:	00000097          	auipc	ra,0x0
    80003d94:	b68080e7          	jalr	-1176(ra) # 800038f8 <_Z11printStringPKc>
    80003d98:	00000613          	li	a2,0
    80003d9c:	00a00593          	li	a1,10
    80003da0:	00048513          	mv	a0,s1
    80003da4:	00000097          	auipc	ra,0x0
    80003da8:	d04080e7          	jalr	-764(ra) # 80003aa8 <_Z8printIntiii>
    80003dac:	00003517          	auipc	a0,0x3
    80003db0:	3bc50513          	addi	a0,a0,956 # 80007168 <CONSOLE_STATUS+0x158>
    80003db4:	00000097          	auipc	ra,0x0
    80003db8:	b44080e7          	jalr	-1212(ra) # 800038f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003dbc:	0014849b          	addiw	s1,s1,1
    80003dc0:	0ff4f493          	andi	s1,s1,255
    80003dc4:	00c00793          	li	a5,12
    80003dc8:	fc97f0e3          	bgeu	a5,s1,80003d88 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003dcc:	00003517          	auipc	a0,0x3
    80003dd0:	4b450513          	addi	a0,a0,1204 # 80007280 <CONSOLE_STATUS+0x270>
    80003dd4:	00000097          	auipc	ra,0x0
    80003dd8:	b24080e7          	jalr	-1244(ra) # 800038f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ddc:	00500313          	li	t1,5
    thread_dispatch();
    80003de0:	ffffd097          	auipc	ra,0xffffd
    80003de4:	510080e7          	jalr	1296(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003de8:	01000513          	li	a0,16
    80003dec:	00000097          	auipc	ra,0x0
    80003df0:	f08080e7          	jalr	-248(ra) # 80003cf4 <_ZL9fibonaccim>
    80003df4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003df8:	00003517          	auipc	a0,0x3
    80003dfc:	49850513          	addi	a0,a0,1176 # 80007290 <CONSOLE_STATUS+0x280>
    80003e00:	00000097          	auipc	ra,0x0
    80003e04:	af8080e7          	jalr	-1288(ra) # 800038f8 <_Z11printStringPKc>
    80003e08:	00000613          	li	a2,0
    80003e0c:	00a00593          	li	a1,10
    80003e10:	0009051b          	sext.w	a0,s2
    80003e14:	00000097          	auipc	ra,0x0
    80003e18:	c94080e7          	jalr	-876(ra) # 80003aa8 <_Z8printIntiii>
    80003e1c:	00003517          	auipc	a0,0x3
    80003e20:	34c50513          	addi	a0,a0,844 # 80007168 <CONSOLE_STATUS+0x158>
    80003e24:	00000097          	auipc	ra,0x0
    80003e28:	ad4080e7          	jalr	-1324(ra) # 800038f8 <_Z11printStringPKc>
    80003e2c:	0400006f          	j	80003e6c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e30:	00003517          	auipc	a0,0x3
    80003e34:	44850513          	addi	a0,a0,1096 # 80007278 <CONSOLE_STATUS+0x268>
    80003e38:	00000097          	auipc	ra,0x0
    80003e3c:	ac0080e7          	jalr	-1344(ra) # 800038f8 <_Z11printStringPKc>
    80003e40:	00000613          	li	a2,0
    80003e44:	00a00593          	li	a1,10
    80003e48:	00048513          	mv	a0,s1
    80003e4c:	00000097          	auipc	ra,0x0
    80003e50:	c5c080e7          	jalr	-932(ra) # 80003aa8 <_Z8printIntiii>
    80003e54:	00003517          	auipc	a0,0x3
    80003e58:	31450513          	addi	a0,a0,788 # 80007168 <CONSOLE_STATUS+0x158>
    80003e5c:	00000097          	auipc	ra,0x0
    80003e60:	a9c080e7          	jalr	-1380(ra) # 800038f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003e64:	0014849b          	addiw	s1,s1,1
    80003e68:	0ff4f493          	andi	s1,s1,255
    80003e6c:	00f00793          	li	a5,15
    80003e70:	fc97f0e3          	bgeu	a5,s1,80003e30 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003e74:	00003517          	auipc	a0,0x3
    80003e78:	42c50513          	addi	a0,a0,1068 # 800072a0 <CONSOLE_STATUS+0x290>
    80003e7c:	00000097          	auipc	ra,0x0
    80003e80:	a7c080e7          	jalr	-1412(ra) # 800038f8 <_Z11printStringPKc>
    finishedD = true;
    80003e84:	00100793          	li	a5,1
    80003e88:	00005717          	auipc	a4,0x5
    80003e8c:	def70423          	sb	a5,-536(a4) # 80008c70 <_ZL9finishedD>
    thread_dispatch();
    80003e90:	ffffd097          	auipc	ra,0xffffd
    80003e94:	460080e7          	jalr	1120(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003e98:	01813083          	ld	ra,24(sp)
    80003e9c:	01013403          	ld	s0,16(sp)
    80003ea0:	00813483          	ld	s1,8(sp)
    80003ea4:	00013903          	ld	s2,0(sp)
    80003ea8:	02010113          	addi	sp,sp,32
    80003eac:	00008067          	ret

0000000080003eb0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003eb0:	fe010113          	addi	sp,sp,-32
    80003eb4:	00113c23          	sd	ra,24(sp)
    80003eb8:	00813823          	sd	s0,16(sp)
    80003ebc:	00913423          	sd	s1,8(sp)
    80003ec0:	01213023          	sd	s2,0(sp)
    80003ec4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003ec8:	00000493          	li	s1,0
    80003ecc:	0400006f          	j	80003f0c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003ed0:	00003517          	auipc	a0,0x3
    80003ed4:	37850513          	addi	a0,a0,888 # 80007248 <CONSOLE_STATUS+0x238>
    80003ed8:	00000097          	auipc	ra,0x0
    80003edc:	a20080e7          	jalr	-1504(ra) # 800038f8 <_Z11printStringPKc>
    80003ee0:	00000613          	li	a2,0
    80003ee4:	00a00593          	li	a1,10
    80003ee8:	00048513          	mv	a0,s1
    80003eec:	00000097          	auipc	ra,0x0
    80003ef0:	bbc080e7          	jalr	-1092(ra) # 80003aa8 <_Z8printIntiii>
    80003ef4:	00003517          	auipc	a0,0x3
    80003ef8:	27450513          	addi	a0,a0,628 # 80007168 <CONSOLE_STATUS+0x158>
    80003efc:	00000097          	auipc	ra,0x0
    80003f00:	9fc080e7          	jalr	-1540(ra) # 800038f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003f04:	0014849b          	addiw	s1,s1,1
    80003f08:	0ff4f493          	andi	s1,s1,255
    80003f0c:	00200793          	li	a5,2
    80003f10:	fc97f0e3          	bgeu	a5,s1,80003ed0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003f14:	00003517          	auipc	a0,0x3
    80003f18:	33c50513          	addi	a0,a0,828 # 80007250 <CONSOLE_STATUS+0x240>
    80003f1c:	00000097          	auipc	ra,0x0
    80003f20:	9dc080e7          	jalr	-1572(ra) # 800038f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003f24:	00700313          	li	t1,7
    thread_dispatch();
    80003f28:	ffffd097          	auipc	ra,0xffffd
    80003f2c:	3c8080e7          	jalr	968(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003f30:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003f34:	00003517          	auipc	a0,0x3
    80003f38:	32c50513          	addi	a0,a0,812 # 80007260 <CONSOLE_STATUS+0x250>
    80003f3c:	00000097          	auipc	ra,0x0
    80003f40:	9bc080e7          	jalr	-1604(ra) # 800038f8 <_Z11printStringPKc>
    80003f44:	00000613          	li	a2,0
    80003f48:	00a00593          	li	a1,10
    80003f4c:	0009051b          	sext.w	a0,s2
    80003f50:	00000097          	auipc	ra,0x0
    80003f54:	b58080e7          	jalr	-1192(ra) # 80003aa8 <_Z8printIntiii>
    80003f58:	00003517          	auipc	a0,0x3
    80003f5c:	21050513          	addi	a0,a0,528 # 80007168 <CONSOLE_STATUS+0x158>
    80003f60:	00000097          	auipc	ra,0x0
    80003f64:	998080e7          	jalr	-1640(ra) # 800038f8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003f68:	00c00513          	li	a0,12
    80003f6c:	00000097          	auipc	ra,0x0
    80003f70:	d88080e7          	jalr	-632(ra) # 80003cf4 <_ZL9fibonaccim>
    80003f74:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003f78:	00003517          	auipc	a0,0x3
    80003f7c:	2f050513          	addi	a0,a0,752 # 80007268 <CONSOLE_STATUS+0x258>
    80003f80:	00000097          	auipc	ra,0x0
    80003f84:	978080e7          	jalr	-1672(ra) # 800038f8 <_Z11printStringPKc>
    80003f88:	00000613          	li	a2,0
    80003f8c:	00a00593          	li	a1,10
    80003f90:	0009051b          	sext.w	a0,s2
    80003f94:	00000097          	auipc	ra,0x0
    80003f98:	b14080e7          	jalr	-1260(ra) # 80003aa8 <_Z8printIntiii>
    80003f9c:	00003517          	auipc	a0,0x3
    80003fa0:	1cc50513          	addi	a0,a0,460 # 80007168 <CONSOLE_STATUS+0x158>
    80003fa4:	00000097          	auipc	ra,0x0
    80003fa8:	954080e7          	jalr	-1708(ra) # 800038f8 <_Z11printStringPKc>
    80003fac:	0400006f          	j	80003fec <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003fb0:	00003517          	auipc	a0,0x3
    80003fb4:	29850513          	addi	a0,a0,664 # 80007248 <CONSOLE_STATUS+0x238>
    80003fb8:	00000097          	auipc	ra,0x0
    80003fbc:	940080e7          	jalr	-1728(ra) # 800038f8 <_Z11printStringPKc>
    80003fc0:	00000613          	li	a2,0
    80003fc4:	00a00593          	li	a1,10
    80003fc8:	00048513          	mv	a0,s1
    80003fcc:	00000097          	auipc	ra,0x0
    80003fd0:	adc080e7          	jalr	-1316(ra) # 80003aa8 <_Z8printIntiii>
    80003fd4:	00003517          	auipc	a0,0x3
    80003fd8:	19450513          	addi	a0,a0,404 # 80007168 <CONSOLE_STATUS+0x158>
    80003fdc:	00000097          	auipc	ra,0x0
    80003fe0:	91c080e7          	jalr	-1764(ra) # 800038f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003fe4:	0014849b          	addiw	s1,s1,1
    80003fe8:	0ff4f493          	andi	s1,s1,255
    80003fec:	00500793          	li	a5,5
    80003ff0:	fc97f0e3          	bgeu	a5,s1,80003fb0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003ff4:	00003517          	auipc	a0,0x3
    80003ff8:	22c50513          	addi	a0,a0,556 # 80007220 <CONSOLE_STATUS+0x210>
    80003ffc:	00000097          	auipc	ra,0x0
    80004000:	8fc080e7          	jalr	-1796(ra) # 800038f8 <_Z11printStringPKc>
    finishedC = true;
    80004004:	00100793          	li	a5,1
    80004008:	00005717          	auipc	a4,0x5
    8000400c:	c6f704a3          	sb	a5,-919(a4) # 80008c71 <_ZL9finishedC>
    thread_dispatch();
    80004010:	ffffd097          	auipc	ra,0xffffd
    80004014:	2e0080e7          	jalr	736(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80004018:	01813083          	ld	ra,24(sp)
    8000401c:	01013403          	ld	s0,16(sp)
    80004020:	00813483          	ld	s1,8(sp)
    80004024:	00013903          	ld	s2,0(sp)
    80004028:	02010113          	addi	sp,sp,32
    8000402c:	00008067          	ret

0000000080004030 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004030:	fe010113          	addi	sp,sp,-32
    80004034:	00113c23          	sd	ra,24(sp)
    80004038:	00813823          	sd	s0,16(sp)
    8000403c:	00913423          	sd	s1,8(sp)
    80004040:	01213023          	sd	s2,0(sp)
    80004044:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004048:	00000913          	li	s2,0
    8000404c:	0400006f          	j	8000408c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80004050:	ffffd097          	auipc	ra,0xffffd
    80004054:	2a0080e7          	jalr	672(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004058:	00148493          	addi	s1,s1,1
    8000405c:	000027b7          	lui	a5,0x2
    80004060:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004064:	0097ee63          	bltu	a5,s1,80004080 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004068:	00000713          	li	a4,0
    8000406c:	000077b7          	lui	a5,0x7
    80004070:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004074:	fce7eee3          	bltu	a5,a4,80004050 <_ZL11workerBodyBPv+0x20>
    80004078:	00170713          	addi	a4,a4,1
    8000407c:	ff1ff06f          	j	8000406c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80004080:	00a00793          	li	a5,10
    80004084:	04f90663          	beq	s2,a5,800040d0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80004088:	00190913          	addi	s2,s2,1
    8000408c:	00f00793          	li	a5,15
    80004090:	0527e463          	bltu	a5,s2,800040d8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80004094:	00003517          	auipc	a0,0x3
    80004098:	19c50513          	addi	a0,a0,412 # 80007230 <CONSOLE_STATUS+0x220>
    8000409c:	00000097          	auipc	ra,0x0
    800040a0:	85c080e7          	jalr	-1956(ra) # 800038f8 <_Z11printStringPKc>
    800040a4:	00000613          	li	a2,0
    800040a8:	00a00593          	li	a1,10
    800040ac:	0009051b          	sext.w	a0,s2
    800040b0:	00000097          	auipc	ra,0x0
    800040b4:	9f8080e7          	jalr	-1544(ra) # 80003aa8 <_Z8printIntiii>
    800040b8:	00003517          	auipc	a0,0x3
    800040bc:	0b050513          	addi	a0,a0,176 # 80007168 <CONSOLE_STATUS+0x158>
    800040c0:	00000097          	auipc	ra,0x0
    800040c4:	838080e7          	jalr	-1992(ra) # 800038f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800040c8:	00000493          	li	s1,0
    800040cc:	f91ff06f          	j	8000405c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800040d0:	14102ff3          	csrr	t6,sepc
    800040d4:	fb5ff06f          	j	80004088 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800040d8:	00003517          	auipc	a0,0x3
    800040dc:	16050513          	addi	a0,a0,352 # 80007238 <CONSOLE_STATUS+0x228>
    800040e0:	00000097          	auipc	ra,0x0
    800040e4:	818080e7          	jalr	-2024(ra) # 800038f8 <_Z11printStringPKc>
    finishedB = true;
    800040e8:	00100793          	li	a5,1
    800040ec:	00005717          	auipc	a4,0x5
    800040f0:	b8f70323          	sb	a5,-1146(a4) # 80008c72 <_ZL9finishedB>
    thread_dispatch();
    800040f4:	ffffd097          	auipc	ra,0xffffd
    800040f8:	1fc080e7          	jalr	508(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800040fc:	01813083          	ld	ra,24(sp)
    80004100:	01013403          	ld	s0,16(sp)
    80004104:	00813483          	ld	s1,8(sp)
    80004108:	00013903          	ld	s2,0(sp)
    8000410c:	02010113          	addi	sp,sp,32
    80004110:	00008067          	ret

0000000080004114 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004114:	fe010113          	addi	sp,sp,-32
    80004118:	00113c23          	sd	ra,24(sp)
    8000411c:	00813823          	sd	s0,16(sp)
    80004120:	00913423          	sd	s1,8(sp)
    80004124:	01213023          	sd	s2,0(sp)
    80004128:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000412c:	00000913          	li	s2,0
    80004130:	0380006f          	j	80004168 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004134:	ffffd097          	auipc	ra,0xffffd
    80004138:	1bc080e7          	jalr	444(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000413c:	00148493          	addi	s1,s1,1
    80004140:	000027b7          	lui	a5,0x2
    80004144:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004148:	0097ee63          	bltu	a5,s1,80004164 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000414c:	00000713          	li	a4,0
    80004150:	000077b7          	lui	a5,0x7
    80004154:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004158:	fce7eee3          	bltu	a5,a4,80004134 <_ZL11workerBodyAPv+0x20>
    8000415c:	00170713          	addi	a4,a4,1
    80004160:	ff1ff06f          	j	80004150 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004164:	00190913          	addi	s2,s2,1
    80004168:	00900793          	li	a5,9
    8000416c:	0527e063          	bltu	a5,s2,800041ac <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004170:	00003517          	auipc	a0,0x3
    80004174:	0a850513          	addi	a0,a0,168 # 80007218 <CONSOLE_STATUS+0x208>
    80004178:	fffff097          	auipc	ra,0xfffff
    8000417c:	780080e7          	jalr	1920(ra) # 800038f8 <_Z11printStringPKc>
    80004180:	00000613          	li	a2,0
    80004184:	00a00593          	li	a1,10
    80004188:	0009051b          	sext.w	a0,s2
    8000418c:	00000097          	auipc	ra,0x0
    80004190:	91c080e7          	jalr	-1764(ra) # 80003aa8 <_Z8printIntiii>
    80004194:	00003517          	auipc	a0,0x3
    80004198:	fd450513          	addi	a0,a0,-44 # 80007168 <CONSOLE_STATUS+0x158>
    8000419c:	fffff097          	auipc	ra,0xfffff
    800041a0:	75c080e7          	jalr	1884(ra) # 800038f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800041a4:	00000493          	li	s1,0
    800041a8:	f99ff06f          	j	80004140 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800041ac:	00003517          	auipc	a0,0x3
    800041b0:	07450513          	addi	a0,a0,116 # 80007220 <CONSOLE_STATUS+0x210>
    800041b4:	fffff097          	auipc	ra,0xfffff
    800041b8:	744080e7          	jalr	1860(ra) # 800038f8 <_Z11printStringPKc>
    finishedA = true;
    800041bc:	00100793          	li	a5,1
    800041c0:	00005717          	auipc	a4,0x5
    800041c4:	aaf709a3          	sb	a5,-1357(a4) # 80008c73 <_ZL9finishedA>
}
    800041c8:	01813083          	ld	ra,24(sp)
    800041cc:	01013403          	ld	s0,16(sp)
    800041d0:	00813483          	ld	s1,8(sp)
    800041d4:	00013903          	ld	s2,0(sp)
    800041d8:	02010113          	addi	sp,sp,32
    800041dc:	00008067          	ret

00000000800041e0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800041e0:	fd010113          	addi	sp,sp,-48
    800041e4:	02113423          	sd	ra,40(sp)
    800041e8:	02813023          	sd	s0,32(sp)
    800041ec:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800041f0:	00000613          	li	a2,0
    800041f4:	00000597          	auipc	a1,0x0
    800041f8:	f2058593          	addi	a1,a1,-224 # 80004114 <_ZL11workerBodyAPv>
    800041fc:	fd040513          	addi	a0,s0,-48
    80004200:	ffffd097          	auipc	ra,0xffffd
    80004204:	01c080e7          	jalr	28(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80004208:	00003517          	auipc	a0,0x3
    8000420c:	0a850513          	addi	a0,a0,168 # 800072b0 <CONSOLE_STATUS+0x2a0>
    80004210:	fffff097          	auipc	ra,0xfffff
    80004214:	6e8080e7          	jalr	1768(ra) # 800038f8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004218:	00000613          	li	a2,0
    8000421c:	00000597          	auipc	a1,0x0
    80004220:	e1458593          	addi	a1,a1,-492 # 80004030 <_ZL11workerBodyBPv>
    80004224:	fd840513          	addi	a0,s0,-40
    80004228:	ffffd097          	auipc	ra,0xffffd
    8000422c:	ff4080e7          	jalr	-12(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    80004230:	00003517          	auipc	a0,0x3
    80004234:	09850513          	addi	a0,a0,152 # 800072c8 <CONSOLE_STATUS+0x2b8>
    80004238:	fffff097          	auipc	ra,0xfffff
    8000423c:	6c0080e7          	jalr	1728(ra) # 800038f8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004240:	00000613          	li	a2,0
    80004244:	00000597          	auipc	a1,0x0
    80004248:	c6c58593          	addi	a1,a1,-916 # 80003eb0 <_ZL11workerBodyCPv>
    8000424c:	fe040513          	addi	a0,s0,-32
    80004250:	ffffd097          	auipc	ra,0xffffd
    80004254:	fcc080e7          	jalr	-52(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    80004258:	00003517          	auipc	a0,0x3
    8000425c:	08850513          	addi	a0,a0,136 # 800072e0 <CONSOLE_STATUS+0x2d0>
    80004260:	fffff097          	auipc	ra,0xfffff
    80004264:	698080e7          	jalr	1688(ra) # 800038f8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004268:	00000613          	li	a2,0
    8000426c:	00000597          	auipc	a1,0x0
    80004270:	afc58593          	addi	a1,a1,-1284 # 80003d68 <_ZL11workerBodyDPv>
    80004274:	fe840513          	addi	a0,s0,-24
    80004278:	ffffd097          	auipc	ra,0xffffd
    8000427c:	fa4080e7          	jalr	-92(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    80004280:	00003517          	auipc	a0,0x3
    80004284:	07850513          	addi	a0,a0,120 # 800072f8 <CONSOLE_STATUS+0x2e8>
    80004288:	fffff097          	auipc	ra,0xfffff
    8000428c:	670080e7          	jalr	1648(ra) # 800038f8 <_Z11printStringPKc>
    80004290:	00c0006f          	j	8000429c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004294:	ffffd097          	auipc	ra,0xffffd
    80004298:	05c080e7          	jalr	92(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000429c:	00005797          	auipc	a5,0x5
    800042a0:	9d77c783          	lbu	a5,-1577(a5) # 80008c73 <_ZL9finishedA>
    800042a4:	fe0788e3          	beqz	a5,80004294 <_Z16System_Mode_testv+0xb4>
    800042a8:	00005797          	auipc	a5,0x5
    800042ac:	9ca7c783          	lbu	a5,-1590(a5) # 80008c72 <_ZL9finishedB>
    800042b0:	fe0782e3          	beqz	a5,80004294 <_Z16System_Mode_testv+0xb4>
    800042b4:	00005797          	auipc	a5,0x5
    800042b8:	9bd7c783          	lbu	a5,-1603(a5) # 80008c71 <_ZL9finishedC>
    800042bc:	fc078ce3          	beqz	a5,80004294 <_Z16System_Mode_testv+0xb4>
    800042c0:	00005797          	auipc	a5,0x5
    800042c4:	9b07c783          	lbu	a5,-1616(a5) # 80008c70 <_ZL9finishedD>
    800042c8:	fc0786e3          	beqz	a5,80004294 <_Z16System_Mode_testv+0xb4>
    }

}
    800042cc:	02813083          	ld	ra,40(sp)
    800042d0:	02013403          	ld	s0,32(sp)
    800042d4:	03010113          	addi	sp,sp,48
    800042d8:	00008067          	ret

00000000800042dc <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800042dc:	fe010113          	addi	sp,sp,-32
    800042e0:	00113c23          	sd	ra,24(sp)
    800042e4:	00813823          	sd	s0,16(sp)
    800042e8:	00913423          	sd	s1,8(sp)
    800042ec:	01213023          	sd	s2,0(sp)
    800042f0:	02010413          	addi	s0,sp,32
    800042f4:	00050493          	mv	s1,a0
    800042f8:	00058913          	mv	s2,a1
    800042fc:	0015879b          	addiw	a5,a1,1
    80004300:	0007851b          	sext.w	a0,a5
    80004304:	00f4a023          	sw	a5,0(s1)
    80004308:	0004a823          	sw	zero,16(s1)
    8000430c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004310:	00251513          	slli	a0,a0,0x2
    80004314:	ffffd097          	auipc	ra,0xffffd
    80004318:	e50080e7          	jalr	-432(ra) # 80001164 <_Z9mem_allocm>
    8000431c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004320:	00000593          	li	a1,0
    80004324:	02048513          	addi	a0,s1,32
    80004328:	ffffd097          	auipc	ra,0xffffd
    8000432c:	fe8080e7          	jalr	-24(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&spaceAvailable, _cap);
    80004330:	00090593          	mv	a1,s2
    80004334:	01848513          	addi	a0,s1,24
    80004338:	ffffd097          	auipc	ra,0xffffd
    8000433c:	fd8080e7          	jalr	-40(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexHead, 1);
    80004340:	00100593          	li	a1,1
    80004344:	02848513          	addi	a0,s1,40
    80004348:	ffffd097          	auipc	ra,0xffffd
    8000434c:	fc8080e7          	jalr	-56(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexTail, 1);
    80004350:	00100593          	li	a1,1
    80004354:	03048513          	addi	a0,s1,48
    80004358:	ffffd097          	auipc	ra,0xffffd
    8000435c:	fb8080e7          	jalr	-72(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
}
    80004360:	01813083          	ld	ra,24(sp)
    80004364:	01013403          	ld	s0,16(sp)
    80004368:	00813483          	ld	s1,8(sp)
    8000436c:	00013903          	ld	s2,0(sp)
    80004370:	02010113          	addi	sp,sp,32
    80004374:	00008067          	ret

0000000080004378 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004378:	fe010113          	addi	sp,sp,-32
    8000437c:	00113c23          	sd	ra,24(sp)
    80004380:	00813823          	sd	s0,16(sp)
    80004384:	00913423          	sd	s1,8(sp)
    80004388:	01213023          	sd	s2,0(sp)
    8000438c:	02010413          	addi	s0,sp,32
    80004390:	00050493          	mv	s1,a0
    80004394:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004398:	01853503          	ld	a0,24(a0)
    8000439c:	ffffd097          	auipc	ra,0xffffd
    800043a0:	fd8080e7          	jalr	-40(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexTail);
    800043a4:	0304b503          	ld	a0,48(s1)
    800043a8:	ffffd097          	auipc	ra,0xffffd
    800043ac:	fcc080e7          	jalr	-52(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    buffer[tail] = val;
    800043b0:	0084b783          	ld	a5,8(s1)
    800043b4:	0144a703          	lw	a4,20(s1)
    800043b8:	00271713          	slli	a4,a4,0x2
    800043bc:	00e787b3          	add	a5,a5,a4
    800043c0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800043c4:	0144a783          	lw	a5,20(s1)
    800043c8:	0017879b          	addiw	a5,a5,1
    800043cc:	0004a703          	lw	a4,0(s1)
    800043d0:	02e7e7bb          	remw	a5,a5,a4
    800043d4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800043d8:	0304b503          	ld	a0,48(s1)
    800043dc:	ffffd097          	auipc	ra,0xffffd
    800043e0:	fc4080e7          	jalr	-60(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    sem_signal(itemAvailable);
    800043e4:	0204b503          	ld	a0,32(s1)
    800043e8:	ffffd097          	auipc	ra,0xffffd
    800043ec:	fb8080e7          	jalr	-72(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

}
    800043f0:	01813083          	ld	ra,24(sp)
    800043f4:	01013403          	ld	s0,16(sp)
    800043f8:	00813483          	ld	s1,8(sp)
    800043fc:	00013903          	ld	s2,0(sp)
    80004400:	02010113          	addi	sp,sp,32
    80004404:	00008067          	ret

0000000080004408 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004408:	fe010113          	addi	sp,sp,-32
    8000440c:	00113c23          	sd	ra,24(sp)
    80004410:	00813823          	sd	s0,16(sp)
    80004414:	00913423          	sd	s1,8(sp)
    80004418:	01213023          	sd	s2,0(sp)
    8000441c:	02010413          	addi	s0,sp,32
    80004420:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004424:	02053503          	ld	a0,32(a0)
    80004428:	ffffd097          	auipc	ra,0xffffd
    8000442c:	f4c080e7          	jalr	-180(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexHead);
    80004430:	0284b503          	ld	a0,40(s1)
    80004434:	ffffd097          	auipc	ra,0xffffd
    80004438:	f40080e7          	jalr	-192(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    int ret = buffer[head];
    8000443c:	0084b703          	ld	a4,8(s1)
    80004440:	0104a783          	lw	a5,16(s1)
    80004444:	00279693          	slli	a3,a5,0x2
    80004448:	00d70733          	add	a4,a4,a3
    8000444c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004450:	0017879b          	addiw	a5,a5,1
    80004454:	0004a703          	lw	a4,0(s1)
    80004458:	02e7e7bb          	remw	a5,a5,a4
    8000445c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004460:	0284b503          	ld	a0,40(s1)
    80004464:	ffffd097          	auipc	ra,0xffffd
    80004468:	f3c080e7          	jalr	-196(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    sem_signal(spaceAvailable);
    8000446c:	0184b503          	ld	a0,24(s1)
    80004470:	ffffd097          	auipc	ra,0xffffd
    80004474:	f30080e7          	jalr	-208(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    80004478:	00090513          	mv	a0,s2
    8000447c:	01813083          	ld	ra,24(sp)
    80004480:	01013403          	ld	s0,16(sp)
    80004484:	00813483          	ld	s1,8(sp)
    80004488:	00013903          	ld	s2,0(sp)
    8000448c:	02010113          	addi	sp,sp,32
    80004490:	00008067          	ret

0000000080004494 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004494:	fe010113          	addi	sp,sp,-32
    80004498:	00113c23          	sd	ra,24(sp)
    8000449c:	00813823          	sd	s0,16(sp)
    800044a0:	00913423          	sd	s1,8(sp)
    800044a4:	01213023          	sd	s2,0(sp)
    800044a8:	02010413          	addi	s0,sp,32
    800044ac:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800044b0:	02853503          	ld	a0,40(a0)
    800044b4:	ffffd097          	auipc	ra,0xffffd
    800044b8:	ec0080e7          	jalr	-320(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    sem_wait(mutexTail);
    800044bc:	0304b503          	ld	a0,48(s1)
    800044c0:	ffffd097          	auipc	ra,0xffffd
    800044c4:	eb4080e7          	jalr	-332(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    if (tail >= head) {
    800044c8:	0144a783          	lw	a5,20(s1)
    800044cc:	0104a903          	lw	s2,16(s1)
    800044d0:	0327ce63          	blt	a5,s2,8000450c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800044d4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800044d8:	0304b503          	ld	a0,48(s1)
    800044dc:	ffffd097          	auipc	ra,0xffffd
    800044e0:	ec4080e7          	jalr	-316(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
    sem_signal(mutexHead);
    800044e4:	0284b503          	ld	a0,40(s1)
    800044e8:	ffffd097          	auipc	ra,0xffffd
    800044ec:	eb8080e7          	jalr	-328(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    800044f0:	00090513          	mv	a0,s2
    800044f4:	01813083          	ld	ra,24(sp)
    800044f8:	01013403          	ld	s0,16(sp)
    800044fc:	00813483          	ld	s1,8(sp)
    80004500:	00013903          	ld	s2,0(sp)
    80004504:	02010113          	addi	sp,sp,32
    80004508:	00008067          	ret
        ret = cap - head + tail;
    8000450c:	0004a703          	lw	a4,0(s1)
    80004510:	4127093b          	subw	s2,a4,s2
    80004514:	00f9093b          	addw	s2,s2,a5
    80004518:	fc1ff06f          	j	800044d8 <_ZN6Buffer6getCntEv+0x44>

000000008000451c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000451c:	fe010113          	addi	sp,sp,-32
    80004520:	00113c23          	sd	ra,24(sp)
    80004524:	00813823          	sd	s0,16(sp)
    80004528:	00913423          	sd	s1,8(sp)
    8000452c:	02010413          	addi	s0,sp,32
    80004530:	00050493          	mv	s1,a0
    putc('\n');
    80004534:	00a00513          	li	a0,10
    80004538:	ffffd097          	auipc	ra,0xffffd
    8000453c:	ebc080e7          	jalr	-324(ra) # 800013f4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80004540:	00003517          	auipc	a0,0x3
    80004544:	fc050513          	addi	a0,a0,-64 # 80007500 <CONSOLE_STATUS+0x4f0>
    80004548:	fffff097          	auipc	ra,0xfffff
    8000454c:	3b0080e7          	jalr	944(ra) # 800038f8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004550:	00048513          	mv	a0,s1
    80004554:	00000097          	auipc	ra,0x0
    80004558:	f40080e7          	jalr	-192(ra) # 80004494 <_ZN6Buffer6getCntEv>
    8000455c:	02a05c63          	blez	a0,80004594 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004560:	0084b783          	ld	a5,8(s1)
    80004564:	0104a703          	lw	a4,16(s1)
    80004568:	00271713          	slli	a4,a4,0x2
    8000456c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004570:	0007c503          	lbu	a0,0(a5)
    80004574:	ffffd097          	auipc	ra,0xffffd
    80004578:	e80080e7          	jalr	-384(ra) # 800013f4 <_Z4putcc>
        head = (head + 1) % cap;
    8000457c:	0104a783          	lw	a5,16(s1)
    80004580:	0017879b          	addiw	a5,a5,1
    80004584:	0004a703          	lw	a4,0(s1)
    80004588:	02e7e7bb          	remw	a5,a5,a4
    8000458c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004590:	fc1ff06f          	j	80004550 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004594:	02100513          	li	a0,33
    80004598:	ffffd097          	auipc	ra,0xffffd
    8000459c:	e5c080e7          	jalr	-420(ra) # 800013f4 <_Z4putcc>
    putc('\n');
    800045a0:	00a00513          	li	a0,10
    800045a4:	ffffd097          	auipc	ra,0xffffd
    800045a8:	e50080e7          	jalr	-432(ra) # 800013f4 <_Z4putcc>
    mem_free(buffer);
    800045ac:	0084b503          	ld	a0,8(s1)
    800045b0:	ffffd097          	auipc	ra,0xffffd
    800045b4:	bf8080e7          	jalr	-1032(ra) # 800011a8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800045b8:	0204b503          	ld	a0,32(s1)
    800045bc:	ffffd097          	auipc	ra,0xffffd
    800045c0:	d8c080e7          	jalr	-628(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(spaceAvailable);
    800045c4:	0184b503          	ld	a0,24(s1)
    800045c8:	ffffd097          	auipc	ra,0xffffd
    800045cc:	d80080e7          	jalr	-640(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexTail);
    800045d0:	0304b503          	ld	a0,48(s1)
    800045d4:	ffffd097          	auipc	ra,0xffffd
    800045d8:	d74080e7          	jalr	-652(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexHead);
    800045dc:	0284b503          	ld	a0,40(s1)
    800045e0:	ffffd097          	auipc	ra,0xffffd
    800045e4:	d68080e7          	jalr	-664(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
}
    800045e8:	01813083          	ld	ra,24(sp)
    800045ec:	01013403          	ld	s0,16(sp)
    800045f0:	00813483          	ld	s1,8(sp)
    800045f4:	02010113          	addi	sp,sp,32
    800045f8:	00008067          	ret

00000000800045fc <start>:
    800045fc:	ff010113          	addi	sp,sp,-16
    80004600:	00813423          	sd	s0,8(sp)
    80004604:	01010413          	addi	s0,sp,16
    80004608:	300027f3          	csrr	a5,mstatus
    8000460c:	ffffe737          	lui	a4,0xffffe
    80004610:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff491f>
    80004614:	00e7f7b3          	and	a5,a5,a4
    80004618:	00001737          	lui	a4,0x1
    8000461c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004620:	00e7e7b3          	or	a5,a5,a4
    80004624:	30079073          	csrw	mstatus,a5
    80004628:	00000797          	auipc	a5,0x0
    8000462c:	16078793          	addi	a5,a5,352 # 80004788 <system_main>
    80004630:	34179073          	csrw	mepc,a5
    80004634:	00000793          	li	a5,0
    80004638:	18079073          	csrw	satp,a5
    8000463c:	000107b7          	lui	a5,0x10
    80004640:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004644:	30279073          	csrw	medeleg,a5
    80004648:	30379073          	csrw	mideleg,a5
    8000464c:	104027f3          	csrr	a5,sie
    80004650:	2227e793          	ori	a5,a5,546
    80004654:	10479073          	csrw	sie,a5
    80004658:	fff00793          	li	a5,-1
    8000465c:	00a7d793          	srli	a5,a5,0xa
    80004660:	3b079073          	csrw	pmpaddr0,a5
    80004664:	00f00793          	li	a5,15
    80004668:	3a079073          	csrw	pmpcfg0,a5
    8000466c:	f14027f3          	csrr	a5,mhartid
    80004670:	0200c737          	lui	a4,0x200c
    80004674:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004678:	0007869b          	sext.w	a3,a5
    8000467c:	00269713          	slli	a4,a3,0x2
    80004680:	000f4637          	lui	a2,0xf4
    80004684:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004688:	00d70733          	add	a4,a4,a3
    8000468c:	0037979b          	slliw	a5,a5,0x3
    80004690:	020046b7          	lui	a3,0x2004
    80004694:	00d787b3          	add	a5,a5,a3
    80004698:	00c585b3          	add	a1,a1,a2
    8000469c:	00371693          	slli	a3,a4,0x3
    800046a0:	00004717          	auipc	a4,0x4
    800046a4:	5e070713          	addi	a4,a4,1504 # 80008c80 <timer_scratch>
    800046a8:	00b7b023          	sd	a1,0(a5)
    800046ac:	00d70733          	add	a4,a4,a3
    800046b0:	00f73c23          	sd	a5,24(a4)
    800046b4:	02c73023          	sd	a2,32(a4)
    800046b8:	34071073          	csrw	mscratch,a4
    800046bc:	00000797          	auipc	a5,0x0
    800046c0:	6e478793          	addi	a5,a5,1764 # 80004da0 <timervec>
    800046c4:	30579073          	csrw	mtvec,a5
    800046c8:	300027f3          	csrr	a5,mstatus
    800046cc:	0087e793          	ori	a5,a5,8
    800046d0:	30079073          	csrw	mstatus,a5
    800046d4:	304027f3          	csrr	a5,mie
    800046d8:	0807e793          	ori	a5,a5,128
    800046dc:	30479073          	csrw	mie,a5
    800046e0:	f14027f3          	csrr	a5,mhartid
    800046e4:	0007879b          	sext.w	a5,a5
    800046e8:	00078213          	mv	tp,a5
    800046ec:	30200073          	mret
    800046f0:	00813403          	ld	s0,8(sp)
    800046f4:	01010113          	addi	sp,sp,16
    800046f8:	00008067          	ret

00000000800046fc <timerinit>:
    800046fc:	ff010113          	addi	sp,sp,-16
    80004700:	00813423          	sd	s0,8(sp)
    80004704:	01010413          	addi	s0,sp,16
    80004708:	f14027f3          	csrr	a5,mhartid
    8000470c:	0200c737          	lui	a4,0x200c
    80004710:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004714:	0007869b          	sext.w	a3,a5
    80004718:	00269713          	slli	a4,a3,0x2
    8000471c:	000f4637          	lui	a2,0xf4
    80004720:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004724:	00d70733          	add	a4,a4,a3
    80004728:	0037979b          	slliw	a5,a5,0x3
    8000472c:	020046b7          	lui	a3,0x2004
    80004730:	00d787b3          	add	a5,a5,a3
    80004734:	00c585b3          	add	a1,a1,a2
    80004738:	00371693          	slli	a3,a4,0x3
    8000473c:	00004717          	auipc	a4,0x4
    80004740:	54470713          	addi	a4,a4,1348 # 80008c80 <timer_scratch>
    80004744:	00b7b023          	sd	a1,0(a5)
    80004748:	00d70733          	add	a4,a4,a3
    8000474c:	00f73c23          	sd	a5,24(a4)
    80004750:	02c73023          	sd	a2,32(a4)
    80004754:	34071073          	csrw	mscratch,a4
    80004758:	00000797          	auipc	a5,0x0
    8000475c:	64878793          	addi	a5,a5,1608 # 80004da0 <timervec>
    80004760:	30579073          	csrw	mtvec,a5
    80004764:	300027f3          	csrr	a5,mstatus
    80004768:	0087e793          	ori	a5,a5,8
    8000476c:	30079073          	csrw	mstatus,a5
    80004770:	304027f3          	csrr	a5,mie
    80004774:	0807e793          	ori	a5,a5,128
    80004778:	30479073          	csrw	mie,a5
    8000477c:	00813403          	ld	s0,8(sp)
    80004780:	01010113          	addi	sp,sp,16
    80004784:	00008067          	ret

0000000080004788 <system_main>:
    80004788:	fe010113          	addi	sp,sp,-32
    8000478c:	00813823          	sd	s0,16(sp)
    80004790:	00913423          	sd	s1,8(sp)
    80004794:	00113c23          	sd	ra,24(sp)
    80004798:	02010413          	addi	s0,sp,32
    8000479c:	00000097          	auipc	ra,0x0
    800047a0:	0c4080e7          	jalr	196(ra) # 80004860 <cpuid>
    800047a4:	00004497          	auipc	s1,0x4
    800047a8:	44c48493          	addi	s1,s1,1100 # 80008bf0 <started>
    800047ac:	02050263          	beqz	a0,800047d0 <system_main+0x48>
    800047b0:	0004a783          	lw	a5,0(s1)
    800047b4:	0007879b          	sext.w	a5,a5
    800047b8:	fe078ce3          	beqz	a5,800047b0 <system_main+0x28>
    800047bc:	0ff0000f          	fence
    800047c0:	00003517          	auipc	a0,0x3
    800047c4:	d8850513          	addi	a0,a0,-632 # 80007548 <CONSOLE_STATUS+0x538>
    800047c8:	00001097          	auipc	ra,0x1
    800047cc:	a74080e7          	jalr	-1420(ra) # 8000523c <panic>
    800047d0:	00001097          	auipc	ra,0x1
    800047d4:	9c8080e7          	jalr	-1592(ra) # 80005198 <consoleinit>
    800047d8:	00001097          	auipc	ra,0x1
    800047dc:	154080e7          	jalr	340(ra) # 8000592c <printfinit>
    800047e0:	00003517          	auipc	a0,0x3
    800047e4:	98850513          	addi	a0,a0,-1656 # 80007168 <CONSOLE_STATUS+0x158>
    800047e8:	00001097          	auipc	ra,0x1
    800047ec:	ab0080e7          	jalr	-1360(ra) # 80005298 <__printf>
    800047f0:	00003517          	auipc	a0,0x3
    800047f4:	d2850513          	addi	a0,a0,-728 # 80007518 <CONSOLE_STATUS+0x508>
    800047f8:	00001097          	auipc	ra,0x1
    800047fc:	aa0080e7          	jalr	-1376(ra) # 80005298 <__printf>
    80004800:	00003517          	auipc	a0,0x3
    80004804:	96850513          	addi	a0,a0,-1688 # 80007168 <CONSOLE_STATUS+0x158>
    80004808:	00001097          	auipc	ra,0x1
    8000480c:	a90080e7          	jalr	-1392(ra) # 80005298 <__printf>
    80004810:	00001097          	auipc	ra,0x1
    80004814:	4a8080e7          	jalr	1192(ra) # 80005cb8 <kinit>
    80004818:	00000097          	auipc	ra,0x0
    8000481c:	148080e7          	jalr	328(ra) # 80004960 <trapinit>
    80004820:	00000097          	auipc	ra,0x0
    80004824:	16c080e7          	jalr	364(ra) # 8000498c <trapinithart>
    80004828:	00000097          	auipc	ra,0x0
    8000482c:	5b8080e7          	jalr	1464(ra) # 80004de0 <plicinit>
    80004830:	00000097          	auipc	ra,0x0
    80004834:	5d8080e7          	jalr	1496(ra) # 80004e08 <plicinithart>
    80004838:	00000097          	auipc	ra,0x0
    8000483c:	078080e7          	jalr	120(ra) # 800048b0 <userinit>
    80004840:	0ff0000f          	fence
    80004844:	00100793          	li	a5,1
    80004848:	00003517          	auipc	a0,0x3
    8000484c:	ce850513          	addi	a0,a0,-792 # 80007530 <CONSOLE_STATUS+0x520>
    80004850:	00f4a023          	sw	a5,0(s1)
    80004854:	00001097          	auipc	ra,0x1
    80004858:	a44080e7          	jalr	-1468(ra) # 80005298 <__printf>
    8000485c:	0000006f          	j	8000485c <system_main+0xd4>

0000000080004860 <cpuid>:
    80004860:	ff010113          	addi	sp,sp,-16
    80004864:	00813423          	sd	s0,8(sp)
    80004868:	01010413          	addi	s0,sp,16
    8000486c:	00020513          	mv	a0,tp
    80004870:	00813403          	ld	s0,8(sp)
    80004874:	0005051b          	sext.w	a0,a0
    80004878:	01010113          	addi	sp,sp,16
    8000487c:	00008067          	ret

0000000080004880 <mycpu>:
    80004880:	ff010113          	addi	sp,sp,-16
    80004884:	00813423          	sd	s0,8(sp)
    80004888:	01010413          	addi	s0,sp,16
    8000488c:	00020793          	mv	a5,tp
    80004890:	00813403          	ld	s0,8(sp)
    80004894:	0007879b          	sext.w	a5,a5
    80004898:	00779793          	slli	a5,a5,0x7
    8000489c:	00005517          	auipc	a0,0x5
    800048a0:	41450513          	addi	a0,a0,1044 # 80009cb0 <cpus>
    800048a4:	00f50533          	add	a0,a0,a5
    800048a8:	01010113          	addi	sp,sp,16
    800048ac:	00008067          	ret

00000000800048b0 <userinit>:
    800048b0:	ff010113          	addi	sp,sp,-16
    800048b4:	00813423          	sd	s0,8(sp)
    800048b8:	01010413          	addi	s0,sp,16
    800048bc:	00813403          	ld	s0,8(sp)
    800048c0:	01010113          	addi	sp,sp,16
    800048c4:	ffffd317          	auipc	t1,0xffffd
    800048c8:	fec30067          	jr	-20(t1) # 800018b0 <main>

00000000800048cc <either_copyout>:
    800048cc:	ff010113          	addi	sp,sp,-16
    800048d0:	00813023          	sd	s0,0(sp)
    800048d4:	00113423          	sd	ra,8(sp)
    800048d8:	01010413          	addi	s0,sp,16
    800048dc:	02051663          	bnez	a0,80004908 <either_copyout+0x3c>
    800048e0:	00058513          	mv	a0,a1
    800048e4:	00060593          	mv	a1,a2
    800048e8:	0006861b          	sext.w	a2,a3
    800048ec:	00002097          	auipc	ra,0x2
    800048f0:	c58080e7          	jalr	-936(ra) # 80006544 <__memmove>
    800048f4:	00813083          	ld	ra,8(sp)
    800048f8:	00013403          	ld	s0,0(sp)
    800048fc:	00000513          	li	a0,0
    80004900:	01010113          	addi	sp,sp,16
    80004904:	00008067          	ret
    80004908:	00003517          	auipc	a0,0x3
    8000490c:	c6850513          	addi	a0,a0,-920 # 80007570 <CONSOLE_STATUS+0x560>
    80004910:	00001097          	auipc	ra,0x1
    80004914:	92c080e7          	jalr	-1748(ra) # 8000523c <panic>

0000000080004918 <either_copyin>:
    80004918:	ff010113          	addi	sp,sp,-16
    8000491c:	00813023          	sd	s0,0(sp)
    80004920:	00113423          	sd	ra,8(sp)
    80004924:	01010413          	addi	s0,sp,16
    80004928:	02059463          	bnez	a1,80004950 <either_copyin+0x38>
    8000492c:	00060593          	mv	a1,a2
    80004930:	0006861b          	sext.w	a2,a3
    80004934:	00002097          	auipc	ra,0x2
    80004938:	c10080e7          	jalr	-1008(ra) # 80006544 <__memmove>
    8000493c:	00813083          	ld	ra,8(sp)
    80004940:	00013403          	ld	s0,0(sp)
    80004944:	00000513          	li	a0,0
    80004948:	01010113          	addi	sp,sp,16
    8000494c:	00008067          	ret
    80004950:	00003517          	auipc	a0,0x3
    80004954:	c4850513          	addi	a0,a0,-952 # 80007598 <CONSOLE_STATUS+0x588>
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	8e4080e7          	jalr	-1820(ra) # 8000523c <panic>

0000000080004960 <trapinit>:
    80004960:	ff010113          	addi	sp,sp,-16
    80004964:	00813423          	sd	s0,8(sp)
    80004968:	01010413          	addi	s0,sp,16
    8000496c:	00813403          	ld	s0,8(sp)
    80004970:	00003597          	auipc	a1,0x3
    80004974:	c5058593          	addi	a1,a1,-944 # 800075c0 <CONSOLE_STATUS+0x5b0>
    80004978:	00005517          	auipc	a0,0x5
    8000497c:	3b850513          	addi	a0,a0,952 # 80009d30 <tickslock>
    80004980:	01010113          	addi	sp,sp,16
    80004984:	00001317          	auipc	t1,0x1
    80004988:	5c430067          	jr	1476(t1) # 80005f48 <initlock>

000000008000498c <trapinithart>:
    8000498c:	ff010113          	addi	sp,sp,-16
    80004990:	00813423          	sd	s0,8(sp)
    80004994:	01010413          	addi	s0,sp,16
    80004998:	00000797          	auipc	a5,0x0
    8000499c:	2f878793          	addi	a5,a5,760 # 80004c90 <kernelvec>
    800049a0:	10579073          	csrw	stvec,a5
    800049a4:	00813403          	ld	s0,8(sp)
    800049a8:	01010113          	addi	sp,sp,16
    800049ac:	00008067          	ret

00000000800049b0 <usertrap>:
    800049b0:	ff010113          	addi	sp,sp,-16
    800049b4:	00813423          	sd	s0,8(sp)
    800049b8:	01010413          	addi	s0,sp,16
    800049bc:	00813403          	ld	s0,8(sp)
    800049c0:	01010113          	addi	sp,sp,16
    800049c4:	00008067          	ret

00000000800049c8 <usertrapret>:
    800049c8:	ff010113          	addi	sp,sp,-16
    800049cc:	00813423          	sd	s0,8(sp)
    800049d0:	01010413          	addi	s0,sp,16
    800049d4:	00813403          	ld	s0,8(sp)
    800049d8:	01010113          	addi	sp,sp,16
    800049dc:	00008067          	ret

00000000800049e0 <kerneltrap>:
    800049e0:	fe010113          	addi	sp,sp,-32
    800049e4:	00813823          	sd	s0,16(sp)
    800049e8:	00113c23          	sd	ra,24(sp)
    800049ec:	00913423          	sd	s1,8(sp)
    800049f0:	02010413          	addi	s0,sp,32
    800049f4:	142025f3          	csrr	a1,scause
    800049f8:	100027f3          	csrr	a5,sstatus
    800049fc:	0027f793          	andi	a5,a5,2
    80004a00:	10079c63          	bnez	a5,80004b18 <kerneltrap+0x138>
    80004a04:	142027f3          	csrr	a5,scause
    80004a08:	0207ce63          	bltz	a5,80004a44 <kerneltrap+0x64>
    80004a0c:	00003517          	auipc	a0,0x3
    80004a10:	bfc50513          	addi	a0,a0,-1028 # 80007608 <CONSOLE_STATUS+0x5f8>
    80004a14:	00001097          	auipc	ra,0x1
    80004a18:	884080e7          	jalr	-1916(ra) # 80005298 <__printf>
    80004a1c:	141025f3          	csrr	a1,sepc
    80004a20:	14302673          	csrr	a2,stval
    80004a24:	00003517          	auipc	a0,0x3
    80004a28:	bf450513          	addi	a0,a0,-1036 # 80007618 <CONSOLE_STATUS+0x608>
    80004a2c:	00001097          	auipc	ra,0x1
    80004a30:	86c080e7          	jalr	-1940(ra) # 80005298 <__printf>
    80004a34:	00003517          	auipc	a0,0x3
    80004a38:	bfc50513          	addi	a0,a0,-1028 # 80007630 <CONSOLE_STATUS+0x620>
    80004a3c:	00001097          	auipc	ra,0x1
    80004a40:	800080e7          	jalr	-2048(ra) # 8000523c <panic>
    80004a44:	0ff7f713          	andi	a4,a5,255
    80004a48:	00900693          	li	a3,9
    80004a4c:	04d70063          	beq	a4,a3,80004a8c <kerneltrap+0xac>
    80004a50:	fff00713          	li	a4,-1
    80004a54:	03f71713          	slli	a4,a4,0x3f
    80004a58:	00170713          	addi	a4,a4,1
    80004a5c:	fae798e3          	bne	a5,a4,80004a0c <kerneltrap+0x2c>
    80004a60:	00000097          	auipc	ra,0x0
    80004a64:	e00080e7          	jalr	-512(ra) # 80004860 <cpuid>
    80004a68:	06050663          	beqz	a0,80004ad4 <kerneltrap+0xf4>
    80004a6c:	144027f3          	csrr	a5,sip
    80004a70:	ffd7f793          	andi	a5,a5,-3
    80004a74:	14479073          	csrw	sip,a5
    80004a78:	01813083          	ld	ra,24(sp)
    80004a7c:	01013403          	ld	s0,16(sp)
    80004a80:	00813483          	ld	s1,8(sp)
    80004a84:	02010113          	addi	sp,sp,32
    80004a88:	00008067          	ret
    80004a8c:	00000097          	auipc	ra,0x0
    80004a90:	3c8080e7          	jalr	968(ra) # 80004e54 <plic_claim>
    80004a94:	00a00793          	li	a5,10
    80004a98:	00050493          	mv	s1,a0
    80004a9c:	06f50863          	beq	a0,a5,80004b0c <kerneltrap+0x12c>
    80004aa0:	fc050ce3          	beqz	a0,80004a78 <kerneltrap+0x98>
    80004aa4:	00050593          	mv	a1,a0
    80004aa8:	00003517          	auipc	a0,0x3
    80004aac:	b4050513          	addi	a0,a0,-1216 # 800075e8 <CONSOLE_STATUS+0x5d8>
    80004ab0:	00000097          	auipc	ra,0x0
    80004ab4:	7e8080e7          	jalr	2024(ra) # 80005298 <__printf>
    80004ab8:	01013403          	ld	s0,16(sp)
    80004abc:	01813083          	ld	ra,24(sp)
    80004ac0:	00048513          	mv	a0,s1
    80004ac4:	00813483          	ld	s1,8(sp)
    80004ac8:	02010113          	addi	sp,sp,32
    80004acc:	00000317          	auipc	t1,0x0
    80004ad0:	3c030067          	jr	960(t1) # 80004e8c <plic_complete>
    80004ad4:	00005517          	auipc	a0,0x5
    80004ad8:	25c50513          	addi	a0,a0,604 # 80009d30 <tickslock>
    80004adc:	00001097          	auipc	ra,0x1
    80004ae0:	490080e7          	jalr	1168(ra) # 80005f6c <acquire>
    80004ae4:	00004717          	auipc	a4,0x4
    80004ae8:	11070713          	addi	a4,a4,272 # 80008bf4 <ticks>
    80004aec:	00072783          	lw	a5,0(a4)
    80004af0:	00005517          	auipc	a0,0x5
    80004af4:	24050513          	addi	a0,a0,576 # 80009d30 <tickslock>
    80004af8:	0017879b          	addiw	a5,a5,1
    80004afc:	00f72023          	sw	a5,0(a4)
    80004b00:	00001097          	auipc	ra,0x1
    80004b04:	538080e7          	jalr	1336(ra) # 80006038 <release>
    80004b08:	f65ff06f          	j	80004a6c <kerneltrap+0x8c>
    80004b0c:	00001097          	auipc	ra,0x1
    80004b10:	094080e7          	jalr	148(ra) # 80005ba0 <uartintr>
    80004b14:	fa5ff06f          	j	80004ab8 <kerneltrap+0xd8>
    80004b18:	00003517          	auipc	a0,0x3
    80004b1c:	ab050513          	addi	a0,a0,-1360 # 800075c8 <CONSOLE_STATUS+0x5b8>
    80004b20:	00000097          	auipc	ra,0x0
    80004b24:	71c080e7          	jalr	1820(ra) # 8000523c <panic>

0000000080004b28 <clockintr>:
    80004b28:	fe010113          	addi	sp,sp,-32
    80004b2c:	00813823          	sd	s0,16(sp)
    80004b30:	00913423          	sd	s1,8(sp)
    80004b34:	00113c23          	sd	ra,24(sp)
    80004b38:	02010413          	addi	s0,sp,32
    80004b3c:	00005497          	auipc	s1,0x5
    80004b40:	1f448493          	addi	s1,s1,500 # 80009d30 <tickslock>
    80004b44:	00048513          	mv	a0,s1
    80004b48:	00001097          	auipc	ra,0x1
    80004b4c:	424080e7          	jalr	1060(ra) # 80005f6c <acquire>
    80004b50:	00004717          	auipc	a4,0x4
    80004b54:	0a470713          	addi	a4,a4,164 # 80008bf4 <ticks>
    80004b58:	00072783          	lw	a5,0(a4)
    80004b5c:	01013403          	ld	s0,16(sp)
    80004b60:	01813083          	ld	ra,24(sp)
    80004b64:	00048513          	mv	a0,s1
    80004b68:	0017879b          	addiw	a5,a5,1
    80004b6c:	00813483          	ld	s1,8(sp)
    80004b70:	00f72023          	sw	a5,0(a4)
    80004b74:	02010113          	addi	sp,sp,32
    80004b78:	00001317          	auipc	t1,0x1
    80004b7c:	4c030067          	jr	1216(t1) # 80006038 <release>

0000000080004b80 <devintr>:
    80004b80:	142027f3          	csrr	a5,scause
    80004b84:	00000513          	li	a0,0
    80004b88:	0007c463          	bltz	a5,80004b90 <devintr+0x10>
    80004b8c:	00008067          	ret
    80004b90:	fe010113          	addi	sp,sp,-32
    80004b94:	00813823          	sd	s0,16(sp)
    80004b98:	00113c23          	sd	ra,24(sp)
    80004b9c:	00913423          	sd	s1,8(sp)
    80004ba0:	02010413          	addi	s0,sp,32
    80004ba4:	0ff7f713          	andi	a4,a5,255
    80004ba8:	00900693          	li	a3,9
    80004bac:	04d70c63          	beq	a4,a3,80004c04 <devintr+0x84>
    80004bb0:	fff00713          	li	a4,-1
    80004bb4:	03f71713          	slli	a4,a4,0x3f
    80004bb8:	00170713          	addi	a4,a4,1
    80004bbc:	00e78c63          	beq	a5,a4,80004bd4 <devintr+0x54>
    80004bc0:	01813083          	ld	ra,24(sp)
    80004bc4:	01013403          	ld	s0,16(sp)
    80004bc8:	00813483          	ld	s1,8(sp)
    80004bcc:	02010113          	addi	sp,sp,32
    80004bd0:	00008067          	ret
    80004bd4:	00000097          	auipc	ra,0x0
    80004bd8:	c8c080e7          	jalr	-884(ra) # 80004860 <cpuid>
    80004bdc:	06050663          	beqz	a0,80004c48 <devintr+0xc8>
    80004be0:	144027f3          	csrr	a5,sip
    80004be4:	ffd7f793          	andi	a5,a5,-3
    80004be8:	14479073          	csrw	sip,a5
    80004bec:	01813083          	ld	ra,24(sp)
    80004bf0:	01013403          	ld	s0,16(sp)
    80004bf4:	00813483          	ld	s1,8(sp)
    80004bf8:	00200513          	li	a0,2
    80004bfc:	02010113          	addi	sp,sp,32
    80004c00:	00008067          	ret
    80004c04:	00000097          	auipc	ra,0x0
    80004c08:	250080e7          	jalr	592(ra) # 80004e54 <plic_claim>
    80004c0c:	00a00793          	li	a5,10
    80004c10:	00050493          	mv	s1,a0
    80004c14:	06f50663          	beq	a0,a5,80004c80 <devintr+0x100>
    80004c18:	00100513          	li	a0,1
    80004c1c:	fa0482e3          	beqz	s1,80004bc0 <devintr+0x40>
    80004c20:	00048593          	mv	a1,s1
    80004c24:	00003517          	auipc	a0,0x3
    80004c28:	9c450513          	addi	a0,a0,-1596 # 800075e8 <CONSOLE_STATUS+0x5d8>
    80004c2c:	00000097          	auipc	ra,0x0
    80004c30:	66c080e7          	jalr	1644(ra) # 80005298 <__printf>
    80004c34:	00048513          	mv	a0,s1
    80004c38:	00000097          	auipc	ra,0x0
    80004c3c:	254080e7          	jalr	596(ra) # 80004e8c <plic_complete>
    80004c40:	00100513          	li	a0,1
    80004c44:	f7dff06f          	j	80004bc0 <devintr+0x40>
    80004c48:	00005517          	auipc	a0,0x5
    80004c4c:	0e850513          	addi	a0,a0,232 # 80009d30 <tickslock>
    80004c50:	00001097          	auipc	ra,0x1
    80004c54:	31c080e7          	jalr	796(ra) # 80005f6c <acquire>
    80004c58:	00004717          	auipc	a4,0x4
    80004c5c:	f9c70713          	addi	a4,a4,-100 # 80008bf4 <ticks>
    80004c60:	00072783          	lw	a5,0(a4)
    80004c64:	00005517          	auipc	a0,0x5
    80004c68:	0cc50513          	addi	a0,a0,204 # 80009d30 <tickslock>
    80004c6c:	0017879b          	addiw	a5,a5,1
    80004c70:	00f72023          	sw	a5,0(a4)
    80004c74:	00001097          	auipc	ra,0x1
    80004c78:	3c4080e7          	jalr	964(ra) # 80006038 <release>
    80004c7c:	f65ff06f          	j	80004be0 <devintr+0x60>
    80004c80:	00001097          	auipc	ra,0x1
    80004c84:	f20080e7          	jalr	-224(ra) # 80005ba0 <uartintr>
    80004c88:	fadff06f          	j	80004c34 <devintr+0xb4>
    80004c8c:	0000                	unimp
	...

0000000080004c90 <kernelvec>:
    80004c90:	f0010113          	addi	sp,sp,-256
    80004c94:	00113023          	sd	ra,0(sp)
    80004c98:	00213423          	sd	sp,8(sp)
    80004c9c:	00313823          	sd	gp,16(sp)
    80004ca0:	00413c23          	sd	tp,24(sp)
    80004ca4:	02513023          	sd	t0,32(sp)
    80004ca8:	02613423          	sd	t1,40(sp)
    80004cac:	02713823          	sd	t2,48(sp)
    80004cb0:	02813c23          	sd	s0,56(sp)
    80004cb4:	04913023          	sd	s1,64(sp)
    80004cb8:	04a13423          	sd	a0,72(sp)
    80004cbc:	04b13823          	sd	a1,80(sp)
    80004cc0:	04c13c23          	sd	a2,88(sp)
    80004cc4:	06d13023          	sd	a3,96(sp)
    80004cc8:	06e13423          	sd	a4,104(sp)
    80004ccc:	06f13823          	sd	a5,112(sp)
    80004cd0:	07013c23          	sd	a6,120(sp)
    80004cd4:	09113023          	sd	a7,128(sp)
    80004cd8:	09213423          	sd	s2,136(sp)
    80004cdc:	09313823          	sd	s3,144(sp)
    80004ce0:	09413c23          	sd	s4,152(sp)
    80004ce4:	0b513023          	sd	s5,160(sp)
    80004ce8:	0b613423          	sd	s6,168(sp)
    80004cec:	0b713823          	sd	s7,176(sp)
    80004cf0:	0b813c23          	sd	s8,184(sp)
    80004cf4:	0d913023          	sd	s9,192(sp)
    80004cf8:	0da13423          	sd	s10,200(sp)
    80004cfc:	0db13823          	sd	s11,208(sp)
    80004d00:	0dc13c23          	sd	t3,216(sp)
    80004d04:	0fd13023          	sd	t4,224(sp)
    80004d08:	0fe13423          	sd	t5,232(sp)
    80004d0c:	0ff13823          	sd	t6,240(sp)
    80004d10:	cd1ff0ef          	jal	ra,800049e0 <kerneltrap>
    80004d14:	00013083          	ld	ra,0(sp)
    80004d18:	00813103          	ld	sp,8(sp)
    80004d1c:	01013183          	ld	gp,16(sp)
    80004d20:	02013283          	ld	t0,32(sp)
    80004d24:	02813303          	ld	t1,40(sp)
    80004d28:	03013383          	ld	t2,48(sp)
    80004d2c:	03813403          	ld	s0,56(sp)
    80004d30:	04013483          	ld	s1,64(sp)
    80004d34:	04813503          	ld	a0,72(sp)
    80004d38:	05013583          	ld	a1,80(sp)
    80004d3c:	05813603          	ld	a2,88(sp)
    80004d40:	06013683          	ld	a3,96(sp)
    80004d44:	06813703          	ld	a4,104(sp)
    80004d48:	07013783          	ld	a5,112(sp)
    80004d4c:	07813803          	ld	a6,120(sp)
    80004d50:	08013883          	ld	a7,128(sp)
    80004d54:	08813903          	ld	s2,136(sp)
    80004d58:	09013983          	ld	s3,144(sp)
    80004d5c:	09813a03          	ld	s4,152(sp)
    80004d60:	0a013a83          	ld	s5,160(sp)
    80004d64:	0a813b03          	ld	s6,168(sp)
    80004d68:	0b013b83          	ld	s7,176(sp)
    80004d6c:	0b813c03          	ld	s8,184(sp)
    80004d70:	0c013c83          	ld	s9,192(sp)
    80004d74:	0c813d03          	ld	s10,200(sp)
    80004d78:	0d013d83          	ld	s11,208(sp)
    80004d7c:	0d813e03          	ld	t3,216(sp)
    80004d80:	0e013e83          	ld	t4,224(sp)
    80004d84:	0e813f03          	ld	t5,232(sp)
    80004d88:	0f013f83          	ld	t6,240(sp)
    80004d8c:	10010113          	addi	sp,sp,256
    80004d90:	10200073          	sret
    80004d94:	00000013          	nop
    80004d98:	00000013          	nop
    80004d9c:	00000013          	nop

0000000080004da0 <timervec>:
    80004da0:	34051573          	csrrw	a0,mscratch,a0
    80004da4:	00b53023          	sd	a1,0(a0)
    80004da8:	00c53423          	sd	a2,8(a0)
    80004dac:	00d53823          	sd	a3,16(a0)
    80004db0:	01853583          	ld	a1,24(a0)
    80004db4:	02053603          	ld	a2,32(a0)
    80004db8:	0005b683          	ld	a3,0(a1)
    80004dbc:	00c686b3          	add	a3,a3,a2
    80004dc0:	00d5b023          	sd	a3,0(a1)
    80004dc4:	00200593          	li	a1,2
    80004dc8:	14459073          	csrw	sip,a1
    80004dcc:	01053683          	ld	a3,16(a0)
    80004dd0:	00853603          	ld	a2,8(a0)
    80004dd4:	00053583          	ld	a1,0(a0)
    80004dd8:	34051573          	csrrw	a0,mscratch,a0
    80004ddc:	30200073          	mret

0000000080004de0 <plicinit>:
    80004de0:	ff010113          	addi	sp,sp,-16
    80004de4:	00813423          	sd	s0,8(sp)
    80004de8:	01010413          	addi	s0,sp,16
    80004dec:	00813403          	ld	s0,8(sp)
    80004df0:	0c0007b7          	lui	a5,0xc000
    80004df4:	00100713          	li	a4,1
    80004df8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80004dfc:	00e7a223          	sw	a4,4(a5)
    80004e00:	01010113          	addi	sp,sp,16
    80004e04:	00008067          	ret

0000000080004e08 <plicinithart>:
    80004e08:	ff010113          	addi	sp,sp,-16
    80004e0c:	00813023          	sd	s0,0(sp)
    80004e10:	00113423          	sd	ra,8(sp)
    80004e14:	01010413          	addi	s0,sp,16
    80004e18:	00000097          	auipc	ra,0x0
    80004e1c:	a48080e7          	jalr	-1464(ra) # 80004860 <cpuid>
    80004e20:	0085171b          	slliw	a4,a0,0x8
    80004e24:	0c0027b7          	lui	a5,0xc002
    80004e28:	00e787b3          	add	a5,a5,a4
    80004e2c:	40200713          	li	a4,1026
    80004e30:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004e34:	00813083          	ld	ra,8(sp)
    80004e38:	00013403          	ld	s0,0(sp)
    80004e3c:	00d5151b          	slliw	a0,a0,0xd
    80004e40:	0c2017b7          	lui	a5,0xc201
    80004e44:	00a78533          	add	a0,a5,a0
    80004e48:	00052023          	sw	zero,0(a0)
    80004e4c:	01010113          	addi	sp,sp,16
    80004e50:	00008067          	ret

0000000080004e54 <plic_claim>:
    80004e54:	ff010113          	addi	sp,sp,-16
    80004e58:	00813023          	sd	s0,0(sp)
    80004e5c:	00113423          	sd	ra,8(sp)
    80004e60:	01010413          	addi	s0,sp,16
    80004e64:	00000097          	auipc	ra,0x0
    80004e68:	9fc080e7          	jalr	-1540(ra) # 80004860 <cpuid>
    80004e6c:	00813083          	ld	ra,8(sp)
    80004e70:	00013403          	ld	s0,0(sp)
    80004e74:	00d5151b          	slliw	a0,a0,0xd
    80004e78:	0c2017b7          	lui	a5,0xc201
    80004e7c:	00a78533          	add	a0,a5,a0
    80004e80:	00452503          	lw	a0,4(a0)
    80004e84:	01010113          	addi	sp,sp,16
    80004e88:	00008067          	ret

0000000080004e8c <plic_complete>:
    80004e8c:	fe010113          	addi	sp,sp,-32
    80004e90:	00813823          	sd	s0,16(sp)
    80004e94:	00913423          	sd	s1,8(sp)
    80004e98:	00113c23          	sd	ra,24(sp)
    80004e9c:	02010413          	addi	s0,sp,32
    80004ea0:	00050493          	mv	s1,a0
    80004ea4:	00000097          	auipc	ra,0x0
    80004ea8:	9bc080e7          	jalr	-1604(ra) # 80004860 <cpuid>
    80004eac:	01813083          	ld	ra,24(sp)
    80004eb0:	01013403          	ld	s0,16(sp)
    80004eb4:	00d5179b          	slliw	a5,a0,0xd
    80004eb8:	0c201737          	lui	a4,0xc201
    80004ebc:	00f707b3          	add	a5,a4,a5
    80004ec0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004ec4:	00813483          	ld	s1,8(sp)
    80004ec8:	02010113          	addi	sp,sp,32
    80004ecc:	00008067          	ret

0000000080004ed0 <consolewrite>:
    80004ed0:	fb010113          	addi	sp,sp,-80
    80004ed4:	04813023          	sd	s0,64(sp)
    80004ed8:	04113423          	sd	ra,72(sp)
    80004edc:	02913c23          	sd	s1,56(sp)
    80004ee0:	03213823          	sd	s2,48(sp)
    80004ee4:	03313423          	sd	s3,40(sp)
    80004ee8:	03413023          	sd	s4,32(sp)
    80004eec:	01513c23          	sd	s5,24(sp)
    80004ef0:	05010413          	addi	s0,sp,80
    80004ef4:	06c05c63          	blez	a2,80004f6c <consolewrite+0x9c>
    80004ef8:	00060993          	mv	s3,a2
    80004efc:	00050a13          	mv	s4,a0
    80004f00:	00058493          	mv	s1,a1
    80004f04:	00000913          	li	s2,0
    80004f08:	fff00a93          	li	s5,-1
    80004f0c:	01c0006f          	j	80004f28 <consolewrite+0x58>
    80004f10:	fbf44503          	lbu	a0,-65(s0)
    80004f14:	0019091b          	addiw	s2,s2,1
    80004f18:	00148493          	addi	s1,s1,1
    80004f1c:	00001097          	auipc	ra,0x1
    80004f20:	a9c080e7          	jalr	-1380(ra) # 800059b8 <uartputc>
    80004f24:	03298063          	beq	s3,s2,80004f44 <consolewrite+0x74>
    80004f28:	00048613          	mv	a2,s1
    80004f2c:	00100693          	li	a3,1
    80004f30:	000a0593          	mv	a1,s4
    80004f34:	fbf40513          	addi	a0,s0,-65
    80004f38:	00000097          	auipc	ra,0x0
    80004f3c:	9e0080e7          	jalr	-1568(ra) # 80004918 <either_copyin>
    80004f40:	fd5518e3          	bne	a0,s5,80004f10 <consolewrite+0x40>
    80004f44:	04813083          	ld	ra,72(sp)
    80004f48:	04013403          	ld	s0,64(sp)
    80004f4c:	03813483          	ld	s1,56(sp)
    80004f50:	02813983          	ld	s3,40(sp)
    80004f54:	02013a03          	ld	s4,32(sp)
    80004f58:	01813a83          	ld	s5,24(sp)
    80004f5c:	00090513          	mv	a0,s2
    80004f60:	03013903          	ld	s2,48(sp)
    80004f64:	05010113          	addi	sp,sp,80
    80004f68:	00008067          	ret
    80004f6c:	00000913          	li	s2,0
    80004f70:	fd5ff06f          	j	80004f44 <consolewrite+0x74>

0000000080004f74 <consoleread>:
    80004f74:	f9010113          	addi	sp,sp,-112
    80004f78:	06813023          	sd	s0,96(sp)
    80004f7c:	04913c23          	sd	s1,88(sp)
    80004f80:	05213823          	sd	s2,80(sp)
    80004f84:	05313423          	sd	s3,72(sp)
    80004f88:	05413023          	sd	s4,64(sp)
    80004f8c:	03513c23          	sd	s5,56(sp)
    80004f90:	03613823          	sd	s6,48(sp)
    80004f94:	03713423          	sd	s7,40(sp)
    80004f98:	03813023          	sd	s8,32(sp)
    80004f9c:	06113423          	sd	ra,104(sp)
    80004fa0:	01913c23          	sd	s9,24(sp)
    80004fa4:	07010413          	addi	s0,sp,112
    80004fa8:	00060b93          	mv	s7,a2
    80004fac:	00050913          	mv	s2,a0
    80004fb0:	00058c13          	mv	s8,a1
    80004fb4:	00060b1b          	sext.w	s6,a2
    80004fb8:	00005497          	auipc	s1,0x5
    80004fbc:	da048493          	addi	s1,s1,-608 # 80009d58 <cons>
    80004fc0:	00400993          	li	s3,4
    80004fc4:	fff00a13          	li	s4,-1
    80004fc8:	00a00a93          	li	s5,10
    80004fcc:	05705e63          	blez	s7,80005028 <consoleread+0xb4>
    80004fd0:	09c4a703          	lw	a4,156(s1)
    80004fd4:	0984a783          	lw	a5,152(s1)
    80004fd8:	0007071b          	sext.w	a4,a4
    80004fdc:	08e78463          	beq	a5,a4,80005064 <consoleread+0xf0>
    80004fe0:	07f7f713          	andi	a4,a5,127
    80004fe4:	00e48733          	add	a4,s1,a4
    80004fe8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80004fec:	0017869b          	addiw	a3,a5,1
    80004ff0:	08d4ac23          	sw	a3,152(s1)
    80004ff4:	00070c9b          	sext.w	s9,a4
    80004ff8:	0b370663          	beq	a4,s3,800050a4 <consoleread+0x130>
    80004ffc:	00100693          	li	a3,1
    80005000:	f9f40613          	addi	a2,s0,-97
    80005004:	000c0593          	mv	a1,s8
    80005008:	00090513          	mv	a0,s2
    8000500c:	f8e40fa3          	sb	a4,-97(s0)
    80005010:	00000097          	auipc	ra,0x0
    80005014:	8bc080e7          	jalr	-1860(ra) # 800048cc <either_copyout>
    80005018:	01450863          	beq	a0,s4,80005028 <consoleread+0xb4>
    8000501c:	001c0c13          	addi	s8,s8,1
    80005020:	fffb8b9b          	addiw	s7,s7,-1
    80005024:	fb5c94e3          	bne	s9,s5,80004fcc <consoleread+0x58>
    80005028:	000b851b          	sext.w	a0,s7
    8000502c:	06813083          	ld	ra,104(sp)
    80005030:	06013403          	ld	s0,96(sp)
    80005034:	05813483          	ld	s1,88(sp)
    80005038:	05013903          	ld	s2,80(sp)
    8000503c:	04813983          	ld	s3,72(sp)
    80005040:	04013a03          	ld	s4,64(sp)
    80005044:	03813a83          	ld	s5,56(sp)
    80005048:	02813b83          	ld	s7,40(sp)
    8000504c:	02013c03          	ld	s8,32(sp)
    80005050:	01813c83          	ld	s9,24(sp)
    80005054:	40ab053b          	subw	a0,s6,a0
    80005058:	03013b03          	ld	s6,48(sp)
    8000505c:	07010113          	addi	sp,sp,112
    80005060:	00008067          	ret
    80005064:	00001097          	auipc	ra,0x1
    80005068:	1d8080e7          	jalr	472(ra) # 8000623c <push_on>
    8000506c:	0984a703          	lw	a4,152(s1)
    80005070:	09c4a783          	lw	a5,156(s1)
    80005074:	0007879b          	sext.w	a5,a5
    80005078:	fef70ce3          	beq	a4,a5,80005070 <consoleread+0xfc>
    8000507c:	00001097          	auipc	ra,0x1
    80005080:	234080e7          	jalr	564(ra) # 800062b0 <pop_on>
    80005084:	0984a783          	lw	a5,152(s1)
    80005088:	07f7f713          	andi	a4,a5,127
    8000508c:	00e48733          	add	a4,s1,a4
    80005090:	01874703          	lbu	a4,24(a4)
    80005094:	0017869b          	addiw	a3,a5,1
    80005098:	08d4ac23          	sw	a3,152(s1)
    8000509c:	00070c9b          	sext.w	s9,a4
    800050a0:	f5371ee3          	bne	a4,s3,80004ffc <consoleread+0x88>
    800050a4:	000b851b          	sext.w	a0,s7
    800050a8:	f96bf2e3          	bgeu	s7,s6,8000502c <consoleread+0xb8>
    800050ac:	08f4ac23          	sw	a5,152(s1)
    800050b0:	f7dff06f          	j	8000502c <consoleread+0xb8>

00000000800050b4 <consputc>:
    800050b4:	10000793          	li	a5,256
    800050b8:	00f50663          	beq	a0,a5,800050c4 <consputc+0x10>
    800050bc:	00001317          	auipc	t1,0x1
    800050c0:	9f430067          	jr	-1548(t1) # 80005ab0 <uartputc_sync>
    800050c4:	ff010113          	addi	sp,sp,-16
    800050c8:	00113423          	sd	ra,8(sp)
    800050cc:	00813023          	sd	s0,0(sp)
    800050d0:	01010413          	addi	s0,sp,16
    800050d4:	00800513          	li	a0,8
    800050d8:	00001097          	auipc	ra,0x1
    800050dc:	9d8080e7          	jalr	-1576(ra) # 80005ab0 <uartputc_sync>
    800050e0:	02000513          	li	a0,32
    800050e4:	00001097          	auipc	ra,0x1
    800050e8:	9cc080e7          	jalr	-1588(ra) # 80005ab0 <uartputc_sync>
    800050ec:	00013403          	ld	s0,0(sp)
    800050f0:	00813083          	ld	ra,8(sp)
    800050f4:	00800513          	li	a0,8
    800050f8:	01010113          	addi	sp,sp,16
    800050fc:	00001317          	auipc	t1,0x1
    80005100:	9b430067          	jr	-1612(t1) # 80005ab0 <uartputc_sync>

0000000080005104 <consoleintr>:
    80005104:	fe010113          	addi	sp,sp,-32
    80005108:	00813823          	sd	s0,16(sp)
    8000510c:	00913423          	sd	s1,8(sp)
    80005110:	01213023          	sd	s2,0(sp)
    80005114:	00113c23          	sd	ra,24(sp)
    80005118:	02010413          	addi	s0,sp,32
    8000511c:	00005917          	auipc	s2,0x5
    80005120:	c3c90913          	addi	s2,s2,-964 # 80009d58 <cons>
    80005124:	00050493          	mv	s1,a0
    80005128:	00090513          	mv	a0,s2
    8000512c:	00001097          	auipc	ra,0x1
    80005130:	e40080e7          	jalr	-448(ra) # 80005f6c <acquire>
    80005134:	02048c63          	beqz	s1,8000516c <consoleintr+0x68>
    80005138:	0a092783          	lw	a5,160(s2)
    8000513c:	09892703          	lw	a4,152(s2)
    80005140:	07f00693          	li	a3,127
    80005144:	40e7873b          	subw	a4,a5,a4
    80005148:	02e6e263          	bltu	a3,a4,8000516c <consoleintr+0x68>
    8000514c:	00d00713          	li	a4,13
    80005150:	04e48063          	beq	s1,a4,80005190 <consoleintr+0x8c>
    80005154:	07f7f713          	andi	a4,a5,127
    80005158:	00e90733          	add	a4,s2,a4
    8000515c:	0017879b          	addiw	a5,a5,1
    80005160:	0af92023          	sw	a5,160(s2)
    80005164:	00970c23          	sb	s1,24(a4)
    80005168:	08f92e23          	sw	a5,156(s2)
    8000516c:	01013403          	ld	s0,16(sp)
    80005170:	01813083          	ld	ra,24(sp)
    80005174:	00813483          	ld	s1,8(sp)
    80005178:	00013903          	ld	s2,0(sp)
    8000517c:	00005517          	auipc	a0,0x5
    80005180:	bdc50513          	addi	a0,a0,-1060 # 80009d58 <cons>
    80005184:	02010113          	addi	sp,sp,32
    80005188:	00001317          	auipc	t1,0x1
    8000518c:	eb030067          	jr	-336(t1) # 80006038 <release>
    80005190:	00a00493          	li	s1,10
    80005194:	fc1ff06f          	j	80005154 <consoleintr+0x50>

0000000080005198 <consoleinit>:
    80005198:	fe010113          	addi	sp,sp,-32
    8000519c:	00113c23          	sd	ra,24(sp)
    800051a0:	00813823          	sd	s0,16(sp)
    800051a4:	00913423          	sd	s1,8(sp)
    800051a8:	02010413          	addi	s0,sp,32
    800051ac:	00005497          	auipc	s1,0x5
    800051b0:	bac48493          	addi	s1,s1,-1108 # 80009d58 <cons>
    800051b4:	00048513          	mv	a0,s1
    800051b8:	00002597          	auipc	a1,0x2
    800051bc:	48858593          	addi	a1,a1,1160 # 80007640 <CONSOLE_STATUS+0x630>
    800051c0:	00001097          	auipc	ra,0x1
    800051c4:	d88080e7          	jalr	-632(ra) # 80005f48 <initlock>
    800051c8:	00000097          	auipc	ra,0x0
    800051cc:	7ac080e7          	jalr	1964(ra) # 80005974 <uartinit>
    800051d0:	01813083          	ld	ra,24(sp)
    800051d4:	01013403          	ld	s0,16(sp)
    800051d8:	00000797          	auipc	a5,0x0
    800051dc:	d9c78793          	addi	a5,a5,-612 # 80004f74 <consoleread>
    800051e0:	0af4bc23          	sd	a5,184(s1)
    800051e4:	00000797          	auipc	a5,0x0
    800051e8:	cec78793          	addi	a5,a5,-788 # 80004ed0 <consolewrite>
    800051ec:	0cf4b023          	sd	a5,192(s1)
    800051f0:	00813483          	ld	s1,8(sp)
    800051f4:	02010113          	addi	sp,sp,32
    800051f8:	00008067          	ret

00000000800051fc <console_read>:
    800051fc:	ff010113          	addi	sp,sp,-16
    80005200:	00813423          	sd	s0,8(sp)
    80005204:	01010413          	addi	s0,sp,16
    80005208:	00813403          	ld	s0,8(sp)
    8000520c:	00005317          	auipc	t1,0x5
    80005210:	c0433303          	ld	t1,-1020(t1) # 80009e10 <devsw+0x10>
    80005214:	01010113          	addi	sp,sp,16
    80005218:	00030067          	jr	t1

000000008000521c <console_write>:
    8000521c:	ff010113          	addi	sp,sp,-16
    80005220:	00813423          	sd	s0,8(sp)
    80005224:	01010413          	addi	s0,sp,16
    80005228:	00813403          	ld	s0,8(sp)
    8000522c:	00005317          	auipc	t1,0x5
    80005230:	bec33303          	ld	t1,-1044(t1) # 80009e18 <devsw+0x18>
    80005234:	01010113          	addi	sp,sp,16
    80005238:	00030067          	jr	t1

000000008000523c <panic>:
    8000523c:	fe010113          	addi	sp,sp,-32
    80005240:	00113c23          	sd	ra,24(sp)
    80005244:	00813823          	sd	s0,16(sp)
    80005248:	00913423          	sd	s1,8(sp)
    8000524c:	02010413          	addi	s0,sp,32
    80005250:	00050493          	mv	s1,a0
    80005254:	00002517          	auipc	a0,0x2
    80005258:	3f450513          	addi	a0,a0,1012 # 80007648 <CONSOLE_STATUS+0x638>
    8000525c:	00005797          	auipc	a5,0x5
    80005260:	c407ae23          	sw	zero,-932(a5) # 80009eb8 <pr+0x18>
    80005264:	00000097          	auipc	ra,0x0
    80005268:	034080e7          	jalr	52(ra) # 80005298 <__printf>
    8000526c:	00048513          	mv	a0,s1
    80005270:	00000097          	auipc	ra,0x0
    80005274:	028080e7          	jalr	40(ra) # 80005298 <__printf>
    80005278:	00002517          	auipc	a0,0x2
    8000527c:	ef050513          	addi	a0,a0,-272 # 80007168 <CONSOLE_STATUS+0x158>
    80005280:	00000097          	auipc	ra,0x0
    80005284:	018080e7          	jalr	24(ra) # 80005298 <__printf>
    80005288:	00100793          	li	a5,1
    8000528c:	00004717          	auipc	a4,0x4
    80005290:	96f72623          	sw	a5,-1684(a4) # 80008bf8 <panicked>
    80005294:	0000006f          	j	80005294 <panic+0x58>

0000000080005298 <__printf>:
    80005298:	f3010113          	addi	sp,sp,-208
    8000529c:	08813023          	sd	s0,128(sp)
    800052a0:	07313423          	sd	s3,104(sp)
    800052a4:	09010413          	addi	s0,sp,144
    800052a8:	05813023          	sd	s8,64(sp)
    800052ac:	08113423          	sd	ra,136(sp)
    800052b0:	06913c23          	sd	s1,120(sp)
    800052b4:	07213823          	sd	s2,112(sp)
    800052b8:	07413023          	sd	s4,96(sp)
    800052bc:	05513c23          	sd	s5,88(sp)
    800052c0:	05613823          	sd	s6,80(sp)
    800052c4:	05713423          	sd	s7,72(sp)
    800052c8:	03913c23          	sd	s9,56(sp)
    800052cc:	03a13823          	sd	s10,48(sp)
    800052d0:	03b13423          	sd	s11,40(sp)
    800052d4:	00005317          	auipc	t1,0x5
    800052d8:	bcc30313          	addi	t1,t1,-1076 # 80009ea0 <pr>
    800052dc:	01832c03          	lw	s8,24(t1)
    800052e0:	00b43423          	sd	a1,8(s0)
    800052e4:	00c43823          	sd	a2,16(s0)
    800052e8:	00d43c23          	sd	a3,24(s0)
    800052ec:	02e43023          	sd	a4,32(s0)
    800052f0:	02f43423          	sd	a5,40(s0)
    800052f4:	03043823          	sd	a6,48(s0)
    800052f8:	03143c23          	sd	a7,56(s0)
    800052fc:	00050993          	mv	s3,a0
    80005300:	4a0c1663          	bnez	s8,800057ac <__printf+0x514>
    80005304:	60098c63          	beqz	s3,8000591c <__printf+0x684>
    80005308:	0009c503          	lbu	a0,0(s3)
    8000530c:	00840793          	addi	a5,s0,8
    80005310:	f6f43c23          	sd	a5,-136(s0)
    80005314:	00000493          	li	s1,0
    80005318:	22050063          	beqz	a0,80005538 <__printf+0x2a0>
    8000531c:	00002a37          	lui	s4,0x2
    80005320:	00018ab7          	lui	s5,0x18
    80005324:	000f4b37          	lui	s6,0xf4
    80005328:	00989bb7          	lui	s7,0x989
    8000532c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005330:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005334:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005338:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000533c:	00148c9b          	addiw	s9,s1,1
    80005340:	02500793          	li	a5,37
    80005344:	01998933          	add	s2,s3,s9
    80005348:	38f51263          	bne	a0,a5,800056cc <__printf+0x434>
    8000534c:	00094783          	lbu	a5,0(s2)
    80005350:	00078c9b          	sext.w	s9,a5
    80005354:	1e078263          	beqz	a5,80005538 <__printf+0x2a0>
    80005358:	0024849b          	addiw	s1,s1,2
    8000535c:	07000713          	li	a4,112
    80005360:	00998933          	add	s2,s3,s1
    80005364:	38e78a63          	beq	a5,a4,800056f8 <__printf+0x460>
    80005368:	20f76863          	bltu	a4,a5,80005578 <__printf+0x2e0>
    8000536c:	42a78863          	beq	a5,a0,8000579c <__printf+0x504>
    80005370:	06400713          	li	a4,100
    80005374:	40e79663          	bne	a5,a4,80005780 <__printf+0x4e8>
    80005378:	f7843783          	ld	a5,-136(s0)
    8000537c:	0007a603          	lw	a2,0(a5)
    80005380:	00878793          	addi	a5,a5,8
    80005384:	f6f43c23          	sd	a5,-136(s0)
    80005388:	42064a63          	bltz	a2,800057bc <__printf+0x524>
    8000538c:	00a00713          	li	a4,10
    80005390:	02e677bb          	remuw	a5,a2,a4
    80005394:	00002d97          	auipc	s11,0x2
    80005398:	2dcd8d93          	addi	s11,s11,732 # 80007670 <digits>
    8000539c:	00900593          	li	a1,9
    800053a0:	0006051b          	sext.w	a0,a2
    800053a4:	00000c93          	li	s9,0
    800053a8:	02079793          	slli	a5,a5,0x20
    800053ac:	0207d793          	srli	a5,a5,0x20
    800053b0:	00fd87b3          	add	a5,s11,a5
    800053b4:	0007c783          	lbu	a5,0(a5)
    800053b8:	02e656bb          	divuw	a3,a2,a4
    800053bc:	f8f40023          	sb	a5,-128(s0)
    800053c0:	14c5d863          	bge	a1,a2,80005510 <__printf+0x278>
    800053c4:	06300593          	li	a1,99
    800053c8:	00100c93          	li	s9,1
    800053cc:	02e6f7bb          	remuw	a5,a3,a4
    800053d0:	02079793          	slli	a5,a5,0x20
    800053d4:	0207d793          	srli	a5,a5,0x20
    800053d8:	00fd87b3          	add	a5,s11,a5
    800053dc:	0007c783          	lbu	a5,0(a5)
    800053e0:	02e6d73b          	divuw	a4,a3,a4
    800053e4:	f8f400a3          	sb	a5,-127(s0)
    800053e8:	12a5f463          	bgeu	a1,a0,80005510 <__printf+0x278>
    800053ec:	00a00693          	li	a3,10
    800053f0:	00900593          	li	a1,9
    800053f4:	02d777bb          	remuw	a5,a4,a3
    800053f8:	02079793          	slli	a5,a5,0x20
    800053fc:	0207d793          	srli	a5,a5,0x20
    80005400:	00fd87b3          	add	a5,s11,a5
    80005404:	0007c503          	lbu	a0,0(a5)
    80005408:	02d757bb          	divuw	a5,a4,a3
    8000540c:	f8a40123          	sb	a0,-126(s0)
    80005410:	48e5f263          	bgeu	a1,a4,80005894 <__printf+0x5fc>
    80005414:	06300513          	li	a0,99
    80005418:	02d7f5bb          	remuw	a1,a5,a3
    8000541c:	02059593          	slli	a1,a1,0x20
    80005420:	0205d593          	srli	a1,a1,0x20
    80005424:	00bd85b3          	add	a1,s11,a1
    80005428:	0005c583          	lbu	a1,0(a1)
    8000542c:	02d7d7bb          	divuw	a5,a5,a3
    80005430:	f8b401a3          	sb	a1,-125(s0)
    80005434:	48e57263          	bgeu	a0,a4,800058b8 <__printf+0x620>
    80005438:	3e700513          	li	a0,999
    8000543c:	02d7f5bb          	remuw	a1,a5,a3
    80005440:	02059593          	slli	a1,a1,0x20
    80005444:	0205d593          	srli	a1,a1,0x20
    80005448:	00bd85b3          	add	a1,s11,a1
    8000544c:	0005c583          	lbu	a1,0(a1)
    80005450:	02d7d7bb          	divuw	a5,a5,a3
    80005454:	f8b40223          	sb	a1,-124(s0)
    80005458:	46e57663          	bgeu	a0,a4,800058c4 <__printf+0x62c>
    8000545c:	02d7f5bb          	remuw	a1,a5,a3
    80005460:	02059593          	slli	a1,a1,0x20
    80005464:	0205d593          	srli	a1,a1,0x20
    80005468:	00bd85b3          	add	a1,s11,a1
    8000546c:	0005c583          	lbu	a1,0(a1)
    80005470:	02d7d7bb          	divuw	a5,a5,a3
    80005474:	f8b402a3          	sb	a1,-123(s0)
    80005478:	46ea7863          	bgeu	s4,a4,800058e8 <__printf+0x650>
    8000547c:	02d7f5bb          	remuw	a1,a5,a3
    80005480:	02059593          	slli	a1,a1,0x20
    80005484:	0205d593          	srli	a1,a1,0x20
    80005488:	00bd85b3          	add	a1,s11,a1
    8000548c:	0005c583          	lbu	a1,0(a1)
    80005490:	02d7d7bb          	divuw	a5,a5,a3
    80005494:	f8b40323          	sb	a1,-122(s0)
    80005498:	3eeaf863          	bgeu	s5,a4,80005888 <__printf+0x5f0>
    8000549c:	02d7f5bb          	remuw	a1,a5,a3
    800054a0:	02059593          	slli	a1,a1,0x20
    800054a4:	0205d593          	srli	a1,a1,0x20
    800054a8:	00bd85b3          	add	a1,s11,a1
    800054ac:	0005c583          	lbu	a1,0(a1)
    800054b0:	02d7d7bb          	divuw	a5,a5,a3
    800054b4:	f8b403a3          	sb	a1,-121(s0)
    800054b8:	42eb7e63          	bgeu	s6,a4,800058f4 <__printf+0x65c>
    800054bc:	02d7f5bb          	remuw	a1,a5,a3
    800054c0:	02059593          	slli	a1,a1,0x20
    800054c4:	0205d593          	srli	a1,a1,0x20
    800054c8:	00bd85b3          	add	a1,s11,a1
    800054cc:	0005c583          	lbu	a1,0(a1)
    800054d0:	02d7d7bb          	divuw	a5,a5,a3
    800054d4:	f8b40423          	sb	a1,-120(s0)
    800054d8:	42ebfc63          	bgeu	s7,a4,80005910 <__printf+0x678>
    800054dc:	02079793          	slli	a5,a5,0x20
    800054e0:	0207d793          	srli	a5,a5,0x20
    800054e4:	00fd8db3          	add	s11,s11,a5
    800054e8:	000dc703          	lbu	a4,0(s11)
    800054ec:	00a00793          	li	a5,10
    800054f0:	00900c93          	li	s9,9
    800054f4:	f8e404a3          	sb	a4,-119(s0)
    800054f8:	00065c63          	bgez	a2,80005510 <__printf+0x278>
    800054fc:	f9040713          	addi	a4,s0,-112
    80005500:	00f70733          	add	a4,a4,a5
    80005504:	02d00693          	li	a3,45
    80005508:	fed70823          	sb	a3,-16(a4)
    8000550c:	00078c93          	mv	s9,a5
    80005510:	f8040793          	addi	a5,s0,-128
    80005514:	01978cb3          	add	s9,a5,s9
    80005518:	f7f40d13          	addi	s10,s0,-129
    8000551c:	000cc503          	lbu	a0,0(s9)
    80005520:	fffc8c93          	addi	s9,s9,-1
    80005524:	00000097          	auipc	ra,0x0
    80005528:	b90080e7          	jalr	-1136(ra) # 800050b4 <consputc>
    8000552c:	ffac98e3          	bne	s9,s10,8000551c <__printf+0x284>
    80005530:	00094503          	lbu	a0,0(s2)
    80005534:	e00514e3          	bnez	a0,8000533c <__printf+0xa4>
    80005538:	1a0c1663          	bnez	s8,800056e4 <__printf+0x44c>
    8000553c:	08813083          	ld	ra,136(sp)
    80005540:	08013403          	ld	s0,128(sp)
    80005544:	07813483          	ld	s1,120(sp)
    80005548:	07013903          	ld	s2,112(sp)
    8000554c:	06813983          	ld	s3,104(sp)
    80005550:	06013a03          	ld	s4,96(sp)
    80005554:	05813a83          	ld	s5,88(sp)
    80005558:	05013b03          	ld	s6,80(sp)
    8000555c:	04813b83          	ld	s7,72(sp)
    80005560:	04013c03          	ld	s8,64(sp)
    80005564:	03813c83          	ld	s9,56(sp)
    80005568:	03013d03          	ld	s10,48(sp)
    8000556c:	02813d83          	ld	s11,40(sp)
    80005570:	0d010113          	addi	sp,sp,208
    80005574:	00008067          	ret
    80005578:	07300713          	li	a4,115
    8000557c:	1ce78a63          	beq	a5,a4,80005750 <__printf+0x4b8>
    80005580:	07800713          	li	a4,120
    80005584:	1ee79e63          	bne	a5,a4,80005780 <__printf+0x4e8>
    80005588:	f7843783          	ld	a5,-136(s0)
    8000558c:	0007a703          	lw	a4,0(a5)
    80005590:	00878793          	addi	a5,a5,8
    80005594:	f6f43c23          	sd	a5,-136(s0)
    80005598:	28074263          	bltz	a4,8000581c <__printf+0x584>
    8000559c:	00002d97          	auipc	s11,0x2
    800055a0:	0d4d8d93          	addi	s11,s11,212 # 80007670 <digits>
    800055a4:	00f77793          	andi	a5,a4,15
    800055a8:	00fd87b3          	add	a5,s11,a5
    800055ac:	0007c683          	lbu	a3,0(a5)
    800055b0:	00f00613          	li	a2,15
    800055b4:	0007079b          	sext.w	a5,a4
    800055b8:	f8d40023          	sb	a3,-128(s0)
    800055bc:	0047559b          	srliw	a1,a4,0x4
    800055c0:	0047569b          	srliw	a3,a4,0x4
    800055c4:	00000c93          	li	s9,0
    800055c8:	0ee65063          	bge	a2,a4,800056a8 <__printf+0x410>
    800055cc:	00f6f693          	andi	a3,a3,15
    800055d0:	00dd86b3          	add	a3,s11,a3
    800055d4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800055d8:	0087d79b          	srliw	a5,a5,0x8
    800055dc:	00100c93          	li	s9,1
    800055e0:	f8d400a3          	sb	a3,-127(s0)
    800055e4:	0cb67263          	bgeu	a2,a1,800056a8 <__printf+0x410>
    800055e8:	00f7f693          	andi	a3,a5,15
    800055ec:	00dd86b3          	add	a3,s11,a3
    800055f0:	0006c583          	lbu	a1,0(a3)
    800055f4:	00f00613          	li	a2,15
    800055f8:	0047d69b          	srliw	a3,a5,0x4
    800055fc:	f8b40123          	sb	a1,-126(s0)
    80005600:	0047d593          	srli	a1,a5,0x4
    80005604:	28f67e63          	bgeu	a2,a5,800058a0 <__printf+0x608>
    80005608:	00f6f693          	andi	a3,a3,15
    8000560c:	00dd86b3          	add	a3,s11,a3
    80005610:	0006c503          	lbu	a0,0(a3)
    80005614:	0087d813          	srli	a6,a5,0x8
    80005618:	0087d69b          	srliw	a3,a5,0x8
    8000561c:	f8a401a3          	sb	a0,-125(s0)
    80005620:	28b67663          	bgeu	a2,a1,800058ac <__printf+0x614>
    80005624:	00f6f693          	andi	a3,a3,15
    80005628:	00dd86b3          	add	a3,s11,a3
    8000562c:	0006c583          	lbu	a1,0(a3)
    80005630:	00c7d513          	srli	a0,a5,0xc
    80005634:	00c7d69b          	srliw	a3,a5,0xc
    80005638:	f8b40223          	sb	a1,-124(s0)
    8000563c:	29067a63          	bgeu	a2,a6,800058d0 <__printf+0x638>
    80005640:	00f6f693          	andi	a3,a3,15
    80005644:	00dd86b3          	add	a3,s11,a3
    80005648:	0006c583          	lbu	a1,0(a3)
    8000564c:	0107d813          	srli	a6,a5,0x10
    80005650:	0107d69b          	srliw	a3,a5,0x10
    80005654:	f8b402a3          	sb	a1,-123(s0)
    80005658:	28a67263          	bgeu	a2,a0,800058dc <__printf+0x644>
    8000565c:	00f6f693          	andi	a3,a3,15
    80005660:	00dd86b3          	add	a3,s11,a3
    80005664:	0006c683          	lbu	a3,0(a3)
    80005668:	0147d79b          	srliw	a5,a5,0x14
    8000566c:	f8d40323          	sb	a3,-122(s0)
    80005670:	21067663          	bgeu	a2,a6,8000587c <__printf+0x5e4>
    80005674:	02079793          	slli	a5,a5,0x20
    80005678:	0207d793          	srli	a5,a5,0x20
    8000567c:	00fd8db3          	add	s11,s11,a5
    80005680:	000dc683          	lbu	a3,0(s11)
    80005684:	00800793          	li	a5,8
    80005688:	00700c93          	li	s9,7
    8000568c:	f8d403a3          	sb	a3,-121(s0)
    80005690:	00075c63          	bgez	a4,800056a8 <__printf+0x410>
    80005694:	f9040713          	addi	a4,s0,-112
    80005698:	00f70733          	add	a4,a4,a5
    8000569c:	02d00693          	li	a3,45
    800056a0:	fed70823          	sb	a3,-16(a4)
    800056a4:	00078c93          	mv	s9,a5
    800056a8:	f8040793          	addi	a5,s0,-128
    800056ac:	01978cb3          	add	s9,a5,s9
    800056b0:	f7f40d13          	addi	s10,s0,-129
    800056b4:	000cc503          	lbu	a0,0(s9)
    800056b8:	fffc8c93          	addi	s9,s9,-1
    800056bc:	00000097          	auipc	ra,0x0
    800056c0:	9f8080e7          	jalr	-1544(ra) # 800050b4 <consputc>
    800056c4:	ff9d18e3          	bne	s10,s9,800056b4 <__printf+0x41c>
    800056c8:	0100006f          	j	800056d8 <__printf+0x440>
    800056cc:	00000097          	auipc	ra,0x0
    800056d0:	9e8080e7          	jalr	-1560(ra) # 800050b4 <consputc>
    800056d4:	000c8493          	mv	s1,s9
    800056d8:	00094503          	lbu	a0,0(s2)
    800056dc:	c60510e3          	bnez	a0,8000533c <__printf+0xa4>
    800056e0:	e40c0ee3          	beqz	s8,8000553c <__printf+0x2a4>
    800056e4:	00004517          	auipc	a0,0x4
    800056e8:	7bc50513          	addi	a0,a0,1980 # 80009ea0 <pr>
    800056ec:	00001097          	auipc	ra,0x1
    800056f0:	94c080e7          	jalr	-1716(ra) # 80006038 <release>
    800056f4:	e49ff06f          	j	8000553c <__printf+0x2a4>
    800056f8:	f7843783          	ld	a5,-136(s0)
    800056fc:	03000513          	li	a0,48
    80005700:	01000d13          	li	s10,16
    80005704:	00878713          	addi	a4,a5,8
    80005708:	0007bc83          	ld	s9,0(a5)
    8000570c:	f6e43c23          	sd	a4,-136(s0)
    80005710:	00000097          	auipc	ra,0x0
    80005714:	9a4080e7          	jalr	-1628(ra) # 800050b4 <consputc>
    80005718:	07800513          	li	a0,120
    8000571c:	00000097          	auipc	ra,0x0
    80005720:	998080e7          	jalr	-1640(ra) # 800050b4 <consputc>
    80005724:	00002d97          	auipc	s11,0x2
    80005728:	f4cd8d93          	addi	s11,s11,-180 # 80007670 <digits>
    8000572c:	03ccd793          	srli	a5,s9,0x3c
    80005730:	00fd87b3          	add	a5,s11,a5
    80005734:	0007c503          	lbu	a0,0(a5)
    80005738:	fffd0d1b          	addiw	s10,s10,-1
    8000573c:	004c9c93          	slli	s9,s9,0x4
    80005740:	00000097          	auipc	ra,0x0
    80005744:	974080e7          	jalr	-1676(ra) # 800050b4 <consputc>
    80005748:	fe0d12e3          	bnez	s10,8000572c <__printf+0x494>
    8000574c:	f8dff06f          	j	800056d8 <__printf+0x440>
    80005750:	f7843783          	ld	a5,-136(s0)
    80005754:	0007bc83          	ld	s9,0(a5)
    80005758:	00878793          	addi	a5,a5,8
    8000575c:	f6f43c23          	sd	a5,-136(s0)
    80005760:	000c9a63          	bnez	s9,80005774 <__printf+0x4dc>
    80005764:	1080006f          	j	8000586c <__printf+0x5d4>
    80005768:	001c8c93          	addi	s9,s9,1
    8000576c:	00000097          	auipc	ra,0x0
    80005770:	948080e7          	jalr	-1720(ra) # 800050b4 <consputc>
    80005774:	000cc503          	lbu	a0,0(s9)
    80005778:	fe0518e3          	bnez	a0,80005768 <__printf+0x4d0>
    8000577c:	f5dff06f          	j	800056d8 <__printf+0x440>
    80005780:	02500513          	li	a0,37
    80005784:	00000097          	auipc	ra,0x0
    80005788:	930080e7          	jalr	-1744(ra) # 800050b4 <consputc>
    8000578c:	000c8513          	mv	a0,s9
    80005790:	00000097          	auipc	ra,0x0
    80005794:	924080e7          	jalr	-1756(ra) # 800050b4 <consputc>
    80005798:	f41ff06f          	j	800056d8 <__printf+0x440>
    8000579c:	02500513          	li	a0,37
    800057a0:	00000097          	auipc	ra,0x0
    800057a4:	914080e7          	jalr	-1772(ra) # 800050b4 <consputc>
    800057a8:	f31ff06f          	j	800056d8 <__printf+0x440>
    800057ac:	00030513          	mv	a0,t1
    800057b0:	00000097          	auipc	ra,0x0
    800057b4:	7bc080e7          	jalr	1980(ra) # 80005f6c <acquire>
    800057b8:	b4dff06f          	j	80005304 <__printf+0x6c>
    800057bc:	40c0053b          	negw	a0,a2
    800057c0:	00a00713          	li	a4,10
    800057c4:	02e576bb          	remuw	a3,a0,a4
    800057c8:	00002d97          	auipc	s11,0x2
    800057cc:	ea8d8d93          	addi	s11,s11,-344 # 80007670 <digits>
    800057d0:	ff700593          	li	a1,-9
    800057d4:	02069693          	slli	a3,a3,0x20
    800057d8:	0206d693          	srli	a3,a3,0x20
    800057dc:	00dd86b3          	add	a3,s11,a3
    800057e0:	0006c683          	lbu	a3,0(a3)
    800057e4:	02e557bb          	divuw	a5,a0,a4
    800057e8:	f8d40023          	sb	a3,-128(s0)
    800057ec:	10b65e63          	bge	a2,a1,80005908 <__printf+0x670>
    800057f0:	06300593          	li	a1,99
    800057f4:	02e7f6bb          	remuw	a3,a5,a4
    800057f8:	02069693          	slli	a3,a3,0x20
    800057fc:	0206d693          	srli	a3,a3,0x20
    80005800:	00dd86b3          	add	a3,s11,a3
    80005804:	0006c683          	lbu	a3,0(a3)
    80005808:	02e7d73b          	divuw	a4,a5,a4
    8000580c:	00200793          	li	a5,2
    80005810:	f8d400a3          	sb	a3,-127(s0)
    80005814:	bca5ece3          	bltu	a1,a0,800053ec <__printf+0x154>
    80005818:	ce5ff06f          	j	800054fc <__printf+0x264>
    8000581c:	40e007bb          	negw	a5,a4
    80005820:	00002d97          	auipc	s11,0x2
    80005824:	e50d8d93          	addi	s11,s11,-432 # 80007670 <digits>
    80005828:	00f7f693          	andi	a3,a5,15
    8000582c:	00dd86b3          	add	a3,s11,a3
    80005830:	0006c583          	lbu	a1,0(a3)
    80005834:	ff100613          	li	a2,-15
    80005838:	0047d69b          	srliw	a3,a5,0x4
    8000583c:	f8b40023          	sb	a1,-128(s0)
    80005840:	0047d59b          	srliw	a1,a5,0x4
    80005844:	0ac75e63          	bge	a4,a2,80005900 <__printf+0x668>
    80005848:	00f6f693          	andi	a3,a3,15
    8000584c:	00dd86b3          	add	a3,s11,a3
    80005850:	0006c603          	lbu	a2,0(a3)
    80005854:	00f00693          	li	a3,15
    80005858:	0087d79b          	srliw	a5,a5,0x8
    8000585c:	f8c400a3          	sb	a2,-127(s0)
    80005860:	d8b6e4e3          	bltu	a3,a1,800055e8 <__printf+0x350>
    80005864:	00200793          	li	a5,2
    80005868:	e2dff06f          	j	80005694 <__printf+0x3fc>
    8000586c:	00002c97          	auipc	s9,0x2
    80005870:	de4c8c93          	addi	s9,s9,-540 # 80007650 <CONSOLE_STATUS+0x640>
    80005874:	02800513          	li	a0,40
    80005878:	ef1ff06f          	j	80005768 <__printf+0x4d0>
    8000587c:	00700793          	li	a5,7
    80005880:	00600c93          	li	s9,6
    80005884:	e0dff06f          	j	80005690 <__printf+0x3f8>
    80005888:	00700793          	li	a5,7
    8000588c:	00600c93          	li	s9,6
    80005890:	c69ff06f          	j	800054f8 <__printf+0x260>
    80005894:	00300793          	li	a5,3
    80005898:	00200c93          	li	s9,2
    8000589c:	c5dff06f          	j	800054f8 <__printf+0x260>
    800058a0:	00300793          	li	a5,3
    800058a4:	00200c93          	li	s9,2
    800058a8:	de9ff06f          	j	80005690 <__printf+0x3f8>
    800058ac:	00400793          	li	a5,4
    800058b0:	00300c93          	li	s9,3
    800058b4:	dddff06f          	j	80005690 <__printf+0x3f8>
    800058b8:	00400793          	li	a5,4
    800058bc:	00300c93          	li	s9,3
    800058c0:	c39ff06f          	j	800054f8 <__printf+0x260>
    800058c4:	00500793          	li	a5,5
    800058c8:	00400c93          	li	s9,4
    800058cc:	c2dff06f          	j	800054f8 <__printf+0x260>
    800058d0:	00500793          	li	a5,5
    800058d4:	00400c93          	li	s9,4
    800058d8:	db9ff06f          	j	80005690 <__printf+0x3f8>
    800058dc:	00600793          	li	a5,6
    800058e0:	00500c93          	li	s9,5
    800058e4:	dadff06f          	j	80005690 <__printf+0x3f8>
    800058e8:	00600793          	li	a5,6
    800058ec:	00500c93          	li	s9,5
    800058f0:	c09ff06f          	j	800054f8 <__printf+0x260>
    800058f4:	00800793          	li	a5,8
    800058f8:	00700c93          	li	s9,7
    800058fc:	bfdff06f          	j	800054f8 <__printf+0x260>
    80005900:	00100793          	li	a5,1
    80005904:	d91ff06f          	j	80005694 <__printf+0x3fc>
    80005908:	00100793          	li	a5,1
    8000590c:	bf1ff06f          	j	800054fc <__printf+0x264>
    80005910:	00900793          	li	a5,9
    80005914:	00800c93          	li	s9,8
    80005918:	be1ff06f          	j	800054f8 <__printf+0x260>
    8000591c:	00002517          	auipc	a0,0x2
    80005920:	d3c50513          	addi	a0,a0,-708 # 80007658 <CONSOLE_STATUS+0x648>
    80005924:	00000097          	auipc	ra,0x0
    80005928:	918080e7          	jalr	-1768(ra) # 8000523c <panic>

000000008000592c <printfinit>:
    8000592c:	fe010113          	addi	sp,sp,-32
    80005930:	00813823          	sd	s0,16(sp)
    80005934:	00913423          	sd	s1,8(sp)
    80005938:	00113c23          	sd	ra,24(sp)
    8000593c:	02010413          	addi	s0,sp,32
    80005940:	00004497          	auipc	s1,0x4
    80005944:	56048493          	addi	s1,s1,1376 # 80009ea0 <pr>
    80005948:	00048513          	mv	a0,s1
    8000594c:	00002597          	auipc	a1,0x2
    80005950:	d1c58593          	addi	a1,a1,-740 # 80007668 <CONSOLE_STATUS+0x658>
    80005954:	00000097          	auipc	ra,0x0
    80005958:	5f4080e7          	jalr	1524(ra) # 80005f48 <initlock>
    8000595c:	01813083          	ld	ra,24(sp)
    80005960:	01013403          	ld	s0,16(sp)
    80005964:	0004ac23          	sw	zero,24(s1)
    80005968:	00813483          	ld	s1,8(sp)
    8000596c:	02010113          	addi	sp,sp,32
    80005970:	00008067          	ret

0000000080005974 <uartinit>:
    80005974:	ff010113          	addi	sp,sp,-16
    80005978:	00813423          	sd	s0,8(sp)
    8000597c:	01010413          	addi	s0,sp,16
    80005980:	100007b7          	lui	a5,0x10000
    80005984:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005988:	f8000713          	li	a4,-128
    8000598c:	00e781a3          	sb	a4,3(a5)
    80005990:	00300713          	li	a4,3
    80005994:	00e78023          	sb	a4,0(a5)
    80005998:	000780a3          	sb	zero,1(a5)
    8000599c:	00e781a3          	sb	a4,3(a5)
    800059a0:	00700693          	li	a3,7
    800059a4:	00d78123          	sb	a3,2(a5)
    800059a8:	00e780a3          	sb	a4,1(a5)
    800059ac:	00813403          	ld	s0,8(sp)
    800059b0:	01010113          	addi	sp,sp,16
    800059b4:	00008067          	ret

00000000800059b8 <uartputc>:
    800059b8:	00003797          	auipc	a5,0x3
    800059bc:	2407a783          	lw	a5,576(a5) # 80008bf8 <panicked>
    800059c0:	00078463          	beqz	a5,800059c8 <uartputc+0x10>
    800059c4:	0000006f          	j	800059c4 <uartputc+0xc>
    800059c8:	fd010113          	addi	sp,sp,-48
    800059cc:	02813023          	sd	s0,32(sp)
    800059d0:	00913c23          	sd	s1,24(sp)
    800059d4:	01213823          	sd	s2,16(sp)
    800059d8:	01313423          	sd	s3,8(sp)
    800059dc:	02113423          	sd	ra,40(sp)
    800059e0:	03010413          	addi	s0,sp,48
    800059e4:	00003917          	auipc	s2,0x3
    800059e8:	21c90913          	addi	s2,s2,540 # 80008c00 <uart_tx_r>
    800059ec:	00093783          	ld	a5,0(s2)
    800059f0:	00003497          	auipc	s1,0x3
    800059f4:	21848493          	addi	s1,s1,536 # 80008c08 <uart_tx_w>
    800059f8:	0004b703          	ld	a4,0(s1)
    800059fc:	02078693          	addi	a3,a5,32
    80005a00:	00050993          	mv	s3,a0
    80005a04:	02e69c63          	bne	a3,a4,80005a3c <uartputc+0x84>
    80005a08:	00001097          	auipc	ra,0x1
    80005a0c:	834080e7          	jalr	-1996(ra) # 8000623c <push_on>
    80005a10:	00093783          	ld	a5,0(s2)
    80005a14:	0004b703          	ld	a4,0(s1)
    80005a18:	02078793          	addi	a5,a5,32
    80005a1c:	00e79463          	bne	a5,a4,80005a24 <uartputc+0x6c>
    80005a20:	0000006f          	j	80005a20 <uartputc+0x68>
    80005a24:	00001097          	auipc	ra,0x1
    80005a28:	88c080e7          	jalr	-1908(ra) # 800062b0 <pop_on>
    80005a2c:	00093783          	ld	a5,0(s2)
    80005a30:	0004b703          	ld	a4,0(s1)
    80005a34:	02078693          	addi	a3,a5,32
    80005a38:	fce688e3          	beq	a3,a4,80005a08 <uartputc+0x50>
    80005a3c:	01f77693          	andi	a3,a4,31
    80005a40:	00004597          	auipc	a1,0x4
    80005a44:	48058593          	addi	a1,a1,1152 # 80009ec0 <uart_tx_buf>
    80005a48:	00d586b3          	add	a3,a1,a3
    80005a4c:	00170713          	addi	a4,a4,1
    80005a50:	01368023          	sb	s3,0(a3)
    80005a54:	00e4b023          	sd	a4,0(s1)
    80005a58:	10000637          	lui	a2,0x10000
    80005a5c:	02f71063          	bne	a4,a5,80005a7c <uartputc+0xc4>
    80005a60:	0340006f          	j	80005a94 <uartputc+0xdc>
    80005a64:	00074703          	lbu	a4,0(a4)
    80005a68:	00f93023          	sd	a5,0(s2)
    80005a6c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005a70:	00093783          	ld	a5,0(s2)
    80005a74:	0004b703          	ld	a4,0(s1)
    80005a78:	00f70e63          	beq	a4,a5,80005a94 <uartputc+0xdc>
    80005a7c:	00564683          	lbu	a3,5(a2)
    80005a80:	01f7f713          	andi	a4,a5,31
    80005a84:	00e58733          	add	a4,a1,a4
    80005a88:	0206f693          	andi	a3,a3,32
    80005a8c:	00178793          	addi	a5,a5,1
    80005a90:	fc069ae3          	bnez	a3,80005a64 <uartputc+0xac>
    80005a94:	02813083          	ld	ra,40(sp)
    80005a98:	02013403          	ld	s0,32(sp)
    80005a9c:	01813483          	ld	s1,24(sp)
    80005aa0:	01013903          	ld	s2,16(sp)
    80005aa4:	00813983          	ld	s3,8(sp)
    80005aa8:	03010113          	addi	sp,sp,48
    80005aac:	00008067          	ret

0000000080005ab0 <uartputc_sync>:
    80005ab0:	ff010113          	addi	sp,sp,-16
    80005ab4:	00813423          	sd	s0,8(sp)
    80005ab8:	01010413          	addi	s0,sp,16
    80005abc:	00003717          	auipc	a4,0x3
    80005ac0:	13c72703          	lw	a4,316(a4) # 80008bf8 <panicked>
    80005ac4:	02071663          	bnez	a4,80005af0 <uartputc_sync+0x40>
    80005ac8:	00050793          	mv	a5,a0
    80005acc:	100006b7          	lui	a3,0x10000
    80005ad0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005ad4:	02077713          	andi	a4,a4,32
    80005ad8:	fe070ce3          	beqz	a4,80005ad0 <uartputc_sync+0x20>
    80005adc:	0ff7f793          	andi	a5,a5,255
    80005ae0:	00f68023          	sb	a5,0(a3)
    80005ae4:	00813403          	ld	s0,8(sp)
    80005ae8:	01010113          	addi	sp,sp,16
    80005aec:	00008067          	ret
    80005af0:	0000006f          	j	80005af0 <uartputc_sync+0x40>

0000000080005af4 <uartstart>:
    80005af4:	ff010113          	addi	sp,sp,-16
    80005af8:	00813423          	sd	s0,8(sp)
    80005afc:	01010413          	addi	s0,sp,16
    80005b00:	00003617          	auipc	a2,0x3
    80005b04:	10060613          	addi	a2,a2,256 # 80008c00 <uart_tx_r>
    80005b08:	00003517          	auipc	a0,0x3
    80005b0c:	10050513          	addi	a0,a0,256 # 80008c08 <uart_tx_w>
    80005b10:	00063783          	ld	a5,0(a2)
    80005b14:	00053703          	ld	a4,0(a0)
    80005b18:	04f70263          	beq	a4,a5,80005b5c <uartstart+0x68>
    80005b1c:	100005b7          	lui	a1,0x10000
    80005b20:	00004817          	auipc	a6,0x4
    80005b24:	3a080813          	addi	a6,a6,928 # 80009ec0 <uart_tx_buf>
    80005b28:	01c0006f          	j	80005b44 <uartstart+0x50>
    80005b2c:	0006c703          	lbu	a4,0(a3)
    80005b30:	00f63023          	sd	a5,0(a2)
    80005b34:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005b38:	00063783          	ld	a5,0(a2)
    80005b3c:	00053703          	ld	a4,0(a0)
    80005b40:	00f70e63          	beq	a4,a5,80005b5c <uartstart+0x68>
    80005b44:	01f7f713          	andi	a4,a5,31
    80005b48:	00e806b3          	add	a3,a6,a4
    80005b4c:	0055c703          	lbu	a4,5(a1)
    80005b50:	00178793          	addi	a5,a5,1
    80005b54:	02077713          	andi	a4,a4,32
    80005b58:	fc071ae3          	bnez	a4,80005b2c <uartstart+0x38>
    80005b5c:	00813403          	ld	s0,8(sp)
    80005b60:	01010113          	addi	sp,sp,16
    80005b64:	00008067          	ret

0000000080005b68 <uartgetc>:
    80005b68:	ff010113          	addi	sp,sp,-16
    80005b6c:	00813423          	sd	s0,8(sp)
    80005b70:	01010413          	addi	s0,sp,16
    80005b74:	10000737          	lui	a4,0x10000
    80005b78:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80005b7c:	0017f793          	andi	a5,a5,1
    80005b80:	00078c63          	beqz	a5,80005b98 <uartgetc+0x30>
    80005b84:	00074503          	lbu	a0,0(a4)
    80005b88:	0ff57513          	andi	a0,a0,255
    80005b8c:	00813403          	ld	s0,8(sp)
    80005b90:	01010113          	addi	sp,sp,16
    80005b94:	00008067          	ret
    80005b98:	fff00513          	li	a0,-1
    80005b9c:	ff1ff06f          	j	80005b8c <uartgetc+0x24>

0000000080005ba0 <uartintr>:
    80005ba0:	100007b7          	lui	a5,0x10000
    80005ba4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005ba8:	0017f793          	andi	a5,a5,1
    80005bac:	0a078463          	beqz	a5,80005c54 <uartintr+0xb4>
    80005bb0:	fe010113          	addi	sp,sp,-32
    80005bb4:	00813823          	sd	s0,16(sp)
    80005bb8:	00913423          	sd	s1,8(sp)
    80005bbc:	00113c23          	sd	ra,24(sp)
    80005bc0:	02010413          	addi	s0,sp,32
    80005bc4:	100004b7          	lui	s1,0x10000
    80005bc8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80005bcc:	0ff57513          	andi	a0,a0,255
    80005bd0:	fffff097          	auipc	ra,0xfffff
    80005bd4:	534080e7          	jalr	1332(ra) # 80005104 <consoleintr>
    80005bd8:	0054c783          	lbu	a5,5(s1)
    80005bdc:	0017f793          	andi	a5,a5,1
    80005be0:	fe0794e3          	bnez	a5,80005bc8 <uartintr+0x28>
    80005be4:	00003617          	auipc	a2,0x3
    80005be8:	01c60613          	addi	a2,a2,28 # 80008c00 <uart_tx_r>
    80005bec:	00003517          	auipc	a0,0x3
    80005bf0:	01c50513          	addi	a0,a0,28 # 80008c08 <uart_tx_w>
    80005bf4:	00063783          	ld	a5,0(a2)
    80005bf8:	00053703          	ld	a4,0(a0)
    80005bfc:	04f70263          	beq	a4,a5,80005c40 <uartintr+0xa0>
    80005c00:	100005b7          	lui	a1,0x10000
    80005c04:	00004817          	auipc	a6,0x4
    80005c08:	2bc80813          	addi	a6,a6,700 # 80009ec0 <uart_tx_buf>
    80005c0c:	01c0006f          	j	80005c28 <uartintr+0x88>
    80005c10:	0006c703          	lbu	a4,0(a3)
    80005c14:	00f63023          	sd	a5,0(a2)
    80005c18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005c1c:	00063783          	ld	a5,0(a2)
    80005c20:	00053703          	ld	a4,0(a0)
    80005c24:	00f70e63          	beq	a4,a5,80005c40 <uartintr+0xa0>
    80005c28:	01f7f713          	andi	a4,a5,31
    80005c2c:	00e806b3          	add	a3,a6,a4
    80005c30:	0055c703          	lbu	a4,5(a1)
    80005c34:	00178793          	addi	a5,a5,1
    80005c38:	02077713          	andi	a4,a4,32
    80005c3c:	fc071ae3          	bnez	a4,80005c10 <uartintr+0x70>
    80005c40:	01813083          	ld	ra,24(sp)
    80005c44:	01013403          	ld	s0,16(sp)
    80005c48:	00813483          	ld	s1,8(sp)
    80005c4c:	02010113          	addi	sp,sp,32
    80005c50:	00008067          	ret
    80005c54:	00003617          	auipc	a2,0x3
    80005c58:	fac60613          	addi	a2,a2,-84 # 80008c00 <uart_tx_r>
    80005c5c:	00003517          	auipc	a0,0x3
    80005c60:	fac50513          	addi	a0,a0,-84 # 80008c08 <uart_tx_w>
    80005c64:	00063783          	ld	a5,0(a2)
    80005c68:	00053703          	ld	a4,0(a0)
    80005c6c:	04f70263          	beq	a4,a5,80005cb0 <uartintr+0x110>
    80005c70:	100005b7          	lui	a1,0x10000
    80005c74:	00004817          	auipc	a6,0x4
    80005c78:	24c80813          	addi	a6,a6,588 # 80009ec0 <uart_tx_buf>
    80005c7c:	01c0006f          	j	80005c98 <uartintr+0xf8>
    80005c80:	0006c703          	lbu	a4,0(a3)
    80005c84:	00f63023          	sd	a5,0(a2)
    80005c88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005c8c:	00063783          	ld	a5,0(a2)
    80005c90:	00053703          	ld	a4,0(a0)
    80005c94:	02f70063          	beq	a4,a5,80005cb4 <uartintr+0x114>
    80005c98:	01f7f713          	andi	a4,a5,31
    80005c9c:	00e806b3          	add	a3,a6,a4
    80005ca0:	0055c703          	lbu	a4,5(a1)
    80005ca4:	00178793          	addi	a5,a5,1
    80005ca8:	02077713          	andi	a4,a4,32
    80005cac:	fc071ae3          	bnez	a4,80005c80 <uartintr+0xe0>
    80005cb0:	00008067          	ret
    80005cb4:	00008067          	ret

0000000080005cb8 <kinit>:
    80005cb8:	fc010113          	addi	sp,sp,-64
    80005cbc:	02913423          	sd	s1,40(sp)
    80005cc0:	fffff7b7          	lui	a5,0xfffff
    80005cc4:	00005497          	auipc	s1,0x5
    80005cc8:	21b48493          	addi	s1,s1,539 # 8000aedf <end+0xfff>
    80005ccc:	02813823          	sd	s0,48(sp)
    80005cd0:	01313c23          	sd	s3,24(sp)
    80005cd4:	00f4f4b3          	and	s1,s1,a5
    80005cd8:	02113c23          	sd	ra,56(sp)
    80005cdc:	03213023          	sd	s2,32(sp)
    80005ce0:	01413823          	sd	s4,16(sp)
    80005ce4:	01513423          	sd	s5,8(sp)
    80005ce8:	04010413          	addi	s0,sp,64
    80005cec:	000017b7          	lui	a5,0x1
    80005cf0:	01100993          	li	s3,17
    80005cf4:	00f487b3          	add	a5,s1,a5
    80005cf8:	01b99993          	slli	s3,s3,0x1b
    80005cfc:	06f9e063          	bltu	s3,a5,80005d5c <kinit+0xa4>
    80005d00:	00004a97          	auipc	s5,0x4
    80005d04:	1e0a8a93          	addi	s5,s5,480 # 80009ee0 <end>
    80005d08:	0754ec63          	bltu	s1,s5,80005d80 <kinit+0xc8>
    80005d0c:	0734fa63          	bgeu	s1,s3,80005d80 <kinit+0xc8>
    80005d10:	00088a37          	lui	s4,0x88
    80005d14:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005d18:	00003917          	auipc	s2,0x3
    80005d1c:	ef890913          	addi	s2,s2,-264 # 80008c10 <kmem>
    80005d20:	00ca1a13          	slli	s4,s4,0xc
    80005d24:	0140006f          	j	80005d38 <kinit+0x80>
    80005d28:	000017b7          	lui	a5,0x1
    80005d2c:	00f484b3          	add	s1,s1,a5
    80005d30:	0554e863          	bltu	s1,s5,80005d80 <kinit+0xc8>
    80005d34:	0534f663          	bgeu	s1,s3,80005d80 <kinit+0xc8>
    80005d38:	00001637          	lui	a2,0x1
    80005d3c:	00100593          	li	a1,1
    80005d40:	00048513          	mv	a0,s1
    80005d44:	00000097          	auipc	ra,0x0
    80005d48:	5e4080e7          	jalr	1508(ra) # 80006328 <__memset>
    80005d4c:	00093783          	ld	a5,0(s2)
    80005d50:	00f4b023          	sd	a5,0(s1)
    80005d54:	00993023          	sd	s1,0(s2)
    80005d58:	fd4498e3          	bne	s1,s4,80005d28 <kinit+0x70>
    80005d5c:	03813083          	ld	ra,56(sp)
    80005d60:	03013403          	ld	s0,48(sp)
    80005d64:	02813483          	ld	s1,40(sp)
    80005d68:	02013903          	ld	s2,32(sp)
    80005d6c:	01813983          	ld	s3,24(sp)
    80005d70:	01013a03          	ld	s4,16(sp)
    80005d74:	00813a83          	ld	s5,8(sp)
    80005d78:	04010113          	addi	sp,sp,64
    80005d7c:	00008067          	ret
    80005d80:	00002517          	auipc	a0,0x2
    80005d84:	90850513          	addi	a0,a0,-1784 # 80007688 <digits+0x18>
    80005d88:	fffff097          	auipc	ra,0xfffff
    80005d8c:	4b4080e7          	jalr	1204(ra) # 8000523c <panic>

0000000080005d90 <freerange>:
    80005d90:	fc010113          	addi	sp,sp,-64
    80005d94:	000017b7          	lui	a5,0x1
    80005d98:	02913423          	sd	s1,40(sp)
    80005d9c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005da0:	009504b3          	add	s1,a0,s1
    80005da4:	fffff537          	lui	a0,0xfffff
    80005da8:	02813823          	sd	s0,48(sp)
    80005dac:	02113c23          	sd	ra,56(sp)
    80005db0:	03213023          	sd	s2,32(sp)
    80005db4:	01313c23          	sd	s3,24(sp)
    80005db8:	01413823          	sd	s4,16(sp)
    80005dbc:	01513423          	sd	s5,8(sp)
    80005dc0:	01613023          	sd	s6,0(sp)
    80005dc4:	04010413          	addi	s0,sp,64
    80005dc8:	00a4f4b3          	and	s1,s1,a0
    80005dcc:	00f487b3          	add	a5,s1,a5
    80005dd0:	06f5e463          	bltu	a1,a5,80005e38 <freerange+0xa8>
    80005dd4:	00004a97          	auipc	s5,0x4
    80005dd8:	10ca8a93          	addi	s5,s5,268 # 80009ee0 <end>
    80005ddc:	0954e263          	bltu	s1,s5,80005e60 <freerange+0xd0>
    80005de0:	01100993          	li	s3,17
    80005de4:	01b99993          	slli	s3,s3,0x1b
    80005de8:	0734fc63          	bgeu	s1,s3,80005e60 <freerange+0xd0>
    80005dec:	00058a13          	mv	s4,a1
    80005df0:	00003917          	auipc	s2,0x3
    80005df4:	e2090913          	addi	s2,s2,-480 # 80008c10 <kmem>
    80005df8:	00002b37          	lui	s6,0x2
    80005dfc:	0140006f          	j	80005e10 <freerange+0x80>
    80005e00:	000017b7          	lui	a5,0x1
    80005e04:	00f484b3          	add	s1,s1,a5
    80005e08:	0554ec63          	bltu	s1,s5,80005e60 <freerange+0xd0>
    80005e0c:	0534fa63          	bgeu	s1,s3,80005e60 <freerange+0xd0>
    80005e10:	00001637          	lui	a2,0x1
    80005e14:	00100593          	li	a1,1
    80005e18:	00048513          	mv	a0,s1
    80005e1c:	00000097          	auipc	ra,0x0
    80005e20:	50c080e7          	jalr	1292(ra) # 80006328 <__memset>
    80005e24:	00093703          	ld	a4,0(s2)
    80005e28:	016487b3          	add	a5,s1,s6
    80005e2c:	00e4b023          	sd	a4,0(s1)
    80005e30:	00993023          	sd	s1,0(s2)
    80005e34:	fcfa76e3          	bgeu	s4,a5,80005e00 <freerange+0x70>
    80005e38:	03813083          	ld	ra,56(sp)
    80005e3c:	03013403          	ld	s0,48(sp)
    80005e40:	02813483          	ld	s1,40(sp)
    80005e44:	02013903          	ld	s2,32(sp)
    80005e48:	01813983          	ld	s3,24(sp)
    80005e4c:	01013a03          	ld	s4,16(sp)
    80005e50:	00813a83          	ld	s5,8(sp)
    80005e54:	00013b03          	ld	s6,0(sp)
    80005e58:	04010113          	addi	sp,sp,64
    80005e5c:	00008067          	ret
    80005e60:	00002517          	auipc	a0,0x2
    80005e64:	82850513          	addi	a0,a0,-2008 # 80007688 <digits+0x18>
    80005e68:	fffff097          	auipc	ra,0xfffff
    80005e6c:	3d4080e7          	jalr	980(ra) # 8000523c <panic>

0000000080005e70 <kfree>:
    80005e70:	fe010113          	addi	sp,sp,-32
    80005e74:	00813823          	sd	s0,16(sp)
    80005e78:	00113c23          	sd	ra,24(sp)
    80005e7c:	00913423          	sd	s1,8(sp)
    80005e80:	02010413          	addi	s0,sp,32
    80005e84:	03451793          	slli	a5,a0,0x34
    80005e88:	04079c63          	bnez	a5,80005ee0 <kfree+0x70>
    80005e8c:	00004797          	auipc	a5,0x4
    80005e90:	05478793          	addi	a5,a5,84 # 80009ee0 <end>
    80005e94:	00050493          	mv	s1,a0
    80005e98:	04f56463          	bltu	a0,a5,80005ee0 <kfree+0x70>
    80005e9c:	01100793          	li	a5,17
    80005ea0:	01b79793          	slli	a5,a5,0x1b
    80005ea4:	02f57e63          	bgeu	a0,a5,80005ee0 <kfree+0x70>
    80005ea8:	00001637          	lui	a2,0x1
    80005eac:	00100593          	li	a1,1
    80005eb0:	00000097          	auipc	ra,0x0
    80005eb4:	478080e7          	jalr	1144(ra) # 80006328 <__memset>
    80005eb8:	00003797          	auipc	a5,0x3
    80005ebc:	d5878793          	addi	a5,a5,-680 # 80008c10 <kmem>
    80005ec0:	0007b703          	ld	a4,0(a5)
    80005ec4:	01813083          	ld	ra,24(sp)
    80005ec8:	01013403          	ld	s0,16(sp)
    80005ecc:	00e4b023          	sd	a4,0(s1)
    80005ed0:	0097b023          	sd	s1,0(a5)
    80005ed4:	00813483          	ld	s1,8(sp)
    80005ed8:	02010113          	addi	sp,sp,32
    80005edc:	00008067          	ret
    80005ee0:	00001517          	auipc	a0,0x1
    80005ee4:	7a850513          	addi	a0,a0,1960 # 80007688 <digits+0x18>
    80005ee8:	fffff097          	auipc	ra,0xfffff
    80005eec:	354080e7          	jalr	852(ra) # 8000523c <panic>

0000000080005ef0 <kalloc>:
    80005ef0:	fe010113          	addi	sp,sp,-32
    80005ef4:	00813823          	sd	s0,16(sp)
    80005ef8:	00913423          	sd	s1,8(sp)
    80005efc:	00113c23          	sd	ra,24(sp)
    80005f00:	02010413          	addi	s0,sp,32
    80005f04:	00003797          	auipc	a5,0x3
    80005f08:	d0c78793          	addi	a5,a5,-756 # 80008c10 <kmem>
    80005f0c:	0007b483          	ld	s1,0(a5)
    80005f10:	02048063          	beqz	s1,80005f30 <kalloc+0x40>
    80005f14:	0004b703          	ld	a4,0(s1)
    80005f18:	00001637          	lui	a2,0x1
    80005f1c:	00500593          	li	a1,5
    80005f20:	00048513          	mv	a0,s1
    80005f24:	00e7b023          	sd	a4,0(a5)
    80005f28:	00000097          	auipc	ra,0x0
    80005f2c:	400080e7          	jalr	1024(ra) # 80006328 <__memset>
    80005f30:	01813083          	ld	ra,24(sp)
    80005f34:	01013403          	ld	s0,16(sp)
    80005f38:	00048513          	mv	a0,s1
    80005f3c:	00813483          	ld	s1,8(sp)
    80005f40:	02010113          	addi	sp,sp,32
    80005f44:	00008067          	ret

0000000080005f48 <initlock>:
    80005f48:	ff010113          	addi	sp,sp,-16
    80005f4c:	00813423          	sd	s0,8(sp)
    80005f50:	01010413          	addi	s0,sp,16
    80005f54:	00813403          	ld	s0,8(sp)
    80005f58:	00b53423          	sd	a1,8(a0)
    80005f5c:	00052023          	sw	zero,0(a0)
    80005f60:	00053823          	sd	zero,16(a0)
    80005f64:	01010113          	addi	sp,sp,16
    80005f68:	00008067          	ret

0000000080005f6c <acquire>:
    80005f6c:	fe010113          	addi	sp,sp,-32
    80005f70:	00813823          	sd	s0,16(sp)
    80005f74:	00913423          	sd	s1,8(sp)
    80005f78:	00113c23          	sd	ra,24(sp)
    80005f7c:	01213023          	sd	s2,0(sp)
    80005f80:	02010413          	addi	s0,sp,32
    80005f84:	00050493          	mv	s1,a0
    80005f88:	10002973          	csrr	s2,sstatus
    80005f8c:	100027f3          	csrr	a5,sstatus
    80005f90:	ffd7f793          	andi	a5,a5,-3
    80005f94:	10079073          	csrw	sstatus,a5
    80005f98:	fffff097          	auipc	ra,0xfffff
    80005f9c:	8e8080e7          	jalr	-1816(ra) # 80004880 <mycpu>
    80005fa0:	07852783          	lw	a5,120(a0)
    80005fa4:	06078e63          	beqz	a5,80006020 <acquire+0xb4>
    80005fa8:	fffff097          	auipc	ra,0xfffff
    80005fac:	8d8080e7          	jalr	-1832(ra) # 80004880 <mycpu>
    80005fb0:	07852783          	lw	a5,120(a0)
    80005fb4:	0004a703          	lw	a4,0(s1)
    80005fb8:	0017879b          	addiw	a5,a5,1
    80005fbc:	06f52c23          	sw	a5,120(a0)
    80005fc0:	04071063          	bnez	a4,80006000 <acquire+0x94>
    80005fc4:	00100713          	li	a4,1
    80005fc8:	00070793          	mv	a5,a4
    80005fcc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005fd0:	0007879b          	sext.w	a5,a5
    80005fd4:	fe079ae3          	bnez	a5,80005fc8 <acquire+0x5c>
    80005fd8:	0ff0000f          	fence
    80005fdc:	fffff097          	auipc	ra,0xfffff
    80005fe0:	8a4080e7          	jalr	-1884(ra) # 80004880 <mycpu>
    80005fe4:	01813083          	ld	ra,24(sp)
    80005fe8:	01013403          	ld	s0,16(sp)
    80005fec:	00a4b823          	sd	a0,16(s1)
    80005ff0:	00013903          	ld	s2,0(sp)
    80005ff4:	00813483          	ld	s1,8(sp)
    80005ff8:	02010113          	addi	sp,sp,32
    80005ffc:	00008067          	ret
    80006000:	0104b903          	ld	s2,16(s1)
    80006004:	fffff097          	auipc	ra,0xfffff
    80006008:	87c080e7          	jalr	-1924(ra) # 80004880 <mycpu>
    8000600c:	faa91ce3          	bne	s2,a0,80005fc4 <acquire+0x58>
    80006010:	00001517          	auipc	a0,0x1
    80006014:	68050513          	addi	a0,a0,1664 # 80007690 <digits+0x20>
    80006018:	fffff097          	auipc	ra,0xfffff
    8000601c:	224080e7          	jalr	548(ra) # 8000523c <panic>
    80006020:	00195913          	srli	s2,s2,0x1
    80006024:	fffff097          	auipc	ra,0xfffff
    80006028:	85c080e7          	jalr	-1956(ra) # 80004880 <mycpu>
    8000602c:	00197913          	andi	s2,s2,1
    80006030:	07252e23          	sw	s2,124(a0)
    80006034:	f75ff06f          	j	80005fa8 <acquire+0x3c>

0000000080006038 <release>:
    80006038:	fe010113          	addi	sp,sp,-32
    8000603c:	00813823          	sd	s0,16(sp)
    80006040:	00113c23          	sd	ra,24(sp)
    80006044:	00913423          	sd	s1,8(sp)
    80006048:	01213023          	sd	s2,0(sp)
    8000604c:	02010413          	addi	s0,sp,32
    80006050:	00052783          	lw	a5,0(a0)
    80006054:	00079a63          	bnez	a5,80006068 <release+0x30>
    80006058:	00001517          	auipc	a0,0x1
    8000605c:	64050513          	addi	a0,a0,1600 # 80007698 <digits+0x28>
    80006060:	fffff097          	auipc	ra,0xfffff
    80006064:	1dc080e7          	jalr	476(ra) # 8000523c <panic>
    80006068:	01053903          	ld	s2,16(a0)
    8000606c:	00050493          	mv	s1,a0
    80006070:	fffff097          	auipc	ra,0xfffff
    80006074:	810080e7          	jalr	-2032(ra) # 80004880 <mycpu>
    80006078:	fea910e3          	bne	s2,a0,80006058 <release+0x20>
    8000607c:	0004b823          	sd	zero,16(s1)
    80006080:	0ff0000f          	fence
    80006084:	0f50000f          	fence	iorw,ow
    80006088:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000608c:	ffffe097          	auipc	ra,0xffffe
    80006090:	7f4080e7          	jalr	2036(ra) # 80004880 <mycpu>
    80006094:	100027f3          	csrr	a5,sstatus
    80006098:	0027f793          	andi	a5,a5,2
    8000609c:	04079a63          	bnez	a5,800060f0 <release+0xb8>
    800060a0:	07852783          	lw	a5,120(a0)
    800060a4:	02f05e63          	blez	a5,800060e0 <release+0xa8>
    800060a8:	fff7871b          	addiw	a4,a5,-1
    800060ac:	06e52c23          	sw	a4,120(a0)
    800060b0:	00071c63          	bnez	a4,800060c8 <release+0x90>
    800060b4:	07c52783          	lw	a5,124(a0)
    800060b8:	00078863          	beqz	a5,800060c8 <release+0x90>
    800060bc:	100027f3          	csrr	a5,sstatus
    800060c0:	0027e793          	ori	a5,a5,2
    800060c4:	10079073          	csrw	sstatus,a5
    800060c8:	01813083          	ld	ra,24(sp)
    800060cc:	01013403          	ld	s0,16(sp)
    800060d0:	00813483          	ld	s1,8(sp)
    800060d4:	00013903          	ld	s2,0(sp)
    800060d8:	02010113          	addi	sp,sp,32
    800060dc:	00008067          	ret
    800060e0:	00001517          	auipc	a0,0x1
    800060e4:	5d850513          	addi	a0,a0,1496 # 800076b8 <digits+0x48>
    800060e8:	fffff097          	auipc	ra,0xfffff
    800060ec:	154080e7          	jalr	340(ra) # 8000523c <panic>
    800060f0:	00001517          	auipc	a0,0x1
    800060f4:	5b050513          	addi	a0,a0,1456 # 800076a0 <digits+0x30>
    800060f8:	fffff097          	auipc	ra,0xfffff
    800060fc:	144080e7          	jalr	324(ra) # 8000523c <panic>

0000000080006100 <holding>:
    80006100:	00052783          	lw	a5,0(a0)
    80006104:	00079663          	bnez	a5,80006110 <holding+0x10>
    80006108:	00000513          	li	a0,0
    8000610c:	00008067          	ret
    80006110:	fe010113          	addi	sp,sp,-32
    80006114:	00813823          	sd	s0,16(sp)
    80006118:	00913423          	sd	s1,8(sp)
    8000611c:	00113c23          	sd	ra,24(sp)
    80006120:	02010413          	addi	s0,sp,32
    80006124:	01053483          	ld	s1,16(a0)
    80006128:	ffffe097          	auipc	ra,0xffffe
    8000612c:	758080e7          	jalr	1880(ra) # 80004880 <mycpu>
    80006130:	01813083          	ld	ra,24(sp)
    80006134:	01013403          	ld	s0,16(sp)
    80006138:	40a48533          	sub	a0,s1,a0
    8000613c:	00153513          	seqz	a0,a0
    80006140:	00813483          	ld	s1,8(sp)
    80006144:	02010113          	addi	sp,sp,32
    80006148:	00008067          	ret

000000008000614c <push_off>:
    8000614c:	fe010113          	addi	sp,sp,-32
    80006150:	00813823          	sd	s0,16(sp)
    80006154:	00113c23          	sd	ra,24(sp)
    80006158:	00913423          	sd	s1,8(sp)
    8000615c:	02010413          	addi	s0,sp,32
    80006160:	100024f3          	csrr	s1,sstatus
    80006164:	100027f3          	csrr	a5,sstatus
    80006168:	ffd7f793          	andi	a5,a5,-3
    8000616c:	10079073          	csrw	sstatus,a5
    80006170:	ffffe097          	auipc	ra,0xffffe
    80006174:	710080e7          	jalr	1808(ra) # 80004880 <mycpu>
    80006178:	07852783          	lw	a5,120(a0)
    8000617c:	02078663          	beqz	a5,800061a8 <push_off+0x5c>
    80006180:	ffffe097          	auipc	ra,0xffffe
    80006184:	700080e7          	jalr	1792(ra) # 80004880 <mycpu>
    80006188:	07852783          	lw	a5,120(a0)
    8000618c:	01813083          	ld	ra,24(sp)
    80006190:	01013403          	ld	s0,16(sp)
    80006194:	0017879b          	addiw	a5,a5,1
    80006198:	06f52c23          	sw	a5,120(a0)
    8000619c:	00813483          	ld	s1,8(sp)
    800061a0:	02010113          	addi	sp,sp,32
    800061a4:	00008067          	ret
    800061a8:	0014d493          	srli	s1,s1,0x1
    800061ac:	ffffe097          	auipc	ra,0xffffe
    800061b0:	6d4080e7          	jalr	1748(ra) # 80004880 <mycpu>
    800061b4:	0014f493          	andi	s1,s1,1
    800061b8:	06952e23          	sw	s1,124(a0)
    800061bc:	fc5ff06f          	j	80006180 <push_off+0x34>

00000000800061c0 <pop_off>:
    800061c0:	ff010113          	addi	sp,sp,-16
    800061c4:	00813023          	sd	s0,0(sp)
    800061c8:	00113423          	sd	ra,8(sp)
    800061cc:	01010413          	addi	s0,sp,16
    800061d0:	ffffe097          	auipc	ra,0xffffe
    800061d4:	6b0080e7          	jalr	1712(ra) # 80004880 <mycpu>
    800061d8:	100027f3          	csrr	a5,sstatus
    800061dc:	0027f793          	andi	a5,a5,2
    800061e0:	04079663          	bnez	a5,8000622c <pop_off+0x6c>
    800061e4:	07852783          	lw	a5,120(a0)
    800061e8:	02f05a63          	blez	a5,8000621c <pop_off+0x5c>
    800061ec:	fff7871b          	addiw	a4,a5,-1
    800061f0:	06e52c23          	sw	a4,120(a0)
    800061f4:	00071c63          	bnez	a4,8000620c <pop_off+0x4c>
    800061f8:	07c52783          	lw	a5,124(a0)
    800061fc:	00078863          	beqz	a5,8000620c <pop_off+0x4c>
    80006200:	100027f3          	csrr	a5,sstatus
    80006204:	0027e793          	ori	a5,a5,2
    80006208:	10079073          	csrw	sstatus,a5
    8000620c:	00813083          	ld	ra,8(sp)
    80006210:	00013403          	ld	s0,0(sp)
    80006214:	01010113          	addi	sp,sp,16
    80006218:	00008067          	ret
    8000621c:	00001517          	auipc	a0,0x1
    80006220:	49c50513          	addi	a0,a0,1180 # 800076b8 <digits+0x48>
    80006224:	fffff097          	auipc	ra,0xfffff
    80006228:	018080e7          	jalr	24(ra) # 8000523c <panic>
    8000622c:	00001517          	auipc	a0,0x1
    80006230:	47450513          	addi	a0,a0,1140 # 800076a0 <digits+0x30>
    80006234:	fffff097          	auipc	ra,0xfffff
    80006238:	008080e7          	jalr	8(ra) # 8000523c <panic>

000000008000623c <push_on>:
    8000623c:	fe010113          	addi	sp,sp,-32
    80006240:	00813823          	sd	s0,16(sp)
    80006244:	00113c23          	sd	ra,24(sp)
    80006248:	00913423          	sd	s1,8(sp)
    8000624c:	02010413          	addi	s0,sp,32
    80006250:	100024f3          	csrr	s1,sstatus
    80006254:	100027f3          	csrr	a5,sstatus
    80006258:	0027e793          	ori	a5,a5,2
    8000625c:	10079073          	csrw	sstatus,a5
    80006260:	ffffe097          	auipc	ra,0xffffe
    80006264:	620080e7          	jalr	1568(ra) # 80004880 <mycpu>
    80006268:	07852783          	lw	a5,120(a0)
    8000626c:	02078663          	beqz	a5,80006298 <push_on+0x5c>
    80006270:	ffffe097          	auipc	ra,0xffffe
    80006274:	610080e7          	jalr	1552(ra) # 80004880 <mycpu>
    80006278:	07852783          	lw	a5,120(a0)
    8000627c:	01813083          	ld	ra,24(sp)
    80006280:	01013403          	ld	s0,16(sp)
    80006284:	0017879b          	addiw	a5,a5,1
    80006288:	06f52c23          	sw	a5,120(a0)
    8000628c:	00813483          	ld	s1,8(sp)
    80006290:	02010113          	addi	sp,sp,32
    80006294:	00008067          	ret
    80006298:	0014d493          	srli	s1,s1,0x1
    8000629c:	ffffe097          	auipc	ra,0xffffe
    800062a0:	5e4080e7          	jalr	1508(ra) # 80004880 <mycpu>
    800062a4:	0014f493          	andi	s1,s1,1
    800062a8:	06952e23          	sw	s1,124(a0)
    800062ac:	fc5ff06f          	j	80006270 <push_on+0x34>

00000000800062b0 <pop_on>:
    800062b0:	ff010113          	addi	sp,sp,-16
    800062b4:	00813023          	sd	s0,0(sp)
    800062b8:	00113423          	sd	ra,8(sp)
    800062bc:	01010413          	addi	s0,sp,16
    800062c0:	ffffe097          	auipc	ra,0xffffe
    800062c4:	5c0080e7          	jalr	1472(ra) # 80004880 <mycpu>
    800062c8:	100027f3          	csrr	a5,sstatus
    800062cc:	0027f793          	andi	a5,a5,2
    800062d0:	04078463          	beqz	a5,80006318 <pop_on+0x68>
    800062d4:	07852783          	lw	a5,120(a0)
    800062d8:	02f05863          	blez	a5,80006308 <pop_on+0x58>
    800062dc:	fff7879b          	addiw	a5,a5,-1
    800062e0:	06f52c23          	sw	a5,120(a0)
    800062e4:	07853783          	ld	a5,120(a0)
    800062e8:	00079863          	bnez	a5,800062f8 <pop_on+0x48>
    800062ec:	100027f3          	csrr	a5,sstatus
    800062f0:	ffd7f793          	andi	a5,a5,-3
    800062f4:	10079073          	csrw	sstatus,a5
    800062f8:	00813083          	ld	ra,8(sp)
    800062fc:	00013403          	ld	s0,0(sp)
    80006300:	01010113          	addi	sp,sp,16
    80006304:	00008067          	ret
    80006308:	00001517          	auipc	a0,0x1
    8000630c:	3d850513          	addi	a0,a0,984 # 800076e0 <digits+0x70>
    80006310:	fffff097          	auipc	ra,0xfffff
    80006314:	f2c080e7          	jalr	-212(ra) # 8000523c <panic>
    80006318:	00001517          	auipc	a0,0x1
    8000631c:	3a850513          	addi	a0,a0,936 # 800076c0 <digits+0x50>
    80006320:	fffff097          	auipc	ra,0xfffff
    80006324:	f1c080e7          	jalr	-228(ra) # 8000523c <panic>

0000000080006328 <__memset>:
    80006328:	ff010113          	addi	sp,sp,-16
    8000632c:	00813423          	sd	s0,8(sp)
    80006330:	01010413          	addi	s0,sp,16
    80006334:	1a060e63          	beqz	a2,800064f0 <__memset+0x1c8>
    80006338:	40a007b3          	neg	a5,a0
    8000633c:	0077f793          	andi	a5,a5,7
    80006340:	00778693          	addi	a3,a5,7
    80006344:	00b00813          	li	a6,11
    80006348:	0ff5f593          	andi	a1,a1,255
    8000634c:	fff6071b          	addiw	a4,a2,-1
    80006350:	1b06e663          	bltu	a3,a6,800064fc <__memset+0x1d4>
    80006354:	1cd76463          	bltu	a4,a3,8000651c <__memset+0x1f4>
    80006358:	1a078e63          	beqz	a5,80006514 <__memset+0x1ec>
    8000635c:	00b50023          	sb	a1,0(a0)
    80006360:	00100713          	li	a4,1
    80006364:	1ae78463          	beq	a5,a4,8000650c <__memset+0x1e4>
    80006368:	00b500a3          	sb	a1,1(a0)
    8000636c:	00200713          	li	a4,2
    80006370:	1ae78a63          	beq	a5,a4,80006524 <__memset+0x1fc>
    80006374:	00b50123          	sb	a1,2(a0)
    80006378:	00300713          	li	a4,3
    8000637c:	18e78463          	beq	a5,a4,80006504 <__memset+0x1dc>
    80006380:	00b501a3          	sb	a1,3(a0)
    80006384:	00400713          	li	a4,4
    80006388:	1ae78263          	beq	a5,a4,8000652c <__memset+0x204>
    8000638c:	00b50223          	sb	a1,4(a0)
    80006390:	00500713          	li	a4,5
    80006394:	1ae78063          	beq	a5,a4,80006534 <__memset+0x20c>
    80006398:	00b502a3          	sb	a1,5(a0)
    8000639c:	00700713          	li	a4,7
    800063a0:	18e79e63          	bne	a5,a4,8000653c <__memset+0x214>
    800063a4:	00b50323          	sb	a1,6(a0)
    800063a8:	00700e93          	li	t4,7
    800063ac:	00859713          	slli	a4,a1,0x8
    800063b0:	00e5e733          	or	a4,a1,a4
    800063b4:	01059e13          	slli	t3,a1,0x10
    800063b8:	01c76e33          	or	t3,a4,t3
    800063bc:	01859313          	slli	t1,a1,0x18
    800063c0:	006e6333          	or	t1,t3,t1
    800063c4:	02059893          	slli	a7,a1,0x20
    800063c8:	40f60e3b          	subw	t3,a2,a5
    800063cc:	011368b3          	or	a7,t1,a7
    800063d0:	02859813          	slli	a6,a1,0x28
    800063d4:	0108e833          	or	a6,a7,a6
    800063d8:	03059693          	slli	a3,a1,0x30
    800063dc:	003e589b          	srliw	a7,t3,0x3
    800063e0:	00d866b3          	or	a3,a6,a3
    800063e4:	03859713          	slli	a4,a1,0x38
    800063e8:	00389813          	slli	a6,a7,0x3
    800063ec:	00f507b3          	add	a5,a0,a5
    800063f0:	00e6e733          	or	a4,a3,a4
    800063f4:	000e089b          	sext.w	a7,t3
    800063f8:	00f806b3          	add	a3,a6,a5
    800063fc:	00e7b023          	sd	a4,0(a5)
    80006400:	00878793          	addi	a5,a5,8
    80006404:	fed79ce3          	bne	a5,a3,800063fc <__memset+0xd4>
    80006408:	ff8e7793          	andi	a5,t3,-8
    8000640c:	0007871b          	sext.w	a4,a5
    80006410:	01d787bb          	addw	a5,a5,t4
    80006414:	0ce88e63          	beq	a7,a4,800064f0 <__memset+0x1c8>
    80006418:	00f50733          	add	a4,a0,a5
    8000641c:	00b70023          	sb	a1,0(a4)
    80006420:	0017871b          	addiw	a4,a5,1
    80006424:	0cc77663          	bgeu	a4,a2,800064f0 <__memset+0x1c8>
    80006428:	00e50733          	add	a4,a0,a4
    8000642c:	00b70023          	sb	a1,0(a4)
    80006430:	0027871b          	addiw	a4,a5,2
    80006434:	0ac77e63          	bgeu	a4,a2,800064f0 <__memset+0x1c8>
    80006438:	00e50733          	add	a4,a0,a4
    8000643c:	00b70023          	sb	a1,0(a4)
    80006440:	0037871b          	addiw	a4,a5,3
    80006444:	0ac77663          	bgeu	a4,a2,800064f0 <__memset+0x1c8>
    80006448:	00e50733          	add	a4,a0,a4
    8000644c:	00b70023          	sb	a1,0(a4)
    80006450:	0047871b          	addiw	a4,a5,4
    80006454:	08c77e63          	bgeu	a4,a2,800064f0 <__memset+0x1c8>
    80006458:	00e50733          	add	a4,a0,a4
    8000645c:	00b70023          	sb	a1,0(a4)
    80006460:	0057871b          	addiw	a4,a5,5
    80006464:	08c77663          	bgeu	a4,a2,800064f0 <__memset+0x1c8>
    80006468:	00e50733          	add	a4,a0,a4
    8000646c:	00b70023          	sb	a1,0(a4)
    80006470:	0067871b          	addiw	a4,a5,6
    80006474:	06c77e63          	bgeu	a4,a2,800064f0 <__memset+0x1c8>
    80006478:	00e50733          	add	a4,a0,a4
    8000647c:	00b70023          	sb	a1,0(a4)
    80006480:	0077871b          	addiw	a4,a5,7
    80006484:	06c77663          	bgeu	a4,a2,800064f0 <__memset+0x1c8>
    80006488:	00e50733          	add	a4,a0,a4
    8000648c:	00b70023          	sb	a1,0(a4)
    80006490:	0087871b          	addiw	a4,a5,8
    80006494:	04c77e63          	bgeu	a4,a2,800064f0 <__memset+0x1c8>
    80006498:	00e50733          	add	a4,a0,a4
    8000649c:	00b70023          	sb	a1,0(a4)
    800064a0:	0097871b          	addiw	a4,a5,9
    800064a4:	04c77663          	bgeu	a4,a2,800064f0 <__memset+0x1c8>
    800064a8:	00e50733          	add	a4,a0,a4
    800064ac:	00b70023          	sb	a1,0(a4)
    800064b0:	00a7871b          	addiw	a4,a5,10
    800064b4:	02c77e63          	bgeu	a4,a2,800064f0 <__memset+0x1c8>
    800064b8:	00e50733          	add	a4,a0,a4
    800064bc:	00b70023          	sb	a1,0(a4)
    800064c0:	00b7871b          	addiw	a4,a5,11
    800064c4:	02c77663          	bgeu	a4,a2,800064f0 <__memset+0x1c8>
    800064c8:	00e50733          	add	a4,a0,a4
    800064cc:	00b70023          	sb	a1,0(a4)
    800064d0:	00c7871b          	addiw	a4,a5,12
    800064d4:	00c77e63          	bgeu	a4,a2,800064f0 <__memset+0x1c8>
    800064d8:	00e50733          	add	a4,a0,a4
    800064dc:	00b70023          	sb	a1,0(a4)
    800064e0:	00d7879b          	addiw	a5,a5,13
    800064e4:	00c7f663          	bgeu	a5,a2,800064f0 <__memset+0x1c8>
    800064e8:	00f507b3          	add	a5,a0,a5
    800064ec:	00b78023          	sb	a1,0(a5)
    800064f0:	00813403          	ld	s0,8(sp)
    800064f4:	01010113          	addi	sp,sp,16
    800064f8:	00008067          	ret
    800064fc:	00b00693          	li	a3,11
    80006500:	e55ff06f          	j	80006354 <__memset+0x2c>
    80006504:	00300e93          	li	t4,3
    80006508:	ea5ff06f          	j	800063ac <__memset+0x84>
    8000650c:	00100e93          	li	t4,1
    80006510:	e9dff06f          	j	800063ac <__memset+0x84>
    80006514:	00000e93          	li	t4,0
    80006518:	e95ff06f          	j	800063ac <__memset+0x84>
    8000651c:	00000793          	li	a5,0
    80006520:	ef9ff06f          	j	80006418 <__memset+0xf0>
    80006524:	00200e93          	li	t4,2
    80006528:	e85ff06f          	j	800063ac <__memset+0x84>
    8000652c:	00400e93          	li	t4,4
    80006530:	e7dff06f          	j	800063ac <__memset+0x84>
    80006534:	00500e93          	li	t4,5
    80006538:	e75ff06f          	j	800063ac <__memset+0x84>
    8000653c:	00600e93          	li	t4,6
    80006540:	e6dff06f          	j	800063ac <__memset+0x84>

0000000080006544 <__memmove>:
    80006544:	ff010113          	addi	sp,sp,-16
    80006548:	00813423          	sd	s0,8(sp)
    8000654c:	01010413          	addi	s0,sp,16
    80006550:	0e060863          	beqz	a2,80006640 <__memmove+0xfc>
    80006554:	fff6069b          	addiw	a3,a2,-1
    80006558:	0006881b          	sext.w	a6,a3
    8000655c:	0ea5e863          	bltu	a1,a0,8000664c <__memmove+0x108>
    80006560:	00758713          	addi	a4,a1,7
    80006564:	00a5e7b3          	or	a5,a1,a0
    80006568:	40a70733          	sub	a4,a4,a0
    8000656c:	0077f793          	andi	a5,a5,7
    80006570:	00f73713          	sltiu	a4,a4,15
    80006574:	00174713          	xori	a4,a4,1
    80006578:	0017b793          	seqz	a5,a5
    8000657c:	00e7f7b3          	and	a5,a5,a4
    80006580:	10078863          	beqz	a5,80006690 <__memmove+0x14c>
    80006584:	00900793          	li	a5,9
    80006588:	1107f463          	bgeu	a5,a6,80006690 <__memmove+0x14c>
    8000658c:	0036581b          	srliw	a6,a2,0x3
    80006590:	fff8081b          	addiw	a6,a6,-1
    80006594:	02081813          	slli	a6,a6,0x20
    80006598:	01d85893          	srli	a7,a6,0x1d
    8000659c:	00858813          	addi	a6,a1,8
    800065a0:	00058793          	mv	a5,a1
    800065a4:	00050713          	mv	a4,a0
    800065a8:	01088833          	add	a6,a7,a6
    800065ac:	0007b883          	ld	a7,0(a5)
    800065b0:	00878793          	addi	a5,a5,8
    800065b4:	00870713          	addi	a4,a4,8
    800065b8:	ff173c23          	sd	a7,-8(a4)
    800065bc:	ff0798e3          	bne	a5,a6,800065ac <__memmove+0x68>
    800065c0:	ff867713          	andi	a4,a2,-8
    800065c4:	02071793          	slli	a5,a4,0x20
    800065c8:	0207d793          	srli	a5,a5,0x20
    800065cc:	00f585b3          	add	a1,a1,a5
    800065d0:	40e686bb          	subw	a3,a3,a4
    800065d4:	00f507b3          	add	a5,a0,a5
    800065d8:	06e60463          	beq	a2,a4,80006640 <__memmove+0xfc>
    800065dc:	0005c703          	lbu	a4,0(a1)
    800065e0:	00e78023          	sb	a4,0(a5)
    800065e4:	04068e63          	beqz	a3,80006640 <__memmove+0xfc>
    800065e8:	0015c603          	lbu	a2,1(a1)
    800065ec:	00100713          	li	a4,1
    800065f0:	00c780a3          	sb	a2,1(a5)
    800065f4:	04e68663          	beq	a3,a4,80006640 <__memmove+0xfc>
    800065f8:	0025c603          	lbu	a2,2(a1)
    800065fc:	00200713          	li	a4,2
    80006600:	00c78123          	sb	a2,2(a5)
    80006604:	02e68e63          	beq	a3,a4,80006640 <__memmove+0xfc>
    80006608:	0035c603          	lbu	a2,3(a1)
    8000660c:	00300713          	li	a4,3
    80006610:	00c781a3          	sb	a2,3(a5)
    80006614:	02e68663          	beq	a3,a4,80006640 <__memmove+0xfc>
    80006618:	0045c603          	lbu	a2,4(a1)
    8000661c:	00400713          	li	a4,4
    80006620:	00c78223          	sb	a2,4(a5)
    80006624:	00e68e63          	beq	a3,a4,80006640 <__memmove+0xfc>
    80006628:	0055c603          	lbu	a2,5(a1)
    8000662c:	00500713          	li	a4,5
    80006630:	00c782a3          	sb	a2,5(a5)
    80006634:	00e68663          	beq	a3,a4,80006640 <__memmove+0xfc>
    80006638:	0065c703          	lbu	a4,6(a1)
    8000663c:	00e78323          	sb	a4,6(a5)
    80006640:	00813403          	ld	s0,8(sp)
    80006644:	01010113          	addi	sp,sp,16
    80006648:	00008067          	ret
    8000664c:	02061713          	slli	a4,a2,0x20
    80006650:	02075713          	srli	a4,a4,0x20
    80006654:	00e587b3          	add	a5,a1,a4
    80006658:	f0f574e3          	bgeu	a0,a5,80006560 <__memmove+0x1c>
    8000665c:	02069613          	slli	a2,a3,0x20
    80006660:	02065613          	srli	a2,a2,0x20
    80006664:	fff64613          	not	a2,a2
    80006668:	00e50733          	add	a4,a0,a4
    8000666c:	00c78633          	add	a2,a5,a2
    80006670:	fff7c683          	lbu	a3,-1(a5)
    80006674:	fff78793          	addi	a5,a5,-1
    80006678:	fff70713          	addi	a4,a4,-1
    8000667c:	00d70023          	sb	a3,0(a4)
    80006680:	fec798e3          	bne	a5,a2,80006670 <__memmove+0x12c>
    80006684:	00813403          	ld	s0,8(sp)
    80006688:	01010113          	addi	sp,sp,16
    8000668c:	00008067          	ret
    80006690:	02069713          	slli	a4,a3,0x20
    80006694:	02075713          	srli	a4,a4,0x20
    80006698:	00170713          	addi	a4,a4,1
    8000669c:	00e50733          	add	a4,a0,a4
    800066a0:	00050793          	mv	a5,a0
    800066a4:	0005c683          	lbu	a3,0(a1)
    800066a8:	00178793          	addi	a5,a5,1
    800066ac:	00158593          	addi	a1,a1,1
    800066b0:	fed78fa3          	sb	a3,-1(a5)
    800066b4:	fee798e3          	bne	a5,a4,800066a4 <__memmove+0x160>
    800066b8:	f89ff06f          	j	80006640 <__memmove+0xfc>

00000000800066bc <__putc>:
    800066bc:	fe010113          	addi	sp,sp,-32
    800066c0:	00813823          	sd	s0,16(sp)
    800066c4:	00113c23          	sd	ra,24(sp)
    800066c8:	02010413          	addi	s0,sp,32
    800066cc:	00050793          	mv	a5,a0
    800066d0:	fef40593          	addi	a1,s0,-17
    800066d4:	00100613          	li	a2,1
    800066d8:	00000513          	li	a0,0
    800066dc:	fef407a3          	sb	a5,-17(s0)
    800066e0:	fffff097          	auipc	ra,0xfffff
    800066e4:	b3c080e7          	jalr	-1220(ra) # 8000521c <console_write>
    800066e8:	01813083          	ld	ra,24(sp)
    800066ec:	01013403          	ld	s0,16(sp)
    800066f0:	02010113          	addi	sp,sp,32
    800066f4:	00008067          	ret

00000000800066f8 <__getc>:
    800066f8:	fe010113          	addi	sp,sp,-32
    800066fc:	00813823          	sd	s0,16(sp)
    80006700:	00113c23          	sd	ra,24(sp)
    80006704:	02010413          	addi	s0,sp,32
    80006708:	fe840593          	addi	a1,s0,-24
    8000670c:	00100613          	li	a2,1
    80006710:	00000513          	li	a0,0
    80006714:	fffff097          	auipc	ra,0xfffff
    80006718:	ae8080e7          	jalr	-1304(ra) # 800051fc <console_read>
    8000671c:	fe844503          	lbu	a0,-24(s0)
    80006720:	01813083          	ld	ra,24(sp)
    80006724:	01013403          	ld	s0,16(sp)
    80006728:	02010113          	addi	sp,sp,32
    8000672c:	00008067          	ret

0000000080006730 <console_handler>:
    80006730:	fe010113          	addi	sp,sp,-32
    80006734:	00813823          	sd	s0,16(sp)
    80006738:	00113c23          	sd	ra,24(sp)
    8000673c:	00913423          	sd	s1,8(sp)
    80006740:	02010413          	addi	s0,sp,32
    80006744:	14202773          	csrr	a4,scause
    80006748:	100027f3          	csrr	a5,sstatus
    8000674c:	0027f793          	andi	a5,a5,2
    80006750:	06079e63          	bnez	a5,800067cc <console_handler+0x9c>
    80006754:	00074c63          	bltz	a4,8000676c <console_handler+0x3c>
    80006758:	01813083          	ld	ra,24(sp)
    8000675c:	01013403          	ld	s0,16(sp)
    80006760:	00813483          	ld	s1,8(sp)
    80006764:	02010113          	addi	sp,sp,32
    80006768:	00008067          	ret
    8000676c:	0ff77713          	andi	a4,a4,255
    80006770:	00900793          	li	a5,9
    80006774:	fef712e3          	bne	a4,a5,80006758 <console_handler+0x28>
    80006778:	ffffe097          	auipc	ra,0xffffe
    8000677c:	6dc080e7          	jalr	1756(ra) # 80004e54 <plic_claim>
    80006780:	00a00793          	li	a5,10
    80006784:	00050493          	mv	s1,a0
    80006788:	02f50c63          	beq	a0,a5,800067c0 <console_handler+0x90>
    8000678c:	fc0506e3          	beqz	a0,80006758 <console_handler+0x28>
    80006790:	00050593          	mv	a1,a0
    80006794:	00001517          	auipc	a0,0x1
    80006798:	e5450513          	addi	a0,a0,-428 # 800075e8 <CONSOLE_STATUS+0x5d8>
    8000679c:	fffff097          	auipc	ra,0xfffff
    800067a0:	afc080e7          	jalr	-1284(ra) # 80005298 <__printf>
    800067a4:	01013403          	ld	s0,16(sp)
    800067a8:	01813083          	ld	ra,24(sp)
    800067ac:	00048513          	mv	a0,s1
    800067b0:	00813483          	ld	s1,8(sp)
    800067b4:	02010113          	addi	sp,sp,32
    800067b8:	ffffe317          	auipc	t1,0xffffe
    800067bc:	6d430067          	jr	1748(t1) # 80004e8c <plic_complete>
    800067c0:	fffff097          	auipc	ra,0xfffff
    800067c4:	3e0080e7          	jalr	992(ra) # 80005ba0 <uartintr>
    800067c8:	fddff06f          	j	800067a4 <console_handler+0x74>
    800067cc:	00001517          	auipc	a0,0x1
    800067d0:	f1c50513          	addi	a0,a0,-228 # 800076e8 <digits+0x78>
    800067d4:	fffff097          	auipc	ra,0xfffff
    800067d8:	a68080e7          	jalr	-1432(ra) # 8000523c <panic>
	...
