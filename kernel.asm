
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	18013103          	ld	sp,384(sp) # 8000a180 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2c0050ef          	jal	ra,800052dc <start>

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
    80001084:	00009297          	auipc	t0,0x9
    80001088:	1822b623          	sd	sp,396(t0) # 8000a210 <framePointer>

    call _ZN5Riscv11trapHandlerEv
    8000108c:	4a9000ef          	jal	ra,80001d34 <_ZN5Riscv11trapHandlerEv>

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
    80001428:	00009717          	auipc	a4,0x9
    8000142c:	dc870713          	addi	a4,a4,-568 # 8000a1f0 <_ZN7KThread8staticIdE>
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
    80001458:	33470713          	addi	a4,a4,820 # 80001788 <_ZN7KThread7wrapperEv>
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
    800014bc:	00009717          	auipc	a4,0x9
    800014c0:	d3470713          	addi	a4,a4,-716 # 8000a1f0 <_ZN7KThread8staticIdE>
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
    800014e4:	5e4080e7          	jalr	1508(ra) # 80001ac4 <_Znam>
    state(NEW) {
    800014e8:	00a4bc23          	sd	a0,24(s1)
    context({body != nullptr ? (uint64)&wrapper : 0, stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0}),
    800014ec:	04090263          	beqz	s2,80001530 <_ZN7KThreadC1EPFvPvE+0x98>
    800014f0:	00000797          	auipc	a5,0x0
    800014f4:	29878793          	addi	a5,a5,664 # 80001788 <_ZN7KThread7wrapperEv>
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
    80001558:	c80080e7          	jalr	-896(ra) # 800021d4 <_ZN15MemoryAllocator8mem_freeEPv>
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
    800015a0:	b38080e7          	jalr	-1224(ra) # 800020d4 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001604:	ad4080e7          	jalr	-1324(ra) # 800020d4 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001628:	bb0080e7          	jalr	-1104(ra) # 800021d4 <_ZN15MemoryAllocator8mem_freeEPv>
    8000162c:	00090513          	mv	a0,s2
    80001630:	0000a097          	auipc	ra,0xa
    80001634:	cf8080e7          	jalr	-776(ra) # 8000b328 <_Unwind_Resume>
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
    8000167c:	1b0080e7          	jalr	432(ra) # 80001828 <_ZN9Scheduler3putEP7KThread>
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
    800016c4:	00009497          	auipc	s1,0x9
    800016c8:	b344b483          	ld	s1,-1228(s1) # 8000a1f8 <_ZN7KThread7runningE>

    if (old && old->state != FINISHED && old->state != BLOCKED) {
    800016cc:	00048c63          	beqz	s1,800016e4 <_ZN7KThread8dispatchEv+0x34>
    800016d0:	0304a783          	lw	a5,48(s1)
    800016d4:	00400713          	li	a4,4
    800016d8:	00e78663          	beq	a5,a4,800016e4 <_ZN7KThread8dispatchEv+0x34>
    800016dc:	00300713          	li	a4,3
    800016e0:	04e79e63          	bne	a5,a4,8000173c <_ZN7KThread8dispatchEv+0x8c>
        old->state = READY;
        Scheduler::put(old);
    }

    running = Scheduler::get();
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	100080e7          	jalr	256(ra) # 800017e4 <_ZN9Scheduler3getEv>
    800016ec:	00009797          	auipc	a5,0x9
    800016f0:	b0a7b623          	sd	a0,-1268(a5) # 8000a1f8 <_ZN7KThread7runningE>
    if (!running) return;
    800016f4:	02050a63          	beqz	a0,80001728 <_ZN7KThread8dispatchEv+0x78>

    running->state = RUNNING;
    800016f8:	00200793          	li	a5,2
    800016fc:	02f52823          	sw	a5,48(a0)

    if (old && old->state == FINISHED) {
    80001700:	00048863          	beqz	s1,80001710 <_ZN7KThread8dispatchEv+0x60>
    80001704:	0304a703          	lw	a4,48(s1)
    80001708:	00400793          	li	a5,4
    8000170c:	04f70463          	beq	a4,a5,80001754 <_ZN7KThread8dispatchEv+0xa4>
        MemoryAllocator::mem_free(old->stack);
        old->stack = nullptr;
    }

    contextSwitch(&old->context, &running->context);
    80001710:	00009597          	auipc	a1,0x9
    80001714:	ae85b583          	ld	a1,-1304(a1) # 8000a1f8 <_ZN7KThread7runningE>
    80001718:	02058593          	addi	a1,a1,32
    8000171c:	02048513          	addi	a0,s1,32
    80001720:	00000097          	auipc	ra,0x0
    80001724:	a00080e7          	jalr	-1536(ra) # 80001120 <_ZN7KThread13contextSwitchEPNS_7ContextES1_>
}
    80001728:	01813083          	ld	ra,24(sp)
    8000172c:	01013403          	ld	s0,16(sp)
    80001730:	00813483          	ld	s1,8(sp)
    80001734:	02010113          	addi	sp,sp,32
    80001738:	00008067          	ret
        old->state = READY;
    8000173c:	00100793          	li	a5,1
    80001740:	02f4a823          	sw	a5,48(s1)
        Scheduler::put(old);
    80001744:	00048513          	mv	a0,s1
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	0e0080e7          	jalr	224(ra) # 80001828 <_ZN9Scheduler3putEP7KThread>
    80001750:	f95ff06f          	j	800016e4 <_ZN7KThread8dispatchEv+0x34>
        MemoryAllocator::mem_free(old->stack);
    80001754:	0184b503          	ld	a0,24(s1)
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	a7c080e7          	jalr	-1412(ra) # 800021d4 <_ZN15MemoryAllocator8mem_freeEPv>
        old->stack = nullptr;
    80001760:	0004bc23          	sd	zero,24(s1)
    80001764:	fadff06f          	j	80001710 <_ZN7KThread8dispatchEv+0x60>

0000000080001768 <_ZN7KThread5yieldEv>:

void KThread::yield() {
    80001768:	ff010113          	addi	sp,sp,-16
    8000176c:	00813423          	sd	s0,8(sp)
    80001770:	01010413          	addi	s0,sp,16
    asm volatile ("li a0, 0x13");
    80001774:	01300513          	li	a0,19
    asm volatile ("ecall");
    80001778:	00000073          	ecall
    8000177c:	00813403          	ld	s0,8(sp)
    80001780:	01010113          	addi	sp,sp,16
    80001784:	00008067          	ret

0000000080001788 <_ZN7KThread7wrapperEv>:
void KThread::wrapper() {
    80001788:	fe010113          	addi	sp,sp,-32
    8000178c:	00113c23          	sd	ra,24(sp)
    80001790:	00813823          	sd	s0,16(sp)
    80001794:	00913423          	sd	s1,8(sp)
    80001798:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	54c080e7          	jalr	1356(ra) # 80001ce8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800017a4:	00009497          	auipc	s1,0x9
    800017a8:	a4c48493          	addi	s1,s1,-1460 # 8000a1f0 <_ZN7KThread8staticIdE>
    800017ac:	0084b783          	ld	a5,8(s1)
    800017b0:	0007b703          	ld	a4,0(a5)
    800017b4:	0107b503          	ld	a0,16(a5)
    800017b8:	000700e7          	jalr	a4
    running->exit();
    800017bc:	0084b503          	ld	a0,8(s1)
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	ed0080e7          	jalr	-304(ra) # 80001690 <_ZN7KThread4exitEv>
    yield();
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	fa0080e7          	jalr	-96(ra) # 80001768 <_ZN7KThread5yieldEv>
}
    800017d0:	01813083          	ld	ra,24(sp)
    800017d4:	01013403          	ld	s0,16(sp)
    800017d8:	00813483          	ld	s1,8(sp)
    800017dc:	02010113          	addi	sp,sp,32
    800017e0:	00008067          	ret

00000000800017e4 <_ZN9Scheduler3getEv>:
#include "../h/KThread.hpp"

KThread* Scheduler::head = nullptr;
KThread* Scheduler::tail = nullptr;

KThread* Scheduler::get() {
    800017e4:	ff010113          	addi	sp,sp,-16
    800017e8:	00813423          	sd	s0,8(sp)
    800017ec:	01010413          	addi	s0,sp,16
    if (!head) return nullptr;
    800017f0:	00009517          	auipc	a0,0x9
    800017f4:	a1053503          	ld	a0,-1520(a0) # 8000a200 <_ZN9Scheduler4headE>
    800017f8:	00050c63          	beqz	a0,80001810 <_ZN9Scheduler3getEv+0x2c>

    KThread* thread = head;
    head = head->schedulerNext;
    800017fc:	03853783          	ld	a5,56(a0)
    80001800:	00009717          	auipc	a4,0x9
    80001804:	a0f73023          	sd	a5,-1536(a4) # 8000a200 <_ZN9Scheduler4headE>

    if (!head) tail = nullptr;
    80001808:	00078a63          	beqz	a5,8000181c <_ZN9Scheduler3getEv+0x38>
    thread->schedulerNext = nullptr;
    8000180c:	02053c23          	sd	zero,56(a0)

    return thread;
}
    80001810:	00813403          	ld	s0,8(sp)
    80001814:	01010113          	addi	sp,sp,16
    80001818:	00008067          	ret
    if (!head) tail = nullptr;
    8000181c:	00009797          	auipc	a5,0x9
    80001820:	9e07b623          	sd	zero,-1556(a5) # 8000a208 <_ZN9Scheduler4tailE>
    80001824:	fe9ff06f          	j	8000180c <_ZN9Scheduler3getEv+0x28>

0000000080001828 <_ZN9Scheduler3putEP7KThread>:

void Scheduler::put(KThread* thread) {
    80001828:	ff010113          	addi	sp,sp,-16
    8000182c:	00813423          	sd	s0,8(sp)
    80001830:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    80001834:	00009797          	auipc	a5,0x9
    80001838:	9cc7b783          	ld	a5,-1588(a5) # 8000a200 <_ZN9Scheduler4headE>
    8000183c:	02078263          	beqz	a5,80001860 <_ZN9Scheduler3putEP7KThread+0x38>
    else tail->schedulerNext = thread;
    80001840:	00009797          	auipc	a5,0x9
    80001844:	9c87b783          	ld	a5,-1592(a5) # 8000a208 <_ZN9Scheduler4tailE>
    80001848:	02a7bc23          	sd	a0,56(a5)
    tail = thread;
    8000184c:	00009797          	auipc	a5,0x9
    80001850:	9aa7be23          	sd	a0,-1604(a5) # 8000a208 <_ZN9Scheduler4tailE>
}
    80001854:	00813403          	ld	s0,8(sp)
    80001858:	01010113          	addi	sp,sp,16
    8000185c:	00008067          	ret
    if (!head) head = thread;
    80001860:	00009797          	auipc	a5,0x9
    80001864:	9aa7b023          	sd	a0,-1632(a5) # 8000a200 <_ZN9Scheduler4headE>
    80001868:	fe5ff06f          	j	8000184c <_ZN9Scheduler3putEP7KThread+0x24>

000000008000186c <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    8000186c:	ff010113          	addi	sp,sp,-16
    80001870:	00813423          	sd	s0,8(sp)
    80001874:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80001878:	00009517          	auipc	a0,0x9
    8000187c:	98853503          	ld	a0,-1656(a0) # 8000a200 <_ZN9Scheduler4headE>
    80001880:	00153513          	seqz	a0,a0
    80001884:	00813403          	ld	s0,8(sp)
    80001888:	01010113          	addi	sp,sp,16
    8000188c:	00008067          	ret

0000000080001890 <_Z11userWrapperPv>:
#include "../h/KThread.hpp"

uint64 framePointer;

void userMain();
void userWrapper(void* arg) {
    80001890:	ff010113          	addi	sp,sp,-16
    80001894:	00113423          	sd	ra,8(sp)
    80001898:	00813023          	sd	s0,0(sp)
    8000189c:	01010413          	addi	s0,sp,16
    userMain();
    800018a0:	00003097          	auipc	ra,0x3
    800018a4:	fec080e7          	jalr	-20(ra) # 8000488c <_Z8userMainv>
}
    800018a8:	00813083          	ld	ra,8(sp)
    800018ac:	00013403          	ld	s0,0(sp)
    800018b0:	01010113          	addi	sp,sp,16
    800018b4:	00008067          	ret

00000000800018b8 <main>:

void main() {
    800018b8:	fe010113          	addi	sp,sp,-32
    800018bc:	00113c23          	sd	ra,24(sp)
    800018c0:	00813823          	sd	s0,16(sp)
    800018c4:	02010413          	addi	s0,sp,32
    MemoryAllocator::initHeap();
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	7bc080e7          	jalr	1980(ra) # 80002084 <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	440080e7          	jalr	1088(ra) # 80001d10 <_ZN5Riscv16setupTrapHandlerEv>

    thread_t mainThread, userBody;

    mainThread = KThread::createThread(nullptr, nullptr, nullptr);
    800018d8:	00000613          	li	a2,0
    800018dc:	00000593          	li	a1,0
    800018e0:	00000513          	li	a0,0
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	c88080e7          	jalr	-888(ra) # 8000156c <_ZN7KThread12createThreadEPFvPvES0_S0_>
    KThread::running = mainThread;
    800018ec:	00009797          	auipc	a5,0x9
    800018f0:	8ac7b783          	ld	a5,-1876(a5) # 8000a198 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018f4:	00a7b023          	sd	a0,0(a5)
    void setState(ThreadState s) { state = s; }
    800018f8:	00200793          	li	a5,2
    800018fc:	02f52823          	sw	a5,48(a0)
    mainThread->setState(RUNNING);

    thread_create(&userBody, &userWrapper, nullptr);
    80001900:	00000613          	li	a2,0
    80001904:	00000597          	auipc	a1,0x0
    80001908:	f8c58593          	addi	a1,a1,-116 # 80001890 <_Z11userWrapperPv>
    8000190c:	fe840513          	addi	a0,s0,-24
    80001910:	00000097          	auipc	ra,0x0
    80001914:	90c080e7          	jalr	-1780(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
inline void Riscv::w_sip(uint64 sip) {
    asm volatile("csrw sip, %0" :: "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    asm volatile("csrs sstatus, %0" :: "r"(mask));
    80001918:	00200793          	li	a5,2
    8000191c:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!Scheduler::isEmpty()) {
    80001920:	00000097          	auipc	ra,0x0
    80001924:	f4c080e7          	jalr	-180(ra) # 8000186c <_ZN9Scheduler7isEmptyEv>
    80001928:	00051863          	bnez	a0,80001938 <main+0x80>
        KThread::yield();
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	e3c080e7          	jalr	-452(ra) # 80001768 <_ZN7KThread5yieldEv>
    80001934:	fedff06f          	j	80001920 <main+0x68>
    }
    80001938:	01813083          	ld	ra,24(sp)
    8000193c:	01013403          	ld	s0,16(sp)
    80001940:	02010113          	addi	sp,sp,32
    80001944:	00008067          	ret

0000000080001948 <_ZN6ThreadD1Ev>:
    : myHandle(nullptr), body(body), arg(arg) {}

Thread::Thread()
    : myHandle(nullptr), body(nullptr), arg(nullptr) {}

Thread::~Thread() {
    80001948:	00008797          	auipc	a5,0x8
    8000194c:	6c078793          	addi	a5,a5,1728 # 8000a008 <_ZTV6Thread+0x10>
    80001950:	00f53023          	sd	a5,0(a0)
    if (myHandle) {
    80001954:	00853503          	ld	a0,8(a0)
    80001958:	02050663          	beqz	a0,80001984 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread() {
    8000195c:	ff010113          	addi	sp,sp,-16
    80001960:	00113423          	sd	ra,8(sp)
    80001964:	00813023          	sd	s0,0(sp)
    80001968:	01010413          	addi	s0,sp,16
        mem_free(myHandle);
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	83c080e7          	jalr	-1988(ra) # 800011a8 <_Z8mem_freePv>
        myHandle = nullptr;
    }
}
    80001974:	00813083          	ld	ra,8(sp)
    80001978:	00013403          	ld	s0,0(sp)
    8000197c:	01010113          	addi	sp,sp,16
    80001980:	00008067          	ret
    80001984:	00008067          	ret

0000000080001988 <_ZN6Thread7wrapperEPv>:
void Thread::wrapper(void* arg) {
    80001988:	ff010113          	addi	sp,sp,-16
    8000198c:	00113423          	sd	ra,8(sp)
    80001990:	00813023          	sd	s0,0(sp)
    80001994:	01010413          	addi	s0,sp,16
    thread->run();
    80001998:	00053783          	ld	a5,0(a0)
    8000199c:	0107b783          	ld	a5,16(a5)
    800019a0:	000780e7          	jalr	a5
    thread_exit();
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	924080e7          	jalr	-1756(ra) # 800012c8 <_Z11thread_exitv>
}
    800019ac:	00813083          	ld	ra,8(sp)
    800019b0:	00013403          	ld	s0,0(sp)
    800019b4:	01010113          	addi	sp,sp,16
    800019b8:	00008067          	ret

00000000800019bc <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800019bc:	ff010113          	addi	sp,sp,-16
    800019c0:	00113423          	sd	ra,8(sp)
    800019c4:	00813023          	sd	s0,0(sp)
    800019c8:	01010413          	addi	s0,sp,16
    800019cc:	00008797          	auipc	a5,0x8
    800019d0:	66478793          	addi	a5,a5,1636 # 8000a030 <_ZTV9Semaphore+0x10>
    800019d4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800019d8:	00853503          	ld	a0,8(a0)
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	96c080e7          	jalr	-1684(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
}
    800019e4:	00813083          	ld	ra,8(sp)
    800019e8:	00013403          	ld	s0,0(sp)
    800019ec:	01010113          	addi	sp,sp,16
    800019f0:	00008067          	ret

00000000800019f4 <_Znwm>:
void* operator new(size_t size) {
    800019f4:	ff010113          	addi	sp,sp,-16
    800019f8:	00113423          	sd	ra,8(sp)
    800019fc:	00813023          	sd	s0,0(sp)
    80001a00:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a04:	fffff097          	auipc	ra,0xfffff
    80001a08:	760080e7          	jalr	1888(ra) # 80001164 <_Z9mem_allocm>
}
    80001a0c:	00813083          	ld	ra,8(sp)
    80001a10:	00013403          	ld	s0,0(sp)
    80001a14:	01010113          	addi	sp,sp,16
    80001a18:	00008067          	ret

0000000080001a1c <_ZdlPv>:
void operator delete(void* ptr) {
    80001a1c:	ff010113          	addi	sp,sp,-16
    80001a20:	00113423          	sd	ra,8(sp)
    80001a24:	00813023          	sd	s0,0(sp)
    80001a28:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001a2c:	fffff097          	auipc	ra,0xfffff
    80001a30:	77c080e7          	jalr	1916(ra) # 800011a8 <_Z8mem_freePv>
}
    80001a34:	00813083          	ld	ra,8(sp)
    80001a38:	00013403          	ld	s0,0(sp)
    80001a3c:	01010113          	addi	sp,sp,16
    80001a40:	00008067          	ret

0000000080001a44 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001a44:	fe010113          	addi	sp,sp,-32
    80001a48:	00113c23          	sd	ra,24(sp)
    80001a4c:	00813823          	sd	s0,16(sp)
    80001a50:	00913423          	sd	s1,8(sp)
    80001a54:	02010413          	addi	s0,sp,32
    80001a58:	00050493          	mv	s1,a0
}
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	eec080e7          	jalr	-276(ra) # 80001948 <_ZN6ThreadD1Ev>
    80001a64:	00048513          	mv	a0,s1
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	fb4080e7          	jalr	-76(ra) # 80001a1c <_ZdlPv>
    80001a70:	01813083          	ld	ra,24(sp)
    80001a74:	01013403          	ld	s0,16(sp)
    80001a78:	00813483          	ld	s1,8(sp)
    80001a7c:	02010113          	addi	sp,sp,32
    80001a80:	00008067          	ret

0000000080001a84 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001a84:	fe010113          	addi	sp,sp,-32
    80001a88:	00113c23          	sd	ra,24(sp)
    80001a8c:	00813823          	sd	s0,16(sp)
    80001a90:	00913423          	sd	s1,8(sp)
    80001a94:	02010413          	addi	s0,sp,32
    80001a98:	00050493          	mv	s1,a0
}
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	f20080e7          	jalr	-224(ra) # 800019bc <_ZN9SemaphoreD1Ev>
    80001aa4:	00048513          	mv	a0,s1
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	f74080e7          	jalr	-140(ra) # 80001a1c <_ZdlPv>
    80001ab0:	01813083          	ld	ra,24(sp)
    80001ab4:	01013403          	ld	s0,16(sp)
    80001ab8:	00813483          	ld	s1,8(sp)
    80001abc:	02010113          	addi	sp,sp,32
    80001ac0:	00008067          	ret

0000000080001ac4 <_Znam>:
void* operator new[](size_t size) {
    80001ac4:	ff010113          	addi	sp,sp,-16
    80001ac8:	00113423          	sd	ra,8(sp)
    80001acc:	00813023          	sd	s0,0(sp)
    80001ad0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001ad4:	fffff097          	auipc	ra,0xfffff
    80001ad8:	690080e7          	jalr	1680(ra) # 80001164 <_Z9mem_allocm>
}
    80001adc:	00813083          	ld	ra,8(sp)
    80001ae0:	00013403          	ld	s0,0(sp)
    80001ae4:	01010113          	addi	sp,sp,16
    80001ae8:	00008067          	ret

0000000080001aec <_ZdaPv>:
void operator delete[](void* ptr) {
    80001aec:	ff010113          	addi	sp,sp,-16
    80001af0:	00113423          	sd	ra,8(sp)
    80001af4:	00813023          	sd	s0,0(sp)
    80001af8:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001afc:	fffff097          	auipc	ra,0xfffff
    80001b00:	6ac080e7          	jalr	1708(ra) # 800011a8 <_Z8mem_freePv>
}
    80001b04:	00813083          	ld	ra,8(sp)
    80001b08:	00013403          	ld	s0,0(sp)
    80001b0c:	01010113          	addi	sp,sp,16
    80001b10:	00008067          	ret

0000000080001b14 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg)
    80001b14:	ff010113          	addi	sp,sp,-16
    80001b18:	00813423          	sd	s0,8(sp)
    80001b1c:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(body), arg(arg) {}
    80001b20:	00008797          	auipc	a5,0x8
    80001b24:	4e878793          	addi	a5,a5,1256 # 8000a008 <_ZTV6Thread+0x10>
    80001b28:	00f53023          	sd	a5,0(a0)
    80001b2c:	00053423          	sd	zero,8(a0)
    80001b30:	00b53823          	sd	a1,16(a0)
    80001b34:	00c53c23          	sd	a2,24(a0)
    80001b38:	00813403          	ld	s0,8(sp)
    80001b3c:	01010113          	addi	sp,sp,16
    80001b40:	00008067          	ret

0000000080001b44 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80001b44:	ff010113          	addi	sp,sp,-16
    80001b48:	00813423          	sd	s0,8(sp)
    80001b4c:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80001b50:	00008797          	auipc	a5,0x8
    80001b54:	4b878793          	addi	a5,a5,1208 # 8000a008 <_ZTV6Thread+0x10>
    80001b58:	00f53023          	sd	a5,0(a0)
    80001b5c:	00053423          	sd	zero,8(a0)
    80001b60:	00053823          	sd	zero,16(a0)
    80001b64:	00053c23          	sd	zero,24(a0)
    80001b68:	00813403          	ld	s0,8(sp)
    80001b6c:	01010113          	addi	sp,sp,16
    80001b70:	00008067          	ret

0000000080001b74 <_ZN6Thread5startEv>:
int Thread::start() {
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00113423          	sd	ra,8(sp)
    80001b7c:	00813023          	sd	s0,0(sp)
    80001b80:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    80001b84:	01053583          	ld	a1,16(a0)
    80001b88:	02058263          	beqz	a1,80001bac <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80001b8c:	01853603          	ld	a2,24(a0)
    80001b90:	00850513          	addi	a0,a0,8
    80001b94:	fffff097          	auipc	ra,0xfffff
    80001b98:	688080e7          	jalr	1672(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
}
    80001b9c:	00813083          	ld	ra,8(sp)
    80001ba0:	00013403          	ld	s0,0(sp)
    80001ba4:	01010113          	addi	sp,sp,16
    80001ba8:	00008067          	ret
    return thread_create(&myHandle, wrapper, this);
    80001bac:	00050613          	mv	a2,a0
    80001bb0:	00000597          	auipc	a1,0x0
    80001bb4:	dd858593          	addi	a1,a1,-552 # 80001988 <_ZN6Thread7wrapperEPv>
    80001bb8:	00850513          	addi	a0,a0,8
    80001bbc:	fffff097          	auipc	ra,0xfffff
    80001bc0:	660080e7          	jalr	1632(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    80001bc4:	fd9ff06f          	j	80001b9c <_ZN6Thread5startEv+0x28>

0000000080001bc8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001bc8:	ff010113          	addi	sp,sp,-16
    80001bcc:	00113423          	sd	ra,8(sp)
    80001bd0:	00813023          	sd	s0,0(sp)
    80001bd4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001bd8:	fffff097          	auipc	ra,0xfffff
    80001bdc:	718080e7          	jalr	1816(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80001be0:	00813083          	ld	ra,8(sp)
    80001be4:	00013403          	ld	s0,0(sp)
    80001be8:	01010113          	addi	sp,sp,16
    80001bec:	00008067          	ret

0000000080001bf0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80001bf0:	ff010113          	addi	sp,sp,-16
    80001bf4:	00113423          	sd	ra,8(sp)
    80001bf8:	00813023          	sd	s0,0(sp)
    80001bfc:	01010413          	addi	s0,sp,16
    80001c00:	00008797          	auipc	a5,0x8
    80001c04:	43078793          	addi	a5,a5,1072 # 8000a030 <_ZTV9Semaphore+0x10>
    80001c08:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001c0c:	00850513          	addi	a0,a0,8
    80001c10:	fffff097          	auipc	ra,0xfffff
    80001c14:	700080e7          	jalr	1792(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
}
    80001c18:	00813083          	ld	ra,8(sp)
    80001c1c:	00013403          	ld	s0,0(sp)
    80001c20:	01010113          	addi	sp,sp,16
    80001c24:	00008067          	ret

0000000080001c28 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001c28:	ff010113          	addi	sp,sp,-16
    80001c2c:	00113423          	sd	ra,8(sp)
    80001c30:	00813023          	sd	s0,0(sp)
    80001c34:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001c38:	00853503          	ld	a0,8(a0)
    80001c3c:	fffff097          	auipc	ra,0xfffff
    80001c40:	738080e7          	jalr	1848(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
}
    80001c44:	00813083          	ld	ra,8(sp)
    80001c48:	00013403          	ld	s0,0(sp)
    80001c4c:	01010113          	addi	sp,sp,16
    80001c50:	00008067          	ret

0000000080001c54 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001c54:	ff010113          	addi	sp,sp,-16
    80001c58:	00113423          	sd	ra,8(sp)
    80001c5c:	00813023          	sd	s0,0(sp)
    80001c60:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001c64:	00853503          	ld	a0,8(a0)
    80001c68:	fffff097          	auipc	ra,0xfffff
    80001c6c:	738080e7          	jalr	1848(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    80001c70:	00813083          	ld	ra,8(sp)
    80001c74:	00013403          	ld	s0,0(sp)
    80001c78:	01010113          	addi	sp,sp,16
    80001c7c:	00008067          	ret

0000000080001c80 <_ZN7Console4getcEv>:

char Console::getc() {
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00113423          	sd	ra,8(sp)
    80001c88:	00813023          	sd	s0,0(sp)
    80001c8c:	01010413          	addi	s0,sp,16
    return ::getc();
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	73c080e7          	jalr	1852(ra) # 800013cc <_Z4getcv>
}
    80001c98:	00813083          	ld	ra,8(sp)
    80001c9c:	00013403          	ld	s0,0(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00113423          	sd	ra,8(sp)
    80001cb0:	00813023          	sd	s0,0(sp)
    80001cb4:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001cb8:	fffff097          	auipc	ra,0xfffff
    80001cbc:	73c080e7          	jalr	1852(ra) # 800013f4 <_Z4putcc>
    80001cc0:	00813083          	ld	ra,8(sp)
    80001cc4:	00013403          	ld	s0,0(sp)
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret

0000000080001cd0 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001cd0:	ff010113          	addi	sp,sp,-16
    80001cd4:	00813423          	sd	s0,8(sp)
    80001cd8:	01010413          	addi	s0,sp,16
    80001cdc:	00813403          	ld	s0,8(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN5Riscv10popSppSpieEv>:

constexpr uint64 GETC = 0x41;
constexpr uint64 PUTC = 0x42;

void Riscv::popSppSpie()
{
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00813423          	sd	s0,8(sp)
    80001cf0:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    asm volatile("csrc sstatus, %0" :: "r"(mask));
    80001cf4:	10000793          	li	a5,256
    80001cf8:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    asm volatile("csrw sepc, ra");
    80001cfc:	14109073          	csrw	sepc,ra
    asm volatile("sret");
    80001d00:	10200073          	sret
}
    80001d04:	00813403          	ld	s0,8(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret

0000000080001d10 <_ZN5Riscv16setupTrapHandlerEv>:


void Riscv::setupTrapHandler() {
    80001d10:	ff010113          	addi	sp,sp,-16
    80001d14:	00813423          	sd	s0,8(sp)
    80001d18:	01010413          	addi	s0,sp,16
    uint64 addr = (uint64)&trap_handler;
    80001d1c:	00008797          	auipc	a5,0x8
    80001d20:	46c7b783          	ld	a5,1132(a5) # 8000a188 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(stvec));
    80001d24:	10579073          	csrw	stvec,a5
    w_stvec(addr);
}
    80001d28:	00813403          	ld	s0,8(sp)
    80001d2c:	01010113          	addi	sp,sp,16
    80001d30:	00008067          	ret

0000000080001d34 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001d34:	fb010113          	addi	sp,sp,-80
    80001d38:	04113423          	sd	ra,72(sp)
    80001d3c:	04813023          	sd	s0,64(sp)
    80001d40:	02913c23          	sd	s1,56(sp)
    80001d44:	03213823          	sd	s2,48(sp)
    80001d48:	03313423          	sd	s3,40(sp)
    80001d4c:	05010413          	addi	s0,sp,80
    asm volatile("csrr %0, scause" : "=r"(scause));
    80001d50:	142027f3          	csrr	a5,scause
    80001d54:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001d58:	fc043483          	ld	s1,-64(s0)
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    80001d5c:	141027f3          	csrr	a5,sepc
    80001d60:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001d64:	fb843903          	ld	s2,-72(s0)
    uint64 scause = r_scause();
    uint64 sepc = r_sepc();

    uint64 interrupt = scause >> 63;
    80001d68:	03f4d713          	srli	a4,s1,0x3f
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    80001d6c:	fff00793          	li	a5,-1
    80001d70:	0017d793          	srli	a5,a5,0x1
    80001d74:	00f4f7b3          	and	a5,s1,a5

    if (interrupt == 0 && (cause == 8 || cause == 9)) {
    80001d78:	0004c863          	bltz	s1,80001d88 <_ZN5Riscv11trapHandlerEv+0x54>
    80001d7c:	ff878693          	addi	a3,a5,-8
    80001d80:	00100613          	li	a2,1
    80001d84:	06d67263          	bgeu	a2,a3,80001de8 <_ZN5Riscv11trapHandlerEv+0xb4>

        sepc += 4;
        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else if (interrupt == 1 && cause == 1) {
    80001d88:	2c071e63          	bnez	a4,80002064 <_ZN5Riscv11trapHandlerEv+0x330>
        mc_sip(SIP_SSIP);
    }
    else if (interrupt == 1 && cause == 9) {
    80001d8c:	00070663          	beqz	a4,80001d98 <_ZN5Riscv11trapHandlerEv+0x64>
    80001d90:	00900713          	li	a4,9
    80001d94:	2ee78263          	beq	a5,a4,80002078 <_ZN5Riscv11trapHandlerEv+0x344>
        console_handler();
    }
    else {
        printString("ERROR! SCAUSE:");
    80001d98:	00006517          	auipc	a0,0x6
    80001d9c:	28850513          	addi	a0,a0,648 # 80008020 <CONSOLE_STATUS+0x10>
    80001da0:	00002097          	auipc	ra,0x2
    80001da4:	424080e7          	jalr	1060(ra) # 800041c4 <_Z11printStringPKc>
        printInt(scause);
    80001da8:	00000613          	li	a2,0
    80001dac:	00a00593          	li	a1,10
    80001db0:	0004851b          	sext.w	a0,s1
    80001db4:	00002097          	auipc	ra,0x2
    80001db8:	5c0080e7          	jalr	1472(ra) # 80004374 <_Z8printIntiii>
        printString("\n");
    80001dbc:	00006517          	auipc	a0,0x6
    80001dc0:	6fc50513          	addi	a0,a0,1788 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80001dc4:	00002097          	auipc	ra,0x2
    80001dc8:	400080e7          	jalr	1024(ra) # 800041c4 <_Z11printStringPKc>
    }
    80001dcc:	04813083          	ld	ra,72(sp)
    80001dd0:	04013403          	ld	s0,64(sp)
    80001dd4:	03813483          	ld	s1,56(sp)
    80001dd8:	03013903          	ld	s2,48(sp)
    80001ddc:	02813983          	ld	s3,40(sp)
    80001de0:	05010113          	addi	sp,sp,80
    80001de4:	00008067          	ret
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    asm volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001de8:	100027f3          	csrr	a5,sstatus
    80001dec:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001df0:	fc843483          	ld	s1,-56(s0)
        asm volatile("mv %0, a0" : "=r"(code));
    80001df4:	00050793          	mv	a5,a0
        switch (code) {
    80001df8:	04200713          	li	a4,66
    80001dfc:	04f76463          	bltu	a4,a5,80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
    80001e00:	00279793          	slli	a5,a5,0x2
    80001e04:	00006717          	auipc	a4,0x6
    80001e08:	22c70713          	addi	a4,a4,556 # 80008030 <CONSOLE_STATUS+0x20>
    80001e0c:	00e787b3          	add	a5,a5,a4
    80001e10:	0007a783          	lw	a5,0(a5)
    80001e14:	00e787b3          	add	a5,a5,a4
    80001e18:	00078067          	jr	a5
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001e1c:	00008997          	auipc	s3,0x8
    80001e20:	3849b983          	ld	s3,900(s3) # 8000a1a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e24:	0009b783          	ld	a5,0(s3)
    80001e28:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(size));
    80001e2c:	00058513          	mv	a0,a1
                void* ptr = MemoryAllocator::mem_alloc(size);
    80001e30:	00000097          	auipc	ra,0x0
    80001e34:	2a4080e7          	jalr	676(ra) # 800020d4 <_ZN15MemoryAllocator9mem_allocEm>
                asm volatile("mv a0, %0" :: "r"(ptr));
    80001e38:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e3c:	0009b783          	ld	a5,0(s3)
    80001e40:	04a7b823          	sd	a0,80(a5)
        sepc += 4;
    80001e44:	00490913          	addi	s2,s2,4
    asm volatile("csrw sepc, %0" :: "r"(sepc));
    80001e48:	14191073          	csrw	sepc,s2
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    asm volatile("csrw sstatus, %0" :: "r"(sstatus));
    80001e4c:	10049073          	csrw	sstatus,s1
}
    80001e50:	f7dff06f          	j	80001dcc <_ZN5Riscv11trapHandlerEv+0x98>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001e54:	00008997          	auipc	s3,0x8
    80001e58:	34c9b983          	ld	s3,844(s3) # 8000a1a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e5c:	0009b783          	ld	a5,0(s3)
    80001e60:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(addr));
    80001e64:	00058513          	mv	a0,a1
                int status = MemoryAllocator::mem_free(addr);
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	36c080e7          	jalr	876(ra) # 800021d4 <_ZN15MemoryAllocator8mem_freeEPv>
                asm volatile("mv a0, %0" :: "r"(status));
    80001e70:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e74:	0009b783          	ld	a5,0(s3)
    80001e78:	04a7b823          	sd	a0,80(a5)
                break;
    80001e7c:	fc9ff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
    80001e80:	00000097          	auipc	ra,0x0
    80001e84:	3f8080e7          	jalr	1016(ra) # 80002278 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                asm volatile("mv a0, %0" :: "r"(freeSpace));
    80001e88:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001e8c:	00008797          	auipc	a5,0x8
    80001e90:	3147b783          	ld	a5,788(a5) # 8000a1a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e94:	0007b783          	ld	a5,0(a5)
    80001e98:	04a7b823          	sd	a0,80(a5)
                break;
    80001e9c:	fa9ff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
    80001ea0:	00000097          	auipc	ra,0x0
    80001ea4:	420080e7          	jalr	1056(ra) # 800022c0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                asm volatile("mv a0, %0" :: "r"(largest));
    80001ea8:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001eac:	00008797          	auipc	a5,0x8
    80001eb0:	2f47b783          	ld	a5,756(a5) # 8000a1a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001eb4:	0007b783          	ld	a5,0(a5)
    80001eb8:	04a7b823          	sd	a0,80(a5)
                break;
    80001ebc:	f89ff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001ec0:	00008797          	auipc	a5,0x8
    80001ec4:	2e07b783          	ld	a5,736(a5) # 8000a1a0 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001ef0:	680080e7          	jalr	1664(ra) # 8000156c <_ZN7KThread12createThreadEPFvPvES0_S0_>
    80001ef4:	00a9b023          	sd	a0,0(s3)
                if (*handle != nullptr) {
    80001ef8:	02050263          	beqz	a0,80001f1c <_ZN5Riscv11trapHandlerEv+0x1e8>
                    (*handle)->start();
    80001efc:	fffff097          	auipc	ra,0xfffff
    80001f00:	758080e7          	jalr	1880(ra) # 80001654 <_ZN7KThread5startEv>
                    asm volatile("li a0, 0");
    80001f04:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001f08:	00008797          	auipc	a5,0x8
    80001f0c:	2987b783          	ld	a5,664(a5) # 8000a1a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f10:	0007b783          	ld	a5,0(a5)
    80001f14:	04a7b823          	sd	a0,80(a5)
                break;
    80001f18:	f2dff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                else asm volatile("li a0, -1");
    80001f1c:	fff00513          	li	a0,-1
    80001f20:	fe9ff06f          	j	80001f08 <_ZN5Riscv11trapHandlerEv+0x1d4>
                if (KThread::running) {
    80001f24:	00008797          	auipc	a5,0x8
    80001f28:	2747b783          	ld	a5,628(a5) # 8000a198 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f2c:	0007b503          	ld	a0,0(a5)
    80001f30:	00050663          	beqz	a0,80001f3c <_ZN5Riscv11trapHandlerEv+0x208>
                    KThread::running->exit();
    80001f34:	fffff097          	auipc	ra,0xfffff
    80001f38:	75c080e7          	jalr	1884(ra) # 80001690 <_ZN7KThread4exitEv>
                KThread::dispatch();
    80001f3c:	fffff097          	auipc	ra,0xfffff
    80001f40:	774080e7          	jalr	1908(ra) # 800016b0 <_ZN7KThread8dispatchEv>
                asm volatile("li a0, 0");
    80001f44:	00000513          	li	a0,0
                break;
    80001f48:	efdff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                KThread::dispatch();
    80001f4c:	fffff097          	auipc	ra,0xfffff
    80001f50:	764080e7          	jalr	1892(ra) # 800016b0 <_ZN7KThread8dispatchEv>
                break;
    80001f54:	ef1ff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f58:	00008797          	auipc	a5,0x8
    80001f5c:	2487b783          	ld	a5,584(a5) # 8000a1a0 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001f80:	394080e7          	jalr	916(ra) # 80002310 <_ZN10KSemaphore15createSemaphoreEm>
    80001f84:	00a9b023          	sd	a0,0(s3)
                if (*handle != nullptr) asm volatile("li a0, 0");
    80001f88:	00050e63          	beqz	a0,80001fa4 <_ZN5Riscv11trapHandlerEv+0x270>
    80001f8c:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001f90:	00008797          	auipc	a5,0x8
    80001f94:	2107b783          	ld	a5,528(a5) # 8000a1a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f98:	0007b783          	ld	a5,0(a5)
    80001f9c:	04a7b823          	sd	a0,80(a5)
                break;
    80001fa0:	ea5ff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                else asm volatile("li a0, -1");
    80001fa4:	fff00513          	li	a0,-1
    80001fa8:	fe9ff06f          	j	80001f90 <_ZN5Riscv11trapHandlerEv+0x25c>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001fac:	00008797          	auipc	a5,0x8
    80001fb0:	1f47b783          	ld	a5,500(a5) # 8000a1a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fb4:	0007b783          	ld	a5,0(a5)
    80001fb8:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001fbc:	00058513          	mv	a0,a1
                if (handle) {
    80001fc0:	00050a63          	beqz	a0,80001fd4 <_ZN5Riscv11trapHandlerEv+0x2a0>
                    handle->close();
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	4b4080e7          	jalr	1204(ra) # 80002478 <_ZN10KSemaphore5closeEv>
                    asm volatile("li a0, 0");
    80001fcc:	00000513          	li	a0,0
    80001fd0:	e75ff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                else asm volatile("li a0, -1");
    80001fd4:	fff00513          	li	a0,-1
    80001fd8:	e6dff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001fdc:	00008797          	auipc	a5,0x8
    80001fe0:	1c47b783          	ld	a5,452(a5) # 8000a1a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fe4:	0007b783          	ld	a5,0(a5)
    80001fe8:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001fec:	00058513          	mv	a0,a1
                if (handle) {
    80001ff0:	00050a63          	beqz	a0,80002004 <_ZN5Riscv11trapHandlerEv+0x2d0>
                    handle->wait();
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	3d4080e7          	jalr	980(ra) # 800023c8 <_ZN10KSemaphore4waitEv>
                    asm volatile("li a0, 0");
    80001ffc:	00000513          	li	a0,0
    80002000:	e45ff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                else asm volatile("li a0, -1");
    80002004:	fff00513          	li	a0,-1
    80002008:	e3dff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    8000200c:	00008797          	auipc	a5,0x8
    80002010:	1947b783          	ld	a5,404(a5) # 8000a1a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002014:	0007b783          	ld	a5,0(a5)
    80002018:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    8000201c:	00058513          	mv	a0,a1
                if (handle) {
    80002020:	00050a63          	beqz	a0,80002034 <_ZN5Riscv11trapHandlerEv+0x300>
                    handle->signal();
    80002024:	00000097          	auipc	ra,0x0
    80002028:	400080e7          	jalr	1024(ra) # 80002424 <_ZN10KSemaphore6signalEv>
                    asm volatile("li a0, 0");
    8000202c:	00000513          	li	a0,0
    80002030:	e15ff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                else asm volatile("li a0, -1");
    80002034:	fff00513          	li	a0,-1
    80002038:	e0dff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                int c = __getc();
    8000203c:	00005097          	auipc	ra,0x5
    80002040:	39c080e7          	jalr	924(ra) # 800073d8 <__getc>
                asm volatile("mv t0, %0" : : "r"(c));
    80002044:	00050293          	mv	t0,a0
                asm volatile("sw t0, 80(x8)");
    80002048:	04542823          	sw	t0,80(s0)
                break;
    8000204c:	df9ff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
                asm volatile("mv %0, a1" : "=r" (c));
    80002050:	00058513          	mv	a0,a1
                __putc(c);
    80002054:	0ff57513          	andi	a0,a0,255
    80002058:	00005097          	auipc	ra,0x5
    8000205c:	344080e7          	jalr	836(ra) # 8000739c <__putc>
                break;
    80002060:	de5ff06f          	j	80001e44 <_ZN5Riscv11trapHandlerEv+0x110>
    else if (interrupt == 1 && cause == 1) {
    80002064:	00100693          	li	a3,1
    80002068:	d2d792e3          	bne	a5,a3,80001d8c <_ZN5Riscv11trapHandlerEv+0x58>
    asm volatile("csrc sip, %0" :: "r"(mask));
    8000206c:	00200793          	li	a5,2
    80002070:	1447b073          	csrc	sip,a5
}
    80002074:	d59ff06f          	j	80001dcc <_ZN5Riscv11trapHandlerEv+0x98>
        console_handler();
    80002078:	00005097          	auipc	ra,0x5
    8000207c:	398080e7          	jalr	920(ra) # 80007410 <console_handler>
    80002080:	d4dff06f          	j	80001dcc <_ZN5Riscv11trapHandlerEv+0x98>

0000000080002084 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00813423          	sd	s0,8(sp)
    8000208c:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80002090:	00008697          	auipc	a3,0x8
    80002094:	0e86b683          	ld	a3,232(a3) # 8000a178 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002098:	0006b783          	ld	a5,0(a3)
    8000209c:	00008717          	auipc	a4,0x8
    800020a0:	17c70713          	addi	a4,a4,380 # 8000a218 <_ZN15MemoryAllocator12freeListHeadE>
    800020a4:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    800020a8:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    800020ac:	00008797          	auipc	a5,0x8
    800020b0:	0e47b783          	ld	a5,228(a5) # 8000a190 <_GLOBAL_OFFSET_TABLE_+0x20>
    800020b4:	0007b783          	ld	a5,0(a5)
    800020b8:	0006b683          	ld	a3,0(a3)
    800020bc:	00073703          	ld	a4,0(a4)
    800020c0:	40d787b3          	sub	a5,a5,a3
    800020c4:	00f73423          	sd	a5,8(a4)
}
    800020c8:	00813403          	ld	s0,8(sp)
    800020cc:	01010113          	addi	sp,sp,16
    800020d0:	00008067          	ret

00000000800020d4 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00813423          	sd	s0,8(sp)
    800020dc:	01010413          	addi	s0,sp,16
    800020e0:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    800020e4:	00008517          	auipc	a0,0x8
    800020e8:	13453503          	ld	a0,308(a0) # 8000a218 <_ZN15MemoryAllocator12freeListHeadE>
    800020ec:	06050063          	beqz	a0,8000214c <_ZN15MemoryAllocator9mem_allocEm+0x78>
    800020f0:	08078a63          	beqz	a5,80002184 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    800020f4:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    800020f8:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    800020fc:	00000613          	li	a2,0
    80002100:	00c0006f          	j	8000210c <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    80002104:	00050613          	mv	a2,a0
        curr = curr->next;
    80002108:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    8000210c:	00050663          	beqz	a0,80002118 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    80002110:	00853783          	ld	a5,8(a0)
    80002114:	fee7e8e3          	bltu	a5,a4,80002104 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    80002118:	02050a63          	beqz	a0,8000214c <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    8000211c:	00853583          	ld	a1,8(a0)
    80002120:	02068793          	addi	a5,a3,32
    80002124:	04f5e063          	bltu	a1,a5,80002164 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    80002128:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    8000212c:	40e585b3          	sub	a1,a1,a4
    80002130:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    80002134:	00053683          	ld	a3,0(a0)
    80002138:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    8000213c:	00060e63          	beqz	a2,80002158 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80002140:	00f63023          	sd	a5,0(a2)
        else freeListHead = newBlock;

        curr->size = totalSize;
    80002144:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
    80002148:	01050513          	addi	a0,a0,16
}
    8000214c:	00813403          	ld	s0,8(sp)
    80002150:	01010113          	addi	sp,sp,16
    80002154:	00008067          	ret
        else freeListHead = newBlock;
    80002158:	00008697          	auipc	a3,0x8
    8000215c:	0cf6b023          	sd	a5,192(a3) # 8000a218 <_ZN15MemoryAllocator12freeListHeadE>
    80002160:	fe5ff06f          	j	80002144 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    80002164:	00060863          	beqz	a2,80002174 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80002168:	00053783          	ld	a5,0(a0)
    8000216c:	00f63023          	sd	a5,0(a2)
    80002170:	fd9ff06f          	j	80002148 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    80002174:	00053783          	ld	a5,0(a0)
    80002178:	00008717          	auipc	a4,0x8
    8000217c:	0af73023          	sd	a5,160(a4) # 8000a218 <_ZN15MemoryAllocator12freeListHeadE>
    80002180:	fc9ff06f          	j	80002148 <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    80002184:	00000513          	li	a0,0
    80002188:	fc5ff06f          	j	8000214c <_ZN15MemoryAllocator9mem_allocEm+0x78>

000000008000218c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    8000218c:	ff010113          	addi	sp,sp,-16
    80002190:	00813423          	sd	s0,8(sp)
    80002194:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80002198:	00050c63          	beqz	a0,800021b0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    8000219c:	00053783          	ld	a5,0(a0)
    800021a0:	00078863          	beqz	a5,800021b0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    800021a4:	00853703          	ld	a4,8(a0)
    800021a8:	00e506b3          	add	a3,a0,a4
    800021ac:	00d78863          	beq	a5,a3,800021bc <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    800021b0:	00813403          	ld	s0,8(sp)
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00008067          	ret
        curr->size += curr->next->size;
    800021bc:	0087b683          	ld	a3,8(a5)
    800021c0:	00d70733          	add	a4,a4,a3
    800021c4:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    800021c8:	0007b783          	ld	a5,0(a5)
    800021cc:	00f53023          	sd	a5,0(a0)
    800021d0:	fe1ff06f          	j	800021b0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

00000000800021d4 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    800021d4:	08050e63          	beqz	a0,80002270 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    800021d8:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    800021dc:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    800021e0:	00008797          	auipc	a5,0x8
    800021e4:	0387b783          	ld	a5,56(a5) # 8000a218 <_ZN15MemoryAllocator12freeListHeadE>
    800021e8:	02078863          	beqz	a5,80002218 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    800021ec:	fe010113          	addi	sp,sp,-32
    800021f0:	00113c23          	sd	ra,24(sp)
    800021f4:	00813823          	sd	s0,16(sp)
    800021f8:	00913423          	sd	s1,8(sp)
    800021fc:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    80002200:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    80002204:	02078463          	beqz	a5,8000222c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80002208:	02a7f263          	bgeu	a5,a0,8000222c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    8000220c:	00078493          	mv	s1,a5
        curr = curr->next;
    80002210:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    80002214:	ff1ff06f          	j	80002204 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    80002218:	00008797          	auipc	a5,0x8
    8000221c:	00a7b023          	sd	a0,0(a5) # 8000a218 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    80002220:	fe073823          	sd	zero,-16(a4)
        return 0;
    80002224:	00000513          	li	a0,0
    80002228:	00008067          	ret
    blockToFree->next = curr;
    8000222c:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    80002230:	02048a63          	beqz	s1,80002264 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80002234:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	f54080e7          	jalr	-172(ra) # 8000218c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    80002240:	00048513          	mv	a0,s1
    80002244:	00000097          	auipc	ra,0x0
    80002248:	f48080e7          	jalr	-184(ra) # 8000218c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    8000224c:	00000513          	li	a0,0
}
    80002250:	01813083          	ld	ra,24(sp)
    80002254:	01013403          	ld	s0,16(sp)
    80002258:	00813483          	ld	s1,8(sp)
    8000225c:	02010113          	addi	sp,sp,32
    80002260:	00008067          	ret
    else freeListHead = blockToFree;
    80002264:	00008797          	auipc	a5,0x8
    80002268:	faa7ba23          	sd	a0,-76(a5) # 8000a218 <_ZN15MemoryAllocator12freeListHeadE>
    8000226c:	fcdff06f          	j	80002238 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    80002270:	fff00513          	li	a0,-1
}
    80002274:	00008067          	ret

0000000080002278 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80002278:	ff010113          	addi	sp,sp,-16
    8000227c:	00813423          	sd	s0,8(sp)
    80002280:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002284:	00008797          	auipc	a5,0x8
    80002288:	f947b783          	ld	a5,-108(a5) # 8000a218 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    8000228c:	00000513          	li	a0,0
    80002290:	0080006f          	j	80002298 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002294:	0007b783          	ld	a5,0(a5)
    80002298:	00078e63          	beqz	a5,800022b4 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    8000229c:	0087b703          	ld	a4,8(a5)
    800022a0:	01000693          	li	a3,16
    800022a4:	fee6f8e3          	bgeu	a3,a4,80002294 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    800022a8:	00a70533          	add	a0,a4,a0
    800022ac:	ff050513          	addi	a0,a0,-16
    800022b0:	fe5ff06f          	j	80002294 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    800022b4:	00813403          	ld	s0,8(sp)
    800022b8:	01010113          	addi	sp,sp,16
    800022bc:	00008067          	ret

00000000800022c0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    800022c0:	ff010113          	addi	sp,sp,-16
    800022c4:	00813423          	sd	s0,8(sp)
    800022c8:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    800022cc:	00008717          	auipc	a4,0x8
    800022d0:	f4c73703          	ld	a4,-180(a4) # 8000a218 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    800022d4:	00000513          	li	a0,0
    800022d8:	0080006f          	j	800022e0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    800022dc:	00073703          	ld	a4,0(a4)
    800022e0:	02070263          	beqz	a4,80002304 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    800022e4:	00873783          	ld	a5,8(a4)
    800022e8:	01000693          	li	a3,16
    800022ec:	00d7f463          	bgeu	a5,a3,800022f4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    800022f0:	01000793          	li	a5,16
    800022f4:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    800022f8:	fef572e3          	bgeu	a0,a5,800022dc <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    800022fc:	00078513          	mv	a0,a5
    80002300:	fddff06f          	j	800022dc <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    80002304:	00813403          	ld	s0,8(sp)
    80002308:	01010113          	addi	sp,sp,16
    8000230c:	00008067          	ret

0000000080002310 <_ZN10KSemaphore15createSemaphoreEm>:

#include "../h/KSemaphore.hpp"
#include "../h/KThread.hpp"
#include "../h/Scheduler.hpp"

KSemaphore* KSemaphore::createSemaphore(uint64 init) {
    80002310:	fe010113          	addi	sp,sp,-32
    80002314:	00113c23          	sd	ra,24(sp)
    80002318:	00813823          	sd	s0,16(sp)
    8000231c:	00913423          	sd	s1,8(sp)
    80002320:	02010413          	addi	s0,sp,32
    80002324:	00050493          	mv	s1,a0

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    80002328:	00100513          	li	a0,1
    8000232c:	00000097          	auipc	ra,0x0
    80002330:	da8080e7          	jalr	-600(ra) # 800020d4 <_ZN15MemoryAllocator9mem_allocEm>
    void operator delete[](void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    explicit KSemaphore(uint64 init) : val(init) {}
    80002334:	00952023          	sw	s1,0(a0)
    80002338:	00053423          	sd	zero,8(a0)
    8000233c:	00053823          	sd	zero,16(a0)
    return new KSemaphore(init);
}
    80002340:	01813083          	ld	ra,24(sp)
    80002344:	01013403          	ld	s0,16(sp)
    80002348:	00813483          	ld	s1,8(sp)
    8000234c:	02010113          	addi	sp,sp,32
    80002350:	00008067          	ret

0000000080002354 <_ZN10KSemaphore3getEv>:

KThread* KSemaphore::get() {
    80002354:	ff010113          	addi	sp,sp,-16
    80002358:	00813423          	sd	s0,8(sp)
    8000235c:	01010413          	addi	s0,sp,16
    80002360:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002364:	00853503          	ld	a0,8(a0)
    80002368:	00050a63          	beqz	a0,8000237c <_ZN10KSemaphore3getEv+0x28>

    KThread* thread = head;
    head = head->semaphoreNext;
    8000236c:	04053703          	ld	a4,64(a0)
    80002370:	00e7b423          	sd	a4,8(a5)

    if (!head) tail = nullptr;
    80002374:	00070a63          	beqz	a4,80002388 <_ZN10KSemaphore3getEv+0x34>
    thread->semaphoreNext = nullptr;
    80002378:	04053023          	sd	zero,64(a0)

    return thread;
}
    8000237c:	00813403          	ld	s0,8(sp)
    80002380:	01010113          	addi	sp,sp,16
    80002384:	00008067          	ret
    if (!head) tail = nullptr;
    80002388:	0007b823          	sd	zero,16(a5)
    8000238c:	fedff06f          	j	80002378 <_ZN10KSemaphore3getEv+0x24>

0000000080002390 <_ZN10KSemaphore3putEP7KThread>:


void KSemaphore::put(KThread *thread) {
    80002390:	ff010113          	addi	sp,sp,-16
    80002394:	00813423          	sd	s0,8(sp)
    80002398:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    8000239c:	00853783          	ld	a5,8(a0)
    800023a0:	02078063          	beqz	a5,800023c0 <_ZN10KSemaphore3putEP7KThread+0x30>
    else tail->semaphoreNext = thread;
    800023a4:	01053783          	ld	a5,16(a0)
    800023a8:	04b7b023          	sd	a1,64(a5)
    tail = thread;
    800023ac:	00b53823          	sd	a1,16(a0)
    thread->semaphoreNext = nullptr;
    800023b0:	0405b023          	sd	zero,64(a1)
}
    800023b4:	00813403          	ld	s0,8(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret
    if (!head) head = thread;
    800023c0:	00b53423          	sd	a1,8(a0)
    800023c4:	fe9ff06f          	j	800023ac <_ZN10KSemaphore3putEP7KThread+0x1c>

00000000800023c8 <_ZN10KSemaphore4waitEv>:

void KSemaphore::wait() {
    val--;
    800023c8:	00052783          	lw	a5,0(a0)
    800023cc:	fff7879b          	addiw	a5,a5,-1
    800023d0:	00f52023          	sw	a5,0(a0)

    if (val < 0) {
    800023d4:	02079713          	slli	a4,a5,0x20
    800023d8:	00074463          	bltz	a4,800023e0 <_ZN10KSemaphore4waitEv+0x18>
    800023dc:	00008067          	ret
void KSemaphore::wait() {
    800023e0:	ff010113          	addi	sp,sp,-16
    800023e4:	00113423          	sd	ra,8(sp)
    800023e8:	00813023          	sd	s0,0(sp)
    800023ec:	01010413          	addi	s0,sp,16
        KThread::running->setState(BLOCKED);
    800023f0:	00008797          	auipc	a5,0x8
    800023f4:	da87b783          	ld	a5,-600(a5) # 8000a198 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023f8:	0007b583          	ld	a1,0(a5)
    800023fc:	00300793          	li	a5,3
    80002400:	02f5a823          	sw	a5,48(a1)
        put(KThread::running);
    80002404:	00000097          	auipc	ra,0x0
    80002408:	f8c080e7          	jalr	-116(ra) # 80002390 <_ZN10KSemaphore3putEP7KThread>
        KThread::dispatch();
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	2a4080e7          	jalr	676(ra) # 800016b0 <_ZN7KThread8dispatchEv>
    }
}
    80002414:	00813083          	ld	ra,8(sp)
    80002418:	00013403          	ld	s0,0(sp)
    8000241c:	01010113          	addi	sp,sp,16
    80002420:	00008067          	ret

0000000080002424 <_ZN10KSemaphore6signalEv>:

void KSemaphore::signal() {
    val++;
    80002424:	00052783          	lw	a5,0(a0)
    80002428:	0017879b          	addiw	a5,a5,1
    8000242c:	0007871b          	sext.w	a4,a5
    80002430:	00f52023          	sw	a5,0(a0)

    if (val <= 0) {
    80002434:	00e05463          	blez	a4,8000243c <_ZN10KSemaphore6signalEv+0x18>
    80002438:	00008067          	ret
void KSemaphore::signal() {
    8000243c:	ff010113          	addi	sp,sp,-16
    80002440:	00113423          	sd	ra,8(sp)
    80002444:	00813023          	sd	s0,0(sp)
    80002448:	01010413          	addi	s0,sp,16
        KThread* thread = get();
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	f08080e7          	jalr	-248(ra) # 80002354 <_ZN10KSemaphore3getEv>

        if (thread) {
    80002454:	00050a63          	beqz	a0,80002468 <_ZN10KSemaphore6signalEv+0x44>
    80002458:	00100793          	li	a5,1
    8000245c:	02f52823          	sw	a5,48(a0)
            thread->setState(READY);
            Scheduler::put(thread);
    80002460:	fffff097          	auipc	ra,0xfffff
    80002464:	3c8080e7          	jalr	968(ra) # 80001828 <_ZN9Scheduler3putEP7KThread>
        }
    }
}
    80002468:	00813083          	ld	ra,8(sp)
    8000246c:	00013403          	ld	s0,0(sp)
    80002470:	01010113          	addi	sp,sp,16
    80002474:	00008067          	ret

0000000080002478 <_ZN10KSemaphore5closeEv>:

void KSemaphore::close() {
    80002478:	fe010113          	addi	sp,sp,-32
    8000247c:	00113c23          	sd	ra,24(sp)
    80002480:	00813823          	sd	s0,16(sp)
    80002484:	00913423          	sd	s1,8(sp)
    80002488:	02010413          	addi	s0,sp,32
    8000248c:	00050493          	mv	s1,a0
    while (head) {
    80002490:	0084b783          	ld	a5,8(s1)
    80002494:	02078463          	beqz	a5,800024bc <_ZN10KSemaphore5closeEv+0x44>
        KThread* thread = get();
    80002498:	00048513          	mv	a0,s1
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	eb8080e7          	jalr	-328(ra) # 80002354 <_ZN10KSemaphore3getEv>
    800024a4:	00100713          	li	a4,1
    800024a8:	02e52823          	sw	a4,48(a0)
        thread->setState(READY);
        thread->semaphoreNext = nullptr;
    800024ac:	04053023          	sd	zero,64(a0)
        Scheduler::put(thread);
    800024b0:	fffff097          	auipc	ra,0xfffff
    800024b4:	378080e7          	jalr	888(ra) # 80001828 <_ZN9Scheduler3putEP7KThread>
    while (head) {
    800024b8:	fd9ff06f          	j	80002490 <_ZN10KSemaphore5closeEv+0x18>
    }
    800024bc:	01813083          	ld	ra,24(sp)
    800024c0:	01013403          	ld	s0,16(sp)
    800024c4:	00813483          	ld	s1,8(sp)
    800024c8:	02010113          	addi	sp,sp,32
    800024cc:	00008067          	ret

00000000800024d0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800024d0:	fe010113          	addi	sp,sp,-32
    800024d4:	00113c23          	sd	ra,24(sp)
    800024d8:	00813823          	sd	s0,16(sp)
    800024dc:	00913423          	sd	s1,8(sp)
    800024e0:	01213023          	sd	s2,0(sp)
    800024e4:	02010413          	addi	s0,sp,32
    800024e8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800024ec:	00000913          	li	s2,0
    800024f0:	00c0006f          	j	800024fc <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800024f4:	fffff097          	auipc	ra,0xfffff
    800024f8:	dfc080e7          	jalr	-516(ra) # 800012f0 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800024fc:	fffff097          	auipc	ra,0xfffff
    80002500:	ed0080e7          	jalr	-304(ra) # 800013cc <_Z4getcv>
    80002504:	0005059b          	sext.w	a1,a0
    80002508:	01b00793          	li	a5,27
    8000250c:	02f58a63          	beq	a1,a5,80002540 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002510:	0084b503          	ld	a0,8(s1)
    80002514:	00003097          	auipc	ra,0x3
    80002518:	b44080e7          	jalr	-1212(ra) # 80005058 <_ZN6Buffer3putEi>
        i++;
    8000251c:	0019071b          	addiw	a4,s2,1
    80002520:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002524:	0004a683          	lw	a3,0(s1)
    80002528:	0026979b          	slliw	a5,a3,0x2
    8000252c:	00d787bb          	addw	a5,a5,a3
    80002530:	0017979b          	slliw	a5,a5,0x1
    80002534:	02f767bb          	remw	a5,a4,a5
    80002538:	fc0792e3          	bnez	a5,800024fc <_ZL16producerKeyboardPv+0x2c>
    8000253c:	fb9ff06f          	j	800024f4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002540:	00100793          	li	a5,1
    80002544:	00008717          	auipc	a4,0x8
    80002548:	ccf72e23          	sw	a5,-804(a4) # 8000a220 <_ZL9threadEnd>
    data->buffer->put('!');
    8000254c:	02100593          	li	a1,33
    80002550:	0084b503          	ld	a0,8(s1)
    80002554:	00003097          	auipc	ra,0x3
    80002558:	b04080e7          	jalr	-1276(ra) # 80005058 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000255c:	0104b503          	ld	a0,16(s1)
    80002560:	fffff097          	auipc	ra,0xfffff
    80002564:	e40080e7          	jalr	-448(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    80002568:	01813083          	ld	ra,24(sp)
    8000256c:	01013403          	ld	s0,16(sp)
    80002570:	00813483          	ld	s1,8(sp)
    80002574:	00013903          	ld	s2,0(sp)
    80002578:	02010113          	addi	sp,sp,32
    8000257c:	00008067          	ret

0000000080002580 <_ZL8producerPv>:

static void producer(void *arg) {
    80002580:	fe010113          	addi	sp,sp,-32
    80002584:	00113c23          	sd	ra,24(sp)
    80002588:	00813823          	sd	s0,16(sp)
    8000258c:	00913423          	sd	s1,8(sp)
    80002590:	01213023          	sd	s2,0(sp)
    80002594:	02010413          	addi	s0,sp,32
    80002598:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000259c:	00000913          	li	s2,0
    800025a0:	00c0006f          	j	800025ac <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	d4c080e7          	jalr	-692(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800025ac:	00008797          	auipc	a5,0x8
    800025b0:	c747a783          	lw	a5,-908(a5) # 8000a220 <_ZL9threadEnd>
    800025b4:	02079e63          	bnez	a5,800025f0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800025b8:	0004a583          	lw	a1,0(s1)
    800025bc:	0305859b          	addiw	a1,a1,48
    800025c0:	0084b503          	ld	a0,8(s1)
    800025c4:	00003097          	auipc	ra,0x3
    800025c8:	a94080e7          	jalr	-1388(ra) # 80005058 <_ZN6Buffer3putEi>
        i++;
    800025cc:	0019071b          	addiw	a4,s2,1
    800025d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800025d4:	0004a683          	lw	a3,0(s1)
    800025d8:	0026979b          	slliw	a5,a3,0x2
    800025dc:	00d787bb          	addw	a5,a5,a3
    800025e0:	0017979b          	slliw	a5,a5,0x1
    800025e4:	02f767bb          	remw	a5,a4,a5
    800025e8:	fc0792e3          	bnez	a5,800025ac <_ZL8producerPv+0x2c>
    800025ec:	fb9ff06f          	j	800025a4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800025f0:	0104b503          	ld	a0,16(s1)
    800025f4:	fffff097          	auipc	ra,0xfffff
    800025f8:	dac080e7          	jalr	-596(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    800025fc:	01813083          	ld	ra,24(sp)
    80002600:	01013403          	ld	s0,16(sp)
    80002604:	00813483          	ld	s1,8(sp)
    80002608:	00013903          	ld	s2,0(sp)
    8000260c:	02010113          	addi	sp,sp,32
    80002610:	00008067          	ret

0000000080002614 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002614:	fd010113          	addi	sp,sp,-48
    80002618:	02113423          	sd	ra,40(sp)
    8000261c:	02813023          	sd	s0,32(sp)
    80002620:	00913c23          	sd	s1,24(sp)
    80002624:	01213823          	sd	s2,16(sp)
    80002628:	01313423          	sd	s3,8(sp)
    8000262c:	03010413          	addi	s0,sp,48
    80002630:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002634:	00000993          	li	s3,0
    80002638:	01c0006f          	j	80002654 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000263c:	fffff097          	auipc	ra,0xfffff
    80002640:	cb4080e7          	jalr	-844(ra) # 800012f0 <_Z15thread_dispatchv>
    80002644:	0500006f          	j	80002694 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002648:	00a00513          	li	a0,10
    8000264c:	fffff097          	auipc	ra,0xfffff
    80002650:	da8080e7          	jalr	-600(ra) # 800013f4 <_Z4putcc>
    while (!threadEnd) {
    80002654:	00008797          	auipc	a5,0x8
    80002658:	bcc7a783          	lw	a5,-1076(a5) # 8000a220 <_ZL9threadEnd>
    8000265c:	06079063          	bnez	a5,800026bc <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002660:	00893503          	ld	a0,8(s2)
    80002664:	00003097          	auipc	ra,0x3
    80002668:	a84080e7          	jalr	-1404(ra) # 800050e8 <_ZN6Buffer3getEv>
        i++;
    8000266c:	0019849b          	addiw	s1,s3,1
    80002670:	0004899b          	sext.w	s3,s1
        putc(key);
    80002674:	0ff57513          	andi	a0,a0,255
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	d7c080e7          	jalr	-644(ra) # 800013f4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002680:	00092703          	lw	a4,0(s2)
    80002684:	0027179b          	slliw	a5,a4,0x2
    80002688:	00e787bb          	addw	a5,a5,a4
    8000268c:	02f4e7bb          	remw	a5,s1,a5
    80002690:	fa0786e3          	beqz	a5,8000263c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002694:	05000793          	li	a5,80
    80002698:	02f4e4bb          	remw	s1,s1,a5
    8000269c:	fa049ce3          	bnez	s1,80002654 <_ZL8consumerPv+0x40>
    800026a0:	fa9ff06f          	j	80002648 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800026a4:	00893503          	ld	a0,8(s2)
    800026a8:	00003097          	auipc	ra,0x3
    800026ac:	a40080e7          	jalr	-1472(ra) # 800050e8 <_ZN6Buffer3getEv>
        putc(key);
    800026b0:	0ff57513          	andi	a0,a0,255
    800026b4:	fffff097          	auipc	ra,0xfffff
    800026b8:	d40080e7          	jalr	-704(ra) # 800013f4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800026bc:	00893503          	ld	a0,8(s2)
    800026c0:	00003097          	auipc	ra,0x3
    800026c4:	ab4080e7          	jalr	-1356(ra) # 80005174 <_ZN6Buffer6getCntEv>
    800026c8:	fca04ee3          	bgtz	a0,800026a4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800026cc:	01093503          	ld	a0,16(s2)
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	cd0080e7          	jalr	-816(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    800026d8:	02813083          	ld	ra,40(sp)
    800026dc:	02013403          	ld	s0,32(sp)
    800026e0:	01813483          	ld	s1,24(sp)
    800026e4:	01013903          	ld	s2,16(sp)
    800026e8:	00813983          	ld	s3,8(sp)
    800026ec:	03010113          	addi	sp,sp,48
    800026f0:	00008067          	ret

00000000800026f4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800026f4:	f9010113          	addi	sp,sp,-112
    800026f8:	06113423          	sd	ra,104(sp)
    800026fc:	06813023          	sd	s0,96(sp)
    80002700:	04913c23          	sd	s1,88(sp)
    80002704:	05213823          	sd	s2,80(sp)
    80002708:	05313423          	sd	s3,72(sp)
    8000270c:	05413023          	sd	s4,64(sp)
    80002710:	03513c23          	sd	s5,56(sp)
    80002714:	03613823          	sd	s6,48(sp)
    80002718:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000271c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002720:	00006517          	auipc	a0,0x6
    80002724:	a2050513          	addi	a0,a0,-1504 # 80008140 <CONSOLE_STATUS+0x130>
    80002728:	00002097          	auipc	ra,0x2
    8000272c:	a9c080e7          	jalr	-1380(ra) # 800041c4 <_Z11printStringPKc>
    getString(input, 30);
    80002730:	01e00593          	li	a1,30
    80002734:	fa040493          	addi	s1,s0,-96
    80002738:	00048513          	mv	a0,s1
    8000273c:	00002097          	auipc	ra,0x2
    80002740:	b10080e7          	jalr	-1264(ra) # 8000424c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002744:	00048513          	mv	a0,s1
    80002748:	00002097          	auipc	ra,0x2
    8000274c:	bdc080e7          	jalr	-1060(ra) # 80004324 <_Z11stringToIntPKc>
    80002750:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002754:	00006517          	auipc	a0,0x6
    80002758:	a0c50513          	addi	a0,a0,-1524 # 80008160 <CONSOLE_STATUS+0x150>
    8000275c:	00002097          	auipc	ra,0x2
    80002760:	a68080e7          	jalr	-1432(ra) # 800041c4 <_Z11printStringPKc>
    getString(input, 30);
    80002764:	01e00593          	li	a1,30
    80002768:	00048513          	mv	a0,s1
    8000276c:	00002097          	auipc	ra,0x2
    80002770:	ae0080e7          	jalr	-1312(ra) # 8000424c <_Z9getStringPci>
    n = stringToInt(input);
    80002774:	00048513          	mv	a0,s1
    80002778:	00002097          	auipc	ra,0x2
    8000277c:	bac080e7          	jalr	-1108(ra) # 80004324 <_Z11stringToIntPKc>
    80002780:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002784:	00006517          	auipc	a0,0x6
    80002788:	9fc50513          	addi	a0,a0,-1540 # 80008180 <CONSOLE_STATUS+0x170>
    8000278c:	00002097          	auipc	ra,0x2
    80002790:	a38080e7          	jalr	-1480(ra) # 800041c4 <_Z11printStringPKc>
    80002794:	00000613          	li	a2,0
    80002798:	00a00593          	li	a1,10
    8000279c:	00090513          	mv	a0,s2
    800027a0:	00002097          	auipc	ra,0x2
    800027a4:	bd4080e7          	jalr	-1068(ra) # 80004374 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800027a8:	00006517          	auipc	a0,0x6
    800027ac:	9f050513          	addi	a0,a0,-1552 # 80008198 <CONSOLE_STATUS+0x188>
    800027b0:	00002097          	auipc	ra,0x2
    800027b4:	a14080e7          	jalr	-1516(ra) # 800041c4 <_Z11printStringPKc>
    800027b8:	00000613          	li	a2,0
    800027bc:	00a00593          	li	a1,10
    800027c0:	00048513          	mv	a0,s1
    800027c4:	00002097          	auipc	ra,0x2
    800027c8:	bb0080e7          	jalr	-1104(ra) # 80004374 <_Z8printIntiii>
    printString(".\n");
    800027cc:	00006517          	auipc	a0,0x6
    800027d0:	9e450513          	addi	a0,a0,-1564 # 800081b0 <CONSOLE_STATUS+0x1a0>
    800027d4:	00002097          	auipc	ra,0x2
    800027d8:	9f0080e7          	jalr	-1552(ra) # 800041c4 <_Z11printStringPKc>
    if(threadNum > n) {
    800027dc:	0324c463          	blt	s1,s2,80002804 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800027e0:	03205c63          	blez	s2,80002818 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800027e4:	03800513          	li	a0,56
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	20c080e7          	jalr	524(ra) # 800019f4 <_Znwm>
    800027f0:	00050a13          	mv	s4,a0
    800027f4:	00048593          	mv	a1,s1
    800027f8:	00002097          	auipc	ra,0x2
    800027fc:	7c4080e7          	jalr	1988(ra) # 80004fbc <_ZN6BufferC1Ei>
    80002800:	0300006f          	j	80002830 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002804:	00006517          	auipc	a0,0x6
    80002808:	9b450513          	addi	a0,a0,-1612 # 800081b8 <CONSOLE_STATUS+0x1a8>
    8000280c:	00002097          	auipc	ra,0x2
    80002810:	9b8080e7          	jalr	-1608(ra) # 800041c4 <_Z11printStringPKc>
        return;
    80002814:	0140006f          	j	80002828 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002818:	00006517          	auipc	a0,0x6
    8000281c:	9e050513          	addi	a0,a0,-1568 # 800081f8 <CONSOLE_STATUS+0x1e8>
    80002820:	00002097          	auipc	ra,0x2
    80002824:	9a4080e7          	jalr	-1628(ra) # 800041c4 <_Z11printStringPKc>
        return;
    80002828:	000b0113          	mv	sp,s6
    8000282c:	1500006f          	j	8000297c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002830:	00000593          	li	a1,0
    80002834:	00008517          	auipc	a0,0x8
    80002838:	9f450513          	addi	a0,a0,-1548 # 8000a228 <_ZL10waitForAll>
    8000283c:	fffff097          	auipc	ra,0xfffff
    80002840:	ad4080e7          	jalr	-1324(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    thread_t threads[threadNum];
    80002844:	00391793          	slli	a5,s2,0x3
    80002848:	00f78793          	addi	a5,a5,15
    8000284c:	ff07f793          	andi	a5,a5,-16
    80002850:	40f10133          	sub	sp,sp,a5
    80002854:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002858:	0019071b          	addiw	a4,s2,1
    8000285c:	00171793          	slli	a5,a4,0x1
    80002860:	00e787b3          	add	a5,a5,a4
    80002864:	00379793          	slli	a5,a5,0x3
    80002868:	00f78793          	addi	a5,a5,15
    8000286c:	ff07f793          	andi	a5,a5,-16
    80002870:	40f10133          	sub	sp,sp,a5
    80002874:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002878:	00191613          	slli	a2,s2,0x1
    8000287c:	012607b3          	add	a5,a2,s2
    80002880:	00379793          	slli	a5,a5,0x3
    80002884:	00f987b3          	add	a5,s3,a5
    80002888:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000288c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002890:	00008717          	auipc	a4,0x8
    80002894:	99873703          	ld	a4,-1640(a4) # 8000a228 <_ZL10waitForAll>
    80002898:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000289c:	00078613          	mv	a2,a5
    800028a0:	00000597          	auipc	a1,0x0
    800028a4:	d7458593          	addi	a1,a1,-652 # 80002614 <_ZL8consumerPv>
    800028a8:	f9840513          	addi	a0,s0,-104
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	970080e7          	jalr	-1680(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800028b4:	00000493          	li	s1,0
    800028b8:	0280006f          	j	800028e0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800028bc:	00000597          	auipc	a1,0x0
    800028c0:	c1458593          	addi	a1,a1,-1004 # 800024d0 <_ZL16producerKeyboardPv>
                      data + i);
    800028c4:	00179613          	slli	a2,a5,0x1
    800028c8:	00f60633          	add	a2,a2,a5
    800028cc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800028d0:	00c98633          	add	a2,s3,a2
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	948080e7          	jalr	-1720(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800028dc:	0014849b          	addiw	s1,s1,1
    800028e0:	0524d263          	bge	s1,s2,80002924 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800028e4:	00149793          	slli	a5,s1,0x1
    800028e8:	009787b3          	add	a5,a5,s1
    800028ec:	00379793          	slli	a5,a5,0x3
    800028f0:	00f987b3          	add	a5,s3,a5
    800028f4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800028f8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800028fc:	00008717          	auipc	a4,0x8
    80002900:	92c73703          	ld	a4,-1748(a4) # 8000a228 <_ZL10waitForAll>
    80002904:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002908:	00048793          	mv	a5,s1
    8000290c:	00349513          	slli	a0,s1,0x3
    80002910:	00aa8533          	add	a0,s5,a0
    80002914:	fa9054e3          	blez	s1,800028bc <_Z22producerConsumer_C_APIv+0x1c8>
    80002918:	00000597          	auipc	a1,0x0
    8000291c:	c6858593          	addi	a1,a1,-920 # 80002580 <_ZL8producerPv>
    80002920:	fa5ff06f          	j	800028c4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002924:	fffff097          	auipc	ra,0xfffff
    80002928:	9cc080e7          	jalr	-1588(ra) # 800012f0 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000292c:	00000493          	li	s1,0
    80002930:	00994e63          	blt	s2,s1,8000294c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002934:	00008517          	auipc	a0,0x8
    80002938:	8f453503          	ld	a0,-1804(a0) # 8000a228 <_ZL10waitForAll>
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	a38080e7          	jalr	-1480(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80002944:	0014849b          	addiw	s1,s1,1
    80002948:	fe9ff06f          	j	80002930 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000294c:	00008517          	auipc	a0,0x8
    80002950:	8dc53503          	ld	a0,-1828(a0) # 8000a228 <_ZL10waitForAll>
    80002954:	fffff097          	auipc	ra,0xfffff
    80002958:	9f4080e7          	jalr	-1548(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    delete buffer;
    8000295c:	000a0e63          	beqz	s4,80002978 <_Z22producerConsumer_C_APIv+0x284>
    80002960:	000a0513          	mv	a0,s4
    80002964:	00003097          	auipc	ra,0x3
    80002968:	898080e7          	jalr	-1896(ra) # 800051fc <_ZN6BufferD1Ev>
    8000296c:	000a0513          	mv	a0,s4
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	0ac080e7          	jalr	172(ra) # 80001a1c <_ZdlPv>
    80002978:	000b0113          	mv	sp,s6

}
    8000297c:	f9040113          	addi	sp,s0,-112
    80002980:	06813083          	ld	ra,104(sp)
    80002984:	06013403          	ld	s0,96(sp)
    80002988:	05813483          	ld	s1,88(sp)
    8000298c:	05013903          	ld	s2,80(sp)
    80002990:	04813983          	ld	s3,72(sp)
    80002994:	04013a03          	ld	s4,64(sp)
    80002998:	03813a83          	ld	s5,56(sp)
    8000299c:	03013b03          	ld	s6,48(sp)
    800029a0:	07010113          	addi	sp,sp,112
    800029a4:	00008067          	ret
    800029a8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800029ac:	000a0513          	mv	a0,s4
    800029b0:	fffff097          	auipc	ra,0xfffff
    800029b4:	06c080e7          	jalr	108(ra) # 80001a1c <_ZdlPv>
    800029b8:	00048513          	mv	a0,s1
    800029bc:	00009097          	auipc	ra,0x9
    800029c0:	96c080e7          	jalr	-1684(ra) # 8000b328 <_Unwind_Resume>

00000000800029c4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800029c4:	fe010113          	addi	sp,sp,-32
    800029c8:	00113c23          	sd	ra,24(sp)
    800029cc:	00813823          	sd	s0,16(sp)
    800029d0:	00913423          	sd	s1,8(sp)
    800029d4:	01213023          	sd	s2,0(sp)
    800029d8:	02010413          	addi	s0,sp,32
    800029dc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800029e0:	00100793          	li	a5,1
    800029e4:	02a7f863          	bgeu	a5,a0,80002a14 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800029e8:	00a00793          	li	a5,10
    800029ec:	02f577b3          	remu	a5,a0,a5
    800029f0:	02078e63          	beqz	a5,80002a2c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800029f4:	fff48513          	addi	a0,s1,-1
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	fcc080e7          	jalr	-52(ra) # 800029c4 <_ZL9fibonaccim>
    80002a00:	00050913          	mv	s2,a0
    80002a04:	ffe48513          	addi	a0,s1,-2
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	fbc080e7          	jalr	-68(ra) # 800029c4 <_ZL9fibonaccim>
    80002a10:	00a90533          	add	a0,s2,a0
}
    80002a14:	01813083          	ld	ra,24(sp)
    80002a18:	01013403          	ld	s0,16(sp)
    80002a1c:	00813483          	ld	s1,8(sp)
    80002a20:	00013903          	ld	s2,0(sp)
    80002a24:	02010113          	addi	sp,sp,32
    80002a28:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002a2c:	fffff097          	auipc	ra,0xfffff
    80002a30:	8c4080e7          	jalr	-1852(ra) # 800012f0 <_Z15thread_dispatchv>
    80002a34:	fc1ff06f          	j	800029f4 <_ZL9fibonaccim+0x30>

0000000080002a38 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002a38:	fe010113          	addi	sp,sp,-32
    80002a3c:	00113c23          	sd	ra,24(sp)
    80002a40:	00813823          	sd	s0,16(sp)
    80002a44:	00913423          	sd	s1,8(sp)
    80002a48:	01213023          	sd	s2,0(sp)
    80002a4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002a50:	00000913          	li	s2,0
    80002a54:	0380006f          	j	80002a8c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002a58:	fffff097          	auipc	ra,0xfffff
    80002a5c:	898080e7          	jalr	-1896(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a60:	00148493          	addi	s1,s1,1
    80002a64:	000027b7          	lui	a5,0x2
    80002a68:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002a6c:	0097ee63          	bltu	a5,s1,80002a88 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002a70:	00000713          	li	a4,0
    80002a74:	000077b7          	lui	a5,0x7
    80002a78:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002a7c:	fce7eee3          	bltu	a5,a4,80002a58 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002a80:	00170713          	addi	a4,a4,1
    80002a84:	ff1ff06f          	j	80002a74 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002a88:	00190913          	addi	s2,s2,1
    80002a8c:	00900793          	li	a5,9
    80002a90:	0527e063          	bltu	a5,s2,80002ad0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002a94:	00005517          	auipc	a0,0x5
    80002a98:	79450513          	addi	a0,a0,1940 # 80008228 <CONSOLE_STATUS+0x218>
    80002a9c:	00001097          	auipc	ra,0x1
    80002aa0:	728080e7          	jalr	1832(ra) # 800041c4 <_Z11printStringPKc>
    80002aa4:	00000613          	li	a2,0
    80002aa8:	00a00593          	li	a1,10
    80002aac:	0009051b          	sext.w	a0,s2
    80002ab0:	00002097          	auipc	ra,0x2
    80002ab4:	8c4080e7          	jalr	-1852(ra) # 80004374 <_Z8printIntiii>
    80002ab8:	00006517          	auipc	a0,0x6
    80002abc:	a0050513          	addi	a0,a0,-1536 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80002ac0:	00001097          	auipc	ra,0x1
    80002ac4:	704080e7          	jalr	1796(ra) # 800041c4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002ac8:	00000493          	li	s1,0
    80002acc:	f99ff06f          	j	80002a64 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002ad0:	00005517          	auipc	a0,0x5
    80002ad4:	76050513          	addi	a0,a0,1888 # 80008230 <CONSOLE_STATUS+0x220>
    80002ad8:	00001097          	auipc	ra,0x1
    80002adc:	6ec080e7          	jalr	1772(ra) # 800041c4 <_Z11printStringPKc>
    finishedA = true;
    80002ae0:	00100793          	li	a5,1
    80002ae4:	00007717          	auipc	a4,0x7
    80002ae8:	74f70623          	sb	a5,1868(a4) # 8000a230 <_ZL9finishedA>
}
    80002aec:	01813083          	ld	ra,24(sp)
    80002af0:	01013403          	ld	s0,16(sp)
    80002af4:	00813483          	ld	s1,8(sp)
    80002af8:	00013903          	ld	s2,0(sp)
    80002afc:	02010113          	addi	sp,sp,32
    80002b00:	00008067          	ret

0000000080002b04 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002b04:	fe010113          	addi	sp,sp,-32
    80002b08:	00113c23          	sd	ra,24(sp)
    80002b0c:	00813823          	sd	s0,16(sp)
    80002b10:	00913423          	sd	s1,8(sp)
    80002b14:	01213023          	sd	s2,0(sp)
    80002b18:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002b1c:	00000913          	li	s2,0
    80002b20:	0380006f          	j	80002b58 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002b24:	ffffe097          	auipc	ra,0xffffe
    80002b28:	7cc080e7          	jalr	1996(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002b2c:	00148493          	addi	s1,s1,1
    80002b30:	000027b7          	lui	a5,0x2
    80002b34:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002b38:	0097ee63          	bltu	a5,s1,80002b54 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b3c:	00000713          	li	a4,0
    80002b40:	000077b7          	lui	a5,0x7
    80002b44:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b48:	fce7eee3          	bltu	a5,a4,80002b24 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002b4c:	00170713          	addi	a4,a4,1
    80002b50:	ff1ff06f          	j	80002b40 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002b54:	00190913          	addi	s2,s2,1
    80002b58:	00f00793          	li	a5,15
    80002b5c:	0527e063          	bltu	a5,s2,80002b9c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002b60:	00005517          	auipc	a0,0x5
    80002b64:	6e050513          	addi	a0,a0,1760 # 80008240 <CONSOLE_STATUS+0x230>
    80002b68:	00001097          	auipc	ra,0x1
    80002b6c:	65c080e7          	jalr	1628(ra) # 800041c4 <_Z11printStringPKc>
    80002b70:	00000613          	li	a2,0
    80002b74:	00a00593          	li	a1,10
    80002b78:	0009051b          	sext.w	a0,s2
    80002b7c:	00001097          	auipc	ra,0x1
    80002b80:	7f8080e7          	jalr	2040(ra) # 80004374 <_Z8printIntiii>
    80002b84:	00006517          	auipc	a0,0x6
    80002b88:	93450513          	addi	a0,a0,-1740 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80002b8c:	00001097          	auipc	ra,0x1
    80002b90:	638080e7          	jalr	1592(ra) # 800041c4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b94:	00000493          	li	s1,0
    80002b98:	f99ff06f          	j	80002b30 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002b9c:	00005517          	auipc	a0,0x5
    80002ba0:	6ac50513          	addi	a0,a0,1708 # 80008248 <CONSOLE_STATUS+0x238>
    80002ba4:	00001097          	auipc	ra,0x1
    80002ba8:	620080e7          	jalr	1568(ra) # 800041c4 <_Z11printStringPKc>
    finishedB = true;
    80002bac:	00100793          	li	a5,1
    80002bb0:	00007717          	auipc	a4,0x7
    80002bb4:	68f700a3          	sb	a5,1665(a4) # 8000a231 <_ZL9finishedB>
    thread_dispatch();
    80002bb8:	ffffe097          	auipc	ra,0xffffe
    80002bbc:	738080e7          	jalr	1848(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002bc0:	01813083          	ld	ra,24(sp)
    80002bc4:	01013403          	ld	s0,16(sp)
    80002bc8:	00813483          	ld	s1,8(sp)
    80002bcc:	00013903          	ld	s2,0(sp)
    80002bd0:	02010113          	addi	sp,sp,32
    80002bd4:	00008067          	ret

0000000080002bd8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002bd8:	fe010113          	addi	sp,sp,-32
    80002bdc:	00113c23          	sd	ra,24(sp)
    80002be0:	00813823          	sd	s0,16(sp)
    80002be4:	00913423          	sd	s1,8(sp)
    80002be8:	01213023          	sd	s2,0(sp)
    80002bec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002bf0:	00000493          	li	s1,0
    80002bf4:	0400006f          	j	80002c34 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002bf8:	00005517          	auipc	a0,0x5
    80002bfc:	66050513          	addi	a0,a0,1632 # 80008258 <CONSOLE_STATUS+0x248>
    80002c00:	00001097          	auipc	ra,0x1
    80002c04:	5c4080e7          	jalr	1476(ra) # 800041c4 <_Z11printStringPKc>
    80002c08:	00000613          	li	a2,0
    80002c0c:	00a00593          	li	a1,10
    80002c10:	00048513          	mv	a0,s1
    80002c14:	00001097          	auipc	ra,0x1
    80002c18:	760080e7          	jalr	1888(ra) # 80004374 <_Z8printIntiii>
    80002c1c:	00006517          	auipc	a0,0x6
    80002c20:	89c50513          	addi	a0,a0,-1892 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80002c24:	00001097          	auipc	ra,0x1
    80002c28:	5a0080e7          	jalr	1440(ra) # 800041c4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002c2c:	0014849b          	addiw	s1,s1,1
    80002c30:	0ff4f493          	andi	s1,s1,255
    80002c34:	00200793          	li	a5,2
    80002c38:	fc97f0e3          	bgeu	a5,s1,80002bf8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002c3c:	00005517          	auipc	a0,0x5
    80002c40:	62450513          	addi	a0,a0,1572 # 80008260 <CONSOLE_STATUS+0x250>
    80002c44:	00001097          	auipc	ra,0x1
    80002c48:	580080e7          	jalr	1408(ra) # 800041c4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002c4c:	00700313          	li	t1,7
    thread_dispatch();
    80002c50:	ffffe097          	auipc	ra,0xffffe
    80002c54:	6a0080e7          	jalr	1696(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002c58:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002c5c:	00005517          	auipc	a0,0x5
    80002c60:	61450513          	addi	a0,a0,1556 # 80008270 <CONSOLE_STATUS+0x260>
    80002c64:	00001097          	auipc	ra,0x1
    80002c68:	560080e7          	jalr	1376(ra) # 800041c4 <_Z11printStringPKc>
    80002c6c:	00000613          	li	a2,0
    80002c70:	00a00593          	li	a1,10
    80002c74:	0009051b          	sext.w	a0,s2
    80002c78:	00001097          	auipc	ra,0x1
    80002c7c:	6fc080e7          	jalr	1788(ra) # 80004374 <_Z8printIntiii>
    80002c80:	00006517          	auipc	a0,0x6
    80002c84:	83850513          	addi	a0,a0,-1992 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80002c88:	00001097          	auipc	ra,0x1
    80002c8c:	53c080e7          	jalr	1340(ra) # 800041c4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002c90:	00c00513          	li	a0,12
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	d30080e7          	jalr	-720(ra) # 800029c4 <_ZL9fibonaccim>
    80002c9c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002ca0:	00005517          	auipc	a0,0x5
    80002ca4:	5d850513          	addi	a0,a0,1496 # 80008278 <CONSOLE_STATUS+0x268>
    80002ca8:	00001097          	auipc	ra,0x1
    80002cac:	51c080e7          	jalr	1308(ra) # 800041c4 <_Z11printStringPKc>
    80002cb0:	00000613          	li	a2,0
    80002cb4:	00a00593          	li	a1,10
    80002cb8:	0009051b          	sext.w	a0,s2
    80002cbc:	00001097          	auipc	ra,0x1
    80002cc0:	6b8080e7          	jalr	1720(ra) # 80004374 <_Z8printIntiii>
    80002cc4:	00005517          	auipc	a0,0x5
    80002cc8:	7f450513          	addi	a0,a0,2036 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80002ccc:	00001097          	auipc	ra,0x1
    80002cd0:	4f8080e7          	jalr	1272(ra) # 800041c4 <_Z11printStringPKc>
    80002cd4:	0400006f          	j	80002d14 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002cd8:	00005517          	auipc	a0,0x5
    80002cdc:	58050513          	addi	a0,a0,1408 # 80008258 <CONSOLE_STATUS+0x248>
    80002ce0:	00001097          	auipc	ra,0x1
    80002ce4:	4e4080e7          	jalr	1252(ra) # 800041c4 <_Z11printStringPKc>
    80002ce8:	00000613          	li	a2,0
    80002cec:	00a00593          	li	a1,10
    80002cf0:	00048513          	mv	a0,s1
    80002cf4:	00001097          	auipc	ra,0x1
    80002cf8:	680080e7          	jalr	1664(ra) # 80004374 <_Z8printIntiii>
    80002cfc:	00005517          	auipc	a0,0x5
    80002d00:	7bc50513          	addi	a0,a0,1980 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80002d04:	00001097          	auipc	ra,0x1
    80002d08:	4c0080e7          	jalr	1216(ra) # 800041c4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002d0c:	0014849b          	addiw	s1,s1,1
    80002d10:	0ff4f493          	andi	s1,s1,255
    80002d14:	00500793          	li	a5,5
    80002d18:	fc97f0e3          	bgeu	a5,s1,80002cd8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002d1c:	00005517          	auipc	a0,0x5
    80002d20:	51450513          	addi	a0,a0,1300 # 80008230 <CONSOLE_STATUS+0x220>
    80002d24:	00001097          	auipc	ra,0x1
    80002d28:	4a0080e7          	jalr	1184(ra) # 800041c4 <_Z11printStringPKc>
    finishedC = true;
    80002d2c:	00100793          	li	a5,1
    80002d30:	00007717          	auipc	a4,0x7
    80002d34:	50f70123          	sb	a5,1282(a4) # 8000a232 <_ZL9finishedC>
    thread_dispatch();
    80002d38:	ffffe097          	auipc	ra,0xffffe
    80002d3c:	5b8080e7          	jalr	1464(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002d40:	01813083          	ld	ra,24(sp)
    80002d44:	01013403          	ld	s0,16(sp)
    80002d48:	00813483          	ld	s1,8(sp)
    80002d4c:	00013903          	ld	s2,0(sp)
    80002d50:	02010113          	addi	sp,sp,32
    80002d54:	00008067          	ret

0000000080002d58 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002d58:	fe010113          	addi	sp,sp,-32
    80002d5c:	00113c23          	sd	ra,24(sp)
    80002d60:	00813823          	sd	s0,16(sp)
    80002d64:	00913423          	sd	s1,8(sp)
    80002d68:	01213023          	sd	s2,0(sp)
    80002d6c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002d70:	00a00493          	li	s1,10
    80002d74:	0400006f          	j	80002db4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002d78:	00005517          	auipc	a0,0x5
    80002d7c:	51050513          	addi	a0,a0,1296 # 80008288 <CONSOLE_STATUS+0x278>
    80002d80:	00001097          	auipc	ra,0x1
    80002d84:	444080e7          	jalr	1092(ra) # 800041c4 <_Z11printStringPKc>
    80002d88:	00000613          	li	a2,0
    80002d8c:	00a00593          	li	a1,10
    80002d90:	00048513          	mv	a0,s1
    80002d94:	00001097          	auipc	ra,0x1
    80002d98:	5e0080e7          	jalr	1504(ra) # 80004374 <_Z8printIntiii>
    80002d9c:	00005517          	auipc	a0,0x5
    80002da0:	71c50513          	addi	a0,a0,1820 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80002da4:	00001097          	auipc	ra,0x1
    80002da8:	420080e7          	jalr	1056(ra) # 800041c4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002dac:	0014849b          	addiw	s1,s1,1
    80002db0:	0ff4f493          	andi	s1,s1,255
    80002db4:	00c00793          	li	a5,12
    80002db8:	fc97f0e3          	bgeu	a5,s1,80002d78 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002dbc:	00005517          	auipc	a0,0x5
    80002dc0:	4d450513          	addi	a0,a0,1236 # 80008290 <CONSOLE_STATUS+0x280>
    80002dc4:	00001097          	auipc	ra,0x1
    80002dc8:	400080e7          	jalr	1024(ra) # 800041c4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002dcc:	00500313          	li	t1,5
    thread_dispatch();
    80002dd0:	ffffe097          	auipc	ra,0xffffe
    80002dd4:	520080e7          	jalr	1312(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002dd8:	01000513          	li	a0,16
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	be8080e7          	jalr	-1048(ra) # 800029c4 <_ZL9fibonaccim>
    80002de4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002de8:	00005517          	auipc	a0,0x5
    80002dec:	4b850513          	addi	a0,a0,1208 # 800082a0 <CONSOLE_STATUS+0x290>
    80002df0:	00001097          	auipc	ra,0x1
    80002df4:	3d4080e7          	jalr	980(ra) # 800041c4 <_Z11printStringPKc>
    80002df8:	00000613          	li	a2,0
    80002dfc:	00a00593          	li	a1,10
    80002e00:	0009051b          	sext.w	a0,s2
    80002e04:	00001097          	auipc	ra,0x1
    80002e08:	570080e7          	jalr	1392(ra) # 80004374 <_Z8printIntiii>
    80002e0c:	00005517          	auipc	a0,0x5
    80002e10:	6ac50513          	addi	a0,a0,1708 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80002e14:	00001097          	auipc	ra,0x1
    80002e18:	3b0080e7          	jalr	944(ra) # 800041c4 <_Z11printStringPKc>
    80002e1c:	0400006f          	j	80002e5c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002e20:	00005517          	auipc	a0,0x5
    80002e24:	46850513          	addi	a0,a0,1128 # 80008288 <CONSOLE_STATUS+0x278>
    80002e28:	00001097          	auipc	ra,0x1
    80002e2c:	39c080e7          	jalr	924(ra) # 800041c4 <_Z11printStringPKc>
    80002e30:	00000613          	li	a2,0
    80002e34:	00a00593          	li	a1,10
    80002e38:	00048513          	mv	a0,s1
    80002e3c:	00001097          	auipc	ra,0x1
    80002e40:	538080e7          	jalr	1336(ra) # 80004374 <_Z8printIntiii>
    80002e44:	00005517          	auipc	a0,0x5
    80002e48:	67450513          	addi	a0,a0,1652 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80002e4c:	00001097          	auipc	ra,0x1
    80002e50:	378080e7          	jalr	888(ra) # 800041c4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002e54:	0014849b          	addiw	s1,s1,1
    80002e58:	0ff4f493          	andi	s1,s1,255
    80002e5c:	00f00793          	li	a5,15
    80002e60:	fc97f0e3          	bgeu	a5,s1,80002e20 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002e64:	00005517          	auipc	a0,0x5
    80002e68:	44c50513          	addi	a0,a0,1100 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80002e6c:	00001097          	auipc	ra,0x1
    80002e70:	358080e7          	jalr	856(ra) # 800041c4 <_Z11printStringPKc>
    finishedD = true;
    80002e74:	00100793          	li	a5,1
    80002e78:	00007717          	auipc	a4,0x7
    80002e7c:	3af70da3          	sb	a5,955(a4) # 8000a233 <_ZL9finishedD>
    thread_dispatch();
    80002e80:	ffffe097          	auipc	ra,0xffffe
    80002e84:	470080e7          	jalr	1136(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002e88:	01813083          	ld	ra,24(sp)
    80002e8c:	01013403          	ld	s0,16(sp)
    80002e90:	00813483          	ld	s1,8(sp)
    80002e94:	00013903          	ld	s2,0(sp)
    80002e98:	02010113          	addi	sp,sp,32
    80002e9c:	00008067          	ret

0000000080002ea0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002ea0:	fc010113          	addi	sp,sp,-64
    80002ea4:	02113c23          	sd	ra,56(sp)
    80002ea8:	02813823          	sd	s0,48(sp)
    80002eac:	02913423          	sd	s1,40(sp)
    80002eb0:	03213023          	sd	s2,32(sp)
    80002eb4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002eb8:	02000513          	li	a0,32
    80002ebc:	fffff097          	auipc	ra,0xfffff
    80002ec0:	b38080e7          	jalr	-1224(ra) # 800019f4 <_Znwm>
    80002ec4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	c7c080e7          	jalr	-900(ra) # 80001b44 <_ZN6ThreadC1Ev>
    80002ed0:	00007797          	auipc	a5,0x7
    80002ed4:	18078793          	addi	a5,a5,384 # 8000a050 <_ZTV7WorkerA+0x10>
    80002ed8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002edc:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002ee0:	00005517          	auipc	a0,0x5
    80002ee4:	3e050513          	addi	a0,a0,992 # 800082c0 <CONSOLE_STATUS+0x2b0>
    80002ee8:	00001097          	auipc	ra,0x1
    80002eec:	2dc080e7          	jalr	732(ra) # 800041c4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002ef0:	02000513          	li	a0,32
    80002ef4:	fffff097          	auipc	ra,0xfffff
    80002ef8:	b00080e7          	jalr	-1280(ra) # 800019f4 <_Znwm>
    80002efc:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002f00:	fffff097          	auipc	ra,0xfffff
    80002f04:	c44080e7          	jalr	-956(ra) # 80001b44 <_ZN6ThreadC1Ev>
    80002f08:	00007797          	auipc	a5,0x7
    80002f0c:	17078793          	addi	a5,a5,368 # 8000a078 <_ZTV7WorkerB+0x10>
    80002f10:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002f14:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002f18:	00005517          	auipc	a0,0x5
    80002f1c:	3c050513          	addi	a0,a0,960 # 800082d8 <CONSOLE_STATUS+0x2c8>
    80002f20:	00001097          	auipc	ra,0x1
    80002f24:	2a4080e7          	jalr	676(ra) # 800041c4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002f28:	02000513          	li	a0,32
    80002f2c:	fffff097          	auipc	ra,0xfffff
    80002f30:	ac8080e7          	jalr	-1336(ra) # 800019f4 <_Znwm>
    80002f34:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	c0c080e7          	jalr	-1012(ra) # 80001b44 <_ZN6ThreadC1Ev>
    80002f40:	00007797          	auipc	a5,0x7
    80002f44:	16078793          	addi	a5,a5,352 # 8000a0a0 <_ZTV7WorkerC+0x10>
    80002f48:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002f4c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002f50:	00005517          	auipc	a0,0x5
    80002f54:	3a050513          	addi	a0,a0,928 # 800082f0 <CONSOLE_STATUS+0x2e0>
    80002f58:	00001097          	auipc	ra,0x1
    80002f5c:	26c080e7          	jalr	620(ra) # 800041c4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002f60:	02000513          	li	a0,32
    80002f64:	fffff097          	auipc	ra,0xfffff
    80002f68:	a90080e7          	jalr	-1392(ra) # 800019f4 <_Znwm>
    80002f6c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002f70:	fffff097          	auipc	ra,0xfffff
    80002f74:	bd4080e7          	jalr	-1068(ra) # 80001b44 <_ZN6ThreadC1Ev>
    80002f78:	00007797          	auipc	a5,0x7
    80002f7c:	15078793          	addi	a5,a5,336 # 8000a0c8 <_ZTV7WorkerD+0x10>
    80002f80:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002f84:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002f88:	00005517          	auipc	a0,0x5
    80002f8c:	38050513          	addi	a0,a0,896 # 80008308 <CONSOLE_STATUS+0x2f8>
    80002f90:	00001097          	auipc	ra,0x1
    80002f94:	234080e7          	jalr	564(ra) # 800041c4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002f98:	00000493          	li	s1,0
    80002f9c:	00300793          	li	a5,3
    80002fa0:	0297c663          	blt	a5,s1,80002fcc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002fa4:	00349793          	slli	a5,s1,0x3
    80002fa8:	fe040713          	addi	a4,s0,-32
    80002fac:	00f707b3          	add	a5,a4,a5
    80002fb0:	fe07b503          	ld	a0,-32(a5)
    80002fb4:	fffff097          	auipc	ra,0xfffff
    80002fb8:	bc0080e7          	jalr	-1088(ra) # 80001b74 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002fbc:	0014849b          	addiw	s1,s1,1
    80002fc0:	fddff06f          	j	80002f9c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	c04080e7          	jalr	-1020(ra) # 80001bc8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002fcc:	00007797          	auipc	a5,0x7
    80002fd0:	2647c783          	lbu	a5,612(a5) # 8000a230 <_ZL9finishedA>
    80002fd4:	fe0788e3          	beqz	a5,80002fc4 <_Z20Threads_CPP_API_testv+0x124>
    80002fd8:	00007797          	auipc	a5,0x7
    80002fdc:	2597c783          	lbu	a5,601(a5) # 8000a231 <_ZL9finishedB>
    80002fe0:	fe0782e3          	beqz	a5,80002fc4 <_Z20Threads_CPP_API_testv+0x124>
    80002fe4:	00007797          	auipc	a5,0x7
    80002fe8:	24e7c783          	lbu	a5,590(a5) # 8000a232 <_ZL9finishedC>
    80002fec:	fc078ce3          	beqz	a5,80002fc4 <_Z20Threads_CPP_API_testv+0x124>
    80002ff0:	00007797          	auipc	a5,0x7
    80002ff4:	2437c783          	lbu	a5,579(a5) # 8000a233 <_ZL9finishedD>
    80002ff8:	fc0786e3          	beqz	a5,80002fc4 <_Z20Threads_CPP_API_testv+0x124>
    80002ffc:	fc040493          	addi	s1,s0,-64
    80003000:	0080006f          	j	80003008 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003004:	00848493          	addi	s1,s1,8
    80003008:	fe040793          	addi	a5,s0,-32
    8000300c:	08f48663          	beq	s1,a5,80003098 <_Z20Threads_CPP_API_testv+0x1f8>
    80003010:	0004b503          	ld	a0,0(s1)
    80003014:	fe0508e3          	beqz	a0,80003004 <_Z20Threads_CPP_API_testv+0x164>
    80003018:	00053783          	ld	a5,0(a0)
    8000301c:	0087b783          	ld	a5,8(a5)
    80003020:	000780e7          	jalr	a5
    80003024:	fe1ff06f          	j	80003004 <_Z20Threads_CPP_API_testv+0x164>
    80003028:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000302c:	00048513          	mv	a0,s1
    80003030:	fffff097          	auipc	ra,0xfffff
    80003034:	9ec080e7          	jalr	-1556(ra) # 80001a1c <_ZdlPv>
    80003038:	00090513          	mv	a0,s2
    8000303c:	00008097          	auipc	ra,0x8
    80003040:	2ec080e7          	jalr	748(ra) # 8000b328 <_Unwind_Resume>
    80003044:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003048:	00048513          	mv	a0,s1
    8000304c:	fffff097          	auipc	ra,0xfffff
    80003050:	9d0080e7          	jalr	-1584(ra) # 80001a1c <_ZdlPv>
    80003054:	00090513          	mv	a0,s2
    80003058:	00008097          	auipc	ra,0x8
    8000305c:	2d0080e7          	jalr	720(ra) # 8000b328 <_Unwind_Resume>
    80003060:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003064:	00048513          	mv	a0,s1
    80003068:	fffff097          	auipc	ra,0xfffff
    8000306c:	9b4080e7          	jalr	-1612(ra) # 80001a1c <_ZdlPv>
    80003070:	00090513          	mv	a0,s2
    80003074:	00008097          	auipc	ra,0x8
    80003078:	2b4080e7          	jalr	692(ra) # 8000b328 <_Unwind_Resume>
    8000307c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003080:	00048513          	mv	a0,s1
    80003084:	fffff097          	auipc	ra,0xfffff
    80003088:	998080e7          	jalr	-1640(ra) # 80001a1c <_ZdlPv>
    8000308c:	00090513          	mv	a0,s2
    80003090:	00008097          	auipc	ra,0x8
    80003094:	298080e7          	jalr	664(ra) # 8000b328 <_Unwind_Resume>
}
    80003098:	03813083          	ld	ra,56(sp)
    8000309c:	03013403          	ld	s0,48(sp)
    800030a0:	02813483          	ld	s1,40(sp)
    800030a4:	02013903          	ld	s2,32(sp)
    800030a8:	04010113          	addi	sp,sp,64
    800030ac:	00008067          	ret

00000000800030b0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800030b0:	ff010113          	addi	sp,sp,-16
    800030b4:	00113423          	sd	ra,8(sp)
    800030b8:	00813023          	sd	s0,0(sp)
    800030bc:	01010413          	addi	s0,sp,16
    800030c0:	00007797          	auipc	a5,0x7
    800030c4:	f9078793          	addi	a5,a5,-112 # 8000a050 <_ZTV7WorkerA+0x10>
    800030c8:	00f53023          	sd	a5,0(a0)
    800030cc:	fffff097          	auipc	ra,0xfffff
    800030d0:	87c080e7          	jalr	-1924(ra) # 80001948 <_ZN6ThreadD1Ev>
    800030d4:	00813083          	ld	ra,8(sp)
    800030d8:	00013403          	ld	s0,0(sp)
    800030dc:	01010113          	addi	sp,sp,16
    800030e0:	00008067          	ret

00000000800030e4 <_ZN7WorkerAD0Ev>:
    800030e4:	fe010113          	addi	sp,sp,-32
    800030e8:	00113c23          	sd	ra,24(sp)
    800030ec:	00813823          	sd	s0,16(sp)
    800030f0:	00913423          	sd	s1,8(sp)
    800030f4:	02010413          	addi	s0,sp,32
    800030f8:	00050493          	mv	s1,a0
    800030fc:	00007797          	auipc	a5,0x7
    80003100:	f5478793          	addi	a5,a5,-172 # 8000a050 <_ZTV7WorkerA+0x10>
    80003104:	00f53023          	sd	a5,0(a0)
    80003108:	fffff097          	auipc	ra,0xfffff
    8000310c:	840080e7          	jalr	-1984(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003110:	00048513          	mv	a0,s1
    80003114:	fffff097          	auipc	ra,0xfffff
    80003118:	908080e7          	jalr	-1784(ra) # 80001a1c <_ZdlPv>
    8000311c:	01813083          	ld	ra,24(sp)
    80003120:	01013403          	ld	s0,16(sp)
    80003124:	00813483          	ld	s1,8(sp)
    80003128:	02010113          	addi	sp,sp,32
    8000312c:	00008067          	ret

0000000080003130 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003130:	ff010113          	addi	sp,sp,-16
    80003134:	00113423          	sd	ra,8(sp)
    80003138:	00813023          	sd	s0,0(sp)
    8000313c:	01010413          	addi	s0,sp,16
    80003140:	00007797          	auipc	a5,0x7
    80003144:	f3878793          	addi	a5,a5,-200 # 8000a078 <_ZTV7WorkerB+0x10>
    80003148:	00f53023          	sd	a5,0(a0)
    8000314c:	ffffe097          	auipc	ra,0xffffe
    80003150:	7fc080e7          	jalr	2044(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003154:	00813083          	ld	ra,8(sp)
    80003158:	00013403          	ld	s0,0(sp)
    8000315c:	01010113          	addi	sp,sp,16
    80003160:	00008067          	ret

0000000080003164 <_ZN7WorkerBD0Ev>:
    80003164:	fe010113          	addi	sp,sp,-32
    80003168:	00113c23          	sd	ra,24(sp)
    8000316c:	00813823          	sd	s0,16(sp)
    80003170:	00913423          	sd	s1,8(sp)
    80003174:	02010413          	addi	s0,sp,32
    80003178:	00050493          	mv	s1,a0
    8000317c:	00007797          	auipc	a5,0x7
    80003180:	efc78793          	addi	a5,a5,-260 # 8000a078 <_ZTV7WorkerB+0x10>
    80003184:	00f53023          	sd	a5,0(a0)
    80003188:	ffffe097          	auipc	ra,0xffffe
    8000318c:	7c0080e7          	jalr	1984(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003190:	00048513          	mv	a0,s1
    80003194:	fffff097          	auipc	ra,0xfffff
    80003198:	888080e7          	jalr	-1912(ra) # 80001a1c <_ZdlPv>
    8000319c:	01813083          	ld	ra,24(sp)
    800031a0:	01013403          	ld	s0,16(sp)
    800031a4:	00813483          	ld	s1,8(sp)
    800031a8:	02010113          	addi	sp,sp,32
    800031ac:	00008067          	ret

00000000800031b0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800031b0:	ff010113          	addi	sp,sp,-16
    800031b4:	00113423          	sd	ra,8(sp)
    800031b8:	00813023          	sd	s0,0(sp)
    800031bc:	01010413          	addi	s0,sp,16
    800031c0:	00007797          	auipc	a5,0x7
    800031c4:	ee078793          	addi	a5,a5,-288 # 8000a0a0 <_ZTV7WorkerC+0x10>
    800031c8:	00f53023          	sd	a5,0(a0)
    800031cc:	ffffe097          	auipc	ra,0xffffe
    800031d0:	77c080e7          	jalr	1916(ra) # 80001948 <_ZN6ThreadD1Ev>
    800031d4:	00813083          	ld	ra,8(sp)
    800031d8:	00013403          	ld	s0,0(sp)
    800031dc:	01010113          	addi	sp,sp,16
    800031e0:	00008067          	ret

00000000800031e4 <_ZN7WorkerCD0Ev>:
    800031e4:	fe010113          	addi	sp,sp,-32
    800031e8:	00113c23          	sd	ra,24(sp)
    800031ec:	00813823          	sd	s0,16(sp)
    800031f0:	00913423          	sd	s1,8(sp)
    800031f4:	02010413          	addi	s0,sp,32
    800031f8:	00050493          	mv	s1,a0
    800031fc:	00007797          	auipc	a5,0x7
    80003200:	ea478793          	addi	a5,a5,-348 # 8000a0a0 <_ZTV7WorkerC+0x10>
    80003204:	00f53023          	sd	a5,0(a0)
    80003208:	ffffe097          	auipc	ra,0xffffe
    8000320c:	740080e7          	jalr	1856(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003210:	00048513          	mv	a0,s1
    80003214:	fffff097          	auipc	ra,0xfffff
    80003218:	808080e7          	jalr	-2040(ra) # 80001a1c <_ZdlPv>
    8000321c:	01813083          	ld	ra,24(sp)
    80003220:	01013403          	ld	s0,16(sp)
    80003224:	00813483          	ld	s1,8(sp)
    80003228:	02010113          	addi	sp,sp,32
    8000322c:	00008067          	ret

0000000080003230 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003230:	ff010113          	addi	sp,sp,-16
    80003234:	00113423          	sd	ra,8(sp)
    80003238:	00813023          	sd	s0,0(sp)
    8000323c:	01010413          	addi	s0,sp,16
    80003240:	00007797          	auipc	a5,0x7
    80003244:	e8878793          	addi	a5,a5,-376 # 8000a0c8 <_ZTV7WorkerD+0x10>
    80003248:	00f53023          	sd	a5,0(a0)
    8000324c:	ffffe097          	auipc	ra,0xffffe
    80003250:	6fc080e7          	jalr	1788(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003254:	00813083          	ld	ra,8(sp)
    80003258:	00013403          	ld	s0,0(sp)
    8000325c:	01010113          	addi	sp,sp,16
    80003260:	00008067          	ret

0000000080003264 <_ZN7WorkerDD0Ev>:
    80003264:	fe010113          	addi	sp,sp,-32
    80003268:	00113c23          	sd	ra,24(sp)
    8000326c:	00813823          	sd	s0,16(sp)
    80003270:	00913423          	sd	s1,8(sp)
    80003274:	02010413          	addi	s0,sp,32
    80003278:	00050493          	mv	s1,a0
    8000327c:	00007797          	auipc	a5,0x7
    80003280:	e4c78793          	addi	a5,a5,-436 # 8000a0c8 <_ZTV7WorkerD+0x10>
    80003284:	00f53023          	sd	a5,0(a0)
    80003288:	ffffe097          	auipc	ra,0xffffe
    8000328c:	6c0080e7          	jalr	1728(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003290:	00048513          	mv	a0,s1
    80003294:	ffffe097          	auipc	ra,0xffffe
    80003298:	788080e7          	jalr	1928(ra) # 80001a1c <_ZdlPv>
    8000329c:	01813083          	ld	ra,24(sp)
    800032a0:	01013403          	ld	s0,16(sp)
    800032a4:	00813483          	ld	s1,8(sp)
    800032a8:	02010113          	addi	sp,sp,32
    800032ac:	00008067          	ret

00000000800032b0 <_ZN7WorkerA3runEv>:
    void run() override {
    800032b0:	ff010113          	addi	sp,sp,-16
    800032b4:	00113423          	sd	ra,8(sp)
    800032b8:	00813023          	sd	s0,0(sp)
    800032bc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800032c0:	00000593          	li	a1,0
    800032c4:	fffff097          	auipc	ra,0xfffff
    800032c8:	774080e7          	jalr	1908(ra) # 80002a38 <_ZN7WorkerA11workerBodyAEPv>
    }
    800032cc:	00813083          	ld	ra,8(sp)
    800032d0:	00013403          	ld	s0,0(sp)
    800032d4:	01010113          	addi	sp,sp,16
    800032d8:	00008067          	ret

00000000800032dc <_ZN7WorkerB3runEv>:
    void run() override {
    800032dc:	ff010113          	addi	sp,sp,-16
    800032e0:	00113423          	sd	ra,8(sp)
    800032e4:	00813023          	sd	s0,0(sp)
    800032e8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800032ec:	00000593          	li	a1,0
    800032f0:	00000097          	auipc	ra,0x0
    800032f4:	814080e7          	jalr	-2028(ra) # 80002b04 <_ZN7WorkerB11workerBodyBEPv>
    }
    800032f8:	00813083          	ld	ra,8(sp)
    800032fc:	00013403          	ld	s0,0(sp)
    80003300:	01010113          	addi	sp,sp,16
    80003304:	00008067          	ret

0000000080003308 <_ZN7WorkerC3runEv>:
    void run() override {
    80003308:	ff010113          	addi	sp,sp,-16
    8000330c:	00113423          	sd	ra,8(sp)
    80003310:	00813023          	sd	s0,0(sp)
    80003314:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003318:	00000593          	li	a1,0
    8000331c:	00000097          	auipc	ra,0x0
    80003320:	8bc080e7          	jalr	-1860(ra) # 80002bd8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003324:	00813083          	ld	ra,8(sp)
    80003328:	00013403          	ld	s0,0(sp)
    8000332c:	01010113          	addi	sp,sp,16
    80003330:	00008067          	ret

0000000080003334 <_ZN7WorkerD3runEv>:
    void run() override {
    80003334:	ff010113          	addi	sp,sp,-16
    80003338:	00113423          	sd	ra,8(sp)
    8000333c:	00813023          	sd	s0,0(sp)
    80003340:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003344:	00000593          	li	a1,0
    80003348:	00000097          	auipc	ra,0x0
    8000334c:	a10080e7          	jalr	-1520(ra) # 80002d58 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003350:	00813083          	ld	ra,8(sp)
    80003354:	00013403          	ld	s0,0(sp)
    80003358:	01010113          	addi	sp,sp,16
    8000335c:	00008067          	ret

0000000080003360 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003360:	fe010113          	addi	sp,sp,-32
    80003364:	00113c23          	sd	ra,24(sp)
    80003368:	00813823          	sd	s0,16(sp)
    8000336c:	00913423          	sd	s1,8(sp)
    80003370:	01213023          	sd	s2,0(sp)
    80003374:	02010413          	addi	s0,sp,32
    80003378:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000337c:	00100793          	li	a5,1
    80003380:	02a7f863          	bgeu	a5,a0,800033b0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003384:	00a00793          	li	a5,10
    80003388:	02f577b3          	remu	a5,a0,a5
    8000338c:	02078e63          	beqz	a5,800033c8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003390:	fff48513          	addi	a0,s1,-1
    80003394:	00000097          	auipc	ra,0x0
    80003398:	fcc080e7          	jalr	-52(ra) # 80003360 <_ZL9fibonaccim>
    8000339c:	00050913          	mv	s2,a0
    800033a0:	ffe48513          	addi	a0,s1,-2
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	fbc080e7          	jalr	-68(ra) # 80003360 <_ZL9fibonaccim>
    800033ac:	00a90533          	add	a0,s2,a0
}
    800033b0:	01813083          	ld	ra,24(sp)
    800033b4:	01013403          	ld	s0,16(sp)
    800033b8:	00813483          	ld	s1,8(sp)
    800033bc:	00013903          	ld	s2,0(sp)
    800033c0:	02010113          	addi	sp,sp,32
    800033c4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800033c8:	ffffe097          	auipc	ra,0xffffe
    800033cc:	f28080e7          	jalr	-216(ra) # 800012f0 <_Z15thread_dispatchv>
    800033d0:	fc1ff06f          	j	80003390 <_ZL9fibonaccim+0x30>

00000000800033d4 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800033d4:	fe010113          	addi	sp,sp,-32
    800033d8:	00113c23          	sd	ra,24(sp)
    800033dc:	00813823          	sd	s0,16(sp)
    800033e0:	00913423          	sd	s1,8(sp)
    800033e4:	01213023          	sd	s2,0(sp)
    800033e8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800033ec:	00a00493          	li	s1,10
    800033f0:	0400006f          	j	80003430 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800033f4:	00005517          	auipc	a0,0x5
    800033f8:	e9450513          	addi	a0,a0,-364 # 80008288 <CONSOLE_STATUS+0x278>
    800033fc:	00001097          	auipc	ra,0x1
    80003400:	dc8080e7          	jalr	-568(ra) # 800041c4 <_Z11printStringPKc>
    80003404:	00000613          	li	a2,0
    80003408:	00a00593          	li	a1,10
    8000340c:	00048513          	mv	a0,s1
    80003410:	00001097          	auipc	ra,0x1
    80003414:	f64080e7          	jalr	-156(ra) # 80004374 <_Z8printIntiii>
    80003418:	00005517          	auipc	a0,0x5
    8000341c:	0a050513          	addi	a0,a0,160 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80003420:	00001097          	auipc	ra,0x1
    80003424:	da4080e7          	jalr	-604(ra) # 800041c4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003428:	0014849b          	addiw	s1,s1,1
    8000342c:	0ff4f493          	andi	s1,s1,255
    80003430:	00c00793          	li	a5,12
    80003434:	fc97f0e3          	bgeu	a5,s1,800033f4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003438:	00005517          	auipc	a0,0x5
    8000343c:	e5850513          	addi	a0,a0,-424 # 80008290 <CONSOLE_STATUS+0x280>
    80003440:	00001097          	auipc	ra,0x1
    80003444:	d84080e7          	jalr	-636(ra) # 800041c4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003448:	00500313          	li	t1,5
    thread_dispatch();
    8000344c:	ffffe097          	auipc	ra,0xffffe
    80003450:	ea4080e7          	jalr	-348(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003454:	01000513          	li	a0,16
    80003458:	00000097          	auipc	ra,0x0
    8000345c:	f08080e7          	jalr	-248(ra) # 80003360 <_ZL9fibonaccim>
    80003460:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003464:	00005517          	auipc	a0,0x5
    80003468:	e3c50513          	addi	a0,a0,-452 # 800082a0 <CONSOLE_STATUS+0x290>
    8000346c:	00001097          	auipc	ra,0x1
    80003470:	d58080e7          	jalr	-680(ra) # 800041c4 <_Z11printStringPKc>
    80003474:	00000613          	li	a2,0
    80003478:	00a00593          	li	a1,10
    8000347c:	0009051b          	sext.w	a0,s2
    80003480:	00001097          	auipc	ra,0x1
    80003484:	ef4080e7          	jalr	-268(ra) # 80004374 <_Z8printIntiii>
    80003488:	00005517          	auipc	a0,0x5
    8000348c:	03050513          	addi	a0,a0,48 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80003490:	00001097          	auipc	ra,0x1
    80003494:	d34080e7          	jalr	-716(ra) # 800041c4 <_Z11printStringPKc>
    80003498:	0400006f          	j	800034d8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000349c:	00005517          	auipc	a0,0x5
    800034a0:	dec50513          	addi	a0,a0,-532 # 80008288 <CONSOLE_STATUS+0x278>
    800034a4:	00001097          	auipc	ra,0x1
    800034a8:	d20080e7          	jalr	-736(ra) # 800041c4 <_Z11printStringPKc>
    800034ac:	00000613          	li	a2,0
    800034b0:	00a00593          	li	a1,10
    800034b4:	00048513          	mv	a0,s1
    800034b8:	00001097          	auipc	ra,0x1
    800034bc:	ebc080e7          	jalr	-324(ra) # 80004374 <_Z8printIntiii>
    800034c0:	00005517          	auipc	a0,0x5
    800034c4:	ff850513          	addi	a0,a0,-8 # 800084b8 <CONSOLE_STATUS+0x4a8>
    800034c8:	00001097          	auipc	ra,0x1
    800034cc:	cfc080e7          	jalr	-772(ra) # 800041c4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800034d0:	0014849b          	addiw	s1,s1,1
    800034d4:	0ff4f493          	andi	s1,s1,255
    800034d8:	00f00793          	li	a5,15
    800034dc:	fc97f0e3          	bgeu	a5,s1,8000349c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800034e0:	00005517          	auipc	a0,0x5
    800034e4:	dd050513          	addi	a0,a0,-560 # 800082b0 <CONSOLE_STATUS+0x2a0>
    800034e8:	00001097          	auipc	ra,0x1
    800034ec:	cdc080e7          	jalr	-804(ra) # 800041c4 <_Z11printStringPKc>
    finishedD = true;
    800034f0:	00100793          	li	a5,1
    800034f4:	00007717          	auipc	a4,0x7
    800034f8:	d4f70023          	sb	a5,-704(a4) # 8000a234 <_ZL9finishedD>
    thread_dispatch();
    800034fc:	ffffe097          	auipc	ra,0xffffe
    80003500:	df4080e7          	jalr	-524(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003504:	01813083          	ld	ra,24(sp)
    80003508:	01013403          	ld	s0,16(sp)
    8000350c:	00813483          	ld	s1,8(sp)
    80003510:	00013903          	ld	s2,0(sp)
    80003514:	02010113          	addi	sp,sp,32
    80003518:	00008067          	ret

000000008000351c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000351c:	fe010113          	addi	sp,sp,-32
    80003520:	00113c23          	sd	ra,24(sp)
    80003524:	00813823          	sd	s0,16(sp)
    80003528:	00913423          	sd	s1,8(sp)
    8000352c:	01213023          	sd	s2,0(sp)
    80003530:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003534:	00000493          	li	s1,0
    80003538:	0400006f          	j	80003578 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000353c:	00005517          	auipc	a0,0x5
    80003540:	d1c50513          	addi	a0,a0,-740 # 80008258 <CONSOLE_STATUS+0x248>
    80003544:	00001097          	auipc	ra,0x1
    80003548:	c80080e7          	jalr	-896(ra) # 800041c4 <_Z11printStringPKc>
    8000354c:	00000613          	li	a2,0
    80003550:	00a00593          	li	a1,10
    80003554:	00048513          	mv	a0,s1
    80003558:	00001097          	auipc	ra,0x1
    8000355c:	e1c080e7          	jalr	-484(ra) # 80004374 <_Z8printIntiii>
    80003560:	00005517          	auipc	a0,0x5
    80003564:	f5850513          	addi	a0,a0,-168 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80003568:	00001097          	auipc	ra,0x1
    8000356c:	c5c080e7          	jalr	-932(ra) # 800041c4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003570:	0014849b          	addiw	s1,s1,1
    80003574:	0ff4f493          	andi	s1,s1,255
    80003578:	00200793          	li	a5,2
    8000357c:	fc97f0e3          	bgeu	a5,s1,8000353c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003580:	00005517          	auipc	a0,0x5
    80003584:	ce050513          	addi	a0,a0,-800 # 80008260 <CONSOLE_STATUS+0x250>
    80003588:	00001097          	auipc	ra,0x1
    8000358c:	c3c080e7          	jalr	-964(ra) # 800041c4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003590:	00700313          	li	t1,7
    thread_dispatch();
    80003594:	ffffe097          	auipc	ra,0xffffe
    80003598:	d5c080e7          	jalr	-676(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000359c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800035a0:	00005517          	auipc	a0,0x5
    800035a4:	cd050513          	addi	a0,a0,-816 # 80008270 <CONSOLE_STATUS+0x260>
    800035a8:	00001097          	auipc	ra,0x1
    800035ac:	c1c080e7          	jalr	-996(ra) # 800041c4 <_Z11printStringPKc>
    800035b0:	00000613          	li	a2,0
    800035b4:	00a00593          	li	a1,10
    800035b8:	0009051b          	sext.w	a0,s2
    800035bc:	00001097          	auipc	ra,0x1
    800035c0:	db8080e7          	jalr	-584(ra) # 80004374 <_Z8printIntiii>
    800035c4:	00005517          	auipc	a0,0x5
    800035c8:	ef450513          	addi	a0,a0,-268 # 800084b8 <CONSOLE_STATUS+0x4a8>
    800035cc:	00001097          	auipc	ra,0x1
    800035d0:	bf8080e7          	jalr	-1032(ra) # 800041c4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800035d4:	00c00513          	li	a0,12
    800035d8:	00000097          	auipc	ra,0x0
    800035dc:	d88080e7          	jalr	-632(ra) # 80003360 <_ZL9fibonaccim>
    800035e0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800035e4:	00005517          	auipc	a0,0x5
    800035e8:	c9450513          	addi	a0,a0,-876 # 80008278 <CONSOLE_STATUS+0x268>
    800035ec:	00001097          	auipc	ra,0x1
    800035f0:	bd8080e7          	jalr	-1064(ra) # 800041c4 <_Z11printStringPKc>
    800035f4:	00000613          	li	a2,0
    800035f8:	00a00593          	li	a1,10
    800035fc:	0009051b          	sext.w	a0,s2
    80003600:	00001097          	auipc	ra,0x1
    80003604:	d74080e7          	jalr	-652(ra) # 80004374 <_Z8printIntiii>
    80003608:	00005517          	auipc	a0,0x5
    8000360c:	eb050513          	addi	a0,a0,-336 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80003610:	00001097          	auipc	ra,0x1
    80003614:	bb4080e7          	jalr	-1100(ra) # 800041c4 <_Z11printStringPKc>
    80003618:	0400006f          	j	80003658 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000361c:	00005517          	auipc	a0,0x5
    80003620:	c3c50513          	addi	a0,a0,-964 # 80008258 <CONSOLE_STATUS+0x248>
    80003624:	00001097          	auipc	ra,0x1
    80003628:	ba0080e7          	jalr	-1120(ra) # 800041c4 <_Z11printStringPKc>
    8000362c:	00000613          	li	a2,0
    80003630:	00a00593          	li	a1,10
    80003634:	00048513          	mv	a0,s1
    80003638:	00001097          	auipc	ra,0x1
    8000363c:	d3c080e7          	jalr	-708(ra) # 80004374 <_Z8printIntiii>
    80003640:	00005517          	auipc	a0,0x5
    80003644:	e7850513          	addi	a0,a0,-392 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80003648:	00001097          	auipc	ra,0x1
    8000364c:	b7c080e7          	jalr	-1156(ra) # 800041c4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003650:	0014849b          	addiw	s1,s1,1
    80003654:	0ff4f493          	andi	s1,s1,255
    80003658:	00500793          	li	a5,5
    8000365c:	fc97f0e3          	bgeu	a5,s1,8000361c <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80003660:	00005517          	auipc	a0,0x5
    80003664:	cc050513          	addi	a0,a0,-832 # 80008320 <CONSOLE_STATUS+0x310>
    80003668:	00001097          	auipc	ra,0x1
    8000366c:	b5c080e7          	jalr	-1188(ra) # 800041c4 <_Z11printStringPKc>
    finishedC = true;
    80003670:	00100793          	li	a5,1
    80003674:	00007717          	auipc	a4,0x7
    80003678:	bcf700a3          	sb	a5,-1087(a4) # 8000a235 <_ZL9finishedC>
    thread_dispatch();
    8000367c:	ffffe097          	auipc	ra,0xffffe
    80003680:	c74080e7          	jalr	-908(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003684:	01813083          	ld	ra,24(sp)
    80003688:	01013403          	ld	s0,16(sp)
    8000368c:	00813483          	ld	s1,8(sp)
    80003690:	00013903          	ld	s2,0(sp)
    80003694:	02010113          	addi	sp,sp,32
    80003698:	00008067          	ret

000000008000369c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000369c:	fe010113          	addi	sp,sp,-32
    800036a0:	00113c23          	sd	ra,24(sp)
    800036a4:	00813823          	sd	s0,16(sp)
    800036a8:	00913423          	sd	s1,8(sp)
    800036ac:	01213023          	sd	s2,0(sp)
    800036b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800036b4:	00000913          	li	s2,0
    800036b8:	0380006f          	j	800036f0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	c34080e7          	jalr	-972(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800036c4:	00148493          	addi	s1,s1,1
    800036c8:	000027b7          	lui	a5,0x2
    800036cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800036d0:	0097ee63          	bltu	a5,s1,800036ec <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800036d4:	00000713          	li	a4,0
    800036d8:	000077b7          	lui	a5,0x7
    800036dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036e0:	fce7eee3          	bltu	a5,a4,800036bc <_ZL11workerBodyBPv+0x20>
    800036e4:	00170713          	addi	a4,a4,1
    800036e8:	ff1ff06f          	j	800036d8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800036ec:	00190913          	addi	s2,s2,1
    800036f0:	00f00793          	li	a5,15
    800036f4:	0527e063          	bltu	a5,s2,80003734 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800036f8:	00005517          	auipc	a0,0x5
    800036fc:	b4850513          	addi	a0,a0,-1208 # 80008240 <CONSOLE_STATUS+0x230>
    80003700:	00001097          	auipc	ra,0x1
    80003704:	ac4080e7          	jalr	-1340(ra) # 800041c4 <_Z11printStringPKc>
    80003708:	00000613          	li	a2,0
    8000370c:	00a00593          	li	a1,10
    80003710:	0009051b          	sext.w	a0,s2
    80003714:	00001097          	auipc	ra,0x1
    80003718:	c60080e7          	jalr	-928(ra) # 80004374 <_Z8printIntiii>
    8000371c:	00005517          	auipc	a0,0x5
    80003720:	d9c50513          	addi	a0,a0,-612 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80003724:	00001097          	auipc	ra,0x1
    80003728:	aa0080e7          	jalr	-1376(ra) # 800041c4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000372c:	00000493          	li	s1,0
    80003730:	f99ff06f          	j	800036c8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003734:	00005517          	auipc	a0,0x5
    80003738:	b1450513          	addi	a0,a0,-1260 # 80008248 <CONSOLE_STATUS+0x238>
    8000373c:	00001097          	auipc	ra,0x1
    80003740:	a88080e7          	jalr	-1400(ra) # 800041c4 <_Z11printStringPKc>
    finishedB = true;
    80003744:	00100793          	li	a5,1
    80003748:	00007717          	auipc	a4,0x7
    8000374c:	aef70723          	sb	a5,-1298(a4) # 8000a236 <_ZL9finishedB>
    thread_dispatch();
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	ba0080e7          	jalr	-1120(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80003758:	01813083          	ld	ra,24(sp)
    8000375c:	01013403          	ld	s0,16(sp)
    80003760:	00813483          	ld	s1,8(sp)
    80003764:	00013903          	ld	s2,0(sp)
    80003768:	02010113          	addi	sp,sp,32
    8000376c:	00008067          	ret

0000000080003770 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003770:	fe010113          	addi	sp,sp,-32
    80003774:	00113c23          	sd	ra,24(sp)
    80003778:	00813823          	sd	s0,16(sp)
    8000377c:	00913423          	sd	s1,8(sp)
    80003780:	01213023          	sd	s2,0(sp)
    80003784:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003788:	00000913          	li	s2,0
    8000378c:	0380006f          	j	800037c4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	b60080e7          	jalr	-1184(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003798:	00148493          	addi	s1,s1,1
    8000379c:	000027b7          	lui	a5,0x2
    800037a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800037a4:	0097ee63          	bltu	a5,s1,800037c0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800037a8:	00000713          	li	a4,0
    800037ac:	000077b7          	lui	a5,0x7
    800037b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800037b4:	fce7eee3          	bltu	a5,a4,80003790 <_ZL11workerBodyAPv+0x20>
    800037b8:	00170713          	addi	a4,a4,1
    800037bc:	ff1ff06f          	j	800037ac <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800037c0:	00190913          	addi	s2,s2,1
    800037c4:	00900793          	li	a5,9
    800037c8:	0527e063          	bltu	a5,s2,80003808 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800037cc:	00005517          	auipc	a0,0x5
    800037d0:	a5c50513          	addi	a0,a0,-1444 # 80008228 <CONSOLE_STATUS+0x218>
    800037d4:	00001097          	auipc	ra,0x1
    800037d8:	9f0080e7          	jalr	-1552(ra) # 800041c4 <_Z11printStringPKc>
    800037dc:	00000613          	li	a2,0
    800037e0:	00a00593          	li	a1,10
    800037e4:	0009051b          	sext.w	a0,s2
    800037e8:	00001097          	auipc	ra,0x1
    800037ec:	b8c080e7          	jalr	-1140(ra) # 80004374 <_Z8printIntiii>
    800037f0:	00005517          	auipc	a0,0x5
    800037f4:	cc850513          	addi	a0,a0,-824 # 800084b8 <CONSOLE_STATUS+0x4a8>
    800037f8:	00001097          	auipc	ra,0x1
    800037fc:	9cc080e7          	jalr	-1588(ra) # 800041c4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003800:	00000493          	li	s1,0
    80003804:	f99ff06f          	j	8000379c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003808:	00005517          	auipc	a0,0x5
    8000380c:	a2850513          	addi	a0,a0,-1496 # 80008230 <CONSOLE_STATUS+0x220>
    80003810:	00001097          	auipc	ra,0x1
    80003814:	9b4080e7          	jalr	-1612(ra) # 800041c4 <_Z11printStringPKc>
    finishedA = true;
    80003818:	00100793          	li	a5,1
    8000381c:	00007717          	auipc	a4,0x7
    80003820:	a0f70da3          	sb	a5,-1509(a4) # 8000a237 <_ZL9finishedA>
}
    80003824:	01813083          	ld	ra,24(sp)
    80003828:	01013403          	ld	s0,16(sp)
    8000382c:	00813483          	ld	s1,8(sp)
    80003830:	00013903          	ld	s2,0(sp)
    80003834:	02010113          	addi	sp,sp,32
    80003838:	00008067          	ret

000000008000383c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000383c:	fd010113          	addi	sp,sp,-48
    80003840:	02113423          	sd	ra,40(sp)
    80003844:	02813023          	sd	s0,32(sp)
    80003848:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000384c:	00000613          	li	a2,0
    80003850:	00000597          	auipc	a1,0x0
    80003854:	f2058593          	addi	a1,a1,-224 # 80003770 <_ZL11workerBodyAPv>
    80003858:	fd040513          	addi	a0,s0,-48
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	9c0080e7          	jalr	-1600(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80003864:	00005517          	auipc	a0,0x5
    80003868:	a5c50513          	addi	a0,a0,-1444 # 800082c0 <CONSOLE_STATUS+0x2b0>
    8000386c:	00001097          	auipc	ra,0x1
    80003870:	958080e7          	jalr	-1704(ra) # 800041c4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003874:	00000613          	li	a2,0
    80003878:	00000597          	auipc	a1,0x0
    8000387c:	e2458593          	addi	a1,a1,-476 # 8000369c <_ZL11workerBodyBPv>
    80003880:	fd840513          	addi	a0,s0,-40
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	998080e7          	jalr	-1640(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    8000388c:	00005517          	auipc	a0,0x5
    80003890:	a4c50513          	addi	a0,a0,-1460 # 800082d8 <CONSOLE_STATUS+0x2c8>
    80003894:	00001097          	auipc	ra,0x1
    80003898:	930080e7          	jalr	-1744(ra) # 800041c4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000389c:	00000613          	li	a2,0
    800038a0:	00000597          	auipc	a1,0x0
    800038a4:	c7c58593          	addi	a1,a1,-900 # 8000351c <_ZL11workerBodyCPv>
    800038a8:	fe040513          	addi	a0,s0,-32
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	970080e7          	jalr	-1680(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    800038b4:	00005517          	auipc	a0,0x5
    800038b8:	a3c50513          	addi	a0,a0,-1476 # 800082f0 <CONSOLE_STATUS+0x2e0>
    800038bc:	00001097          	auipc	ra,0x1
    800038c0:	908080e7          	jalr	-1784(ra) # 800041c4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800038c4:	00000613          	li	a2,0
    800038c8:	00000597          	auipc	a1,0x0
    800038cc:	b0c58593          	addi	a1,a1,-1268 # 800033d4 <_ZL11workerBodyDPv>
    800038d0:	fe840513          	addi	a0,s0,-24
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	948080e7          	jalr	-1720(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    800038dc:	00005517          	auipc	a0,0x5
    800038e0:	a2c50513          	addi	a0,a0,-1492 # 80008308 <CONSOLE_STATUS+0x2f8>
    800038e4:	00001097          	auipc	ra,0x1
    800038e8:	8e0080e7          	jalr	-1824(ra) # 800041c4 <_Z11printStringPKc>
    800038ec:	00c0006f          	j	800038f8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	a00080e7          	jalr	-1536(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800038f8:	00007797          	auipc	a5,0x7
    800038fc:	93f7c783          	lbu	a5,-1729(a5) # 8000a237 <_ZL9finishedA>
    80003900:	fe0788e3          	beqz	a5,800038f0 <_Z18Threads_C_API_testv+0xb4>
    80003904:	00007797          	auipc	a5,0x7
    80003908:	9327c783          	lbu	a5,-1742(a5) # 8000a236 <_ZL9finishedB>
    8000390c:	fe0782e3          	beqz	a5,800038f0 <_Z18Threads_C_API_testv+0xb4>
    80003910:	00007797          	auipc	a5,0x7
    80003914:	9257c783          	lbu	a5,-1755(a5) # 8000a235 <_ZL9finishedC>
    80003918:	fc078ce3          	beqz	a5,800038f0 <_Z18Threads_C_API_testv+0xb4>
    8000391c:	00007797          	auipc	a5,0x7
    80003920:	9187c783          	lbu	a5,-1768(a5) # 8000a234 <_ZL9finishedD>
    80003924:	fc0786e3          	beqz	a5,800038f0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003928:	02813083          	ld	ra,40(sp)
    8000392c:	02013403          	ld	s0,32(sp)
    80003930:	03010113          	addi	sp,sp,48
    80003934:	00008067          	ret

0000000080003938 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003938:	fd010113          	addi	sp,sp,-48
    8000393c:	02113423          	sd	ra,40(sp)
    80003940:	02813023          	sd	s0,32(sp)
    80003944:	00913c23          	sd	s1,24(sp)
    80003948:	01213823          	sd	s2,16(sp)
    8000394c:	01313423          	sd	s3,8(sp)
    80003950:	03010413          	addi	s0,sp,48
    80003954:	00050993          	mv	s3,a0
    80003958:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000395c:	00000913          	li	s2,0
    80003960:	00c0006f          	j	8000396c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	264080e7          	jalr	612(ra) # 80001bc8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    8000396c:	ffffe097          	auipc	ra,0xffffe
    80003970:	a60080e7          	jalr	-1440(ra) # 800013cc <_Z4getcv>
    80003974:	0005059b          	sext.w	a1,a0
    80003978:	01b00793          	li	a5,27
    8000397c:	02f58a63          	beq	a1,a5,800039b0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80003980:	0084b503          	ld	a0,8(s1)
    80003984:	00001097          	auipc	ra,0x1
    80003988:	c64080e7          	jalr	-924(ra) # 800045e8 <_ZN9BufferCPP3putEi>
        i++;
    8000398c:	0019071b          	addiw	a4,s2,1
    80003990:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003994:	0004a683          	lw	a3,0(s1)
    80003998:	0026979b          	slliw	a5,a3,0x2
    8000399c:	00d787bb          	addw	a5,a5,a3
    800039a0:	0017979b          	slliw	a5,a5,0x1
    800039a4:	02f767bb          	remw	a5,a4,a5
    800039a8:	fc0792e3          	bnez	a5,8000396c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800039ac:	fb9ff06f          	j	80003964 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800039b0:	00100793          	li	a5,1
    800039b4:	00007717          	auipc	a4,0x7
    800039b8:	88f72223          	sw	a5,-1916(a4) # 8000a238 <_ZL9threadEnd>
    td->buffer->put('!');
    800039bc:	0209b783          	ld	a5,32(s3)
    800039c0:	02100593          	li	a1,33
    800039c4:	0087b503          	ld	a0,8(a5)
    800039c8:	00001097          	auipc	ra,0x1
    800039cc:	c20080e7          	jalr	-992(ra) # 800045e8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800039d0:	0104b503          	ld	a0,16(s1)
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	280080e7          	jalr	640(ra) # 80001c54 <_ZN9Semaphore6signalEv>
}
    800039dc:	02813083          	ld	ra,40(sp)
    800039e0:	02013403          	ld	s0,32(sp)
    800039e4:	01813483          	ld	s1,24(sp)
    800039e8:	01013903          	ld	s2,16(sp)
    800039ec:	00813983          	ld	s3,8(sp)
    800039f0:	03010113          	addi	sp,sp,48
    800039f4:	00008067          	ret

00000000800039f8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800039f8:	fe010113          	addi	sp,sp,-32
    800039fc:	00113c23          	sd	ra,24(sp)
    80003a00:	00813823          	sd	s0,16(sp)
    80003a04:	00913423          	sd	s1,8(sp)
    80003a08:	01213023          	sd	s2,0(sp)
    80003a0c:	02010413          	addi	s0,sp,32
    80003a10:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003a14:	00000913          	li	s2,0
    80003a18:	00c0006f          	j	80003a24 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003a1c:	ffffe097          	auipc	ra,0xffffe
    80003a20:	1ac080e7          	jalr	428(ra) # 80001bc8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80003a24:	00007797          	auipc	a5,0x7
    80003a28:	8147a783          	lw	a5,-2028(a5) # 8000a238 <_ZL9threadEnd>
    80003a2c:	02079e63          	bnez	a5,80003a68 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80003a30:	0004a583          	lw	a1,0(s1)
    80003a34:	0305859b          	addiw	a1,a1,48
    80003a38:	0084b503          	ld	a0,8(s1)
    80003a3c:	00001097          	auipc	ra,0x1
    80003a40:	bac080e7          	jalr	-1108(ra) # 800045e8 <_ZN9BufferCPP3putEi>
        i++;
    80003a44:	0019071b          	addiw	a4,s2,1
    80003a48:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003a4c:	0004a683          	lw	a3,0(s1)
    80003a50:	0026979b          	slliw	a5,a3,0x2
    80003a54:	00d787bb          	addw	a5,a5,a3
    80003a58:	0017979b          	slliw	a5,a5,0x1
    80003a5c:	02f767bb          	remw	a5,a4,a5
    80003a60:	fc0792e3          	bnez	a5,80003a24 <_ZN12ProducerSync8producerEPv+0x2c>
    80003a64:	fb9ff06f          	j	80003a1c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80003a68:	0104b503          	ld	a0,16(s1)
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	1e8080e7          	jalr	488(ra) # 80001c54 <_ZN9Semaphore6signalEv>
}
    80003a74:	01813083          	ld	ra,24(sp)
    80003a78:	01013403          	ld	s0,16(sp)
    80003a7c:	00813483          	ld	s1,8(sp)
    80003a80:	00013903          	ld	s2,0(sp)
    80003a84:	02010113          	addi	sp,sp,32
    80003a88:	00008067          	ret

0000000080003a8c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80003a8c:	fd010113          	addi	sp,sp,-48
    80003a90:	02113423          	sd	ra,40(sp)
    80003a94:	02813023          	sd	s0,32(sp)
    80003a98:	00913c23          	sd	s1,24(sp)
    80003a9c:	01213823          	sd	s2,16(sp)
    80003aa0:	01313423          	sd	s3,8(sp)
    80003aa4:	01413023          	sd	s4,0(sp)
    80003aa8:	03010413          	addi	s0,sp,48
    80003aac:	00050993          	mv	s3,a0
    80003ab0:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003ab4:	00000a13          	li	s4,0
    80003ab8:	01c0006f          	j	80003ad4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80003abc:	ffffe097          	auipc	ra,0xffffe
    80003ac0:	10c080e7          	jalr	268(ra) # 80001bc8 <_ZN6Thread8dispatchEv>
    80003ac4:	0500006f          	j	80003b14 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003ac8:	00a00513          	li	a0,10
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	928080e7          	jalr	-1752(ra) # 800013f4 <_Z4putcc>
    while (!threadEnd) {
    80003ad4:	00006797          	auipc	a5,0x6
    80003ad8:	7647a783          	lw	a5,1892(a5) # 8000a238 <_ZL9threadEnd>
    80003adc:	06079263          	bnez	a5,80003b40 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80003ae0:	00893503          	ld	a0,8(s2)
    80003ae4:	00001097          	auipc	ra,0x1
    80003ae8:	b94080e7          	jalr	-1132(ra) # 80004678 <_ZN9BufferCPP3getEv>
        i++;
    80003aec:	001a049b          	addiw	s1,s4,1
    80003af0:	00048a1b          	sext.w	s4,s1
        putc(key);
    80003af4:	0ff57513          	andi	a0,a0,255
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	8fc080e7          	jalr	-1796(ra) # 800013f4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003b00:	00092703          	lw	a4,0(s2)
    80003b04:	0027179b          	slliw	a5,a4,0x2
    80003b08:	00e787bb          	addw	a5,a5,a4
    80003b0c:	02f4e7bb          	remw	a5,s1,a5
    80003b10:	fa0786e3          	beqz	a5,80003abc <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80003b14:	05000793          	li	a5,80
    80003b18:	02f4e4bb          	remw	s1,s1,a5
    80003b1c:	fa049ce3          	bnez	s1,80003ad4 <_ZN12ConsumerSync8consumerEPv+0x48>
    80003b20:	fa9ff06f          	j	80003ac8 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80003b24:	0209b783          	ld	a5,32(s3)
    80003b28:	0087b503          	ld	a0,8(a5)
    80003b2c:	00001097          	auipc	ra,0x1
    80003b30:	b4c080e7          	jalr	-1204(ra) # 80004678 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80003b34:	0ff57513          	andi	a0,a0,255
    80003b38:	ffffe097          	auipc	ra,0xffffe
    80003b3c:	170080e7          	jalr	368(ra) # 80001ca8 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80003b40:	0209b783          	ld	a5,32(s3)
    80003b44:	0087b503          	ld	a0,8(a5)
    80003b48:	00001097          	auipc	ra,0x1
    80003b4c:	bbc080e7          	jalr	-1092(ra) # 80004704 <_ZN9BufferCPP6getCntEv>
    80003b50:	fca04ae3          	bgtz	a0,80003b24 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80003b54:	01093503          	ld	a0,16(s2)
    80003b58:	ffffe097          	auipc	ra,0xffffe
    80003b5c:	0fc080e7          	jalr	252(ra) # 80001c54 <_ZN9Semaphore6signalEv>
}
    80003b60:	02813083          	ld	ra,40(sp)
    80003b64:	02013403          	ld	s0,32(sp)
    80003b68:	01813483          	ld	s1,24(sp)
    80003b6c:	01013903          	ld	s2,16(sp)
    80003b70:	00813983          	ld	s3,8(sp)
    80003b74:	00013a03          	ld	s4,0(sp)
    80003b78:	03010113          	addi	sp,sp,48
    80003b7c:	00008067          	ret

0000000080003b80 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80003b80:	f8010113          	addi	sp,sp,-128
    80003b84:	06113c23          	sd	ra,120(sp)
    80003b88:	06813823          	sd	s0,112(sp)
    80003b8c:	06913423          	sd	s1,104(sp)
    80003b90:	07213023          	sd	s2,96(sp)
    80003b94:	05313c23          	sd	s3,88(sp)
    80003b98:	05413823          	sd	s4,80(sp)
    80003b9c:	05513423          	sd	s5,72(sp)
    80003ba0:	05613023          	sd	s6,64(sp)
    80003ba4:	03713c23          	sd	s7,56(sp)
    80003ba8:	03813823          	sd	s8,48(sp)
    80003bac:	03913423          	sd	s9,40(sp)
    80003bb0:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80003bb4:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80003bb8:	00004517          	auipc	a0,0x4
    80003bbc:	58850513          	addi	a0,a0,1416 # 80008140 <CONSOLE_STATUS+0x130>
    80003bc0:	00000097          	auipc	ra,0x0
    80003bc4:	604080e7          	jalr	1540(ra) # 800041c4 <_Z11printStringPKc>
    getString(input, 30);
    80003bc8:	01e00593          	li	a1,30
    80003bcc:	f8040493          	addi	s1,s0,-128
    80003bd0:	00048513          	mv	a0,s1
    80003bd4:	00000097          	auipc	ra,0x0
    80003bd8:	678080e7          	jalr	1656(ra) # 8000424c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003bdc:	00048513          	mv	a0,s1
    80003be0:	00000097          	auipc	ra,0x0
    80003be4:	744080e7          	jalr	1860(ra) # 80004324 <_Z11stringToIntPKc>
    80003be8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003bec:	00004517          	auipc	a0,0x4
    80003bf0:	57450513          	addi	a0,a0,1396 # 80008160 <CONSOLE_STATUS+0x150>
    80003bf4:	00000097          	auipc	ra,0x0
    80003bf8:	5d0080e7          	jalr	1488(ra) # 800041c4 <_Z11printStringPKc>
    getString(input, 30);
    80003bfc:	01e00593          	li	a1,30
    80003c00:	00048513          	mv	a0,s1
    80003c04:	00000097          	auipc	ra,0x0
    80003c08:	648080e7          	jalr	1608(ra) # 8000424c <_Z9getStringPci>
    n = stringToInt(input);
    80003c0c:	00048513          	mv	a0,s1
    80003c10:	00000097          	auipc	ra,0x0
    80003c14:	714080e7          	jalr	1812(ra) # 80004324 <_Z11stringToIntPKc>
    80003c18:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003c1c:	00004517          	auipc	a0,0x4
    80003c20:	56450513          	addi	a0,a0,1380 # 80008180 <CONSOLE_STATUS+0x170>
    80003c24:	00000097          	auipc	ra,0x0
    80003c28:	5a0080e7          	jalr	1440(ra) # 800041c4 <_Z11printStringPKc>
    80003c2c:	00000613          	li	a2,0
    80003c30:	00a00593          	li	a1,10
    80003c34:	00090513          	mv	a0,s2
    80003c38:	00000097          	auipc	ra,0x0
    80003c3c:	73c080e7          	jalr	1852(ra) # 80004374 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003c40:	00004517          	auipc	a0,0x4
    80003c44:	55850513          	addi	a0,a0,1368 # 80008198 <CONSOLE_STATUS+0x188>
    80003c48:	00000097          	auipc	ra,0x0
    80003c4c:	57c080e7          	jalr	1404(ra) # 800041c4 <_Z11printStringPKc>
    80003c50:	00000613          	li	a2,0
    80003c54:	00a00593          	li	a1,10
    80003c58:	00048513          	mv	a0,s1
    80003c5c:	00000097          	auipc	ra,0x0
    80003c60:	718080e7          	jalr	1816(ra) # 80004374 <_Z8printIntiii>
    printString(".\n");
    80003c64:	00004517          	auipc	a0,0x4
    80003c68:	54c50513          	addi	a0,a0,1356 # 800081b0 <CONSOLE_STATUS+0x1a0>
    80003c6c:	00000097          	auipc	ra,0x0
    80003c70:	558080e7          	jalr	1368(ra) # 800041c4 <_Z11printStringPKc>
    if(threadNum > n) {
    80003c74:	0324c463          	blt	s1,s2,80003c9c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80003c78:	03205c63          	blez	s2,80003cb0 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003c7c:	03800513          	li	a0,56
    80003c80:	ffffe097          	auipc	ra,0xffffe
    80003c84:	d74080e7          	jalr	-652(ra) # 800019f4 <_Znwm>
    80003c88:	00050a93          	mv	s5,a0
    80003c8c:	00048593          	mv	a1,s1
    80003c90:	00001097          	auipc	ra,0x1
    80003c94:	804080e7          	jalr	-2044(ra) # 80004494 <_ZN9BufferCPPC1Ei>
    80003c98:	0300006f          	j	80003cc8 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003c9c:	00004517          	auipc	a0,0x4
    80003ca0:	51c50513          	addi	a0,a0,1308 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	520080e7          	jalr	1312(ra) # 800041c4 <_Z11printStringPKc>
        return;
    80003cac:	0140006f          	j	80003cc0 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003cb0:	00004517          	auipc	a0,0x4
    80003cb4:	54850513          	addi	a0,a0,1352 # 800081f8 <CONSOLE_STATUS+0x1e8>
    80003cb8:	00000097          	auipc	ra,0x0
    80003cbc:	50c080e7          	jalr	1292(ra) # 800041c4 <_Z11printStringPKc>
        return;
    80003cc0:	000b8113          	mv	sp,s7
    80003cc4:	2380006f          	j	80003efc <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80003cc8:	01000513          	li	a0,16
    80003ccc:	ffffe097          	auipc	ra,0xffffe
    80003cd0:	d28080e7          	jalr	-728(ra) # 800019f4 <_Znwm>
    80003cd4:	00050493          	mv	s1,a0
    80003cd8:	00000593          	li	a1,0
    80003cdc:	ffffe097          	auipc	ra,0xffffe
    80003ce0:	f14080e7          	jalr	-236(ra) # 80001bf0 <_ZN9SemaphoreC1Ej>
    80003ce4:	00006797          	auipc	a5,0x6
    80003ce8:	5497be23          	sd	s1,1372(a5) # 8000a240 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80003cec:	00391793          	slli	a5,s2,0x3
    80003cf0:	00f78793          	addi	a5,a5,15
    80003cf4:	ff07f793          	andi	a5,a5,-16
    80003cf8:	40f10133          	sub	sp,sp,a5
    80003cfc:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80003d00:	0019071b          	addiw	a4,s2,1
    80003d04:	00171793          	slli	a5,a4,0x1
    80003d08:	00e787b3          	add	a5,a5,a4
    80003d0c:	00379793          	slli	a5,a5,0x3
    80003d10:	00f78793          	addi	a5,a5,15
    80003d14:	ff07f793          	andi	a5,a5,-16
    80003d18:	40f10133          	sub	sp,sp,a5
    80003d1c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80003d20:	00191c13          	slli	s8,s2,0x1
    80003d24:	012c07b3          	add	a5,s8,s2
    80003d28:	00379793          	slli	a5,a5,0x3
    80003d2c:	00fa07b3          	add	a5,s4,a5
    80003d30:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003d34:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80003d38:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80003d3c:	02800513          	li	a0,40
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	cb4080e7          	jalr	-844(ra) # 800019f4 <_Znwm>
    80003d48:	00050b13          	mv	s6,a0
    80003d4c:	012c0c33          	add	s8,s8,s2
    80003d50:	003c1c13          	slli	s8,s8,0x3
    80003d54:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80003d58:	ffffe097          	auipc	ra,0xffffe
    80003d5c:	dec080e7          	jalr	-532(ra) # 80001b44 <_ZN6ThreadC1Ev>
    80003d60:	00006797          	auipc	a5,0x6
    80003d64:	3e078793          	addi	a5,a5,992 # 8000a140 <_ZTV12ConsumerSync+0x10>
    80003d68:	00fb3023          	sd	a5,0(s6)
    80003d6c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80003d70:	000b0513          	mv	a0,s6
    80003d74:	ffffe097          	auipc	ra,0xffffe
    80003d78:	e00080e7          	jalr	-512(ra) # 80001b74 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003d7c:	00000493          	li	s1,0
    80003d80:	0380006f          	j	80003db8 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80003d84:	00006797          	auipc	a5,0x6
    80003d88:	39478793          	addi	a5,a5,916 # 8000a118 <_ZTV12ProducerSync+0x10>
    80003d8c:	00fcb023          	sd	a5,0(s9)
    80003d90:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80003d94:	00349793          	slli	a5,s1,0x3
    80003d98:	00f987b3          	add	a5,s3,a5
    80003d9c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80003da0:	00349793          	slli	a5,s1,0x3
    80003da4:	00f987b3          	add	a5,s3,a5
    80003da8:	0007b503          	ld	a0,0(a5)
    80003dac:	ffffe097          	auipc	ra,0xffffe
    80003db0:	dc8080e7          	jalr	-568(ra) # 80001b74 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003db4:	0014849b          	addiw	s1,s1,1
    80003db8:	0b24d063          	bge	s1,s2,80003e58 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80003dbc:	00149793          	slli	a5,s1,0x1
    80003dc0:	009787b3          	add	a5,a5,s1
    80003dc4:	00379793          	slli	a5,a5,0x3
    80003dc8:	00fa07b3          	add	a5,s4,a5
    80003dcc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003dd0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80003dd4:	00006717          	auipc	a4,0x6
    80003dd8:	46c73703          	ld	a4,1132(a4) # 8000a240 <_ZL10waitForAll>
    80003ddc:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80003de0:	02905863          	blez	s1,80003e10 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80003de4:	02800513          	li	a0,40
    80003de8:	ffffe097          	auipc	ra,0xffffe
    80003dec:	c0c080e7          	jalr	-1012(ra) # 800019f4 <_Znwm>
    80003df0:	00050c93          	mv	s9,a0
    80003df4:	00149c13          	slli	s8,s1,0x1
    80003df8:	009c0c33          	add	s8,s8,s1
    80003dfc:	003c1c13          	slli	s8,s8,0x3
    80003e00:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80003e04:	ffffe097          	auipc	ra,0xffffe
    80003e08:	d40080e7          	jalr	-704(ra) # 80001b44 <_ZN6ThreadC1Ev>
    80003e0c:	f79ff06f          	j	80003d84 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80003e10:	02800513          	li	a0,40
    80003e14:	ffffe097          	auipc	ra,0xffffe
    80003e18:	be0080e7          	jalr	-1056(ra) # 800019f4 <_Znwm>
    80003e1c:	00050c93          	mv	s9,a0
    80003e20:	00149c13          	slli	s8,s1,0x1
    80003e24:	009c0c33          	add	s8,s8,s1
    80003e28:	003c1c13          	slli	s8,s8,0x3
    80003e2c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80003e30:	ffffe097          	auipc	ra,0xffffe
    80003e34:	d14080e7          	jalr	-748(ra) # 80001b44 <_ZN6ThreadC1Ev>
    80003e38:	00006797          	auipc	a5,0x6
    80003e3c:	2b878793          	addi	a5,a5,696 # 8000a0f0 <_ZTV16ProducerKeyboard+0x10>
    80003e40:	00fcb023          	sd	a5,0(s9)
    80003e44:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80003e48:	00349793          	slli	a5,s1,0x3
    80003e4c:	00f987b3          	add	a5,s3,a5
    80003e50:	0197b023          	sd	s9,0(a5)
    80003e54:	f4dff06f          	j	80003da0 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80003e58:	ffffe097          	auipc	ra,0xffffe
    80003e5c:	d70080e7          	jalr	-656(ra) # 80001bc8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003e60:	00000493          	li	s1,0
    80003e64:	00994e63          	blt	s2,s1,80003e80 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80003e68:	00006517          	auipc	a0,0x6
    80003e6c:	3d853503          	ld	a0,984(a0) # 8000a240 <_ZL10waitForAll>
    80003e70:	ffffe097          	auipc	ra,0xffffe
    80003e74:	db8080e7          	jalr	-584(ra) # 80001c28 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003e78:	0014849b          	addiw	s1,s1,1
    80003e7c:	fe9ff06f          	j	80003e64 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80003e80:	00000493          	li	s1,0
    80003e84:	0080006f          	j	80003e8c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80003e88:	0014849b          	addiw	s1,s1,1
    80003e8c:	0324d263          	bge	s1,s2,80003eb0 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80003e90:	00349793          	slli	a5,s1,0x3
    80003e94:	00f987b3          	add	a5,s3,a5
    80003e98:	0007b503          	ld	a0,0(a5)
    80003e9c:	fe0506e3          	beqz	a0,80003e88 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80003ea0:	00053783          	ld	a5,0(a0)
    80003ea4:	0087b783          	ld	a5,8(a5)
    80003ea8:	000780e7          	jalr	a5
    80003eac:	fddff06f          	j	80003e88 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80003eb0:	000b0a63          	beqz	s6,80003ec4 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80003eb4:	000b3783          	ld	a5,0(s6)
    80003eb8:	0087b783          	ld	a5,8(a5)
    80003ebc:	000b0513          	mv	a0,s6
    80003ec0:	000780e7          	jalr	a5
    delete waitForAll;
    80003ec4:	00006517          	auipc	a0,0x6
    80003ec8:	37c53503          	ld	a0,892(a0) # 8000a240 <_ZL10waitForAll>
    80003ecc:	00050863          	beqz	a0,80003edc <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80003ed0:	00053783          	ld	a5,0(a0)
    80003ed4:	0087b783          	ld	a5,8(a5)
    80003ed8:	000780e7          	jalr	a5
    delete buffer;
    80003edc:	000a8e63          	beqz	s5,80003ef8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80003ee0:	000a8513          	mv	a0,s5
    80003ee4:	00001097          	auipc	ra,0x1
    80003ee8:	8a8080e7          	jalr	-1880(ra) # 8000478c <_ZN9BufferCPPD1Ev>
    80003eec:	000a8513          	mv	a0,s5
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	b2c080e7          	jalr	-1236(ra) # 80001a1c <_ZdlPv>
    80003ef8:	000b8113          	mv	sp,s7

}
    80003efc:	f8040113          	addi	sp,s0,-128
    80003f00:	07813083          	ld	ra,120(sp)
    80003f04:	07013403          	ld	s0,112(sp)
    80003f08:	06813483          	ld	s1,104(sp)
    80003f0c:	06013903          	ld	s2,96(sp)
    80003f10:	05813983          	ld	s3,88(sp)
    80003f14:	05013a03          	ld	s4,80(sp)
    80003f18:	04813a83          	ld	s5,72(sp)
    80003f1c:	04013b03          	ld	s6,64(sp)
    80003f20:	03813b83          	ld	s7,56(sp)
    80003f24:	03013c03          	ld	s8,48(sp)
    80003f28:	02813c83          	ld	s9,40(sp)
    80003f2c:	08010113          	addi	sp,sp,128
    80003f30:	00008067          	ret
    80003f34:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003f38:	000a8513          	mv	a0,s5
    80003f3c:	ffffe097          	auipc	ra,0xffffe
    80003f40:	ae0080e7          	jalr	-1312(ra) # 80001a1c <_ZdlPv>
    80003f44:	00048513          	mv	a0,s1
    80003f48:	00007097          	auipc	ra,0x7
    80003f4c:	3e0080e7          	jalr	992(ra) # 8000b328 <_Unwind_Resume>
    80003f50:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80003f54:	00048513          	mv	a0,s1
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	ac4080e7          	jalr	-1340(ra) # 80001a1c <_ZdlPv>
    80003f60:	00090513          	mv	a0,s2
    80003f64:	00007097          	auipc	ra,0x7
    80003f68:	3c4080e7          	jalr	964(ra) # 8000b328 <_Unwind_Resume>
    80003f6c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80003f70:	000b0513          	mv	a0,s6
    80003f74:	ffffe097          	auipc	ra,0xffffe
    80003f78:	aa8080e7          	jalr	-1368(ra) # 80001a1c <_ZdlPv>
    80003f7c:	00048513          	mv	a0,s1
    80003f80:	00007097          	auipc	ra,0x7
    80003f84:	3a8080e7          	jalr	936(ra) # 8000b328 <_Unwind_Resume>
    80003f88:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80003f8c:	000c8513          	mv	a0,s9
    80003f90:	ffffe097          	auipc	ra,0xffffe
    80003f94:	a8c080e7          	jalr	-1396(ra) # 80001a1c <_ZdlPv>
    80003f98:	00048513          	mv	a0,s1
    80003f9c:	00007097          	auipc	ra,0x7
    80003fa0:	38c080e7          	jalr	908(ra) # 8000b328 <_Unwind_Resume>
    80003fa4:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80003fa8:	000c8513          	mv	a0,s9
    80003fac:	ffffe097          	auipc	ra,0xffffe
    80003fb0:	a70080e7          	jalr	-1424(ra) # 80001a1c <_ZdlPv>
    80003fb4:	00048513          	mv	a0,s1
    80003fb8:	00007097          	auipc	ra,0x7
    80003fbc:	370080e7          	jalr	880(ra) # 8000b328 <_Unwind_Resume>

0000000080003fc0 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80003fc0:	ff010113          	addi	sp,sp,-16
    80003fc4:	00113423          	sd	ra,8(sp)
    80003fc8:	00813023          	sd	s0,0(sp)
    80003fcc:	01010413          	addi	s0,sp,16
    80003fd0:	00006797          	auipc	a5,0x6
    80003fd4:	17078793          	addi	a5,a5,368 # 8000a140 <_ZTV12ConsumerSync+0x10>
    80003fd8:	00f53023          	sd	a5,0(a0)
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	96c080e7          	jalr	-1684(ra) # 80001948 <_ZN6ThreadD1Ev>
    80003fe4:	00813083          	ld	ra,8(sp)
    80003fe8:	00013403          	ld	s0,0(sp)
    80003fec:	01010113          	addi	sp,sp,16
    80003ff0:	00008067          	ret

0000000080003ff4 <_ZN12ConsumerSyncD0Ev>:
    80003ff4:	fe010113          	addi	sp,sp,-32
    80003ff8:	00113c23          	sd	ra,24(sp)
    80003ffc:	00813823          	sd	s0,16(sp)
    80004000:	00913423          	sd	s1,8(sp)
    80004004:	02010413          	addi	s0,sp,32
    80004008:	00050493          	mv	s1,a0
    8000400c:	00006797          	auipc	a5,0x6
    80004010:	13478793          	addi	a5,a5,308 # 8000a140 <_ZTV12ConsumerSync+0x10>
    80004014:	00f53023          	sd	a5,0(a0)
    80004018:	ffffe097          	auipc	ra,0xffffe
    8000401c:	930080e7          	jalr	-1744(ra) # 80001948 <_ZN6ThreadD1Ev>
    80004020:	00048513          	mv	a0,s1
    80004024:	ffffe097          	auipc	ra,0xffffe
    80004028:	9f8080e7          	jalr	-1544(ra) # 80001a1c <_ZdlPv>
    8000402c:	01813083          	ld	ra,24(sp)
    80004030:	01013403          	ld	s0,16(sp)
    80004034:	00813483          	ld	s1,8(sp)
    80004038:	02010113          	addi	sp,sp,32
    8000403c:	00008067          	ret

0000000080004040 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004040:	ff010113          	addi	sp,sp,-16
    80004044:	00113423          	sd	ra,8(sp)
    80004048:	00813023          	sd	s0,0(sp)
    8000404c:	01010413          	addi	s0,sp,16
    80004050:	00006797          	auipc	a5,0x6
    80004054:	0c878793          	addi	a5,a5,200 # 8000a118 <_ZTV12ProducerSync+0x10>
    80004058:	00f53023          	sd	a5,0(a0)
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	8ec080e7          	jalr	-1812(ra) # 80001948 <_ZN6ThreadD1Ev>
    80004064:	00813083          	ld	ra,8(sp)
    80004068:	00013403          	ld	s0,0(sp)
    8000406c:	01010113          	addi	sp,sp,16
    80004070:	00008067          	ret

0000000080004074 <_ZN12ProducerSyncD0Ev>:
    80004074:	fe010113          	addi	sp,sp,-32
    80004078:	00113c23          	sd	ra,24(sp)
    8000407c:	00813823          	sd	s0,16(sp)
    80004080:	00913423          	sd	s1,8(sp)
    80004084:	02010413          	addi	s0,sp,32
    80004088:	00050493          	mv	s1,a0
    8000408c:	00006797          	auipc	a5,0x6
    80004090:	08c78793          	addi	a5,a5,140 # 8000a118 <_ZTV12ProducerSync+0x10>
    80004094:	00f53023          	sd	a5,0(a0)
    80004098:	ffffe097          	auipc	ra,0xffffe
    8000409c:	8b0080e7          	jalr	-1872(ra) # 80001948 <_ZN6ThreadD1Ev>
    800040a0:	00048513          	mv	a0,s1
    800040a4:	ffffe097          	auipc	ra,0xffffe
    800040a8:	978080e7          	jalr	-1672(ra) # 80001a1c <_ZdlPv>
    800040ac:	01813083          	ld	ra,24(sp)
    800040b0:	01013403          	ld	s0,16(sp)
    800040b4:	00813483          	ld	s1,8(sp)
    800040b8:	02010113          	addi	sp,sp,32
    800040bc:	00008067          	ret

00000000800040c0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800040c0:	ff010113          	addi	sp,sp,-16
    800040c4:	00113423          	sd	ra,8(sp)
    800040c8:	00813023          	sd	s0,0(sp)
    800040cc:	01010413          	addi	s0,sp,16
    800040d0:	00006797          	auipc	a5,0x6
    800040d4:	02078793          	addi	a5,a5,32 # 8000a0f0 <_ZTV16ProducerKeyboard+0x10>
    800040d8:	00f53023          	sd	a5,0(a0)
    800040dc:	ffffe097          	auipc	ra,0xffffe
    800040e0:	86c080e7          	jalr	-1940(ra) # 80001948 <_ZN6ThreadD1Ev>
    800040e4:	00813083          	ld	ra,8(sp)
    800040e8:	00013403          	ld	s0,0(sp)
    800040ec:	01010113          	addi	sp,sp,16
    800040f0:	00008067          	ret

00000000800040f4 <_ZN16ProducerKeyboardD0Ev>:
    800040f4:	fe010113          	addi	sp,sp,-32
    800040f8:	00113c23          	sd	ra,24(sp)
    800040fc:	00813823          	sd	s0,16(sp)
    80004100:	00913423          	sd	s1,8(sp)
    80004104:	02010413          	addi	s0,sp,32
    80004108:	00050493          	mv	s1,a0
    8000410c:	00006797          	auipc	a5,0x6
    80004110:	fe478793          	addi	a5,a5,-28 # 8000a0f0 <_ZTV16ProducerKeyboard+0x10>
    80004114:	00f53023          	sd	a5,0(a0)
    80004118:	ffffe097          	auipc	ra,0xffffe
    8000411c:	830080e7          	jalr	-2000(ra) # 80001948 <_ZN6ThreadD1Ev>
    80004120:	00048513          	mv	a0,s1
    80004124:	ffffe097          	auipc	ra,0xffffe
    80004128:	8f8080e7          	jalr	-1800(ra) # 80001a1c <_ZdlPv>
    8000412c:	01813083          	ld	ra,24(sp)
    80004130:	01013403          	ld	s0,16(sp)
    80004134:	00813483          	ld	s1,8(sp)
    80004138:	02010113          	addi	sp,sp,32
    8000413c:	00008067          	ret

0000000080004140 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004140:	ff010113          	addi	sp,sp,-16
    80004144:	00113423          	sd	ra,8(sp)
    80004148:	00813023          	sd	s0,0(sp)
    8000414c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004150:	02053583          	ld	a1,32(a0)
    80004154:	fffff097          	auipc	ra,0xfffff
    80004158:	7e4080e7          	jalr	2020(ra) # 80003938 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000415c:	00813083          	ld	ra,8(sp)
    80004160:	00013403          	ld	s0,0(sp)
    80004164:	01010113          	addi	sp,sp,16
    80004168:	00008067          	ret

000000008000416c <_ZN12ProducerSync3runEv>:
    void run() override {
    8000416c:	ff010113          	addi	sp,sp,-16
    80004170:	00113423          	sd	ra,8(sp)
    80004174:	00813023          	sd	s0,0(sp)
    80004178:	01010413          	addi	s0,sp,16
        producer(td);
    8000417c:	02053583          	ld	a1,32(a0)
    80004180:	00000097          	auipc	ra,0x0
    80004184:	878080e7          	jalr	-1928(ra) # 800039f8 <_ZN12ProducerSync8producerEPv>
    }
    80004188:	00813083          	ld	ra,8(sp)
    8000418c:	00013403          	ld	s0,0(sp)
    80004190:	01010113          	addi	sp,sp,16
    80004194:	00008067          	ret

0000000080004198 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004198:	ff010113          	addi	sp,sp,-16
    8000419c:	00113423          	sd	ra,8(sp)
    800041a0:	00813023          	sd	s0,0(sp)
    800041a4:	01010413          	addi	s0,sp,16
        consumer(td);
    800041a8:	02053583          	ld	a1,32(a0)
    800041ac:	00000097          	auipc	ra,0x0
    800041b0:	8e0080e7          	jalr	-1824(ra) # 80003a8c <_ZN12ConsumerSync8consumerEPv>
    }
    800041b4:	00813083          	ld	ra,8(sp)
    800041b8:	00013403          	ld	s0,0(sp)
    800041bc:	01010113          	addi	sp,sp,16
    800041c0:	00008067          	ret

00000000800041c4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800041c4:	fe010113          	addi	sp,sp,-32
    800041c8:	00113c23          	sd	ra,24(sp)
    800041cc:	00813823          	sd	s0,16(sp)
    800041d0:	00913423          	sd	s1,8(sp)
    800041d4:	02010413          	addi	s0,sp,32
    800041d8:	00050493          	mv	s1,a0
    LOCK();
    800041dc:	00100613          	li	a2,1
    800041e0:	00000593          	li	a1,0
    800041e4:	00006517          	auipc	a0,0x6
    800041e8:	06450513          	addi	a0,a0,100 # 8000a248 <lockPrint>
    800041ec:	ffffd097          	auipc	ra,0xffffd
    800041f0:	f58080e7          	jalr	-168(ra) # 80001144 <copy_and_swap>
    800041f4:	00050863          	beqz	a0,80004204 <_Z11printStringPKc+0x40>
    800041f8:	ffffd097          	auipc	ra,0xffffd
    800041fc:	0f8080e7          	jalr	248(ra) # 800012f0 <_Z15thread_dispatchv>
    80004200:	fddff06f          	j	800041dc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004204:	0004c503          	lbu	a0,0(s1)
    80004208:	00050a63          	beqz	a0,8000421c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    8000420c:	ffffd097          	auipc	ra,0xffffd
    80004210:	1e8080e7          	jalr	488(ra) # 800013f4 <_Z4putcc>
        string++;
    80004214:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004218:	fedff06f          	j	80004204 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000421c:	00000613          	li	a2,0
    80004220:	00100593          	li	a1,1
    80004224:	00006517          	auipc	a0,0x6
    80004228:	02450513          	addi	a0,a0,36 # 8000a248 <lockPrint>
    8000422c:	ffffd097          	auipc	ra,0xffffd
    80004230:	f18080e7          	jalr	-232(ra) # 80001144 <copy_and_swap>
    80004234:	fe0514e3          	bnez	a0,8000421c <_Z11printStringPKc+0x58>
}
    80004238:	01813083          	ld	ra,24(sp)
    8000423c:	01013403          	ld	s0,16(sp)
    80004240:	00813483          	ld	s1,8(sp)
    80004244:	02010113          	addi	sp,sp,32
    80004248:	00008067          	ret

000000008000424c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000424c:	fd010113          	addi	sp,sp,-48
    80004250:	02113423          	sd	ra,40(sp)
    80004254:	02813023          	sd	s0,32(sp)
    80004258:	00913c23          	sd	s1,24(sp)
    8000425c:	01213823          	sd	s2,16(sp)
    80004260:	01313423          	sd	s3,8(sp)
    80004264:	01413023          	sd	s4,0(sp)
    80004268:	03010413          	addi	s0,sp,48
    8000426c:	00050993          	mv	s3,a0
    80004270:	00058a13          	mv	s4,a1
    LOCK();
    80004274:	00100613          	li	a2,1
    80004278:	00000593          	li	a1,0
    8000427c:	00006517          	auipc	a0,0x6
    80004280:	fcc50513          	addi	a0,a0,-52 # 8000a248 <lockPrint>
    80004284:	ffffd097          	auipc	ra,0xffffd
    80004288:	ec0080e7          	jalr	-320(ra) # 80001144 <copy_and_swap>
    8000428c:	00050863          	beqz	a0,8000429c <_Z9getStringPci+0x50>
    80004290:	ffffd097          	auipc	ra,0xffffd
    80004294:	060080e7          	jalr	96(ra) # 800012f0 <_Z15thread_dispatchv>
    80004298:	fddff06f          	j	80004274 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000429c:	00000913          	li	s2,0
    800042a0:	00090493          	mv	s1,s2
    800042a4:	0019091b          	addiw	s2,s2,1
    800042a8:	03495a63          	bge	s2,s4,800042dc <_Z9getStringPci+0x90>
        cc = getc();
    800042ac:	ffffd097          	auipc	ra,0xffffd
    800042b0:	120080e7          	jalr	288(ra) # 800013cc <_Z4getcv>
        if(cc < 1)
    800042b4:	02050463          	beqz	a0,800042dc <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800042b8:	009984b3          	add	s1,s3,s1
    800042bc:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800042c0:	00a00793          	li	a5,10
    800042c4:	00f50a63          	beq	a0,a5,800042d8 <_Z9getStringPci+0x8c>
    800042c8:	00d00793          	li	a5,13
    800042cc:	fcf51ae3          	bne	a0,a5,800042a0 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800042d0:	00090493          	mv	s1,s2
    800042d4:	0080006f          	j	800042dc <_Z9getStringPci+0x90>
    800042d8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800042dc:	009984b3          	add	s1,s3,s1
    800042e0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800042e4:	00000613          	li	a2,0
    800042e8:	00100593          	li	a1,1
    800042ec:	00006517          	auipc	a0,0x6
    800042f0:	f5c50513          	addi	a0,a0,-164 # 8000a248 <lockPrint>
    800042f4:	ffffd097          	auipc	ra,0xffffd
    800042f8:	e50080e7          	jalr	-432(ra) # 80001144 <copy_and_swap>
    800042fc:	fe0514e3          	bnez	a0,800042e4 <_Z9getStringPci+0x98>
    return buf;
}
    80004300:	00098513          	mv	a0,s3
    80004304:	02813083          	ld	ra,40(sp)
    80004308:	02013403          	ld	s0,32(sp)
    8000430c:	01813483          	ld	s1,24(sp)
    80004310:	01013903          	ld	s2,16(sp)
    80004314:	00813983          	ld	s3,8(sp)
    80004318:	00013a03          	ld	s4,0(sp)
    8000431c:	03010113          	addi	sp,sp,48
    80004320:	00008067          	ret

0000000080004324 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004324:	ff010113          	addi	sp,sp,-16
    80004328:	00813423          	sd	s0,8(sp)
    8000432c:	01010413          	addi	s0,sp,16
    80004330:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004334:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004338:	0006c603          	lbu	a2,0(a3)
    8000433c:	fd06071b          	addiw	a4,a2,-48
    80004340:	0ff77713          	andi	a4,a4,255
    80004344:	00900793          	li	a5,9
    80004348:	02e7e063          	bltu	a5,a4,80004368 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000434c:	0025179b          	slliw	a5,a0,0x2
    80004350:	00a787bb          	addw	a5,a5,a0
    80004354:	0017979b          	slliw	a5,a5,0x1
    80004358:	00168693          	addi	a3,a3,1
    8000435c:	00c787bb          	addw	a5,a5,a2
    80004360:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004364:	fd5ff06f          	j	80004338 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004368:	00813403          	ld	s0,8(sp)
    8000436c:	01010113          	addi	sp,sp,16
    80004370:	00008067          	ret

0000000080004374 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004374:	fc010113          	addi	sp,sp,-64
    80004378:	02113c23          	sd	ra,56(sp)
    8000437c:	02813823          	sd	s0,48(sp)
    80004380:	02913423          	sd	s1,40(sp)
    80004384:	03213023          	sd	s2,32(sp)
    80004388:	01313c23          	sd	s3,24(sp)
    8000438c:	04010413          	addi	s0,sp,64
    80004390:	00050493          	mv	s1,a0
    80004394:	00058913          	mv	s2,a1
    80004398:	00060993          	mv	s3,a2
    LOCK();
    8000439c:	00100613          	li	a2,1
    800043a0:	00000593          	li	a1,0
    800043a4:	00006517          	auipc	a0,0x6
    800043a8:	ea450513          	addi	a0,a0,-348 # 8000a248 <lockPrint>
    800043ac:	ffffd097          	auipc	ra,0xffffd
    800043b0:	d98080e7          	jalr	-616(ra) # 80001144 <copy_and_swap>
    800043b4:	00050863          	beqz	a0,800043c4 <_Z8printIntiii+0x50>
    800043b8:	ffffd097          	auipc	ra,0xffffd
    800043bc:	f38080e7          	jalr	-200(ra) # 800012f0 <_Z15thread_dispatchv>
    800043c0:	fddff06f          	j	8000439c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800043c4:	00098463          	beqz	s3,800043cc <_Z8printIntiii+0x58>
    800043c8:	0804c463          	bltz	s1,80004450 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800043cc:	0004851b          	sext.w	a0,s1
    neg = 0;
    800043d0:	00000593          	li	a1,0
    }

    i = 0;
    800043d4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800043d8:	0009079b          	sext.w	a5,s2
    800043dc:	0325773b          	remuw	a4,a0,s2
    800043e0:	00048613          	mv	a2,s1
    800043e4:	0014849b          	addiw	s1,s1,1
    800043e8:	02071693          	slli	a3,a4,0x20
    800043ec:	0206d693          	srli	a3,a3,0x20
    800043f0:	00006717          	auipc	a4,0x6
    800043f4:	d6870713          	addi	a4,a4,-664 # 8000a158 <digits>
    800043f8:	00d70733          	add	a4,a4,a3
    800043fc:	00074683          	lbu	a3,0(a4)
    80004400:	fd040713          	addi	a4,s0,-48
    80004404:	00c70733          	add	a4,a4,a2
    80004408:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000440c:	0005071b          	sext.w	a4,a0
    80004410:	0325553b          	divuw	a0,a0,s2
    80004414:	fcf772e3          	bgeu	a4,a5,800043d8 <_Z8printIntiii+0x64>
    if(neg)
    80004418:	00058c63          	beqz	a1,80004430 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    8000441c:	fd040793          	addi	a5,s0,-48
    80004420:	009784b3          	add	s1,a5,s1
    80004424:	02d00793          	li	a5,45
    80004428:	fef48823          	sb	a5,-16(s1)
    8000442c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004430:	fff4849b          	addiw	s1,s1,-1
    80004434:	0204c463          	bltz	s1,8000445c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004438:	fd040793          	addi	a5,s0,-48
    8000443c:	009787b3          	add	a5,a5,s1
    80004440:	ff07c503          	lbu	a0,-16(a5)
    80004444:	ffffd097          	auipc	ra,0xffffd
    80004448:	fb0080e7          	jalr	-80(ra) # 800013f4 <_Z4putcc>
    8000444c:	fe5ff06f          	j	80004430 <_Z8printIntiii+0xbc>
        x = -xx;
    80004450:	4090053b          	negw	a0,s1
        neg = 1;
    80004454:	00100593          	li	a1,1
        x = -xx;
    80004458:	f7dff06f          	j	800043d4 <_Z8printIntiii+0x60>

    UNLOCK();
    8000445c:	00000613          	li	a2,0
    80004460:	00100593          	li	a1,1
    80004464:	00006517          	auipc	a0,0x6
    80004468:	de450513          	addi	a0,a0,-540 # 8000a248 <lockPrint>
    8000446c:	ffffd097          	auipc	ra,0xffffd
    80004470:	cd8080e7          	jalr	-808(ra) # 80001144 <copy_and_swap>
    80004474:	fe0514e3          	bnez	a0,8000445c <_Z8printIntiii+0xe8>
    80004478:	03813083          	ld	ra,56(sp)
    8000447c:	03013403          	ld	s0,48(sp)
    80004480:	02813483          	ld	s1,40(sp)
    80004484:	02013903          	ld	s2,32(sp)
    80004488:	01813983          	ld	s3,24(sp)
    8000448c:	04010113          	addi	sp,sp,64
    80004490:	00008067          	ret

0000000080004494 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004494:	fd010113          	addi	sp,sp,-48
    80004498:	02113423          	sd	ra,40(sp)
    8000449c:	02813023          	sd	s0,32(sp)
    800044a0:	00913c23          	sd	s1,24(sp)
    800044a4:	01213823          	sd	s2,16(sp)
    800044a8:	01313423          	sd	s3,8(sp)
    800044ac:	03010413          	addi	s0,sp,48
    800044b0:	00050493          	mv	s1,a0
    800044b4:	00058913          	mv	s2,a1
    800044b8:	0015879b          	addiw	a5,a1,1
    800044bc:	0007851b          	sext.w	a0,a5
    800044c0:	00f4a023          	sw	a5,0(s1)
    800044c4:	0004a823          	sw	zero,16(s1)
    800044c8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800044cc:	00251513          	slli	a0,a0,0x2
    800044d0:	ffffd097          	auipc	ra,0xffffd
    800044d4:	c94080e7          	jalr	-876(ra) # 80001164 <_Z9mem_allocm>
    800044d8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800044dc:	01000513          	li	a0,16
    800044e0:	ffffd097          	auipc	ra,0xffffd
    800044e4:	514080e7          	jalr	1300(ra) # 800019f4 <_Znwm>
    800044e8:	00050993          	mv	s3,a0
    800044ec:	00000593          	li	a1,0
    800044f0:	ffffd097          	auipc	ra,0xffffd
    800044f4:	700080e7          	jalr	1792(ra) # 80001bf0 <_ZN9SemaphoreC1Ej>
    800044f8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800044fc:	01000513          	li	a0,16
    80004500:	ffffd097          	auipc	ra,0xffffd
    80004504:	4f4080e7          	jalr	1268(ra) # 800019f4 <_Znwm>
    80004508:	00050993          	mv	s3,a0
    8000450c:	00090593          	mv	a1,s2
    80004510:	ffffd097          	auipc	ra,0xffffd
    80004514:	6e0080e7          	jalr	1760(ra) # 80001bf0 <_ZN9SemaphoreC1Ej>
    80004518:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000451c:	01000513          	li	a0,16
    80004520:	ffffd097          	auipc	ra,0xffffd
    80004524:	4d4080e7          	jalr	1236(ra) # 800019f4 <_Znwm>
    80004528:	00050913          	mv	s2,a0
    8000452c:	00100593          	li	a1,1
    80004530:	ffffd097          	auipc	ra,0xffffd
    80004534:	6c0080e7          	jalr	1728(ra) # 80001bf0 <_ZN9SemaphoreC1Ej>
    80004538:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000453c:	01000513          	li	a0,16
    80004540:	ffffd097          	auipc	ra,0xffffd
    80004544:	4b4080e7          	jalr	1204(ra) # 800019f4 <_Znwm>
    80004548:	00050913          	mv	s2,a0
    8000454c:	00100593          	li	a1,1
    80004550:	ffffd097          	auipc	ra,0xffffd
    80004554:	6a0080e7          	jalr	1696(ra) # 80001bf0 <_ZN9SemaphoreC1Ej>
    80004558:	0324b823          	sd	s2,48(s1)
}
    8000455c:	02813083          	ld	ra,40(sp)
    80004560:	02013403          	ld	s0,32(sp)
    80004564:	01813483          	ld	s1,24(sp)
    80004568:	01013903          	ld	s2,16(sp)
    8000456c:	00813983          	ld	s3,8(sp)
    80004570:	03010113          	addi	sp,sp,48
    80004574:	00008067          	ret
    80004578:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000457c:	00098513          	mv	a0,s3
    80004580:	ffffd097          	auipc	ra,0xffffd
    80004584:	49c080e7          	jalr	1180(ra) # 80001a1c <_ZdlPv>
    80004588:	00048513          	mv	a0,s1
    8000458c:	00007097          	auipc	ra,0x7
    80004590:	d9c080e7          	jalr	-612(ra) # 8000b328 <_Unwind_Resume>
    80004594:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004598:	00098513          	mv	a0,s3
    8000459c:	ffffd097          	auipc	ra,0xffffd
    800045a0:	480080e7          	jalr	1152(ra) # 80001a1c <_ZdlPv>
    800045a4:	00048513          	mv	a0,s1
    800045a8:	00007097          	auipc	ra,0x7
    800045ac:	d80080e7          	jalr	-640(ra) # 8000b328 <_Unwind_Resume>
    800045b0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800045b4:	00090513          	mv	a0,s2
    800045b8:	ffffd097          	auipc	ra,0xffffd
    800045bc:	464080e7          	jalr	1124(ra) # 80001a1c <_ZdlPv>
    800045c0:	00048513          	mv	a0,s1
    800045c4:	00007097          	auipc	ra,0x7
    800045c8:	d64080e7          	jalr	-668(ra) # 8000b328 <_Unwind_Resume>
    800045cc:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800045d0:	00090513          	mv	a0,s2
    800045d4:	ffffd097          	auipc	ra,0xffffd
    800045d8:	448080e7          	jalr	1096(ra) # 80001a1c <_ZdlPv>
    800045dc:	00048513          	mv	a0,s1
    800045e0:	00007097          	auipc	ra,0x7
    800045e4:	d48080e7          	jalr	-696(ra) # 8000b328 <_Unwind_Resume>

00000000800045e8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800045e8:	fe010113          	addi	sp,sp,-32
    800045ec:	00113c23          	sd	ra,24(sp)
    800045f0:	00813823          	sd	s0,16(sp)
    800045f4:	00913423          	sd	s1,8(sp)
    800045f8:	01213023          	sd	s2,0(sp)
    800045fc:	02010413          	addi	s0,sp,32
    80004600:	00050493          	mv	s1,a0
    80004604:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004608:	01853503          	ld	a0,24(a0)
    8000460c:	ffffd097          	auipc	ra,0xffffd
    80004610:	61c080e7          	jalr	1564(ra) # 80001c28 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004614:	0304b503          	ld	a0,48(s1)
    80004618:	ffffd097          	auipc	ra,0xffffd
    8000461c:	610080e7          	jalr	1552(ra) # 80001c28 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004620:	0084b783          	ld	a5,8(s1)
    80004624:	0144a703          	lw	a4,20(s1)
    80004628:	00271713          	slli	a4,a4,0x2
    8000462c:	00e787b3          	add	a5,a5,a4
    80004630:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004634:	0144a783          	lw	a5,20(s1)
    80004638:	0017879b          	addiw	a5,a5,1
    8000463c:	0004a703          	lw	a4,0(s1)
    80004640:	02e7e7bb          	remw	a5,a5,a4
    80004644:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004648:	0304b503          	ld	a0,48(s1)
    8000464c:	ffffd097          	auipc	ra,0xffffd
    80004650:	608080e7          	jalr	1544(ra) # 80001c54 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004654:	0204b503          	ld	a0,32(s1)
    80004658:	ffffd097          	auipc	ra,0xffffd
    8000465c:	5fc080e7          	jalr	1532(ra) # 80001c54 <_ZN9Semaphore6signalEv>

}
    80004660:	01813083          	ld	ra,24(sp)
    80004664:	01013403          	ld	s0,16(sp)
    80004668:	00813483          	ld	s1,8(sp)
    8000466c:	00013903          	ld	s2,0(sp)
    80004670:	02010113          	addi	sp,sp,32
    80004674:	00008067          	ret

0000000080004678 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004678:	fe010113          	addi	sp,sp,-32
    8000467c:	00113c23          	sd	ra,24(sp)
    80004680:	00813823          	sd	s0,16(sp)
    80004684:	00913423          	sd	s1,8(sp)
    80004688:	01213023          	sd	s2,0(sp)
    8000468c:	02010413          	addi	s0,sp,32
    80004690:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004694:	02053503          	ld	a0,32(a0)
    80004698:	ffffd097          	auipc	ra,0xffffd
    8000469c:	590080e7          	jalr	1424(ra) # 80001c28 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800046a0:	0284b503          	ld	a0,40(s1)
    800046a4:	ffffd097          	auipc	ra,0xffffd
    800046a8:	584080e7          	jalr	1412(ra) # 80001c28 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800046ac:	0084b703          	ld	a4,8(s1)
    800046b0:	0104a783          	lw	a5,16(s1)
    800046b4:	00279693          	slli	a3,a5,0x2
    800046b8:	00d70733          	add	a4,a4,a3
    800046bc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800046c0:	0017879b          	addiw	a5,a5,1
    800046c4:	0004a703          	lw	a4,0(s1)
    800046c8:	02e7e7bb          	remw	a5,a5,a4
    800046cc:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800046d0:	0284b503          	ld	a0,40(s1)
    800046d4:	ffffd097          	auipc	ra,0xffffd
    800046d8:	580080e7          	jalr	1408(ra) # 80001c54 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800046dc:	0184b503          	ld	a0,24(s1)
    800046e0:	ffffd097          	auipc	ra,0xffffd
    800046e4:	574080e7          	jalr	1396(ra) # 80001c54 <_ZN9Semaphore6signalEv>

    return ret;
}
    800046e8:	00090513          	mv	a0,s2
    800046ec:	01813083          	ld	ra,24(sp)
    800046f0:	01013403          	ld	s0,16(sp)
    800046f4:	00813483          	ld	s1,8(sp)
    800046f8:	00013903          	ld	s2,0(sp)
    800046fc:	02010113          	addi	sp,sp,32
    80004700:	00008067          	ret

0000000080004704 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004704:	fe010113          	addi	sp,sp,-32
    80004708:	00113c23          	sd	ra,24(sp)
    8000470c:	00813823          	sd	s0,16(sp)
    80004710:	00913423          	sd	s1,8(sp)
    80004714:	01213023          	sd	s2,0(sp)
    80004718:	02010413          	addi	s0,sp,32
    8000471c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004720:	02853503          	ld	a0,40(a0)
    80004724:	ffffd097          	auipc	ra,0xffffd
    80004728:	504080e7          	jalr	1284(ra) # 80001c28 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000472c:	0304b503          	ld	a0,48(s1)
    80004730:	ffffd097          	auipc	ra,0xffffd
    80004734:	4f8080e7          	jalr	1272(ra) # 80001c28 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004738:	0144a783          	lw	a5,20(s1)
    8000473c:	0104a903          	lw	s2,16(s1)
    80004740:	0327ce63          	blt	a5,s2,8000477c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004744:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004748:	0304b503          	ld	a0,48(s1)
    8000474c:	ffffd097          	auipc	ra,0xffffd
    80004750:	508080e7          	jalr	1288(ra) # 80001c54 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004754:	0284b503          	ld	a0,40(s1)
    80004758:	ffffd097          	auipc	ra,0xffffd
    8000475c:	4fc080e7          	jalr	1276(ra) # 80001c54 <_ZN9Semaphore6signalEv>

    return ret;
}
    80004760:	00090513          	mv	a0,s2
    80004764:	01813083          	ld	ra,24(sp)
    80004768:	01013403          	ld	s0,16(sp)
    8000476c:	00813483          	ld	s1,8(sp)
    80004770:	00013903          	ld	s2,0(sp)
    80004774:	02010113          	addi	sp,sp,32
    80004778:	00008067          	ret
        ret = cap - head + tail;
    8000477c:	0004a703          	lw	a4,0(s1)
    80004780:	4127093b          	subw	s2,a4,s2
    80004784:	00f9093b          	addw	s2,s2,a5
    80004788:	fc1ff06f          	j	80004748 <_ZN9BufferCPP6getCntEv+0x44>

000000008000478c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000478c:	fe010113          	addi	sp,sp,-32
    80004790:	00113c23          	sd	ra,24(sp)
    80004794:	00813823          	sd	s0,16(sp)
    80004798:	00913423          	sd	s1,8(sp)
    8000479c:	02010413          	addi	s0,sp,32
    800047a0:	00050493          	mv	s1,a0
    Console::putc('\n');
    800047a4:	00a00513          	li	a0,10
    800047a8:	ffffd097          	auipc	ra,0xffffd
    800047ac:	500080e7          	jalr	1280(ra) # 80001ca8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800047b0:	00004517          	auipc	a0,0x4
    800047b4:	b8050513          	addi	a0,a0,-1152 # 80008330 <CONSOLE_STATUS+0x320>
    800047b8:	00000097          	auipc	ra,0x0
    800047bc:	a0c080e7          	jalr	-1524(ra) # 800041c4 <_Z11printStringPKc>
    while (getCnt()) {
    800047c0:	00048513          	mv	a0,s1
    800047c4:	00000097          	auipc	ra,0x0
    800047c8:	f40080e7          	jalr	-192(ra) # 80004704 <_ZN9BufferCPP6getCntEv>
    800047cc:	02050c63          	beqz	a0,80004804 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800047d0:	0084b783          	ld	a5,8(s1)
    800047d4:	0104a703          	lw	a4,16(s1)
    800047d8:	00271713          	slli	a4,a4,0x2
    800047dc:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800047e0:	0007c503          	lbu	a0,0(a5)
    800047e4:	ffffd097          	auipc	ra,0xffffd
    800047e8:	4c4080e7          	jalr	1220(ra) # 80001ca8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800047ec:	0104a783          	lw	a5,16(s1)
    800047f0:	0017879b          	addiw	a5,a5,1
    800047f4:	0004a703          	lw	a4,0(s1)
    800047f8:	02e7e7bb          	remw	a5,a5,a4
    800047fc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004800:	fc1ff06f          	j	800047c0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004804:	02100513          	li	a0,33
    80004808:	ffffd097          	auipc	ra,0xffffd
    8000480c:	4a0080e7          	jalr	1184(ra) # 80001ca8 <_ZN7Console4putcEc>
    Console::putc('\n');
    80004810:	00a00513          	li	a0,10
    80004814:	ffffd097          	auipc	ra,0xffffd
    80004818:	494080e7          	jalr	1172(ra) # 80001ca8 <_ZN7Console4putcEc>
    mem_free(buffer);
    8000481c:	0084b503          	ld	a0,8(s1)
    80004820:	ffffd097          	auipc	ra,0xffffd
    80004824:	988080e7          	jalr	-1656(ra) # 800011a8 <_Z8mem_freePv>
    delete itemAvailable;
    80004828:	0204b503          	ld	a0,32(s1)
    8000482c:	00050863          	beqz	a0,8000483c <_ZN9BufferCPPD1Ev+0xb0>
    80004830:	00053783          	ld	a5,0(a0)
    80004834:	0087b783          	ld	a5,8(a5)
    80004838:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000483c:	0184b503          	ld	a0,24(s1)
    80004840:	00050863          	beqz	a0,80004850 <_ZN9BufferCPPD1Ev+0xc4>
    80004844:	00053783          	ld	a5,0(a0)
    80004848:	0087b783          	ld	a5,8(a5)
    8000484c:	000780e7          	jalr	a5
    delete mutexTail;
    80004850:	0304b503          	ld	a0,48(s1)
    80004854:	00050863          	beqz	a0,80004864 <_ZN9BufferCPPD1Ev+0xd8>
    80004858:	00053783          	ld	a5,0(a0)
    8000485c:	0087b783          	ld	a5,8(a5)
    80004860:	000780e7          	jalr	a5
    delete mutexHead;
    80004864:	0284b503          	ld	a0,40(s1)
    80004868:	00050863          	beqz	a0,80004878 <_ZN9BufferCPPD1Ev+0xec>
    8000486c:	00053783          	ld	a5,0(a0)
    80004870:	0087b783          	ld	a5,8(a5)
    80004874:	000780e7          	jalr	a5
}
    80004878:	01813083          	ld	ra,24(sp)
    8000487c:	01013403          	ld	s0,16(sp)
    80004880:	00813483          	ld	s1,8(sp)
    80004884:	02010113          	addi	sp,sp,32
    80004888:	00008067          	ret

000000008000488c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000488c:	fe010113          	addi	sp,sp,-32
    80004890:	00113c23          	sd	ra,24(sp)
    80004894:	00813823          	sd	s0,16(sp)
    80004898:	00913423          	sd	s1,8(sp)
    8000489c:	01213023          	sd	s2,0(sp)
    800048a0:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800048a4:	00004517          	auipc	a0,0x4
    800048a8:	aa450513          	addi	a0,a0,-1372 # 80008348 <CONSOLE_STATUS+0x338>
    800048ac:	00000097          	auipc	ra,0x0
    800048b0:	918080e7          	jalr	-1768(ra) # 800041c4 <_Z11printStringPKc>
    int test = getc() - '0';
    800048b4:	ffffd097          	auipc	ra,0xffffd
    800048b8:	b18080e7          	jalr	-1256(ra) # 800013cc <_Z4getcv>
    800048bc:	00050913          	mv	s2,a0
    800048c0:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800048c4:	ffffd097          	auipc	ra,0xffffd
    800048c8:	b08080e7          	jalr	-1272(ra) # 800013cc <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800048cc:	fcb9091b          	addiw	s2,s2,-53
    800048d0:	00100793          	li	a5,1
    800048d4:	0327f463          	bgeu	a5,s2,800048fc <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800048d8:	00700793          	li	a5,7
    800048dc:	0e97e263          	bltu	a5,s1,800049c0 <_Z8userMainv+0x134>
    800048e0:	00249493          	slli	s1,s1,0x2
    800048e4:	00004717          	auipc	a4,0x4
    800048e8:	c7c70713          	addi	a4,a4,-900 # 80008560 <CONSOLE_STATUS+0x550>
    800048ec:	00e484b3          	add	s1,s1,a4
    800048f0:	0004a783          	lw	a5,0(s1)
    800048f4:	00e787b3          	add	a5,a5,a4
    800048f8:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800048fc:	00004517          	auipc	a0,0x4
    80004900:	a6c50513          	addi	a0,a0,-1428 # 80008368 <CONSOLE_STATUS+0x358>
    80004904:	00000097          	auipc	ra,0x0
    80004908:	8c0080e7          	jalr	-1856(ra) # 800041c4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000490c:	01813083          	ld	ra,24(sp)
    80004910:	01013403          	ld	s0,16(sp)
    80004914:	00813483          	ld	s1,8(sp)
    80004918:	00013903          	ld	s2,0(sp)
    8000491c:	02010113          	addi	sp,sp,32
    80004920:	00008067          	ret
            Threads_C_API_test();
    80004924:	fffff097          	auipc	ra,0xfffff
    80004928:	f18080e7          	jalr	-232(ra) # 8000383c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000492c:	00004517          	auipc	a0,0x4
    80004930:	a6c50513          	addi	a0,a0,-1428 # 80008398 <CONSOLE_STATUS+0x388>
    80004934:	00000097          	auipc	ra,0x0
    80004938:	890080e7          	jalr	-1904(ra) # 800041c4 <_Z11printStringPKc>
            break;
    8000493c:	fd1ff06f          	j	8000490c <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80004940:	ffffe097          	auipc	ra,0xffffe
    80004944:	560080e7          	jalr	1376(ra) # 80002ea0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80004948:	00004517          	auipc	a0,0x4
    8000494c:	a9050513          	addi	a0,a0,-1392 # 800083d8 <CONSOLE_STATUS+0x3c8>
    80004950:	00000097          	auipc	ra,0x0
    80004954:	874080e7          	jalr	-1932(ra) # 800041c4 <_Z11printStringPKc>
            break;
    80004958:	fb5ff06f          	j	8000490c <_Z8userMainv+0x80>
            producerConsumer_C_API();
    8000495c:	ffffe097          	auipc	ra,0xffffe
    80004960:	d98080e7          	jalr	-616(ra) # 800026f4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004964:	00004517          	auipc	a0,0x4
    80004968:	ab450513          	addi	a0,a0,-1356 # 80008418 <CONSOLE_STATUS+0x408>
    8000496c:	00000097          	auipc	ra,0x0
    80004970:	858080e7          	jalr	-1960(ra) # 800041c4 <_Z11printStringPKc>
            break;
    80004974:	f99ff06f          	j	8000490c <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80004978:	fffff097          	auipc	ra,0xfffff
    8000497c:	208080e7          	jalr	520(ra) # 80003b80 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80004980:	00004517          	auipc	a0,0x4
    80004984:	ae850513          	addi	a0,a0,-1304 # 80008468 <CONSOLE_STATUS+0x458>
    80004988:	00000097          	auipc	ra,0x0
    8000498c:	83c080e7          	jalr	-1988(ra) # 800041c4 <_Z11printStringPKc>
            break;
    80004990:	f7dff06f          	j	8000490c <_Z8userMainv+0x80>
            System_Mode_test();
    80004994:	00000097          	auipc	ra,0x0
    80004998:	52c080e7          	jalr	1324(ra) # 80004ec0 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000499c:	00004517          	auipc	a0,0x4
    800049a0:	b2450513          	addi	a0,a0,-1244 # 800084c0 <CONSOLE_STATUS+0x4b0>
    800049a4:	00000097          	auipc	ra,0x0
    800049a8:	820080e7          	jalr	-2016(ra) # 800041c4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800049ac:	00004517          	auipc	a0,0x4
    800049b0:	b3450513          	addi	a0,a0,-1228 # 800084e0 <CONSOLE_STATUS+0x4d0>
    800049b4:	00000097          	auipc	ra,0x0
    800049b8:	810080e7          	jalr	-2032(ra) # 800041c4 <_Z11printStringPKc>
            break;
    800049bc:	f51ff06f          	j	8000490c <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800049c0:	00004517          	auipc	a0,0x4
    800049c4:	b7850513          	addi	a0,a0,-1160 # 80008538 <CONSOLE_STATUS+0x528>
    800049c8:	fffff097          	auipc	ra,0xfffff
    800049cc:	7fc080e7          	jalr	2044(ra) # 800041c4 <_Z11printStringPKc>
    800049d0:	f3dff06f          	j	8000490c <_Z8userMainv+0x80>

00000000800049d4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800049d4:	fe010113          	addi	sp,sp,-32
    800049d8:	00113c23          	sd	ra,24(sp)
    800049dc:	00813823          	sd	s0,16(sp)
    800049e0:	00913423          	sd	s1,8(sp)
    800049e4:	01213023          	sd	s2,0(sp)
    800049e8:	02010413          	addi	s0,sp,32
    800049ec:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800049f0:	00100793          	li	a5,1
    800049f4:	02a7f863          	bgeu	a5,a0,80004a24 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800049f8:	00a00793          	li	a5,10
    800049fc:	02f577b3          	remu	a5,a0,a5
    80004a00:	02078e63          	beqz	a5,80004a3c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004a04:	fff48513          	addi	a0,s1,-1
    80004a08:	00000097          	auipc	ra,0x0
    80004a0c:	fcc080e7          	jalr	-52(ra) # 800049d4 <_ZL9fibonaccim>
    80004a10:	00050913          	mv	s2,a0
    80004a14:	ffe48513          	addi	a0,s1,-2
    80004a18:	00000097          	auipc	ra,0x0
    80004a1c:	fbc080e7          	jalr	-68(ra) # 800049d4 <_ZL9fibonaccim>
    80004a20:	00a90533          	add	a0,s2,a0
}
    80004a24:	01813083          	ld	ra,24(sp)
    80004a28:	01013403          	ld	s0,16(sp)
    80004a2c:	00813483          	ld	s1,8(sp)
    80004a30:	00013903          	ld	s2,0(sp)
    80004a34:	02010113          	addi	sp,sp,32
    80004a38:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004a3c:	ffffd097          	auipc	ra,0xffffd
    80004a40:	8b4080e7          	jalr	-1868(ra) # 800012f0 <_Z15thread_dispatchv>
    80004a44:	fc1ff06f          	j	80004a04 <_ZL9fibonaccim+0x30>

0000000080004a48 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004a48:	fe010113          	addi	sp,sp,-32
    80004a4c:	00113c23          	sd	ra,24(sp)
    80004a50:	00813823          	sd	s0,16(sp)
    80004a54:	00913423          	sd	s1,8(sp)
    80004a58:	01213023          	sd	s2,0(sp)
    80004a5c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004a60:	00a00493          	li	s1,10
    80004a64:	0400006f          	j	80004aa4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a68:	00004517          	auipc	a0,0x4
    80004a6c:	82050513          	addi	a0,a0,-2016 # 80008288 <CONSOLE_STATUS+0x278>
    80004a70:	fffff097          	auipc	ra,0xfffff
    80004a74:	754080e7          	jalr	1876(ra) # 800041c4 <_Z11printStringPKc>
    80004a78:	00000613          	li	a2,0
    80004a7c:	00a00593          	li	a1,10
    80004a80:	00048513          	mv	a0,s1
    80004a84:	00000097          	auipc	ra,0x0
    80004a88:	8f0080e7          	jalr	-1808(ra) # 80004374 <_Z8printIntiii>
    80004a8c:	00004517          	auipc	a0,0x4
    80004a90:	a2c50513          	addi	a0,a0,-1492 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80004a94:	fffff097          	auipc	ra,0xfffff
    80004a98:	730080e7          	jalr	1840(ra) # 800041c4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004a9c:	0014849b          	addiw	s1,s1,1
    80004aa0:	0ff4f493          	andi	s1,s1,255
    80004aa4:	00c00793          	li	a5,12
    80004aa8:	fc97f0e3          	bgeu	a5,s1,80004a68 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004aac:	00003517          	auipc	a0,0x3
    80004ab0:	7e450513          	addi	a0,a0,2020 # 80008290 <CONSOLE_STATUS+0x280>
    80004ab4:	fffff097          	auipc	ra,0xfffff
    80004ab8:	710080e7          	jalr	1808(ra) # 800041c4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004abc:	00500313          	li	t1,5
    thread_dispatch();
    80004ac0:	ffffd097          	auipc	ra,0xffffd
    80004ac4:	830080e7          	jalr	-2000(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004ac8:	01000513          	li	a0,16
    80004acc:	00000097          	auipc	ra,0x0
    80004ad0:	f08080e7          	jalr	-248(ra) # 800049d4 <_ZL9fibonaccim>
    80004ad4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004ad8:	00003517          	auipc	a0,0x3
    80004adc:	7c850513          	addi	a0,a0,1992 # 800082a0 <CONSOLE_STATUS+0x290>
    80004ae0:	fffff097          	auipc	ra,0xfffff
    80004ae4:	6e4080e7          	jalr	1764(ra) # 800041c4 <_Z11printStringPKc>
    80004ae8:	00000613          	li	a2,0
    80004aec:	00a00593          	li	a1,10
    80004af0:	0009051b          	sext.w	a0,s2
    80004af4:	00000097          	auipc	ra,0x0
    80004af8:	880080e7          	jalr	-1920(ra) # 80004374 <_Z8printIntiii>
    80004afc:	00004517          	auipc	a0,0x4
    80004b00:	9bc50513          	addi	a0,a0,-1604 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80004b04:	fffff097          	auipc	ra,0xfffff
    80004b08:	6c0080e7          	jalr	1728(ra) # 800041c4 <_Z11printStringPKc>
    80004b0c:	0400006f          	j	80004b4c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004b10:	00003517          	auipc	a0,0x3
    80004b14:	77850513          	addi	a0,a0,1912 # 80008288 <CONSOLE_STATUS+0x278>
    80004b18:	fffff097          	auipc	ra,0xfffff
    80004b1c:	6ac080e7          	jalr	1708(ra) # 800041c4 <_Z11printStringPKc>
    80004b20:	00000613          	li	a2,0
    80004b24:	00a00593          	li	a1,10
    80004b28:	00048513          	mv	a0,s1
    80004b2c:	00000097          	auipc	ra,0x0
    80004b30:	848080e7          	jalr	-1976(ra) # 80004374 <_Z8printIntiii>
    80004b34:	00004517          	auipc	a0,0x4
    80004b38:	98450513          	addi	a0,a0,-1660 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80004b3c:	fffff097          	auipc	ra,0xfffff
    80004b40:	688080e7          	jalr	1672(ra) # 800041c4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004b44:	0014849b          	addiw	s1,s1,1
    80004b48:	0ff4f493          	andi	s1,s1,255
    80004b4c:	00f00793          	li	a5,15
    80004b50:	fc97f0e3          	bgeu	a5,s1,80004b10 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004b54:	00003517          	auipc	a0,0x3
    80004b58:	75c50513          	addi	a0,a0,1884 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80004b5c:	fffff097          	auipc	ra,0xfffff
    80004b60:	668080e7          	jalr	1640(ra) # 800041c4 <_Z11printStringPKc>
    finishedD = true;
    80004b64:	00100793          	li	a5,1
    80004b68:	00005717          	auipc	a4,0x5
    80004b6c:	6ef70423          	sb	a5,1768(a4) # 8000a250 <_ZL9finishedD>
    thread_dispatch();
    80004b70:	ffffc097          	auipc	ra,0xffffc
    80004b74:	780080e7          	jalr	1920(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80004b78:	01813083          	ld	ra,24(sp)
    80004b7c:	01013403          	ld	s0,16(sp)
    80004b80:	00813483          	ld	s1,8(sp)
    80004b84:	00013903          	ld	s2,0(sp)
    80004b88:	02010113          	addi	sp,sp,32
    80004b8c:	00008067          	ret

0000000080004b90 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004b90:	fe010113          	addi	sp,sp,-32
    80004b94:	00113c23          	sd	ra,24(sp)
    80004b98:	00813823          	sd	s0,16(sp)
    80004b9c:	00913423          	sd	s1,8(sp)
    80004ba0:	01213023          	sd	s2,0(sp)
    80004ba4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004ba8:	00000493          	li	s1,0
    80004bac:	0400006f          	j	80004bec <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004bb0:	00003517          	auipc	a0,0x3
    80004bb4:	6a850513          	addi	a0,a0,1704 # 80008258 <CONSOLE_STATUS+0x248>
    80004bb8:	fffff097          	auipc	ra,0xfffff
    80004bbc:	60c080e7          	jalr	1548(ra) # 800041c4 <_Z11printStringPKc>
    80004bc0:	00000613          	li	a2,0
    80004bc4:	00a00593          	li	a1,10
    80004bc8:	00048513          	mv	a0,s1
    80004bcc:	fffff097          	auipc	ra,0xfffff
    80004bd0:	7a8080e7          	jalr	1960(ra) # 80004374 <_Z8printIntiii>
    80004bd4:	00004517          	auipc	a0,0x4
    80004bd8:	8e450513          	addi	a0,a0,-1820 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80004bdc:	fffff097          	auipc	ra,0xfffff
    80004be0:	5e8080e7          	jalr	1512(ra) # 800041c4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004be4:	0014849b          	addiw	s1,s1,1
    80004be8:	0ff4f493          	andi	s1,s1,255
    80004bec:	00200793          	li	a5,2
    80004bf0:	fc97f0e3          	bgeu	a5,s1,80004bb0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004bf4:	00003517          	auipc	a0,0x3
    80004bf8:	66c50513          	addi	a0,a0,1644 # 80008260 <CONSOLE_STATUS+0x250>
    80004bfc:	fffff097          	auipc	ra,0xfffff
    80004c00:	5c8080e7          	jalr	1480(ra) # 800041c4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004c04:	00700313          	li	t1,7
    thread_dispatch();
    80004c08:	ffffc097          	auipc	ra,0xffffc
    80004c0c:	6e8080e7          	jalr	1768(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004c10:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004c14:	00003517          	auipc	a0,0x3
    80004c18:	65c50513          	addi	a0,a0,1628 # 80008270 <CONSOLE_STATUS+0x260>
    80004c1c:	fffff097          	auipc	ra,0xfffff
    80004c20:	5a8080e7          	jalr	1448(ra) # 800041c4 <_Z11printStringPKc>
    80004c24:	00000613          	li	a2,0
    80004c28:	00a00593          	li	a1,10
    80004c2c:	0009051b          	sext.w	a0,s2
    80004c30:	fffff097          	auipc	ra,0xfffff
    80004c34:	744080e7          	jalr	1860(ra) # 80004374 <_Z8printIntiii>
    80004c38:	00004517          	auipc	a0,0x4
    80004c3c:	88050513          	addi	a0,a0,-1920 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80004c40:	fffff097          	auipc	ra,0xfffff
    80004c44:	584080e7          	jalr	1412(ra) # 800041c4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004c48:	00c00513          	li	a0,12
    80004c4c:	00000097          	auipc	ra,0x0
    80004c50:	d88080e7          	jalr	-632(ra) # 800049d4 <_ZL9fibonaccim>
    80004c54:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004c58:	00003517          	auipc	a0,0x3
    80004c5c:	62050513          	addi	a0,a0,1568 # 80008278 <CONSOLE_STATUS+0x268>
    80004c60:	fffff097          	auipc	ra,0xfffff
    80004c64:	564080e7          	jalr	1380(ra) # 800041c4 <_Z11printStringPKc>
    80004c68:	00000613          	li	a2,0
    80004c6c:	00a00593          	li	a1,10
    80004c70:	0009051b          	sext.w	a0,s2
    80004c74:	fffff097          	auipc	ra,0xfffff
    80004c78:	700080e7          	jalr	1792(ra) # 80004374 <_Z8printIntiii>
    80004c7c:	00004517          	auipc	a0,0x4
    80004c80:	83c50513          	addi	a0,a0,-1988 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80004c84:	fffff097          	auipc	ra,0xfffff
    80004c88:	540080e7          	jalr	1344(ra) # 800041c4 <_Z11printStringPKc>
    80004c8c:	0400006f          	j	80004ccc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004c90:	00003517          	auipc	a0,0x3
    80004c94:	5c850513          	addi	a0,a0,1480 # 80008258 <CONSOLE_STATUS+0x248>
    80004c98:	fffff097          	auipc	ra,0xfffff
    80004c9c:	52c080e7          	jalr	1324(ra) # 800041c4 <_Z11printStringPKc>
    80004ca0:	00000613          	li	a2,0
    80004ca4:	00a00593          	li	a1,10
    80004ca8:	00048513          	mv	a0,s1
    80004cac:	fffff097          	auipc	ra,0xfffff
    80004cb0:	6c8080e7          	jalr	1736(ra) # 80004374 <_Z8printIntiii>
    80004cb4:	00004517          	auipc	a0,0x4
    80004cb8:	80450513          	addi	a0,a0,-2044 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80004cbc:	fffff097          	auipc	ra,0xfffff
    80004cc0:	508080e7          	jalr	1288(ra) # 800041c4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004cc4:	0014849b          	addiw	s1,s1,1
    80004cc8:	0ff4f493          	andi	s1,s1,255
    80004ccc:	00500793          	li	a5,5
    80004cd0:	fc97f0e3          	bgeu	a5,s1,80004c90 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004cd4:	00003517          	auipc	a0,0x3
    80004cd8:	55c50513          	addi	a0,a0,1372 # 80008230 <CONSOLE_STATUS+0x220>
    80004cdc:	fffff097          	auipc	ra,0xfffff
    80004ce0:	4e8080e7          	jalr	1256(ra) # 800041c4 <_Z11printStringPKc>
    finishedC = true;
    80004ce4:	00100793          	li	a5,1
    80004ce8:	00005717          	auipc	a4,0x5
    80004cec:	56f704a3          	sb	a5,1385(a4) # 8000a251 <_ZL9finishedC>
    thread_dispatch();
    80004cf0:	ffffc097          	auipc	ra,0xffffc
    80004cf4:	600080e7          	jalr	1536(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80004cf8:	01813083          	ld	ra,24(sp)
    80004cfc:	01013403          	ld	s0,16(sp)
    80004d00:	00813483          	ld	s1,8(sp)
    80004d04:	00013903          	ld	s2,0(sp)
    80004d08:	02010113          	addi	sp,sp,32
    80004d0c:	00008067          	ret

0000000080004d10 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004d10:	fe010113          	addi	sp,sp,-32
    80004d14:	00113c23          	sd	ra,24(sp)
    80004d18:	00813823          	sd	s0,16(sp)
    80004d1c:	00913423          	sd	s1,8(sp)
    80004d20:	01213023          	sd	s2,0(sp)
    80004d24:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004d28:	00000913          	li	s2,0
    80004d2c:	0400006f          	j	80004d6c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80004d30:	ffffc097          	auipc	ra,0xffffc
    80004d34:	5c0080e7          	jalr	1472(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004d38:	00148493          	addi	s1,s1,1
    80004d3c:	000027b7          	lui	a5,0x2
    80004d40:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d44:	0097ee63          	bltu	a5,s1,80004d60 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d48:	00000713          	li	a4,0
    80004d4c:	000077b7          	lui	a5,0x7
    80004d50:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d54:	fce7eee3          	bltu	a5,a4,80004d30 <_ZL11workerBodyBPv+0x20>
    80004d58:	00170713          	addi	a4,a4,1
    80004d5c:	ff1ff06f          	j	80004d4c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80004d60:	00a00793          	li	a5,10
    80004d64:	04f90663          	beq	s2,a5,80004db0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80004d68:	00190913          	addi	s2,s2,1
    80004d6c:	00f00793          	li	a5,15
    80004d70:	0527e463          	bltu	a5,s2,80004db8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80004d74:	00003517          	auipc	a0,0x3
    80004d78:	4cc50513          	addi	a0,a0,1228 # 80008240 <CONSOLE_STATUS+0x230>
    80004d7c:	fffff097          	auipc	ra,0xfffff
    80004d80:	448080e7          	jalr	1096(ra) # 800041c4 <_Z11printStringPKc>
    80004d84:	00000613          	li	a2,0
    80004d88:	00a00593          	li	a1,10
    80004d8c:	0009051b          	sext.w	a0,s2
    80004d90:	fffff097          	auipc	ra,0xfffff
    80004d94:	5e4080e7          	jalr	1508(ra) # 80004374 <_Z8printIntiii>
    80004d98:	00003517          	auipc	a0,0x3
    80004d9c:	72050513          	addi	a0,a0,1824 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80004da0:	fffff097          	auipc	ra,0xfffff
    80004da4:	424080e7          	jalr	1060(ra) # 800041c4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004da8:	00000493          	li	s1,0
    80004dac:	f91ff06f          	j	80004d3c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80004db0:	14102ff3          	csrr	t6,sepc
    80004db4:	fb5ff06f          	j	80004d68 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80004db8:	00003517          	auipc	a0,0x3
    80004dbc:	49050513          	addi	a0,a0,1168 # 80008248 <CONSOLE_STATUS+0x238>
    80004dc0:	fffff097          	auipc	ra,0xfffff
    80004dc4:	404080e7          	jalr	1028(ra) # 800041c4 <_Z11printStringPKc>
    finishedB = true;
    80004dc8:	00100793          	li	a5,1
    80004dcc:	00005717          	auipc	a4,0x5
    80004dd0:	48f70323          	sb	a5,1158(a4) # 8000a252 <_ZL9finishedB>
    thread_dispatch();
    80004dd4:	ffffc097          	auipc	ra,0xffffc
    80004dd8:	51c080e7          	jalr	1308(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80004ddc:	01813083          	ld	ra,24(sp)
    80004de0:	01013403          	ld	s0,16(sp)
    80004de4:	00813483          	ld	s1,8(sp)
    80004de8:	00013903          	ld	s2,0(sp)
    80004dec:	02010113          	addi	sp,sp,32
    80004df0:	00008067          	ret

0000000080004df4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004df4:	fe010113          	addi	sp,sp,-32
    80004df8:	00113c23          	sd	ra,24(sp)
    80004dfc:	00813823          	sd	s0,16(sp)
    80004e00:	00913423          	sd	s1,8(sp)
    80004e04:	01213023          	sd	s2,0(sp)
    80004e08:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004e0c:	00000913          	li	s2,0
    80004e10:	0380006f          	j	80004e48 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004e14:	ffffc097          	auipc	ra,0xffffc
    80004e18:	4dc080e7          	jalr	1244(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004e1c:	00148493          	addi	s1,s1,1
    80004e20:	000027b7          	lui	a5,0x2
    80004e24:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e28:	0097ee63          	bltu	a5,s1,80004e44 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e2c:	00000713          	li	a4,0
    80004e30:	000077b7          	lui	a5,0x7
    80004e34:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e38:	fce7eee3          	bltu	a5,a4,80004e14 <_ZL11workerBodyAPv+0x20>
    80004e3c:	00170713          	addi	a4,a4,1
    80004e40:	ff1ff06f          	j	80004e30 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004e44:	00190913          	addi	s2,s2,1
    80004e48:	00900793          	li	a5,9
    80004e4c:	0527e063          	bltu	a5,s2,80004e8c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004e50:	00003517          	auipc	a0,0x3
    80004e54:	3d850513          	addi	a0,a0,984 # 80008228 <CONSOLE_STATUS+0x218>
    80004e58:	fffff097          	auipc	ra,0xfffff
    80004e5c:	36c080e7          	jalr	876(ra) # 800041c4 <_Z11printStringPKc>
    80004e60:	00000613          	li	a2,0
    80004e64:	00a00593          	li	a1,10
    80004e68:	0009051b          	sext.w	a0,s2
    80004e6c:	fffff097          	auipc	ra,0xfffff
    80004e70:	508080e7          	jalr	1288(ra) # 80004374 <_Z8printIntiii>
    80004e74:	00003517          	auipc	a0,0x3
    80004e78:	64450513          	addi	a0,a0,1604 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80004e7c:	fffff097          	auipc	ra,0xfffff
    80004e80:	348080e7          	jalr	840(ra) # 800041c4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e84:	00000493          	li	s1,0
    80004e88:	f99ff06f          	j	80004e20 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004e8c:	00003517          	auipc	a0,0x3
    80004e90:	3a450513          	addi	a0,a0,932 # 80008230 <CONSOLE_STATUS+0x220>
    80004e94:	fffff097          	auipc	ra,0xfffff
    80004e98:	330080e7          	jalr	816(ra) # 800041c4 <_Z11printStringPKc>
    finishedA = true;
    80004e9c:	00100793          	li	a5,1
    80004ea0:	00005717          	auipc	a4,0x5
    80004ea4:	3af709a3          	sb	a5,947(a4) # 8000a253 <_ZL9finishedA>
}
    80004ea8:	01813083          	ld	ra,24(sp)
    80004eac:	01013403          	ld	s0,16(sp)
    80004eb0:	00813483          	ld	s1,8(sp)
    80004eb4:	00013903          	ld	s2,0(sp)
    80004eb8:	02010113          	addi	sp,sp,32
    80004ebc:	00008067          	ret

0000000080004ec0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80004ec0:	fd010113          	addi	sp,sp,-48
    80004ec4:	02113423          	sd	ra,40(sp)
    80004ec8:	02813023          	sd	s0,32(sp)
    80004ecc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004ed0:	00000613          	li	a2,0
    80004ed4:	00000597          	auipc	a1,0x0
    80004ed8:	f2058593          	addi	a1,a1,-224 # 80004df4 <_ZL11workerBodyAPv>
    80004edc:	fd040513          	addi	a0,s0,-48
    80004ee0:	ffffc097          	auipc	ra,0xffffc
    80004ee4:	33c080e7          	jalr	828(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80004ee8:	00003517          	auipc	a0,0x3
    80004eec:	3d850513          	addi	a0,a0,984 # 800082c0 <CONSOLE_STATUS+0x2b0>
    80004ef0:	fffff097          	auipc	ra,0xfffff
    80004ef4:	2d4080e7          	jalr	724(ra) # 800041c4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004ef8:	00000613          	li	a2,0
    80004efc:	00000597          	auipc	a1,0x0
    80004f00:	e1458593          	addi	a1,a1,-492 # 80004d10 <_ZL11workerBodyBPv>
    80004f04:	fd840513          	addi	a0,s0,-40
    80004f08:	ffffc097          	auipc	ra,0xffffc
    80004f0c:	314080e7          	jalr	788(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    80004f10:	00003517          	auipc	a0,0x3
    80004f14:	3c850513          	addi	a0,a0,968 # 800082d8 <CONSOLE_STATUS+0x2c8>
    80004f18:	fffff097          	auipc	ra,0xfffff
    80004f1c:	2ac080e7          	jalr	684(ra) # 800041c4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004f20:	00000613          	li	a2,0
    80004f24:	00000597          	auipc	a1,0x0
    80004f28:	c6c58593          	addi	a1,a1,-916 # 80004b90 <_ZL11workerBodyCPv>
    80004f2c:	fe040513          	addi	a0,s0,-32
    80004f30:	ffffc097          	auipc	ra,0xffffc
    80004f34:	2ec080e7          	jalr	748(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    80004f38:	00003517          	auipc	a0,0x3
    80004f3c:	3b850513          	addi	a0,a0,952 # 800082f0 <CONSOLE_STATUS+0x2e0>
    80004f40:	fffff097          	auipc	ra,0xfffff
    80004f44:	284080e7          	jalr	644(ra) # 800041c4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004f48:	00000613          	li	a2,0
    80004f4c:	00000597          	auipc	a1,0x0
    80004f50:	afc58593          	addi	a1,a1,-1284 # 80004a48 <_ZL11workerBodyDPv>
    80004f54:	fe840513          	addi	a0,s0,-24
    80004f58:	ffffc097          	auipc	ra,0xffffc
    80004f5c:	2c4080e7          	jalr	708(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    80004f60:	00003517          	auipc	a0,0x3
    80004f64:	3a850513          	addi	a0,a0,936 # 80008308 <CONSOLE_STATUS+0x2f8>
    80004f68:	fffff097          	auipc	ra,0xfffff
    80004f6c:	25c080e7          	jalr	604(ra) # 800041c4 <_Z11printStringPKc>
    80004f70:	00c0006f          	j	80004f7c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004f74:	ffffc097          	auipc	ra,0xffffc
    80004f78:	37c080e7          	jalr	892(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004f7c:	00005797          	auipc	a5,0x5
    80004f80:	2d77c783          	lbu	a5,727(a5) # 8000a253 <_ZL9finishedA>
    80004f84:	fe0788e3          	beqz	a5,80004f74 <_Z16System_Mode_testv+0xb4>
    80004f88:	00005797          	auipc	a5,0x5
    80004f8c:	2ca7c783          	lbu	a5,714(a5) # 8000a252 <_ZL9finishedB>
    80004f90:	fe0782e3          	beqz	a5,80004f74 <_Z16System_Mode_testv+0xb4>
    80004f94:	00005797          	auipc	a5,0x5
    80004f98:	2bd7c783          	lbu	a5,701(a5) # 8000a251 <_ZL9finishedC>
    80004f9c:	fc078ce3          	beqz	a5,80004f74 <_Z16System_Mode_testv+0xb4>
    80004fa0:	00005797          	auipc	a5,0x5
    80004fa4:	2b07c783          	lbu	a5,688(a5) # 8000a250 <_ZL9finishedD>
    80004fa8:	fc0786e3          	beqz	a5,80004f74 <_Z16System_Mode_testv+0xb4>
    }

}
    80004fac:	02813083          	ld	ra,40(sp)
    80004fb0:	02013403          	ld	s0,32(sp)
    80004fb4:	03010113          	addi	sp,sp,48
    80004fb8:	00008067          	ret

0000000080004fbc <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004fbc:	fe010113          	addi	sp,sp,-32
    80004fc0:	00113c23          	sd	ra,24(sp)
    80004fc4:	00813823          	sd	s0,16(sp)
    80004fc8:	00913423          	sd	s1,8(sp)
    80004fcc:	01213023          	sd	s2,0(sp)
    80004fd0:	02010413          	addi	s0,sp,32
    80004fd4:	00050493          	mv	s1,a0
    80004fd8:	00058913          	mv	s2,a1
    80004fdc:	0015879b          	addiw	a5,a1,1
    80004fe0:	0007851b          	sext.w	a0,a5
    80004fe4:	00f4a023          	sw	a5,0(s1)
    80004fe8:	0004a823          	sw	zero,16(s1)
    80004fec:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004ff0:	00251513          	slli	a0,a0,0x2
    80004ff4:	ffffc097          	auipc	ra,0xffffc
    80004ff8:	170080e7          	jalr	368(ra) # 80001164 <_Z9mem_allocm>
    80004ffc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005000:	00000593          	li	a1,0
    80005004:	02048513          	addi	a0,s1,32
    80005008:	ffffc097          	auipc	ra,0xffffc
    8000500c:	308080e7          	jalr	776(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&spaceAvailable, _cap);
    80005010:	00090593          	mv	a1,s2
    80005014:	01848513          	addi	a0,s1,24
    80005018:	ffffc097          	auipc	ra,0xffffc
    8000501c:	2f8080e7          	jalr	760(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexHead, 1);
    80005020:	00100593          	li	a1,1
    80005024:	02848513          	addi	a0,s1,40
    80005028:	ffffc097          	auipc	ra,0xffffc
    8000502c:	2e8080e7          	jalr	744(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexTail, 1);
    80005030:	00100593          	li	a1,1
    80005034:	03048513          	addi	a0,s1,48
    80005038:	ffffc097          	auipc	ra,0xffffc
    8000503c:	2d8080e7          	jalr	728(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
}
    80005040:	01813083          	ld	ra,24(sp)
    80005044:	01013403          	ld	s0,16(sp)
    80005048:	00813483          	ld	s1,8(sp)
    8000504c:	00013903          	ld	s2,0(sp)
    80005050:	02010113          	addi	sp,sp,32
    80005054:	00008067          	ret

0000000080005058 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005058:	fe010113          	addi	sp,sp,-32
    8000505c:	00113c23          	sd	ra,24(sp)
    80005060:	00813823          	sd	s0,16(sp)
    80005064:	00913423          	sd	s1,8(sp)
    80005068:	01213023          	sd	s2,0(sp)
    8000506c:	02010413          	addi	s0,sp,32
    80005070:	00050493          	mv	s1,a0
    80005074:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005078:	01853503          	ld	a0,24(a0)
    8000507c:	ffffc097          	auipc	ra,0xffffc
    80005080:	2f8080e7          	jalr	760(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexTail);
    80005084:	0304b503          	ld	a0,48(s1)
    80005088:	ffffc097          	auipc	ra,0xffffc
    8000508c:	2ec080e7          	jalr	748(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    buffer[tail] = val;
    80005090:	0084b783          	ld	a5,8(s1)
    80005094:	0144a703          	lw	a4,20(s1)
    80005098:	00271713          	slli	a4,a4,0x2
    8000509c:	00e787b3          	add	a5,a5,a4
    800050a0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800050a4:	0144a783          	lw	a5,20(s1)
    800050a8:	0017879b          	addiw	a5,a5,1
    800050ac:	0004a703          	lw	a4,0(s1)
    800050b0:	02e7e7bb          	remw	a5,a5,a4
    800050b4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800050b8:	0304b503          	ld	a0,48(s1)
    800050bc:	ffffc097          	auipc	ra,0xffffc
    800050c0:	2e4080e7          	jalr	740(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    sem_signal(itemAvailable);
    800050c4:	0204b503          	ld	a0,32(s1)
    800050c8:	ffffc097          	auipc	ra,0xffffc
    800050cc:	2d8080e7          	jalr	728(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

}
    800050d0:	01813083          	ld	ra,24(sp)
    800050d4:	01013403          	ld	s0,16(sp)
    800050d8:	00813483          	ld	s1,8(sp)
    800050dc:	00013903          	ld	s2,0(sp)
    800050e0:	02010113          	addi	sp,sp,32
    800050e4:	00008067          	ret

00000000800050e8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800050e8:	fe010113          	addi	sp,sp,-32
    800050ec:	00113c23          	sd	ra,24(sp)
    800050f0:	00813823          	sd	s0,16(sp)
    800050f4:	00913423          	sd	s1,8(sp)
    800050f8:	01213023          	sd	s2,0(sp)
    800050fc:	02010413          	addi	s0,sp,32
    80005100:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005104:	02053503          	ld	a0,32(a0)
    80005108:	ffffc097          	auipc	ra,0xffffc
    8000510c:	26c080e7          	jalr	620(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexHead);
    80005110:	0284b503          	ld	a0,40(s1)
    80005114:	ffffc097          	auipc	ra,0xffffc
    80005118:	260080e7          	jalr	608(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    int ret = buffer[head];
    8000511c:	0084b703          	ld	a4,8(s1)
    80005120:	0104a783          	lw	a5,16(s1)
    80005124:	00279693          	slli	a3,a5,0x2
    80005128:	00d70733          	add	a4,a4,a3
    8000512c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005130:	0017879b          	addiw	a5,a5,1
    80005134:	0004a703          	lw	a4,0(s1)
    80005138:	02e7e7bb          	remw	a5,a5,a4
    8000513c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005140:	0284b503          	ld	a0,40(s1)
    80005144:	ffffc097          	auipc	ra,0xffffc
    80005148:	25c080e7          	jalr	604(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    sem_signal(spaceAvailable);
    8000514c:	0184b503          	ld	a0,24(s1)
    80005150:	ffffc097          	auipc	ra,0xffffc
    80005154:	250080e7          	jalr	592(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    80005158:	00090513          	mv	a0,s2
    8000515c:	01813083          	ld	ra,24(sp)
    80005160:	01013403          	ld	s0,16(sp)
    80005164:	00813483          	ld	s1,8(sp)
    80005168:	00013903          	ld	s2,0(sp)
    8000516c:	02010113          	addi	sp,sp,32
    80005170:	00008067          	ret

0000000080005174 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005174:	fe010113          	addi	sp,sp,-32
    80005178:	00113c23          	sd	ra,24(sp)
    8000517c:	00813823          	sd	s0,16(sp)
    80005180:	00913423          	sd	s1,8(sp)
    80005184:	01213023          	sd	s2,0(sp)
    80005188:	02010413          	addi	s0,sp,32
    8000518c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005190:	02853503          	ld	a0,40(a0)
    80005194:	ffffc097          	auipc	ra,0xffffc
    80005198:	1e0080e7          	jalr	480(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    sem_wait(mutexTail);
    8000519c:	0304b503          	ld	a0,48(s1)
    800051a0:	ffffc097          	auipc	ra,0xffffc
    800051a4:	1d4080e7          	jalr	468(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    if (tail >= head) {
    800051a8:	0144a783          	lw	a5,20(s1)
    800051ac:	0104a903          	lw	s2,16(s1)
    800051b0:	0327ce63          	blt	a5,s2,800051ec <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800051b4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800051b8:	0304b503          	ld	a0,48(s1)
    800051bc:	ffffc097          	auipc	ra,0xffffc
    800051c0:	1e4080e7          	jalr	484(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
    sem_signal(mutexHead);
    800051c4:	0284b503          	ld	a0,40(s1)
    800051c8:	ffffc097          	auipc	ra,0xffffc
    800051cc:	1d8080e7          	jalr	472(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    800051d0:	00090513          	mv	a0,s2
    800051d4:	01813083          	ld	ra,24(sp)
    800051d8:	01013403          	ld	s0,16(sp)
    800051dc:	00813483          	ld	s1,8(sp)
    800051e0:	00013903          	ld	s2,0(sp)
    800051e4:	02010113          	addi	sp,sp,32
    800051e8:	00008067          	ret
        ret = cap - head + tail;
    800051ec:	0004a703          	lw	a4,0(s1)
    800051f0:	4127093b          	subw	s2,a4,s2
    800051f4:	00f9093b          	addw	s2,s2,a5
    800051f8:	fc1ff06f          	j	800051b8 <_ZN6Buffer6getCntEv+0x44>

00000000800051fc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800051fc:	fe010113          	addi	sp,sp,-32
    80005200:	00113c23          	sd	ra,24(sp)
    80005204:	00813823          	sd	s0,16(sp)
    80005208:	00913423          	sd	s1,8(sp)
    8000520c:	02010413          	addi	s0,sp,32
    80005210:	00050493          	mv	s1,a0
    putc('\n');
    80005214:	00a00513          	li	a0,10
    80005218:	ffffc097          	auipc	ra,0xffffc
    8000521c:	1dc080e7          	jalr	476(ra) # 800013f4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005220:	00003517          	auipc	a0,0x3
    80005224:	11050513          	addi	a0,a0,272 # 80008330 <CONSOLE_STATUS+0x320>
    80005228:	fffff097          	auipc	ra,0xfffff
    8000522c:	f9c080e7          	jalr	-100(ra) # 800041c4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005230:	00048513          	mv	a0,s1
    80005234:	00000097          	auipc	ra,0x0
    80005238:	f40080e7          	jalr	-192(ra) # 80005174 <_ZN6Buffer6getCntEv>
    8000523c:	02a05c63          	blez	a0,80005274 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005240:	0084b783          	ld	a5,8(s1)
    80005244:	0104a703          	lw	a4,16(s1)
    80005248:	00271713          	slli	a4,a4,0x2
    8000524c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005250:	0007c503          	lbu	a0,0(a5)
    80005254:	ffffc097          	auipc	ra,0xffffc
    80005258:	1a0080e7          	jalr	416(ra) # 800013f4 <_Z4putcc>
        head = (head + 1) % cap;
    8000525c:	0104a783          	lw	a5,16(s1)
    80005260:	0017879b          	addiw	a5,a5,1
    80005264:	0004a703          	lw	a4,0(s1)
    80005268:	02e7e7bb          	remw	a5,a5,a4
    8000526c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005270:	fc1ff06f          	j	80005230 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005274:	02100513          	li	a0,33
    80005278:	ffffc097          	auipc	ra,0xffffc
    8000527c:	17c080e7          	jalr	380(ra) # 800013f4 <_Z4putcc>
    putc('\n');
    80005280:	00a00513          	li	a0,10
    80005284:	ffffc097          	auipc	ra,0xffffc
    80005288:	170080e7          	jalr	368(ra) # 800013f4 <_Z4putcc>
    mem_free(buffer);
    8000528c:	0084b503          	ld	a0,8(s1)
    80005290:	ffffc097          	auipc	ra,0xffffc
    80005294:	f18080e7          	jalr	-232(ra) # 800011a8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005298:	0204b503          	ld	a0,32(s1)
    8000529c:	ffffc097          	auipc	ra,0xffffc
    800052a0:	0ac080e7          	jalr	172(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(spaceAvailable);
    800052a4:	0184b503          	ld	a0,24(s1)
    800052a8:	ffffc097          	auipc	ra,0xffffc
    800052ac:	0a0080e7          	jalr	160(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexTail);
    800052b0:	0304b503          	ld	a0,48(s1)
    800052b4:	ffffc097          	auipc	ra,0xffffc
    800052b8:	094080e7          	jalr	148(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexHead);
    800052bc:	0284b503          	ld	a0,40(s1)
    800052c0:	ffffc097          	auipc	ra,0xffffc
    800052c4:	088080e7          	jalr	136(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
}
    800052c8:	01813083          	ld	ra,24(sp)
    800052cc:	01013403          	ld	s0,16(sp)
    800052d0:	00813483          	ld	s1,8(sp)
    800052d4:	02010113          	addi	sp,sp,32
    800052d8:	00008067          	ret

00000000800052dc <start>:
    800052dc:	ff010113          	addi	sp,sp,-16
    800052e0:	00813423          	sd	s0,8(sp)
    800052e4:	01010413          	addi	s0,sp,16
    800052e8:	300027f3          	csrr	a5,mstatus
    800052ec:	ffffe737          	lui	a4,0xffffe
    800052f0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff333f>
    800052f4:	00e7f7b3          	and	a5,a5,a4
    800052f8:	00001737          	lui	a4,0x1
    800052fc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005300:	00e7e7b3          	or	a5,a5,a4
    80005304:	30079073          	csrw	mstatus,a5
    80005308:	00000797          	auipc	a5,0x0
    8000530c:	16078793          	addi	a5,a5,352 # 80005468 <system_main>
    80005310:	34179073          	csrw	mepc,a5
    80005314:	00000793          	li	a5,0
    80005318:	18079073          	csrw	satp,a5
    8000531c:	000107b7          	lui	a5,0x10
    80005320:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005324:	30279073          	csrw	medeleg,a5
    80005328:	30379073          	csrw	mideleg,a5
    8000532c:	104027f3          	csrr	a5,sie
    80005330:	2227e793          	ori	a5,a5,546
    80005334:	10479073          	csrw	sie,a5
    80005338:	fff00793          	li	a5,-1
    8000533c:	00a7d793          	srli	a5,a5,0xa
    80005340:	3b079073          	csrw	pmpaddr0,a5
    80005344:	00f00793          	li	a5,15
    80005348:	3a079073          	csrw	pmpcfg0,a5
    8000534c:	f14027f3          	csrr	a5,mhartid
    80005350:	0200c737          	lui	a4,0x200c
    80005354:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005358:	0007869b          	sext.w	a3,a5
    8000535c:	00269713          	slli	a4,a3,0x2
    80005360:	000f4637          	lui	a2,0xf4
    80005364:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005368:	00d70733          	add	a4,a4,a3
    8000536c:	0037979b          	slliw	a5,a5,0x3
    80005370:	020046b7          	lui	a3,0x2004
    80005374:	00d787b3          	add	a5,a5,a3
    80005378:	00c585b3          	add	a1,a1,a2
    8000537c:	00371693          	slli	a3,a4,0x3
    80005380:	00005717          	auipc	a4,0x5
    80005384:	ee070713          	addi	a4,a4,-288 # 8000a260 <timer_scratch>
    80005388:	00b7b023          	sd	a1,0(a5)
    8000538c:	00d70733          	add	a4,a4,a3
    80005390:	00f73c23          	sd	a5,24(a4)
    80005394:	02c73023          	sd	a2,32(a4)
    80005398:	34071073          	csrw	mscratch,a4
    8000539c:	00000797          	auipc	a5,0x0
    800053a0:	6e478793          	addi	a5,a5,1764 # 80005a80 <timervec>
    800053a4:	30579073          	csrw	mtvec,a5
    800053a8:	300027f3          	csrr	a5,mstatus
    800053ac:	0087e793          	ori	a5,a5,8
    800053b0:	30079073          	csrw	mstatus,a5
    800053b4:	304027f3          	csrr	a5,mie
    800053b8:	0807e793          	ori	a5,a5,128
    800053bc:	30479073          	csrw	mie,a5
    800053c0:	f14027f3          	csrr	a5,mhartid
    800053c4:	0007879b          	sext.w	a5,a5
    800053c8:	00078213          	mv	tp,a5
    800053cc:	30200073          	mret
    800053d0:	00813403          	ld	s0,8(sp)
    800053d4:	01010113          	addi	sp,sp,16
    800053d8:	00008067          	ret

00000000800053dc <timerinit>:
    800053dc:	ff010113          	addi	sp,sp,-16
    800053e0:	00813423          	sd	s0,8(sp)
    800053e4:	01010413          	addi	s0,sp,16
    800053e8:	f14027f3          	csrr	a5,mhartid
    800053ec:	0200c737          	lui	a4,0x200c
    800053f0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800053f4:	0007869b          	sext.w	a3,a5
    800053f8:	00269713          	slli	a4,a3,0x2
    800053fc:	000f4637          	lui	a2,0xf4
    80005400:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005404:	00d70733          	add	a4,a4,a3
    80005408:	0037979b          	slliw	a5,a5,0x3
    8000540c:	020046b7          	lui	a3,0x2004
    80005410:	00d787b3          	add	a5,a5,a3
    80005414:	00c585b3          	add	a1,a1,a2
    80005418:	00371693          	slli	a3,a4,0x3
    8000541c:	00005717          	auipc	a4,0x5
    80005420:	e4470713          	addi	a4,a4,-444 # 8000a260 <timer_scratch>
    80005424:	00b7b023          	sd	a1,0(a5)
    80005428:	00d70733          	add	a4,a4,a3
    8000542c:	00f73c23          	sd	a5,24(a4)
    80005430:	02c73023          	sd	a2,32(a4)
    80005434:	34071073          	csrw	mscratch,a4
    80005438:	00000797          	auipc	a5,0x0
    8000543c:	64878793          	addi	a5,a5,1608 # 80005a80 <timervec>
    80005440:	30579073          	csrw	mtvec,a5
    80005444:	300027f3          	csrr	a5,mstatus
    80005448:	0087e793          	ori	a5,a5,8
    8000544c:	30079073          	csrw	mstatus,a5
    80005450:	304027f3          	csrr	a5,mie
    80005454:	0807e793          	ori	a5,a5,128
    80005458:	30479073          	csrw	mie,a5
    8000545c:	00813403          	ld	s0,8(sp)
    80005460:	01010113          	addi	sp,sp,16
    80005464:	00008067          	ret

0000000080005468 <system_main>:
    80005468:	fe010113          	addi	sp,sp,-32
    8000546c:	00813823          	sd	s0,16(sp)
    80005470:	00913423          	sd	s1,8(sp)
    80005474:	00113c23          	sd	ra,24(sp)
    80005478:	02010413          	addi	s0,sp,32
    8000547c:	00000097          	auipc	ra,0x0
    80005480:	0c4080e7          	jalr	196(ra) # 80005540 <cpuid>
    80005484:	00005497          	auipc	s1,0x5
    80005488:	d3c48493          	addi	s1,s1,-708 # 8000a1c0 <started>
    8000548c:	02050263          	beqz	a0,800054b0 <system_main+0x48>
    80005490:	0004a783          	lw	a5,0(s1)
    80005494:	0007879b          	sext.w	a5,a5
    80005498:	fe078ce3          	beqz	a5,80005490 <system_main+0x28>
    8000549c:	0ff0000f          	fence
    800054a0:	00003517          	auipc	a0,0x3
    800054a4:	11050513          	addi	a0,a0,272 # 800085b0 <CONSOLE_STATUS+0x5a0>
    800054a8:	00001097          	auipc	ra,0x1
    800054ac:	a74080e7          	jalr	-1420(ra) # 80005f1c <panic>
    800054b0:	00001097          	auipc	ra,0x1
    800054b4:	9c8080e7          	jalr	-1592(ra) # 80005e78 <consoleinit>
    800054b8:	00001097          	auipc	ra,0x1
    800054bc:	154080e7          	jalr	340(ra) # 8000660c <printfinit>
    800054c0:	00003517          	auipc	a0,0x3
    800054c4:	ff850513          	addi	a0,a0,-8 # 800084b8 <CONSOLE_STATUS+0x4a8>
    800054c8:	00001097          	auipc	ra,0x1
    800054cc:	ab0080e7          	jalr	-1360(ra) # 80005f78 <__printf>
    800054d0:	00003517          	auipc	a0,0x3
    800054d4:	0b050513          	addi	a0,a0,176 # 80008580 <CONSOLE_STATUS+0x570>
    800054d8:	00001097          	auipc	ra,0x1
    800054dc:	aa0080e7          	jalr	-1376(ra) # 80005f78 <__printf>
    800054e0:	00003517          	auipc	a0,0x3
    800054e4:	fd850513          	addi	a0,a0,-40 # 800084b8 <CONSOLE_STATUS+0x4a8>
    800054e8:	00001097          	auipc	ra,0x1
    800054ec:	a90080e7          	jalr	-1392(ra) # 80005f78 <__printf>
    800054f0:	00001097          	auipc	ra,0x1
    800054f4:	4a8080e7          	jalr	1192(ra) # 80006998 <kinit>
    800054f8:	00000097          	auipc	ra,0x0
    800054fc:	148080e7          	jalr	328(ra) # 80005640 <trapinit>
    80005500:	00000097          	auipc	ra,0x0
    80005504:	16c080e7          	jalr	364(ra) # 8000566c <trapinithart>
    80005508:	00000097          	auipc	ra,0x0
    8000550c:	5b8080e7          	jalr	1464(ra) # 80005ac0 <plicinit>
    80005510:	00000097          	auipc	ra,0x0
    80005514:	5d8080e7          	jalr	1496(ra) # 80005ae8 <plicinithart>
    80005518:	00000097          	auipc	ra,0x0
    8000551c:	078080e7          	jalr	120(ra) # 80005590 <userinit>
    80005520:	0ff0000f          	fence
    80005524:	00100793          	li	a5,1
    80005528:	00003517          	auipc	a0,0x3
    8000552c:	07050513          	addi	a0,a0,112 # 80008598 <CONSOLE_STATUS+0x588>
    80005530:	00f4a023          	sw	a5,0(s1)
    80005534:	00001097          	auipc	ra,0x1
    80005538:	a44080e7          	jalr	-1468(ra) # 80005f78 <__printf>
    8000553c:	0000006f          	j	8000553c <system_main+0xd4>

0000000080005540 <cpuid>:
    80005540:	ff010113          	addi	sp,sp,-16
    80005544:	00813423          	sd	s0,8(sp)
    80005548:	01010413          	addi	s0,sp,16
    8000554c:	00020513          	mv	a0,tp
    80005550:	00813403          	ld	s0,8(sp)
    80005554:	0005051b          	sext.w	a0,a0
    80005558:	01010113          	addi	sp,sp,16
    8000555c:	00008067          	ret

0000000080005560 <mycpu>:
    80005560:	ff010113          	addi	sp,sp,-16
    80005564:	00813423          	sd	s0,8(sp)
    80005568:	01010413          	addi	s0,sp,16
    8000556c:	00020793          	mv	a5,tp
    80005570:	00813403          	ld	s0,8(sp)
    80005574:	0007879b          	sext.w	a5,a5
    80005578:	00779793          	slli	a5,a5,0x7
    8000557c:	00006517          	auipc	a0,0x6
    80005580:	d1450513          	addi	a0,a0,-748 # 8000b290 <cpus>
    80005584:	00f50533          	add	a0,a0,a5
    80005588:	01010113          	addi	sp,sp,16
    8000558c:	00008067          	ret

0000000080005590 <userinit>:
    80005590:	ff010113          	addi	sp,sp,-16
    80005594:	00813423          	sd	s0,8(sp)
    80005598:	01010413          	addi	s0,sp,16
    8000559c:	00813403          	ld	s0,8(sp)
    800055a0:	01010113          	addi	sp,sp,16
    800055a4:	ffffc317          	auipc	t1,0xffffc
    800055a8:	31430067          	jr	788(t1) # 800018b8 <main>

00000000800055ac <either_copyout>:
    800055ac:	ff010113          	addi	sp,sp,-16
    800055b0:	00813023          	sd	s0,0(sp)
    800055b4:	00113423          	sd	ra,8(sp)
    800055b8:	01010413          	addi	s0,sp,16
    800055bc:	02051663          	bnez	a0,800055e8 <either_copyout+0x3c>
    800055c0:	00058513          	mv	a0,a1
    800055c4:	00060593          	mv	a1,a2
    800055c8:	0006861b          	sext.w	a2,a3
    800055cc:	00002097          	auipc	ra,0x2
    800055d0:	c58080e7          	jalr	-936(ra) # 80007224 <__memmove>
    800055d4:	00813083          	ld	ra,8(sp)
    800055d8:	00013403          	ld	s0,0(sp)
    800055dc:	00000513          	li	a0,0
    800055e0:	01010113          	addi	sp,sp,16
    800055e4:	00008067          	ret
    800055e8:	00003517          	auipc	a0,0x3
    800055ec:	ff050513          	addi	a0,a0,-16 # 800085d8 <CONSOLE_STATUS+0x5c8>
    800055f0:	00001097          	auipc	ra,0x1
    800055f4:	92c080e7          	jalr	-1748(ra) # 80005f1c <panic>

00000000800055f8 <either_copyin>:
    800055f8:	ff010113          	addi	sp,sp,-16
    800055fc:	00813023          	sd	s0,0(sp)
    80005600:	00113423          	sd	ra,8(sp)
    80005604:	01010413          	addi	s0,sp,16
    80005608:	02059463          	bnez	a1,80005630 <either_copyin+0x38>
    8000560c:	00060593          	mv	a1,a2
    80005610:	0006861b          	sext.w	a2,a3
    80005614:	00002097          	auipc	ra,0x2
    80005618:	c10080e7          	jalr	-1008(ra) # 80007224 <__memmove>
    8000561c:	00813083          	ld	ra,8(sp)
    80005620:	00013403          	ld	s0,0(sp)
    80005624:	00000513          	li	a0,0
    80005628:	01010113          	addi	sp,sp,16
    8000562c:	00008067          	ret
    80005630:	00003517          	auipc	a0,0x3
    80005634:	fd050513          	addi	a0,a0,-48 # 80008600 <CONSOLE_STATUS+0x5f0>
    80005638:	00001097          	auipc	ra,0x1
    8000563c:	8e4080e7          	jalr	-1820(ra) # 80005f1c <panic>

0000000080005640 <trapinit>:
    80005640:	ff010113          	addi	sp,sp,-16
    80005644:	00813423          	sd	s0,8(sp)
    80005648:	01010413          	addi	s0,sp,16
    8000564c:	00813403          	ld	s0,8(sp)
    80005650:	00003597          	auipc	a1,0x3
    80005654:	fd858593          	addi	a1,a1,-40 # 80008628 <CONSOLE_STATUS+0x618>
    80005658:	00006517          	auipc	a0,0x6
    8000565c:	cb850513          	addi	a0,a0,-840 # 8000b310 <tickslock>
    80005660:	01010113          	addi	sp,sp,16
    80005664:	00001317          	auipc	t1,0x1
    80005668:	5c430067          	jr	1476(t1) # 80006c28 <initlock>

000000008000566c <trapinithart>:
    8000566c:	ff010113          	addi	sp,sp,-16
    80005670:	00813423          	sd	s0,8(sp)
    80005674:	01010413          	addi	s0,sp,16
    80005678:	00000797          	auipc	a5,0x0
    8000567c:	2f878793          	addi	a5,a5,760 # 80005970 <kernelvec>
    80005680:	10579073          	csrw	stvec,a5
    80005684:	00813403          	ld	s0,8(sp)
    80005688:	01010113          	addi	sp,sp,16
    8000568c:	00008067          	ret

0000000080005690 <usertrap>:
    80005690:	ff010113          	addi	sp,sp,-16
    80005694:	00813423          	sd	s0,8(sp)
    80005698:	01010413          	addi	s0,sp,16
    8000569c:	00813403          	ld	s0,8(sp)
    800056a0:	01010113          	addi	sp,sp,16
    800056a4:	00008067          	ret

00000000800056a8 <usertrapret>:
    800056a8:	ff010113          	addi	sp,sp,-16
    800056ac:	00813423          	sd	s0,8(sp)
    800056b0:	01010413          	addi	s0,sp,16
    800056b4:	00813403          	ld	s0,8(sp)
    800056b8:	01010113          	addi	sp,sp,16
    800056bc:	00008067          	ret

00000000800056c0 <kerneltrap>:
    800056c0:	fe010113          	addi	sp,sp,-32
    800056c4:	00813823          	sd	s0,16(sp)
    800056c8:	00113c23          	sd	ra,24(sp)
    800056cc:	00913423          	sd	s1,8(sp)
    800056d0:	02010413          	addi	s0,sp,32
    800056d4:	142025f3          	csrr	a1,scause
    800056d8:	100027f3          	csrr	a5,sstatus
    800056dc:	0027f793          	andi	a5,a5,2
    800056e0:	10079c63          	bnez	a5,800057f8 <kerneltrap+0x138>
    800056e4:	142027f3          	csrr	a5,scause
    800056e8:	0207ce63          	bltz	a5,80005724 <kerneltrap+0x64>
    800056ec:	00003517          	auipc	a0,0x3
    800056f0:	f8450513          	addi	a0,a0,-124 # 80008670 <CONSOLE_STATUS+0x660>
    800056f4:	00001097          	auipc	ra,0x1
    800056f8:	884080e7          	jalr	-1916(ra) # 80005f78 <__printf>
    800056fc:	141025f3          	csrr	a1,sepc
    80005700:	14302673          	csrr	a2,stval
    80005704:	00003517          	auipc	a0,0x3
    80005708:	f7c50513          	addi	a0,a0,-132 # 80008680 <CONSOLE_STATUS+0x670>
    8000570c:	00001097          	auipc	ra,0x1
    80005710:	86c080e7          	jalr	-1940(ra) # 80005f78 <__printf>
    80005714:	00003517          	auipc	a0,0x3
    80005718:	f8450513          	addi	a0,a0,-124 # 80008698 <CONSOLE_STATUS+0x688>
    8000571c:	00001097          	auipc	ra,0x1
    80005720:	800080e7          	jalr	-2048(ra) # 80005f1c <panic>
    80005724:	0ff7f713          	andi	a4,a5,255
    80005728:	00900693          	li	a3,9
    8000572c:	04d70063          	beq	a4,a3,8000576c <kerneltrap+0xac>
    80005730:	fff00713          	li	a4,-1
    80005734:	03f71713          	slli	a4,a4,0x3f
    80005738:	00170713          	addi	a4,a4,1
    8000573c:	fae798e3          	bne	a5,a4,800056ec <kerneltrap+0x2c>
    80005740:	00000097          	auipc	ra,0x0
    80005744:	e00080e7          	jalr	-512(ra) # 80005540 <cpuid>
    80005748:	06050663          	beqz	a0,800057b4 <kerneltrap+0xf4>
    8000574c:	144027f3          	csrr	a5,sip
    80005750:	ffd7f793          	andi	a5,a5,-3
    80005754:	14479073          	csrw	sip,a5
    80005758:	01813083          	ld	ra,24(sp)
    8000575c:	01013403          	ld	s0,16(sp)
    80005760:	00813483          	ld	s1,8(sp)
    80005764:	02010113          	addi	sp,sp,32
    80005768:	00008067          	ret
    8000576c:	00000097          	auipc	ra,0x0
    80005770:	3c8080e7          	jalr	968(ra) # 80005b34 <plic_claim>
    80005774:	00a00793          	li	a5,10
    80005778:	00050493          	mv	s1,a0
    8000577c:	06f50863          	beq	a0,a5,800057ec <kerneltrap+0x12c>
    80005780:	fc050ce3          	beqz	a0,80005758 <kerneltrap+0x98>
    80005784:	00050593          	mv	a1,a0
    80005788:	00003517          	auipc	a0,0x3
    8000578c:	ec850513          	addi	a0,a0,-312 # 80008650 <CONSOLE_STATUS+0x640>
    80005790:	00000097          	auipc	ra,0x0
    80005794:	7e8080e7          	jalr	2024(ra) # 80005f78 <__printf>
    80005798:	01013403          	ld	s0,16(sp)
    8000579c:	01813083          	ld	ra,24(sp)
    800057a0:	00048513          	mv	a0,s1
    800057a4:	00813483          	ld	s1,8(sp)
    800057a8:	02010113          	addi	sp,sp,32
    800057ac:	00000317          	auipc	t1,0x0
    800057b0:	3c030067          	jr	960(t1) # 80005b6c <plic_complete>
    800057b4:	00006517          	auipc	a0,0x6
    800057b8:	b5c50513          	addi	a0,a0,-1188 # 8000b310 <tickslock>
    800057bc:	00001097          	auipc	ra,0x1
    800057c0:	490080e7          	jalr	1168(ra) # 80006c4c <acquire>
    800057c4:	00005717          	auipc	a4,0x5
    800057c8:	a0070713          	addi	a4,a4,-1536 # 8000a1c4 <ticks>
    800057cc:	00072783          	lw	a5,0(a4)
    800057d0:	00006517          	auipc	a0,0x6
    800057d4:	b4050513          	addi	a0,a0,-1216 # 8000b310 <tickslock>
    800057d8:	0017879b          	addiw	a5,a5,1
    800057dc:	00f72023          	sw	a5,0(a4)
    800057e0:	00001097          	auipc	ra,0x1
    800057e4:	538080e7          	jalr	1336(ra) # 80006d18 <release>
    800057e8:	f65ff06f          	j	8000574c <kerneltrap+0x8c>
    800057ec:	00001097          	auipc	ra,0x1
    800057f0:	094080e7          	jalr	148(ra) # 80006880 <uartintr>
    800057f4:	fa5ff06f          	j	80005798 <kerneltrap+0xd8>
    800057f8:	00003517          	auipc	a0,0x3
    800057fc:	e3850513          	addi	a0,a0,-456 # 80008630 <CONSOLE_STATUS+0x620>
    80005800:	00000097          	auipc	ra,0x0
    80005804:	71c080e7          	jalr	1820(ra) # 80005f1c <panic>

0000000080005808 <clockintr>:
    80005808:	fe010113          	addi	sp,sp,-32
    8000580c:	00813823          	sd	s0,16(sp)
    80005810:	00913423          	sd	s1,8(sp)
    80005814:	00113c23          	sd	ra,24(sp)
    80005818:	02010413          	addi	s0,sp,32
    8000581c:	00006497          	auipc	s1,0x6
    80005820:	af448493          	addi	s1,s1,-1292 # 8000b310 <tickslock>
    80005824:	00048513          	mv	a0,s1
    80005828:	00001097          	auipc	ra,0x1
    8000582c:	424080e7          	jalr	1060(ra) # 80006c4c <acquire>
    80005830:	00005717          	auipc	a4,0x5
    80005834:	99470713          	addi	a4,a4,-1644 # 8000a1c4 <ticks>
    80005838:	00072783          	lw	a5,0(a4)
    8000583c:	01013403          	ld	s0,16(sp)
    80005840:	01813083          	ld	ra,24(sp)
    80005844:	00048513          	mv	a0,s1
    80005848:	0017879b          	addiw	a5,a5,1
    8000584c:	00813483          	ld	s1,8(sp)
    80005850:	00f72023          	sw	a5,0(a4)
    80005854:	02010113          	addi	sp,sp,32
    80005858:	00001317          	auipc	t1,0x1
    8000585c:	4c030067          	jr	1216(t1) # 80006d18 <release>

0000000080005860 <devintr>:
    80005860:	142027f3          	csrr	a5,scause
    80005864:	00000513          	li	a0,0
    80005868:	0007c463          	bltz	a5,80005870 <devintr+0x10>
    8000586c:	00008067          	ret
    80005870:	fe010113          	addi	sp,sp,-32
    80005874:	00813823          	sd	s0,16(sp)
    80005878:	00113c23          	sd	ra,24(sp)
    8000587c:	00913423          	sd	s1,8(sp)
    80005880:	02010413          	addi	s0,sp,32
    80005884:	0ff7f713          	andi	a4,a5,255
    80005888:	00900693          	li	a3,9
    8000588c:	04d70c63          	beq	a4,a3,800058e4 <devintr+0x84>
    80005890:	fff00713          	li	a4,-1
    80005894:	03f71713          	slli	a4,a4,0x3f
    80005898:	00170713          	addi	a4,a4,1
    8000589c:	00e78c63          	beq	a5,a4,800058b4 <devintr+0x54>
    800058a0:	01813083          	ld	ra,24(sp)
    800058a4:	01013403          	ld	s0,16(sp)
    800058a8:	00813483          	ld	s1,8(sp)
    800058ac:	02010113          	addi	sp,sp,32
    800058b0:	00008067          	ret
    800058b4:	00000097          	auipc	ra,0x0
    800058b8:	c8c080e7          	jalr	-884(ra) # 80005540 <cpuid>
    800058bc:	06050663          	beqz	a0,80005928 <devintr+0xc8>
    800058c0:	144027f3          	csrr	a5,sip
    800058c4:	ffd7f793          	andi	a5,a5,-3
    800058c8:	14479073          	csrw	sip,a5
    800058cc:	01813083          	ld	ra,24(sp)
    800058d0:	01013403          	ld	s0,16(sp)
    800058d4:	00813483          	ld	s1,8(sp)
    800058d8:	00200513          	li	a0,2
    800058dc:	02010113          	addi	sp,sp,32
    800058e0:	00008067          	ret
    800058e4:	00000097          	auipc	ra,0x0
    800058e8:	250080e7          	jalr	592(ra) # 80005b34 <plic_claim>
    800058ec:	00a00793          	li	a5,10
    800058f0:	00050493          	mv	s1,a0
    800058f4:	06f50663          	beq	a0,a5,80005960 <devintr+0x100>
    800058f8:	00100513          	li	a0,1
    800058fc:	fa0482e3          	beqz	s1,800058a0 <devintr+0x40>
    80005900:	00048593          	mv	a1,s1
    80005904:	00003517          	auipc	a0,0x3
    80005908:	d4c50513          	addi	a0,a0,-692 # 80008650 <CONSOLE_STATUS+0x640>
    8000590c:	00000097          	auipc	ra,0x0
    80005910:	66c080e7          	jalr	1644(ra) # 80005f78 <__printf>
    80005914:	00048513          	mv	a0,s1
    80005918:	00000097          	auipc	ra,0x0
    8000591c:	254080e7          	jalr	596(ra) # 80005b6c <plic_complete>
    80005920:	00100513          	li	a0,1
    80005924:	f7dff06f          	j	800058a0 <devintr+0x40>
    80005928:	00006517          	auipc	a0,0x6
    8000592c:	9e850513          	addi	a0,a0,-1560 # 8000b310 <tickslock>
    80005930:	00001097          	auipc	ra,0x1
    80005934:	31c080e7          	jalr	796(ra) # 80006c4c <acquire>
    80005938:	00005717          	auipc	a4,0x5
    8000593c:	88c70713          	addi	a4,a4,-1908 # 8000a1c4 <ticks>
    80005940:	00072783          	lw	a5,0(a4)
    80005944:	00006517          	auipc	a0,0x6
    80005948:	9cc50513          	addi	a0,a0,-1588 # 8000b310 <tickslock>
    8000594c:	0017879b          	addiw	a5,a5,1
    80005950:	00f72023          	sw	a5,0(a4)
    80005954:	00001097          	auipc	ra,0x1
    80005958:	3c4080e7          	jalr	964(ra) # 80006d18 <release>
    8000595c:	f65ff06f          	j	800058c0 <devintr+0x60>
    80005960:	00001097          	auipc	ra,0x1
    80005964:	f20080e7          	jalr	-224(ra) # 80006880 <uartintr>
    80005968:	fadff06f          	j	80005914 <devintr+0xb4>
    8000596c:	0000                	unimp
	...

0000000080005970 <kernelvec>:
    80005970:	f0010113          	addi	sp,sp,-256
    80005974:	00113023          	sd	ra,0(sp)
    80005978:	00213423          	sd	sp,8(sp)
    8000597c:	00313823          	sd	gp,16(sp)
    80005980:	00413c23          	sd	tp,24(sp)
    80005984:	02513023          	sd	t0,32(sp)
    80005988:	02613423          	sd	t1,40(sp)
    8000598c:	02713823          	sd	t2,48(sp)
    80005990:	02813c23          	sd	s0,56(sp)
    80005994:	04913023          	sd	s1,64(sp)
    80005998:	04a13423          	sd	a0,72(sp)
    8000599c:	04b13823          	sd	a1,80(sp)
    800059a0:	04c13c23          	sd	a2,88(sp)
    800059a4:	06d13023          	sd	a3,96(sp)
    800059a8:	06e13423          	sd	a4,104(sp)
    800059ac:	06f13823          	sd	a5,112(sp)
    800059b0:	07013c23          	sd	a6,120(sp)
    800059b4:	09113023          	sd	a7,128(sp)
    800059b8:	09213423          	sd	s2,136(sp)
    800059bc:	09313823          	sd	s3,144(sp)
    800059c0:	09413c23          	sd	s4,152(sp)
    800059c4:	0b513023          	sd	s5,160(sp)
    800059c8:	0b613423          	sd	s6,168(sp)
    800059cc:	0b713823          	sd	s7,176(sp)
    800059d0:	0b813c23          	sd	s8,184(sp)
    800059d4:	0d913023          	sd	s9,192(sp)
    800059d8:	0da13423          	sd	s10,200(sp)
    800059dc:	0db13823          	sd	s11,208(sp)
    800059e0:	0dc13c23          	sd	t3,216(sp)
    800059e4:	0fd13023          	sd	t4,224(sp)
    800059e8:	0fe13423          	sd	t5,232(sp)
    800059ec:	0ff13823          	sd	t6,240(sp)
    800059f0:	cd1ff0ef          	jal	ra,800056c0 <kerneltrap>
    800059f4:	00013083          	ld	ra,0(sp)
    800059f8:	00813103          	ld	sp,8(sp)
    800059fc:	01013183          	ld	gp,16(sp)
    80005a00:	02013283          	ld	t0,32(sp)
    80005a04:	02813303          	ld	t1,40(sp)
    80005a08:	03013383          	ld	t2,48(sp)
    80005a0c:	03813403          	ld	s0,56(sp)
    80005a10:	04013483          	ld	s1,64(sp)
    80005a14:	04813503          	ld	a0,72(sp)
    80005a18:	05013583          	ld	a1,80(sp)
    80005a1c:	05813603          	ld	a2,88(sp)
    80005a20:	06013683          	ld	a3,96(sp)
    80005a24:	06813703          	ld	a4,104(sp)
    80005a28:	07013783          	ld	a5,112(sp)
    80005a2c:	07813803          	ld	a6,120(sp)
    80005a30:	08013883          	ld	a7,128(sp)
    80005a34:	08813903          	ld	s2,136(sp)
    80005a38:	09013983          	ld	s3,144(sp)
    80005a3c:	09813a03          	ld	s4,152(sp)
    80005a40:	0a013a83          	ld	s5,160(sp)
    80005a44:	0a813b03          	ld	s6,168(sp)
    80005a48:	0b013b83          	ld	s7,176(sp)
    80005a4c:	0b813c03          	ld	s8,184(sp)
    80005a50:	0c013c83          	ld	s9,192(sp)
    80005a54:	0c813d03          	ld	s10,200(sp)
    80005a58:	0d013d83          	ld	s11,208(sp)
    80005a5c:	0d813e03          	ld	t3,216(sp)
    80005a60:	0e013e83          	ld	t4,224(sp)
    80005a64:	0e813f03          	ld	t5,232(sp)
    80005a68:	0f013f83          	ld	t6,240(sp)
    80005a6c:	10010113          	addi	sp,sp,256
    80005a70:	10200073          	sret
    80005a74:	00000013          	nop
    80005a78:	00000013          	nop
    80005a7c:	00000013          	nop

0000000080005a80 <timervec>:
    80005a80:	34051573          	csrrw	a0,mscratch,a0
    80005a84:	00b53023          	sd	a1,0(a0)
    80005a88:	00c53423          	sd	a2,8(a0)
    80005a8c:	00d53823          	sd	a3,16(a0)
    80005a90:	01853583          	ld	a1,24(a0)
    80005a94:	02053603          	ld	a2,32(a0)
    80005a98:	0005b683          	ld	a3,0(a1)
    80005a9c:	00c686b3          	add	a3,a3,a2
    80005aa0:	00d5b023          	sd	a3,0(a1)
    80005aa4:	00200593          	li	a1,2
    80005aa8:	14459073          	csrw	sip,a1
    80005aac:	01053683          	ld	a3,16(a0)
    80005ab0:	00853603          	ld	a2,8(a0)
    80005ab4:	00053583          	ld	a1,0(a0)
    80005ab8:	34051573          	csrrw	a0,mscratch,a0
    80005abc:	30200073          	mret

0000000080005ac0 <plicinit>:
    80005ac0:	ff010113          	addi	sp,sp,-16
    80005ac4:	00813423          	sd	s0,8(sp)
    80005ac8:	01010413          	addi	s0,sp,16
    80005acc:	00813403          	ld	s0,8(sp)
    80005ad0:	0c0007b7          	lui	a5,0xc000
    80005ad4:	00100713          	li	a4,1
    80005ad8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005adc:	00e7a223          	sw	a4,4(a5)
    80005ae0:	01010113          	addi	sp,sp,16
    80005ae4:	00008067          	ret

0000000080005ae8 <plicinithart>:
    80005ae8:	ff010113          	addi	sp,sp,-16
    80005aec:	00813023          	sd	s0,0(sp)
    80005af0:	00113423          	sd	ra,8(sp)
    80005af4:	01010413          	addi	s0,sp,16
    80005af8:	00000097          	auipc	ra,0x0
    80005afc:	a48080e7          	jalr	-1464(ra) # 80005540 <cpuid>
    80005b00:	0085171b          	slliw	a4,a0,0x8
    80005b04:	0c0027b7          	lui	a5,0xc002
    80005b08:	00e787b3          	add	a5,a5,a4
    80005b0c:	40200713          	li	a4,1026
    80005b10:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005b14:	00813083          	ld	ra,8(sp)
    80005b18:	00013403          	ld	s0,0(sp)
    80005b1c:	00d5151b          	slliw	a0,a0,0xd
    80005b20:	0c2017b7          	lui	a5,0xc201
    80005b24:	00a78533          	add	a0,a5,a0
    80005b28:	00052023          	sw	zero,0(a0)
    80005b2c:	01010113          	addi	sp,sp,16
    80005b30:	00008067          	ret

0000000080005b34 <plic_claim>:
    80005b34:	ff010113          	addi	sp,sp,-16
    80005b38:	00813023          	sd	s0,0(sp)
    80005b3c:	00113423          	sd	ra,8(sp)
    80005b40:	01010413          	addi	s0,sp,16
    80005b44:	00000097          	auipc	ra,0x0
    80005b48:	9fc080e7          	jalr	-1540(ra) # 80005540 <cpuid>
    80005b4c:	00813083          	ld	ra,8(sp)
    80005b50:	00013403          	ld	s0,0(sp)
    80005b54:	00d5151b          	slliw	a0,a0,0xd
    80005b58:	0c2017b7          	lui	a5,0xc201
    80005b5c:	00a78533          	add	a0,a5,a0
    80005b60:	00452503          	lw	a0,4(a0)
    80005b64:	01010113          	addi	sp,sp,16
    80005b68:	00008067          	ret

0000000080005b6c <plic_complete>:
    80005b6c:	fe010113          	addi	sp,sp,-32
    80005b70:	00813823          	sd	s0,16(sp)
    80005b74:	00913423          	sd	s1,8(sp)
    80005b78:	00113c23          	sd	ra,24(sp)
    80005b7c:	02010413          	addi	s0,sp,32
    80005b80:	00050493          	mv	s1,a0
    80005b84:	00000097          	auipc	ra,0x0
    80005b88:	9bc080e7          	jalr	-1604(ra) # 80005540 <cpuid>
    80005b8c:	01813083          	ld	ra,24(sp)
    80005b90:	01013403          	ld	s0,16(sp)
    80005b94:	00d5179b          	slliw	a5,a0,0xd
    80005b98:	0c201737          	lui	a4,0xc201
    80005b9c:	00f707b3          	add	a5,a4,a5
    80005ba0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005ba4:	00813483          	ld	s1,8(sp)
    80005ba8:	02010113          	addi	sp,sp,32
    80005bac:	00008067          	ret

0000000080005bb0 <consolewrite>:
    80005bb0:	fb010113          	addi	sp,sp,-80
    80005bb4:	04813023          	sd	s0,64(sp)
    80005bb8:	04113423          	sd	ra,72(sp)
    80005bbc:	02913c23          	sd	s1,56(sp)
    80005bc0:	03213823          	sd	s2,48(sp)
    80005bc4:	03313423          	sd	s3,40(sp)
    80005bc8:	03413023          	sd	s4,32(sp)
    80005bcc:	01513c23          	sd	s5,24(sp)
    80005bd0:	05010413          	addi	s0,sp,80
    80005bd4:	06c05c63          	blez	a2,80005c4c <consolewrite+0x9c>
    80005bd8:	00060993          	mv	s3,a2
    80005bdc:	00050a13          	mv	s4,a0
    80005be0:	00058493          	mv	s1,a1
    80005be4:	00000913          	li	s2,0
    80005be8:	fff00a93          	li	s5,-1
    80005bec:	01c0006f          	j	80005c08 <consolewrite+0x58>
    80005bf0:	fbf44503          	lbu	a0,-65(s0)
    80005bf4:	0019091b          	addiw	s2,s2,1
    80005bf8:	00148493          	addi	s1,s1,1
    80005bfc:	00001097          	auipc	ra,0x1
    80005c00:	a9c080e7          	jalr	-1380(ra) # 80006698 <uartputc>
    80005c04:	03298063          	beq	s3,s2,80005c24 <consolewrite+0x74>
    80005c08:	00048613          	mv	a2,s1
    80005c0c:	00100693          	li	a3,1
    80005c10:	000a0593          	mv	a1,s4
    80005c14:	fbf40513          	addi	a0,s0,-65
    80005c18:	00000097          	auipc	ra,0x0
    80005c1c:	9e0080e7          	jalr	-1568(ra) # 800055f8 <either_copyin>
    80005c20:	fd5518e3          	bne	a0,s5,80005bf0 <consolewrite+0x40>
    80005c24:	04813083          	ld	ra,72(sp)
    80005c28:	04013403          	ld	s0,64(sp)
    80005c2c:	03813483          	ld	s1,56(sp)
    80005c30:	02813983          	ld	s3,40(sp)
    80005c34:	02013a03          	ld	s4,32(sp)
    80005c38:	01813a83          	ld	s5,24(sp)
    80005c3c:	00090513          	mv	a0,s2
    80005c40:	03013903          	ld	s2,48(sp)
    80005c44:	05010113          	addi	sp,sp,80
    80005c48:	00008067          	ret
    80005c4c:	00000913          	li	s2,0
    80005c50:	fd5ff06f          	j	80005c24 <consolewrite+0x74>

0000000080005c54 <consoleread>:
    80005c54:	f9010113          	addi	sp,sp,-112
    80005c58:	06813023          	sd	s0,96(sp)
    80005c5c:	04913c23          	sd	s1,88(sp)
    80005c60:	05213823          	sd	s2,80(sp)
    80005c64:	05313423          	sd	s3,72(sp)
    80005c68:	05413023          	sd	s4,64(sp)
    80005c6c:	03513c23          	sd	s5,56(sp)
    80005c70:	03613823          	sd	s6,48(sp)
    80005c74:	03713423          	sd	s7,40(sp)
    80005c78:	03813023          	sd	s8,32(sp)
    80005c7c:	06113423          	sd	ra,104(sp)
    80005c80:	01913c23          	sd	s9,24(sp)
    80005c84:	07010413          	addi	s0,sp,112
    80005c88:	00060b93          	mv	s7,a2
    80005c8c:	00050913          	mv	s2,a0
    80005c90:	00058c13          	mv	s8,a1
    80005c94:	00060b1b          	sext.w	s6,a2
    80005c98:	00005497          	auipc	s1,0x5
    80005c9c:	6a048493          	addi	s1,s1,1696 # 8000b338 <cons>
    80005ca0:	00400993          	li	s3,4
    80005ca4:	fff00a13          	li	s4,-1
    80005ca8:	00a00a93          	li	s5,10
    80005cac:	05705e63          	blez	s7,80005d08 <consoleread+0xb4>
    80005cb0:	09c4a703          	lw	a4,156(s1)
    80005cb4:	0984a783          	lw	a5,152(s1)
    80005cb8:	0007071b          	sext.w	a4,a4
    80005cbc:	08e78463          	beq	a5,a4,80005d44 <consoleread+0xf0>
    80005cc0:	07f7f713          	andi	a4,a5,127
    80005cc4:	00e48733          	add	a4,s1,a4
    80005cc8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80005ccc:	0017869b          	addiw	a3,a5,1
    80005cd0:	08d4ac23          	sw	a3,152(s1)
    80005cd4:	00070c9b          	sext.w	s9,a4
    80005cd8:	0b370663          	beq	a4,s3,80005d84 <consoleread+0x130>
    80005cdc:	00100693          	li	a3,1
    80005ce0:	f9f40613          	addi	a2,s0,-97
    80005ce4:	000c0593          	mv	a1,s8
    80005ce8:	00090513          	mv	a0,s2
    80005cec:	f8e40fa3          	sb	a4,-97(s0)
    80005cf0:	00000097          	auipc	ra,0x0
    80005cf4:	8bc080e7          	jalr	-1860(ra) # 800055ac <either_copyout>
    80005cf8:	01450863          	beq	a0,s4,80005d08 <consoleread+0xb4>
    80005cfc:	001c0c13          	addi	s8,s8,1
    80005d00:	fffb8b9b          	addiw	s7,s7,-1
    80005d04:	fb5c94e3          	bne	s9,s5,80005cac <consoleread+0x58>
    80005d08:	000b851b          	sext.w	a0,s7
    80005d0c:	06813083          	ld	ra,104(sp)
    80005d10:	06013403          	ld	s0,96(sp)
    80005d14:	05813483          	ld	s1,88(sp)
    80005d18:	05013903          	ld	s2,80(sp)
    80005d1c:	04813983          	ld	s3,72(sp)
    80005d20:	04013a03          	ld	s4,64(sp)
    80005d24:	03813a83          	ld	s5,56(sp)
    80005d28:	02813b83          	ld	s7,40(sp)
    80005d2c:	02013c03          	ld	s8,32(sp)
    80005d30:	01813c83          	ld	s9,24(sp)
    80005d34:	40ab053b          	subw	a0,s6,a0
    80005d38:	03013b03          	ld	s6,48(sp)
    80005d3c:	07010113          	addi	sp,sp,112
    80005d40:	00008067          	ret
    80005d44:	00001097          	auipc	ra,0x1
    80005d48:	1d8080e7          	jalr	472(ra) # 80006f1c <push_on>
    80005d4c:	0984a703          	lw	a4,152(s1)
    80005d50:	09c4a783          	lw	a5,156(s1)
    80005d54:	0007879b          	sext.w	a5,a5
    80005d58:	fef70ce3          	beq	a4,a5,80005d50 <consoleread+0xfc>
    80005d5c:	00001097          	auipc	ra,0x1
    80005d60:	234080e7          	jalr	564(ra) # 80006f90 <pop_on>
    80005d64:	0984a783          	lw	a5,152(s1)
    80005d68:	07f7f713          	andi	a4,a5,127
    80005d6c:	00e48733          	add	a4,s1,a4
    80005d70:	01874703          	lbu	a4,24(a4)
    80005d74:	0017869b          	addiw	a3,a5,1
    80005d78:	08d4ac23          	sw	a3,152(s1)
    80005d7c:	00070c9b          	sext.w	s9,a4
    80005d80:	f5371ee3          	bne	a4,s3,80005cdc <consoleread+0x88>
    80005d84:	000b851b          	sext.w	a0,s7
    80005d88:	f96bf2e3          	bgeu	s7,s6,80005d0c <consoleread+0xb8>
    80005d8c:	08f4ac23          	sw	a5,152(s1)
    80005d90:	f7dff06f          	j	80005d0c <consoleread+0xb8>

0000000080005d94 <consputc>:
    80005d94:	10000793          	li	a5,256
    80005d98:	00f50663          	beq	a0,a5,80005da4 <consputc+0x10>
    80005d9c:	00001317          	auipc	t1,0x1
    80005da0:	9f430067          	jr	-1548(t1) # 80006790 <uartputc_sync>
    80005da4:	ff010113          	addi	sp,sp,-16
    80005da8:	00113423          	sd	ra,8(sp)
    80005dac:	00813023          	sd	s0,0(sp)
    80005db0:	01010413          	addi	s0,sp,16
    80005db4:	00800513          	li	a0,8
    80005db8:	00001097          	auipc	ra,0x1
    80005dbc:	9d8080e7          	jalr	-1576(ra) # 80006790 <uartputc_sync>
    80005dc0:	02000513          	li	a0,32
    80005dc4:	00001097          	auipc	ra,0x1
    80005dc8:	9cc080e7          	jalr	-1588(ra) # 80006790 <uartputc_sync>
    80005dcc:	00013403          	ld	s0,0(sp)
    80005dd0:	00813083          	ld	ra,8(sp)
    80005dd4:	00800513          	li	a0,8
    80005dd8:	01010113          	addi	sp,sp,16
    80005ddc:	00001317          	auipc	t1,0x1
    80005de0:	9b430067          	jr	-1612(t1) # 80006790 <uartputc_sync>

0000000080005de4 <consoleintr>:
    80005de4:	fe010113          	addi	sp,sp,-32
    80005de8:	00813823          	sd	s0,16(sp)
    80005dec:	00913423          	sd	s1,8(sp)
    80005df0:	01213023          	sd	s2,0(sp)
    80005df4:	00113c23          	sd	ra,24(sp)
    80005df8:	02010413          	addi	s0,sp,32
    80005dfc:	00005917          	auipc	s2,0x5
    80005e00:	53c90913          	addi	s2,s2,1340 # 8000b338 <cons>
    80005e04:	00050493          	mv	s1,a0
    80005e08:	00090513          	mv	a0,s2
    80005e0c:	00001097          	auipc	ra,0x1
    80005e10:	e40080e7          	jalr	-448(ra) # 80006c4c <acquire>
    80005e14:	02048c63          	beqz	s1,80005e4c <consoleintr+0x68>
    80005e18:	0a092783          	lw	a5,160(s2)
    80005e1c:	09892703          	lw	a4,152(s2)
    80005e20:	07f00693          	li	a3,127
    80005e24:	40e7873b          	subw	a4,a5,a4
    80005e28:	02e6e263          	bltu	a3,a4,80005e4c <consoleintr+0x68>
    80005e2c:	00d00713          	li	a4,13
    80005e30:	04e48063          	beq	s1,a4,80005e70 <consoleintr+0x8c>
    80005e34:	07f7f713          	andi	a4,a5,127
    80005e38:	00e90733          	add	a4,s2,a4
    80005e3c:	0017879b          	addiw	a5,a5,1
    80005e40:	0af92023          	sw	a5,160(s2)
    80005e44:	00970c23          	sb	s1,24(a4)
    80005e48:	08f92e23          	sw	a5,156(s2)
    80005e4c:	01013403          	ld	s0,16(sp)
    80005e50:	01813083          	ld	ra,24(sp)
    80005e54:	00813483          	ld	s1,8(sp)
    80005e58:	00013903          	ld	s2,0(sp)
    80005e5c:	00005517          	auipc	a0,0x5
    80005e60:	4dc50513          	addi	a0,a0,1244 # 8000b338 <cons>
    80005e64:	02010113          	addi	sp,sp,32
    80005e68:	00001317          	auipc	t1,0x1
    80005e6c:	eb030067          	jr	-336(t1) # 80006d18 <release>
    80005e70:	00a00493          	li	s1,10
    80005e74:	fc1ff06f          	j	80005e34 <consoleintr+0x50>

0000000080005e78 <consoleinit>:
    80005e78:	fe010113          	addi	sp,sp,-32
    80005e7c:	00113c23          	sd	ra,24(sp)
    80005e80:	00813823          	sd	s0,16(sp)
    80005e84:	00913423          	sd	s1,8(sp)
    80005e88:	02010413          	addi	s0,sp,32
    80005e8c:	00005497          	auipc	s1,0x5
    80005e90:	4ac48493          	addi	s1,s1,1196 # 8000b338 <cons>
    80005e94:	00048513          	mv	a0,s1
    80005e98:	00003597          	auipc	a1,0x3
    80005e9c:	81058593          	addi	a1,a1,-2032 # 800086a8 <CONSOLE_STATUS+0x698>
    80005ea0:	00001097          	auipc	ra,0x1
    80005ea4:	d88080e7          	jalr	-632(ra) # 80006c28 <initlock>
    80005ea8:	00000097          	auipc	ra,0x0
    80005eac:	7ac080e7          	jalr	1964(ra) # 80006654 <uartinit>
    80005eb0:	01813083          	ld	ra,24(sp)
    80005eb4:	01013403          	ld	s0,16(sp)
    80005eb8:	00000797          	auipc	a5,0x0
    80005ebc:	d9c78793          	addi	a5,a5,-612 # 80005c54 <consoleread>
    80005ec0:	0af4bc23          	sd	a5,184(s1)
    80005ec4:	00000797          	auipc	a5,0x0
    80005ec8:	cec78793          	addi	a5,a5,-788 # 80005bb0 <consolewrite>
    80005ecc:	0cf4b023          	sd	a5,192(s1)
    80005ed0:	00813483          	ld	s1,8(sp)
    80005ed4:	02010113          	addi	sp,sp,32
    80005ed8:	00008067          	ret

0000000080005edc <console_read>:
    80005edc:	ff010113          	addi	sp,sp,-16
    80005ee0:	00813423          	sd	s0,8(sp)
    80005ee4:	01010413          	addi	s0,sp,16
    80005ee8:	00813403          	ld	s0,8(sp)
    80005eec:	00005317          	auipc	t1,0x5
    80005ef0:	50433303          	ld	t1,1284(t1) # 8000b3f0 <devsw+0x10>
    80005ef4:	01010113          	addi	sp,sp,16
    80005ef8:	00030067          	jr	t1

0000000080005efc <console_write>:
    80005efc:	ff010113          	addi	sp,sp,-16
    80005f00:	00813423          	sd	s0,8(sp)
    80005f04:	01010413          	addi	s0,sp,16
    80005f08:	00813403          	ld	s0,8(sp)
    80005f0c:	00005317          	auipc	t1,0x5
    80005f10:	4ec33303          	ld	t1,1260(t1) # 8000b3f8 <devsw+0x18>
    80005f14:	01010113          	addi	sp,sp,16
    80005f18:	00030067          	jr	t1

0000000080005f1c <panic>:
    80005f1c:	fe010113          	addi	sp,sp,-32
    80005f20:	00113c23          	sd	ra,24(sp)
    80005f24:	00813823          	sd	s0,16(sp)
    80005f28:	00913423          	sd	s1,8(sp)
    80005f2c:	02010413          	addi	s0,sp,32
    80005f30:	00050493          	mv	s1,a0
    80005f34:	00002517          	auipc	a0,0x2
    80005f38:	77c50513          	addi	a0,a0,1916 # 800086b0 <CONSOLE_STATUS+0x6a0>
    80005f3c:	00005797          	auipc	a5,0x5
    80005f40:	5407ae23          	sw	zero,1372(a5) # 8000b498 <pr+0x18>
    80005f44:	00000097          	auipc	ra,0x0
    80005f48:	034080e7          	jalr	52(ra) # 80005f78 <__printf>
    80005f4c:	00048513          	mv	a0,s1
    80005f50:	00000097          	auipc	ra,0x0
    80005f54:	028080e7          	jalr	40(ra) # 80005f78 <__printf>
    80005f58:	00002517          	auipc	a0,0x2
    80005f5c:	56050513          	addi	a0,a0,1376 # 800084b8 <CONSOLE_STATUS+0x4a8>
    80005f60:	00000097          	auipc	ra,0x0
    80005f64:	018080e7          	jalr	24(ra) # 80005f78 <__printf>
    80005f68:	00100793          	li	a5,1
    80005f6c:	00004717          	auipc	a4,0x4
    80005f70:	24f72e23          	sw	a5,604(a4) # 8000a1c8 <panicked>
    80005f74:	0000006f          	j	80005f74 <panic+0x58>

0000000080005f78 <__printf>:
    80005f78:	f3010113          	addi	sp,sp,-208
    80005f7c:	08813023          	sd	s0,128(sp)
    80005f80:	07313423          	sd	s3,104(sp)
    80005f84:	09010413          	addi	s0,sp,144
    80005f88:	05813023          	sd	s8,64(sp)
    80005f8c:	08113423          	sd	ra,136(sp)
    80005f90:	06913c23          	sd	s1,120(sp)
    80005f94:	07213823          	sd	s2,112(sp)
    80005f98:	07413023          	sd	s4,96(sp)
    80005f9c:	05513c23          	sd	s5,88(sp)
    80005fa0:	05613823          	sd	s6,80(sp)
    80005fa4:	05713423          	sd	s7,72(sp)
    80005fa8:	03913c23          	sd	s9,56(sp)
    80005fac:	03a13823          	sd	s10,48(sp)
    80005fb0:	03b13423          	sd	s11,40(sp)
    80005fb4:	00005317          	auipc	t1,0x5
    80005fb8:	4cc30313          	addi	t1,t1,1228 # 8000b480 <pr>
    80005fbc:	01832c03          	lw	s8,24(t1)
    80005fc0:	00b43423          	sd	a1,8(s0)
    80005fc4:	00c43823          	sd	a2,16(s0)
    80005fc8:	00d43c23          	sd	a3,24(s0)
    80005fcc:	02e43023          	sd	a4,32(s0)
    80005fd0:	02f43423          	sd	a5,40(s0)
    80005fd4:	03043823          	sd	a6,48(s0)
    80005fd8:	03143c23          	sd	a7,56(s0)
    80005fdc:	00050993          	mv	s3,a0
    80005fe0:	4a0c1663          	bnez	s8,8000648c <__printf+0x514>
    80005fe4:	60098c63          	beqz	s3,800065fc <__printf+0x684>
    80005fe8:	0009c503          	lbu	a0,0(s3)
    80005fec:	00840793          	addi	a5,s0,8
    80005ff0:	f6f43c23          	sd	a5,-136(s0)
    80005ff4:	00000493          	li	s1,0
    80005ff8:	22050063          	beqz	a0,80006218 <__printf+0x2a0>
    80005ffc:	00002a37          	lui	s4,0x2
    80006000:	00018ab7          	lui	s5,0x18
    80006004:	000f4b37          	lui	s6,0xf4
    80006008:	00989bb7          	lui	s7,0x989
    8000600c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006010:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006014:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006018:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000601c:	00148c9b          	addiw	s9,s1,1
    80006020:	02500793          	li	a5,37
    80006024:	01998933          	add	s2,s3,s9
    80006028:	38f51263          	bne	a0,a5,800063ac <__printf+0x434>
    8000602c:	00094783          	lbu	a5,0(s2)
    80006030:	00078c9b          	sext.w	s9,a5
    80006034:	1e078263          	beqz	a5,80006218 <__printf+0x2a0>
    80006038:	0024849b          	addiw	s1,s1,2
    8000603c:	07000713          	li	a4,112
    80006040:	00998933          	add	s2,s3,s1
    80006044:	38e78a63          	beq	a5,a4,800063d8 <__printf+0x460>
    80006048:	20f76863          	bltu	a4,a5,80006258 <__printf+0x2e0>
    8000604c:	42a78863          	beq	a5,a0,8000647c <__printf+0x504>
    80006050:	06400713          	li	a4,100
    80006054:	40e79663          	bne	a5,a4,80006460 <__printf+0x4e8>
    80006058:	f7843783          	ld	a5,-136(s0)
    8000605c:	0007a603          	lw	a2,0(a5)
    80006060:	00878793          	addi	a5,a5,8
    80006064:	f6f43c23          	sd	a5,-136(s0)
    80006068:	42064a63          	bltz	a2,8000649c <__printf+0x524>
    8000606c:	00a00713          	li	a4,10
    80006070:	02e677bb          	remuw	a5,a2,a4
    80006074:	00002d97          	auipc	s11,0x2
    80006078:	664d8d93          	addi	s11,s11,1636 # 800086d8 <digits>
    8000607c:	00900593          	li	a1,9
    80006080:	0006051b          	sext.w	a0,a2
    80006084:	00000c93          	li	s9,0
    80006088:	02079793          	slli	a5,a5,0x20
    8000608c:	0207d793          	srli	a5,a5,0x20
    80006090:	00fd87b3          	add	a5,s11,a5
    80006094:	0007c783          	lbu	a5,0(a5)
    80006098:	02e656bb          	divuw	a3,a2,a4
    8000609c:	f8f40023          	sb	a5,-128(s0)
    800060a0:	14c5d863          	bge	a1,a2,800061f0 <__printf+0x278>
    800060a4:	06300593          	li	a1,99
    800060a8:	00100c93          	li	s9,1
    800060ac:	02e6f7bb          	remuw	a5,a3,a4
    800060b0:	02079793          	slli	a5,a5,0x20
    800060b4:	0207d793          	srli	a5,a5,0x20
    800060b8:	00fd87b3          	add	a5,s11,a5
    800060bc:	0007c783          	lbu	a5,0(a5)
    800060c0:	02e6d73b          	divuw	a4,a3,a4
    800060c4:	f8f400a3          	sb	a5,-127(s0)
    800060c8:	12a5f463          	bgeu	a1,a0,800061f0 <__printf+0x278>
    800060cc:	00a00693          	li	a3,10
    800060d0:	00900593          	li	a1,9
    800060d4:	02d777bb          	remuw	a5,a4,a3
    800060d8:	02079793          	slli	a5,a5,0x20
    800060dc:	0207d793          	srli	a5,a5,0x20
    800060e0:	00fd87b3          	add	a5,s11,a5
    800060e4:	0007c503          	lbu	a0,0(a5)
    800060e8:	02d757bb          	divuw	a5,a4,a3
    800060ec:	f8a40123          	sb	a0,-126(s0)
    800060f0:	48e5f263          	bgeu	a1,a4,80006574 <__printf+0x5fc>
    800060f4:	06300513          	li	a0,99
    800060f8:	02d7f5bb          	remuw	a1,a5,a3
    800060fc:	02059593          	slli	a1,a1,0x20
    80006100:	0205d593          	srli	a1,a1,0x20
    80006104:	00bd85b3          	add	a1,s11,a1
    80006108:	0005c583          	lbu	a1,0(a1)
    8000610c:	02d7d7bb          	divuw	a5,a5,a3
    80006110:	f8b401a3          	sb	a1,-125(s0)
    80006114:	48e57263          	bgeu	a0,a4,80006598 <__printf+0x620>
    80006118:	3e700513          	li	a0,999
    8000611c:	02d7f5bb          	remuw	a1,a5,a3
    80006120:	02059593          	slli	a1,a1,0x20
    80006124:	0205d593          	srli	a1,a1,0x20
    80006128:	00bd85b3          	add	a1,s11,a1
    8000612c:	0005c583          	lbu	a1,0(a1)
    80006130:	02d7d7bb          	divuw	a5,a5,a3
    80006134:	f8b40223          	sb	a1,-124(s0)
    80006138:	46e57663          	bgeu	a0,a4,800065a4 <__printf+0x62c>
    8000613c:	02d7f5bb          	remuw	a1,a5,a3
    80006140:	02059593          	slli	a1,a1,0x20
    80006144:	0205d593          	srli	a1,a1,0x20
    80006148:	00bd85b3          	add	a1,s11,a1
    8000614c:	0005c583          	lbu	a1,0(a1)
    80006150:	02d7d7bb          	divuw	a5,a5,a3
    80006154:	f8b402a3          	sb	a1,-123(s0)
    80006158:	46ea7863          	bgeu	s4,a4,800065c8 <__printf+0x650>
    8000615c:	02d7f5bb          	remuw	a1,a5,a3
    80006160:	02059593          	slli	a1,a1,0x20
    80006164:	0205d593          	srli	a1,a1,0x20
    80006168:	00bd85b3          	add	a1,s11,a1
    8000616c:	0005c583          	lbu	a1,0(a1)
    80006170:	02d7d7bb          	divuw	a5,a5,a3
    80006174:	f8b40323          	sb	a1,-122(s0)
    80006178:	3eeaf863          	bgeu	s5,a4,80006568 <__printf+0x5f0>
    8000617c:	02d7f5bb          	remuw	a1,a5,a3
    80006180:	02059593          	slli	a1,a1,0x20
    80006184:	0205d593          	srli	a1,a1,0x20
    80006188:	00bd85b3          	add	a1,s11,a1
    8000618c:	0005c583          	lbu	a1,0(a1)
    80006190:	02d7d7bb          	divuw	a5,a5,a3
    80006194:	f8b403a3          	sb	a1,-121(s0)
    80006198:	42eb7e63          	bgeu	s6,a4,800065d4 <__printf+0x65c>
    8000619c:	02d7f5bb          	remuw	a1,a5,a3
    800061a0:	02059593          	slli	a1,a1,0x20
    800061a4:	0205d593          	srli	a1,a1,0x20
    800061a8:	00bd85b3          	add	a1,s11,a1
    800061ac:	0005c583          	lbu	a1,0(a1)
    800061b0:	02d7d7bb          	divuw	a5,a5,a3
    800061b4:	f8b40423          	sb	a1,-120(s0)
    800061b8:	42ebfc63          	bgeu	s7,a4,800065f0 <__printf+0x678>
    800061bc:	02079793          	slli	a5,a5,0x20
    800061c0:	0207d793          	srli	a5,a5,0x20
    800061c4:	00fd8db3          	add	s11,s11,a5
    800061c8:	000dc703          	lbu	a4,0(s11)
    800061cc:	00a00793          	li	a5,10
    800061d0:	00900c93          	li	s9,9
    800061d4:	f8e404a3          	sb	a4,-119(s0)
    800061d8:	00065c63          	bgez	a2,800061f0 <__printf+0x278>
    800061dc:	f9040713          	addi	a4,s0,-112
    800061e0:	00f70733          	add	a4,a4,a5
    800061e4:	02d00693          	li	a3,45
    800061e8:	fed70823          	sb	a3,-16(a4)
    800061ec:	00078c93          	mv	s9,a5
    800061f0:	f8040793          	addi	a5,s0,-128
    800061f4:	01978cb3          	add	s9,a5,s9
    800061f8:	f7f40d13          	addi	s10,s0,-129
    800061fc:	000cc503          	lbu	a0,0(s9)
    80006200:	fffc8c93          	addi	s9,s9,-1
    80006204:	00000097          	auipc	ra,0x0
    80006208:	b90080e7          	jalr	-1136(ra) # 80005d94 <consputc>
    8000620c:	ffac98e3          	bne	s9,s10,800061fc <__printf+0x284>
    80006210:	00094503          	lbu	a0,0(s2)
    80006214:	e00514e3          	bnez	a0,8000601c <__printf+0xa4>
    80006218:	1a0c1663          	bnez	s8,800063c4 <__printf+0x44c>
    8000621c:	08813083          	ld	ra,136(sp)
    80006220:	08013403          	ld	s0,128(sp)
    80006224:	07813483          	ld	s1,120(sp)
    80006228:	07013903          	ld	s2,112(sp)
    8000622c:	06813983          	ld	s3,104(sp)
    80006230:	06013a03          	ld	s4,96(sp)
    80006234:	05813a83          	ld	s5,88(sp)
    80006238:	05013b03          	ld	s6,80(sp)
    8000623c:	04813b83          	ld	s7,72(sp)
    80006240:	04013c03          	ld	s8,64(sp)
    80006244:	03813c83          	ld	s9,56(sp)
    80006248:	03013d03          	ld	s10,48(sp)
    8000624c:	02813d83          	ld	s11,40(sp)
    80006250:	0d010113          	addi	sp,sp,208
    80006254:	00008067          	ret
    80006258:	07300713          	li	a4,115
    8000625c:	1ce78a63          	beq	a5,a4,80006430 <__printf+0x4b8>
    80006260:	07800713          	li	a4,120
    80006264:	1ee79e63          	bne	a5,a4,80006460 <__printf+0x4e8>
    80006268:	f7843783          	ld	a5,-136(s0)
    8000626c:	0007a703          	lw	a4,0(a5)
    80006270:	00878793          	addi	a5,a5,8
    80006274:	f6f43c23          	sd	a5,-136(s0)
    80006278:	28074263          	bltz	a4,800064fc <__printf+0x584>
    8000627c:	00002d97          	auipc	s11,0x2
    80006280:	45cd8d93          	addi	s11,s11,1116 # 800086d8 <digits>
    80006284:	00f77793          	andi	a5,a4,15
    80006288:	00fd87b3          	add	a5,s11,a5
    8000628c:	0007c683          	lbu	a3,0(a5)
    80006290:	00f00613          	li	a2,15
    80006294:	0007079b          	sext.w	a5,a4
    80006298:	f8d40023          	sb	a3,-128(s0)
    8000629c:	0047559b          	srliw	a1,a4,0x4
    800062a0:	0047569b          	srliw	a3,a4,0x4
    800062a4:	00000c93          	li	s9,0
    800062a8:	0ee65063          	bge	a2,a4,80006388 <__printf+0x410>
    800062ac:	00f6f693          	andi	a3,a3,15
    800062b0:	00dd86b3          	add	a3,s11,a3
    800062b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800062b8:	0087d79b          	srliw	a5,a5,0x8
    800062bc:	00100c93          	li	s9,1
    800062c0:	f8d400a3          	sb	a3,-127(s0)
    800062c4:	0cb67263          	bgeu	a2,a1,80006388 <__printf+0x410>
    800062c8:	00f7f693          	andi	a3,a5,15
    800062cc:	00dd86b3          	add	a3,s11,a3
    800062d0:	0006c583          	lbu	a1,0(a3)
    800062d4:	00f00613          	li	a2,15
    800062d8:	0047d69b          	srliw	a3,a5,0x4
    800062dc:	f8b40123          	sb	a1,-126(s0)
    800062e0:	0047d593          	srli	a1,a5,0x4
    800062e4:	28f67e63          	bgeu	a2,a5,80006580 <__printf+0x608>
    800062e8:	00f6f693          	andi	a3,a3,15
    800062ec:	00dd86b3          	add	a3,s11,a3
    800062f0:	0006c503          	lbu	a0,0(a3)
    800062f4:	0087d813          	srli	a6,a5,0x8
    800062f8:	0087d69b          	srliw	a3,a5,0x8
    800062fc:	f8a401a3          	sb	a0,-125(s0)
    80006300:	28b67663          	bgeu	a2,a1,8000658c <__printf+0x614>
    80006304:	00f6f693          	andi	a3,a3,15
    80006308:	00dd86b3          	add	a3,s11,a3
    8000630c:	0006c583          	lbu	a1,0(a3)
    80006310:	00c7d513          	srli	a0,a5,0xc
    80006314:	00c7d69b          	srliw	a3,a5,0xc
    80006318:	f8b40223          	sb	a1,-124(s0)
    8000631c:	29067a63          	bgeu	a2,a6,800065b0 <__printf+0x638>
    80006320:	00f6f693          	andi	a3,a3,15
    80006324:	00dd86b3          	add	a3,s11,a3
    80006328:	0006c583          	lbu	a1,0(a3)
    8000632c:	0107d813          	srli	a6,a5,0x10
    80006330:	0107d69b          	srliw	a3,a5,0x10
    80006334:	f8b402a3          	sb	a1,-123(s0)
    80006338:	28a67263          	bgeu	a2,a0,800065bc <__printf+0x644>
    8000633c:	00f6f693          	andi	a3,a3,15
    80006340:	00dd86b3          	add	a3,s11,a3
    80006344:	0006c683          	lbu	a3,0(a3)
    80006348:	0147d79b          	srliw	a5,a5,0x14
    8000634c:	f8d40323          	sb	a3,-122(s0)
    80006350:	21067663          	bgeu	a2,a6,8000655c <__printf+0x5e4>
    80006354:	02079793          	slli	a5,a5,0x20
    80006358:	0207d793          	srli	a5,a5,0x20
    8000635c:	00fd8db3          	add	s11,s11,a5
    80006360:	000dc683          	lbu	a3,0(s11)
    80006364:	00800793          	li	a5,8
    80006368:	00700c93          	li	s9,7
    8000636c:	f8d403a3          	sb	a3,-121(s0)
    80006370:	00075c63          	bgez	a4,80006388 <__printf+0x410>
    80006374:	f9040713          	addi	a4,s0,-112
    80006378:	00f70733          	add	a4,a4,a5
    8000637c:	02d00693          	li	a3,45
    80006380:	fed70823          	sb	a3,-16(a4)
    80006384:	00078c93          	mv	s9,a5
    80006388:	f8040793          	addi	a5,s0,-128
    8000638c:	01978cb3          	add	s9,a5,s9
    80006390:	f7f40d13          	addi	s10,s0,-129
    80006394:	000cc503          	lbu	a0,0(s9)
    80006398:	fffc8c93          	addi	s9,s9,-1
    8000639c:	00000097          	auipc	ra,0x0
    800063a0:	9f8080e7          	jalr	-1544(ra) # 80005d94 <consputc>
    800063a4:	ff9d18e3          	bne	s10,s9,80006394 <__printf+0x41c>
    800063a8:	0100006f          	j	800063b8 <__printf+0x440>
    800063ac:	00000097          	auipc	ra,0x0
    800063b0:	9e8080e7          	jalr	-1560(ra) # 80005d94 <consputc>
    800063b4:	000c8493          	mv	s1,s9
    800063b8:	00094503          	lbu	a0,0(s2)
    800063bc:	c60510e3          	bnez	a0,8000601c <__printf+0xa4>
    800063c0:	e40c0ee3          	beqz	s8,8000621c <__printf+0x2a4>
    800063c4:	00005517          	auipc	a0,0x5
    800063c8:	0bc50513          	addi	a0,a0,188 # 8000b480 <pr>
    800063cc:	00001097          	auipc	ra,0x1
    800063d0:	94c080e7          	jalr	-1716(ra) # 80006d18 <release>
    800063d4:	e49ff06f          	j	8000621c <__printf+0x2a4>
    800063d8:	f7843783          	ld	a5,-136(s0)
    800063dc:	03000513          	li	a0,48
    800063e0:	01000d13          	li	s10,16
    800063e4:	00878713          	addi	a4,a5,8
    800063e8:	0007bc83          	ld	s9,0(a5)
    800063ec:	f6e43c23          	sd	a4,-136(s0)
    800063f0:	00000097          	auipc	ra,0x0
    800063f4:	9a4080e7          	jalr	-1628(ra) # 80005d94 <consputc>
    800063f8:	07800513          	li	a0,120
    800063fc:	00000097          	auipc	ra,0x0
    80006400:	998080e7          	jalr	-1640(ra) # 80005d94 <consputc>
    80006404:	00002d97          	auipc	s11,0x2
    80006408:	2d4d8d93          	addi	s11,s11,724 # 800086d8 <digits>
    8000640c:	03ccd793          	srli	a5,s9,0x3c
    80006410:	00fd87b3          	add	a5,s11,a5
    80006414:	0007c503          	lbu	a0,0(a5)
    80006418:	fffd0d1b          	addiw	s10,s10,-1
    8000641c:	004c9c93          	slli	s9,s9,0x4
    80006420:	00000097          	auipc	ra,0x0
    80006424:	974080e7          	jalr	-1676(ra) # 80005d94 <consputc>
    80006428:	fe0d12e3          	bnez	s10,8000640c <__printf+0x494>
    8000642c:	f8dff06f          	j	800063b8 <__printf+0x440>
    80006430:	f7843783          	ld	a5,-136(s0)
    80006434:	0007bc83          	ld	s9,0(a5)
    80006438:	00878793          	addi	a5,a5,8
    8000643c:	f6f43c23          	sd	a5,-136(s0)
    80006440:	000c9a63          	bnez	s9,80006454 <__printf+0x4dc>
    80006444:	1080006f          	j	8000654c <__printf+0x5d4>
    80006448:	001c8c93          	addi	s9,s9,1
    8000644c:	00000097          	auipc	ra,0x0
    80006450:	948080e7          	jalr	-1720(ra) # 80005d94 <consputc>
    80006454:	000cc503          	lbu	a0,0(s9)
    80006458:	fe0518e3          	bnez	a0,80006448 <__printf+0x4d0>
    8000645c:	f5dff06f          	j	800063b8 <__printf+0x440>
    80006460:	02500513          	li	a0,37
    80006464:	00000097          	auipc	ra,0x0
    80006468:	930080e7          	jalr	-1744(ra) # 80005d94 <consputc>
    8000646c:	000c8513          	mv	a0,s9
    80006470:	00000097          	auipc	ra,0x0
    80006474:	924080e7          	jalr	-1756(ra) # 80005d94 <consputc>
    80006478:	f41ff06f          	j	800063b8 <__printf+0x440>
    8000647c:	02500513          	li	a0,37
    80006480:	00000097          	auipc	ra,0x0
    80006484:	914080e7          	jalr	-1772(ra) # 80005d94 <consputc>
    80006488:	f31ff06f          	j	800063b8 <__printf+0x440>
    8000648c:	00030513          	mv	a0,t1
    80006490:	00000097          	auipc	ra,0x0
    80006494:	7bc080e7          	jalr	1980(ra) # 80006c4c <acquire>
    80006498:	b4dff06f          	j	80005fe4 <__printf+0x6c>
    8000649c:	40c0053b          	negw	a0,a2
    800064a0:	00a00713          	li	a4,10
    800064a4:	02e576bb          	remuw	a3,a0,a4
    800064a8:	00002d97          	auipc	s11,0x2
    800064ac:	230d8d93          	addi	s11,s11,560 # 800086d8 <digits>
    800064b0:	ff700593          	li	a1,-9
    800064b4:	02069693          	slli	a3,a3,0x20
    800064b8:	0206d693          	srli	a3,a3,0x20
    800064bc:	00dd86b3          	add	a3,s11,a3
    800064c0:	0006c683          	lbu	a3,0(a3)
    800064c4:	02e557bb          	divuw	a5,a0,a4
    800064c8:	f8d40023          	sb	a3,-128(s0)
    800064cc:	10b65e63          	bge	a2,a1,800065e8 <__printf+0x670>
    800064d0:	06300593          	li	a1,99
    800064d4:	02e7f6bb          	remuw	a3,a5,a4
    800064d8:	02069693          	slli	a3,a3,0x20
    800064dc:	0206d693          	srli	a3,a3,0x20
    800064e0:	00dd86b3          	add	a3,s11,a3
    800064e4:	0006c683          	lbu	a3,0(a3)
    800064e8:	02e7d73b          	divuw	a4,a5,a4
    800064ec:	00200793          	li	a5,2
    800064f0:	f8d400a3          	sb	a3,-127(s0)
    800064f4:	bca5ece3          	bltu	a1,a0,800060cc <__printf+0x154>
    800064f8:	ce5ff06f          	j	800061dc <__printf+0x264>
    800064fc:	40e007bb          	negw	a5,a4
    80006500:	00002d97          	auipc	s11,0x2
    80006504:	1d8d8d93          	addi	s11,s11,472 # 800086d8 <digits>
    80006508:	00f7f693          	andi	a3,a5,15
    8000650c:	00dd86b3          	add	a3,s11,a3
    80006510:	0006c583          	lbu	a1,0(a3)
    80006514:	ff100613          	li	a2,-15
    80006518:	0047d69b          	srliw	a3,a5,0x4
    8000651c:	f8b40023          	sb	a1,-128(s0)
    80006520:	0047d59b          	srliw	a1,a5,0x4
    80006524:	0ac75e63          	bge	a4,a2,800065e0 <__printf+0x668>
    80006528:	00f6f693          	andi	a3,a3,15
    8000652c:	00dd86b3          	add	a3,s11,a3
    80006530:	0006c603          	lbu	a2,0(a3)
    80006534:	00f00693          	li	a3,15
    80006538:	0087d79b          	srliw	a5,a5,0x8
    8000653c:	f8c400a3          	sb	a2,-127(s0)
    80006540:	d8b6e4e3          	bltu	a3,a1,800062c8 <__printf+0x350>
    80006544:	00200793          	li	a5,2
    80006548:	e2dff06f          	j	80006374 <__printf+0x3fc>
    8000654c:	00002c97          	auipc	s9,0x2
    80006550:	16cc8c93          	addi	s9,s9,364 # 800086b8 <CONSOLE_STATUS+0x6a8>
    80006554:	02800513          	li	a0,40
    80006558:	ef1ff06f          	j	80006448 <__printf+0x4d0>
    8000655c:	00700793          	li	a5,7
    80006560:	00600c93          	li	s9,6
    80006564:	e0dff06f          	j	80006370 <__printf+0x3f8>
    80006568:	00700793          	li	a5,7
    8000656c:	00600c93          	li	s9,6
    80006570:	c69ff06f          	j	800061d8 <__printf+0x260>
    80006574:	00300793          	li	a5,3
    80006578:	00200c93          	li	s9,2
    8000657c:	c5dff06f          	j	800061d8 <__printf+0x260>
    80006580:	00300793          	li	a5,3
    80006584:	00200c93          	li	s9,2
    80006588:	de9ff06f          	j	80006370 <__printf+0x3f8>
    8000658c:	00400793          	li	a5,4
    80006590:	00300c93          	li	s9,3
    80006594:	dddff06f          	j	80006370 <__printf+0x3f8>
    80006598:	00400793          	li	a5,4
    8000659c:	00300c93          	li	s9,3
    800065a0:	c39ff06f          	j	800061d8 <__printf+0x260>
    800065a4:	00500793          	li	a5,5
    800065a8:	00400c93          	li	s9,4
    800065ac:	c2dff06f          	j	800061d8 <__printf+0x260>
    800065b0:	00500793          	li	a5,5
    800065b4:	00400c93          	li	s9,4
    800065b8:	db9ff06f          	j	80006370 <__printf+0x3f8>
    800065bc:	00600793          	li	a5,6
    800065c0:	00500c93          	li	s9,5
    800065c4:	dadff06f          	j	80006370 <__printf+0x3f8>
    800065c8:	00600793          	li	a5,6
    800065cc:	00500c93          	li	s9,5
    800065d0:	c09ff06f          	j	800061d8 <__printf+0x260>
    800065d4:	00800793          	li	a5,8
    800065d8:	00700c93          	li	s9,7
    800065dc:	bfdff06f          	j	800061d8 <__printf+0x260>
    800065e0:	00100793          	li	a5,1
    800065e4:	d91ff06f          	j	80006374 <__printf+0x3fc>
    800065e8:	00100793          	li	a5,1
    800065ec:	bf1ff06f          	j	800061dc <__printf+0x264>
    800065f0:	00900793          	li	a5,9
    800065f4:	00800c93          	li	s9,8
    800065f8:	be1ff06f          	j	800061d8 <__printf+0x260>
    800065fc:	00002517          	auipc	a0,0x2
    80006600:	0c450513          	addi	a0,a0,196 # 800086c0 <CONSOLE_STATUS+0x6b0>
    80006604:	00000097          	auipc	ra,0x0
    80006608:	918080e7          	jalr	-1768(ra) # 80005f1c <panic>

000000008000660c <printfinit>:
    8000660c:	fe010113          	addi	sp,sp,-32
    80006610:	00813823          	sd	s0,16(sp)
    80006614:	00913423          	sd	s1,8(sp)
    80006618:	00113c23          	sd	ra,24(sp)
    8000661c:	02010413          	addi	s0,sp,32
    80006620:	00005497          	auipc	s1,0x5
    80006624:	e6048493          	addi	s1,s1,-416 # 8000b480 <pr>
    80006628:	00048513          	mv	a0,s1
    8000662c:	00002597          	auipc	a1,0x2
    80006630:	0a458593          	addi	a1,a1,164 # 800086d0 <CONSOLE_STATUS+0x6c0>
    80006634:	00000097          	auipc	ra,0x0
    80006638:	5f4080e7          	jalr	1524(ra) # 80006c28 <initlock>
    8000663c:	01813083          	ld	ra,24(sp)
    80006640:	01013403          	ld	s0,16(sp)
    80006644:	0004ac23          	sw	zero,24(s1)
    80006648:	00813483          	ld	s1,8(sp)
    8000664c:	02010113          	addi	sp,sp,32
    80006650:	00008067          	ret

0000000080006654 <uartinit>:
    80006654:	ff010113          	addi	sp,sp,-16
    80006658:	00813423          	sd	s0,8(sp)
    8000665c:	01010413          	addi	s0,sp,16
    80006660:	100007b7          	lui	a5,0x10000
    80006664:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006668:	f8000713          	li	a4,-128
    8000666c:	00e781a3          	sb	a4,3(a5)
    80006670:	00300713          	li	a4,3
    80006674:	00e78023          	sb	a4,0(a5)
    80006678:	000780a3          	sb	zero,1(a5)
    8000667c:	00e781a3          	sb	a4,3(a5)
    80006680:	00700693          	li	a3,7
    80006684:	00d78123          	sb	a3,2(a5)
    80006688:	00e780a3          	sb	a4,1(a5)
    8000668c:	00813403          	ld	s0,8(sp)
    80006690:	01010113          	addi	sp,sp,16
    80006694:	00008067          	ret

0000000080006698 <uartputc>:
    80006698:	00004797          	auipc	a5,0x4
    8000669c:	b307a783          	lw	a5,-1232(a5) # 8000a1c8 <panicked>
    800066a0:	00078463          	beqz	a5,800066a8 <uartputc+0x10>
    800066a4:	0000006f          	j	800066a4 <uartputc+0xc>
    800066a8:	fd010113          	addi	sp,sp,-48
    800066ac:	02813023          	sd	s0,32(sp)
    800066b0:	00913c23          	sd	s1,24(sp)
    800066b4:	01213823          	sd	s2,16(sp)
    800066b8:	01313423          	sd	s3,8(sp)
    800066bc:	02113423          	sd	ra,40(sp)
    800066c0:	03010413          	addi	s0,sp,48
    800066c4:	00004917          	auipc	s2,0x4
    800066c8:	b0c90913          	addi	s2,s2,-1268 # 8000a1d0 <uart_tx_r>
    800066cc:	00093783          	ld	a5,0(s2)
    800066d0:	00004497          	auipc	s1,0x4
    800066d4:	b0848493          	addi	s1,s1,-1272 # 8000a1d8 <uart_tx_w>
    800066d8:	0004b703          	ld	a4,0(s1)
    800066dc:	02078693          	addi	a3,a5,32
    800066e0:	00050993          	mv	s3,a0
    800066e4:	02e69c63          	bne	a3,a4,8000671c <uartputc+0x84>
    800066e8:	00001097          	auipc	ra,0x1
    800066ec:	834080e7          	jalr	-1996(ra) # 80006f1c <push_on>
    800066f0:	00093783          	ld	a5,0(s2)
    800066f4:	0004b703          	ld	a4,0(s1)
    800066f8:	02078793          	addi	a5,a5,32
    800066fc:	00e79463          	bne	a5,a4,80006704 <uartputc+0x6c>
    80006700:	0000006f          	j	80006700 <uartputc+0x68>
    80006704:	00001097          	auipc	ra,0x1
    80006708:	88c080e7          	jalr	-1908(ra) # 80006f90 <pop_on>
    8000670c:	00093783          	ld	a5,0(s2)
    80006710:	0004b703          	ld	a4,0(s1)
    80006714:	02078693          	addi	a3,a5,32
    80006718:	fce688e3          	beq	a3,a4,800066e8 <uartputc+0x50>
    8000671c:	01f77693          	andi	a3,a4,31
    80006720:	00005597          	auipc	a1,0x5
    80006724:	d8058593          	addi	a1,a1,-640 # 8000b4a0 <uart_tx_buf>
    80006728:	00d586b3          	add	a3,a1,a3
    8000672c:	00170713          	addi	a4,a4,1
    80006730:	01368023          	sb	s3,0(a3)
    80006734:	00e4b023          	sd	a4,0(s1)
    80006738:	10000637          	lui	a2,0x10000
    8000673c:	02f71063          	bne	a4,a5,8000675c <uartputc+0xc4>
    80006740:	0340006f          	j	80006774 <uartputc+0xdc>
    80006744:	00074703          	lbu	a4,0(a4)
    80006748:	00f93023          	sd	a5,0(s2)
    8000674c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006750:	00093783          	ld	a5,0(s2)
    80006754:	0004b703          	ld	a4,0(s1)
    80006758:	00f70e63          	beq	a4,a5,80006774 <uartputc+0xdc>
    8000675c:	00564683          	lbu	a3,5(a2)
    80006760:	01f7f713          	andi	a4,a5,31
    80006764:	00e58733          	add	a4,a1,a4
    80006768:	0206f693          	andi	a3,a3,32
    8000676c:	00178793          	addi	a5,a5,1
    80006770:	fc069ae3          	bnez	a3,80006744 <uartputc+0xac>
    80006774:	02813083          	ld	ra,40(sp)
    80006778:	02013403          	ld	s0,32(sp)
    8000677c:	01813483          	ld	s1,24(sp)
    80006780:	01013903          	ld	s2,16(sp)
    80006784:	00813983          	ld	s3,8(sp)
    80006788:	03010113          	addi	sp,sp,48
    8000678c:	00008067          	ret

0000000080006790 <uartputc_sync>:
    80006790:	ff010113          	addi	sp,sp,-16
    80006794:	00813423          	sd	s0,8(sp)
    80006798:	01010413          	addi	s0,sp,16
    8000679c:	00004717          	auipc	a4,0x4
    800067a0:	a2c72703          	lw	a4,-1492(a4) # 8000a1c8 <panicked>
    800067a4:	02071663          	bnez	a4,800067d0 <uartputc_sync+0x40>
    800067a8:	00050793          	mv	a5,a0
    800067ac:	100006b7          	lui	a3,0x10000
    800067b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800067b4:	02077713          	andi	a4,a4,32
    800067b8:	fe070ce3          	beqz	a4,800067b0 <uartputc_sync+0x20>
    800067bc:	0ff7f793          	andi	a5,a5,255
    800067c0:	00f68023          	sb	a5,0(a3)
    800067c4:	00813403          	ld	s0,8(sp)
    800067c8:	01010113          	addi	sp,sp,16
    800067cc:	00008067          	ret
    800067d0:	0000006f          	j	800067d0 <uartputc_sync+0x40>

00000000800067d4 <uartstart>:
    800067d4:	ff010113          	addi	sp,sp,-16
    800067d8:	00813423          	sd	s0,8(sp)
    800067dc:	01010413          	addi	s0,sp,16
    800067e0:	00004617          	auipc	a2,0x4
    800067e4:	9f060613          	addi	a2,a2,-1552 # 8000a1d0 <uart_tx_r>
    800067e8:	00004517          	auipc	a0,0x4
    800067ec:	9f050513          	addi	a0,a0,-1552 # 8000a1d8 <uart_tx_w>
    800067f0:	00063783          	ld	a5,0(a2)
    800067f4:	00053703          	ld	a4,0(a0)
    800067f8:	04f70263          	beq	a4,a5,8000683c <uartstart+0x68>
    800067fc:	100005b7          	lui	a1,0x10000
    80006800:	00005817          	auipc	a6,0x5
    80006804:	ca080813          	addi	a6,a6,-864 # 8000b4a0 <uart_tx_buf>
    80006808:	01c0006f          	j	80006824 <uartstart+0x50>
    8000680c:	0006c703          	lbu	a4,0(a3)
    80006810:	00f63023          	sd	a5,0(a2)
    80006814:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006818:	00063783          	ld	a5,0(a2)
    8000681c:	00053703          	ld	a4,0(a0)
    80006820:	00f70e63          	beq	a4,a5,8000683c <uartstart+0x68>
    80006824:	01f7f713          	andi	a4,a5,31
    80006828:	00e806b3          	add	a3,a6,a4
    8000682c:	0055c703          	lbu	a4,5(a1)
    80006830:	00178793          	addi	a5,a5,1
    80006834:	02077713          	andi	a4,a4,32
    80006838:	fc071ae3          	bnez	a4,8000680c <uartstart+0x38>
    8000683c:	00813403          	ld	s0,8(sp)
    80006840:	01010113          	addi	sp,sp,16
    80006844:	00008067          	ret

0000000080006848 <uartgetc>:
    80006848:	ff010113          	addi	sp,sp,-16
    8000684c:	00813423          	sd	s0,8(sp)
    80006850:	01010413          	addi	s0,sp,16
    80006854:	10000737          	lui	a4,0x10000
    80006858:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000685c:	0017f793          	andi	a5,a5,1
    80006860:	00078c63          	beqz	a5,80006878 <uartgetc+0x30>
    80006864:	00074503          	lbu	a0,0(a4)
    80006868:	0ff57513          	andi	a0,a0,255
    8000686c:	00813403          	ld	s0,8(sp)
    80006870:	01010113          	addi	sp,sp,16
    80006874:	00008067          	ret
    80006878:	fff00513          	li	a0,-1
    8000687c:	ff1ff06f          	j	8000686c <uartgetc+0x24>

0000000080006880 <uartintr>:
    80006880:	100007b7          	lui	a5,0x10000
    80006884:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006888:	0017f793          	andi	a5,a5,1
    8000688c:	0a078463          	beqz	a5,80006934 <uartintr+0xb4>
    80006890:	fe010113          	addi	sp,sp,-32
    80006894:	00813823          	sd	s0,16(sp)
    80006898:	00913423          	sd	s1,8(sp)
    8000689c:	00113c23          	sd	ra,24(sp)
    800068a0:	02010413          	addi	s0,sp,32
    800068a4:	100004b7          	lui	s1,0x10000
    800068a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800068ac:	0ff57513          	andi	a0,a0,255
    800068b0:	fffff097          	auipc	ra,0xfffff
    800068b4:	534080e7          	jalr	1332(ra) # 80005de4 <consoleintr>
    800068b8:	0054c783          	lbu	a5,5(s1)
    800068bc:	0017f793          	andi	a5,a5,1
    800068c0:	fe0794e3          	bnez	a5,800068a8 <uartintr+0x28>
    800068c4:	00004617          	auipc	a2,0x4
    800068c8:	90c60613          	addi	a2,a2,-1780 # 8000a1d0 <uart_tx_r>
    800068cc:	00004517          	auipc	a0,0x4
    800068d0:	90c50513          	addi	a0,a0,-1780 # 8000a1d8 <uart_tx_w>
    800068d4:	00063783          	ld	a5,0(a2)
    800068d8:	00053703          	ld	a4,0(a0)
    800068dc:	04f70263          	beq	a4,a5,80006920 <uartintr+0xa0>
    800068e0:	100005b7          	lui	a1,0x10000
    800068e4:	00005817          	auipc	a6,0x5
    800068e8:	bbc80813          	addi	a6,a6,-1092 # 8000b4a0 <uart_tx_buf>
    800068ec:	01c0006f          	j	80006908 <uartintr+0x88>
    800068f0:	0006c703          	lbu	a4,0(a3)
    800068f4:	00f63023          	sd	a5,0(a2)
    800068f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800068fc:	00063783          	ld	a5,0(a2)
    80006900:	00053703          	ld	a4,0(a0)
    80006904:	00f70e63          	beq	a4,a5,80006920 <uartintr+0xa0>
    80006908:	01f7f713          	andi	a4,a5,31
    8000690c:	00e806b3          	add	a3,a6,a4
    80006910:	0055c703          	lbu	a4,5(a1)
    80006914:	00178793          	addi	a5,a5,1
    80006918:	02077713          	andi	a4,a4,32
    8000691c:	fc071ae3          	bnez	a4,800068f0 <uartintr+0x70>
    80006920:	01813083          	ld	ra,24(sp)
    80006924:	01013403          	ld	s0,16(sp)
    80006928:	00813483          	ld	s1,8(sp)
    8000692c:	02010113          	addi	sp,sp,32
    80006930:	00008067          	ret
    80006934:	00004617          	auipc	a2,0x4
    80006938:	89c60613          	addi	a2,a2,-1892 # 8000a1d0 <uart_tx_r>
    8000693c:	00004517          	auipc	a0,0x4
    80006940:	89c50513          	addi	a0,a0,-1892 # 8000a1d8 <uart_tx_w>
    80006944:	00063783          	ld	a5,0(a2)
    80006948:	00053703          	ld	a4,0(a0)
    8000694c:	04f70263          	beq	a4,a5,80006990 <uartintr+0x110>
    80006950:	100005b7          	lui	a1,0x10000
    80006954:	00005817          	auipc	a6,0x5
    80006958:	b4c80813          	addi	a6,a6,-1204 # 8000b4a0 <uart_tx_buf>
    8000695c:	01c0006f          	j	80006978 <uartintr+0xf8>
    80006960:	0006c703          	lbu	a4,0(a3)
    80006964:	00f63023          	sd	a5,0(a2)
    80006968:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000696c:	00063783          	ld	a5,0(a2)
    80006970:	00053703          	ld	a4,0(a0)
    80006974:	02f70063          	beq	a4,a5,80006994 <uartintr+0x114>
    80006978:	01f7f713          	andi	a4,a5,31
    8000697c:	00e806b3          	add	a3,a6,a4
    80006980:	0055c703          	lbu	a4,5(a1)
    80006984:	00178793          	addi	a5,a5,1
    80006988:	02077713          	andi	a4,a4,32
    8000698c:	fc071ae3          	bnez	a4,80006960 <uartintr+0xe0>
    80006990:	00008067          	ret
    80006994:	00008067          	ret

0000000080006998 <kinit>:
    80006998:	fc010113          	addi	sp,sp,-64
    8000699c:	02913423          	sd	s1,40(sp)
    800069a0:	fffff7b7          	lui	a5,0xfffff
    800069a4:	00006497          	auipc	s1,0x6
    800069a8:	b1b48493          	addi	s1,s1,-1253 # 8000c4bf <end+0xfff>
    800069ac:	02813823          	sd	s0,48(sp)
    800069b0:	01313c23          	sd	s3,24(sp)
    800069b4:	00f4f4b3          	and	s1,s1,a5
    800069b8:	02113c23          	sd	ra,56(sp)
    800069bc:	03213023          	sd	s2,32(sp)
    800069c0:	01413823          	sd	s4,16(sp)
    800069c4:	01513423          	sd	s5,8(sp)
    800069c8:	04010413          	addi	s0,sp,64
    800069cc:	000017b7          	lui	a5,0x1
    800069d0:	01100993          	li	s3,17
    800069d4:	00f487b3          	add	a5,s1,a5
    800069d8:	01b99993          	slli	s3,s3,0x1b
    800069dc:	06f9e063          	bltu	s3,a5,80006a3c <kinit+0xa4>
    800069e0:	00005a97          	auipc	s5,0x5
    800069e4:	ae0a8a93          	addi	s5,s5,-1312 # 8000b4c0 <end>
    800069e8:	0754ec63          	bltu	s1,s5,80006a60 <kinit+0xc8>
    800069ec:	0734fa63          	bgeu	s1,s3,80006a60 <kinit+0xc8>
    800069f0:	00088a37          	lui	s4,0x88
    800069f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800069f8:	00003917          	auipc	s2,0x3
    800069fc:	7e890913          	addi	s2,s2,2024 # 8000a1e0 <kmem>
    80006a00:	00ca1a13          	slli	s4,s4,0xc
    80006a04:	0140006f          	j	80006a18 <kinit+0x80>
    80006a08:	000017b7          	lui	a5,0x1
    80006a0c:	00f484b3          	add	s1,s1,a5
    80006a10:	0554e863          	bltu	s1,s5,80006a60 <kinit+0xc8>
    80006a14:	0534f663          	bgeu	s1,s3,80006a60 <kinit+0xc8>
    80006a18:	00001637          	lui	a2,0x1
    80006a1c:	00100593          	li	a1,1
    80006a20:	00048513          	mv	a0,s1
    80006a24:	00000097          	auipc	ra,0x0
    80006a28:	5e4080e7          	jalr	1508(ra) # 80007008 <__memset>
    80006a2c:	00093783          	ld	a5,0(s2)
    80006a30:	00f4b023          	sd	a5,0(s1)
    80006a34:	00993023          	sd	s1,0(s2)
    80006a38:	fd4498e3          	bne	s1,s4,80006a08 <kinit+0x70>
    80006a3c:	03813083          	ld	ra,56(sp)
    80006a40:	03013403          	ld	s0,48(sp)
    80006a44:	02813483          	ld	s1,40(sp)
    80006a48:	02013903          	ld	s2,32(sp)
    80006a4c:	01813983          	ld	s3,24(sp)
    80006a50:	01013a03          	ld	s4,16(sp)
    80006a54:	00813a83          	ld	s5,8(sp)
    80006a58:	04010113          	addi	sp,sp,64
    80006a5c:	00008067          	ret
    80006a60:	00002517          	auipc	a0,0x2
    80006a64:	c9050513          	addi	a0,a0,-880 # 800086f0 <digits+0x18>
    80006a68:	fffff097          	auipc	ra,0xfffff
    80006a6c:	4b4080e7          	jalr	1204(ra) # 80005f1c <panic>

0000000080006a70 <freerange>:
    80006a70:	fc010113          	addi	sp,sp,-64
    80006a74:	000017b7          	lui	a5,0x1
    80006a78:	02913423          	sd	s1,40(sp)
    80006a7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006a80:	009504b3          	add	s1,a0,s1
    80006a84:	fffff537          	lui	a0,0xfffff
    80006a88:	02813823          	sd	s0,48(sp)
    80006a8c:	02113c23          	sd	ra,56(sp)
    80006a90:	03213023          	sd	s2,32(sp)
    80006a94:	01313c23          	sd	s3,24(sp)
    80006a98:	01413823          	sd	s4,16(sp)
    80006a9c:	01513423          	sd	s5,8(sp)
    80006aa0:	01613023          	sd	s6,0(sp)
    80006aa4:	04010413          	addi	s0,sp,64
    80006aa8:	00a4f4b3          	and	s1,s1,a0
    80006aac:	00f487b3          	add	a5,s1,a5
    80006ab0:	06f5e463          	bltu	a1,a5,80006b18 <freerange+0xa8>
    80006ab4:	00005a97          	auipc	s5,0x5
    80006ab8:	a0ca8a93          	addi	s5,s5,-1524 # 8000b4c0 <end>
    80006abc:	0954e263          	bltu	s1,s5,80006b40 <freerange+0xd0>
    80006ac0:	01100993          	li	s3,17
    80006ac4:	01b99993          	slli	s3,s3,0x1b
    80006ac8:	0734fc63          	bgeu	s1,s3,80006b40 <freerange+0xd0>
    80006acc:	00058a13          	mv	s4,a1
    80006ad0:	00003917          	auipc	s2,0x3
    80006ad4:	71090913          	addi	s2,s2,1808 # 8000a1e0 <kmem>
    80006ad8:	00002b37          	lui	s6,0x2
    80006adc:	0140006f          	j	80006af0 <freerange+0x80>
    80006ae0:	000017b7          	lui	a5,0x1
    80006ae4:	00f484b3          	add	s1,s1,a5
    80006ae8:	0554ec63          	bltu	s1,s5,80006b40 <freerange+0xd0>
    80006aec:	0534fa63          	bgeu	s1,s3,80006b40 <freerange+0xd0>
    80006af0:	00001637          	lui	a2,0x1
    80006af4:	00100593          	li	a1,1
    80006af8:	00048513          	mv	a0,s1
    80006afc:	00000097          	auipc	ra,0x0
    80006b00:	50c080e7          	jalr	1292(ra) # 80007008 <__memset>
    80006b04:	00093703          	ld	a4,0(s2)
    80006b08:	016487b3          	add	a5,s1,s6
    80006b0c:	00e4b023          	sd	a4,0(s1)
    80006b10:	00993023          	sd	s1,0(s2)
    80006b14:	fcfa76e3          	bgeu	s4,a5,80006ae0 <freerange+0x70>
    80006b18:	03813083          	ld	ra,56(sp)
    80006b1c:	03013403          	ld	s0,48(sp)
    80006b20:	02813483          	ld	s1,40(sp)
    80006b24:	02013903          	ld	s2,32(sp)
    80006b28:	01813983          	ld	s3,24(sp)
    80006b2c:	01013a03          	ld	s4,16(sp)
    80006b30:	00813a83          	ld	s5,8(sp)
    80006b34:	00013b03          	ld	s6,0(sp)
    80006b38:	04010113          	addi	sp,sp,64
    80006b3c:	00008067          	ret
    80006b40:	00002517          	auipc	a0,0x2
    80006b44:	bb050513          	addi	a0,a0,-1104 # 800086f0 <digits+0x18>
    80006b48:	fffff097          	auipc	ra,0xfffff
    80006b4c:	3d4080e7          	jalr	980(ra) # 80005f1c <panic>

0000000080006b50 <kfree>:
    80006b50:	fe010113          	addi	sp,sp,-32
    80006b54:	00813823          	sd	s0,16(sp)
    80006b58:	00113c23          	sd	ra,24(sp)
    80006b5c:	00913423          	sd	s1,8(sp)
    80006b60:	02010413          	addi	s0,sp,32
    80006b64:	03451793          	slli	a5,a0,0x34
    80006b68:	04079c63          	bnez	a5,80006bc0 <kfree+0x70>
    80006b6c:	00005797          	auipc	a5,0x5
    80006b70:	95478793          	addi	a5,a5,-1708 # 8000b4c0 <end>
    80006b74:	00050493          	mv	s1,a0
    80006b78:	04f56463          	bltu	a0,a5,80006bc0 <kfree+0x70>
    80006b7c:	01100793          	li	a5,17
    80006b80:	01b79793          	slli	a5,a5,0x1b
    80006b84:	02f57e63          	bgeu	a0,a5,80006bc0 <kfree+0x70>
    80006b88:	00001637          	lui	a2,0x1
    80006b8c:	00100593          	li	a1,1
    80006b90:	00000097          	auipc	ra,0x0
    80006b94:	478080e7          	jalr	1144(ra) # 80007008 <__memset>
    80006b98:	00003797          	auipc	a5,0x3
    80006b9c:	64878793          	addi	a5,a5,1608 # 8000a1e0 <kmem>
    80006ba0:	0007b703          	ld	a4,0(a5)
    80006ba4:	01813083          	ld	ra,24(sp)
    80006ba8:	01013403          	ld	s0,16(sp)
    80006bac:	00e4b023          	sd	a4,0(s1)
    80006bb0:	0097b023          	sd	s1,0(a5)
    80006bb4:	00813483          	ld	s1,8(sp)
    80006bb8:	02010113          	addi	sp,sp,32
    80006bbc:	00008067          	ret
    80006bc0:	00002517          	auipc	a0,0x2
    80006bc4:	b3050513          	addi	a0,a0,-1232 # 800086f0 <digits+0x18>
    80006bc8:	fffff097          	auipc	ra,0xfffff
    80006bcc:	354080e7          	jalr	852(ra) # 80005f1c <panic>

0000000080006bd0 <kalloc>:
    80006bd0:	fe010113          	addi	sp,sp,-32
    80006bd4:	00813823          	sd	s0,16(sp)
    80006bd8:	00913423          	sd	s1,8(sp)
    80006bdc:	00113c23          	sd	ra,24(sp)
    80006be0:	02010413          	addi	s0,sp,32
    80006be4:	00003797          	auipc	a5,0x3
    80006be8:	5fc78793          	addi	a5,a5,1532 # 8000a1e0 <kmem>
    80006bec:	0007b483          	ld	s1,0(a5)
    80006bf0:	02048063          	beqz	s1,80006c10 <kalloc+0x40>
    80006bf4:	0004b703          	ld	a4,0(s1)
    80006bf8:	00001637          	lui	a2,0x1
    80006bfc:	00500593          	li	a1,5
    80006c00:	00048513          	mv	a0,s1
    80006c04:	00e7b023          	sd	a4,0(a5)
    80006c08:	00000097          	auipc	ra,0x0
    80006c0c:	400080e7          	jalr	1024(ra) # 80007008 <__memset>
    80006c10:	01813083          	ld	ra,24(sp)
    80006c14:	01013403          	ld	s0,16(sp)
    80006c18:	00048513          	mv	a0,s1
    80006c1c:	00813483          	ld	s1,8(sp)
    80006c20:	02010113          	addi	sp,sp,32
    80006c24:	00008067          	ret

0000000080006c28 <initlock>:
    80006c28:	ff010113          	addi	sp,sp,-16
    80006c2c:	00813423          	sd	s0,8(sp)
    80006c30:	01010413          	addi	s0,sp,16
    80006c34:	00813403          	ld	s0,8(sp)
    80006c38:	00b53423          	sd	a1,8(a0)
    80006c3c:	00052023          	sw	zero,0(a0)
    80006c40:	00053823          	sd	zero,16(a0)
    80006c44:	01010113          	addi	sp,sp,16
    80006c48:	00008067          	ret

0000000080006c4c <acquire>:
    80006c4c:	fe010113          	addi	sp,sp,-32
    80006c50:	00813823          	sd	s0,16(sp)
    80006c54:	00913423          	sd	s1,8(sp)
    80006c58:	00113c23          	sd	ra,24(sp)
    80006c5c:	01213023          	sd	s2,0(sp)
    80006c60:	02010413          	addi	s0,sp,32
    80006c64:	00050493          	mv	s1,a0
    80006c68:	10002973          	csrr	s2,sstatus
    80006c6c:	100027f3          	csrr	a5,sstatus
    80006c70:	ffd7f793          	andi	a5,a5,-3
    80006c74:	10079073          	csrw	sstatus,a5
    80006c78:	fffff097          	auipc	ra,0xfffff
    80006c7c:	8e8080e7          	jalr	-1816(ra) # 80005560 <mycpu>
    80006c80:	07852783          	lw	a5,120(a0)
    80006c84:	06078e63          	beqz	a5,80006d00 <acquire+0xb4>
    80006c88:	fffff097          	auipc	ra,0xfffff
    80006c8c:	8d8080e7          	jalr	-1832(ra) # 80005560 <mycpu>
    80006c90:	07852783          	lw	a5,120(a0)
    80006c94:	0004a703          	lw	a4,0(s1)
    80006c98:	0017879b          	addiw	a5,a5,1
    80006c9c:	06f52c23          	sw	a5,120(a0)
    80006ca0:	04071063          	bnez	a4,80006ce0 <acquire+0x94>
    80006ca4:	00100713          	li	a4,1
    80006ca8:	00070793          	mv	a5,a4
    80006cac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006cb0:	0007879b          	sext.w	a5,a5
    80006cb4:	fe079ae3          	bnez	a5,80006ca8 <acquire+0x5c>
    80006cb8:	0ff0000f          	fence
    80006cbc:	fffff097          	auipc	ra,0xfffff
    80006cc0:	8a4080e7          	jalr	-1884(ra) # 80005560 <mycpu>
    80006cc4:	01813083          	ld	ra,24(sp)
    80006cc8:	01013403          	ld	s0,16(sp)
    80006ccc:	00a4b823          	sd	a0,16(s1)
    80006cd0:	00013903          	ld	s2,0(sp)
    80006cd4:	00813483          	ld	s1,8(sp)
    80006cd8:	02010113          	addi	sp,sp,32
    80006cdc:	00008067          	ret
    80006ce0:	0104b903          	ld	s2,16(s1)
    80006ce4:	fffff097          	auipc	ra,0xfffff
    80006ce8:	87c080e7          	jalr	-1924(ra) # 80005560 <mycpu>
    80006cec:	faa91ce3          	bne	s2,a0,80006ca4 <acquire+0x58>
    80006cf0:	00002517          	auipc	a0,0x2
    80006cf4:	a0850513          	addi	a0,a0,-1528 # 800086f8 <digits+0x20>
    80006cf8:	fffff097          	auipc	ra,0xfffff
    80006cfc:	224080e7          	jalr	548(ra) # 80005f1c <panic>
    80006d00:	00195913          	srli	s2,s2,0x1
    80006d04:	fffff097          	auipc	ra,0xfffff
    80006d08:	85c080e7          	jalr	-1956(ra) # 80005560 <mycpu>
    80006d0c:	00197913          	andi	s2,s2,1
    80006d10:	07252e23          	sw	s2,124(a0)
    80006d14:	f75ff06f          	j	80006c88 <acquire+0x3c>

0000000080006d18 <release>:
    80006d18:	fe010113          	addi	sp,sp,-32
    80006d1c:	00813823          	sd	s0,16(sp)
    80006d20:	00113c23          	sd	ra,24(sp)
    80006d24:	00913423          	sd	s1,8(sp)
    80006d28:	01213023          	sd	s2,0(sp)
    80006d2c:	02010413          	addi	s0,sp,32
    80006d30:	00052783          	lw	a5,0(a0)
    80006d34:	00079a63          	bnez	a5,80006d48 <release+0x30>
    80006d38:	00002517          	auipc	a0,0x2
    80006d3c:	9c850513          	addi	a0,a0,-1592 # 80008700 <digits+0x28>
    80006d40:	fffff097          	auipc	ra,0xfffff
    80006d44:	1dc080e7          	jalr	476(ra) # 80005f1c <panic>
    80006d48:	01053903          	ld	s2,16(a0)
    80006d4c:	00050493          	mv	s1,a0
    80006d50:	fffff097          	auipc	ra,0xfffff
    80006d54:	810080e7          	jalr	-2032(ra) # 80005560 <mycpu>
    80006d58:	fea910e3          	bne	s2,a0,80006d38 <release+0x20>
    80006d5c:	0004b823          	sd	zero,16(s1)
    80006d60:	0ff0000f          	fence
    80006d64:	0f50000f          	fence	iorw,ow
    80006d68:	0804a02f          	amoswap.w	zero,zero,(s1)
    80006d6c:	ffffe097          	auipc	ra,0xffffe
    80006d70:	7f4080e7          	jalr	2036(ra) # 80005560 <mycpu>
    80006d74:	100027f3          	csrr	a5,sstatus
    80006d78:	0027f793          	andi	a5,a5,2
    80006d7c:	04079a63          	bnez	a5,80006dd0 <release+0xb8>
    80006d80:	07852783          	lw	a5,120(a0)
    80006d84:	02f05e63          	blez	a5,80006dc0 <release+0xa8>
    80006d88:	fff7871b          	addiw	a4,a5,-1
    80006d8c:	06e52c23          	sw	a4,120(a0)
    80006d90:	00071c63          	bnez	a4,80006da8 <release+0x90>
    80006d94:	07c52783          	lw	a5,124(a0)
    80006d98:	00078863          	beqz	a5,80006da8 <release+0x90>
    80006d9c:	100027f3          	csrr	a5,sstatus
    80006da0:	0027e793          	ori	a5,a5,2
    80006da4:	10079073          	csrw	sstatus,a5
    80006da8:	01813083          	ld	ra,24(sp)
    80006dac:	01013403          	ld	s0,16(sp)
    80006db0:	00813483          	ld	s1,8(sp)
    80006db4:	00013903          	ld	s2,0(sp)
    80006db8:	02010113          	addi	sp,sp,32
    80006dbc:	00008067          	ret
    80006dc0:	00002517          	auipc	a0,0x2
    80006dc4:	96050513          	addi	a0,a0,-1696 # 80008720 <digits+0x48>
    80006dc8:	fffff097          	auipc	ra,0xfffff
    80006dcc:	154080e7          	jalr	340(ra) # 80005f1c <panic>
    80006dd0:	00002517          	auipc	a0,0x2
    80006dd4:	93850513          	addi	a0,a0,-1736 # 80008708 <digits+0x30>
    80006dd8:	fffff097          	auipc	ra,0xfffff
    80006ddc:	144080e7          	jalr	324(ra) # 80005f1c <panic>

0000000080006de0 <holding>:
    80006de0:	00052783          	lw	a5,0(a0)
    80006de4:	00079663          	bnez	a5,80006df0 <holding+0x10>
    80006de8:	00000513          	li	a0,0
    80006dec:	00008067          	ret
    80006df0:	fe010113          	addi	sp,sp,-32
    80006df4:	00813823          	sd	s0,16(sp)
    80006df8:	00913423          	sd	s1,8(sp)
    80006dfc:	00113c23          	sd	ra,24(sp)
    80006e00:	02010413          	addi	s0,sp,32
    80006e04:	01053483          	ld	s1,16(a0)
    80006e08:	ffffe097          	auipc	ra,0xffffe
    80006e0c:	758080e7          	jalr	1880(ra) # 80005560 <mycpu>
    80006e10:	01813083          	ld	ra,24(sp)
    80006e14:	01013403          	ld	s0,16(sp)
    80006e18:	40a48533          	sub	a0,s1,a0
    80006e1c:	00153513          	seqz	a0,a0
    80006e20:	00813483          	ld	s1,8(sp)
    80006e24:	02010113          	addi	sp,sp,32
    80006e28:	00008067          	ret

0000000080006e2c <push_off>:
    80006e2c:	fe010113          	addi	sp,sp,-32
    80006e30:	00813823          	sd	s0,16(sp)
    80006e34:	00113c23          	sd	ra,24(sp)
    80006e38:	00913423          	sd	s1,8(sp)
    80006e3c:	02010413          	addi	s0,sp,32
    80006e40:	100024f3          	csrr	s1,sstatus
    80006e44:	100027f3          	csrr	a5,sstatus
    80006e48:	ffd7f793          	andi	a5,a5,-3
    80006e4c:	10079073          	csrw	sstatus,a5
    80006e50:	ffffe097          	auipc	ra,0xffffe
    80006e54:	710080e7          	jalr	1808(ra) # 80005560 <mycpu>
    80006e58:	07852783          	lw	a5,120(a0)
    80006e5c:	02078663          	beqz	a5,80006e88 <push_off+0x5c>
    80006e60:	ffffe097          	auipc	ra,0xffffe
    80006e64:	700080e7          	jalr	1792(ra) # 80005560 <mycpu>
    80006e68:	07852783          	lw	a5,120(a0)
    80006e6c:	01813083          	ld	ra,24(sp)
    80006e70:	01013403          	ld	s0,16(sp)
    80006e74:	0017879b          	addiw	a5,a5,1
    80006e78:	06f52c23          	sw	a5,120(a0)
    80006e7c:	00813483          	ld	s1,8(sp)
    80006e80:	02010113          	addi	sp,sp,32
    80006e84:	00008067          	ret
    80006e88:	0014d493          	srli	s1,s1,0x1
    80006e8c:	ffffe097          	auipc	ra,0xffffe
    80006e90:	6d4080e7          	jalr	1748(ra) # 80005560 <mycpu>
    80006e94:	0014f493          	andi	s1,s1,1
    80006e98:	06952e23          	sw	s1,124(a0)
    80006e9c:	fc5ff06f          	j	80006e60 <push_off+0x34>

0000000080006ea0 <pop_off>:
    80006ea0:	ff010113          	addi	sp,sp,-16
    80006ea4:	00813023          	sd	s0,0(sp)
    80006ea8:	00113423          	sd	ra,8(sp)
    80006eac:	01010413          	addi	s0,sp,16
    80006eb0:	ffffe097          	auipc	ra,0xffffe
    80006eb4:	6b0080e7          	jalr	1712(ra) # 80005560 <mycpu>
    80006eb8:	100027f3          	csrr	a5,sstatus
    80006ebc:	0027f793          	andi	a5,a5,2
    80006ec0:	04079663          	bnez	a5,80006f0c <pop_off+0x6c>
    80006ec4:	07852783          	lw	a5,120(a0)
    80006ec8:	02f05a63          	blez	a5,80006efc <pop_off+0x5c>
    80006ecc:	fff7871b          	addiw	a4,a5,-1
    80006ed0:	06e52c23          	sw	a4,120(a0)
    80006ed4:	00071c63          	bnez	a4,80006eec <pop_off+0x4c>
    80006ed8:	07c52783          	lw	a5,124(a0)
    80006edc:	00078863          	beqz	a5,80006eec <pop_off+0x4c>
    80006ee0:	100027f3          	csrr	a5,sstatus
    80006ee4:	0027e793          	ori	a5,a5,2
    80006ee8:	10079073          	csrw	sstatus,a5
    80006eec:	00813083          	ld	ra,8(sp)
    80006ef0:	00013403          	ld	s0,0(sp)
    80006ef4:	01010113          	addi	sp,sp,16
    80006ef8:	00008067          	ret
    80006efc:	00002517          	auipc	a0,0x2
    80006f00:	82450513          	addi	a0,a0,-2012 # 80008720 <digits+0x48>
    80006f04:	fffff097          	auipc	ra,0xfffff
    80006f08:	018080e7          	jalr	24(ra) # 80005f1c <panic>
    80006f0c:	00001517          	auipc	a0,0x1
    80006f10:	7fc50513          	addi	a0,a0,2044 # 80008708 <digits+0x30>
    80006f14:	fffff097          	auipc	ra,0xfffff
    80006f18:	008080e7          	jalr	8(ra) # 80005f1c <panic>

0000000080006f1c <push_on>:
    80006f1c:	fe010113          	addi	sp,sp,-32
    80006f20:	00813823          	sd	s0,16(sp)
    80006f24:	00113c23          	sd	ra,24(sp)
    80006f28:	00913423          	sd	s1,8(sp)
    80006f2c:	02010413          	addi	s0,sp,32
    80006f30:	100024f3          	csrr	s1,sstatus
    80006f34:	100027f3          	csrr	a5,sstatus
    80006f38:	0027e793          	ori	a5,a5,2
    80006f3c:	10079073          	csrw	sstatus,a5
    80006f40:	ffffe097          	auipc	ra,0xffffe
    80006f44:	620080e7          	jalr	1568(ra) # 80005560 <mycpu>
    80006f48:	07852783          	lw	a5,120(a0)
    80006f4c:	02078663          	beqz	a5,80006f78 <push_on+0x5c>
    80006f50:	ffffe097          	auipc	ra,0xffffe
    80006f54:	610080e7          	jalr	1552(ra) # 80005560 <mycpu>
    80006f58:	07852783          	lw	a5,120(a0)
    80006f5c:	01813083          	ld	ra,24(sp)
    80006f60:	01013403          	ld	s0,16(sp)
    80006f64:	0017879b          	addiw	a5,a5,1
    80006f68:	06f52c23          	sw	a5,120(a0)
    80006f6c:	00813483          	ld	s1,8(sp)
    80006f70:	02010113          	addi	sp,sp,32
    80006f74:	00008067          	ret
    80006f78:	0014d493          	srli	s1,s1,0x1
    80006f7c:	ffffe097          	auipc	ra,0xffffe
    80006f80:	5e4080e7          	jalr	1508(ra) # 80005560 <mycpu>
    80006f84:	0014f493          	andi	s1,s1,1
    80006f88:	06952e23          	sw	s1,124(a0)
    80006f8c:	fc5ff06f          	j	80006f50 <push_on+0x34>

0000000080006f90 <pop_on>:
    80006f90:	ff010113          	addi	sp,sp,-16
    80006f94:	00813023          	sd	s0,0(sp)
    80006f98:	00113423          	sd	ra,8(sp)
    80006f9c:	01010413          	addi	s0,sp,16
    80006fa0:	ffffe097          	auipc	ra,0xffffe
    80006fa4:	5c0080e7          	jalr	1472(ra) # 80005560 <mycpu>
    80006fa8:	100027f3          	csrr	a5,sstatus
    80006fac:	0027f793          	andi	a5,a5,2
    80006fb0:	04078463          	beqz	a5,80006ff8 <pop_on+0x68>
    80006fb4:	07852783          	lw	a5,120(a0)
    80006fb8:	02f05863          	blez	a5,80006fe8 <pop_on+0x58>
    80006fbc:	fff7879b          	addiw	a5,a5,-1
    80006fc0:	06f52c23          	sw	a5,120(a0)
    80006fc4:	07853783          	ld	a5,120(a0)
    80006fc8:	00079863          	bnez	a5,80006fd8 <pop_on+0x48>
    80006fcc:	100027f3          	csrr	a5,sstatus
    80006fd0:	ffd7f793          	andi	a5,a5,-3
    80006fd4:	10079073          	csrw	sstatus,a5
    80006fd8:	00813083          	ld	ra,8(sp)
    80006fdc:	00013403          	ld	s0,0(sp)
    80006fe0:	01010113          	addi	sp,sp,16
    80006fe4:	00008067          	ret
    80006fe8:	00001517          	auipc	a0,0x1
    80006fec:	76050513          	addi	a0,a0,1888 # 80008748 <digits+0x70>
    80006ff0:	fffff097          	auipc	ra,0xfffff
    80006ff4:	f2c080e7          	jalr	-212(ra) # 80005f1c <panic>
    80006ff8:	00001517          	auipc	a0,0x1
    80006ffc:	73050513          	addi	a0,a0,1840 # 80008728 <digits+0x50>
    80007000:	fffff097          	auipc	ra,0xfffff
    80007004:	f1c080e7          	jalr	-228(ra) # 80005f1c <panic>

0000000080007008 <__memset>:
    80007008:	ff010113          	addi	sp,sp,-16
    8000700c:	00813423          	sd	s0,8(sp)
    80007010:	01010413          	addi	s0,sp,16
    80007014:	1a060e63          	beqz	a2,800071d0 <__memset+0x1c8>
    80007018:	40a007b3          	neg	a5,a0
    8000701c:	0077f793          	andi	a5,a5,7
    80007020:	00778693          	addi	a3,a5,7
    80007024:	00b00813          	li	a6,11
    80007028:	0ff5f593          	andi	a1,a1,255
    8000702c:	fff6071b          	addiw	a4,a2,-1
    80007030:	1b06e663          	bltu	a3,a6,800071dc <__memset+0x1d4>
    80007034:	1cd76463          	bltu	a4,a3,800071fc <__memset+0x1f4>
    80007038:	1a078e63          	beqz	a5,800071f4 <__memset+0x1ec>
    8000703c:	00b50023          	sb	a1,0(a0)
    80007040:	00100713          	li	a4,1
    80007044:	1ae78463          	beq	a5,a4,800071ec <__memset+0x1e4>
    80007048:	00b500a3          	sb	a1,1(a0)
    8000704c:	00200713          	li	a4,2
    80007050:	1ae78a63          	beq	a5,a4,80007204 <__memset+0x1fc>
    80007054:	00b50123          	sb	a1,2(a0)
    80007058:	00300713          	li	a4,3
    8000705c:	18e78463          	beq	a5,a4,800071e4 <__memset+0x1dc>
    80007060:	00b501a3          	sb	a1,3(a0)
    80007064:	00400713          	li	a4,4
    80007068:	1ae78263          	beq	a5,a4,8000720c <__memset+0x204>
    8000706c:	00b50223          	sb	a1,4(a0)
    80007070:	00500713          	li	a4,5
    80007074:	1ae78063          	beq	a5,a4,80007214 <__memset+0x20c>
    80007078:	00b502a3          	sb	a1,5(a0)
    8000707c:	00700713          	li	a4,7
    80007080:	18e79e63          	bne	a5,a4,8000721c <__memset+0x214>
    80007084:	00b50323          	sb	a1,6(a0)
    80007088:	00700e93          	li	t4,7
    8000708c:	00859713          	slli	a4,a1,0x8
    80007090:	00e5e733          	or	a4,a1,a4
    80007094:	01059e13          	slli	t3,a1,0x10
    80007098:	01c76e33          	or	t3,a4,t3
    8000709c:	01859313          	slli	t1,a1,0x18
    800070a0:	006e6333          	or	t1,t3,t1
    800070a4:	02059893          	slli	a7,a1,0x20
    800070a8:	40f60e3b          	subw	t3,a2,a5
    800070ac:	011368b3          	or	a7,t1,a7
    800070b0:	02859813          	slli	a6,a1,0x28
    800070b4:	0108e833          	or	a6,a7,a6
    800070b8:	03059693          	slli	a3,a1,0x30
    800070bc:	003e589b          	srliw	a7,t3,0x3
    800070c0:	00d866b3          	or	a3,a6,a3
    800070c4:	03859713          	slli	a4,a1,0x38
    800070c8:	00389813          	slli	a6,a7,0x3
    800070cc:	00f507b3          	add	a5,a0,a5
    800070d0:	00e6e733          	or	a4,a3,a4
    800070d4:	000e089b          	sext.w	a7,t3
    800070d8:	00f806b3          	add	a3,a6,a5
    800070dc:	00e7b023          	sd	a4,0(a5)
    800070e0:	00878793          	addi	a5,a5,8
    800070e4:	fed79ce3          	bne	a5,a3,800070dc <__memset+0xd4>
    800070e8:	ff8e7793          	andi	a5,t3,-8
    800070ec:	0007871b          	sext.w	a4,a5
    800070f0:	01d787bb          	addw	a5,a5,t4
    800070f4:	0ce88e63          	beq	a7,a4,800071d0 <__memset+0x1c8>
    800070f8:	00f50733          	add	a4,a0,a5
    800070fc:	00b70023          	sb	a1,0(a4)
    80007100:	0017871b          	addiw	a4,a5,1
    80007104:	0cc77663          	bgeu	a4,a2,800071d0 <__memset+0x1c8>
    80007108:	00e50733          	add	a4,a0,a4
    8000710c:	00b70023          	sb	a1,0(a4)
    80007110:	0027871b          	addiw	a4,a5,2
    80007114:	0ac77e63          	bgeu	a4,a2,800071d0 <__memset+0x1c8>
    80007118:	00e50733          	add	a4,a0,a4
    8000711c:	00b70023          	sb	a1,0(a4)
    80007120:	0037871b          	addiw	a4,a5,3
    80007124:	0ac77663          	bgeu	a4,a2,800071d0 <__memset+0x1c8>
    80007128:	00e50733          	add	a4,a0,a4
    8000712c:	00b70023          	sb	a1,0(a4)
    80007130:	0047871b          	addiw	a4,a5,4
    80007134:	08c77e63          	bgeu	a4,a2,800071d0 <__memset+0x1c8>
    80007138:	00e50733          	add	a4,a0,a4
    8000713c:	00b70023          	sb	a1,0(a4)
    80007140:	0057871b          	addiw	a4,a5,5
    80007144:	08c77663          	bgeu	a4,a2,800071d0 <__memset+0x1c8>
    80007148:	00e50733          	add	a4,a0,a4
    8000714c:	00b70023          	sb	a1,0(a4)
    80007150:	0067871b          	addiw	a4,a5,6
    80007154:	06c77e63          	bgeu	a4,a2,800071d0 <__memset+0x1c8>
    80007158:	00e50733          	add	a4,a0,a4
    8000715c:	00b70023          	sb	a1,0(a4)
    80007160:	0077871b          	addiw	a4,a5,7
    80007164:	06c77663          	bgeu	a4,a2,800071d0 <__memset+0x1c8>
    80007168:	00e50733          	add	a4,a0,a4
    8000716c:	00b70023          	sb	a1,0(a4)
    80007170:	0087871b          	addiw	a4,a5,8
    80007174:	04c77e63          	bgeu	a4,a2,800071d0 <__memset+0x1c8>
    80007178:	00e50733          	add	a4,a0,a4
    8000717c:	00b70023          	sb	a1,0(a4)
    80007180:	0097871b          	addiw	a4,a5,9
    80007184:	04c77663          	bgeu	a4,a2,800071d0 <__memset+0x1c8>
    80007188:	00e50733          	add	a4,a0,a4
    8000718c:	00b70023          	sb	a1,0(a4)
    80007190:	00a7871b          	addiw	a4,a5,10
    80007194:	02c77e63          	bgeu	a4,a2,800071d0 <__memset+0x1c8>
    80007198:	00e50733          	add	a4,a0,a4
    8000719c:	00b70023          	sb	a1,0(a4)
    800071a0:	00b7871b          	addiw	a4,a5,11
    800071a4:	02c77663          	bgeu	a4,a2,800071d0 <__memset+0x1c8>
    800071a8:	00e50733          	add	a4,a0,a4
    800071ac:	00b70023          	sb	a1,0(a4)
    800071b0:	00c7871b          	addiw	a4,a5,12
    800071b4:	00c77e63          	bgeu	a4,a2,800071d0 <__memset+0x1c8>
    800071b8:	00e50733          	add	a4,a0,a4
    800071bc:	00b70023          	sb	a1,0(a4)
    800071c0:	00d7879b          	addiw	a5,a5,13
    800071c4:	00c7f663          	bgeu	a5,a2,800071d0 <__memset+0x1c8>
    800071c8:	00f507b3          	add	a5,a0,a5
    800071cc:	00b78023          	sb	a1,0(a5)
    800071d0:	00813403          	ld	s0,8(sp)
    800071d4:	01010113          	addi	sp,sp,16
    800071d8:	00008067          	ret
    800071dc:	00b00693          	li	a3,11
    800071e0:	e55ff06f          	j	80007034 <__memset+0x2c>
    800071e4:	00300e93          	li	t4,3
    800071e8:	ea5ff06f          	j	8000708c <__memset+0x84>
    800071ec:	00100e93          	li	t4,1
    800071f0:	e9dff06f          	j	8000708c <__memset+0x84>
    800071f4:	00000e93          	li	t4,0
    800071f8:	e95ff06f          	j	8000708c <__memset+0x84>
    800071fc:	00000793          	li	a5,0
    80007200:	ef9ff06f          	j	800070f8 <__memset+0xf0>
    80007204:	00200e93          	li	t4,2
    80007208:	e85ff06f          	j	8000708c <__memset+0x84>
    8000720c:	00400e93          	li	t4,4
    80007210:	e7dff06f          	j	8000708c <__memset+0x84>
    80007214:	00500e93          	li	t4,5
    80007218:	e75ff06f          	j	8000708c <__memset+0x84>
    8000721c:	00600e93          	li	t4,6
    80007220:	e6dff06f          	j	8000708c <__memset+0x84>

0000000080007224 <__memmove>:
    80007224:	ff010113          	addi	sp,sp,-16
    80007228:	00813423          	sd	s0,8(sp)
    8000722c:	01010413          	addi	s0,sp,16
    80007230:	0e060863          	beqz	a2,80007320 <__memmove+0xfc>
    80007234:	fff6069b          	addiw	a3,a2,-1
    80007238:	0006881b          	sext.w	a6,a3
    8000723c:	0ea5e863          	bltu	a1,a0,8000732c <__memmove+0x108>
    80007240:	00758713          	addi	a4,a1,7
    80007244:	00a5e7b3          	or	a5,a1,a0
    80007248:	40a70733          	sub	a4,a4,a0
    8000724c:	0077f793          	andi	a5,a5,7
    80007250:	00f73713          	sltiu	a4,a4,15
    80007254:	00174713          	xori	a4,a4,1
    80007258:	0017b793          	seqz	a5,a5
    8000725c:	00e7f7b3          	and	a5,a5,a4
    80007260:	10078863          	beqz	a5,80007370 <__memmove+0x14c>
    80007264:	00900793          	li	a5,9
    80007268:	1107f463          	bgeu	a5,a6,80007370 <__memmove+0x14c>
    8000726c:	0036581b          	srliw	a6,a2,0x3
    80007270:	fff8081b          	addiw	a6,a6,-1
    80007274:	02081813          	slli	a6,a6,0x20
    80007278:	01d85893          	srli	a7,a6,0x1d
    8000727c:	00858813          	addi	a6,a1,8
    80007280:	00058793          	mv	a5,a1
    80007284:	00050713          	mv	a4,a0
    80007288:	01088833          	add	a6,a7,a6
    8000728c:	0007b883          	ld	a7,0(a5)
    80007290:	00878793          	addi	a5,a5,8
    80007294:	00870713          	addi	a4,a4,8
    80007298:	ff173c23          	sd	a7,-8(a4)
    8000729c:	ff0798e3          	bne	a5,a6,8000728c <__memmove+0x68>
    800072a0:	ff867713          	andi	a4,a2,-8
    800072a4:	02071793          	slli	a5,a4,0x20
    800072a8:	0207d793          	srli	a5,a5,0x20
    800072ac:	00f585b3          	add	a1,a1,a5
    800072b0:	40e686bb          	subw	a3,a3,a4
    800072b4:	00f507b3          	add	a5,a0,a5
    800072b8:	06e60463          	beq	a2,a4,80007320 <__memmove+0xfc>
    800072bc:	0005c703          	lbu	a4,0(a1)
    800072c0:	00e78023          	sb	a4,0(a5)
    800072c4:	04068e63          	beqz	a3,80007320 <__memmove+0xfc>
    800072c8:	0015c603          	lbu	a2,1(a1)
    800072cc:	00100713          	li	a4,1
    800072d0:	00c780a3          	sb	a2,1(a5)
    800072d4:	04e68663          	beq	a3,a4,80007320 <__memmove+0xfc>
    800072d8:	0025c603          	lbu	a2,2(a1)
    800072dc:	00200713          	li	a4,2
    800072e0:	00c78123          	sb	a2,2(a5)
    800072e4:	02e68e63          	beq	a3,a4,80007320 <__memmove+0xfc>
    800072e8:	0035c603          	lbu	a2,3(a1)
    800072ec:	00300713          	li	a4,3
    800072f0:	00c781a3          	sb	a2,3(a5)
    800072f4:	02e68663          	beq	a3,a4,80007320 <__memmove+0xfc>
    800072f8:	0045c603          	lbu	a2,4(a1)
    800072fc:	00400713          	li	a4,4
    80007300:	00c78223          	sb	a2,4(a5)
    80007304:	00e68e63          	beq	a3,a4,80007320 <__memmove+0xfc>
    80007308:	0055c603          	lbu	a2,5(a1)
    8000730c:	00500713          	li	a4,5
    80007310:	00c782a3          	sb	a2,5(a5)
    80007314:	00e68663          	beq	a3,a4,80007320 <__memmove+0xfc>
    80007318:	0065c703          	lbu	a4,6(a1)
    8000731c:	00e78323          	sb	a4,6(a5)
    80007320:	00813403          	ld	s0,8(sp)
    80007324:	01010113          	addi	sp,sp,16
    80007328:	00008067          	ret
    8000732c:	02061713          	slli	a4,a2,0x20
    80007330:	02075713          	srli	a4,a4,0x20
    80007334:	00e587b3          	add	a5,a1,a4
    80007338:	f0f574e3          	bgeu	a0,a5,80007240 <__memmove+0x1c>
    8000733c:	02069613          	slli	a2,a3,0x20
    80007340:	02065613          	srli	a2,a2,0x20
    80007344:	fff64613          	not	a2,a2
    80007348:	00e50733          	add	a4,a0,a4
    8000734c:	00c78633          	add	a2,a5,a2
    80007350:	fff7c683          	lbu	a3,-1(a5)
    80007354:	fff78793          	addi	a5,a5,-1
    80007358:	fff70713          	addi	a4,a4,-1
    8000735c:	00d70023          	sb	a3,0(a4)
    80007360:	fec798e3          	bne	a5,a2,80007350 <__memmove+0x12c>
    80007364:	00813403          	ld	s0,8(sp)
    80007368:	01010113          	addi	sp,sp,16
    8000736c:	00008067          	ret
    80007370:	02069713          	slli	a4,a3,0x20
    80007374:	02075713          	srli	a4,a4,0x20
    80007378:	00170713          	addi	a4,a4,1
    8000737c:	00e50733          	add	a4,a0,a4
    80007380:	00050793          	mv	a5,a0
    80007384:	0005c683          	lbu	a3,0(a1)
    80007388:	00178793          	addi	a5,a5,1
    8000738c:	00158593          	addi	a1,a1,1
    80007390:	fed78fa3          	sb	a3,-1(a5)
    80007394:	fee798e3          	bne	a5,a4,80007384 <__memmove+0x160>
    80007398:	f89ff06f          	j	80007320 <__memmove+0xfc>

000000008000739c <__putc>:
    8000739c:	fe010113          	addi	sp,sp,-32
    800073a0:	00813823          	sd	s0,16(sp)
    800073a4:	00113c23          	sd	ra,24(sp)
    800073a8:	02010413          	addi	s0,sp,32
    800073ac:	00050793          	mv	a5,a0
    800073b0:	fef40593          	addi	a1,s0,-17
    800073b4:	00100613          	li	a2,1
    800073b8:	00000513          	li	a0,0
    800073bc:	fef407a3          	sb	a5,-17(s0)
    800073c0:	fffff097          	auipc	ra,0xfffff
    800073c4:	b3c080e7          	jalr	-1220(ra) # 80005efc <console_write>
    800073c8:	01813083          	ld	ra,24(sp)
    800073cc:	01013403          	ld	s0,16(sp)
    800073d0:	02010113          	addi	sp,sp,32
    800073d4:	00008067          	ret

00000000800073d8 <__getc>:
    800073d8:	fe010113          	addi	sp,sp,-32
    800073dc:	00813823          	sd	s0,16(sp)
    800073e0:	00113c23          	sd	ra,24(sp)
    800073e4:	02010413          	addi	s0,sp,32
    800073e8:	fe840593          	addi	a1,s0,-24
    800073ec:	00100613          	li	a2,1
    800073f0:	00000513          	li	a0,0
    800073f4:	fffff097          	auipc	ra,0xfffff
    800073f8:	ae8080e7          	jalr	-1304(ra) # 80005edc <console_read>
    800073fc:	fe844503          	lbu	a0,-24(s0)
    80007400:	01813083          	ld	ra,24(sp)
    80007404:	01013403          	ld	s0,16(sp)
    80007408:	02010113          	addi	sp,sp,32
    8000740c:	00008067          	ret

0000000080007410 <console_handler>:
    80007410:	fe010113          	addi	sp,sp,-32
    80007414:	00813823          	sd	s0,16(sp)
    80007418:	00113c23          	sd	ra,24(sp)
    8000741c:	00913423          	sd	s1,8(sp)
    80007420:	02010413          	addi	s0,sp,32
    80007424:	14202773          	csrr	a4,scause
    80007428:	100027f3          	csrr	a5,sstatus
    8000742c:	0027f793          	andi	a5,a5,2
    80007430:	06079e63          	bnez	a5,800074ac <console_handler+0x9c>
    80007434:	00074c63          	bltz	a4,8000744c <console_handler+0x3c>
    80007438:	01813083          	ld	ra,24(sp)
    8000743c:	01013403          	ld	s0,16(sp)
    80007440:	00813483          	ld	s1,8(sp)
    80007444:	02010113          	addi	sp,sp,32
    80007448:	00008067          	ret
    8000744c:	0ff77713          	andi	a4,a4,255
    80007450:	00900793          	li	a5,9
    80007454:	fef712e3          	bne	a4,a5,80007438 <console_handler+0x28>
    80007458:	ffffe097          	auipc	ra,0xffffe
    8000745c:	6dc080e7          	jalr	1756(ra) # 80005b34 <plic_claim>
    80007460:	00a00793          	li	a5,10
    80007464:	00050493          	mv	s1,a0
    80007468:	02f50c63          	beq	a0,a5,800074a0 <console_handler+0x90>
    8000746c:	fc0506e3          	beqz	a0,80007438 <console_handler+0x28>
    80007470:	00050593          	mv	a1,a0
    80007474:	00001517          	auipc	a0,0x1
    80007478:	1dc50513          	addi	a0,a0,476 # 80008650 <CONSOLE_STATUS+0x640>
    8000747c:	fffff097          	auipc	ra,0xfffff
    80007480:	afc080e7          	jalr	-1284(ra) # 80005f78 <__printf>
    80007484:	01013403          	ld	s0,16(sp)
    80007488:	01813083          	ld	ra,24(sp)
    8000748c:	00048513          	mv	a0,s1
    80007490:	00813483          	ld	s1,8(sp)
    80007494:	02010113          	addi	sp,sp,32
    80007498:	ffffe317          	auipc	t1,0xffffe
    8000749c:	6d430067          	jr	1748(t1) # 80005b6c <plic_complete>
    800074a0:	fffff097          	auipc	ra,0xfffff
    800074a4:	3e0080e7          	jalr	992(ra) # 80006880 <uartintr>
    800074a8:	fddff06f          	j	80007484 <console_handler+0x74>
    800074ac:	00001517          	auipc	a0,0x1
    800074b0:	2a450513          	addi	a0,a0,676 # 80008750 <digits+0x78>
    800074b4:	fffff097          	auipc	ra,0xfffff
    800074b8:	a68080e7          	jalr	-1432(ra) # 80005f1c <panic>
	...
