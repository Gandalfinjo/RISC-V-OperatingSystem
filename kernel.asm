
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	17013103          	ld	sp,368(sp) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	284050ef          	jal	ra,800052a0 <start>

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
    80001088:	1622be23          	sd	sp,380(t0) # 8000a200 <framePointer>

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
    80001428:	00009717          	auipc	a4,0x9
    8000142c:	db870713          	addi	a4,a4,-584 # 8000a1e0 <_ZN7KThread8staticIdE>
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
    800014bc:	00009717          	auipc	a4,0x9
    800014c0:	d2470713          	addi	a4,a4,-732 # 8000a1e0 <_ZN7KThread8staticIdE>
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
    80001630:	0000a097          	auipc	ra,0xa
    80001634:	ce8080e7          	jalr	-792(ra) # 8000b318 <_Unwind_Resume>
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
    800016c4:	00009497          	auipc	s1,0x9
    800016c8:	b244b483          	ld	s1,-1244(s1) # 8000a1e8 <_ZN7KThread7runningE>

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
    800016e4:	00009797          	auipc	a5,0x9
    800016e8:	b0a7b223          	sd	a0,-1276(a5) # 8000a1e8 <_ZN7KThread7runningE>
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
    80001708:	00009597          	auipc	a1,0x9
    8000170c:	ae05b583          	ld	a1,-1312(a1) # 8000a1e8 <_ZN7KThread7runningE>
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
    8000179c:	00009497          	auipc	s1,0x9
    800017a0:	a4448493          	addi	s1,s1,-1468 # 8000a1e0 <_ZN7KThread8staticIdE>
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
    800017e8:	00009517          	auipc	a0,0x9
    800017ec:	a0853503          	ld	a0,-1528(a0) # 8000a1f0 <_ZN9Scheduler4headE>
    800017f0:	00050c63          	beqz	a0,80001808 <_ZN9Scheduler3getEv+0x2c>

    KThread* thread = head;
    head = head->schedulerNext;
    800017f4:	03853783          	ld	a5,56(a0)
    800017f8:	00009717          	auipc	a4,0x9
    800017fc:	9ef73c23          	sd	a5,-1544(a4) # 8000a1f0 <_ZN9Scheduler4headE>

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
    80001814:	00009797          	auipc	a5,0x9
    80001818:	9e07b223          	sd	zero,-1564(a5) # 8000a1f8 <_ZN9Scheduler4tailE>
    8000181c:	fe9ff06f          	j	80001804 <_ZN9Scheduler3getEv+0x28>

0000000080001820 <_ZN9Scheduler3putEP7KThread>:

void Scheduler::put(KThread* thread) {
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00813423          	sd	s0,8(sp)
    80001828:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    8000182c:	00009797          	auipc	a5,0x9
    80001830:	9c47b783          	ld	a5,-1596(a5) # 8000a1f0 <_ZN9Scheduler4headE>
    80001834:	02078263          	beqz	a5,80001858 <_ZN9Scheduler3putEP7KThread+0x38>
    else tail->schedulerNext = thread;
    80001838:	00009797          	auipc	a5,0x9
    8000183c:	9c07b783          	ld	a5,-1600(a5) # 8000a1f8 <_ZN9Scheduler4tailE>
    80001840:	02a7bc23          	sd	a0,56(a5)
    tail = thread;
    80001844:	00009797          	auipc	a5,0x9
    80001848:	9aa7ba23          	sd	a0,-1612(a5) # 8000a1f8 <_ZN9Scheduler4tailE>
}
    8000184c:	00813403          	ld	s0,8(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret
    if (!head) head = thread;
    80001858:	00009797          	auipc	a5,0x9
    8000185c:	98a7bc23          	sd	a0,-1640(a5) # 8000a1f0 <_ZN9Scheduler4headE>
    80001860:	fe5ff06f          	j	80001844 <_ZN9Scheduler3putEP7KThread+0x24>

0000000080001864 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80001864:	ff010113          	addi	sp,sp,-16
    80001868:	00813423          	sd	s0,8(sp)
    8000186c:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80001870:	00009517          	auipc	a0,0x9
    80001874:	98053503          	ld	a0,-1664(a0) # 8000a1f0 <_ZN9Scheduler4headE>
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
    80001898:	00003097          	auipc	ra,0x3
    8000189c:	fb8080e7          	jalr	-72(ra) # 80004850 <_Z8userMainv>
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
    800018e4:	00009797          	auipc	a5,0x9
    800018e8:	8a47b783          	ld	a5,-1884(a5) # 8000a188 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001940:	00008797          	auipc	a5,0x8
    80001944:	6b878793          	addi	a5,a5,1720 # 80009ff8 <_ZTV6Thread+0x10>
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
    800019c4:	00008797          	auipc	a5,0x8
    800019c8:	65c78793          	addi	a5,a5,1628 # 8000a020 <_ZTV9Semaphore+0x10>
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
    80001b18:	00008797          	auipc	a5,0x8
    80001b1c:	4e078793          	addi	a5,a5,1248 # 80009ff8 <_ZTV6Thread+0x10>
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
    80001b48:	00008797          	auipc	a5,0x8
    80001b4c:	4b078793          	addi	a5,a5,1200 # 80009ff8 <_ZTV6Thread+0x10>
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
    80001bf8:	00008797          	auipc	a5,0x8
    80001bfc:	42878793          	addi	a5,a5,1064 # 8000a020 <_ZTV9Semaphore+0x10>
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
    80001d14:	00008797          	auipc	a5,0x8
    80001d18:	4647b783          	ld	a5,1124(a5) # 8000a178 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001dc0:	00006717          	auipc	a4,0x6
    80001dc4:	26070713          	addi	a4,a4,608 # 80008020 <CONSOLE_STATUS+0x10>
    80001dc8:	00e787b3          	add	a5,a5,a4
    80001dcc:	0007a783          	lw	a5,0(a5)
    80001dd0:	00e787b3          	add	a5,a5,a4
    80001dd4:	00078067          	jr	a5
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001dd8:	00008997          	auipc	s3,0x8
    80001ddc:	3b89b983          	ld	s3,952(s3) # 8000a190 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001e10:	00008997          	auipc	s3,0x8
    80001e14:	3809b983          	ld	s3,896(s3) # 8000a190 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001e48:	00008797          	auipc	a5,0x8
    80001e4c:	3487b783          	ld	a5,840(a5) # 8000a190 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001e68:	00008797          	auipc	a5,0x8
    80001e6c:	3287b783          	ld	a5,808(a5) # 8000a190 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e70:	0007b783          	ld	a5,0(a5)
    80001e74:	04a7b823          	sd	a0,80(a5)
                break;
    80001e78:	f89ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001e7c:	00008797          	auipc	a5,0x8
    80001e80:	3147b783          	ld	a5,788(a5) # 8000a190 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001ec4:	00008797          	auipc	a5,0x8
    80001ec8:	2cc7b783          	ld	a5,716(a5) # 8000a190 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ecc:	0007b783          	ld	a5,0(a5)
    80001ed0:	04a7b823          	sd	a0,80(a5)
                break;
    80001ed4:	f2dff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001ed8:	fff00513          	li	a0,-1
    80001edc:	fe9ff06f          	j	80001ec4 <_ZN5Riscv11trapHandlerEv+0x198>
                if (KThread::running) {
    80001ee0:	00008797          	auipc	a5,0x8
    80001ee4:	2a87b783          	ld	a5,680(a5) # 8000a188 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001f14:	00008797          	auipc	a5,0x8
    80001f18:	27c7b783          	ld	a5,636(a5) # 8000a190 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001f4c:	00008797          	auipc	a5,0x8
    80001f50:	2447b783          	ld	a5,580(a5) # 8000a190 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f54:	0007b783          	ld	a5,0(a5)
    80001f58:	04a7b823          	sd	a0,80(a5)
                break;
    80001f5c:	ea5ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001f60:	fff00513          	li	a0,-1
    80001f64:	fe9ff06f          	j	80001f4c <_ZN5Riscv11trapHandlerEv+0x220>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f68:	00008797          	auipc	a5,0x8
    80001f6c:	2287b783          	ld	a5,552(a5) # 8000a190 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f70:	0007b783          	ld	a5,0(a5)
    80001f74:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001f78:	00058513          	mv	a0,a1
                if (handle) {
    80001f7c:	00050a63          	beqz	a0,80001f90 <_ZN5Riscv11trapHandlerEv+0x264>
                    handle->close();
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	4bc080e7          	jalr	1212(ra) # 8000243c <_ZN10KSemaphore5closeEv>
                    asm volatile("li a0, 0");
    80001f88:	00000513          	li	a0,0
    80001f8c:	e75ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001f90:	fff00513          	li	a0,-1
    80001f94:	e6dff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f98:	00008797          	auipc	a5,0x8
    80001f9c:	1f87b783          	ld	a5,504(a5) # 8000a190 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fa0:	0007b783          	ld	a5,0(a5)
    80001fa4:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001fa8:	00058513          	mv	a0,a1
                if (handle) {
    80001fac:	00050a63          	beqz	a0,80001fc0 <_ZN5Riscv11trapHandlerEv+0x294>
                    handle->wait();
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	3dc080e7          	jalr	988(ra) # 8000238c <_ZN10KSemaphore4waitEv>
                    asm volatile("li a0, 0");
    80001fb8:	00000513          	li	a0,0
    80001fbc:	e45ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001fc0:	fff00513          	li	a0,-1
    80001fc4:	e3dff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001fc8:	00008797          	auipc	a5,0x8
    80001fcc:	1c87b783          	ld	a5,456(a5) # 8000a190 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fd0:	0007b783          	ld	a5,0(a5)
    80001fd4:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001fd8:	00058513          	mv	a0,a1
                if (handle) {
    80001fdc:	00050a63          	beqz	a0,80001ff0 <_ZN5Riscv11trapHandlerEv+0x2c4>
                    handle->signal();
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	408080e7          	jalr	1032(ra) # 800023e8 <_ZN10KSemaphore6signalEv>
                    asm volatile("li a0, 0");
    80001fe8:	00000513          	li	a0,0
    80001fec:	e15ff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                else asm volatile("li a0, -1");
    80001ff0:	fff00513          	li	a0,-1
    80001ff4:	e0dff06f          	j	80001e00 <_ZN5Riscv11trapHandlerEv+0xd4>
                int c = __getc();
    80001ff8:	00005097          	auipc	ra,0x5
    80001ffc:	3a0080e7          	jalr	928(ra) # 80007398 <__getc>
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
    80002014:	00005097          	auipc	ra,0x5
    80002018:	348080e7          	jalr	840(ra) # 8000735c <__putc>
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
    8000203c:	00005097          	auipc	ra,0x5
    80002040:	394080e7          	jalr	916(ra) # 800073d0 <console_handler>
    80002044:	d45ff06f          	j	80001d88 <_ZN5Riscv11trapHandlerEv+0x5c>

0000000080002048 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80002048:	ff010113          	addi	sp,sp,-16
    8000204c:	00813423          	sd	s0,8(sp)
    80002050:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80002054:	00008697          	auipc	a3,0x8
    80002058:	1146b683          	ld	a3,276(a3) # 8000a168 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000205c:	0006b783          	ld	a5,0(a3)
    80002060:	00008717          	auipc	a4,0x8
    80002064:	1a870713          	addi	a4,a4,424 # 8000a208 <_ZN15MemoryAllocator12freeListHeadE>
    80002068:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    8000206c:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80002070:	00008797          	auipc	a5,0x8
    80002074:	1107b783          	ld	a5,272(a5) # 8000a180 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    800020a8:	00008517          	auipc	a0,0x8
    800020ac:	16053503          	ld	a0,352(a0) # 8000a208 <_ZN15MemoryAllocator12freeListHeadE>
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
    8000211c:	00008697          	auipc	a3,0x8
    80002120:	0ef6b623          	sd	a5,236(a3) # 8000a208 <_ZN15MemoryAllocator12freeListHeadE>
    80002124:	fe5ff06f          	j	80002108 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    80002128:	00060863          	beqz	a2,80002138 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    8000212c:	00053783          	ld	a5,0(a0)
    80002130:	00f63023          	sd	a5,0(a2)
    80002134:	fd9ff06f          	j	8000210c <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    80002138:	00053783          	ld	a5,0(a0)
    8000213c:	00008717          	auipc	a4,0x8
    80002140:	0cf73623          	sd	a5,204(a4) # 8000a208 <_ZN15MemoryAllocator12freeListHeadE>
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
    800021a4:	00008797          	auipc	a5,0x8
    800021a8:	0647b783          	ld	a5,100(a5) # 8000a208 <_ZN15MemoryAllocator12freeListHeadE>
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
    800021dc:	00008797          	auipc	a5,0x8
    800021e0:	02a7b623          	sd	a0,44(a5) # 8000a208 <_ZN15MemoryAllocator12freeListHeadE>
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
    80002228:	00008797          	auipc	a5,0x8
    8000222c:	fea7b023          	sd	a0,-32(a5) # 8000a208 <_ZN15MemoryAllocator12freeListHeadE>
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
    80002248:	00008797          	auipc	a5,0x8
    8000224c:	fc07b783          	ld	a5,-64(a5) # 8000a208 <_ZN15MemoryAllocator12freeListHeadE>
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
    80002290:	00008717          	auipc	a4,0x8
    80002294:	f7873703          	ld	a4,-136(a4) # 8000a208 <_ZN15MemoryAllocator12freeListHeadE>
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
    80002364:	02078063          	beqz	a5,80002384 <_ZN10KSemaphore3putEP7KThread+0x30>
    else tail->semaphoreNext = thread;
    80002368:	01053783          	ld	a5,16(a0)
    8000236c:	04b7b023          	sd	a1,64(a5)
    tail = thread;
    80002370:	00b53823          	sd	a1,16(a0)
    thread->semaphoreNext = nullptr;
    80002374:	0405b023          	sd	zero,64(a1)
}
    80002378:	00813403          	ld	s0,8(sp)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret
    if (!head) head = thread;
    80002384:	00b53423          	sd	a1,8(a0)
    80002388:	fe9ff06f          	j	80002370 <_ZN10KSemaphore3putEP7KThread+0x1c>

000000008000238c <_ZN10KSemaphore4waitEv>:

void KSemaphore::wait() {
    val--;
    8000238c:	00052783          	lw	a5,0(a0)
    80002390:	fff7879b          	addiw	a5,a5,-1
    80002394:	00f52023          	sw	a5,0(a0)

    if (val < 0) {
    80002398:	02079713          	slli	a4,a5,0x20
    8000239c:	00074463          	bltz	a4,800023a4 <_ZN10KSemaphore4waitEv+0x18>
    800023a0:	00008067          	ret
void KSemaphore::wait() {
    800023a4:	ff010113          	addi	sp,sp,-16
    800023a8:	00113423          	sd	ra,8(sp)
    800023ac:	00813023          	sd	s0,0(sp)
    800023b0:	01010413          	addi	s0,sp,16
        KThread::running->setState(BLOCKED);
    800023b4:	00008797          	auipc	a5,0x8
    800023b8:	dd47b783          	ld	a5,-556(a5) # 8000a188 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023bc:	0007b583          	ld	a1,0(a5)
    800023c0:	00300793          	li	a5,3
    800023c4:	02f5a823          	sw	a5,48(a1)
        put(KThread::running);
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	f8c080e7          	jalr	-116(ra) # 80002354 <_ZN10KSemaphore3putEP7KThread>
        KThread::dispatch();
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	2e0080e7          	jalr	736(ra) # 800016b0 <_ZN7KThread8dispatchEv>
    }
}
    800023d8:	00813083          	ld	ra,8(sp)
    800023dc:	00013403          	ld	s0,0(sp)
    800023e0:	01010113          	addi	sp,sp,16
    800023e4:	00008067          	ret

00000000800023e8 <_ZN10KSemaphore6signalEv>:

void KSemaphore::signal() {
    val++;
    800023e8:	00052783          	lw	a5,0(a0)
    800023ec:	0017879b          	addiw	a5,a5,1
    800023f0:	0007871b          	sext.w	a4,a5
    800023f4:	00f52023          	sw	a5,0(a0)

    if (val <= 0) {
    800023f8:	00e05463          	blez	a4,80002400 <_ZN10KSemaphore6signalEv+0x18>
    800023fc:	00008067          	ret
void KSemaphore::signal() {
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00113423          	sd	ra,8(sp)
    80002408:	00813023          	sd	s0,0(sp)
    8000240c:	01010413          	addi	s0,sp,16
        KThread* thread = get();
    80002410:	00000097          	auipc	ra,0x0
    80002414:	f08080e7          	jalr	-248(ra) # 80002318 <_ZN10KSemaphore3getEv>

        if (thread) {
    80002418:	00050a63          	beqz	a0,8000242c <_ZN10KSemaphore6signalEv+0x44>
    8000241c:	00100793          	li	a5,1
    80002420:	02f52823          	sw	a5,48(a0)
            thread->setState(READY);
            Scheduler::put(thread);
    80002424:	fffff097          	auipc	ra,0xfffff
    80002428:	3fc080e7          	jalr	1020(ra) # 80001820 <_ZN9Scheduler3putEP7KThread>
        }
    }
}
    8000242c:	00813083          	ld	ra,8(sp)
    80002430:	00013403          	ld	s0,0(sp)
    80002434:	01010113          	addi	sp,sp,16
    80002438:	00008067          	ret

000000008000243c <_ZN10KSemaphore5closeEv>:

void KSemaphore::close() {
    8000243c:	fe010113          	addi	sp,sp,-32
    80002440:	00113c23          	sd	ra,24(sp)
    80002444:	00813823          	sd	s0,16(sp)
    80002448:	00913423          	sd	s1,8(sp)
    8000244c:	02010413          	addi	s0,sp,32
    80002450:	00050493          	mv	s1,a0
    while (head) {
    80002454:	0084b783          	ld	a5,8(s1)
    80002458:	02078463          	beqz	a5,80002480 <_ZN10KSemaphore5closeEv+0x44>
        KThread* thread = get();
    8000245c:	00048513          	mv	a0,s1
    80002460:	00000097          	auipc	ra,0x0
    80002464:	eb8080e7          	jalr	-328(ra) # 80002318 <_ZN10KSemaphore3getEv>
    80002468:	00100713          	li	a4,1
    8000246c:	02e52823          	sw	a4,48(a0)
        thread->setState(READY);
        thread->semaphoreNext = nullptr;
    80002470:	04053023          	sd	zero,64(a0)
        Scheduler::put(thread);
    80002474:	fffff097          	auipc	ra,0xfffff
    80002478:	3ac080e7          	jalr	940(ra) # 80001820 <_ZN9Scheduler3putEP7KThread>
    while (head) {
    8000247c:	fd9ff06f          	j	80002454 <_ZN10KSemaphore5closeEv+0x18>
    }
    80002480:	01813083          	ld	ra,24(sp)
    80002484:	01013403          	ld	s0,16(sp)
    80002488:	00813483          	ld	s1,8(sp)
    8000248c:	02010113          	addi	sp,sp,32
    80002490:	00008067          	ret

0000000080002494 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002494:	fe010113          	addi	sp,sp,-32
    80002498:	00113c23          	sd	ra,24(sp)
    8000249c:	00813823          	sd	s0,16(sp)
    800024a0:	00913423          	sd	s1,8(sp)
    800024a4:	01213023          	sd	s2,0(sp)
    800024a8:	02010413          	addi	s0,sp,32
    800024ac:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800024b0:	00000913          	li	s2,0
    800024b4:	00c0006f          	j	800024c0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x2f) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800024b8:	fffff097          	auipc	ra,0xfffff
    800024bc:	e38080e7          	jalr	-456(ra) # 800012f0 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x2f) {
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	f0c080e7          	jalr	-244(ra) # 800013cc <_Z4getcv>
    800024c8:	0005059b          	sext.w	a1,a0
    800024cc:	02f00793          	li	a5,47
    800024d0:	02f58a63          	beq	a1,a5,80002504 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800024d4:	0084b503          	ld	a0,8(s1)
    800024d8:	00003097          	auipc	ra,0x3
    800024dc:	b44080e7          	jalr	-1212(ra) # 8000501c <_ZN6Buffer3putEi>
        i++;
    800024e0:	0019071b          	addiw	a4,s2,1
    800024e4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800024e8:	0004a683          	lw	a3,0(s1)
    800024ec:	0026979b          	slliw	a5,a3,0x2
    800024f0:	00d787bb          	addw	a5,a5,a3
    800024f4:	0017979b          	slliw	a5,a5,0x1
    800024f8:	02f767bb          	remw	a5,a4,a5
    800024fc:	fc0792e3          	bnez	a5,800024c0 <_ZL16producerKeyboardPv+0x2c>
    80002500:	fb9ff06f          	j	800024b8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002504:	00100793          	li	a5,1
    80002508:	00008717          	auipc	a4,0x8
    8000250c:	d0f72423          	sw	a5,-760(a4) # 8000a210 <_ZL9threadEnd>
    data->buffer->put('!');
    80002510:	02100593          	li	a1,33
    80002514:	0084b503          	ld	a0,8(s1)
    80002518:	00003097          	auipc	ra,0x3
    8000251c:	b04080e7          	jalr	-1276(ra) # 8000501c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002520:	0104b503          	ld	a0,16(s1)
    80002524:	fffff097          	auipc	ra,0xfffff
    80002528:	e7c080e7          	jalr	-388(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    8000252c:	01813083          	ld	ra,24(sp)
    80002530:	01013403          	ld	s0,16(sp)
    80002534:	00813483          	ld	s1,8(sp)
    80002538:	00013903          	ld	s2,0(sp)
    8000253c:	02010113          	addi	sp,sp,32
    80002540:	00008067          	ret

0000000080002544 <_ZL8producerPv>:

static void producer(void *arg) {
    80002544:	fe010113          	addi	sp,sp,-32
    80002548:	00113c23          	sd	ra,24(sp)
    8000254c:	00813823          	sd	s0,16(sp)
    80002550:	00913423          	sd	s1,8(sp)
    80002554:	01213023          	sd	s2,0(sp)
    80002558:	02010413          	addi	s0,sp,32
    8000255c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002560:	00000913          	li	s2,0
    80002564:	00c0006f          	j	80002570 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	d88080e7          	jalr	-632(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002570:	00008797          	auipc	a5,0x8
    80002574:	ca07a783          	lw	a5,-864(a5) # 8000a210 <_ZL9threadEnd>
    80002578:	02079e63          	bnez	a5,800025b4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    8000257c:	0004a583          	lw	a1,0(s1)
    80002580:	0305859b          	addiw	a1,a1,48
    80002584:	0084b503          	ld	a0,8(s1)
    80002588:	00003097          	auipc	ra,0x3
    8000258c:	a94080e7          	jalr	-1388(ra) # 8000501c <_ZN6Buffer3putEi>
        i++;
    80002590:	0019071b          	addiw	a4,s2,1
    80002594:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002598:	0004a683          	lw	a3,0(s1)
    8000259c:	0026979b          	slliw	a5,a3,0x2
    800025a0:	00d787bb          	addw	a5,a5,a3
    800025a4:	0017979b          	slliw	a5,a5,0x1
    800025a8:	02f767bb          	remw	a5,a4,a5
    800025ac:	fc0792e3          	bnez	a5,80002570 <_ZL8producerPv+0x2c>
    800025b0:	fb9ff06f          	j	80002568 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800025b4:	0104b503          	ld	a0,16(s1)
    800025b8:	fffff097          	auipc	ra,0xfffff
    800025bc:	de8080e7          	jalr	-536(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    800025c0:	01813083          	ld	ra,24(sp)
    800025c4:	01013403          	ld	s0,16(sp)
    800025c8:	00813483          	ld	s1,8(sp)
    800025cc:	00013903          	ld	s2,0(sp)
    800025d0:	02010113          	addi	sp,sp,32
    800025d4:	00008067          	ret

00000000800025d8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800025d8:	fd010113          	addi	sp,sp,-48
    800025dc:	02113423          	sd	ra,40(sp)
    800025e0:	02813023          	sd	s0,32(sp)
    800025e4:	00913c23          	sd	s1,24(sp)
    800025e8:	01213823          	sd	s2,16(sp)
    800025ec:	01313423          	sd	s3,8(sp)
    800025f0:	03010413          	addi	s0,sp,48
    800025f4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800025f8:	00000993          	li	s3,0
    800025fc:	01c0006f          	j	80002618 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002600:	fffff097          	auipc	ra,0xfffff
    80002604:	cf0080e7          	jalr	-784(ra) # 800012f0 <_Z15thread_dispatchv>
    80002608:	0500006f          	j	80002658 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000260c:	00a00513          	li	a0,10
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	de4080e7          	jalr	-540(ra) # 800013f4 <_Z4putcc>
    while (!threadEnd) {
    80002618:	00008797          	auipc	a5,0x8
    8000261c:	bf87a783          	lw	a5,-1032(a5) # 8000a210 <_ZL9threadEnd>
    80002620:	06079063          	bnez	a5,80002680 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002624:	00893503          	ld	a0,8(s2)
    80002628:	00003097          	auipc	ra,0x3
    8000262c:	a84080e7          	jalr	-1404(ra) # 800050ac <_ZN6Buffer3getEv>
        i++;
    80002630:	0019849b          	addiw	s1,s3,1
    80002634:	0004899b          	sext.w	s3,s1
        putc(key);
    80002638:	0ff57513          	andi	a0,a0,255
    8000263c:	fffff097          	auipc	ra,0xfffff
    80002640:	db8080e7          	jalr	-584(ra) # 800013f4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002644:	00092703          	lw	a4,0(s2)
    80002648:	0027179b          	slliw	a5,a4,0x2
    8000264c:	00e787bb          	addw	a5,a5,a4
    80002650:	02f4e7bb          	remw	a5,s1,a5
    80002654:	fa0786e3          	beqz	a5,80002600 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002658:	05000793          	li	a5,80
    8000265c:	02f4e4bb          	remw	s1,s1,a5
    80002660:	fa049ce3          	bnez	s1,80002618 <_ZL8consumerPv+0x40>
    80002664:	fa9ff06f          	j	8000260c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002668:	00893503          	ld	a0,8(s2)
    8000266c:	00003097          	auipc	ra,0x3
    80002670:	a40080e7          	jalr	-1472(ra) # 800050ac <_ZN6Buffer3getEv>
        putc(key);
    80002674:	0ff57513          	andi	a0,a0,255
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	d7c080e7          	jalr	-644(ra) # 800013f4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002680:	00893503          	ld	a0,8(s2)
    80002684:	00003097          	auipc	ra,0x3
    80002688:	ab4080e7          	jalr	-1356(ra) # 80005138 <_ZN6Buffer6getCntEv>
    8000268c:	fca04ee3          	bgtz	a0,80002668 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002690:	01093503          	ld	a0,16(s2)
    80002694:	fffff097          	auipc	ra,0xfffff
    80002698:	d0c080e7          	jalr	-756(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
}
    8000269c:	02813083          	ld	ra,40(sp)
    800026a0:	02013403          	ld	s0,32(sp)
    800026a4:	01813483          	ld	s1,24(sp)
    800026a8:	01013903          	ld	s2,16(sp)
    800026ac:	00813983          	ld	s3,8(sp)
    800026b0:	03010113          	addi	sp,sp,48
    800026b4:	00008067          	ret

00000000800026b8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800026b8:	f9010113          	addi	sp,sp,-112
    800026bc:	06113423          	sd	ra,104(sp)
    800026c0:	06813023          	sd	s0,96(sp)
    800026c4:	04913c23          	sd	s1,88(sp)
    800026c8:	05213823          	sd	s2,80(sp)
    800026cc:	05313423          	sd	s3,72(sp)
    800026d0:	05413023          	sd	s4,64(sp)
    800026d4:	03513c23          	sd	s5,56(sp)
    800026d8:	03613823          	sd	s6,48(sp)
    800026dc:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800026e0:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800026e4:	00006517          	auipc	a0,0x6
    800026e8:	a4c50513          	addi	a0,a0,-1460 # 80008130 <CONSOLE_STATUS+0x120>
    800026ec:	00002097          	auipc	ra,0x2
    800026f0:	a9c080e7          	jalr	-1380(ra) # 80004188 <_Z11printStringPKc>
    getString(input, 30);
    800026f4:	01e00593          	li	a1,30
    800026f8:	fa040493          	addi	s1,s0,-96
    800026fc:	00048513          	mv	a0,s1
    80002700:	00002097          	auipc	ra,0x2
    80002704:	b10080e7          	jalr	-1264(ra) # 80004210 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002708:	00048513          	mv	a0,s1
    8000270c:	00002097          	auipc	ra,0x2
    80002710:	bdc080e7          	jalr	-1060(ra) # 800042e8 <_Z11stringToIntPKc>
    80002714:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002718:	00006517          	auipc	a0,0x6
    8000271c:	a3850513          	addi	a0,a0,-1480 # 80008150 <CONSOLE_STATUS+0x140>
    80002720:	00002097          	auipc	ra,0x2
    80002724:	a68080e7          	jalr	-1432(ra) # 80004188 <_Z11printStringPKc>
    getString(input, 30);
    80002728:	01e00593          	li	a1,30
    8000272c:	00048513          	mv	a0,s1
    80002730:	00002097          	auipc	ra,0x2
    80002734:	ae0080e7          	jalr	-1312(ra) # 80004210 <_Z9getStringPci>
    n = stringToInt(input);
    80002738:	00048513          	mv	a0,s1
    8000273c:	00002097          	auipc	ra,0x2
    80002740:	bac080e7          	jalr	-1108(ra) # 800042e8 <_Z11stringToIntPKc>
    80002744:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002748:	00006517          	auipc	a0,0x6
    8000274c:	a2850513          	addi	a0,a0,-1496 # 80008170 <CONSOLE_STATUS+0x160>
    80002750:	00002097          	auipc	ra,0x2
    80002754:	a38080e7          	jalr	-1480(ra) # 80004188 <_Z11printStringPKc>
    80002758:	00000613          	li	a2,0
    8000275c:	00a00593          	li	a1,10
    80002760:	00090513          	mv	a0,s2
    80002764:	00002097          	auipc	ra,0x2
    80002768:	bd4080e7          	jalr	-1068(ra) # 80004338 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000276c:	00006517          	auipc	a0,0x6
    80002770:	a1c50513          	addi	a0,a0,-1508 # 80008188 <CONSOLE_STATUS+0x178>
    80002774:	00002097          	auipc	ra,0x2
    80002778:	a14080e7          	jalr	-1516(ra) # 80004188 <_Z11printStringPKc>
    8000277c:	00000613          	li	a2,0
    80002780:	00a00593          	li	a1,10
    80002784:	00048513          	mv	a0,s1
    80002788:	00002097          	auipc	ra,0x2
    8000278c:	bb0080e7          	jalr	-1104(ra) # 80004338 <_Z8printIntiii>
    printString(".\n");
    80002790:	00006517          	auipc	a0,0x6
    80002794:	a1050513          	addi	a0,a0,-1520 # 800081a0 <CONSOLE_STATUS+0x190>
    80002798:	00002097          	auipc	ra,0x2
    8000279c:	9f0080e7          	jalr	-1552(ra) # 80004188 <_Z11printStringPKc>
    if(threadNum > n) {
    800027a0:	0324c463          	blt	s1,s2,800027c8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800027a4:	03205c63          	blez	s2,800027dc <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800027a8:	03800513          	li	a0,56
    800027ac:	fffff097          	auipc	ra,0xfffff
    800027b0:	240080e7          	jalr	576(ra) # 800019ec <_Znwm>
    800027b4:	00050a13          	mv	s4,a0
    800027b8:	00048593          	mv	a1,s1
    800027bc:	00002097          	auipc	ra,0x2
    800027c0:	7c4080e7          	jalr	1988(ra) # 80004f80 <_ZN6BufferC1Ei>
    800027c4:	0300006f          	j	800027f4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800027c8:	00006517          	auipc	a0,0x6
    800027cc:	9e050513          	addi	a0,a0,-1568 # 800081a8 <CONSOLE_STATUS+0x198>
    800027d0:	00002097          	auipc	ra,0x2
    800027d4:	9b8080e7          	jalr	-1608(ra) # 80004188 <_Z11printStringPKc>
        return;
    800027d8:	0140006f          	j	800027ec <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800027dc:	00006517          	auipc	a0,0x6
    800027e0:	a0c50513          	addi	a0,a0,-1524 # 800081e8 <CONSOLE_STATUS+0x1d8>
    800027e4:	00002097          	auipc	ra,0x2
    800027e8:	9a4080e7          	jalr	-1628(ra) # 80004188 <_Z11printStringPKc>
        return;
    800027ec:	000b0113          	mv	sp,s6
    800027f0:	1500006f          	j	80002940 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800027f4:	00000593          	li	a1,0
    800027f8:	00008517          	auipc	a0,0x8
    800027fc:	a2050513          	addi	a0,a0,-1504 # 8000a218 <_ZL10waitForAll>
    80002800:	fffff097          	auipc	ra,0xfffff
    80002804:	b10080e7          	jalr	-1264(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    thread_t threads[threadNum];
    80002808:	00391793          	slli	a5,s2,0x3
    8000280c:	00f78793          	addi	a5,a5,15
    80002810:	ff07f793          	andi	a5,a5,-16
    80002814:	40f10133          	sub	sp,sp,a5
    80002818:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000281c:	0019071b          	addiw	a4,s2,1
    80002820:	00171793          	slli	a5,a4,0x1
    80002824:	00e787b3          	add	a5,a5,a4
    80002828:	00379793          	slli	a5,a5,0x3
    8000282c:	00f78793          	addi	a5,a5,15
    80002830:	ff07f793          	andi	a5,a5,-16
    80002834:	40f10133          	sub	sp,sp,a5
    80002838:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000283c:	00191613          	slli	a2,s2,0x1
    80002840:	012607b3          	add	a5,a2,s2
    80002844:	00379793          	slli	a5,a5,0x3
    80002848:	00f987b3          	add	a5,s3,a5
    8000284c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002850:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002854:	00008717          	auipc	a4,0x8
    80002858:	9c473703          	ld	a4,-1596(a4) # 8000a218 <_ZL10waitForAll>
    8000285c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002860:	00078613          	mv	a2,a5
    80002864:	00000597          	auipc	a1,0x0
    80002868:	d7458593          	addi	a1,a1,-652 # 800025d8 <_ZL8consumerPv>
    8000286c:	f9840513          	addi	a0,s0,-104
    80002870:	fffff097          	auipc	ra,0xfffff
    80002874:	9ac080e7          	jalr	-1620(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002878:	00000493          	li	s1,0
    8000287c:	0280006f          	j	800028a4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002880:	00000597          	auipc	a1,0x0
    80002884:	c1458593          	addi	a1,a1,-1004 # 80002494 <_ZL16producerKeyboardPv>
                      data + i);
    80002888:	00179613          	slli	a2,a5,0x1
    8000288c:	00f60633          	add	a2,a2,a5
    80002890:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002894:	00c98633          	add	a2,s3,a2
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	984080e7          	jalr	-1660(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800028a0:	0014849b          	addiw	s1,s1,1
    800028a4:	0524d263          	bge	s1,s2,800028e8 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800028a8:	00149793          	slli	a5,s1,0x1
    800028ac:	009787b3          	add	a5,a5,s1
    800028b0:	00379793          	slli	a5,a5,0x3
    800028b4:	00f987b3          	add	a5,s3,a5
    800028b8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800028bc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800028c0:	00008717          	auipc	a4,0x8
    800028c4:	95873703          	ld	a4,-1704(a4) # 8000a218 <_ZL10waitForAll>
    800028c8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800028cc:	00048793          	mv	a5,s1
    800028d0:	00349513          	slli	a0,s1,0x3
    800028d4:	00aa8533          	add	a0,s5,a0
    800028d8:	fa9054e3          	blez	s1,80002880 <_Z22producerConsumer_C_APIv+0x1c8>
    800028dc:	00000597          	auipc	a1,0x0
    800028e0:	c6858593          	addi	a1,a1,-920 # 80002544 <_ZL8producerPv>
    800028e4:	fa5ff06f          	j	80002888 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	a08080e7          	jalr	-1528(ra) # 800012f0 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800028f0:	00000493          	li	s1,0
    800028f4:	00994e63          	blt	s2,s1,80002910 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800028f8:	00008517          	auipc	a0,0x8
    800028fc:	92053503          	ld	a0,-1760(a0) # 8000a218 <_ZL10waitForAll>
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	a74080e7          	jalr	-1420(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80002908:	0014849b          	addiw	s1,s1,1
    8000290c:	fe9ff06f          	j	800028f4 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002910:	00008517          	auipc	a0,0x8
    80002914:	90853503          	ld	a0,-1784(a0) # 8000a218 <_ZL10waitForAll>
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	a30080e7          	jalr	-1488(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    delete buffer;
    80002920:	000a0e63          	beqz	s4,8000293c <_Z22producerConsumer_C_APIv+0x284>
    80002924:	000a0513          	mv	a0,s4
    80002928:	00003097          	auipc	ra,0x3
    8000292c:	898080e7          	jalr	-1896(ra) # 800051c0 <_ZN6BufferD1Ev>
    80002930:	000a0513          	mv	a0,s4
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	0e0080e7          	jalr	224(ra) # 80001a14 <_ZdlPv>
    8000293c:	000b0113          	mv	sp,s6

}
    80002940:	f9040113          	addi	sp,s0,-112
    80002944:	06813083          	ld	ra,104(sp)
    80002948:	06013403          	ld	s0,96(sp)
    8000294c:	05813483          	ld	s1,88(sp)
    80002950:	05013903          	ld	s2,80(sp)
    80002954:	04813983          	ld	s3,72(sp)
    80002958:	04013a03          	ld	s4,64(sp)
    8000295c:	03813a83          	ld	s5,56(sp)
    80002960:	03013b03          	ld	s6,48(sp)
    80002964:	07010113          	addi	sp,sp,112
    80002968:	00008067          	ret
    8000296c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002970:	000a0513          	mv	a0,s4
    80002974:	fffff097          	auipc	ra,0xfffff
    80002978:	0a0080e7          	jalr	160(ra) # 80001a14 <_ZdlPv>
    8000297c:	00048513          	mv	a0,s1
    80002980:	00009097          	auipc	ra,0x9
    80002984:	998080e7          	jalr	-1640(ra) # 8000b318 <_Unwind_Resume>

0000000080002988 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002988:	fe010113          	addi	sp,sp,-32
    8000298c:	00113c23          	sd	ra,24(sp)
    80002990:	00813823          	sd	s0,16(sp)
    80002994:	00913423          	sd	s1,8(sp)
    80002998:	01213023          	sd	s2,0(sp)
    8000299c:	02010413          	addi	s0,sp,32
    800029a0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800029a4:	00100793          	li	a5,1
    800029a8:	02a7f863          	bgeu	a5,a0,800029d8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800029ac:	00a00793          	li	a5,10
    800029b0:	02f577b3          	remu	a5,a0,a5
    800029b4:	02078e63          	beqz	a5,800029f0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800029b8:	fff48513          	addi	a0,s1,-1
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	fcc080e7          	jalr	-52(ra) # 80002988 <_ZL9fibonaccim>
    800029c4:	00050913          	mv	s2,a0
    800029c8:	ffe48513          	addi	a0,s1,-2
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	fbc080e7          	jalr	-68(ra) # 80002988 <_ZL9fibonaccim>
    800029d4:	00a90533          	add	a0,s2,a0
}
    800029d8:	01813083          	ld	ra,24(sp)
    800029dc:	01013403          	ld	s0,16(sp)
    800029e0:	00813483          	ld	s1,8(sp)
    800029e4:	00013903          	ld	s2,0(sp)
    800029e8:	02010113          	addi	sp,sp,32
    800029ec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	900080e7          	jalr	-1792(ra) # 800012f0 <_Z15thread_dispatchv>
    800029f8:	fc1ff06f          	j	800029b8 <_ZL9fibonaccim+0x30>

00000000800029fc <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800029fc:	fe010113          	addi	sp,sp,-32
    80002a00:	00113c23          	sd	ra,24(sp)
    80002a04:	00813823          	sd	s0,16(sp)
    80002a08:	00913423          	sd	s1,8(sp)
    80002a0c:	01213023          	sd	s2,0(sp)
    80002a10:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002a14:	00000913          	li	s2,0
    80002a18:	0380006f          	j	80002a50 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	8d4080e7          	jalr	-1836(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a24:	00148493          	addi	s1,s1,1
    80002a28:	000027b7          	lui	a5,0x2
    80002a2c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002a30:	0097ee63          	bltu	a5,s1,80002a4c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002a34:	00000713          	li	a4,0
    80002a38:	000077b7          	lui	a5,0x7
    80002a3c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002a40:	fce7eee3          	bltu	a5,a4,80002a1c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002a44:	00170713          	addi	a4,a4,1
    80002a48:	ff1ff06f          	j	80002a38 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002a4c:	00190913          	addi	s2,s2,1
    80002a50:	00900793          	li	a5,9
    80002a54:	0527e063          	bltu	a5,s2,80002a94 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002a58:	00005517          	auipc	a0,0x5
    80002a5c:	7c050513          	addi	a0,a0,1984 # 80008218 <CONSOLE_STATUS+0x208>
    80002a60:	00001097          	auipc	ra,0x1
    80002a64:	728080e7          	jalr	1832(ra) # 80004188 <_Z11printStringPKc>
    80002a68:	00000613          	li	a2,0
    80002a6c:	00a00593          	li	a1,10
    80002a70:	0009051b          	sext.w	a0,s2
    80002a74:	00002097          	auipc	ra,0x2
    80002a78:	8c4080e7          	jalr	-1852(ra) # 80004338 <_Z8printIntiii>
    80002a7c:	00006517          	auipc	a0,0x6
    80002a80:	a2c50513          	addi	a0,a0,-1492 # 800084a8 <CONSOLE_STATUS+0x498>
    80002a84:	00001097          	auipc	ra,0x1
    80002a88:	704080e7          	jalr	1796(ra) # 80004188 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002a8c:	00000493          	li	s1,0
    80002a90:	f99ff06f          	j	80002a28 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002a94:	00005517          	auipc	a0,0x5
    80002a98:	78c50513          	addi	a0,a0,1932 # 80008220 <CONSOLE_STATUS+0x210>
    80002a9c:	00001097          	auipc	ra,0x1
    80002aa0:	6ec080e7          	jalr	1772(ra) # 80004188 <_Z11printStringPKc>
    finishedA = true;
    80002aa4:	00100793          	li	a5,1
    80002aa8:	00007717          	auipc	a4,0x7
    80002aac:	76f70c23          	sb	a5,1912(a4) # 8000a220 <_ZL9finishedA>
}
    80002ab0:	01813083          	ld	ra,24(sp)
    80002ab4:	01013403          	ld	s0,16(sp)
    80002ab8:	00813483          	ld	s1,8(sp)
    80002abc:	00013903          	ld	s2,0(sp)
    80002ac0:	02010113          	addi	sp,sp,32
    80002ac4:	00008067          	ret

0000000080002ac8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002ac8:	fe010113          	addi	sp,sp,-32
    80002acc:	00113c23          	sd	ra,24(sp)
    80002ad0:	00813823          	sd	s0,16(sp)
    80002ad4:	00913423          	sd	s1,8(sp)
    80002ad8:	01213023          	sd	s2,0(sp)
    80002adc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002ae0:	00000913          	li	s2,0
    80002ae4:	0380006f          	j	80002b1c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	808080e7          	jalr	-2040(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002af0:	00148493          	addi	s1,s1,1
    80002af4:	000027b7          	lui	a5,0x2
    80002af8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002afc:	0097ee63          	bltu	a5,s1,80002b18 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b00:	00000713          	li	a4,0
    80002b04:	000077b7          	lui	a5,0x7
    80002b08:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b0c:	fce7eee3          	bltu	a5,a4,80002ae8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002b10:	00170713          	addi	a4,a4,1
    80002b14:	ff1ff06f          	j	80002b04 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002b18:	00190913          	addi	s2,s2,1
    80002b1c:	00f00793          	li	a5,15
    80002b20:	0527e063          	bltu	a5,s2,80002b60 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002b24:	00005517          	auipc	a0,0x5
    80002b28:	70c50513          	addi	a0,a0,1804 # 80008230 <CONSOLE_STATUS+0x220>
    80002b2c:	00001097          	auipc	ra,0x1
    80002b30:	65c080e7          	jalr	1628(ra) # 80004188 <_Z11printStringPKc>
    80002b34:	00000613          	li	a2,0
    80002b38:	00a00593          	li	a1,10
    80002b3c:	0009051b          	sext.w	a0,s2
    80002b40:	00001097          	auipc	ra,0x1
    80002b44:	7f8080e7          	jalr	2040(ra) # 80004338 <_Z8printIntiii>
    80002b48:	00006517          	auipc	a0,0x6
    80002b4c:	96050513          	addi	a0,a0,-1696 # 800084a8 <CONSOLE_STATUS+0x498>
    80002b50:	00001097          	auipc	ra,0x1
    80002b54:	638080e7          	jalr	1592(ra) # 80004188 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b58:	00000493          	li	s1,0
    80002b5c:	f99ff06f          	j	80002af4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002b60:	00005517          	auipc	a0,0x5
    80002b64:	6d850513          	addi	a0,a0,1752 # 80008238 <CONSOLE_STATUS+0x228>
    80002b68:	00001097          	auipc	ra,0x1
    80002b6c:	620080e7          	jalr	1568(ra) # 80004188 <_Z11printStringPKc>
    finishedB = true;
    80002b70:	00100793          	li	a5,1
    80002b74:	00007717          	auipc	a4,0x7
    80002b78:	6af706a3          	sb	a5,1709(a4) # 8000a221 <_ZL9finishedB>
    thread_dispatch();
    80002b7c:	ffffe097          	auipc	ra,0xffffe
    80002b80:	774080e7          	jalr	1908(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002b84:	01813083          	ld	ra,24(sp)
    80002b88:	01013403          	ld	s0,16(sp)
    80002b8c:	00813483          	ld	s1,8(sp)
    80002b90:	00013903          	ld	s2,0(sp)
    80002b94:	02010113          	addi	sp,sp,32
    80002b98:	00008067          	ret

0000000080002b9c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002b9c:	fe010113          	addi	sp,sp,-32
    80002ba0:	00113c23          	sd	ra,24(sp)
    80002ba4:	00813823          	sd	s0,16(sp)
    80002ba8:	00913423          	sd	s1,8(sp)
    80002bac:	01213023          	sd	s2,0(sp)
    80002bb0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002bb4:	00000493          	li	s1,0
    80002bb8:	0400006f          	j	80002bf8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002bbc:	00005517          	auipc	a0,0x5
    80002bc0:	68c50513          	addi	a0,a0,1676 # 80008248 <CONSOLE_STATUS+0x238>
    80002bc4:	00001097          	auipc	ra,0x1
    80002bc8:	5c4080e7          	jalr	1476(ra) # 80004188 <_Z11printStringPKc>
    80002bcc:	00000613          	li	a2,0
    80002bd0:	00a00593          	li	a1,10
    80002bd4:	00048513          	mv	a0,s1
    80002bd8:	00001097          	auipc	ra,0x1
    80002bdc:	760080e7          	jalr	1888(ra) # 80004338 <_Z8printIntiii>
    80002be0:	00006517          	auipc	a0,0x6
    80002be4:	8c850513          	addi	a0,a0,-1848 # 800084a8 <CONSOLE_STATUS+0x498>
    80002be8:	00001097          	auipc	ra,0x1
    80002bec:	5a0080e7          	jalr	1440(ra) # 80004188 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002bf0:	0014849b          	addiw	s1,s1,1
    80002bf4:	0ff4f493          	andi	s1,s1,255
    80002bf8:	00200793          	li	a5,2
    80002bfc:	fc97f0e3          	bgeu	a5,s1,80002bbc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002c00:	00005517          	auipc	a0,0x5
    80002c04:	65050513          	addi	a0,a0,1616 # 80008250 <CONSOLE_STATUS+0x240>
    80002c08:	00001097          	auipc	ra,0x1
    80002c0c:	580080e7          	jalr	1408(ra) # 80004188 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002c10:	00700313          	li	t1,7
    thread_dispatch();
    80002c14:	ffffe097          	auipc	ra,0xffffe
    80002c18:	6dc080e7          	jalr	1756(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002c1c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002c20:	00005517          	auipc	a0,0x5
    80002c24:	64050513          	addi	a0,a0,1600 # 80008260 <CONSOLE_STATUS+0x250>
    80002c28:	00001097          	auipc	ra,0x1
    80002c2c:	560080e7          	jalr	1376(ra) # 80004188 <_Z11printStringPKc>
    80002c30:	00000613          	li	a2,0
    80002c34:	00a00593          	li	a1,10
    80002c38:	0009051b          	sext.w	a0,s2
    80002c3c:	00001097          	auipc	ra,0x1
    80002c40:	6fc080e7          	jalr	1788(ra) # 80004338 <_Z8printIntiii>
    80002c44:	00006517          	auipc	a0,0x6
    80002c48:	86450513          	addi	a0,a0,-1948 # 800084a8 <CONSOLE_STATUS+0x498>
    80002c4c:	00001097          	auipc	ra,0x1
    80002c50:	53c080e7          	jalr	1340(ra) # 80004188 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002c54:	00c00513          	li	a0,12
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	d30080e7          	jalr	-720(ra) # 80002988 <_ZL9fibonaccim>
    80002c60:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002c64:	00005517          	auipc	a0,0x5
    80002c68:	60450513          	addi	a0,a0,1540 # 80008268 <CONSOLE_STATUS+0x258>
    80002c6c:	00001097          	auipc	ra,0x1
    80002c70:	51c080e7          	jalr	1308(ra) # 80004188 <_Z11printStringPKc>
    80002c74:	00000613          	li	a2,0
    80002c78:	00a00593          	li	a1,10
    80002c7c:	0009051b          	sext.w	a0,s2
    80002c80:	00001097          	auipc	ra,0x1
    80002c84:	6b8080e7          	jalr	1720(ra) # 80004338 <_Z8printIntiii>
    80002c88:	00006517          	auipc	a0,0x6
    80002c8c:	82050513          	addi	a0,a0,-2016 # 800084a8 <CONSOLE_STATUS+0x498>
    80002c90:	00001097          	auipc	ra,0x1
    80002c94:	4f8080e7          	jalr	1272(ra) # 80004188 <_Z11printStringPKc>
    80002c98:	0400006f          	j	80002cd8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002c9c:	00005517          	auipc	a0,0x5
    80002ca0:	5ac50513          	addi	a0,a0,1452 # 80008248 <CONSOLE_STATUS+0x238>
    80002ca4:	00001097          	auipc	ra,0x1
    80002ca8:	4e4080e7          	jalr	1252(ra) # 80004188 <_Z11printStringPKc>
    80002cac:	00000613          	li	a2,0
    80002cb0:	00a00593          	li	a1,10
    80002cb4:	00048513          	mv	a0,s1
    80002cb8:	00001097          	auipc	ra,0x1
    80002cbc:	680080e7          	jalr	1664(ra) # 80004338 <_Z8printIntiii>
    80002cc0:	00005517          	auipc	a0,0x5
    80002cc4:	7e850513          	addi	a0,a0,2024 # 800084a8 <CONSOLE_STATUS+0x498>
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	4c0080e7          	jalr	1216(ra) # 80004188 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002cd0:	0014849b          	addiw	s1,s1,1
    80002cd4:	0ff4f493          	andi	s1,s1,255
    80002cd8:	00500793          	li	a5,5
    80002cdc:	fc97f0e3          	bgeu	a5,s1,80002c9c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002ce0:	00005517          	auipc	a0,0x5
    80002ce4:	54050513          	addi	a0,a0,1344 # 80008220 <CONSOLE_STATUS+0x210>
    80002ce8:	00001097          	auipc	ra,0x1
    80002cec:	4a0080e7          	jalr	1184(ra) # 80004188 <_Z11printStringPKc>
    finishedC = true;
    80002cf0:	00100793          	li	a5,1
    80002cf4:	00007717          	auipc	a4,0x7
    80002cf8:	52f70723          	sb	a5,1326(a4) # 8000a222 <_ZL9finishedC>
    thread_dispatch();
    80002cfc:	ffffe097          	auipc	ra,0xffffe
    80002d00:	5f4080e7          	jalr	1524(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002d04:	01813083          	ld	ra,24(sp)
    80002d08:	01013403          	ld	s0,16(sp)
    80002d0c:	00813483          	ld	s1,8(sp)
    80002d10:	00013903          	ld	s2,0(sp)
    80002d14:	02010113          	addi	sp,sp,32
    80002d18:	00008067          	ret

0000000080002d1c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002d1c:	fe010113          	addi	sp,sp,-32
    80002d20:	00113c23          	sd	ra,24(sp)
    80002d24:	00813823          	sd	s0,16(sp)
    80002d28:	00913423          	sd	s1,8(sp)
    80002d2c:	01213023          	sd	s2,0(sp)
    80002d30:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002d34:	00a00493          	li	s1,10
    80002d38:	0400006f          	j	80002d78 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002d3c:	00005517          	auipc	a0,0x5
    80002d40:	53c50513          	addi	a0,a0,1340 # 80008278 <CONSOLE_STATUS+0x268>
    80002d44:	00001097          	auipc	ra,0x1
    80002d48:	444080e7          	jalr	1092(ra) # 80004188 <_Z11printStringPKc>
    80002d4c:	00000613          	li	a2,0
    80002d50:	00a00593          	li	a1,10
    80002d54:	00048513          	mv	a0,s1
    80002d58:	00001097          	auipc	ra,0x1
    80002d5c:	5e0080e7          	jalr	1504(ra) # 80004338 <_Z8printIntiii>
    80002d60:	00005517          	auipc	a0,0x5
    80002d64:	74850513          	addi	a0,a0,1864 # 800084a8 <CONSOLE_STATUS+0x498>
    80002d68:	00001097          	auipc	ra,0x1
    80002d6c:	420080e7          	jalr	1056(ra) # 80004188 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002d70:	0014849b          	addiw	s1,s1,1
    80002d74:	0ff4f493          	andi	s1,s1,255
    80002d78:	00c00793          	li	a5,12
    80002d7c:	fc97f0e3          	bgeu	a5,s1,80002d3c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002d80:	00005517          	auipc	a0,0x5
    80002d84:	50050513          	addi	a0,a0,1280 # 80008280 <CONSOLE_STATUS+0x270>
    80002d88:	00001097          	auipc	ra,0x1
    80002d8c:	400080e7          	jalr	1024(ra) # 80004188 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002d90:	00500313          	li	t1,5
    thread_dispatch();
    80002d94:	ffffe097          	auipc	ra,0xffffe
    80002d98:	55c080e7          	jalr	1372(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002d9c:	01000513          	li	a0,16
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	be8080e7          	jalr	-1048(ra) # 80002988 <_ZL9fibonaccim>
    80002da8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002dac:	00005517          	auipc	a0,0x5
    80002db0:	4e450513          	addi	a0,a0,1252 # 80008290 <CONSOLE_STATUS+0x280>
    80002db4:	00001097          	auipc	ra,0x1
    80002db8:	3d4080e7          	jalr	980(ra) # 80004188 <_Z11printStringPKc>
    80002dbc:	00000613          	li	a2,0
    80002dc0:	00a00593          	li	a1,10
    80002dc4:	0009051b          	sext.w	a0,s2
    80002dc8:	00001097          	auipc	ra,0x1
    80002dcc:	570080e7          	jalr	1392(ra) # 80004338 <_Z8printIntiii>
    80002dd0:	00005517          	auipc	a0,0x5
    80002dd4:	6d850513          	addi	a0,a0,1752 # 800084a8 <CONSOLE_STATUS+0x498>
    80002dd8:	00001097          	auipc	ra,0x1
    80002ddc:	3b0080e7          	jalr	944(ra) # 80004188 <_Z11printStringPKc>
    80002de0:	0400006f          	j	80002e20 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002de4:	00005517          	auipc	a0,0x5
    80002de8:	49450513          	addi	a0,a0,1172 # 80008278 <CONSOLE_STATUS+0x268>
    80002dec:	00001097          	auipc	ra,0x1
    80002df0:	39c080e7          	jalr	924(ra) # 80004188 <_Z11printStringPKc>
    80002df4:	00000613          	li	a2,0
    80002df8:	00a00593          	li	a1,10
    80002dfc:	00048513          	mv	a0,s1
    80002e00:	00001097          	auipc	ra,0x1
    80002e04:	538080e7          	jalr	1336(ra) # 80004338 <_Z8printIntiii>
    80002e08:	00005517          	auipc	a0,0x5
    80002e0c:	6a050513          	addi	a0,a0,1696 # 800084a8 <CONSOLE_STATUS+0x498>
    80002e10:	00001097          	auipc	ra,0x1
    80002e14:	378080e7          	jalr	888(ra) # 80004188 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002e18:	0014849b          	addiw	s1,s1,1
    80002e1c:	0ff4f493          	andi	s1,s1,255
    80002e20:	00f00793          	li	a5,15
    80002e24:	fc97f0e3          	bgeu	a5,s1,80002de4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002e28:	00005517          	auipc	a0,0x5
    80002e2c:	47850513          	addi	a0,a0,1144 # 800082a0 <CONSOLE_STATUS+0x290>
    80002e30:	00001097          	auipc	ra,0x1
    80002e34:	358080e7          	jalr	856(ra) # 80004188 <_Z11printStringPKc>
    finishedD = true;
    80002e38:	00100793          	li	a5,1
    80002e3c:	00007717          	auipc	a4,0x7
    80002e40:	3ef703a3          	sb	a5,999(a4) # 8000a223 <_ZL9finishedD>
    thread_dispatch();
    80002e44:	ffffe097          	auipc	ra,0xffffe
    80002e48:	4ac080e7          	jalr	1196(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002e4c:	01813083          	ld	ra,24(sp)
    80002e50:	01013403          	ld	s0,16(sp)
    80002e54:	00813483          	ld	s1,8(sp)
    80002e58:	00013903          	ld	s2,0(sp)
    80002e5c:	02010113          	addi	sp,sp,32
    80002e60:	00008067          	ret

0000000080002e64 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002e64:	fc010113          	addi	sp,sp,-64
    80002e68:	02113c23          	sd	ra,56(sp)
    80002e6c:	02813823          	sd	s0,48(sp)
    80002e70:	02913423          	sd	s1,40(sp)
    80002e74:	03213023          	sd	s2,32(sp)
    80002e78:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002e7c:	02000513          	li	a0,32
    80002e80:	fffff097          	auipc	ra,0xfffff
    80002e84:	b6c080e7          	jalr	-1172(ra) # 800019ec <_Znwm>
    80002e88:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002e8c:	fffff097          	auipc	ra,0xfffff
    80002e90:	cb0080e7          	jalr	-848(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80002e94:	00007797          	auipc	a5,0x7
    80002e98:	1ac78793          	addi	a5,a5,428 # 8000a040 <_ZTV7WorkerA+0x10>
    80002e9c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002ea0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002ea4:	00005517          	auipc	a0,0x5
    80002ea8:	40c50513          	addi	a0,a0,1036 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80002eac:	00001097          	auipc	ra,0x1
    80002eb0:	2dc080e7          	jalr	732(ra) # 80004188 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002eb4:	02000513          	li	a0,32
    80002eb8:	fffff097          	auipc	ra,0xfffff
    80002ebc:	b34080e7          	jalr	-1228(ra) # 800019ec <_Znwm>
    80002ec0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002ec4:	fffff097          	auipc	ra,0xfffff
    80002ec8:	c78080e7          	jalr	-904(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80002ecc:	00007797          	auipc	a5,0x7
    80002ed0:	19c78793          	addi	a5,a5,412 # 8000a068 <_ZTV7WorkerB+0x10>
    80002ed4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002ed8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002edc:	00005517          	auipc	a0,0x5
    80002ee0:	3ec50513          	addi	a0,a0,1004 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80002ee4:	00001097          	auipc	ra,0x1
    80002ee8:	2a4080e7          	jalr	676(ra) # 80004188 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002eec:	02000513          	li	a0,32
    80002ef0:	fffff097          	auipc	ra,0xfffff
    80002ef4:	afc080e7          	jalr	-1284(ra) # 800019ec <_Znwm>
    80002ef8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002efc:	fffff097          	auipc	ra,0xfffff
    80002f00:	c40080e7          	jalr	-960(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80002f04:	00007797          	auipc	a5,0x7
    80002f08:	18c78793          	addi	a5,a5,396 # 8000a090 <_ZTV7WorkerC+0x10>
    80002f0c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002f10:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002f14:	00005517          	auipc	a0,0x5
    80002f18:	3cc50513          	addi	a0,a0,972 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80002f1c:	00001097          	auipc	ra,0x1
    80002f20:	26c080e7          	jalr	620(ra) # 80004188 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002f24:	02000513          	li	a0,32
    80002f28:	fffff097          	auipc	ra,0xfffff
    80002f2c:	ac4080e7          	jalr	-1340(ra) # 800019ec <_Znwm>
    80002f30:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002f34:	fffff097          	auipc	ra,0xfffff
    80002f38:	c08080e7          	jalr	-1016(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80002f3c:	00007797          	auipc	a5,0x7
    80002f40:	17c78793          	addi	a5,a5,380 # 8000a0b8 <_ZTV7WorkerD+0x10>
    80002f44:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002f48:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002f4c:	00005517          	auipc	a0,0x5
    80002f50:	3ac50513          	addi	a0,a0,940 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80002f54:	00001097          	auipc	ra,0x1
    80002f58:	234080e7          	jalr	564(ra) # 80004188 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002f5c:	00000493          	li	s1,0
    80002f60:	00300793          	li	a5,3
    80002f64:	0297c663          	blt	a5,s1,80002f90 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002f68:	00349793          	slli	a5,s1,0x3
    80002f6c:	fe040713          	addi	a4,s0,-32
    80002f70:	00f707b3          	add	a5,a4,a5
    80002f74:	fe07b503          	ld	a0,-32(a5)
    80002f78:	fffff097          	auipc	ra,0xfffff
    80002f7c:	bf4080e7          	jalr	-1036(ra) # 80001b6c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002f80:	0014849b          	addiw	s1,s1,1
    80002f84:	fddff06f          	j	80002f60 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002f88:	fffff097          	auipc	ra,0xfffff
    80002f8c:	c38080e7          	jalr	-968(ra) # 80001bc0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002f90:	00007797          	auipc	a5,0x7
    80002f94:	2907c783          	lbu	a5,656(a5) # 8000a220 <_ZL9finishedA>
    80002f98:	fe0788e3          	beqz	a5,80002f88 <_Z20Threads_CPP_API_testv+0x124>
    80002f9c:	00007797          	auipc	a5,0x7
    80002fa0:	2857c783          	lbu	a5,645(a5) # 8000a221 <_ZL9finishedB>
    80002fa4:	fe0782e3          	beqz	a5,80002f88 <_Z20Threads_CPP_API_testv+0x124>
    80002fa8:	00007797          	auipc	a5,0x7
    80002fac:	27a7c783          	lbu	a5,634(a5) # 8000a222 <_ZL9finishedC>
    80002fb0:	fc078ce3          	beqz	a5,80002f88 <_Z20Threads_CPP_API_testv+0x124>
    80002fb4:	00007797          	auipc	a5,0x7
    80002fb8:	26f7c783          	lbu	a5,623(a5) # 8000a223 <_ZL9finishedD>
    80002fbc:	fc0786e3          	beqz	a5,80002f88 <_Z20Threads_CPP_API_testv+0x124>
    80002fc0:	fc040493          	addi	s1,s0,-64
    80002fc4:	0080006f          	j	80002fcc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002fc8:	00848493          	addi	s1,s1,8
    80002fcc:	fe040793          	addi	a5,s0,-32
    80002fd0:	08f48663          	beq	s1,a5,8000305c <_Z20Threads_CPP_API_testv+0x1f8>
    80002fd4:	0004b503          	ld	a0,0(s1)
    80002fd8:	fe0508e3          	beqz	a0,80002fc8 <_Z20Threads_CPP_API_testv+0x164>
    80002fdc:	00053783          	ld	a5,0(a0)
    80002fe0:	0087b783          	ld	a5,8(a5)
    80002fe4:	000780e7          	jalr	a5
    80002fe8:	fe1ff06f          	j	80002fc8 <_Z20Threads_CPP_API_testv+0x164>
    80002fec:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002ff0:	00048513          	mv	a0,s1
    80002ff4:	fffff097          	auipc	ra,0xfffff
    80002ff8:	a20080e7          	jalr	-1504(ra) # 80001a14 <_ZdlPv>
    80002ffc:	00090513          	mv	a0,s2
    80003000:	00008097          	auipc	ra,0x8
    80003004:	318080e7          	jalr	792(ra) # 8000b318 <_Unwind_Resume>
    80003008:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000300c:	00048513          	mv	a0,s1
    80003010:	fffff097          	auipc	ra,0xfffff
    80003014:	a04080e7          	jalr	-1532(ra) # 80001a14 <_ZdlPv>
    80003018:	00090513          	mv	a0,s2
    8000301c:	00008097          	auipc	ra,0x8
    80003020:	2fc080e7          	jalr	764(ra) # 8000b318 <_Unwind_Resume>
    80003024:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003028:	00048513          	mv	a0,s1
    8000302c:	fffff097          	auipc	ra,0xfffff
    80003030:	9e8080e7          	jalr	-1560(ra) # 80001a14 <_ZdlPv>
    80003034:	00090513          	mv	a0,s2
    80003038:	00008097          	auipc	ra,0x8
    8000303c:	2e0080e7          	jalr	736(ra) # 8000b318 <_Unwind_Resume>
    80003040:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003044:	00048513          	mv	a0,s1
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	9cc080e7          	jalr	-1588(ra) # 80001a14 <_ZdlPv>
    80003050:	00090513          	mv	a0,s2
    80003054:	00008097          	auipc	ra,0x8
    80003058:	2c4080e7          	jalr	708(ra) # 8000b318 <_Unwind_Resume>
}
    8000305c:	03813083          	ld	ra,56(sp)
    80003060:	03013403          	ld	s0,48(sp)
    80003064:	02813483          	ld	s1,40(sp)
    80003068:	02013903          	ld	s2,32(sp)
    8000306c:	04010113          	addi	sp,sp,64
    80003070:	00008067          	ret

0000000080003074 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003074:	ff010113          	addi	sp,sp,-16
    80003078:	00113423          	sd	ra,8(sp)
    8000307c:	00813023          	sd	s0,0(sp)
    80003080:	01010413          	addi	s0,sp,16
    80003084:	00007797          	auipc	a5,0x7
    80003088:	fbc78793          	addi	a5,a5,-68 # 8000a040 <_ZTV7WorkerA+0x10>
    8000308c:	00f53023          	sd	a5,0(a0)
    80003090:	fffff097          	auipc	ra,0xfffff
    80003094:	8b0080e7          	jalr	-1872(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003098:	00813083          	ld	ra,8(sp)
    8000309c:	00013403          	ld	s0,0(sp)
    800030a0:	01010113          	addi	sp,sp,16
    800030a4:	00008067          	ret

00000000800030a8 <_ZN7WorkerAD0Ev>:
    800030a8:	fe010113          	addi	sp,sp,-32
    800030ac:	00113c23          	sd	ra,24(sp)
    800030b0:	00813823          	sd	s0,16(sp)
    800030b4:	00913423          	sd	s1,8(sp)
    800030b8:	02010413          	addi	s0,sp,32
    800030bc:	00050493          	mv	s1,a0
    800030c0:	00007797          	auipc	a5,0x7
    800030c4:	f8078793          	addi	a5,a5,-128 # 8000a040 <_ZTV7WorkerA+0x10>
    800030c8:	00f53023          	sd	a5,0(a0)
    800030cc:	fffff097          	auipc	ra,0xfffff
    800030d0:	874080e7          	jalr	-1932(ra) # 80001940 <_ZN6ThreadD1Ev>
    800030d4:	00048513          	mv	a0,s1
    800030d8:	fffff097          	auipc	ra,0xfffff
    800030dc:	93c080e7          	jalr	-1732(ra) # 80001a14 <_ZdlPv>
    800030e0:	01813083          	ld	ra,24(sp)
    800030e4:	01013403          	ld	s0,16(sp)
    800030e8:	00813483          	ld	s1,8(sp)
    800030ec:	02010113          	addi	sp,sp,32
    800030f0:	00008067          	ret

00000000800030f4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800030f4:	ff010113          	addi	sp,sp,-16
    800030f8:	00113423          	sd	ra,8(sp)
    800030fc:	00813023          	sd	s0,0(sp)
    80003100:	01010413          	addi	s0,sp,16
    80003104:	00007797          	auipc	a5,0x7
    80003108:	f6478793          	addi	a5,a5,-156 # 8000a068 <_ZTV7WorkerB+0x10>
    8000310c:	00f53023          	sd	a5,0(a0)
    80003110:	fffff097          	auipc	ra,0xfffff
    80003114:	830080e7          	jalr	-2000(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003118:	00813083          	ld	ra,8(sp)
    8000311c:	00013403          	ld	s0,0(sp)
    80003120:	01010113          	addi	sp,sp,16
    80003124:	00008067          	ret

0000000080003128 <_ZN7WorkerBD0Ev>:
    80003128:	fe010113          	addi	sp,sp,-32
    8000312c:	00113c23          	sd	ra,24(sp)
    80003130:	00813823          	sd	s0,16(sp)
    80003134:	00913423          	sd	s1,8(sp)
    80003138:	02010413          	addi	s0,sp,32
    8000313c:	00050493          	mv	s1,a0
    80003140:	00007797          	auipc	a5,0x7
    80003144:	f2878793          	addi	a5,a5,-216 # 8000a068 <_ZTV7WorkerB+0x10>
    80003148:	00f53023          	sd	a5,0(a0)
    8000314c:	ffffe097          	auipc	ra,0xffffe
    80003150:	7f4080e7          	jalr	2036(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003154:	00048513          	mv	a0,s1
    80003158:	fffff097          	auipc	ra,0xfffff
    8000315c:	8bc080e7          	jalr	-1860(ra) # 80001a14 <_ZdlPv>
    80003160:	01813083          	ld	ra,24(sp)
    80003164:	01013403          	ld	s0,16(sp)
    80003168:	00813483          	ld	s1,8(sp)
    8000316c:	02010113          	addi	sp,sp,32
    80003170:	00008067          	ret

0000000080003174 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00113423          	sd	ra,8(sp)
    8000317c:	00813023          	sd	s0,0(sp)
    80003180:	01010413          	addi	s0,sp,16
    80003184:	00007797          	auipc	a5,0x7
    80003188:	f0c78793          	addi	a5,a5,-244 # 8000a090 <_ZTV7WorkerC+0x10>
    8000318c:	00f53023          	sd	a5,0(a0)
    80003190:	ffffe097          	auipc	ra,0xffffe
    80003194:	7b0080e7          	jalr	1968(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003198:	00813083          	ld	ra,8(sp)
    8000319c:	00013403          	ld	s0,0(sp)
    800031a0:	01010113          	addi	sp,sp,16
    800031a4:	00008067          	ret

00000000800031a8 <_ZN7WorkerCD0Ev>:
    800031a8:	fe010113          	addi	sp,sp,-32
    800031ac:	00113c23          	sd	ra,24(sp)
    800031b0:	00813823          	sd	s0,16(sp)
    800031b4:	00913423          	sd	s1,8(sp)
    800031b8:	02010413          	addi	s0,sp,32
    800031bc:	00050493          	mv	s1,a0
    800031c0:	00007797          	auipc	a5,0x7
    800031c4:	ed078793          	addi	a5,a5,-304 # 8000a090 <_ZTV7WorkerC+0x10>
    800031c8:	00f53023          	sd	a5,0(a0)
    800031cc:	ffffe097          	auipc	ra,0xffffe
    800031d0:	774080e7          	jalr	1908(ra) # 80001940 <_ZN6ThreadD1Ev>
    800031d4:	00048513          	mv	a0,s1
    800031d8:	fffff097          	auipc	ra,0xfffff
    800031dc:	83c080e7          	jalr	-1988(ra) # 80001a14 <_ZdlPv>
    800031e0:	01813083          	ld	ra,24(sp)
    800031e4:	01013403          	ld	s0,16(sp)
    800031e8:	00813483          	ld	s1,8(sp)
    800031ec:	02010113          	addi	sp,sp,32
    800031f0:	00008067          	ret

00000000800031f4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800031f4:	ff010113          	addi	sp,sp,-16
    800031f8:	00113423          	sd	ra,8(sp)
    800031fc:	00813023          	sd	s0,0(sp)
    80003200:	01010413          	addi	s0,sp,16
    80003204:	00007797          	auipc	a5,0x7
    80003208:	eb478793          	addi	a5,a5,-332 # 8000a0b8 <_ZTV7WorkerD+0x10>
    8000320c:	00f53023          	sd	a5,0(a0)
    80003210:	ffffe097          	auipc	ra,0xffffe
    80003214:	730080e7          	jalr	1840(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003218:	00813083          	ld	ra,8(sp)
    8000321c:	00013403          	ld	s0,0(sp)
    80003220:	01010113          	addi	sp,sp,16
    80003224:	00008067          	ret

0000000080003228 <_ZN7WorkerDD0Ev>:
    80003228:	fe010113          	addi	sp,sp,-32
    8000322c:	00113c23          	sd	ra,24(sp)
    80003230:	00813823          	sd	s0,16(sp)
    80003234:	00913423          	sd	s1,8(sp)
    80003238:	02010413          	addi	s0,sp,32
    8000323c:	00050493          	mv	s1,a0
    80003240:	00007797          	auipc	a5,0x7
    80003244:	e7878793          	addi	a5,a5,-392 # 8000a0b8 <_ZTV7WorkerD+0x10>
    80003248:	00f53023          	sd	a5,0(a0)
    8000324c:	ffffe097          	auipc	ra,0xffffe
    80003250:	6f4080e7          	jalr	1780(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003254:	00048513          	mv	a0,s1
    80003258:	ffffe097          	auipc	ra,0xffffe
    8000325c:	7bc080e7          	jalr	1980(ra) # 80001a14 <_ZdlPv>
    80003260:	01813083          	ld	ra,24(sp)
    80003264:	01013403          	ld	s0,16(sp)
    80003268:	00813483          	ld	s1,8(sp)
    8000326c:	02010113          	addi	sp,sp,32
    80003270:	00008067          	ret

0000000080003274 <_ZN7WorkerA3runEv>:
    void run() override {
    80003274:	ff010113          	addi	sp,sp,-16
    80003278:	00113423          	sd	ra,8(sp)
    8000327c:	00813023          	sd	s0,0(sp)
    80003280:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003284:	00000593          	li	a1,0
    80003288:	fffff097          	auipc	ra,0xfffff
    8000328c:	774080e7          	jalr	1908(ra) # 800029fc <_ZN7WorkerA11workerBodyAEPv>
    }
    80003290:	00813083          	ld	ra,8(sp)
    80003294:	00013403          	ld	s0,0(sp)
    80003298:	01010113          	addi	sp,sp,16
    8000329c:	00008067          	ret

00000000800032a0 <_ZN7WorkerB3runEv>:
    void run() override {
    800032a0:	ff010113          	addi	sp,sp,-16
    800032a4:	00113423          	sd	ra,8(sp)
    800032a8:	00813023          	sd	s0,0(sp)
    800032ac:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800032b0:	00000593          	li	a1,0
    800032b4:	00000097          	auipc	ra,0x0
    800032b8:	814080e7          	jalr	-2028(ra) # 80002ac8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800032bc:	00813083          	ld	ra,8(sp)
    800032c0:	00013403          	ld	s0,0(sp)
    800032c4:	01010113          	addi	sp,sp,16
    800032c8:	00008067          	ret

00000000800032cc <_ZN7WorkerC3runEv>:
    void run() override {
    800032cc:	ff010113          	addi	sp,sp,-16
    800032d0:	00113423          	sd	ra,8(sp)
    800032d4:	00813023          	sd	s0,0(sp)
    800032d8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800032dc:	00000593          	li	a1,0
    800032e0:	00000097          	auipc	ra,0x0
    800032e4:	8bc080e7          	jalr	-1860(ra) # 80002b9c <_ZN7WorkerC11workerBodyCEPv>
    }
    800032e8:	00813083          	ld	ra,8(sp)
    800032ec:	00013403          	ld	s0,0(sp)
    800032f0:	01010113          	addi	sp,sp,16
    800032f4:	00008067          	ret

00000000800032f8 <_ZN7WorkerD3runEv>:
    void run() override {
    800032f8:	ff010113          	addi	sp,sp,-16
    800032fc:	00113423          	sd	ra,8(sp)
    80003300:	00813023          	sd	s0,0(sp)
    80003304:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003308:	00000593          	li	a1,0
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	a10080e7          	jalr	-1520(ra) # 80002d1c <_ZN7WorkerD11workerBodyDEPv>
    }
    80003314:	00813083          	ld	ra,8(sp)
    80003318:	00013403          	ld	s0,0(sp)
    8000331c:	01010113          	addi	sp,sp,16
    80003320:	00008067          	ret

0000000080003324 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003324:	fe010113          	addi	sp,sp,-32
    80003328:	00113c23          	sd	ra,24(sp)
    8000332c:	00813823          	sd	s0,16(sp)
    80003330:	00913423          	sd	s1,8(sp)
    80003334:	01213023          	sd	s2,0(sp)
    80003338:	02010413          	addi	s0,sp,32
    8000333c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003340:	00100793          	li	a5,1
    80003344:	02a7f863          	bgeu	a5,a0,80003374 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003348:	00a00793          	li	a5,10
    8000334c:	02f577b3          	remu	a5,a0,a5
    80003350:	02078e63          	beqz	a5,8000338c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003354:	fff48513          	addi	a0,s1,-1
    80003358:	00000097          	auipc	ra,0x0
    8000335c:	fcc080e7          	jalr	-52(ra) # 80003324 <_ZL9fibonaccim>
    80003360:	00050913          	mv	s2,a0
    80003364:	ffe48513          	addi	a0,s1,-2
    80003368:	00000097          	auipc	ra,0x0
    8000336c:	fbc080e7          	jalr	-68(ra) # 80003324 <_ZL9fibonaccim>
    80003370:	00a90533          	add	a0,s2,a0
}
    80003374:	01813083          	ld	ra,24(sp)
    80003378:	01013403          	ld	s0,16(sp)
    8000337c:	00813483          	ld	s1,8(sp)
    80003380:	00013903          	ld	s2,0(sp)
    80003384:	02010113          	addi	sp,sp,32
    80003388:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000338c:	ffffe097          	auipc	ra,0xffffe
    80003390:	f64080e7          	jalr	-156(ra) # 800012f0 <_Z15thread_dispatchv>
    80003394:	fc1ff06f          	j	80003354 <_ZL9fibonaccim+0x30>

0000000080003398 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003398:	fe010113          	addi	sp,sp,-32
    8000339c:	00113c23          	sd	ra,24(sp)
    800033a0:	00813823          	sd	s0,16(sp)
    800033a4:	00913423          	sd	s1,8(sp)
    800033a8:	01213023          	sd	s2,0(sp)
    800033ac:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800033b0:	00a00493          	li	s1,10
    800033b4:	0400006f          	j	800033f4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800033b8:	00005517          	auipc	a0,0x5
    800033bc:	ec050513          	addi	a0,a0,-320 # 80008278 <CONSOLE_STATUS+0x268>
    800033c0:	00001097          	auipc	ra,0x1
    800033c4:	dc8080e7          	jalr	-568(ra) # 80004188 <_Z11printStringPKc>
    800033c8:	00000613          	li	a2,0
    800033cc:	00a00593          	li	a1,10
    800033d0:	00048513          	mv	a0,s1
    800033d4:	00001097          	auipc	ra,0x1
    800033d8:	f64080e7          	jalr	-156(ra) # 80004338 <_Z8printIntiii>
    800033dc:	00005517          	auipc	a0,0x5
    800033e0:	0cc50513          	addi	a0,a0,204 # 800084a8 <CONSOLE_STATUS+0x498>
    800033e4:	00001097          	auipc	ra,0x1
    800033e8:	da4080e7          	jalr	-604(ra) # 80004188 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800033ec:	0014849b          	addiw	s1,s1,1
    800033f0:	0ff4f493          	andi	s1,s1,255
    800033f4:	00c00793          	li	a5,12
    800033f8:	fc97f0e3          	bgeu	a5,s1,800033b8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800033fc:	00005517          	auipc	a0,0x5
    80003400:	e8450513          	addi	a0,a0,-380 # 80008280 <CONSOLE_STATUS+0x270>
    80003404:	00001097          	auipc	ra,0x1
    80003408:	d84080e7          	jalr	-636(ra) # 80004188 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000340c:	00500313          	li	t1,5
    thread_dispatch();
    80003410:	ffffe097          	auipc	ra,0xffffe
    80003414:	ee0080e7          	jalr	-288(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003418:	01000513          	li	a0,16
    8000341c:	00000097          	auipc	ra,0x0
    80003420:	f08080e7          	jalr	-248(ra) # 80003324 <_ZL9fibonaccim>
    80003424:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003428:	00005517          	auipc	a0,0x5
    8000342c:	e6850513          	addi	a0,a0,-408 # 80008290 <CONSOLE_STATUS+0x280>
    80003430:	00001097          	auipc	ra,0x1
    80003434:	d58080e7          	jalr	-680(ra) # 80004188 <_Z11printStringPKc>
    80003438:	00000613          	li	a2,0
    8000343c:	00a00593          	li	a1,10
    80003440:	0009051b          	sext.w	a0,s2
    80003444:	00001097          	auipc	ra,0x1
    80003448:	ef4080e7          	jalr	-268(ra) # 80004338 <_Z8printIntiii>
    8000344c:	00005517          	auipc	a0,0x5
    80003450:	05c50513          	addi	a0,a0,92 # 800084a8 <CONSOLE_STATUS+0x498>
    80003454:	00001097          	auipc	ra,0x1
    80003458:	d34080e7          	jalr	-716(ra) # 80004188 <_Z11printStringPKc>
    8000345c:	0400006f          	j	8000349c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003460:	00005517          	auipc	a0,0x5
    80003464:	e1850513          	addi	a0,a0,-488 # 80008278 <CONSOLE_STATUS+0x268>
    80003468:	00001097          	auipc	ra,0x1
    8000346c:	d20080e7          	jalr	-736(ra) # 80004188 <_Z11printStringPKc>
    80003470:	00000613          	li	a2,0
    80003474:	00a00593          	li	a1,10
    80003478:	00048513          	mv	a0,s1
    8000347c:	00001097          	auipc	ra,0x1
    80003480:	ebc080e7          	jalr	-324(ra) # 80004338 <_Z8printIntiii>
    80003484:	00005517          	auipc	a0,0x5
    80003488:	02450513          	addi	a0,a0,36 # 800084a8 <CONSOLE_STATUS+0x498>
    8000348c:	00001097          	auipc	ra,0x1
    80003490:	cfc080e7          	jalr	-772(ra) # 80004188 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003494:	0014849b          	addiw	s1,s1,1
    80003498:	0ff4f493          	andi	s1,s1,255
    8000349c:	00f00793          	li	a5,15
    800034a0:	fc97f0e3          	bgeu	a5,s1,80003460 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800034a4:	00005517          	auipc	a0,0x5
    800034a8:	dfc50513          	addi	a0,a0,-516 # 800082a0 <CONSOLE_STATUS+0x290>
    800034ac:	00001097          	auipc	ra,0x1
    800034b0:	cdc080e7          	jalr	-804(ra) # 80004188 <_Z11printStringPKc>
    finishedD = true;
    800034b4:	00100793          	li	a5,1
    800034b8:	00007717          	auipc	a4,0x7
    800034bc:	d6f70623          	sb	a5,-660(a4) # 8000a224 <_ZL9finishedD>
    thread_dispatch();
    800034c0:	ffffe097          	auipc	ra,0xffffe
    800034c4:	e30080e7          	jalr	-464(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800034c8:	01813083          	ld	ra,24(sp)
    800034cc:	01013403          	ld	s0,16(sp)
    800034d0:	00813483          	ld	s1,8(sp)
    800034d4:	00013903          	ld	s2,0(sp)
    800034d8:	02010113          	addi	sp,sp,32
    800034dc:	00008067          	ret

00000000800034e0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800034e0:	fe010113          	addi	sp,sp,-32
    800034e4:	00113c23          	sd	ra,24(sp)
    800034e8:	00813823          	sd	s0,16(sp)
    800034ec:	00913423          	sd	s1,8(sp)
    800034f0:	01213023          	sd	s2,0(sp)
    800034f4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034f8:	00000493          	li	s1,0
    800034fc:	0400006f          	j	8000353c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003500:	00005517          	auipc	a0,0x5
    80003504:	d4850513          	addi	a0,a0,-696 # 80008248 <CONSOLE_STATUS+0x238>
    80003508:	00001097          	auipc	ra,0x1
    8000350c:	c80080e7          	jalr	-896(ra) # 80004188 <_Z11printStringPKc>
    80003510:	00000613          	li	a2,0
    80003514:	00a00593          	li	a1,10
    80003518:	00048513          	mv	a0,s1
    8000351c:	00001097          	auipc	ra,0x1
    80003520:	e1c080e7          	jalr	-484(ra) # 80004338 <_Z8printIntiii>
    80003524:	00005517          	auipc	a0,0x5
    80003528:	f8450513          	addi	a0,a0,-124 # 800084a8 <CONSOLE_STATUS+0x498>
    8000352c:	00001097          	auipc	ra,0x1
    80003530:	c5c080e7          	jalr	-932(ra) # 80004188 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003534:	0014849b          	addiw	s1,s1,1
    80003538:	0ff4f493          	andi	s1,s1,255
    8000353c:	00200793          	li	a5,2
    80003540:	fc97f0e3          	bgeu	a5,s1,80003500 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003544:	00005517          	auipc	a0,0x5
    80003548:	d0c50513          	addi	a0,a0,-756 # 80008250 <CONSOLE_STATUS+0x240>
    8000354c:	00001097          	auipc	ra,0x1
    80003550:	c3c080e7          	jalr	-964(ra) # 80004188 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003554:	00700313          	li	t1,7
    thread_dispatch();
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	d98080e7          	jalr	-616(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003560:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003564:	00005517          	auipc	a0,0x5
    80003568:	cfc50513          	addi	a0,a0,-772 # 80008260 <CONSOLE_STATUS+0x250>
    8000356c:	00001097          	auipc	ra,0x1
    80003570:	c1c080e7          	jalr	-996(ra) # 80004188 <_Z11printStringPKc>
    80003574:	00000613          	li	a2,0
    80003578:	00a00593          	li	a1,10
    8000357c:	0009051b          	sext.w	a0,s2
    80003580:	00001097          	auipc	ra,0x1
    80003584:	db8080e7          	jalr	-584(ra) # 80004338 <_Z8printIntiii>
    80003588:	00005517          	auipc	a0,0x5
    8000358c:	f2050513          	addi	a0,a0,-224 # 800084a8 <CONSOLE_STATUS+0x498>
    80003590:	00001097          	auipc	ra,0x1
    80003594:	bf8080e7          	jalr	-1032(ra) # 80004188 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003598:	00c00513          	li	a0,12
    8000359c:	00000097          	auipc	ra,0x0
    800035a0:	d88080e7          	jalr	-632(ra) # 80003324 <_ZL9fibonaccim>
    800035a4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800035a8:	00005517          	auipc	a0,0x5
    800035ac:	cc050513          	addi	a0,a0,-832 # 80008268 <CONSOLE_STATUS+0x258>
    800035b0:	00001097          	auipc	ra,0x1
    800035b4:	bd8080e7          	jalr	-1064(ra) # 80004188 <_Z11printStringPKc>
    800035b8:	00000613          	li	a2,0
    800035bc:	00a00593          	li	a1,10
    800035c0:	0009051b          	sext.w	a0,s2
    800035c4:	00001097          	auipc	ra,0x1
    800035c8:	d74080e7          	jalr	-652(ra) # 80004338 <_Z8printIntiii>
    800035cc:	00005517          	auipc	a0,0x5
    800035d0:	edc50513          	addi	a0,a0,-292 # 800084a8 <CONSOLE_STATUS+0x498>
    800035d4:	00001097          	auipc	ra,0x1
    800035d8:	bb4080e7          	jalr	-1100(ra) # 80004188 <_Z11printStringPKc>
    800035dc:	0400006f          	j	8000361c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800035e0:	00005517          	auipc	a0,0x5
    800035e4:	c6850513          	addi	a0,a0,-920 # 80008248 <CONSOLE_STATUS+0x238>
    800035e8:	00001097          	auipc	ra,0x1
    800035ec:	ba0080e7          	jalr	-1120(ra) # 80004188 <_Z11printStringPKc>
    800035f0:	00000613          	li	a2,0
    800035f4:	00a00593          	li	a1,10
    800035f8:	00048513          	mv	a0,s1
    800035fc:	00001097          	auipc	ra,0x1
    80003600:	d3c080e7          	jalr	-708(ra) # 80004338 <_Z8printIntiii>
    80003604:	00005517          	auipc	a0,0x5
    80003608:	ea450513          	addi	a0,a0,-348 # 800084a8 <CONSOLE_STATUS+0x498>
    8000360c:	00001097          	auipc	ra,0x1
    80003610:	b7c080e7          	jalr	-1156(ra) # 80004188 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003614:	0014849b          	addiw	s1,s1,1
    80003618:	0ff4f493          	andi	s1,s1,255
    8000361c:	00500793          	li	a5,5
    80003620:	fc97f0e3          	bgeu	a5,s1,800035e0 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80003624:	00005517          	auipc	a0,0x5
    80003628:	cec50513          	addi	a0,a0,-788 # 80008310 <CONSOLE_STATUS+0x300>
    8000362c:	00001097          	auipc	ra,0x1
    80003630:	b5c080e7          	jalr	-1188(ra) # 80004188 <_Z11printStringPKc>
    finishedC = true;
    80003634:	00100793          	li	a5,1
    80003638:	00007717          	auipc	a4,0x7
    8000363c:	bef706a3          	sb	a5,-1043(a4) # 8000a225 <_ZL9finishedC>
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

0000000080003660 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003660:	fe010113          	addi	sp,sp,-32
    80003664:	00113c23          	sd	ra,24(sp)
    80003668:	00813823          	sd	s0,16(sp)
    8000366c:	00913423          	sd	s1,8(sp)
    80003670:	01213023          	sd	s2,0(sp)
    80003674:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003678:	00000913          	li	s2,0
    8000367c:	0380006f          	j	800036b4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	c70080e7          	jalr	-912(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003688:	00148493          	addi	s1,s1,1
    8000368c:	000027b7          	lui	a5,0x2
    80003690:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003694:	0097ee63          	bltu	a5,s1,800036b0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003698:	00000713          	li	a4,0
    8000369c:	000077b7          	lui	a5,0x7
    800036a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036a4:	fce7eee3          	bltu	a5,a4,80003680 <_ZL11workerBodyBPv+0x20>
    800036a8:	00170713          	addi	a4,a4,1
    800036ac:	ff1ff06f          	j	8000369c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800036b0:	00190913          	addi	s2,s2,1
    800036b4:	00f00793          	li	a5,15
    800036b8:	0527e063          	bltu	a5,s2,800036f8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800036bc:	00005517          	auipc	a0,0x5
    800036c0:	b7450513          	addi	a0,a0,-1164 # 80008230 <CONSOLE_STATUS+0x220>
    800036c4:	00001097          	auipc	ra,0x1
    800036c8:	ac4080e7          	jalr	-1340(ra) # 80004188 <_Z11printStringPKc>
    800036cc:	00000613          	li	a2,0
    800036d0:	00a00593          	li	a1,10
    800036d4:	0009051b          	sext.w	a0,s2
    800036d8:	00001097          	auipc	ra,0x1
    800036dc:	c60080e7          	jalr	-928(ra) # 80004338 <_Z8printIntiii>
    800036e0:	00005517          	auipc	a0,0x5
    800036e4:	dc850513          	addi	a0,a0,-568 # 800084a8 <CONSOLE_STATUS+0x498>
    800036e8:	00001097          	auipc	ra,0x1
    800036ec:	aa0080e7          	jalr	-1376(ra) # 80004188 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800036f0:	00000493          	li	s1,0
    800036f4:	f99ff06f          	j	8000368c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800036f8:	00005517          	auipc	a0,0x5
    800036fc:	b4050513          	addi	a0,a0,-1216 # 80008238 <CONSOLE_STATUS+0x228>
    80003700:	00001097          	auipc	ra,0x1
    80003704:	a88080e7          	jalr	-1400(ra) # 80004188 <_Z11printStringPKc>
    finishedB = true;
    80003708:	00100793          	li	a5,1
    8000370c:	00007717          	auipc	a4,0x7
    80003710:	b0f70d23          	sb	a5,-1254(a4) # 8000a226 <_ZL9finishedB>
    thread_dispatch();
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	bdc080e7          	jalr	-1060(ra) # 800012f0 <_Z15thread_dispatchv>
}
    8000371c:	01813083          	ld	ra,24(sp)
    80003720:	01013403          	ld	s0,16(sp)
    80003724:	00813483          	ld	s1,8(sp)
    80003728:	00013903          	ld	s2,0(sp)
    8000372c:	02010113          	addi	sp,sp,32
    80003730:	00008067          	ret

0000000080003734 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003734:	fe010113          	addi	sp,sp,-32
    80003738:	00113c23          	sd	ra,24(sp)
    8000373c:	00813823          	sd	s0,16(sp)
    80003740:	00913423          	sd	s1,8(sp)
    80003744:	01213023          	sd	s2,0(sp)
    80003748:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000374c:	00000913          	li	s2,0
    80003750:	0380006f          	j	80003788 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	b9c080e7          	jalr	-1124(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000375c:	00148493          	addi	s1,s1,1
    80003760:	000027b7          	lui	a5,0x2
    80003764:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003768:	0097ee63          	bltu	a5,s1,80003784 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000376c:	00000713          	li	a4,0
    80003770:	000077b7          	lui	a5,0x7
    80003774:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003778:	fce7eee3          	bltu	a5,a4,80003754 <_ZL11workerBodyAPv+0x20>
    8000377c:	00170713          	addi	a4,a4,1
    80003780:	ff1ff06f          	j	80003770 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003784:	00190913          	addi	s2,s2,1
    80003788:	00900793          	li	a5,9
    8000378c:	0527e063          	bltu	a5,s2,800037cc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003790:	00005517          	auipc	a0,0x5
    80003794:	a8850513          	addi	a0,a0,-1400 # 80008218 <CONSOLE_STATUS+0x208>
    80003798:	00001097          	auipc	ra,0x1
    8000379c:	9f0080e7          	jalr	-1552(ra) # 80004188 <_Z11printStringPKc>
    800037a0:	00000613          	li	a2,0
    800037a4:	00a00593          	li	a1,10
    800037a8:	0009051b          	sext.w	a0,s2
    800037ac:	00001097          	auipc	ra,0x1
    800037b0:	b8c080e7          	jalr	-1140(ra) # 80004338 <_Z8printIntiii>
    800037b4:	00005517          	auipc	a0,0x5
    800037b8:	cf450513          	addi	a0,a0,-780 # 800084a8 <CONSOLE_STATUS+0x498>
    800037bc:	00001097          	auipc	ra,0x1
    800037c0:	9cc080e7          	jalr	-1588(ra) # 80004188 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800037c4:	00000493          	li	s1,0
    800037c8:	f99ff06f          	j	80003760 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800037cc:	00005517          	auipc	a0,0x5
    800037d0:	a5450513          	addi	a0,a0,-1452 # 80008220 <CONSOLE_STATUS+0x210>
    800037d4:	00001097          	auipc	ra,0x1
    800037d8:	9b4080e7          	jalr	-1612(ra) # 80004188 <_Z11printStringPKc>
    finishedA = true;
    800037dc:	00100793          	li	a5,1
    800037e0:	00007717          	auipc	a4,0x7
    800037e4:	a4f703a3          	sb	a5,-1465(a4) # 8000a227 <_ZL9finishedA>
}
    800037e8:	01813083          	ld	ra,24(sp)
    800037ec:	01013403          	ld	s0,16(sp)
    800037f0:	00813483          	ld	s1,8(sp)
    800037f4:	00013903          	ld	s2,0(sp)
    800037f8:	02010113          	addi	sp,sp,32
    800037fc:	00008067          	ret

0000000080003800 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003800:	fd010113          	addi	sp,sp,-48
    80003804:	02113423          	sd	ra,40(sp)
    80003808:	02813023          	sd	s0,32(sp)
    8000380c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003810:	00000613          	li	a2,0
    80003814:	00000597          	auipc	a1,0x0
    80003818:	f2058593          	addi	a1,a1,-224 # 80003734 <_ZL11workerBodyAPv>
    8000381c:	fd040513          	addi	a0,s0,-48
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	9fc080e7          	jalr	-1540(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80003828:	00005517          	auipc	a0,0x5
    8000382c:	a8850513          	addi	a0,a0,-1400 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80003830:	00001097          	auipc	ra,0x1
    80003834:	958080e7          	jalr	-1704(ra) # 80004188 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003838:	00000613          	li	a2,0
    8000383c:	00000597          	auipc	a1,0x0
    80003840:	e2458593          	addi	a1,a1,-476 # 80003660 <_ZL11workerBodyBPv>
    80003844:	fd840513          	addi	a0,s0,-40
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	9d4080e7          	jalr	-1580(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    80003850:	00005517          	auipc	a0,0x5
    80003854:	a7850513          	addi	a0,a0,-1416 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80003858:	00001097          	auipc	ra,0x1
    8000385c:	930080e7          	jalr	-1744(ra) # 80004188 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003860:	00000613          	li	a2,0
    80003864:	00000597          	auipc	a1,0x0
    80003868:	c7c58593          	addi	a1,a1,-900 # 800034e0 <_ZL11workerBodyCPv>
    8000386c:	fe040513          	addi	a0,s0,-32
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	9ac080e7          	jalr	-1620(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    80003878:	00005517          	auipc	a0,0x5
    8000387c:	a6850513          	addi	a0,a0,-1432 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80003880:	00001097          	auipc	ra,0x1
    80003884:	908080e7          	jalr	-1784(ra) # 80004188 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003888:	00000613          	li	a2,0
    8000388c:	00000597          	auipc	a1,0x0
    80003890:	b0c58593          	addi	a1,a1,-1268 # 80003398 <_ZL11workerBodyDPv>
    80003894:	fe840513          	addi	a0,s0,-24
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	984080e7          	jalr	-1660(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    800038a0:	00005517          	auipc	a0,0x5
    800038a4:	a5850513          	addi	a0,a0,-1448 # 800082f8 <CONSOLE_STATUS+0x2e8>
    800038a8:	00001097          	auipc	ra,0x1
    800038ac:	8e0080e7          	jalr	-1824(ra) # 80004188 <_Z11printStringPKc>
    800038b0:	00c0006f          	j	800038bc <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800038b4:	ffffe097          	auipc	ra,0xffffe
    800038b8:	a3c080e7          	jalr	-1476(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800038bc:	00007797          	auipc	a5,0x7
    800038c0:	96b7c783          	lbu	a5,-1685(a5) # 8000a227 <_ZL9finishedA>
    800038c4:	fe0788e3          	beqz	a5,800038b4 <_Z18Threads_C_API_testv+0xb4>
    800038c8:	00007797          	auipc	a5,0x7
    800038cc:	95e7c783          	lbu	a5,-1698(a5) # 8000a226 <_ZL9finishedB>
    800038d0:	fe0782e3          	beqz	a5,800038b4 <_Z18Threads_C_API_testv+0xb4>
    800038d4:	00007797          	auipc	a5,0x7
    800038d8:	9517c783          	lbu	a5,-1711(a5) # 8000a225 <_ZL9finishedC>
    800038dc:	fc078ce3          	beqz	a5,800038b4 <_Z18Threads_C_API_testv+0xb4>
    800038e0:	00007797          	auipc	a5,0x7
    800038e4:	9447c783          	lbu	a5,-1724(a5) # 8000a224 <_ZL9finishedD>
    800038e8:	fc0786e3          	beqz	a5,800038b4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800038ec:	02813083          	ld	ra,40(sp)
    800038f0:	02013403          	ld	s0,32(sp)
    800038f4:	03010113          	addi	sp,sp,48
    800038f8:	00008067          	ret

00000000800038fc <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800038fc:	fd010113          	addi	sp,sp,-48
    80003900:	02113423          	sd	ra,40(sp)
    80003904:	02813023          	sd	s0,32(sp)
    80003908:	00913c23          	sd	s1,24(sp)
    8000390c:	01213823          	sd	s2,16(sp)
    80003910:	01313423          	sd	s3,8(sp)
    80003914:	03010413          	addi	s0,sp,48
    80003918:	00050993          	mv	s3,a0
    8000391c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003920:	00000913          	li	s2,0
    80003924:	00c0006f          	j	80003930 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x2f) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003928:	ffffe097          	auipc	ra,0xffffe
    8000392c:	298080e7          	jalr	664(ra) # 80001bc0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x2f) {
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	a9c080e7          	jalr	-1380(ra) # 800013cc <_Z4getcv>
    80003938:	0005059b          	sext.w	a1,a0
    8000393c:	02f00793          	li	a5,47
    80003940:	02f58a63          	beq	a1,a5,80003974 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80003944:	0084b503          	ld	a0,8(s1)
    80003948:	00001097          	auipc	ra,0x1
    8000394c:	c64080e7          	jalr	-924(ra) # 800045ac <_ZN9BufferCPP3putEi>
        i++;
    80003950:	0019071b          	addiw	a4,s2,1
    80003954:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003958:	0004a683          	lw	a3,0(s1)
    8000395c:	0026979b          	slliw	a5,a3,0x2
    80003960:	00d787bb          	addw	a5,a5,a3
    80003964:	0017979b          	slliw	a5,a5,0x1
    80003968:	02f767bb          	remw	a5,a4,a5
    8000396c:	fc0792e3          	bnez	a5,80003930 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80003970:	fb9ff06f          	j	80003928 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80003974:	00100793          	li	a5,1
    80003978:	00007717          	auipc	a4,0x7
    8000397c:	8af72823          	sw	a5,-1872(a4) # 8000a228 <_ZL9threadEnd>
    td->buffer->put('!');
    80003980:	0209b783          	ld	a5,32(s3)
    80003984:	02100593          	li	a1,33
    80003988:	0087b503          	ld	a0,8(a5)
    8000398c:	00001097          	auipc	ra,0x1
    80003990:	c20080e7          	jalr	-992(ra) # 800045ac <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80003994:	0104b503          	ld	a0,16(s1)
    80003998:	ffffe097          	auipc	ra,0xffffe
    8000399c:	2b4080e7          	jalr	692(ra) # 80001c4c <_ZN9Semaphore6signalEv>
}
    800039a0:	02813083          	ld	ra,40(sp)
    800039a4:	02013403          	ld	s0,32(sp)
    800039a8:	01813483          	ld	s1,24(sp)
    800039ac:	01013903          	ld	s2,16(sp)
    800039b0:	00813983          	ld	s3,8(sp)
    800039b4:	03010113          	addi	sp,sp,48
    800039b8:	00008067          	ret

00000000800039bc <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800039bc:	fe010113          	addi	sp,sp,-32
    800039c0:	00113c23          	sd	ra,24(sp)
    800039c4:	00813823          	sd	s0,16(sp)
    800039c8:	00913423          	sd	s1,8(sp)
    800039cc:	01213023          	sd	s2,0(sp)
    800039d0:	02010413          	addi	s0,sp,32
    800039d4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800039d8:	00000913          	li	s2,0
    800039dc:	00c0006f          	j	800039e8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	1e0080e7          	jalr	480(ra) # 80001bc0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800039e8:	00007797          	auipc	a5,0x7
    800039ec:	8407a783          	lw	a5,-1984(a5) # 8000a228 <_ZL9threadEnd>
    800039f0:	02079e63          	bnez	a5,80003a2c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800039f4:	0004a583          	lw	a1,0(s1)
    800039f8:	0305859b          	addiw	a1,a1,48
    800039fc:	0084b503          	ld	a0,8(s1)
    80003a00:	00001097          	auipc	ra,0x1
    80003a04:	bac080e7          	jalr	-1108(ra) # 800045ac <_ZN9BufferCPP3putEi>
        i++;
    80003a08:	0019071b          	addiw	a4,s2,1
    80003a0c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003a10:	0004a683          	lw	a3,0(s1)
    80003a14:	0026979b          	slliw	a5,a3,0x2
    80003a18:	00d787bb          	addw	a5,a5,a3
    80003a1c:	0017979b          	slliw	a5,a5,0x1
    80003a20:	02f767bb          	remw	a5,a4,a5
    80003a24:	fc0792e3          	bnez	a5,800039e8 <_ZN12ProducerSync8producerEPv+0x2c>
    80003a28:	fb9ff06f          	j	800039e0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80003a2c:	0104b503          	ld	a0,16(s1)
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	21c080e7          	jalr	540(ra) # 80001c4c <_ZN9Semaphore6signalEv>
}
    80003a38:	01813083          	ld	ra,24(sp)
    80003a3c:	01013403          	ld	s0,16(sp)
    80003a40:	00813483          	ld	s1,8(sp)
    80003a44:	00013903          	ld	s2,0(sp)
    80003a48:	02010113          	addi	sp,sp,32
    80003a4c:	00008067          	ret

0000000080003a50 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80003a50:	fd010113          	addi	sp,sp,-48
    80003a54:	02113423          	sd	ra,40(sp)
    80003a58:	02813023          	sd	s0,32(sp)
    80003a5c:	00913c23          	sd	s1,24(sp)
    80003a60:	01213823          	sd	s2,16(sp)
    80003a64:	01313423          	sd	s3,8(sp)
    80003a68:	01413023          	sd	s4,0(sp)
    80003a6c:	03010413          	addi	s0,sp,48
    80003a70:	00050993          	mv	s3,a0
    80003a74:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003a78:	00000a13          	li	s4,0
    80003a7c:	01c0006f          	j	80003a98 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80003a80:	ffffe097          	auipc	ra,0xffffe
    80003a84:	140080e7          	jalr	320(ra) # 80001bc0 <_ZN6Thread8dispatchEv>
    80003a88:	0500006f          	j	80003ad8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003a8c:	00a00513          	li	a0,10
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	964080e7          	jalr	-1692(ra) # 800013f4 <_Z4putcc>
    while (!threadEnd) {
    80003a98:	00006797          	auipc	a5,0x6
    80003a9c:	7907a783          	lw	a5,1936(a5) # 8000a228 <_ZL9threadEnd>
    80003aa0:	06079263          	bnez	a5,80003b04 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80003aa4:	00893503          	ld	a0,8(s2)
    80003aa8:	00001097          	auipc	ra,0x1
    80003aac:	b94080e7          	jalr	-1132(ra) # 8000463c <_ZN9BufferCPP3getEv>
        i++;
    80003ab0:	001a049b          	addiw	s1,s4,1
    80003ab4:	00048a1b          	sext.w	s4,s1
        putc(key);
    80003ab8:	0ff57513          	andi	a0,a0,255
    80003abc:	ffffe097          	auipc	ra,0xffffe
    80003ac0:	938080e7          	jalr	-1736(ra) # 800013f4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003ac4:	00092703          	lw	a4,0(s2)
    80003ac8:	0027179b          	slliw	a5,a4,0x2
    80003acc:	00e787bb          	addw	a5,a5,a4
    80003ad0:	02f4e7bb          	remw	a5,s1,a5
    80003ad4:	fa0786e3          	beqz	a5,80003a80 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80003ad8:	05000793          	li	a5,80
    80003adc:	02f4e4bb          	remw	s1,s1,a5
    80003ae0:	fa049ce3          	bnez	s1,80003a98 <_ZN12ConsumerSync8consumerEPv+0x48>
    80003ae4:	fa9ff06f          	j	80003a8c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80003ae8:	0209b783          	ld	a5,32(s3)
    80003aec:	0087b503          	ld	a0,8(a5)
    80003af0:	00001097          	auipc	ra,0x1
    80003af4:	b4c080e7          	jalr	-1204(ra) # 8000463c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80003af8:	0ff57513          	andi	a0,a0,255
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	1a4080e7          	jalr	420(ra) # 80001ca0 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80003b04:	0209b783          	ld	a5,32(s3)
    80003b08:	0087b503          	ld	a0,8(a5)
    80003b0c:	00001097          	auipc	ra,0x1
    80003b10:	bbc080e7          	jalr	-1092(ra) # 800046c8 <_ZN9BufferCPP6getCntEv>
    80003b14:	fca04ae3          	bgtz	a0,80003ae8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80003b18:	01093503          	ld	a0,16(s2)
    80003b1c:	ffffe097          	auipc	ra,0xffffe
    80003b20:	130080e7          	jalr	304(ra) # 80001c4c <_ZN9Semaphore6signalEv>
}
    80003b24:	02813083          	ld	ra,40(sp)
    80003b28:	02013403          	ld	s0,32(sp)
    80003b2c:	01813483          	ld	s1,24(sp)
    80003b30:	01013903          	ld	s2,16(sp)
    80003b34:	00813983          	ld	s3,8(sp)
    80003b38:	00013a03          	ld	s4,0(sp)
    80003b3c:	03010113          	addi	sp,sp,48
    80003b40:	00008067          	ret

0000000080003b44 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80003b44:	f8010113          	addi	sp,sp,-128
    80003b48:	06113c23          	sd	ra,120(sp)
    80003b4c:	06813823          	sd	s0,112(sp)
    80003b50:	06913423          	sd	s1,104(sp)
    80003b54:	07213023          	sd	s2,96(sp)
    80003b58:	05313c23          	sd	s3,88(sp)
    80003b5c:	05413823          	sd	s4,80(sp)
    80003b60:	05513423          	sd	s5,72(sp)
    80003b64:	05613023          	sd	s6,64(sp)
    80003b68:	03713c23          	sd	s7,56(sp)
    80003b6c:	03813823          	sd	s8,48(sp)
    80003b70:	03913423          	sd	s9,40(sp)
    80003b74:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80003b78:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80003b7c:	00004517          	auipc	a0,0x4
    80003b80:	5b450513          	addi	a0,a0,1460 # 80008130 <CONSOLE_STATUS+0x120>
    80003b84:	00000097          	auipc	ra,0x0
    80003b88:	604080e7          	jalr	1540(ra) # 80004188 <_Z11printStringPKc>
    getString(input, 30);
    80003b8c:	01e00593          	li	a1,30
    80003b90:	f8040493          	addi	s1,s0,-128
    80003b94:	00048513          	mv	a0,s1
    80003b98:	00000097          	auipc	ra,0x0
    80003b9c:	678080e7          	jalr	1656(ra) # 80004210 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003ba0:	00048513          	mv	a0,s1
    80003ba4:	00000097          	auipc	ra,0x0
    80003ba8:	744080e7          	jalr	1860(ra) # 800042e8 <_Z11stringToIntPKc>
    80003bac:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003bb0:	00004517          	auipc	a0,0x4
    80003bb4:	5a050513          	addi	a0,a0,1440 # 80008150 <CONSOLE_STATUS+0x140>
    80003bb8:	00000097          	auipc	ra,0x0
    80003bbc:	5d0080e7          	jalr	1488(ra) # 80004188 <_Z11printStringPKc>
    getString(input, 30);
    80003bc0:	01e00593          	li	a1,30
    80003bc4:	00048513          	mv	a0,s1
    80003bc8:	00000097          	auipc	ra,0x0
    80003bcc:	648080e7          	jalr	1608(ra) # 80004210 <_Z9getStringPci>
    n = stringToInt(input);
    80003bd0:	00048513          	mv	a0,s1
    80003bd4:	00000097          	auipc	ra,0x0
    80003bd8:	714080e7          	jalr	1812(ra) # 800042e8 <_Z11stringToIntPKc>
    80003bdc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003be0:	00004517          	auipc	a0,0x4
    80003be4:	59050513          	addi	a0,a0,1424 # 80008170 <CONSOLE_STATUS+0x160>
    80003be8:	00000097          	auipc	ra,0x0
    80003bec:	5a0080e7          	jalr	1440(ra) # 80004188 <_Z11printStringPKc>
    80003bf0:	00000613          	li	a2,0
    80003bf4:	00a00593          	li	a1,10
    80003bf8:	00090513          	mv	a0,s2
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	73c080e7          	jalr	1852(ra) # 80004338 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003c04:	00004517          	auipc	a0,0x4
    80003c08:	58450513          	addi	a0,a0,1412 # 80008188 <CONSOLE_STATUS+0x178>
    80003c0c:	00000097          	auipc	ra,0x0
    80003c10:	57c080e7          	jalr	1404(ra) # 80004188 <_Z11printStringPKc>
    80003c14:	00000613          	li	a2,0
    80003c18:	00a00593          	li	a1,10
    80003c1c:	00048513          	mv	a0,s1
    80003c20:	00000097          	auipc	ra,0x0
    80003c24:	718080e7          	jalr	1816(ra) # 80004338 <_Z8printIntiii>
    printString(".\n");
    80003c28:	00004517          	auipc	a0,0x4
    80003c2c:	57850513          	addi	a0,a0,1400 # 800081a0 <CONSOLE_STATUS+0x190>
    80003c30:	00000097          	auipc	ra,0x0
    80003c34:	558080e7          	jalr	1368(ra) # 80004188 <_Z11printStringPKc>
    if(threadNum > n) {
    80003c38:	0324c463          	blt	s1,s2,80003c60 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80003c3c:	03205c63          	blez	s2,80003c74 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003c40:	03800513          	li	a0,56
    80003c44:	ffffe097          	auipc	ra,0xffffe
    80003c48:	da8080e7          	jalr	-600(ra) # 800019ec <_Znwm>
    80003c4c:	00050a93          	mv	s5,a0
    80003c50:	00048593          	mv	a1,s1
    80003c54:	00001097          	auipc	ra,0x1
    80003c58:	804080e7          	jalr	-2044(ra) # 80004458 <_ZN9BufferCPPC1Ei>
    80003c5c:	0300006f          	j	80003c8c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003c60:	00004517          	auipc	a0,0x4
    80003c64:	54850513          	addi	a0,a0,1352 # 800081a8 <CONSOLE_STATUS+0x198>
    80003c68:	00000097          	auipc	ra,0x0
    80003c6c:	520080e7          	jalr	1312(ra) # 80004188 <_Z11printStringPKc>
        return;
    80003c70:	0140006f          	j	80003c84 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003c74:	00004517          	auipc	a0,0x4
    80003c78:	57450513          	addi	a0,a0,1396 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80003c7c:	00000097          	auipc	ra,0x0
    80003c80:	50c080e7          	jalr	1292(ra) # 80004188 <_Z11printStringPKc>
        return;
    80003c84:	000b8113          	mv	sp,s7
    80003c88:	2380006f          	j	80003ec0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80003c8c:	01000513          	li	a0,16
    80003c90:	ffffe097          	auipc	ra,0xffffe
    80003c94:	d5c080e7          	jalr	-676(ra) # 800019ec <_Znwm>
    80003c98:	00050493          	mv	s1,a0
    80003c9c:	00000593          	li	a1,0
    80003ca0:	ffffe097          	auipc	ra,0xffffe
    80003ca4:	f48080e7          	jalr	-184(ra) # 80001be8 <_ZN9SemaphoreC1Ej>
    80003ca8:	00006797          	auipc	a5,0x6
    80003cac:	5897b423          	sd	s1,1416(a5) # 8000a230 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80003cb0:	00391793          	slli	a5,s2,0x3
    80003cb4:	00f78793          	addi	a5,a5,15
    80003cb8:	ff07f793          	andi	a5,a5,-16
    80003cbc:	40f10133          	sub	sp,sp,a5
    80003cc0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80003cc4:	0019071b          	addiw	a4,s2,1
    80003cc8:	00171793          	slli	a5,a4,0x1
    80003ccc:	00e787b3          	add	a5,a5,a4
    80003cd0:	00379793          	slli	a5,a5,0x3
    80003cd4:	00f78793          	addi	a5,a5,15
    80003cd8:	ff07f793          	andi	a5,a5,-16
    80003cdc:	40f10133          	sub	sp,sp,a5
    80003ce0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80003ce4:	00191c13          	slli	s8,s2,0x1
    80003ce8:	012c07b3          	add	a5,s8,s2
    80003cec:	00379793          	slli	a5,a5,0x3
    80003cf0:	00fa07b3          	add	a5,s4,a5
    80003cf4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003cf8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80003cfc:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80003d00:	02800513          	li	a0,40
    80003d04:	ffffe097          	auipc	ra,0xffffe
    80003d08:	ce8080e7          	jalr	-792(ra) # 800019ec <_Znwm>
    80003d0c:	00050b13          	mv	s6,a0
    80003d10:	012c0c33          	add	s8,s8,s2
    80003d14:	003c1c13          	slli	s8,s8,0x3
    80003d18:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80003d1c:	ffffe097          	auipc	ra,0xffffe
    80003d20:	e20080e7          	jalr	-480(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80003d24:	00006797          	auipc	a5,0x6
    80003d28:	40c78793          	addi	a5,a5,1036 # 8000a130 <_ZTV12ConsumerSync+0x10>
    80003d2c:	00fb3023          	sd	a5,0(s6)
    80003d30:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80003d34:	000b0513          	mv	a0,s6
    80003d38:	ffffe097          	auipc	ra,0xffffe
    80003d3c:	e34080e7          	jalr	-460(ra) # 80001b6c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003d40:	00000493          	li	s1,0
    80003d44:	0380006f          	j	80003d7c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80003d48:	00006797          	auipc	a5,0x6
    80003d4c:	3c078793          	addi	a5,a5,960 # 8000a108 <_ZTV12ProducerSync+0x10>
    80003d50:	00fcb023          	sd	a5,0(s9)
    80003d54:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80003d58:	00349793          	slli	a5,s1,0x3
    80003d5c:	00f987b3          	add	a5,s3,a5
    80003d60:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80003d64:	00349793          	slli	a5,s1,0x3
    80003d68:	00f987b3          	add	a5,s3,a5
    80003d6c:	0007b503          	ld	a0,0(a5)
    80003d70:	ffffe097          	auipc	ra,0xffffe
    80003d74:	dfc080e7          	jalr	-516(ra) # 80001b6c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003d78:	0014849b          	addiw	s1,s1,1
    80003d7c:	0b24d063          	bge	s1,s2,80003e1c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80003d80:	00149793          	slli	a5,s1,0x1
    80003d84:	009787b3          	add	a5,a5,s1
    80003d88:	00379793          	slli	a5,a5,0x3
    80003d8c:	00fa07b3          	add	a5,s4,a5
    80003d90:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003d94:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80003d98:	00006717          	auipc	a4,0x6
    80003d9c:	49873703          	ld	a4,1176(a4) # 8000a230 <_ZL10waitForAll>
    80003da0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80003da4:	02905863          	blez	s1,80003dd4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80003da8:	02800513          	li	a0,40
    80003dac:	ffffe097          	auipc	ra,0xffffe
    80003db0:	c40080e7          	jalr	-960(ra) # 800019ec <_Znwm>
    80003db4:	00050c93          	mv	s9,a0
    80003db8:	00149c13          	slli	s8,s1,0x1
    80003dbc:	009c0c33          	add	s8,s8,s1
    80003dc0:	003c1c13          	slli	s8,s8,0x3
    80003dc4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80003dc8:	ffffe097          	auipc	ra,0xffffe
    80003dcc:	d74080e7          	jalr	-652(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80003dd0:	f79ff06f          	j	80003d48 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80003dd4:	02800513          	li	a0,40
    80003dd8:	ffffe097          	auipc	ra,0xffffe
    80003ddc:	c14080e7          	jalr	-1004(ra) # 800019ec <_Znwm>
    80003de0:	00050c93          	mv	s9,a0
    80003de4:	00149c13          	slli	s8,s1,0x1
    80003de8:	009c0c33          	add	s8,s8,s1
    80003dec:	003c1c13          	slli	s8,s8,0x3
    80003df0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80003df4:	ffffe097          	auipc	ra,0xffffe
    80003df8:	d48080e7          	jalr	-696(ra) # 80001b3c <_ZN6ThreadC1Ev>
    80003dfc:	00006797          	auipc	a5,0x6
    80003e00:	2e478793          	addi	a5,a5,740 # 8000a0e0 <_ZTV16ProducerKeyboard+0x10>
    80003e04:	00fcb023          	sd	a5,0(s9)
    80003e08:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80003e0c:	00349793          	slli	a5,s1,0x3
    80003e10:	00f987b3          	add	a5,s3,a5
    80003e14:	0197b023          	sd	s9,0(a5)
    80003e18:	f4dff06f          	j	80003d64 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80003e1c:	ffffe097          	auipc	ra,0xffffe
    80003e20:	da4080e7          	jalr	-604(ra) # 80001bc0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003e24:	00000493          	li	s1,0
    80003e28:	00994e63          	blt	s2,s1,80003e44 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80003e2c:	00006517          	auipc	a0,0x6
    80003e30:	40453503          	ld	a0,1028(a0) # 8000a230 <_ZL10waitForAll>
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	dec080e7          	jalr	-532(ra) # 80001c20 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003e3c:	0014849b          	addiw	s1,s1,1
    80003e40:	fe9ff06f          	j	80003e28 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80003e44:	00000493          	li	s1,0
    80003e48:	0080006f          	j	80003e50 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80003e4c:	0014849b          	addiw	s1,s1,1
    80003e50:	0324d263          	bge	s1,s2,80003e74 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80003e54:	00349793          	slli	a5,s1,0x3
    80003e58:	00f987b3          	add	a5,s3,a5
    80003e5c:	0007b503          	ld	a0,0(a5)
    80003e60:	fe0506e3          	beqz	a0,80003e4c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80003e64:	00053783          	ld	a5,0(a0)
    80003e68:	0087b783          	ld	a5,8(a5)
    80003e6c:	000780e7          	jalr	a5
    80003e70:	fddff06f          	j	80003e4c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80003e74:	000b0a63          	beqz	s6,80003e88 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80003e78:	000b3783          	ld	a5,0(s6)
    80003e7c:	0087b783          	ld	a5,8(a5)
    80003e80:	000b0513          	mv	a0,s6
    80003e84:	000780e7          	jalr	a5
    delete waitForAll;
    80003e88:	00006517          	auipc	a0,0x6
    80003e8c:	3a853503          	ld	a0,936(a0) # 8000a230 <_ZL10waitForAll>
    80003e90:	00050863          	beqz	a0,80003ea0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80003e94:	00053783          	ld	a5,0(a0)
    80003e98:	0087b783          	ld	a5,8(a5)
    80003e9c:	000780e7          	jalr	a5
    delete buffer;
    80003ea0:	000a8e63          	beqz	s5,80003ebc <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80003ea4:	000a8513          	mv	a0,s5
    80003ea8:	00001097          	auipc	ra,0x1
    80003eac:	8a8080e7          	jalr	-1880(ra) # 80004750 <_ZN9BufferCPPD1Ev>
    80003eb0:	000a8513          	mv	a0,s5
    80003eb4:	ffffe097          	auipc	ra,0xffffe
    80003eb8:	b60080e7          	jalr	-1184(ra) # 80001a14 <_ZdlPv>
    80003ebc:	000b8113          	mv	sp,s7

}
    80003ec0:	f8040113          	addi	sp,s0,-128
    80003ec4:	07813083          	ld	ra,120(sp)
    80003ec8:	07013403          	ld	s0,112(sp)
    80003ecc:	06813483          	ld	s1,104(sp)
    80003ed0:	06013903          	ld	s2,96(sp)
    80003ed4:	05813983          	ld	s3,88(sp)
    80003ed8:	05013a03          	ld	s4,80(sp)
    80003edc:	04813a83          	ld	s5,72(sp)
    80003ee0:	04013b03          	ld	s6,64(sp)
    80003ee4:	03813b83          	ld	s7,56(sp)
    80003ee8:	03013c03          	ld	s8,48(sp)
    80003eec:	02813c83          	ld	s9,40(sp)
    80003ef0:	08010113          	addi	sp,sp,128
    80003ef4:	00008067          	ret
    80003ef8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003efc:	000a8513          	mv	a0,s5
    80003f00:	ffffe097          	auipc	ra,0xffffe
    80003f04:	b14080e7          	jalr	-1260(ra) # 80001a14 <_ZdlPv>
    80003f08:	00048513          	mv	a0,s1
    80003f0c:	00007097          	auipc	ra,0x7
    80003f10:	40c080e7          	jalr	1036(ra) # 8000b318 <_Unwind_Resume>
    80003f14:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80003f18:	00048513          	mv	a0,s1
    80003f1c:	ffffe097          	auipc	ra,0xffffe
    80003f20:	af8080e7          	jalr	-1288(ra) # 80001a14 <_ZdlPv>
    80003f24:	00090513          	mv	a0,s2
    80003f28:	00007097          	auipc	ra,0x7
    80003f2c:	3f0080e7          	jalr	1008(ra) # 8000b318 <_Unwind_Resume>
    80003f30:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80003f34:	000b0513          	mv	a0,s6
    80003f38:	ffffe097          	auipc	ra,0xffffe
    80003f3c:	adc080e7          	jalr	-1316(ra) # 80001a14 <_ZdlPv>
    80003f40:	00048513          	mv	a0,s1
    80003f44:	00007097          	auipc	ra,0x7
    80003f48:	3d4080e7          	jalr	980(ra) # 8000b318 <_Unwind_Resume>
    80003f4c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80003f50:	000c8513          	mv	a0,s9
    80003f54:	ffffe097          	auipc	ra,0xffffe
    80003f58:	ac0080e7          	jalr	-1344(ra) # 80001a14 <_ZdlPv>
    80003f5c:	00048513          	mv	a0,s1
    80003f60:	00007097          	auipc	ra,0x7
    80003f64:	3b8080e7          	jalr	952(ra) # 8000b318 <_Unwind_Resume>
    80003f68:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80003f6c:	000c8513          	mv	a0,s9
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	aa4080e7          	jalr	-1372(ra) # 80001a14 <_ZdlPv>
    80003f78:	00048513          	mv	a0,s1
    80003f7c:	00007097          	auipc	ra,0x7
    80003f80:	39c080e7          	jalr	924(ra) # 8000b318 <_Unwind_Resume>

0000000080003f84 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80003f84:	ff010113          	addi	sp,sp,-16
    80003f88:	00113423          	sd	ra,8(sp)
    80003f8c:	00813023          	sd	s0,0(sp)
    80003f90:	01010413          	addi	s0,sp,16
    80003f94:	00006797          	auipc	a5,0x6
    80003f98:	19c78793          	addi	a5,a5,412 # 8000a130 <_ZTV12ConsumerSync+0x10>
    80003f9c:	00f53023          	sd	a5,0(a0)
    80003fa0:	ffffe097          	auipc	ra,0xffffe
    80003fa4:	9a0080e7          	jalr	-1632(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003fa8:	00813083          	ld	ra,8(sp)
    80003fac:	00013403          	ld	s0,0(sp)
    80003fb0:	01010113          	addi	sp,sp,16
    80003fb4:	00008067          	ret

0000000080003fb8 <_ZN12ConsumerSyncD0Ev>:
    80003fb8:	fe010113          	addi	sp,sp,-32
    80003fbc:	00113c23          	sd	ra,24(sp)
    80003fc0:	00813823          	sd	s0,16(sp)
    80003fc4:	00913423          	sd	s1,8(sp)
    80003fc8:	02010413          	addi	s0,sp,32
    80003fcc:	00050493          	mv	s1,a0
    80003fd0:	00006797          	auipc	a5,0x6
    80003fd4:	16078793          	addi	a5,a5,352 # 8000a130 <_ZTV12ConsumerSync+0x10>
    80003fd8:	00f53023          	sd	a5,0(a0)
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	964080e7          	jalr	-1692(ra) # 80001940 <_ZN6ThreadD1Ev>
    80003fe4:	00048513          	mv	a0,s1
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	a2c080e7          	jalr	-1492(ra) # 80001a14 <_ZdlPv>
    80003ff0:	01813083          	ld	ra,24(sp)
    80003ff4:	01013403          	ld	s0,16(sp)
    80003ff8:	00813483          	ld	s1,8(sp)
    80003ffc:	02010113          	addi	sp,sp,32
    80004000:	00008067          	ret

0000000080004004 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004004:	ff010113          	addi	sp,sp,-16
    80004008:	00113423          	sd	ra,8(sp)
    8000400c:	00813023          	sd	s0,0(sp)
    80004010:	01010413          	addi	s0,sp,16
    80004014:	00006797          	auipc	a5,0x6
    80004018:	0f478793          	addi	a5,a5,244 # 8000a108 <_ZTV12ProducerSync+0x10>
    8000401c:	00f53023          	sd	a5,0(a0)
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	920080e7          	jalr	-1760(ra) # 80001940 <_ZN6ThreadD1Ev>
    80004028:	00813083          	ld	ra,8(sp)
    8000402c:	00013403          	ld	s0,0(sp)
    80004030:	01010113          	addi	sp,sp,16
    80004034:	00008067          	ret

0000000080004038 <_ZN12ProducerSyncD0Ev>:
    80004038:	fe010113          	addi	sp,sp,-32
    8000403c:	00113c23          	sd	ra,24(sp)
    80004040:	00813823          	sd	s0,16(sp)
    80004044:	00913423          	sd	s1,8(sp)
    80004048:	02010413          	addi	s0,sp,32
    8000404c:	00050493          	mv	s1,a0
    80004050:	00006797          	auipc	a5,0x6
    80004054:	0b878793          	addi	a5,a5,184 # 8000a108 <_ZTV12ProducerSync+0x10>
    80004058:	00f53023          	sd	a5,0(a0)
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	8e4080e7          	jalr	-1820(ra) # 80001940 <_ZN6ThreadD1Ev>
    80004064:	00048513          	mv	a0,s1
    80004068:	ffffe097          	auipc	ra,0xffffe
    8000406c:	9ac080e7          	jalr	-1620(ra) # 80001a14 <_ZdlPv>
    80004070:	01813083          	ld	ra,24(sp)
    80004074:	01013403          	ld	s0,16(sp)
    80004078:	00813483          	ld	s1,8(sp)
    8000407c:	02010113          	addi	sp,sp,32
    80004080:	00008067          	ret

0000000080004084 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004084:	ff010113          	addi	sp,sp,-16
    80004088:	00113423          	sd	ra,8(sp)
    8000408c:	00813023          	sd	s0,0(sp)
    80004090:	01010413          	addi	s0,sp,16
    80004094:	00006797          	auipc	a5,0x6
    80004098:	04c78793          	addi	a5,a5,76 # 8000a0e0 <_ZTV16ProducerKeyboard+0x10>
    8000409c:	00f53023          	sd	a5,0(a0)
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	8a0080e7          	jalr	-1888(ra) # 80001940 <_ZN6ThreadD1Ev>
    800040a8:	00813083          	ld	ra,8(sp)
    800040ac:	00013403          	ld	s0,0(sp)
    800040b0:	01010113          	addi	sp,sp,16
    800040b4:	00008067          	ret

00000000800040b8 <_ZN16ProducerKeyboardD0Ev>:
    800040b8:	fe010113          	addi	sp,sp,-32
    800040bc:	00113c23          	sd	ra,24(sp)
    800040c0:	00813823          	sd	s0,16(sp)
    800040c4:	00913423          	sd	s1,8(sp)
    800040c8:	02010413          	addi	s0,sp,32
    800040cc:	00050493          	mv	s1,a0
    800040d0:	00006797          	auipc	a5,0x6
    800040d4:	01078793          	addi	a5,a5,16 # 8000a0e0 <_ZTV16ProducerKeyboard+0x10>
    800040d8:	00f53023          	sd	a5,0(a0)
    800040dc:	ffffe097          	auipc	ra,0xffffe
    800040e0:	864080e7          	jalr	-1948(ra) # 80001940 <_ZN6ThreadD1Ev>
    800040e4:	00048513          	mv	a0,s1
    800040e8:	ffffe097          	auipc	ra,0xffffe
    800040ec:	92c080e7          	jalr	-1748(ra) # 80001a14 <_ZdlPv>
    800040f0:	01813083          	ld	ra,24(sp)
    800040f4:	01013403          	ld	s0,16(sp)
    800040f8:	00813483          	ld	s1,8(sp)
    800040fc:	02010113          	addi	sp,sp,32
    80004100:	00008067          	ret

0000000080004104 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004104:	ff010113          	addi	sp,sp,-16
    80004108:	00113423          	sd	ra,8(sp)
    8000410c:	00813023          	sd	s0,0(sp)
    80004110:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004114:	02053583          	ld	a1,32(a0)
    80004118:	fffff097          	auipc	ra,0xfffff
    8000411c:	7e4080e7          	jalr	2020(ra) # 800038fc <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004120:	00813083          	ld	ra,8(sp)
    80004124:	00013403          	ld	s0,0(sp)
    80004128:	01010113          	addi	sp,sp,16
    8000412c:	00008067          	ret

0000000080004130 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004130:	ff010113          	addi	sp,sp,-16
    80004134:	00113423          	sd	ra,8(sp)
    80004138:	00813023          	sd	s0,0(sp)
    8000413c:	01010413          	addi	s0,sp,16
        producer(td);
    80004140:	02053583          	ld	a1,32(a0)
    80004144:	00000097          	auipc	ra,0x0
    80004148:	878080e7          	jalr	-1928(ra) # 800039bc <_ZN12ProducerSync8producerEPv>
    }
    8000414c:	00813083          	ld	ra,8(sp)
    80004150:	00013403          	ld	s0,0(sp)
    80004154:	01010113          	addi	sp,sp,16
    80004158:	00008067          	ret

000000008000415c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000415c:	ff010113          	addi	sp,sp,-16
    80004160:	00113423          	sd	ra,8(sp)
    80004164:	00813023          	sd	s0,0(sp)
    80004168:	01010413          	addi	s0,sp,16
        consumer(td);
    8000416c:	02053583          	ld	a1,32(a0)
    80004170:	00000097          	auipc	ra,0x0
    80004174:	8e0080e7          	jalr	-1824(ra) # 80003a50 <_ZN12ConsumerSync8consumerEPv>
    }
    80004178:	00813083          	ld	ra,8(sp)
    8000417c:	00013403          	ld	s0,0(sp)
    80004180:	01010113          	addi	sp,sp,16
    80004184:	00008067          	ret

0000000080004188 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004188:	fe010113          	addi	sp,sp,-32
    8000418c:	00113c23          	sd	ra,24(sp)
    80004190:	00813823          	sd	s0,16(sp)
    80004194:	00913423          	sd	s1,8(sp)
    80004198:	02010413          	addi	s0,sp,32
    8000419c:	00050493          	mv	s1,a0
    LOCK();
    800041a0:	00100613          	li	a2,1
    800041a4:	00000593          	li	a1,0
    800041a8:	00006517          	auipc	a0,0x6
    800041ac:	09050513          	addi	a0,a0,144 # 8000a238 <lockPrint>
    800041b0:	ffffd097          	auipc	ra,0xffffd
    800041b4:	f94080e7          	jalr	-108(ra) # 80001144 <copy_and_swap>
    800041b8:	00050863          	beqz	a0,800041c8 <_Z11printStringPKc+0x40>
    800041bc:	ffffd097          	auipc	ra,0xffffd
    800041c0:	134080e7          	jalr	308(ra) # 800012f0 <_Z15thread_dispatchv>
    800041c4:	fddff06f          	j	800041a0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800041c8:	0004c503          	lbu	a0,0(s1)
    800041cc:	00050a63          	beqz	a0,800041e0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800041d0:	ffffd097          	auipc	ra,0xffffd
    800041d4:	224080e7          	jalr	548(ra) # 800013f4 <_Z4putcc>
        string++;
    800041d8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800041dc:	fedff06f          	j	800041c8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800041e0:	00000613          	li	a2,0
    800041e4:	00100593          	li	a1,1
    800041e8:	00006517          	auipc	a0,0x6
    800041ec:	05050513          	addi	a0,a0,80 # 8000a238 <lockPrint>
    800041f0:	ffffd097          	auipc	ra,0xffffd
    800041f4:	f54080e7          	jalr	-172(ra) # 80001144 <copy_and_swap>
    800041f8:	fe0514e3          	bnez	a0,800041e0 <_Z11printStringPKc+0x58>
}
    800041fc:	01813083          	ld	ra,24(sp)
    80004200:	01013403          	ld	s0,16(sp)
    80004204:	00813483          	ld	s1,8(sp)
    80004208:	02010113          	addi	sp,sp,32
    8000420c:	00008067          	ret

0000000080004210 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004210:	fd010113          	addi	sp,sp,-48
    80004214:	02113423          	sd	ra,40(sp)
    80004218:	02813023          	sd	s0,32(sp)
    8000421c:	00913c23          	sd	s1,24(sp)
    80004220:	01213823          	sd	s2,16(sp)
    80004224:	01313423          	sd	s3,8(sp)
    80004228:	01413023          	sd	s4,0(sp)
    8000422c:	03010413          	addi	s0,sp,48
    80004230:	00050993          	mv	s3,a0
    80004234:	00058a13          	mv	s4,a1
    LOCK();
    80004238:	00100613          	li	a2,1
    8000423c:	00000593          	li	a1,0
    80004240:	00006517          	auipc	a0,0x6
    80004244:	ff850513          	addi	a0,a0,-8 # 8000a238 <lockPrint>
    80004248:	ffffd097          	auipc	ra,0xffffd
    8000424c:	efc080e7          	jalr	-260(ra) # 80001144 <copy_and_swap>
    80004250:	00050863          	beqz	a0,80004260 <_Z9getStringPci+0x50>
    80004254:	ffffd097          	auipc	ra,0xffffd
    80004258:	09c080e7          	jalr	156(ra) # 800012f0 <_Z15thread_dispatchv>
    8000425c:	fddff06f          	j	80004238 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004260:	00000913          	li	s2,0
    80004264:	00090493          	mv	s1,s2
    80004268:	0019091b          	addiw	s2,s2,1
    8000426c:	03495a63          	bge	s2,s4,800042a0 <_Z9getStringPci+0x90>
        cc = getc();
    80004270:	ffffd097          	auipc	ra,0xffffd
    80004274:	15c080e7          	jalr	348(ra) # 800013cc <_Z4getcv>
        if(cc < 1)
    80004278:	02050463          	beqz	a0,800042a0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000427c:	009984b3          	add	s1,s3,s1
    80004280:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004284:	00a00793          	li	a5,10
    80004288:	00f50a63          	beq	a0,a5,8000429c <_Z9getStringPci+0x8c>
    8000428c:	00d00793          	li	a5,13
    80004290:	fcf51ae3          	bne	a0,a5,80004264 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004294:	00090493          	mv	s1,s2
    80004298:	0080006f          	j	800042a0 <_Z9getStringPci+0x90>
    8000429c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800042a0:	009984b3          	add	s1,s3,s1
    800042a4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800042a8:	00000613          	li	a2,0
    800042ac:	00100593          	li	a1,1
    800042b0:	00006517          	auipc	a0,0x6
    800042b4:	f8850513          	addi	a0,a0,-120 # 8000a238 <lockPrint>
    800042b8:	ffffd097          	auipc	ra,0xffffd
    800042bc:	e8c080e7          	jalr	-372(ra) # 80001144 <copy_and_swap>
    800042c0:	fe0514e3          	bnez	a0,800042a8 <_Z9getStringPci+0x98>
    return buf;
}
    800042c4:	00098513          	mv	a0,s3
    800042c8:	02813083          	ld	ra,40(sp)
    800042cc:	02013403          	ld	s0,32(sp)
    800042d0:	01813483          	ld	s1,24(sp)
    800042d4:	01013903          	ld	s2,16(sp)
    800042d8:	00813983          	ld	s3,8(sp)
    800042dc:	00013a03          	ld	s4,0(sp)
    800042e0:	03010113          	addi	sp,sp,48
    800042e4:	00008067          	ret

00000000800042e8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800042e8:	ff010113          	addi	sp,sp,-16
    800042ec:	00813423          	sd	s0,8(sp)
    800042f0:	01010413          	addi	s0,sp,16
    800042f4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800042f8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800042fc:	0006c603          	lbu	a2,0(a3)
    80004300:	fd06071b          	addiw	a4,a2,-48
    80004304:	0ff77713          	andi	a4,a4,255
    80004308:	00900793          	li	a5,9
    8000430c:	02e7e063          	bltu	a5,a4,8000432c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004310:	0025179b          	slliw	a5,a0,0x2
    80004314:	00a787bb          	addw	a5,a5,a0
    80004318:	0017979b          	slliw	a5,a5,0x1
    8000431c:	00168693          	addi	a3,a3,1
    80004320:	00c787bb          	addw	a5,a5,a2
    80004324:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004328:	fd5ff06f          	j	800042fc <_Z11stringToIntPKc+0x14>
    return n;
}
    8000432c:	00813403          	ld	s0,8(sp)
    80004330:	01010113          	addi	sp,sp,16
    80004334:	00008067          	ret

0000000080004338 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004338:	fc010113          	addi	sp,sp,-64
    8000433c:	02113c23          	sd	ra,56(sp)
    80004340:	02813823          	sd	s0,48(sp)
    80004344:	02913423          	sd	s1,40(sp)
    80004348:	03213023          	sd	s2,32(sp)
    8000434c:	01313c23          	sd	s3,24(sp)
    80004350:	04010413          	addi	s0,sp,64
    80004354:	00050493          	mv	s1,a0
    80004358:	00058913          	mv	s2,a1
    8000435c:	00060993          	mv	s3,a2
    LOCK();
    80004360:	00100613          	li	a2,1
    80004364:	00000593          	li	a1,0
    80004368:	00006517          	auipc	a0,0x6
    8000436c:	ed050513          	addi	a0,a0,-304 # 8000a238 <lockPrint>
    80004370:	ffffd097          	auipc	ra,0xffffd
    80004374:	dd4080e7          	jalr	-556(ra) # 80001144 <copy_and_swap>
    80004378:	00050863          	beqz	a0,80004388 <_Z8printIntiii+0x50>
    8000437c:	ffffd097          	auipc	ra,0xffffd
    80004380:	f74080e7          	jalr	-140(ra) # 800012f0 <_Z15thread_dispatchv>
    80004384:	fddff06f          	j	80004360 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004388:	00098463          	beqz	s3,80004390 <_Z8printIntiii+0x58>
    8000438c:	0804c463          	bltz	s1,80004414 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004390:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004394:	00000593          	li	a1,0
    }

    i = 0;
    80004398:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000439c:	0009079b          	sext.w	a5,s2
    800043a0:	0325773b          	remuw	a4,a0,s2
    800043a4:	00048613          	mv	a2,s1
    800043a8:	0014849b          	addiw	s1,s1,1
    800043ac:	02071693          	slli	a3,a4,0x20
    800043b0:	0206d693          	srli	a3,a3,0x20
    800043b4:	00006717          	auipc	a4,0x6
    800043b8:	d9470713          	addi	a4,a4,-620 # 8000a148 <digits>
    800043bc:	00d70733          	add	a4,a4,a3
    800043c0:	00074683          	lbu	a3,0(a4)
    800043c4:	fd040713          	addi	a4,s0,-48
    800043c8:	00c70733          	add	a4,a4,a2
    800043cc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800043d0:	0005071b          	sext.w	a4,a0
    800043d4:	0325553b          	divuw	a0,a0,s2
    800043d8:	fcf772e3          	bgeu	a4,a5,8000439c <_Z8printIntiii+0x64>
    if(neg)
    800043dc:	00058c63          	beqz	a1,800043f4 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800043e0:	fd040793          	addi	a5,s0,-48
    800043e4:	009784b3          	add	s1,a5,s1
    800043e8:	02d00793          	li	a5,45
    800043ec:	fef48823          	sb	a5,-16(s1)
    800043f0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800043f4:	fff4849b          	addiw	s1,s1,-1
    800043f8:	0204c463          	bltz	s1,80004420 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800043fc:	fd040793          	addi	a5,s0,-48
    80004400:	009787b3          	add	a5,a5,s1
    80004404:	ff07c503          	lbu	a0,-16(a5)
    80004408:	ffffd097          	auipc	ra,0xffffd
    8000440c:	fec080e7          	jalr	-20(ra) # 800013f4 <_Z4putcc>
    80004410:	fe5ff06f          	j	800043f4 <_Z8printIntiii+0xbc>
        x = -xx;
    80004414:	4090053b          	negw	a0,s1
        neg = 1;
    80004418:	00100593          	li	a1,1
        x = -xx;
    8000441c:	f7dff06f          	j	80004398 <_Z8printIntiii+0x60>

    UNLOCK();
    80004420:	00000613          	li	a2,0
    80004424:	00100593          	li	a1,1
    80004428:	00006517          	auipc	a0,0x6
    8000442c:	e1050513          	addi	a0,a0,-496 # 8000a238 <lockPrint>
    80004430:	ffffd097          	auipc	ra,0xffffd
    80004434:	d14080e7          	jalr	-748(ra) # 80001144 <copy_and_swap>
    80004438:	fe0514e3          	bnez	a0,80004420 <_Z8printIntiii+0xe8>
    8000443c:	03813083          	ld	ra,56(sp)
    80004440:	03013403          	ld	s0,48(sp)
    80004444:	02813483          	ld	s1,40(sp)
    80004448:	02013903          	ld	s2,32(sp)
    8000444c:	01813983          	ld	s3,24(sp)
    80004450:	04010113          	addi	sp,sp,64
    80004454:	00008067          	ret

0000000080004458 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004458:	fd010113          	addi	sp,sp,-48
    8000445c:	02113423          	sd	ra,40(sp)
    80004460:	02813023          	sd	s0,32(sp)
    80004464:	00913c23          	sd	s1,24(sp)
    80004468:	01213823          	sd	s2,16(sp)
    8000446c:	01313423          	sd	s3,8(sp)
    80004470:	03010413          	addi	s0,sp,48
    80004474:	00050493          	mv	s1,a0
    80004478:	00058913          	mv	s2,a1
    8000447c:	0015879b          	addiw	a5,a1,1
    80004480:	0007851b          	sext.w	a0,a5
    80004484:	00f4a023          	sw	a5,0(s1)
    80004488:	0004a823          	sw	zero,16(s1)
    8000448c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004490:	00251513          	slli	a0,a0,0x2
    80004494:	ffffd097          	auipc	ra,0xffffd
    80004498:	cd0080e7          	jalr	-816(ra) # 80001164 <_Z9mem_allocm>
    8000449c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800044a0:	01000513          	li	a0,16
    800044a4:	ffffd097          	auipc	ra,0xffffd
    800044a8:	548080e7          	jalr	1352(ra) # 800019ec <_Znwm>
    800044ac:	00050993          	mv	s3,a0
    800044b0:	00000593          	li	a1,0
    800044b4:	ffffd097          	auipc	ra,0xffffd
    800044b8:	734080e7          	jalr	1844(ra) # 80001be8 <_ZN9SemaphoreC1Ej>
    800044bc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800044c0:	01000513          	li	a0,16
    800044c4:	ffffd097          	auipc	ra,0xffffd
    800044c8:	528080e7          	jalr	1320(ra) # 800019ec <_Znwm>
    800044cc:	00050993          	mv	s3,a0
    800044d0:	00090593          	mv	a1,s2
    800044d4:	ffffd097          	auipc	ra,0xffffd
    800044d8:	714080e7          	jalr	1812(ra) # 80001be8 <_ZN9SemaphoreC1Ej>
    800044dc:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800044e0:	01000513          	li	a0,16
    800044e4:	ffffd097          	auipc	ra,0xffffd
    800044e8:	508080e7          	jalr	1288(ra) # 800019ec <_Znwm>
    800044ec:	00050913          	mv	s2,a0
    800044f0:	00100593          	li	a1,1
    800044f4:	ffffd097          	auipc	ra,0xffffd
    800044f8:	6f4080e7          	jalr	1780(ra) # 80001be8 <_ZN9SemaphoreC1Ej>
    800044fc:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004500:	01000513          	li	a0,16
    80004504:	ffffd097          	auipc	ra,0xffffd
    80004508:	4e8080e7          	jalr	1256(ra) # 800019ec <_Znwm>
    8000450c:	00050913          	mv	s2,a0
    80004510:	00100593          	li	a1,1
    80004514:	ffffd097          	auipc	ra,0xffffd
    80004518:	6d4080e7          	jalr	1748(ra) # 80001be8 <_ZN9SemaphoreC1Ej>
    8000451c:	0324b823          	sd	s2,48(s1)
}
    80004520:	02813083          	ld	ra,40(sp)
    80004524:	02013403          	ld	s0,32(sp)
    80004528:	01813483          	ld	s1,24(sp)
    8000452c:	01013903          	ld	s2,16(sp)
    80004530:	00813983          	ld	s3,8(sp)
    80004534:	03010113          	addi	sp,sp,48
    80004538:	00008067          	ret
    8000453c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004540:	00098513          	mv	a0,s3
    80004544:	ffffd097          	auipc	ra,0xffffd
    80004548:	4d0080e7          	jalr	1232(ra) # 80001a14 <_ZdlPv>
    8000454c:	00048513          	mv	a0,s1
    80004550:	00007097          	auipc	ra,0x7
    80004554:	dc8080e7          	jalr	-568(ra) # 8000b318 <_Unwind_Resume>
    80004558:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000455c:	00098513          	mv	a0,s3
    80004560:	ffffd097          	auipc	ra,0xffffd
    80004564:	4b4080e7          	jalr	1204(ra) # 80001a14 <_ZdlPv>
    80004568:	00048513          	mv	a0,s1
    8000456c:	00007097          	auipc	ra,0x7
    80004570:	dac080e7          	jalr	-596(ra) # 8000b318 <_Unwind_Resume>
    80004574:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004578:	00090513          	mv	a0,s2
    8000457c:	ffffd097          	auipc	ra,0xffffd
    80004580:	498080e7          	jalr	1176(ra) # 80001a14 <_ZdlPv>
    80004584:	00048513          	mv	a0,s1
    80004588:	00007097          	auipc	ra,0x7
    8000458c:	d90080e7          	jalr	-624(ra) # 8000b318 <_Unwind_Resume>
    80004590:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004594:	00090513          	mv	a0,s2
    80004598:	ffffd097          	auipc	ra,0xffffd
    8000459c:	47c080e7          	jalr	1148(ra) # 80001a14 <_ZdlPv>
    800045a0:	00048513          	mv	a0,s1
    800045a4:	00007097          	auipc	ra,0x7
    800045a8:	d74080e7          	jalr	-652(ra) # 8000b318 <_Unwind_Resume>

00000000800045ac <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800045ac:	fe010113          	addi	sp,sp,-32
    800045b0:	00113c23          	sd	ra,24(sp)
    800045b4:	00813823          	sd	s0,16(sp)
    800045b8:	00913423          	sd	s1,8(sp)
    800045bc:	01213023          	sd	s2,0(sp)
    800045c0:	02010413          	addi	s0,sp,32
    800045c4:	00050493          	mv	s1,a0
    800045c8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800045cc:	01853503          	ld	a0,24(a0)
    800045d0:	ffffd097          	auipc	ra,0xffffd
    800045d4:	650080e7          	jalr	1616(ra) # 80001c20 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800045d8:	0304b503          	ld	a0,48(s1)
    800045dc:	ffffd097          	auipc	ra,0xffffd
    800045e0:	644080e7          	jalr	1604(ra) # 80001c20 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800045e4:	0084b783          	ld	a5,8(s1)
    800045e8:	0144a703          	lw	a4,20(s1)
    800045ec:	00271713          	slli	a4,a4,0x2
    800045f0:	00e787b3          	add	a5,a5,a4
    800045f4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800045f8:	0144a783          	lw	a5,20(s1)
    800045fc:	0017879b          	addiw	a5,a5,1
    80004600:	0004a703          	lw	a4,0(s1)
    80004604:	02e7e7bb          	remw	a5,a5,a4
    80004608:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000460c:	0304b503          	ld	a0,48(s1)
    80004610:	ffffd097          	auipc	ra,0xffffd
    80004614:	63c080e7          	jalr	1596(ra) # 80001c4c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004618:	0204b503          	ld	a0,32(s1)
    8000461c:	ffffd097          	auipc	ra,0xffffd
    80004620:	630080e7          	jalr	1584(ra) # 80001c4c <_ZN9Semaphore6signalEv>

}
    80004624:	01813083          	ld	ra,24(sp)
    80004628:	01013403          	ld	s0,16(sp)
    8000462c:	00813483          	ld	s1,8(sp)
    80004630:	00013903          	ld	s2,0(sp)
    80004634:	02010113          	addi	sp,sp,32
    80004638:	00008067          	ret

000000008000463c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000463c:	fe010113          	addi	sp,sp,-32
    80004640:	00113c23          	sd	ra,24(sp)
    80004644:	00813823          	sd	s0,16(sp)
    80004648:	00913423          	sd	s1,8(sp)
    8000464c:	01213023          	sd	s2,0(sp)
    80004650:	02010413          	addi	s0,sp,32
    80004654:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004658:	02053503          	ld	a0,32(a0)
    8000465c:	ffffd097          	auipc	ra,0xffffd
    80004660:	5c4080e7          	jalr	1476(ra) # 80001c20 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004664:	0284b503          	ld	a0,40(s1)
    80004668:	ffffd097          	auipc	ra,0xffffd
    8000466c:	5b8080e7          	jalr	1464(ra) # 80001c20 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004670:	0084b703          	ld	a4,8(s1)
    80004674:	0104a783          	lw	a5,16(s1)
    80004678:	00279693          	slli	a3,a5,0x2
    8000467c:	00d70733          	add	a4,a4,a3
    80004680:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004684:	0017879b          	addiw	a5,a5,1
    80004688:	0004a703          	lw	a4,0(s1)
    8000468c:	02e7e7bb          	remw	a5,a5,a4
    80004690:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004694:	0284b503          	ld	a0,40(s1)
    80004698:	ffffd097          	auipc	ra,0xffffd
    8000469c:	5b4080e7          	jalr	1460(ra) # 80001c4c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800046a0:	0184b503          	ld	a0,24(s1)
    800046a4:	ffffd097          	auipc	ra,0xffffd
    800046a8:	5a8080e7          	jalr	1448(ra) # 80001c4c <_ZN9Semaphore6signalEv>

    return ret;
}
    800046ac:	00090513          	mv	a0,s2
    800046b0:	01813083          	ld	ra,24(sp)
    800046b4:	01013403          	ld	s0,16(sp)
    800046b8:	00813483          	ld	s1,8(sp)
    800046bc:	00013903          	ld	s2,0(sp)
    800046c0:	02010113          	addi	sp,sp,32
    800046c4:	00008067          	ret

00000000800046c8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800046c8:	fe010113          	addi	sp,sp,-32
    800046cc:	00113c23          	sd	ra,24(sp)
    800046d0:	00813823          	sd	s0,16(sp)
    800046d4:	00913423          	sd	s1,8(sp)
    800046d8:	01213023          	sd	s2,0(sp)
    800046dc:	02010413          	addi	s0,sp,32
    800046e0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800046e4:	02853503          	ld	a0,40(a0)
    800046e8:	ffffd097          	auipc	ra,0xffffd
    800046ec:	538080e7          	jalr	1336(ra) # 80001c20 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800046f0:	0304b503          	ld	a0,48(s1)
    800046f4:	ffffd097          	auipc	ra,0xffffd
    800046f8:	52c080e7          	jalr	1324(ra) # 80001c20 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800046fc:	0144a783          	lw	a5,20(s1)
    80004700:	0104a903          	lw	s2,16(s1)
    80004704:	0327ce63          	blt	a5,s2,80004740 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004708:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000470c:	0304b503          	ld	a0,48(s1)
    80004710:	ffffd097          	auipc	ra,0xffffd
    80004714:	53c080e7          	jalr	1340(ra) # 80001c4c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004718:	0284b503          	ld	a0,40(s1)
    8000471c:	ffffd097          	auipc	ra,0xffffd
    80004720:	530080e7          	jalr	1328(ra) # 80001c4c <_ZN9Semaphore6signalEv>

    return ret;
}
    80004724:	00090513          	mv	a0,s2
    80004728:	01813083          	ld	ra,24(sp)
    8000472c:	01013403          	ld	s0,16(sp)
    80004730:	00813483          	ld	s1,8(sp)
    80004734:	00013903          	ld	s2,0(sp)
    80004738:	02010113          	addi	sp,sp,32
    8000473c:	00008067          	ret
        ret = cap - head + tail;
    80004740:	0004a703          	lw	a4,0(s1)
    80004744:	4127093b          	subw	s2,a4,s2
    80004748:	00f9093b          	addw	s2,s2,a5
    8000474c:	fc1ff06f          	j	8000470c <_ZN9BufferCPP6getCntEv+0x44>

0000000080004750 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004750:	fe010113          	addi	sp,sp,-32
    80004754:	00113c23          	sd	ra,24(sp)
    80004758:	00813823          	sd	s0,16(sp)
    8000475c:	00913423          	sd	s1,8(sp)
    80004760:	02010413          	addi	s0,sp,32
    80004764:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004768:	00a00513          	li	a0,10
    8000476c:	ffffd097          	auipc	ra,0xffffd
    80004770:	534080e7          	jalr	1332(ra) # 80001ca0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004774:	00004517          	auipc	a0,0x4
    80004778:	bac50513          	addi	a0,a0,-1108 # 80008320 <CONSOLE_STATUS+0x310>
    8000477c:	00000097          	auipc	ra,0x0
    80004780:	a0c080e7          	jalr	-1524(ra) # 80004188 <_Z11printStringPKc>
    while (getCnt()) {
    80004784:	00048513          	mv	a0,s1
    80004788:	00000097          	auipc	ra,0x0
    8000478c:	f40080e7          	jalr	-192(ra) # 800046c8 <_ZN9BufferCPP6getCntEv>
    80004790:	02050c63          	beqz	a0,800047c8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004794:	0084b783          	ld	a5,8(s1)
    80004798:	0104a703          	lw	a4,16(s1)
    8000479c:	00271713          	slli	a4,a4,0x2
    800047a0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800047a4:	0007c503          	lbu	a0,0(a5)
    800047a8:	ffffd097          	auipc	ra,0xffffd
    800047ac:	4f8080e7          	jalr	1272(ra) # 80001ca0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800047b0:	0104a783          	lw	a5,16(s1)
    800047b4:	0017879b          	addiw	a5,a5,1
    800047b8:	0004a703          	lw	a4,0(s1)
    800047bc:	02e7e7bb          	remw	a5,a5,a4
    800047c0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800047c4:	fc1ff06f          	j	80004784 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800047c8:	02100513          	li	a0,33
    800047cc:	ffffd097          	auipc	ra,0xffffd
    800047d0:	4d4080e7          	jalr	1236(ra) # 80001ca0 <_ZN7Console4putcEc>
    Console::putc('\n');
    800047d4:	00a00513          	li	a0,10
    800047d8:	ffffd097          	auipc	ra,0xffffd
    800047dc:	4c8080e7          	jalr	1224(ra) # 80001ca0 <_ZN7Console4putcEc>
    mem_free(buffer);
    800047e0:	0084b503          	ld	a0,8(s1)
    800047e4:	ffffd097          	auipc	ra,0xffffd
    800047e8:	9c4080e7          	jalr	-1596(ra) # 800011a8 <_Z8mem_freePv>
    delete itemAvailable;
    800047ec:	0204b503          	ld	a0,32(s1)
    800047f0:	00050863          	beqz	a0,80004800 <_ZN9BufferCPPD1Ev+0xb0>
    800047f4:	00053783          	ld	a5,0(a0)
    800047f8:	0087b783          	ld	a5,8(a5)
    800047fc:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004800:	0184b503          	ld	a0,24(s1)
    80004804:	00050863          	beqz	a0,80004814 <_ZN9BufferCPPD1Ev+0xc4>
    80004808:	00053783          	ld	a5,0(a0)
    8000480c:	0087b783          	ld	a5,8(a5)
    80004810:	000780e7          	jalr	a5
    delete mutexTail;
    80004814:	0304b503          	ld	a0,48(s1)
    80004818:	00050863          	beqz	a0,80004828 <_ZN9BufferCPPD1Ev+0xd8>
    8000481c:	00053783          	ld	a5,0(a0)
    80004820:	0087b783          	ld	a5,8(a5)
    80004824:	000780e7          	jalr	a5
    delete mutexHead;
    80004828:	0284b503          	ld	a0,40(s1)
    8000482c:	00050863          	beqz	a0,8000483c <_ZN9BufferCPPD1Ev+0xec>
    80004830:	00053783          	ld	a5,0(a0)
    80004834:	0087b783          	ld	a5,8(a5)
    80004838:	000780e7          	jalr	a5
}
    8000483c:	01813083          	ld	ra,24(sp)
    80004840:	01013403          	ld	s0,16(sp)
    80004844:	00813483          	ld	s1,8(sp)
    80004848:	02010113          	addi	sp,sp,32
    8000484c:	00008067          	ret

0000000080004850 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80004850:	fe010113          	addi	sp,sp,-32
    80004854:	00113c23          	sd	ra,24(sp)
    80004858:	00813823          	sd	s0,16(sp)
    8000485c:	00913423          	sd	s1,8(sp)
    80004860:	01213023          	sd	s2,0(sp)
    80004864:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004868:	00004517          	auipc	a0,0x4
    8000486c:	ad050513          	addi	a0,a0,-1328 # 80008338 <CONSOLE_STATUS+0x328>
    80004870:	00000097          	auipc	ra,0x0
    80004874:	918080e7          	jalr	-1768(ra) # 80004188 <_Z11printStringPKc>
    int test = getc() - '0';
    80004878:	ffffd097          	auipc	ra,0xffffd
    8000487c:	b54080e7          	jalr	-1196(ra) # 800013cc <_Z4getcv>
    80004880:	00050913          	mv	s2,a0
    80004884:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80004888:	ffffd097          	auipc	ra,0xffffd
    8000488c:	b44080e7          	jalr	-1212(ra) # 800013cc <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80004890:	fcb9091b          	addiw	s2,s2,-53
    80004894:	00100793          	li	a5,1
    80004898:	0327f463          	bgeu	a5,s2,800048c0 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000489c:	00700793          	li	a5,7
    800048a0:	0e97e263          	bltu	a5,s1,80004984 <_Z8userMainv+0x134>
    800048a4:	00249493          	slli	s1,s1,0x2
    800048a8:	00004717          	auipc	a4,0x4
    800048ac:	ca870713          	addi	a4,a4,-856 # 80008550 <CONSOLE_STATUS+0x540>
    800048b0:	00e484b3          	add	s1,s1,a4
    800048b4:	0004a783          	lw	a5,0(s1)
    800048b8:	00e787b3          	add	a5,a5,a4
    800048bc:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800048c0:	00004517          	auipc	a0,0x4
    800048c4:	a9850513          	addi	a0,a0,-1384 # 80008358 <CONSOLE_STATUS+0x348>
    800048c8:	00000097          	auipc	ra,0x0
    800048cc:	8c0080e7          	jalr	-1856(ra) # 80004188 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800048d0:	01813083          	ld	ra,24(sp)
    800048d4:	01013403          	ld	s0,16(sp)
    800048d8:	00813483          	ld	s1,8(sp)
    800048dc:	00013903          	ld	s2,0(sp)
    800048e0:	02010113          	addi	sp,sp,32
    800048e4:	00008067          	ret
            Threads_C_API_test();
    800048e8:	fffff097          	auipc	ra,0xfffff
    800048ec:	f18080e7          	jalr	-232(ra) # 80003800 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800048f0:	00004517          	auipc	a0,0x4
    800048f4:	a9850513          	addi	a0,a0,-1384 # 80008388 <CONSOLE_STATUS+0x378>
    800048f8:	00000097          	auipc	ra,0x0
    800048fc:	890080e7          	jalr	-1904(ra) # 80004188 <_Z11printStringPKc>
            break;
    80004900:	fd1ff06f          	j	800048d0 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80004904:	ffffe097          	auipc	ra,0xffffe
    80004908:	560080e7          	jalr	1376(ra) # 80002e64 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000490c:	00004517          	auipc	a0,0x4
    80004910:	abc50513          	addi	a0,a0,-1348 # 800083c8 <CONSOLE_STATUS+0x3b8>
    80004914:	00000097          	auipc	ra,0x0
    80004918:	874080e7          	jalr	-1932(ra) # 80004188 <_Z11printStringPKc>
            break;
    8000491c:	fb5ff06f          	j	800048d0 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80004920:	ffffe097          	auipc	ra,0xffffe
    80004924:	d98080e7          	jalr	-616(ra) # 800026b8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004928:	00004517          	auipc	a0,0x4
    8000492c:	ae050513          	addi	a0,a0,-1312 # 80008408 <CONSOLE_STATUS+0x3f8>
    80004930:	00000097          	auipc	ra,0x0
    80004934:	858080e7          	jalr	-1960(ra) # 80004188 <_Z11printStringPKc>
            break;
    80004938:	f99ff06f          	j	800048d0 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    8000493c:	fffff097          	auipc	ra,0xfffff
    80004940:	208080e7          	jalr	520(ra) # 80003b44 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80004944:	00004517          	auipc	a0,0x4
    80004948:	b1450513          	addi	a0,a0,-1260 # 80008458 <CONSOLE_STATUS+0x448>
    8000494c:	00000097          	auipc	ra,0x0
    80004950:	83c080e7          	jalr	-1988(ra) # 80004188 <_Z11printStringPKc>
            break;
    80004954:	f7dff06f          	j	800048d0 <_Z8userMainv+0x80>
            System_Mode_test();
    80004958:	00000097          	auipc	ra,0x0
    8000495c:	52c080e7          	jalr	1324(ra) # 80004e84 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004960:	00004517          	auipc	a0,0x4
    80004964:	b5050513          	addi	a0,a0,-1200 # 800084b0 <CONSOLE_STATUS+0x4a0>
    80004968:	00000097          	auipc	ra,0x0
    8000496c:	820080e7          	jalr	-2016(ra) # 80004188 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80004970:	00004517          	auipc	a0,0x4
    80004974:	b6050513          	addi	a0,a0,-1184 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80004978:	00000097          	auipc	ra,0x0
    8000497c:	810080e7          	jalr	-2032(ra) # 80004188 <_Z11printStringPKc>
            break;
    80004980:	f51ff06f          	j	800048d0 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80004984:	00004517          	auipc	a0,0x4
    80004988:	ba450513          	addi	a0,a0,-1116 # 80008528 <CONSOLE_STATUS+0x518>
    8000498c:	fffff097          	auipc	ra,0xfffff
    80004990:	7fc080e7          	jalr	2044(ra) # 80004188 <_Z11printStringPKc>
    80004994:	f3dff06f          	j	800048d0 <_Z8userMainv+0x80>

0000000080004998 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004998:	fe010113          	addi	sp,sp,-32
    8000499c:	00113c23          	sd	ra,24(sp)
    800049a0:	00813823          	sd	s0,16(sp)
    800049a4:	00913423          	sd	s1,8(sp)
    800049a8:	01213023          	sd	s2,0(sp)
    800049ac:	02010413          	addi	s0,sp,32
    800049b0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800049b4:	00100793          	li	a5,1
    800049b8:	02a7f863          	bgeu	a5,a0,800049e8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800049bc:	00a00793          	li	a5,10
    800049c0:	02f577b3          	remu	a5,a0,a5
    800049c4:	02078e63          	beqz	a5,80004a00 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800049c8:	fff48513          	addi	a0,s1,-1
    800049cc:	00000097          	auipc	ra,0x0
    800049d0:	fcc080e7          	jalr	-52(ra) # 80004998 <_ZL9fibonaccim>
    800049d4:	00050913          	mv	s2,a0
    800049d8:	ffe48513          	addi	a0,s1,-2
    800049dc:	00000097          	auipc	ra,0x0
    800049e0:	fbc080e7          	jalr	-68(ra) # 80004998 <_ZL9fibonaccim>
    800049e4:	00a90533          	add	a0,s2,a0
}
    800049e8:	01813083          	ld	ra,24(sp)
    800049ec:	01013403          	ld	s0,16(sp)
    800049f0:	00813483          	ld	s1,8(sp)
    800049f4:	00013903          	ld	s2,0(sp)
    800049f8:	02010113          	addi	sp,sp,32
    800049fc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004a00:	ffffd097          	auipc	ra,0xffffd
    80004a04:	8f0080e7          	jalr	-1808(ra) # 800012f0 <_Z15thread_dispatchv>
    80004a08:	fc1ff06f          	j	800049c8 <_ZL9fibonaccim+0x30>

0000000080004a0c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004a0c:	fe010113          	addi	sp,sp,-32
    80004a10:	00113c23          	sd	ra,24(sp)
    80004a14:	00813823          	sd	s0,16(sp)
    80004a18:	00913423          	sd	s1,8(sp)
    80004a1c:	01213023          	sd	s2,0(sp)
    80004a20:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004a24:	00a00493          	li	s1,10
    80004a28:	0400006f          	j	80004a68 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a2c:	00004517          	auipc	a0,0x4
    80004a30:	84c50513          	addi	a0,a0,-1972 # 80008278 <CONSOLE_STATUS+0x268>
    80004a34:	fffff097          	auipc	ra,0xfffff
    80004a38:	754080e7          	jalr	1876(ra) # 80004188 <_Z11printStringPKc>
    80004a3c:	00000613          	li	a2,0
    80004a40:	00a00593          	li	a1,10
    80004a44:	00048513          	mv	a0,s1
    80004a48:	00000097          	auipc	ra,0x0
    80004a4c:	8f0080e7          	jalr	-1808(ra) # 80004338 <_Z8printIntiii>
    80004a50:	00004517          	auipc	a0,0x4
    80004a54:	a5850513          	addi	a0,a0,-1448 # 800084a8 <CONSOLE_STATUS+0x498>
    80004a58:	fffff097          	auipc	ra,0xfffff
    80004a5c:	730080e7          	jalr	1840(ra) # 80004188 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004a60:	0014849b          	addiw	s1,s1,1
    80004a64:	0ff4f493          	andi	s1,s1,255
    80004a68:	00c00793          	li	a5,12
    80004a6c:	fc97f0e3          	bgeu	a5,s1,80004a2c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004a70:	00004517          	auipc	a0,0x4
    80004a74:	81050513          	addi	a0,a0,-2032 # 80008280 <CONSOLE_STATUS+0x270>
    80004a78:	fffff097          	auipc	ra,0xfffff
    80004a7c:	710080e7          	jalr	1808(ra) # 80004188 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004a80:	00500313          	li	t1,5
    thread_dispatch();
    80004a84:	ffffd097          	auipc	ra,0xffffd
    80004a88:	86c080e7          	jalr	-1940(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004a8c:	01000513          	li	a0,16
    80004a90:	00000097          	auipc	ra,0x0
    80004a94:	f08080e7          	jalr	-248(ra) # 80004998 <_ZL9fibonaccim>
    80004a98:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004a9c:	00003517          	auipc	a0,0x3
    80004aa0:	7f450513          	addi	a0,a0,2036 # 80008290 <CONSOLE_STATUS+0x280>
    80004aa4:	fffff097          	auipc	ra,0xfffff
    80004aa8:	6e4080e7          	jalr	1764(ra) # 80004188 <_Z11printStringPKc>
    80004aac:	00000613          	li	a2,0
    80004ab0:	00a00593          	li	a1,10
    80004ab4:	0009051b          	sext.w	a0,s2
    80004ab8:	00000097          	auipc	ra,0x0
    80004abc:	880080e7          	jalr	-1920(ra) # 80004338 <_Z8printIntiii>
    80004ac0:	00004517          	auipc	a0,0x4
    80004ac4:	9e850513          	addi	a0,a0,-1560 # 800084a8 <CONSOLE_STATUS+0x498>
    80004ac8:	fffff097          	auipc	ra,0xfffff
    80004acc:	6c0080e7          	jalr	1728(ra) # 80004188 <_Z11printStringPKc>
    80004ad0:	0400006f          	j	80004b10 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004ad4:	00003517          	auipc	a0,0x3
    80004ad8:	7a450513          	addi	a0,a0,1956 # 80008278 <CONSOLE_STATUS+0x268>
    80004adc:	fffff097          	auipc	ra,0xfffff
    80004ae0:	6ac080e7          	jalr	1708(ra) # 80004188 <_Z11printStringPKc>
    80004ae4:	00000613          	li	a2,0
    80004ae8:	00a00593          	li	a1,10
    80004aec:	00048513          	mv	a0,s1
    80004af0:	00000097          	auipc	ra,0x0
    80004af4:	848080e7          	jalr	-1976(ra) # 80004338 <_Z8printIntiii>
    80004af8:	00004517          	auipc	a0,0x4
    80004afc:	9b050513          	addi	a0,a0,-1616 # 800084a8 <CONSOLE_STATUS+0x498>
    80004b00:	fffff097          	auipc	ra,0xfffff
    80004b04:	688080e7          	jalr	1672(ra) # 80004188 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004b08:	0014849b          	addiw	s1,s1,1
    80004b0c:	0ff4f493          	andi	s1,s1,255
    80004b10:	00f00793          	li	a5,15
    80004b14:	fc97f0e3          	bgeu	a5,s1,80004ad4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004b18:	00003517          	auipc	a0,0x3
    80004b1c:	78850513          	addi	a0,a0,1928 # 800082a0 <CONSOLE_STATUS+0x290>
    80004b20:	fffff097          	auipc	ra,0xfffff
    80004b24:	668080e7          	jalr	1640(ra) # 80004188 <_Z11printStringPKc>
    finishedD = true;
    80004b28:	00100793          	li	a5,1
    80004b2c:	00005717          	auipc	a4,0x5
    80004b30:	70f70a23          	sb	a5,1812(a4) # 8000a240 <_ZL9finishedD>
    thread_dispatch();
    80004b34:	ffffc097          	auipc	ra,0xffffc
    80004b38:	7bc080e7          	jalr	1980(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80004b3c:	01813083          	ld	ra,24(sp)
    80004b40:	01013403          	ld	s0,16(sp)
    80004b44:	00813483          	ld	s1,8(sp)
    80004b48:	00013903          	ld	s2,0(sp)
    80004b4c:	02010113          	addi	sp,sp,32
    80004b50:	00008067          	ret

0000000080004b54 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004b54:	fe010113          	addi	sp,sp,-32
    80004b58:	00113c23          	sd	ra,24(sp)
    80004b5c:	00813823          	sd	s0,16(sp)
    80004b60:	00913423          	sd	s1,8(sp)
    80004b64:	01213023          	sd	s2,0(sp)
    80004b68:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004b6c:	00000493          	li	s1,0
    80004b70:	0400006f          	j	80004bb0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004b74:	00003517          	auipc	a0,0x3
    80004b78:	6d450513          	addi	a0,a0,1748 # 80008248 <CONSOLE_STATUS+0x238>
    80004b7c:	fffff097          	auipc	ra,0xfffff
    80004b80:	60c080e7          	jalr	1548(ra) # 80004188 <_Z11printStringPKc>
    80004b84:	00000613          	li	a2,0
    80004b88:	00a00593          	li	a1,10
    80004b8c:	00048513          	mv	a0,s1
    80004b90:	fffff097          	auipc	ra,0xfffff
    80004b94:	7a8080e7          	jalr	1960(ra) # 80004338 <_Z8printIntiii>
    80004b98:	00004517          	auipc	a0,0x4
    80004b9c:	91050513          	addi	a0,a0,-1776 # 800084a8 <CONSOLE_STATUS+0x498>
    80004ba0:	fffff097          	auipc	ra,0xfffff
    80004ba4:	5e8080e7          	jalr	1512(ra) # 80004188 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004ba8:	0014849b          	addiw	s1,s1,1
    80004bac:	0ff4f493          	andi	s1,s1,255
    80004bb0:	00200793          	li	a5,2
    80004bb4:	fc97f0e3          	bgeu	a5,s1,80004b74 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004bb8:	00003517          	auipc	a0,0x3
    80004bbc:	69850513          	addi	a0,a0,1688 # 80008250 <CONSOLE_STATUS+0x240>
    80004bc0:	fffff097          	auipc	ra,0xfffff
    80004bc4:	5c8080e7          	jalr	1480(ra) # 80004188 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004bc8:	00700313          	li	t1,7
    thread_dispatch();
    80004bcc:	ffffc097          	auipc	ra,0xffffc
    80004bd0:	724080e7          	jalr	1828(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004bd4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004bd8:	00003517          	auipc	a0,0x3
    80004bdc:	68850513          	addi	a0,a0,1672 # 80008260 <CONSOLE_STATUS+0x250>
    80004be0:	fffff097          	auipc	ra,0xfffff
    80004be4:	5a8080e7          	jalr	1448(ra) # 80004188 <_Z11printStringPKc>
    80004be8:	00000613          	li	a2,0
    80004bec:	00a00593          	li	a1,10
    80004bf0:	0009051b          	sext.w	a0,s2
    80004bf4:	fffff097          	auipc	ra,0xfffff
    80004bf8:	744080e7          	jalr	1860(ra) # 80004338 <_Z8printIntiii>
    80004bfc:	00004517          	auipc	a0,0x4
    80004c00:	8ac50513          	addi	a0,a0,-1876 # 800084a8 <CONSOLE_STATUS+0x498>
    80004c04:	fffff097          	auipc	ra,0xfffff
    80004c08:	584080e7          	jalr	1412(ra) # 80004188 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004c0c:	00c00513          	li	a0,12
    80004c10:	00000097          	auipc	ra,0x0
    80004c14:	d88080e7          	jalr	-632(ra) # 80004998 <_ZL9fibonaccim>
    80004c18:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004c1c:	00003517          	auipc	a0,0x3
    80004c20:	64c50513          	addi	a0,a0,1612 # 80008268 <CONSOLE_STATUS+0x258>
    80004c24:	fffff097          	auipc	ra,0xfffff
    80004c28:	564080e7          	jalr	1380(ra) # 80004188 <_Z11printStringPKc>
    80004c2c:	00000613          	li	a2,0
    80004c30:	00a00593          	li	a1,10
    80004c34:	0009051b          	sext.w	a0,s2
    80004c38:	fffff097          	auipc	ra,0xfffff
    80004c3c:	700080e7          	jalr	1792(ra) # 80004338 <_Z8printIntiii>
    80004c40:	00004517          	auipc	a0,0x4
    80004c44:	86850513          	addi	a0,a0,-1944 # 800084a8 <CONSOLE_STATUS+0x498>
    80004c48:	fffff097          	auipc	ra,0xfffff
    80004c4c:	540080e7          	jalr	1344(ra) # 80004188 <_Z11printStringPKc>
    80004c50:	0400006f          	j	80004c90 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004c54:	00003517          	auipc	a0,0x3
    80004c58:	5f450513          	addi	a0,a0,1524 # 80008248 <CONSOLE_STATUS+0x238>
    80004c5c:	fffff097          	auipc	ra,0xfffff
    80004c60:	52c080e7          	jalr	1324(ra) # 80004188 <_Z11printStringPKc>
    80004c64:	00000613          	li	a2,0
    80004c68:	00a00593          	li	a1,10
    80004c6c:	00048513          	mv	a0,s1
    80004c70:	fffff097          	auipc	ra,0xfffff
    80004c74:	6c8080e7          	jalr	1736(ra) # 80004338 <_Z8printIntiii>
    80004c78:	00004517          	auipc	a0,0x4
    80004c7c:	83050513          	addi	a0,a0,-2000 # 800084a8 <CONSOLE_STATUS+0x498>
    80004c80:	fffff097          	auipc	ra,0xfffff
    80004c84:	508080e7          	jalr	1288(ra) # 80004188 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004c88:	0014849b          	addiw	s1,s1,1
    80004c8c:	0ff4f493          	andi	s1,s1,255
    80004c90:	00500793          	li	a5,5
    80004c94:	fc97f0e3          	bgeu	a5,s1,80004c54 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004c98:	00003517          	auipc	a0,0x3
    80004c9c:	58850513          	addi	a0,a0,1416 # 80008220 <CONSOLE_STATUS+0x210>
    80004ca0:	fffff097          	auipc	ra,0xfffff
    80004ca4:	4e8080e7          	jalr	1256(ra) # 80004188 <_Z11printStringPKc>
    finishedC = true;
    80004ca8:	00100793          	li	a5,1
    80004cac:	00005717          	auipc	a4,0x5
    80004cb0:	58f70aa3          	sb	a5,1429(a4) # 8000a241 <_ZL9finishedC>
    thread_dispatch();
    80004cb4:	ffffc097          	auipc	ra,0xffffc
    80004cb8:	63c080e7          	jalr	1596(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80004cbc:	01813083          	ld	ra,24(sp)
    80004cc0:	01013403          	ld	s0,16(sp)
    80004cc4:	00813483          	ld	s1,8(sp)
    80004cc8:	00013903          	ld	s2,0(sp)
    80004ccc:	02010113          	addi	sp,sp,32
    80004cd0:	00008067          	ret

0000000080004cd4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004cd4:	fe010113          	addi	sp,sp,-32
    80004cd8:	00113c23          	sd	ra,24(sp)
    80004cdc:	00813823          	sd	s0,16(sp)
    80004ce0:	00913423          	sd	s1,8(sp)
    80004ce4:	01213023          	sd	s2,0(sp)
    80004ce8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004cec:	00000913          	li	s2,0
    80004cf0:	0400006f          	j	80004d30 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80004cf4:	ffffc097          	auipc	ra,0xffffc
    80004cf8:	5fc080e7          	jalr	1532(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004cfc:	00148493          	addi	s1,s1,1
    80004d00:	000027b7          	lui	a5,0x2
    80004d04:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d08:	0097ee63          	bltu	a5,s1,80004d24 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d0c:	00000713          	li	a4,0
    80004d10:	000077b7          	lui	a5,0x7
    80004d14:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d18:	fce7eee3          	bltu	a5,a4,80004cf4 <_ZL11workerBodyBPv+0x20>
    80004d1c:	00170713          	addi	a4,a4,1
    80004d20:	ff1ff06f          	j	80004d10 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80004d24:	00a00793          	li	a5,10
    80004d28:	04f90663          	beq	s2,a5,80004d74 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80004d2c:	00190913          	addi	s2,s2,1
    80004d30:	00f00793          	li	a5,15
    80004d34:	0527e463          	bltu	a5,s2,80004d7c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80004d38:	00003517          	auipc	a0,0x3
    80004d3c:	4f850513          	addi	a0,a0,1272 # 80008230 <CONSOLE_STATUS+0x220>
    80004d40:	fffff097          	auipc	ra,0xfffff
    80004d44:	448080e7          	jalr	1096(ra) # 80004188 <_Z11printStringPKc>
    80004d48:	00000613          	li	a2,0
    80004d4c:	00a00593          	li	a1,10
    80004d50:	0009051b          	sext.w	a0,s2
    80004d54:	fffff097          	auipc	ra,0xfffff
    80004d58:	5e4080e7          	jalr	1508(ra) # 80004338 <_Z8printIntiii>
    80004d5c:	00003517          	auipc	a0,0x3
    80004d60:	74c50513          	addi	a0,a0,1868 # 800084a8 <CONSOLE_STATUS+0x498>
    80004d64:	fffff097          	auipc	ra,0xfffff
    80004d68:	424080e7          	jalr	1060(ra) # 80004188 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d6c:	00000493          	li	s1,0
    80004d70:	f91ff06f          	j	80004d00 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80004d74:	14102ff3          	csrr	t6,sepc
    80004d78:	fb5ff06f          	j	80004d2c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80004d7c:	00003517          	auipc	a0,0x3
    80004d80:	4bc50513          	addi	a0,a0,1212 # 80008238 <CONSOLE_STATUS+0x228>
    80004d84:	fffff097          	auipc	ra,0xfffff
    80004d88:	404080e7          	jalr	1028(ra) # 80004188 <_Z11printStringPKc>
    finishedB = true;
    80004d8c:	00100793          	li	a5,1
    80004d90:	00005717          	auipc	a4,0x5
    80004d94:	4af70923          	sb	a5,1202(a4) # 8000a242 <_ZL9finishedB>
    thread_dispatch();
    80004d98:	ffffc097          	auipc	ra,0xffffc
    80004d9c:	558080e7          	jalr	1368(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80004da0:	01813083          	ld	ra,24(sp)
    80004da4:	01013403          	ld	s0,16(sp)
    80004da8:	00813483          	ld	s1,8(sp)
    80004dac:	00013903          	ld	s2,0(sp)
    80004db0:	02010113          	addi	sp,sp,32
    80004db4:	00008067          	ret

0000000080004db8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004db8:	fe010113          	addi	sp,sp,-32
    80004dbc:	00113c23          	sd	ra,24(sp)
    80004dc0:	00813823          	sd	s0,16(sp)
    80004dc4:	00913423          	sd	s1,8(sp)
    80004dc8:	01213023          	sd	s2,0(sp)
    80004dcc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004dd0:	00000913          	li	s2,0
    80004dd4:	0380006f          	j	80004e0c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004dd8:	ffffc097          	auipc	ra,0xffffc
    80004ddc:	518080e7          	jalr	1304(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004de0:	00148493          	addi	s1,s1,1
    80004de4:	000027b7          	lui	a5,0x2
    80004de8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004dec:	0097ee63          	bltu	a5,s1,80004e08 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004df0:	00000713          	li	a4,0
    80004df4:	000077b7          	lui	a5,0x7
    80004df8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004dfc:	fce7eee3          	bltu	a5,a4,80004dd8 <_ZL11workerBodyAPv+0x20>
    80004e00:	00170713          	addi	a4,a4,1
    80004e04:	ff1ff06f          	j	80004df4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004e08:	00190913          	addi	s2,s2,1
    80004e0c:	00900793          	li	a5,9
    80004e10:	0527e063          	bltu	a5,s2,80004e50 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004e14:	00003517          	auipc	a0,0x3
    80004e18:	40450513          	addi	a0,a0,1028 # 80008218 <CONSOLE_STATUS+0x208>
    80004e1c:	fffff097          	auipc	ra,0xfffff
    80004e20:	36c080e7          	jalr	876(ra) # 80004188 <_Z11printStringPKc>
    80004e24:	00000613          	li	a2,0
    80004e28:	00a00593          	li	a1,10
    80004e2c:	0009051b          	sext.w	a0,s2
    80004e30:	fffff097          	auipc	ra,0xfffff
    80004e34:	508080e7          	jalr	1288(ra) # 80004338 <_Z8printIntiii>
    80004e38:	00003517          	auipc	a0,0x3
    80004e3c:	67050513          	addi	a0,a0,1648 # 800084a8 <CONSOLE_STATUS+0x498>
    80004e40:	fffff097          	auipc	ra,0xfffff
    80004e44:	348080e7          	jalr	840(ra) # 80004188 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e48:	00000493          	li	s1,0
    80004e4c:	f99ff06f          	j	80004de4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004e50:	00003517          	auipc	a0,0x3
    80004e54:	3d050513          	addi	a0,a0,976 # 80008220 <CONSOLE_STATUS+0x210>
    80004e58:	fffff097          	auipc	ra,0xfffff
    80004e5c:	330080e7          	jalr	816(ra) # 80004188 <_Z11printStringPKc>
    finishedA = true;
    80004e60:	00100793          	li	a5,1
    80004e64:	00005717          	auipc	a4,0x5
    80004e68:	3cf70fa3          	sb	a5,991(a4) # 8000a243 <_ZL9finishedA>
}
    80004e6c:	01813083          	ld	ra,24(sp)
    80004e70:	01013403          	ld	s0,16(sp)
    80004e74:	00813483          	ld	s1,8(sp)
    80004e78:	00013903          	ld	s2,0(sp)
    80004e7c:	02010113          	addi	sp,sp,32
    80004e80:	00008067          	ret

0000000080004e84 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80004e84:	fd010113          	addi	sp,sp,-48
    80004e88:	02113423          	sd	ra,40(sp)
    80004e8c:	02813023          	sd	s0,32(sp)
    80004e90:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004e94:	00000613          	li	a2,0
    80004e98:	00000597          	auipc	a1,0x0
    80004e9c:	f2058593          	addi	a1,a1,-224 # 80004db8 <_ZL11workerBodyAPv>
    80004ea0:	fd040513          	addi	a0,s0,-48
    80004ea4:	ffffc097          	auipc	ra,0xffffc
    80004ea8:	378080e7          	jalr	888(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80004eac:	00003517          	auipc	a0,0x3
    80004eb0:	40450513          	addi	a0,a0,1028 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80004eb4:	fffff097          	auipc	ra,0xfffff
    80004eb8:	2d4080e7          	jalr	724(ra) # 80004188 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004ebc:	00000613          	li	a2,0
    80004ec0:	00000597          	auipc	a1,0x0
    80004ec4:	e1458593          	addi	a1,a1,-492 # 80004cd4 <_ZL11workerBodyBPv>
    80004ec8:	fd840513          	addi	a0,s0,-40
    80004ecc:	ffffc097          	auipc	ra,0xffffc
    80004ed0:	350080e7          	jalr	848(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    80004ed4:	00003517          	auipc	a0,0x3
    80004ed8:	3f450513          	addi	a0,a0,1012 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80004edc:	fffff097          	auipc	ra,0xfffff
    80004ee0:	2ac080e7          	jalr	684(ra) # 80004188 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004ee4:	00000613          	li	a2,0
    80004ee8:	00000597          	auipc	a1,0x0
    80004eec:	c6c58593          	addi	a1,a1,-916 # 80004b54 <_ZL11workerBodyCPv>
    80004ef0:	fe040513          	addi	a0,s0,-32
    80004ef4:	ffffc097          	auipc	ra,0xffffc
    80004ef8:	328080e7          	jalr	808(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    80004efc:	00003517          	auipc	a0,0x3
    80004f00:	3e450513          	addi	a0,a0,996 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80004f04:	fffff097          	auipc	ra,0xfffff
    80004f08:	284080e7          	jalr	644(ra) # 80004188 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004f0c:	00000613          	li	a2,0
    80004f10:	00000597          	auipc	a1,0x0
    80004f14:	afc58593          	addi	a1,a1,-1284 # 80004a0c <_ZL11workerBodyDPv>
    80004f18:	fe840513          	addi	a0,s0,-24
    80004f1c:	ffffc097          	auipc	ra,0xffffc
    80004f20:	300080e7          	jalr	768(ra) # 8000121c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    80004f24:	00003517          	auipc	a0,0x3
    80004f28:	3d450513          	addi	a0,a0,980 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80004f2c:	fffff097          	auipc	ra,0xfffff
    80004f30:	25c080e7          	jalr	604(ra) # 80004188 <_Z11printStringPKc>
    80004f34:	00c0006f          	j	80004f40 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004f38:	ffffc097          	auipc	ra,0xffffc
    80004f3c:	3b8080e7          	jalr	952(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004f40:	00005797          	auipc	a5,0x5
    80004f44:	3037c783          	lbu	a5,771(a5) # 8000a243 <_ZL9finishedA>
    80004f48:	fe0788e3          	beqz	a5,80004f38 <_Z16System_Mode_testv+0xb4>
    80004f4c:	00005797          	auipc	a5,0x5
    80004f50:	2f67c783          	lbu	a5,758(a5) # 8000a242 <_ZL9finishedB>
    80004f54:	fe0782e3          	beqz	a5,80004f38 <_Z16System_Mode_testv+0xb4>
    80004f58:	00005797          	auipc	a5,0x5
    80004f5c:	2e97c783          	lbu	a5,745(a5) # 8000a241 <_ZL9finishedC>
    80004f60:	fc078ce3          	beqz	a5,80004f38 <_Z16System_Mode_testv+0xb4>
    80004f64:	00005797          	auipc	a5,0x5
    80004f68:	2dc7c783          	lbu	a5,732(a5) # 8000a240 <_ZL9finishedD>
    80004f6c:	fc0786e3          	beqz	a5,80004f38 <_Z16System_Mode_testv+0xb4>
    }

}
    80004f70:	02813083          	ld	ra,40(sp)
    80004f74:	02013403          	ld	s0,32(sp)
    80004f78:	03010113          	addi	sp,sp,48
    80004f7c:	00008067          	ret

0000000080004f80 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004f80:	fe010113          	addi	sp,sp,-32
    80004f84:	00113c23          	sd	ra,24(sp)
    80004f88:	00813823          	sd	s0,16(sp)
    80004f8c:	00913423          	sd	s1,8(sp)
    80004f90:	01213023          	sd	s2,0(sp)
    80004f94:	02010413          	addi	s0,sp,32
    80004f98:	00050493          	mv	s1,a0
    80004f9c:	00058913          	mv	s2,a1
    80004fa0:	0015879b          	addiw	a5,a1,1
    80004fa4:	0007851b          	sext.w	a0,a5
    80004fa8:	00f4a023          	sw	a5,0(s1)
    80004fac:	0004a823          	sw	zero,16(s1)
    80004fb0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004fb4:	00251513          	slli	a0,a0,0x2
    80004fb8:	ffffc097          	auipc	ra,0xffffc
    80004fbc:	1ac080e7          	jalr	428(ra) # 80001164 <_Z9mem_allocm>
    80004fc0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004fc4:	00000593          	li	a1,0
    80004fc8:	02048513          	addi	a0,s1,32
    80004fcc:	ffffc097          	auipc	ra,0xffffc
    80004fd0:	344080e7          	jalr	836(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&spaceAvailable, _cap);
    80004fd4:	00090593          	mv	a1,s2
    80004fd8:	01848513          	addi	a0,s1,24
    80004fdc:	ffffc097          	auipc	ra,0xffffc
    80004fe0:	334080e7          	jalr	820(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexHead, 1);
    80004fe4:	00100593          	li	a1,1
    80004fe8:	02848513          	addi	a0,s1,40
    80004fec:	ffffc097          	auipc	ra,0xffffc
    80004ff0:	324080e7          	jalr	804(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexTail, 1);
    80004ff4:	00100593          	li	a1,1
    80004ff8:	03048513          	addi	a0,s1,48
    80004ffc:	ffffc097          	auipc	ra,0xffffc
    80005000:	314080e7          	jalr	788(ra) # 80001310 <_Z8sem_openPP10KSemaphorej>
}
    80005004:	01813083          	ld	ra,24(sp)
    80005008:	01013403          	ld	s0,16(sp)
    8000500c:	00813483          	ld	s1,8(sp)
    80005010:	00013903          	ld	s2,0(sp)
    80005014:	02010113          	addi	sp,sp,32
    80005018:	00008067          	ret

000000008000501c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000501c:	fe010113          	addi	sp,sp,-32
    80005020:	00113c23          	sd	ra,24(sp)
    80005024:	00813823          	sd	s0,16(sp)
    80005028:	00913423          	sd	s1,8(sp)
    8000502c:	01213023          	sd	s2,0(sp)
    80005030:	02010413          	addi	s0,sp,32
    80005034:	00050493          	mv	s1,a0
    80005038:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000503c:	01853503          	ld	a0,24(a0)
    80005040:	ffffc097          	auipc	ra,0xffffc
    80005044:	334080e7          	jalr	820(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexTail);
    80005048:	0304b503          	ld	a0,48(s1)
    8000504c:	ffffc097          	auipc	ra,0xffffc
    80005050:	328080e7          	jalr	808(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    buffer[tail] = val;
    80005054:	0084b783          	ld	a5,8(s1)
    80005058:	0144a703          	lw	a4,20(s1)
    8000505c:	00271713          	slli	a4,a4,0x2
    80005060:	00e787b3          	add	a5,a5,a4
    80005064:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005068:	0144a783          	lw	a5,20(s1)
    8000506c:	0017879b          	addiw	a5,a5,1
    80005070:	0004a703          	lw	a4,0(s1)
    80005074:	02e7e7bb          	remw	a5,a5,a4
    80005078:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000507c:	0304b503          	ld	a0,48(s1)
    80005080:	ffffc097          	auipc	ra,0xffffc
    80005084:	320080e7          	jalr	800(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    sem_signal(itemAvailable);
    80005088:	0204b503          	ld	a0,32(s1)
    8000508c:	ffffc097          	auipc	ra,0xffffc
    80005090:	314080e7          	jalr	788(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

}
    80005094:	01813083          	ld	ra,24(sp)
    80005098:	01013403          	ld	s0,16(sp)
    8000509c:	00813483          	ld	s1,8(sp)
    800050a0:	00013903          	ld	s2,0(sp)
    800050a4:	02010113          	addi	sp,sp,32
    800050a8:	00008067          	ret

00000000800050ac <_ZN6Buffer3getEv>:

int Buffer::get() {
    800050ac:	fe010113          	addi	sp,sp,-32
    800050b0:	00113c23          	sd	ra,24(sp)
    800050b4:	00813823          	sd	s0,16(sp)
    800050b8:	00913423          	sd	s1,8(sp)
    800050bc:	01213023          	sd	s2,0(sp)
    800050c0:	02010413          	addi	s0,sp,32
    800050c4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800050c8:	02053503          	ld	a0,32(a0)
    800050cc:	ffffc097          	auipc	ra,0xffffc
    800050d0:	2a8080e7          	jalr	680(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexHead);
    800050d4:	0284b503          	ld	a0,40(s1)
    800050d8:	ffffc097          	auipc	ra,0xffffc
    800050dc:	29c080e7          	jalr	668(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    int ret = buffer[head];
    800050e0:	0084b703          	ld	a4,8(s1)
    800050e4:	0104a783          	lw	a5,16(s1)
    800050e8:	00279693          	slli	a3,a5,0x2
    800050ec:	00d70733          	add	a4,a4,a3
    800050f0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800050f4:	0017879b          	addiw	a5,a5,1
    800050f8:	0004a703          	lw	a4,0(s1)
    800050fc:	02e7e7bb          	remw	a5,a5,a4
    80005100:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005104:	0284b503          	ld	a0,40(s1)
    80005108:	ffffc097          	auipc	ra,0xffffc
    8000510c:	298080e7          	jalr	664(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    sem_signal(spaceAvailable);
    80005110:	0184b503          	ld	a0,24(s1)
    80005114:	ffffc097          	auipc	ra,0xffffc
    80005118:	28c080e7          	jalr	652(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    8000511c:	00090513          	mv	a0,s2
    80005120:	01813083          	ld	ra,24(sp)
    80005124:	01013403          	ld	s0,16(sp)
    80005128:	00813483          	ld	s1,8(sp)
    8000512c:	00013903          	ld	s2,0(sp)
    80005130:	02010113          	addi	sp,sp,32
    80005134:	00008067          	ret

0000000080005138 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005138:	fe010113          	addi	sp,sp,-32
    8000513c:	00113c23          	sd	ra,24(sp)
    80005140:	00813823          	sd	s0,16(sp)
    80005144:	00913423          	sd	s1,8(sp)
    80005148:	01213023          	sd	s2,0(sp)
    8000514c:	02010413          	addi	s0,sp,32
    80005150:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005154:	02853503          	ld	a0,40(a0)
    80005158:	ffffc097          	auipc	ra,0xffffc
    8000515c:	21c080e7          	jalr	540(ra) # 80001374 <_Z8sem_waitP10KSemaphore>
    sem_wait(mutexTail);
    80005160:	0304b503          	ld	a0,48(s1)
    80005164:	ffffc097          	auipc	ra,0xffffc
    80005168:	210080e7          	jalr	528(ra) # 80001374 <_Z8sem_waitP10KSemaphore>

    if (tail >= head) {
    8000516c:	0144a783          	lw	a5,20(s1)
    80005170:	0104a903          	lw	s2,16(s1)
    80005174:	0327ce63          	blt	a5,s2,800051b0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005178:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000517c:	0304b503          	ld	a0,48(s1)
    80005180:	ffffc097          	auipc	ra,0xffffc
    80005184:	220080e7          	jalr	544(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>
    sem_signal(mutexHead);
    80005188:	0284b503          	ld	a0,40(s1)
    8000518c:	ffffc097          	auipc	ra,0xffffc
    80005190:	214080e7          	jalr	532(ra) # 800013a0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    80005194:	00090513          	mv	a0,s2
    80005198:	01813083          	ld	ra,24(sp)
    8000519c:	01013403          	ld	s0,16(sp)
    800051a0:	00813483          	ld	s1,8(sp)
    800051a4:	00013903          	ld	s2,0(sp)
    800051a8:	02010113          	addi	sp,sp,32
    800051ac:	00008067          	ret
        ret = cap - head + tail;
    800051b0:	0004a703          	lw	a4,0(s1)
    800051b4:	4127093b          	subw	s2,a4,s2
    800051b8:	00f9093b          	addw	s2,s2,a5
    800051bc:	fc1ff06f          	j	8000517c <_ZN6Buffer6getCntEv+0x44>

00000000800051c0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800051c0:	fe010113          	addi	sp,sp,-32
    800051c4:	00113c23          	sd	ra,24(sp)
    800051c8:	00813823          	sd	s0,16(sp)
    800051cc:	00913423          	sd	s1,8(sp)
    800051d0:	02010413          	addi	s0,sp,32
    800051d4:	00050493          	mv	s1,a0
    putc('\n');
    800051d8:	00a00513          	li	a0,10
    800051dc:	ffffc097          	auipc	ra,0xffffc
    800051e0:	218080e7          	jalr	536(ra) # 800013f4 <_Z4putcc>
    printString("Buffer deleted!\n");
    800051e4:	00003517          	auipc	a0,0x3
    800051e8:	13c50513          	addi	a0,a0,316 # 80008320 <CONSOLE_STATUS+0x310>
    800051ec:	fffff097          	auipc	ra,0xfffff
    800051f0:	f9c080e7          	jalr	-100(ra) # 80004188 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800051f4:	00048513          	mv	a0,s1
    800051f8:	00000097          	auipc	ra,0x0
    800051fc:	f40080e7          	jalr	-192(ra) # 80005138 <_ZN6Buffer6getCntEv>
    80005200:	02a05c63          	blez	a0,80005238 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005204:	0084b783          	ld	a5,8(s1)
    80005208:	0104a703          	lw	a4,16(s1)
    8000520c:	00271713          	slli	a4,a4,0x2
    80005210:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005214:	0007c503          	lbu	a0,0(a5)
    80005218:	ffffc097          	auipc	ra,0xffffc
    8000521c:	1dc080e7          	jalr	476(ra) # 800013f4 <_Z4putcc>
        head = (head + 1) % cap;
    80005220:	0104a783          	lw	a5,16(s1)
    80005224:	0017879b          	addiw	a5,a5,1
    80005228:	0004a703          	lw	a4,0(s1)
    8000522c:	02e7e7bb          	remw	a5,a5,a4
    80005230:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005234:	fc1ff06f          	j	800051f4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005238:	02100513          	li	a0,33
    8000523c:	ffffc097          	auipc	ra,0xffffc
    80005240:	1b8080e7          	jalr	440(ra) # 800013f4 <_Z4putcc>
    putc('\n');
    80005244:	00a00513          	li	a0,10
    80005248:	ffffc097          	auipc	ra,0xffffc
    8000524c:	1ac080e7          	jalr	428(ra) # 800013f4 <_Z4putcc>
    mem_free(buffer);
    80005250:	0084b503          	ld	a0,8(s1)
    80005254:	ffffc097          	auipc	ra,0xffffc
    80005258:	f54080e7          	jalr	-172(ra) # 800011a8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000525c:	0204b503          	ld	a0,32(s1)
    80005260:	ffffc097          	auipc	ra,0xffffc
    80005264:	0e8080e7          	jalr	232(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(spaceAvailable);
    80005268:	0184b503          	ld	a0,24(s1)
    8000526c:	ffffc097          	auipc	ra,0xffffc
    80005270:	0dc080e7          	jalr	220(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexTail);
    80005274:	0304b503          	ld	a0,48(s1)
    80005278:	ffffc097          	auipc	ra,0xffffc
    8000527c:	0d0080e7          	jalr	208(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexHead);
    80005280:	0284b503          	ld	a0,40(s1)
    80005284:	ffffc097          	auipc	ra,0xffffc
    80005288:	0c4080e7          	jalr	196(ra) # 80001348 <_Z9sem_closeP10KSemaphore>
}
    8000528c:	01813083          	ld	ra,24(sp)
    80005290:	01013403          	ld	s0,16(sp)
    80005294:	00813483          	ld	s1,8(sp)
    80005298:	02010113          	addi	sp,sp,32
    8000529c:	00008067          	ret

00000000800052a0 <start>:
    800052a0:	ff010113          	addi	sp,sp,-16
    800052a4:	00813423          	sd	s0,8(sp)
    800052a8:	01010413          	addi	s0,sp,16
    800052ac:	300027f3          	csrr	a5,mstatus
    800052b0:	ffffe737          	lui	a4,0xffffe
    800052b4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff334f>
    800052b8:	00e7f7b3          	and	a5,a5,a4
    800052bc:	00001737          	lui	a4,0x1
    800052c0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800052c4:	00e7e7b3          	or	a5,a5,a4
    800052c8:	30079073          	csrw	mstatus,a5
    800052cc:	00000797          	auipc	a5,0x0
    800052d0:	16078793          	addi	a5,a5,352 # 8000542c <system_main>
    800052d4:	34179073          	csrw	mepc,a5
    800052d8:	00000793          	li	a5,0
    800052dc:	18079073          	csrw	satp,a5
    800052e0:	000107b7          	lui	a5,0x10
    800052e4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800052e8:	30279073          	csrw	medeleg,a5
    800052ec:	30379073          	csrw	mideleg,a5
    800052f0:	104027f3          	csrr	a5,sie
    800052f4:	2227e793          	ori	a5,a5,546
    800052f8:	10479073          	csrw	sie,a5
    800052fc:	fff00793          	li	a5,-1
    80005300:	00a7d793          	srli	a5,a5,0xa
    80005304:	3b079073          	csrw	pmpaddr0,a5
    80005308:	00f00793          	li	a5,15
    8000530c:	3a079073          	csrw	pmpcfg0,a5
    80005310:	f14027f3          	csrr	a5,mhartid
    80005314:	0200c737          	lui	a4,0x200c
    80005318:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000531c:	0007869b          	sext.w	a3,a5
    80005320:	00269713          	slli	a4,a3,0x2
    80005324:	000f4637          	lui	a2,0xf4
    80005328:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000532c:	00d70733          	add	a4,a4,a3
    80005330:	0037979b          	slliw	a5,a5,0x3
    80005334:	020046b7          	lui	a3,0x2004
    80005338:	00d787b3          	add	a5,a5,a3
    8000533c:	00c585b3          	add	a1,a1,a2
    80005340:	00371693          	slli	a3,a4,0x3
    80005344:	00005717          	auipc	a4,0x5
    80005348:	f0c70713          	addi	a4,a4,-244 # 8000a250 <timer_scratch>
    8000534c:	00b7b023          	sd	a1,0(a5)
    80005350:	00d70733          	add	a4,a4,a3
    80005354:	00f73c23          	sd	a5,24(a4)
    80005358:	02c73023          	sd	a2,32(a4)
    8000535c:	34071073          	csrw	mscratch,a4
    80005360:	00000797          	auipc	a5,0x0
    80005364:	6e078793          	addi	a5,a5,1760 # 80005a40 <timervec>
    80005368:	30579073          	csrw	mtvec,a5
    8000536c:	300027f3          	csrr	a5,mstatus
    80005370:	0087e793          	ori	a5,a5,8
    80005374:	30079073          	csrw	mstatus,a5
    80005378:	304027f3          	csrr	a5,mie
    8000537c:	0807e793          	ori	a5,a5,128
    80005380:	30479073          	csrw	mie,a5
    80005384:	f14027f3          	csrr	a5,mhartid
    80005388:	0007879b          	sext.w	a5,a5
    8000538c:	00078213          	mv	tp,a5
    80005390:	30200073          	mret
    80005394:	00813403          	ld	s0,8(sp)
    80005398:	01010113          	addi	sp,sp,16
    8000539c:	00008067          	ret

00000000800053a0 <timerinit>:
    800053a0:	ff010113          	addi	sp,sp,-16
    800053a4:	00813423          	sd	s0,8(sp)
    800053a8:	01010413          	addi	s0,sp,16
    800053ac:	f14027f3          	csrr	a5,mhartid
    800053b0:	0200c737          	lui	a4,0x200c
    800053b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800053b8:	0007869b          	sext.w	a3,a5
    800053bc:	00269713          	slli	a4,a3,0x2
    800053c0:	000f4637          	lui	a2,0xf4
    800053c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800053c8:	00d70733          	add	a4,a4,a3
    800053cc:	0037979b          	slliw	a5,a5,0x3
    800053d0:	020046b7          	lui	a3,0x2004
    800053d4:	00d787b3          	add	a5,a5,a3
    800053d8:	00c585b3          	add	a1,a1,a2
    800053dc:	00371693          	slli	a3,a4,0x3
    800053e0:	00005717          	auipc	a4,0x5
    800053e4:	e7070713          	addi	a4,a4,-400 # 8000a250 <timer_scratch>
    800053e8:	00b7b023          	sd	a1,0(a5)
    800053ec:	00d70733          	add	a4,a4,a3
    800053f0:	00f73c23          	sd	a5,24(a4)
    800053f4:	02c73023          	sd	a2,32(a4)
    800053f8:	34071073          	csrw	mscratch,a4
    800053fc:	00000797          	auipc	a5,0x0
    80005400:	64478793          	addi	a5,a5,1604 # 80005a40 <timervec>
    80005404:	30579073          	csrw	mtvec,a5
    80005408:	300027f3          	csrr	a5,mstatus
    8000540c:	0087e793          	ori	a5,a5,8
    80005410:	30079073          	csrw	mstatus,a5
    80005414:	304027f3          	csrr	a5,mie
    80005418:	0807e793          	ori	a5,a5,128
    8000541c:	30479073          	csrw	mie,a5
    80005420:	00813403          	ld	s0,8(sp)
    80005424:	01010113          	addi	sp,sp,16
    80005428:	00008067          	ret

000000008000542c <system_main>:
    8000542c:	fe010113          	addi	sp,sp,-32
    80005430:	00813823          	sd	s0,16(sp)
    80005434:	00913423          	sd	s1,8(sp)
    80005438:	00113c23          	sd	ra,24(sp)
    8000543c:	02010413          	addi	s0,sp,32
    80005440:	00000097          	auipc	ra,0x0
    80005444:	0c4080e7          	jalr	196(ra) # 80005504 <cpuid>
    80005448:	00005497          	auipc	s1,0x5
    8000544c:	d6848493          	addi	s1,s1,-664 # 8000a1b0 <started>
    80005450:	02050263          	beqz	a0,80005474 <system_main+0x48>
    80005454:	0004a783          	lw	a5,0(s1)
    80005458:	0007879b          	sext.w	a5,a5
    8000545c:	fe078ce3          	beqz	a5,80005454 <system_main+0x28>
    80005460:	0ff0000f          	fence
    80005464:	00003517          	auipc	a0,0x3
    80005468:	13c50513          	addi	a0,a0,316 # 800085a0 <CONSOLE_STATUS+0x590>
    8000546c:	00001097          	auipc	ra,0x1
    80005470:	a70080e7          	jalr	-1424(ra) # 80005edc <panic>
    80005474:	00001097          	auipc	ra,0x1
    80005478:	9c4080e7          	jalr	-1596(ra) # 80005e38 <consoleinit>
    8000547c:	00001097          	auipc	ra,0x1
    80005480:	150080e7          	jalr	336(ra) # 800065cc <printfinit>
    80005484:	00003517          	auipc	a0,0x3
    80005488:	02450513          	addi	a0,a0,36 # 800084a8 <CONSOLE_STATUS+0x498>
    8000548c:	00001097          	auipc	ra,0x1
    80005490:	aac080e7          	jalr	-1364(ra) # 80005f38 <__printf>
    80005494:	00003517          	auipc	a0,0x3
    80005498:	0dc50513          	addi	a0,a0,220 # 80008570 <CONSOLE_STATUS+0x560>
    8000549c:	00001097          	auipc	ra,0x1
    800054a0:	a9c080e7          	jalr	-1380(ra) # 80005f38 <__printf>
    800054a4:	00003517          	auipc	a0,0x3
    800054a8:	00450513          	addi	a0,a0,4 # 800084a8 <CONSOLE_STATUS+0x498>
    800054ac:	00001097          	auipc	ra,0x1
    800054b0:	a8c080e7          	jalr	-1396(ra) # 80005f38 <__printf>
    800054b4:	00001097          	auipc	ra,0x1
    800054b8:	4a4080e7          	jalr	1188(ra) # 80006958 <kinit>
    800054bc:	00000097          	auipc	ra,0x0
    800054c0:	148080e7          	jalr	328(ra) # 80005604 <trapinit>
    800054c4:	00000097          	auipc	ra,0x0
    800054c8:	16c080e7          	jalr	364(ra) # 80005630 <trapinithart>
    800054cc:	00000097          	auipc	ra,0x0
    800054d0:	5b4080e7          	jalr	1460(ra) # 80005a80 <plicinit>
    800054d4:	00000097          	auipc	ra,0x0
    800054d8:	5d4080e7          	jalr	1492(ra) # 80005aa8 <plicinithart>
    800054dc:	00000097          	auipc	ra,0x0
    800054e0:	078080e7          	jalr	120(ra) # 80005554 <userinit>
    800054e4:	0ff0000f          	fence
    800054e8:	00100793          	li	a5,1
    800054ec:	00003517          	auipc	a0,0x3
    800054f0:	09c50513          	addi	a0,a0,156 # 80008588 <CONSOLE_STATUS+0x578>
    800054f4:	00f4a023          	sw	a5,0(s1)
    800054f8:	00001097          	auipc	ra,0x1
    800054fc:	a40080e7          	jalr	-1472(ra) # 80005f38 <__printf>
    80005500:	0000006f          	j	80005500 <system_main+0xd4>

0000000080005504 <cpuid>:
    80005504:	ff010113          	addi	sp,sp,-16
    80005508:	00813423          	sd	s0,8(sp)
    8000550c:	01010413          	addi	s0,sp,16
    80005510:	00020513          	mv	a0,tp
    80005514:	00813403          	ld	s0,8(sp)
    80005518:	0005051b          	sext.w	a0,a0
    8000551c:	01010113          	addi	sp,sp,16
    80005520:	00008067          	ret

0000000080005524 <mycpu>:
    80005524:	ff010113          	addi	sp,sp,-16
    80005528:	00813423          	sd	s0,8(sp)
    8000552c:	01010413          	addi	s0,sp,16
    80005530:	00020793          	mv	a5,tp
    80005534:	00813403          	ld	s0,8(sp)
    80005538:	0007879b          	sext.w	a5,a5
    8000553c:	00779793          	slli	a5,a5,0x7
    80005540:	00006517          	auipc	a0,0x6
    80005544:	d4050513          	addi	a0,a0,-704 # 8000b280 <cpus>
    80005548:	00f50533          	add	a0,a0,a5
    8000554c:	01010113          	addi	sp,sp,16
    80005550:	00008067          	ret

0000000080005554 <userinit>:
    80005554:	ff010113          	addi	sp,sp,-16
    80005558:	00813423          	sd	s0,8(sp)
    8000555c:	01010413          	addi	s0,sp,16
    80005560:	00813403          	ld	s0,8(sp)
    80005564:	01010113          	addi	sp,sp,16
    80005568:	ffffc317          	auipc	t1,0xffffc
    8000556c:	34830067          	jr	840(t1) # 800018b0 <main>

0000000080005570 <either_copyout>:
    80005570:	ff010113          	addi	sp,sp,-16
    80005574:	00813023          	sd	s0,0(sp)
    80005578:	00113423          	sd	ra,8(sp)
    8000557c:	01010413          	addi	s0,sp,16
    80005580:	02051663          	bnez	a0,800055ac <either_copyout+0x3c>
    80005584:	00058513          	mv	a0,a1
    80005588:	00060593          	mv	a1,a2
    8000558c:	0006861b          	sext.w	a2,a3
    80005590:	00002097          	auipc	ra,0x2
    80005594:	c54080e7          	jalr	-940(ra) # 800071e4 <__memmove>
    80005598:	00813083          	ld	ra,8(sp)
    8000559c:	00013403          	ld	s0,0(sp)
    800055a0:	00000513          	li	a0,0
    800055a4:	01010113          	addi	sp,sp,16
    800055a8:	00008067          	ret
    800055ac:	00003517          	auipc	a0,0x3
    800055b0:	01c50513          	addi	a0,a0,28 # 800085c8 <CONSOLE_STATUS+0x5b8>
    800055b4:	00001097          	auipc	ra,0x1
    800055b8:	928080e7          	jalr	-1752(ra) # 80005edc <panic>

00000000800055bc <either_copyin>:
    800055bc:	ff010113          	addi	sp,sp,-16
    800055c0:	00813023          	sd	s0,0(sp)
    800055c4:	00113423          	sd	ra,8(sp)
    800055c8:	01010413          	addi	s0,sp,16
    800055cc:	02059463          	bnez	a1,800055f4 <either_copyin+0x38>
    800055d0:	00060593          	mv	a1,a2
    800055d4:	0006861b          	sext.w	a2,a3
    800055d8:	00002097          	auipc	ra,0x2
    800055dc:	c0c080e7          	jalr	-1012(ra) # 800071e4 <__memmove>
    800055e0:	00813083          	ld	ra,8(sp)
    800055e4:	00013403          	ld	s0,0(sp)
    800055e8:	00000513          	li	a0,0
    800055ec:	01010113          	addi	sp,sp,16
    800055f0:	00008067          	ret
    800055f4:	00003517          	auipc	a0,0x3
    800055f8:	ffc50513          	addi	a0,a0,-4 # 800085f0 <CONSOLE_STATUS+0x5e0>
    800055fc:	00001097          	auipc	ra,0x1
    80005600:	8e0080e7          	jalr	-1824(ra) # 80005edc <panic>

0000000080005604 <trapinit>:
    80005604:	ff010113          	addi	sp,sp,-16
    80005608:	00813423          	sd	s0,8(sp)
    8000560c:	01010413          	addi	s0,sp,16
    80005610:	00813403          	ld	s0,8(sp)
    80005614:	00003597          	auipc	a1,0x3
    80005618:	00458593          	addi	a1,a1,4 # 80008618 <CONSOLE_STATUS+0x608>
    8000561c:	00006517          	auipc	a0,0x6
    80005620:	ce450513          	addi	a0,a0,-796 # 8000b300 <tickslock>
    80005624:	01010113          	addi	sp,sp,16
    80005628:	00001317          	auipc	t1,0x1
    8000562c:	5c030067          	jr	1472(t1) # 80006be8 <initlock>

0000000080005630 <trapinithart>:
    80005630:	ff010113          	addi	sp,sp,-16
    80005634:	00813423          	sd	s0,8(sp)
    80005638:	01010413          	addi	s0,sp,16
    8000563c:	00000797          	auipc	a5,0x0
    80005640:	2f478793          	addi	a5,a5,756 # 80005930 <kernelvec>
    80005644:	10579073          	csrw	stvec,a5
    80005648:	00813403          	ld	s0,8(sp)
    8000564c:	01010113          	addi	sp,sp,16
    80005650:	00008067          	ret

0000000080005654 <usertrap>:
    80005654:	ff010113          	addi	sp,sp,-16
    80005658:	00813423          	sd	s0,8(sp)
    8000565c:	01010413          	addi	s0,sp,16
    80005660:	00813403          	ld	s0,8(sp)
    80005664:	01010113          	addi	sp,sp,16
    80005668:	00008067          	ret

000000008000566c <usertrapret>:
    8000566c:	ff010113          	addi	sp,sp,-16
    80005670:	00813423          	sd	s0,8(sp)
    80005674:	01010413          	addi	s0,sp,16
    80005678:	00813403          	ld	s0,8(sp)
    8000567c:	01010113          	addi	sp,sp,16
    80005680:	00008067          	ret

0000000080005684 <kerneltrap>:
    80005684:	fe010113          	addi	sp,sp,-32
    80005688:	00813823          	sd	s0,16(sp)
    8000568c:	00113c23          	sd	ra,24(sp)
    80005690:	00913423          	sd	s1,8(sp)
    80005694:	02010413          	addi	s0,sp,32
    80005698:	142025f3          	csrr	a1,scause
    8000569c:	100027f3          	csrr	a5,sstatus
    800056a0:	0027f793          	andi	a5,a5,2
    800056a4:	10079c63          	bnez	a5,800057bc <kerneltrap+0x138>
    800056a8:	142027f3          	csrr	a5,scause
    800056ac:	0207ce63          	bltz	a5,800056e8 <kerneltrap+0x64>
    800056b0:	00003517          	auipc	a0,0x3
    800056b4:	fb050513          	addi	a0,a0,-80 # 80008660 <CONSOLE_STATUS+0x650>
    800056b8:	00001097          	auipc	ra,0x1
    800056bc:	880080e7          	jalr	-1920(ra) # 80005f38 <__printf>
    800056c0:	141025f3          	csrr	a1,sepc
    800056c4:	14302673          	csrr	a2,stval
    800056c8:	00003517          	auipc	a0,0x3
    800056cc:	fa850513          	addi	a0,a0,-88 # 80008670 <CONSOLE_STATUS+0x660>
    800056d0:	00001097          	auipc	ra,0x1
    800056d4:	868080e7          	jalr	-1944(ra) # 80005f38 <__printf>
    800056d8:	00003517          	auipc	a0,0x3
    800056dc:	fb050513          	addi	a0,a0,-80 # 80008688 <CONSOLE_STATUS+0x678>
    800056e0:	00000097          	auipc	ra,0x0
    800056e4:	7fc080e7          	jalr	2044(ra) # 80005edc <panic>
    800056e8:	0ff7f713          	andi	a4,a5,255
    800056ec:	00900693          	li	a3,9
    800056f0:	04d70063          	beq	a4,a3,80005730 <kerneltrap+0xac>
    800056f4:	fff00713          	li	a4,-1
    800056f8:	03f71713          	slli	a4,a4,0x3f
    800056fc:	00170713          	addi	a4,a4,1
    80005700:	fae798e3          	bne	a5,a4,800056b0 <kerneltrap+0x2c>
    80005704:	00000097          	auipc	ra,0x0
    80005708:	e00080e7          	jalr	-512(ra) # 80005504 <cpuid>
    8000570c:	06050663          	beqz	a0,80005778 <kerneltrap+0xf4>
    80005710:	144027f3          	csrr	a5,sip
    80005714:	ffd7f793          	andi	a5,a5,-3
    80005718:	14479073          	csrw	sip,a5
    8000571c:	01813083          	ld	ra,24(sp)
    80005720:	01013403          	ld	s0,16(sp)
    80005724:	00813483          	ld	s1,8(sp)
    80005728:	02010113          	addi	sp,sp,32
    8000572c:	00008067          	ret
    80005730:	00000097          	auipc	ra,0x0
    80005734:	3c4080e7          	jalr	964(ra) # 80005af4 <plic_claim>
    80005738:	00a00793          	li	a5,10
    8000573c:	00050493          	mv	s1,a0
    80005740:	06f50863          	beq	a0,a5,800057b0 <kerneltrap+0x12c>
    80005744:	fc050ce3          	beqz	a0,8000571c <kerneltrap+0x98>
    80005748:	00050593          	mv	a1,a0
    8000574c:	00003517          	auipc	a0,0x3
    80005750:	ef450513          	addi	a0,a0,-268 # 80008640 <CONSOLE_STATUS+0x630>
    80005754:	00000097          	auipc	ra,0x0
    80005758:	7e4080e7          	jalr	2020(ra) # 80005f38 <__printf>
    8000575c:	01013403          	ld	s0,16(sp)
    80005760:	01813083          	ld	ra,24(sp)
    80005764:	00048513          	mv	a0,s1
    80005768:	00813483          	ld	s1,8(sp)
    8000576c:	02010113          	addi	sp,sp,32
    80005770:	00000317          	auipc	t1,0x0
    80005774:	3bc30067          	jr	956(t1) # 80005b2c <plic_complete>
    80005778:	00006517          	auipc	a0,0x6
    8000577c:	b8850513          	addi	a0,a0,-1144 # 8000b300 <tickslock>
    80005780:	00001097          	auipc	ra,0x1
    80005784:	48c080e7          	jalr	1164(ra) # 80006c0c <acquire>
    80005788:	00005717          	auipc	a4,0x5
    8000578c:	a2c70713          	addi	a4,a4,-1492 # 8000a1b4 <ticks>
    80005790:	00072783          	lw	a5,0(a4)
    80005794:	00006517          	auipc	a0,0x6
    80005798:	b6c50513          	addi	a0,a0,-1172 # 8000b300 <tickslock>
    8000579c:	0017879b          	addiw	a5,a5,1
    800057a0:	00f72023          	sw	a5,0(a4)
    800057a4:	00001097          	auipc	ra,0x1
    800057a8:	534080e7          	jalr	1332(ra) # 80006cd8 <release>
    800057ac:	f65ff06f          	j	80005710 <kerneltrap+0x8c>
    800057b0:	00001097          	auipc	ra,0x1
    800057b4:	090080e7          	jalr	144(ra) # 80006840 <uartintr>
    800057b8:	fa5ff06f          	j	8000575c <kerneltrap+0xd8>
    800057bc:	00003517          	auipc	a0,0x3
    800057c0:	e6450513          	addi	a0,a0,-412 # 80008620 <CONSOLE_STATUS+0x610>
    800057c4:	00000097          	auipc	ra,0x0
    800057c8:	718080e7          	jalr	1816(ra) # 80005edc <panic>

00000000800057cc <clockintr>:
    800057cc:	fe010113          	addi	sp,sp,-32
    800057d0:	00813823          	sd	s0,16(sp)
    800057d4:	00913423          	sd	s1,8(sp)
    800057d8:	00113c23          	sd	ra,24(sp)
    800057dc:	02010413          	addi	s0,sp,32
    800057e0:	00006497          	auipc	s1,0x6
    800057e4:	b2048493          	addi	s1,s1,-1248 # 8000b300 <tickslock>
    800057e8:	00048513          	mv	a0,s1
    800057ec:	00001097          	auipc	ra,0x1
    800057f0:	420080e7          	jalr	1056(ra) # 80006c0c <acquire>
    800057f4:	00005717          	auipc	a4,0x5
    800057f8:	9c070713          	addi	a4,a4,-1600 # 8000a1b4 <ticks>
    800057fc:	00072783          	lw	a5,0(a4)
    80005800:	01013403          	ld	s0,16(sp)
    80005804:	01813083          	ld	ra,24(sp)
    80005808:	00048513          	mv	a0,s1
    8000580c:	0017879b          	addiw	a5,a5,1
    80005810:	00813483          	ld	s1,8(sp)
    80005814:	00f72023          	sw	a5,0(a4)
    80005818:	02010113          	addi	sp,sp,32
    8000581c:	00001317          	auipc	t1,0x1
    80005820:	4bc30067          	jr	1212(t1) # 80006cd8 <release>

0000000080005824 <devintr>:
    80005824:	142027f3          	csrr	a5,scause
    80005828:	00000513          	li	a0,0
    8000582c:	0007c463          	bltz	a5,80005834 <devintr+0x10>
    80005830:	00008067          	ret
    80005834:	fe010113          	addi	sp,sp,-32
    80005838:	00813823          	sd	s0,16(sp)
    8000583c:	00113c23          	sd	ra,24(sp)
    80005840:	00913423          	sd	s1,8(sp)
    80005844:	02010413          	addi	s0,sp,32
    80005848:	0ff7f713          	andi	a4,a5,255
    8000584c:	00900693          	li	a3,9
    80005850:	04d70c63          	beq	a4,a3,800058a8 <devintr+0x84>
    80005854:	fff00713          	li	a4,-1
    80005858:	03f71713          	slli	a4,a4,0x3f
    8000585c:	00170713          	addi	a4,a4,1
    80005860:	00e78c63          	beq	a5,a4,80005878 <devintr+0x54>
    80005864:	01813083          	ld	ra,24(sp)
    80005868:	01013403          	ld	s0,16(sp)
    8000586c:	00813483          	ld	s1,8(sp)
    80005870:	02010113          	addi	sp,sp,32
    80005874:	00008067          	ret
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	c8c080e7          	jalr	-884(ra) # 80005504 <cpuid>
    80005880:	06050663          	beqz	a0,800058ec <devintr+0xc8>
    80005884:	144027f3          	csrr	a5,sip
    80005888:	ffd7f793          	andi	a5,a5,-3
    8000588c:	14479073          	csrw	sip,a5
    80005890:	01813083          	ld	ra,24(sp)
    80005894:	01013403          	ld	s0,16(sp)
    80005898:	00813483          	ld	s1,8(sp)
    8000589c:	00200513          	li	a0,2
    800058a0:	02010113          	addi	sp,sp,32
    800058a4:	00008067          	ret
    800058a8:	00000097          	auipc	ra,0x0
    800058ac:	24c080e7          	jalr	588(ra) # 80005af4 <plic_claim>
    800058b0:	00a00793          	li	a5,10
    800058b4:	00050493          	mv	s1,a0
    800058b8:	06f50663          	beq	a0,a5,80005924 <devintr+0x100>
    800058bc:	00100513          	li	a0,1
    800058c0:	fa0482e3          	beqz	s1,80005864 <devintr+0x40>
    800058c4:	00048593          	mv	a1,s1
    800058c8:	00003517          	auipc	a0,0x3
    800058cc:	d7850513          	addi	a0,a0,-648 # 80008640 <CONSOLE_STATUS+0x630>
    800058d0:	00000097          	auipc	ra,0x0
    800058d4:	668080e7          	jalr	1640(ra) # 80005f38 <__printf>
    800058d8:	00048513          	mv	a0,s1
    800058dc:	00000097          	auipc	ra,0x0
    800058e0:	250080e7          	jalr	592(ra) # 80005b2c <plic_complete>
    800058e4:	00100513          	li	a0,1
    800058e8:	f7dff06f          	j	80005864 <devintr+0x40>
    800058ec:	00006517          	auipc	a0,0x6
    800058f0:	a1450513          	addi	a0,a0,-1516 # 8000b300 <tickslock>
    800058f4:	00001097          	auipc	ra,0x1
    800058f8:	318080e7          	jalr	792(ra) # 80006c0c <acquire>
    800058fc:	00005717          	auipc	a4,0x5
    80005900:	8b870713          	addi	a4,a4,-1864 # 8000a1b4 <ticks>
    80005904:	00072783          	lw	a5,0(a4)
    80005908:	00006517          	auipc	a0,0x6
    8000590c:	9f850513          	addi	a0,a0,-1544 # 8000b300 <tickslock>
    80005910:	0017879b          	addiw	a5,a5,1
    80005914:	00f72023          	sw	a5,0(a4)
    80005918:	00001097          	auipc	ra,0x1
    8000591c:	3c0080e7          	jalr	960(ra) # 80006cd8 <release>
    80005920:	f65ff06f          	j	80005884 <devintr+0x60>
    80005924:	00001097          	auipc	ra,0x1
    80005928:	f1c080e7          	jalr	-228(ra) # 80006840 <uartintr>
    8000592c:	fadff06f          	j	800058d8 <devintr+0xb4>

0000000080005930 <kernelvec>:
    80005930:	f0010113          	addi	sp,sp,-256
    80005934:	00113023          	sd	ra,0(sp)
    80005938:	00213423          	sd	sp,8(sp)
    8000593c:	00313823          	sd	gp,16(sp)
    80005940:	00413c23          	sd	tp,24(sp)
    80005944:	02513023          	sd	t0,32(sp)
    80005948:	02613423          	sd	t1,40(sp)
    8000594c:	02713823          	sd	t2,48(sp)
    80005950:	02813c23          	sd	s0,56(sp)
    80005954:	04913023          	sd	s1,64(sp)
    80005958:	04a13423          	sd	a0,72(sp)
    8000595c:	04b13823          	sd	a1,80(sp)
    80005960:	04c13c23          	sd	a2,88(sp)
    80005964:	06d13023          	sd	a3,96(sp)
    80005968:	06e13423          	sd	a4,104(sp)
    8000596c:	06f13823          	sd	a5,112(sp)
    80005970:	07013c23          	sd	a6,120(sp)
    80005974:	09113023          	sd	a7,128(sp)
    80005978:	09213423          	sd	s2,136(sp)
    8000597c:	09313823          	sd	s3,144(sp)
    80005980:	09413c23          	sd	s4,152(sp)
    80005984:	0b513023          	sd	s5,160(sp)
    80005988:	0b613423          	sd	s6,168(sp)
    8000598c:	0b713823          	sd	s7,176(sp)
    80005990:	0b813c23          	sd	s8,184(sp)
    80005994:	0d913023          	sd	s9,192(sp)
    80005998:	0da13423          	sd	s10,200(sp)
    8000599c:	0db13823          	sd	s11,208(sp)
    800059a0:	0dc13c23          	sd	t3,216(sp)
    800059a4:	0fd13023          	sd	t4,224(sp)
    800059a8:	0fe13423          	sd	t5,232(sp)
    800059ac:	0ff13823          	sd	t6,240(sp)
    800059b0:	cd5ff0ef          	jal	ra,80005684 <kerneltrap>
    800059b4:	00013083          	ld	ra,0(sp)
    800059b8:	00813103          	ld	sp,8(sp)
    800059bc:	01013183          	ld	gp,16(sp)
    800059c0:	02013283          	ld	t0,32(sp)
    800059c4:	02813303          	ld	t1,40(sp)
    800059c8:	03013383          	ld	t2,48(sp)
    800059cc:	03813403          	ld	s0,56(sp)
    800059d0:	04013483          	ld	s1,64(sp)
    800059d4:	04813503          	ld	a0,72(sp)
    800059d8:	05013583          	ld	a1,80(sp)
    800059dc:	05813603          	ld	a2,88(sp)
    800059e0:	06013683          	ld	a3,96(sp)
    800059e4:	06813703          	ld	a4,104(sp)
    800059e8:	07013783          	ld	a5,112(sp)
    800059ec:	07813803          	ld	a6,120(sp)
    800059f0:	08013883          	ld	a7,128(sp)
    800059f4:	08813903          	ld	s2,136(sp)
    800059f8:	09013983          	ld	s3,144(sp)
    800059fc:	09813a03          	ld	s4,152(sp)
    80005a00:	0a013a83          	ld	s5,160(sp)
    80005a04:	0a813b03          	ld	s6,168(sp)
    80005a08:	0b013b83          	ld	s7,176(sp)
    80005a0c:	0b813c03          	ld	s8,184(sp)
    80005a10:	0c013c83          	ld	s9,192(sp)
    80005a14:	0c813d03          	ld	s10,200(sp)
    80005a18:	0d013d83          	ld	s11,208(sp)
    80005a1c:	0d813e03          	ld	t3,216(sp)
    80005a20:	0e013e83          	ld	t4,224(sp)
    80005a24:	0e813f03          	ld	t5,232(sp)
    80005a28:	0f013f83          	ld	t6,240(sp)
    80005a2c:	10010113          	addi	sp,sp,256
    80005a30:	10200073          	sret
    80005a34:	00000013          	nop
    80005a38:	00000013          	nop
    80005a3c:	00000013          	nop

0000000080005a40 <timervec>:
    80005a40:	34051573          	csrrw	a0,mscratch,a0
    80005a44:	00b53023          	sd	a1,0(a0)
    80005a48:	00c53423          	sd	a2,8(a0)
    80005a4c:	00d53823          	sd	a3,16(a0)
    80005a50:	01853583          	ld	a1,24(a0)
    80005a54:	02053603          	ld	a2,32(a0)
    80005a58:	0005b683          	ld	a3,0(a1)
    80005a5c:	00c686b3          	add	a3,a3,a2
    80005a60:	00d5b023          	sd	a3,0(a1)
    80005a64:	00200593          	li	a1,2
    80005a68:	14459073          	csrw	sip,a1
    80005a6c:	01053683          	ld	a3,16(a0)
    80005a70:	00853603          	ld	a2,8(a0)
    80005a74:	00053583          	ld	a1,0(a0)
    80005a78:	34051573          	csrrw	a0,mscratch,a0
    80005a7c:	30200073          	mret

0000000080005a80 <plicinit>:
    80005a80:	ff010113          	addi	sp,sp,-16
    80005a84:	00813423          	sd	s0,8(sp)
    80005a88:	01010413          	addi	s0,sp,16
    80005a8c:	00813403          	ld	s0,8(sp)
    80005a90:	0c0007b7          	lui	a5,0xc000
    80005a94:	00100713          	li	a4,1
    80005a98:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005a9c:	00e7a223          	sw	a4,4(a5)
    80005aa0:	01010113          	addi	sp,sp,16
    80005aa4:	00008067          	ret

0000000080005aa8 <plicinithart>:
    80005aa8:	ff010113          	addi	sp,sp,-16
    80005aac:	00813023          	sd	s0,0(sp)
    80005ab0:	00113423          	sd	ra,8(sp)
    80005ab4:	01010413          	addi	s0,sp,16
    80005ab8:	00000097          	auipc	ra,0x0
    80005abc:	a4c080e7          	jalr	-1460(ra) # 80005504 <cpuid>
    80005ac0:	0085171b          	slliw	a4,a0,0x8
    80005ac4:	0c0027b7          	lui	a5,0xc002
    80005ac8:	00e787b3          	add	a5,a5,a4
    80005acc:	40200713          	li	a4,1026
    80005ad0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005ad4:	00813083          	ld	ra,8(sp)
    80005ad8:	00013403          	ld	s0,0(sp)
    80005adc:	00d5151b          	slliw	a0,a0,0xd
    80005ae0:	0c2017b7          	lui	a5,0xc201
    80005ae4:	00a78533          	add	a0,a5,a0
    80005ae8:	00052023          	sw	zero,0(a0)
    80005aec:	01010113          	addi	sp,sp,16
    80005af0:	00008067          	ret

0000000080005af4 <plic_claim>:
    80005af4:	ff010113          	addi	sp,sp,-16
    80005af8:	00813023          	sd	s0,0(sp)
    80005afc:	00113423          	sd	ra,8(sp)
    80005b00:	01010413          	addi	s0,sp,16
    80005b04:	00000097          	auipc	ra,0x0
    80005b08:	a00080e7          	jalr	-1536(ra) # 80005504 <cpuid>
    80005b0c:	00813083          	ld	ra,8(sp)
    80005b10:	00013403          	ld	s0,0(sp)
    80005b14:	00d5151b          	slliw	a0,a0,0xd
    80005b18:	0c2017b7          	lui	a5,0xc201
    80005b1c:	00a78533          	add	a0,a5,a0
    80005b20:	00452503          	lw	a0,4(a0)
    80005b24:	01010113          	addi	sp,sp,16
    80005b28:	00008067          	ret

0000000080005b2c <plic_complete>:
    80005b2c:	fe010113          	addi	sp,sp,-32
    80005b30:	00813823          	sd	s0,16(sp)
    80005b34:	00913423          	sd	s1,8(sp)
    80005b38:	00113c23          	sd	ra,24(sp)
    80005b3c:	02010413          	addi	s0,sp,32
    80005b40:	00050493          	mv	s1,a0
    80005b44:	00000097          	auipc	ra,0x0
    80005b48:	9c0080e7          	jalr	-1600(ra) # 80005504 <cpuid>
    80005b4c:	01813083          	ld	ra,24(sp)
    80005b50:	01013403          	ld	s0,16(sp)
    80005b54:	00d5179b          	slliw	a5,a0,0xd
    80005b58:	0c201737          	lui	a4,0xc201
    80005b5c:	00f707b3          	add	a5,a4,a5
    80005b60:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005b64:	00813483          	ld	s1,8(sp)
    80005b68:	02010113          	addi	sp,sp,32
    80005b6c:	00008067          	ret

0000000080005b70 <consolewrite>:
    80005b70:	fb010113          	addi	sp,sp,-80
    80005b74:	04813023          	sd	s0,64(sp)
    80005b78:	04113423          	sd	ra,72(sp)
    80005b7c:	02913c23          	sd	s1,56(sp)
    80005b80:	03213823          	sd	s2,48(sp)
    80005b84:	03313423          	sd	s3,40(sp)
    80005b88:	03413023          	sd	s4,32(sp)
    80005b8c:	01513c23          	sd	s5,24(sp)
    80005b90:	05010413          	addi	s0,sp,80
    80005b94:	06c05c63          	blez	a2,80005c0c <consolewrite+0x9c>
    80005b98:	00060993          	mv	s3,a2
    80005b9c:	00050a13          	mv	s4,a0
    80005ba0:	00058493          	mv	s1,a1
    80005ba4:	00000913          	li	s2,0
    80005ba8:	fff00a93          	li	s5,-1
    80005bac:	01c0006f          	j	80005bc8 <consolewrite+0x58>
    80005bb0:	fbf44503          	lbu	a0,-65(s0)
    80005bb4:	0019091b          	addiw	s2,s2,1
    80005bb8:	00148493          	addi	s1,s1,1
    80005bbc:	00001097          	auipc	ra,0x1
    80005bc0:	a9c080e7          	jalr	-1380(ra) # 80006658 <uartputc>
    80005bc4:	03298063          	beq	s3,s2,80005be4 <consolewrite+0x74>
    80005bc8:	00048613          	mv	a2,s1
    80005bcc:	00100693          	li	a3,1
    80005bd0:	000a0593          	mv	a1,s4
    80005bd4:	fbf40513          	addi	a0,s0,-65
    80005bd8:	00000097          	auipc	ra,0x0
    80005bdc:	9e4080e7          	jalr	-1564(ra) # 800055bc <either_copyin>
    80005be0:	fd5518e3          	bne	a0,s5,80005bb0 <consolewrite+0x40>
    80005be4:	04813083          	ld	ra,72(sp)
    80005be8:	04013403          	ld	s0,64(sp)
    80005bec:	03813483          	ld	s1,56(sp)
    80005bf0:	02813983          	ld	s3,40(sp)
    80005bf4:	02013a03          	ld	s4,32(sp)
    80005bf8:	01813a83          	ld	s5,24(sp)
    80005bfc:	00090513          	mv	a0,s2
    80005c00:	03013903          	ld	s2,48(sp)
    80005c04:	05010113          	addi	sp,sp,80
    80005c08:	00008067          	ret
    80005c0c:	00000913          	li	s2,0
    80005c10:	fd5ff06f          	j	80005be4 <consolewrite+0x74>

0000000080005c14 <consoleread>:
    80005c14:	f9010113          	addi	sp,sp,-112
    80005c18:	06813023          	sd	s0,96(sp)
    80005c1c:	04913c23          	sd	s1,88(sp)
    80005c20:	05213823          	sd	s2,80(sp)
    80005c24:	05313423          	sd	s3,72(sp)
    80005c28:	05413023          	sd	s4,64(sp)
    80005c2c:	03513c23          	sd	s5,56(sp)
    80005c30:	03613823          	sd	s6,48(sp)
    80005c34:	03713423          	sd	s7,40(sp)
    80005c38:	03813023          	sd	s8,32(sp)
    80005c3c:	06113423          	sd	ra,104(sp)
    80005c40:	01913c23          	sd	s9,24(sp)
    80005c44:	07010413          	addi	s0,sp,112
    80005c48:	00060b93          	mv	s7,a2
    80005c4c:	00050913          	mv	s2,a0
    80005c50:	00058c13          	mv	s8,a1
    80005c54:	00060b1b          	sext.w	s6,a2
    80005c58:	00005497          	auipc	s1,0x5
    80005c5c:	6d048493          	addi	s1,s1,1744 # 8000b328 <cons>
    80005c60:	00400993          	li	s3,4
    80005c64:	fff00a13          	li	s4,-1
    80005c68:	00a00a93          	li	s5,10
    80005c6c:	05705e63          	blez	s7,80005cc8 <consoleread+0xb4>
    80005c70:	09c4a703          	lw	a4,156(s1)
    80005c74:	0984a783          	lw	a5,152(s1)
    80005c78:	0007071b          	sext.w	a4,a4
    80005c7c:	08e78463          	beq	a5,a4,80005d04 <consoleread+0xf0>
    80005c80:	07f7f713          	andi	a4,a5,127
    80005c84:	00e48733          	add	a4,s1,a4
    80005c88:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80005c8c:	0017869b          	addiw	a3,a5,1
    80005c90:	08d4ac23          	sw	a3,152(s1)
    80005c94:	00070c9b          	sext.w	s9,a4
    80005c98:	0b370663          	beq	a4,s3,80005d44 <consoleread+0x130>
    80005c9c:	00100693          	li	a3,1
    80005ca0:	f9f40613          	addi	a2,s0,-97
    80005ca4:	000c0593          	mv	a1,s8
    80005ca8:	00090513          	mv	a0,s2
    80005cac:	f8e40fa3          	sb	a4,-97(s0)
    80005cb0:	00000097          	auipc	ra,0x0
    80005cb4:	8c0080e7          	jalr	-1856(ra) # 80005570 <either_copyout>
    80005cb8:	01450863          	beq	a0,s4,80005cc8 <consoleread+0xb4>
    80005cbc:	001c0c13          	addi	s8,s8,1
    80005cc0:	fffb8b9b          	addiw	s7,s7,-1
    80005cc4:	fb5c94e3          	bne	s9,s5,80005c6c <consoleread+0x58>
    80005cc8:	000b851b          	sext.w	a0,s7
    80005ccc:	06813083          	ld	ra,104(sp)
    80005cd0:	06013403          	ld	s0,96(sp)
    80005cd4:	05813483          	ld	s1,88(sp)
    80005cd8:	05013903          	ld	s2,80(sp)
    80005cdc:	04813983          	ld	s3,72(sp)
    80005ce0:	04013a03          	ld	s4,64(sp)
    80005ce4:	03813a83          	ld	s5,56(sp)
    80005ce8:	02813b83          	ld	s7,40(sp)
    80005cec:	02013c03          	ld	s8,32(sp)
    80005cf0:	01813c83          	ld	s9,24(sp)
    80005cf4:	40ab053b          	subw	a0,s6,a0
    80005cf8:	03013b03          	ld	s6,48(sp)
    80005cfc:	07010113          	addi	sp,sp,112
    80005d00:	00008067          	ret
    80005d04:	00001097          	auipc	ra,0x1
    80005d08:	1d8080e7          	jalr	472(ra) # 80006edc <push_on>
    80005d0c:	0984a703          	lw	a4,152(s1)
    80005d10:	09c4a783          	lw	a5,156(s1)
    80005d14:	0007879b          	sext.w	a5,a5
    80005d18:	fef70ce3          	beq	a4,a5,80005d10 <consoleread+0xfc>
    80005d1c:	00001097          	auipc	ra,0x1
    80005d20:	234080e7          	jalr	564(ra) # 80006f50 <pop_on>
    80005d24:	0984a783          	lw	a5,152(s1)
    80005d28:	07f7f713          	andi	a4,a5,127
    80005d2c:	00e48733          	add	a4,s1,a4
    80005d30:	01874703          	lbu	a4,24(a4)
    80005d34:	0017869b          	addiw	a3,a5,1
    80005d38:	08d4ac23          	sw	a3,152(s1)
    80005d3c:	00070c9b          	sext.w	s9,a4
    80005d40:	f5371ee3          	bne	a4,s3,80005c9c <consoleread+0x88>
    80005d44:	000b851b          	sext.w	a0,s7
    80005d48:	f96bf2e3          	bgeu	s7,s6,80005ccc <consoleread+0xb8>
    80005d4c:	08f4ac23          	sw	a5,152(s1)
    80005d50:	f7dff06f          	j	80005ccc <consoleread+0xb8>

0000000080005d54 <consputc>:
    80005d54:	10000793          	li	a5,256
    80005d58:	00f50663          	beq	a0,a5,80005d64 <consputc+0x10>
    80005d5c:	00001317          	auipc	t1,0x1
    80005d60:	9f430067          	jr	-1548(t1) # 80006750 <uartputc_sync>
    80005d64:	ff010113          	addi	sp,sp,-16
    80005d68:	00113423          	sd	ra,8(sp)
    80005d6c:	00813023          	sd	s0,0(sp)
    80005d70:	01010413          	addi	s0,sp,16
    80005d74:	00800513          	li	a0,8
    80005d78:	00001097          	auipc	ra,0x1
    80005d7c:	9d8080e7          	jalr	-1576(ra) # 80006750 <uartputc_sync>
    80005d80:	02000513          	li	a0,32
    80005d84:	00001097          	auipc	ra,0x1
    80005d88:	9cc080e7          	jalr	-1588(ra) # 80006750 <uartputc_sync>
    80005d8c:	00013403          	ld	s0,0(sp)
    80005d90:	00813083          	ld	ra,8(sp)
    80005d94:	00800513          	li	a0,8
    80005d98:	01010113          	addi	sp,sp,16
    80005d9c:	00001317          	auipc	t1,0x1
    80005da0:	9b430067          	jr	-1612(t1) # 80006750 <uartputc_sync>

0000000080005da4 <consoleintr>:
    80005da4:	fe010113          	addi	sp,sp,-32
    80005da8:	00813823          	sd	s0,16(sp)
    80005dac:	00913423          	sd	s1,8(sp)
    80005db0:	01213023          	sd	s2,0(sp)
    80005db4:	00113c23          	sd	ra,24(sp)
    80005db8:	02010413          	addi	s0,sp,32
    80005dbc:	00005917          	auipc	s2,0x5
    80005dc0:	56c90913          	addi	s2,s2,1388 # 8000b328 <cons>
    80005dc4:	00050493          	mv	s1,a0
    80005dc8:	00090513          	mv	a0,s2
    80005dcc:	00001097          	auipc	ra,0x1
    80005dd0:	e40080e7          	jalr	-448(ra) # 80006c0c <acquire>
    80005dd4:	02048c63          	beqz	s1,80005e0c <consoleintr+0x68>
    80005dd8:	0a092783          	lw	a5,160(s2)
    80005ddc:	09892703          	lw	a4,152(s2)
    80005de0:	07f00693          	li	a3,127
    80005de4:	40e7873b          	subw	a4,a5,a4
    80005de8:	02e6e263          	bltu	a3,a4,80005e0c <consoleintr+0x68>
    80005dec:	00d00713          	li	a4,13
    80005df0:	04e48063          	beq	s1,a4,80005e30 <consoleintr+0x8c>
    80005df4:	07f7f713          	andi	a4,a5,127
    80005df8:	00e90733          	add	a4,s2,a4
    80005dfc:	0017879b          	addiw	a5,a5,1
    80005e00:	0af92023          	sw	a5,160(s2)
    80005e04:	00970c23          	sb	s1,24(a4)
    80005e08:	08f92e23          	sw	a5,156(s2)
    80005e0c:	01013403          	ld	s0,16(sp)
    80005e10:	01813083          	ld	ra,24(sp)
    80005e14:	00813483          	ld	s1,8(sp)
    80005e18:	00013903          	ld	s2,0(sp)
    80005e1c:	00005517          	auipc	a0,0x5
    80005e20:	50c50513          	addi	a0,a0,1292 # 8000b328 <cons>
    80005e24:	02010113          	addi	sp,sp,32
    80005e28:	00001317          	auipc	t1,0x1
    80005e2c:	eb030067          	jr	-336(t1) # 80006cd8 <release>
    80005e30:	00a00493          	li	s1,10
    80005e34:	fc1ff06f          	j	80005df4 <consoleintr+0x50>

0000000080005e38 <consoleinit>:
    80005e38:	fe010113          	addi	sp,sp,-32
    80005e3c:	00113c23          	sd	ra,24(sp)
    80005e40:	00813823          	sd	s0,16(sp)
    80005e44:	00913423          	sd	s1,8(sp)
    80005e48:	02010413          	addi	s0,sp,32
    80005e4c:	00005497          	auipc	s1,0x5
    80005e50:	4dc48493          	addi	s1,s1,1244 # 8000b328 <cons>
    80005e54:	00048513          	mv	a0,s1
    80005e58:	00003597          	auipc	a1,0x3
    80005e5c:	84058593          	addi	a1,a1,-1984 # 80008698 <CONSOLE_STATUS+0x688>
    80005e60:	00001097          	auipc	ra,0x1
    80005e64:	d88080e7          	jalr	-632(ra) # 80006be8 <initlock>
    80005e68:	00000097          	auipc	ra,0x0
    80005e6c:	7ac080e7          	jalr	1964(ra) # 80006614 <uartinit>
    80005e70:	01813083          	ld	ra,24(sp)
    80005e74:	01013403          	ld	s0,16(sp)
    80005e78:	00000797          	auipc	a5,0x0
    80005e7c:	d9c78793          	addi	a5,a5,-612 # 80005c14 <consoleread>
    80005e80:	0af4bc23          	sd	a5,184(s1)
    80005e84:	00000797          	auipc	a5,0x0
    80005e88:	cec78793          	addi	a5,a5,-788 # 80005b70 <consolewrite>
    80005e8c:	0cf4b023          	sd	a5,192(s1)
    80005e90:	00813483          	ld	s1,8(sp)
    80005e94:	02010113          	addi	sp,sp,32
    80005e98:	00008067          	ret

0000000080005e9c <console_read>:
    80005e9c:	ff010113          	addi	sp,sp,-16
    80005ea0:	00813423          	sd	s0,8(sp)
    80005ea4:	01010413          	addi	s0,sp,16
    80005ea8:	00813403          	ld	s0,8(sp)
    80005eac:	00005317          	auipc	t1,0x5
    80005eb0:	53433303          	ld	t1,1332(t1) # 8000b3e0 <devsw+0x10>
    80005eb4:	01010113          	addi	sp,sp,16
    80005eb8:	00030067          	jr	t1

0000000080005ebc <console_write>:
    80005ebc:	ff010113          	addi	sp,sp,-16
    80005ec0:	00813423          	sd	s0,8(sp)
    80005ec4:	01010413          	addi	s0,sp,16
    80005ec8:	00813403          	ld	s0,8(sp)
    80005ecc:	00005317          	auipc	t1,0x5
    80005ed0:	51c33303          	ld	t1,1308(t1) # 8000b3e8 <devsw+0x18>
    80005ed4:	01010113          	addi	sp,sp,16
    80005ed8:	00030067          	jr	t1

0000000080005edc <panic>:
    80005edc:	fe010113          	addi	sp,sp,-32
    80005ee0:	00113c23          	sd	ra,24(sp)
    80005ee4:	00813823          	sd	s0,16(sp)
    80005ee8:	00913423          	sd	s1,8(sp)
    80005eec:	02010413          	addi	s0,sp,32
    80005ef0:	00050493          	mv	s1,a0
    80005ef4:	00002517          	auipc	a0,0x2
    80005ef8:	7ac50513          	addi	a0,a0,1964 # 800086a0 <CONSOLE_STATUS+0x690>
    80005efc:	00005797          	auipc	a5,0x5
    80005f00:	5807a623          	sw	zero,1420(a5) # 8000b488 <pr+0x18>
    80005f04:	00000097          	auipc	ra,0x0
    80005f08:	034080e7          	jalr	52(ra) # 80005f38 <__printf>
    80005f0c:	00048513          	mv	a0,s1
    80005f10:	00000097          	auipc	ra,0x0
    80005f14:	028080e7          	jalr	40(ra) # 80005f38 <__printf>
    80005f18:	00002517          	auipc	a0,0x2
    80005f1c:	59050513          	addi	a0,a0,1424 # 800084a8 <CONSOLE_STATUS+0x498>
    80005f20:	00000097          	auipc	ra,0x0
    80005f24:	018080e7          	jalr	24(ra) # 80005f38 <__printf>
    80005f28:	00100793          	li	a5,1
    80005f2c:	00004717          	auipc	a4,0x4
    80005f30:	28f72623          	sw	a5,652(a4) # 8000a1b8 <panicked>
    80005f34:	0000006f          	j	80005f34 <panic+0x58>

0000000080005f38 <__printf>:
    80005f38:	f3010113          	addi	sp,sp,-208
    80005f3c:	08813023          	sd	s0,128(sp)
    80005f40:	07313423          	sd	s3,104(sp)
    80005f44:	09010413          	addi	s0,sp,144
    80005f48:	05813023          	sd	s8,64(sp)
    80005f4c:	08113423          	sd	ra,136(sp)
    80005f50:	06913c23          	sd	s1,120(sp)
    80005f54:	07213823          	sd	s2,112(sp)
    80005f58:	07413023          	sd	s4,96(sp)
    80005f5c:	05513c23          	sd	s5,88(sp)
    80005f60:	05613823          	sd	s6,80(sp)
    80005f64:	05713423          	sd	s7,72(sp)
    80005f68:	03913c23          	sd	s9,56(sp)
    80005f6c:	03a13823          	sd	s10,48(sp)
    80005f70:	03b13423          	sd	s11,40(sp)
    80005f74:	00005317          	auipc	t1,0x5
    80005f78:	4fc30313          	addi	t1,t1,1276 # 8000b470 <pr>
    80005f7c:	01832c03          	lw	s8,24(t1)
    80005f80:	00b43423          	sd	a1,8(s0)
    80005f84:	00c43823          	sd	a2,16(s0)
    80005f88:	00d43c23          	sd	a3,24(s0)
    80005f8c:	02e43023          	sd	a4,32(s0)
    80005f90:	02f43423          	sd	a5,40(s0)
    80005f94:	03043823          	sd	a6,48(s0)
    80005f98:	03143c23          	sd	a7,56(s0)
    80005f9c:	00050993          	mv	s3,a0
    80005fa0:	4a0c1663          	bnez	s8,8000644c <__printf+0x514>
    80005fa4:	60098c63          	beqz	s3,800065bc <__printf+0x684>
    80005fa8:	0009c503          	lbu	a0,0(s3)
    80005fac:	00840793          	addi	a5,s0,8
    80005fb0:	f6f43c23          	sd	a5,-136(s0)
    80005fb4:	00000493          	li	s1,0
    80005fb8:	22050063          	beqz	a0,800061d8 <__printf+0x2a0>
    80005fbc:	00002a37          	lui	s4,0x2
    80005fc0:	00018ab7          	lui	s5,0x18
    80005fc4:	000f4b37          	lui	s6,0xf4
    80005fc8:	00989bb7          	lui	s7,0x989
    80005fcc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005fd0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005fd4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005fd8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80005fdc:	00148c9b          	addiw	s9,s1,1
    80005fe0:	02500793          	li	a5,37
    80005fe4:	01998933          	add	s2,s3,s9
    80005fe8:	38f51263          	bne	a0,a5,8000636c <__printf+0x434>
    80005fec:	00094783          	lbu	a5,0(s2)
    80005ff0:	00078c9b          	sext.w	s9,a5
    80005ff4:	1e078263          	beqz	a5,800061d8 <__printf+0x2a0>
    80005ff8:	0024849b          	addiw	s1,s1,2
    80005ffc:	07000713          	li	a4,112
    80006000:	00998933          	add	s2,s3,s1
    80006004:	38e78a63          	beq	a5,a4,80006398 <__printf+0x460>
    80006008:	20f76863          	bltu	a4,a5,80006218 <__printf+0x2e0>
    8000600c:	42a78863          	beq	a5,a0,8000643c <__printf+0x504>
    80006010:	06400713          	li	a4,100
    80006014:	40e79663          	bne	a5,a4,80006420 <__printf+0x4e8>
    80006018:	f7843783          	ld	a5,-136(s0)
    8000601c:	0007a603          	lw	a2,0(a5)
    80006020:	00878793          	addi	a5,a5,8
    80006024:	f6f43c23          	sd	a5,-136(s0)
    80006028:	42064a63          	bltz	a2,8000645c <__printf+0x524>
    8000602c:	00a00713          	li	a4,10
    80006030:	02e677bb          	remuw	a5,a2,a4
    80006034:	00002d97          	auipc	s11,0x2
    80006038:	694d8d93          	addi	s11,s11,1684 # 800086c8 <digits>
    8000603c:	00900593          	li	a1,9
    80006040:	0006051b          	sext.w	a0,a2
    80006044:	00000c93          	li	s9,0
    80006048:	02079793          	slli	a5,a5,0x20
    8000604c:	0207d793          	srli	a5,a5,0x20
    80006050:	00fd87b3          	add	a5,s11,a5
    80006054:	0007c783          	lbu	a5,0(a5)
    80006058:	02e656bb          	divuw	a3,a2,a4
    8000605c:	f8f40023          	sb	a5,-128(s0)
    80006060:	14c5d863          	bge	a1,a2,800061b0 <__printf+0x278>
    80006064:	06300593          	li	a1,99
    80006068:	00100c93          	li	s9,1
    8000606c:	02e6f7bb          	remuw	a5,a3,a4
    80006070:	02079793          	slli	a5,a5,0x20
    80006074:	0207d793          	srli	a5,a5,0x20
    80006078:	00fd87b3          	add	a5,s11,a5
    8000607c:	0007c783          	lbu	a5,0(a5)
    80006080:	02e6d73b          	divuw	a4,a3,a4
    80006084:	f8f400a3          	sb	a5,-127(s0)
    80006088:	12a5f463          	bgeu	a1,a0,800061b0 <__printf+0x278>
    8000608c:	00a00693          	li	a3,10
    80006090:	00900593          	li	a1,9
    80006094:	02d777bb          	remuw	a5,a4,a3
    80006098:	02079793          	slli	a5,a5,0x20
    8000609c:	0207d793          	srli	a5,a5,0x20
    800060a0:	00fd87b3          	add	a5,s11,a5
    800060a4:	0007c503          	lbu	a0,0(a5)
    800060a8:	02d757bb          	divuw	a5,a4,a3
    800060ac:	f8a40123          	sb	a0,-126(s0)
    800060b0:	48e5f263          	bgeu	a1,a4,80006534 <__printf+0x5fc>
    800060b4:	06300513          	li	a0,99
    800060b8:	02d7f5bb          	remuw	a1,a5,a3
    800060bc:	02059593          	slli	a1,a1,0x20
    800060c0:	0205d593          	srli	a1,a1,0x20
    800060c4:	00bd85b3          	add	a1,s11,a1
    800060c8:	0005c583          	lbu	a1,0(a1)
    800060cc:	02d7d7bb          	divuw	a5,a5,a3
    800060d0:	f8b401a3          	sb	a1,-125(s0)
    800060d4:	48e57263          	bgeu	a0,a4,80006558 <__printf+0x620>
    800060d8:	3e700513          	li	a0,999
    800060dc:	02d7f5bb          	remuw	a1,a5,a3
    800060e0:	02059593          	slli	a1,a1,0x20
    800060e4:	0205d593          	srli	a1,a1,0x20
    800060e8:	00bd85b3          	add	a1,s11,a1
    800060ec:	0005c583          	lbu	a1,0(a1)
    800060f0:	02d7d7bb          	divuw	a5,a5,a3
    800060f4:	f8b40223          	sb	a1,-124(s0)
    800060f8:	46e57663          	bgeu	a0,a4,80006564 <__printf+0x62c>
    800060fc:	02d7f5bb          	remuw	a1,a5,a3
    80006100:	02059593          	slli	a1,a1,0x20
    80006104:	0205d593          	srli	a1,a1,0x20
    80006108:	00bd85b3          	add	a1,s11,a1
    8000610c:	0005c583          	lbu	a1,0(a1)
    80006110:	02d7d7bb          	divuw	a5,a5,a3
    80006114:	f8b402a3          	sb	a1,-123(s0)
    80006118:	46ea7863          	bgeu	s4,a4,80006588 <__printf+0x650>
    8000611c:	02d7f5bb          	remuw	a1,a5,a3
    80006120:	02059593          	slli	a1,a1,0x20
    80006124:	0205d593          	srli	a1,a1,0x20
    80006128:	00bd85b3          	add	a1,s11,a1
    8000612c:	0005c583          	lbu	a1,0(a1)
    80006130:	02d7d7bb          	divuw	a5,a5,a3
    80006134:	f8b40323          	sb	a1,-122(s0)
    80006138:	3eeaf863          	bgeu	s5,a4,80006528 <__printf+0x5f0>
    8000613c:	02d7f5bb          	remuw	a1,a5,a3
    80006140:	02059593          	slli	a1,a1,0x20
    80006144:	0205d593          	srli	a1,a1,0x20
    80006148:	00bd85b3          	add	a1,s11,a1
    8000614c:	0005c583          	lbu	a1,0(a1)
    80006150:	02d7d7bb          	divuw	a5,a5,a3
    80006154:	f8b403a3          	sb	a1,-121(s0)
    80006158:	42eb7e63          	bgeu	s6,a4,80006594 <__printf+0x65c>
    8000615c:	02d7f5bb          	remuw	a1,a5,a3
    80006160:	02059593          	slli	a1,a1,0x20
    80006164:	0205d593          	srli	a1,a1,0x20
    80006168:	00bd85b3          	add	a1,s11,a1
    8000616c:	0005c583          	lbu	a1,0(a1)
    80006170:	02d7d7bb          	divuw	a5,a5,a3
    80006174:	f8b40423          	sb	a1,-120(s0)
    80006178:	42ebfc63          	bgeu	s7,a4,800065b0 <__printf+0x678>
    8000617c:	02079793          	slli	a5,a5,0x20
    80006180:	0207d793          	srli	a5,a5,0x20
    80006184:	00fd8db3          	add	s11,s11,a5
    80006188:	000dc703          	lbu	a4,0(s11)
    8000618c:	00a00793          	li	a5,10
    80006190:	00900c93          	li	s9,9
    80006194:	f8e404a3          	sb	a4,-119(s0)
    80006198:	00065c63          	bgez	a2,800061b0 <__printf+0x278>
    8000619c:	f9040713          	addi	a4,s0,-112
    800061a0:	00f70733          	add	a4,a4,a5
    800061a4:	02d00693          	li	a3,45
    800061a8:	fed70823          	sb	a3,-16(a4)
    800061ac:	00078c93          	mv	s9,a5
    800061b0:	f8040793          	addi	a5,s0,-128
    800061b4:	01978cb3          	add	s9,a5,s9
    800061b8:	f7f40d13          	addi	s10,s0,-129
    800061bc:	000cc503          	lbu	a0,0(s9)
    800061c0:	fffc8c93          	addi	s9,s9,-1
    800061c4:	00000097          	auipc	ra,0x0
    800061c8:	b90080e7          	jalr	-1136(ra) # 80005d54 <consputc>
    800061cc:	ffac98e3          	bne	s9,s10,800061bc <__printf+0x284>
    800061d0:	00094503          	lbu	a0,0(s2)
    800061d4:	e00514e3          	bnez	a0,80005fdc <__printf+0xa4>
    800061d8:	1a0c1663          	bnez	s8,80006384 <__printf+0x44c>
    800061dc:	08813083          	ld	ra,136(sp)
    800061e0:	08013403          	ld	s0,128(sp)
    800061e4:	07813483          	ld	s1,120(sp)
    800061e8:	07013903          	ld	s2,112(sp)
    800061ec:	06813983          	ld	s3,104(sp)
    800061f0:	06013a03          	ld	s4,96(sp)
    800061f4:	05813a83          	ld	s5,88(sp)
    800061f8:	05013b03          	ld	s6,80(sp)
    800061fc:	04813b83          	ld	s7,72(sp)
    80006200:	04013c03          	ld	s8,64(sp)
    80006204:	03813c83          	ld	s9,56(sp)
    80006208:	03013d03          	ld	s10,48(sp)
    8000620c:	02813d83          	ld	s11,40(sp)
    80006210:	0d010113          	addi	sp,sp,208
    80006214:	00008067          	ret
    80006218:	07300713          	li	a4,115
    8000621c:	1ce78a63          	beq	a5,a4,800063f0 <__printf+0x4b8>
    80006220:	07800713          	li	a4,120
    80006224:	1ee79e63          	bne	a5,a4,80006420 <__printf+0x4e8>
    80006228:	f7843783          	ld	a5,-136(s0)
    8000622c:	0007a703          	lw	a4,0(a5)
    80006230:	00878793          	addi	a5,a5,8
    80006234:	f6f43c23          	sd	a5,-136(s0)
    80006238:	28074263          	bltz	a4,800064bc <__printf+0x584>
    8000623c:	00002d97          	auipc	s11,0x2
    80006240:	48cd8d93          	addi	s11,s11,1164 # 800086c8 <digits>
    80006244:	00f77793          	andi	a5,a4,15
    80006248:	00fd87b3          	add	a5,s11,a5
    8000624c:	0007c683          	lbu	a3,0(a5)
    80006250:	00f00613          	li	a2,15
    80006254:	0007079b          	sext.w	a5,a4
    80006258:	f8d40023          	sb	a3,-128(s0)
    8000625c:	0047559b          	srliw	a1,a4,0x4
    80006260:	0047569b          	srliw	a3,a4,0x4
    80006264:	00000c93          	li	s9,0
    80006268:	0ee65063          	bge	a2,a4,80006348 <__printf+0x410>
    8000626c:	00f6f693          	andi	a3,a3,15
    80006270:	00dd86b3          	add	a3,s11,a3
    80006274:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006278:	0087d79b          	srliw	a5,a5,0x8
    8000627c:	00100c93          	li	s9,1
    80006280:	f8d400a3          	sb	a3,-127(s0)
    80006284:	0cb67263          	bgeu	a2,a1,80006348 <__printf+0x410>
    80006288:	00f7f693          	andi	a3,a5,15
    8000628c:	00dd86b3          	add	a3,s11,a3
    80006290:	0006c583          	lbu	a1,0(a3)
    80006294:	00f00613          	li	a2,15
    80006298:	0047d69b          	srliw	a3,a5,0x4
    8000629c:	f8b40123          	sb	a1,-126(s0)
    800062a0:	0047d593          	srli	a1,a5,0x4
    800062a4:	28f67e63          	bgeu	a2,a5,80006540 <__printf+0x608>
    800062a8:	00f6f693          	andi	a3,a3,15
    800062ac:	00dd86b3          	add	a3,s11,a3
    800062b0:	0006c503          	lbu	a0,0(a3)
    800062b4:	0087d813          	srli	a6,a5,0x8
    800062b8:	0087d69b          	srliw	a3,a5,0x8
    800062bc:	f8a401a3          	sb	a0,-125(s0)
    800062c0:	28b67663          	bgeu	a2,a1,8000654c <__printf+0x614>
    800062c4:	00f6f693          	andi	a3,a3,15
    800062c8:	00dd86b3          	add	a3,s11,a3
    800062cc:	0006c583          	lbu	a1,0(a3)
    800062d0:	00c7d513          	srli	a0,a5,0xc
    800062d4:	00c7d69b          	srliw	a3,a5,0xc
    800062d8:	f8b40223          	sb	a1,-124(s0)
    800062dc:	29067a63          	bgeu	a2,a6,80006570 <__printf+0x638>
    800062e0:	00f6f693          	andi	a3,a3,15
    800062e4:	00dd86b3          	add	a3,s11,a3
    800062e8:	0006c583          	lbu	a1,0(a3)
    800062ec:	0107d813          	srli	a6,a5,0x10
    800062f0:	0107d69b          	srliw	a3,a5,0x10
    800062f4:	f8b402a3          	sb	a1,-123(s0)
    800062f8:	28a67263          	bgeu	a2,a0,8000657c <__printf+0x644>
    800062fc:	00f6f693          	andi	a3,a3,15
    80006300:	00dd86b3          	add	a3,s11,a3
    80006304:	0006c683          	lbu	a3,0(a3)
    80006308:	0147d79b          	srliw	a5,a5,0x14
    8000630c:	f8d40323          	sb	a3,-122(s0)
    80006310:	21067663          	bgeu	a2,a6,8000651c <__printf+0x5e4>
    80006314:	02079793          	slli	a5,a5,0x20
    80006318:	0207d793          	srli	a5,a5,0x20
    8000631c:	00fd8db3          	add	s11,s11,a5
    80006320:	000dc683          	lbu	a3,0(s11)
    80006324:	00800793          	li	a5,8
    80006328:	00700c93          	li	s9,7
    8000632c:	f8d403a3          	sb	a3,-121(s0)
    80006330:	00075c63          	bgez	a4,80006348 <__printf+0x410>
    80006334:	f9040713          	addi	a4,s0,-112
    80006338:	00f70733          	add	a4,a4,a5
    8000633c:	02d00693          	li	a3,45
    80006340:	fed70823          	sb	a3,-16(a4)
    80006344:	00078c93          	mv	s9,a5
    80006348:	f8040793          	addi	a5,s0,-128
    8000634c:	01978cb3          	add	s9,a5,s9
    80006350:	f7f40d13          	addi	s10,s0,-129
    80006354:	000cc503          	lbu	a0,0(s9)
    80006358:	fffc8c93          	addi	s9,s9,-1
    8000635c:	00000097          	auipc	ra,0x0
    80006360:	9f8080e7          	jalr	-1544(ra) # 80005d54 <consputc>
    80006364:	ff9d18e3          	bne	s10,s9,80006354 <__printf+0x41c>
    80006368:	0100006f          	j	80006378 <__printf+0x440>
    8000636c:	00000097          	auipc	ra,0x0
    80006370:	9e8080e7          	jalr	-1560(ra) # 80005d54 <consputc>
    80006374:	000c8493          	mv	s1,s9
    80006378:	00094503          	lbu	a0,0(s2)
    8000637c:	c60510e3          	bnez	a0,80005fdc <__printf+0xa4>
    80006380:	e40c0ee3          	beqz	s8,800061dc <__printf+0x2a4>
    80006384:	00005517          	auipc	a0,0x5
    80006388:	0ec50513          	addi	a0,a0,236 # 8000b470 <pr>
    8000638c:	00001097          	auipc	ra,0x1
    80006390:	94c080e7          	jalr	-1716(ra) # 80006cd8 <release>
    80006394:	e49ff06f          	j	800061dc <__printf+0x2a4>
    80006398:	f7843783          	ld	a5,-136(s0)
    8000639c:	03000513          	li	a0,48
    800063a0:	01000d13          	li	s10,16
    800063a4:	00878713          	addi	a4,a5,8
    800063a8:	0007bc83          	ld	s9,0(a5)
    800063ac:	f6e43c23          	sd	a4,-136(s0)
    800063b0:	00000097          	auipc	ra,0x0
    800063b4:	9a4080e7          	jalr	-1628(ra) # 80005d54 <consputc>
    800063b8:	07800513          	li	a0,120
    800063bc:	00000097          	auipc	ra,0x0
    800063c0:	998080e7          	jalr	-1640(ra) # 80005d54 <consputc>
    800063c4:	00002d97          	auipc	s11,0x2
    800063c8:	304d8d93          	addi	s11,s11,772 # 800086c8 <digits>
    800063cc:	03ccd793          	srli	a5,s9,0x3c
    800063d0:	00fd87b3          	add	a5,s11,a5
    800063d4:	0007c503          	lbu	a0,0(a5)
    800063d8:	fffd0d1b          	addiw	s10,s10,-1
    800063dc:	004c9c93          	slli	s9,s9,0x4
    800063e0:	00000097          	auipc	ra,0x0
    800063e4:	974080e7          	jalr	-1676(ra) # 80005d54 <consputc>
    800063e8:	fe0d12e3          	bnez	s10,800063cc <__printf+0x494>
    800063ec:	f8dff06f          	j	80006378 <__printf+0x440>
    800063f0:	f7843783          	ld	a5,-136(s0)
    800063f4:	0007bc83          	ld	s9,0(a5)
    800063f8:	00878793          	addi	a5,a5,8
    800063fc:	f6f43c23          	sd	a5,-136(s0)
    80006400:	000c9a63          	bnez	s9,80006414 <__printf+0x4dc>
    80006404:	1080006f          	j	8000650c <__printf+0x5d4>
    80006408:	001c8c93          	addi	s9,s9,1
    8000640c:	00000097          	auipc	ra,0x0
    80006410:	948080e7          	jalr	-1720(ra) # 80005d54 <consputc>
    80006414:	000cc503          	lbu	a0,0(s9)
    80006418:	fe0518e3          	bnez	a0,80006408 <__printf+0x4d0>
    8000641c:	f5dff06f          	j	80006378 <__printf+0x440>
    80006420:	02500513          	li	a0,37
    80006424:	00000097          	auipc	ra,0x0
    80006428:	930080e7          	jalr	-1744(ra) # 80005d54 <consputc>
    8000642c:	000c8513          	mv	a0,s9
    80006430:	00000097          	auipc	ra,0x0
    80006434:	924080e7          	jalr	-1756(ra) # 80005d54 <consputc>
    80006438:	f41ff06f          	j	80006378 <__printf+0x440>
    8000643c:	02500513          	li	a0,37
    80006440:	00000097          	auipc	ra,0x0
    80006444:	914080e7          	jalr	-1772(ra) # 80005d54 <consputc>
    80006448:	f31ff06f          	j	80006378 <__printf+0x440>
    8000644c:	00030513          	mv	a0,t1
    80006450:	00000097          	auipc	ra,0x0
    80006454:	7bc080e7          	jalr	1980(ra) # 80006c0c <acquire>
    80006458:	b4dff06f          	j	80005fa4 <__printf+0x6c>
    8000645c:	40c0053b          	negw	a0,a2
    80006460:	00a00713          	li	a4,10
    80006464:	02e576bb          	remuw	a3,a0,a4
    80006468:	00002d97          	auipc	s11,0x2
    8000646c:	260d8d93          	addi	s11,s11,608 # 800086c8 <digits>
    80006470:	ff700593          	li	a1,-9
    80006474:	02069693          	slli	a3,a3,0x20
    80006478:	0206d693          	srli	a3,a3,0x20
    8000647c:	00dd86b3          	add	a3,s11,a3
    80006480:	0006c683          	lbu	a3,0(a3)
    80006484:	02e557bb          	divuw	a5,a0,a4
    80006488:	f8d40023          	sb	a3,-128(s0)
    8000648c:	10b65e63          	bge	a2,a1,800065a8 <__printf+0x670>
    80006490:	06300593          	li	a1,99
    80006494:	02e7f6bb          	remuw	a3,a5,a4
    80006498:	02069693          	slli	a3,a3,0x20
    8000649c:	0206d693          	srli	a3,a3,0x20
    800064a0:	00dd86b3          	add	a3,s11,a3
    800064a4:	0006c683          	lbu	a3,0(a3)
    800064a8:	02e7d73b          	divuw	a4,a5,a4
    800064ac:	00200793          	li	a5,2
    800064b0:	f8d400a3          	sb	a3,-127(s0)
    800064b4:	bca5ece3          	bltu	a1,a0,8000608c <__printf+0x154>
    800064b8:	ce5ff06f          	j	8000619c <__printf+0x264>
    800064bc:	40e007bb          	negw	a5,a4
    800064c0:	00002d97          	auipc	s11,0x2
    800064c4:	208d8d93          	addi	s11,s11,520 # 800086c8 <digits>
    800064c8:	00f7f693          	andi	a3,a5,15
    800064cc:	00dd86b3          	add	a3,s11,a3
    800064d0:	0006c583          	lbu	a1,0(a3)
    800064d4:	ff100613          	li	a2,-15
    800064d8:	0047d69b          	srliw	a3,a5,0x4
    800064dc:	f8b40023          	sb	a1,-128(s0)
    800064e0:	0047d59b          	srliw	a1,a5,0x4
    800064e4:	0ac75e63          	bge	a4,a2,800065a0 <__printf+0x668>
    800064e8:	00f6f693          	andi	a3,a3,15
    800064ec:	00dd86b3          	add	a3,s11,a3
    800064f0:	0006c603          	lbu	a2,0(a3)
    800064f4:	00f00693          	li	a3,15
    800064f8:	0087d79b          	srliw	a5,a5,0x8
    800064fc:	f8c400a3          	sb	a2,-127(s0)
    80006500:	d8b6e4e3          	bltu	a3,a1,80006288 <__printf+0x350>
    80006504:	00200793          	li	a5,2
    80006508:	e2dff06f          	j	80006334 <__printf+0x3fc>
    8000650c:	00002c97          	auipc	s9,0x2
    80006510:	19cc8c93          	addi	s9,s9,412 # 800086a8 <CONSOLE_STATUS+0x698>
    80006514:	02800513          	li	a0,40
    80006518:	ef1ff06f          	j	80006408 <__printf+0x4d0>
    8000651c:	00700793          	li	a5,7
    80006520:	00600c93          	li	s9,6
    80006524:	e0dff06f          	j	80006330 <__printf+0x3f8>
    80006528:	00700793          	li	a5,7
    8000652c:	00600c93          	li	s9,6
    80006530:	c69ff06f          	j	80006198 <__printf+0x260>
    80006534:	00300793          	li	a5,3
    80006538:	00200c93          	li	s9,2
    8000653c:	c5dff06f          	j	80006198 <__printf+0x260>
    80006540:	00300793          	li	a5,3
    80006544:	00200c93          	li	s9,2
    80006548:	de9ff06f          	j	80006330 <__printf+0x3f8>
    8000654c:	00400793          	li	a5,4
    80006550:	00300c93          	li	s9,3
    80006554:	dddff06f          	j	80006330 <__printf+0x3f8>
    80006558:	00400793          	li	a5,4
    8000655c:	00300c93          	li	s9,3
    80006560:	c39ff06f          	j	80006198 <__printf+0x260>
    80006564:	00500793          	li	a5,5
    80006568:	00400c93          	li	s9,4
    8000656c:	c2dff06f          	j	80006198 <__printf+0x260>
    80006570:	00500793          	li	a5,5
    80006574:	00400c93          	li	s9,4
    80006578:	db9ff06f          	j	80006330 <__printf+0x3f8>
    8000657c:	00600793          	li	a5,6
    80006580:	00500c93          	li	s9,5
    80006584:	dadff06f          	j	80006330 <__printf+0x3f8>
    80006588:	00600793          	li	a5,6
    8000658c:	00500c93          	li	s9,5
    80006590:	c09ff06f          	j	80006198 <__printf+0x260>
    80006594:	00800793          	li	a5,8
    80006598:	00700c93          	li	s9,7
    8000659c:	bfdff06f          	j	80006198 <__printf+0x260>
    800065a0:	00100793          	li	a5,1
    800065a4:	d91ff06f          	j	80006334 <__printf+0x3fc>
    800065a8:	00100793          	li	a5,1
    800065ac:	bf1ff06f          	j	8000619c <__printf+0x264>
    800065b0:	00900793          	li	a5,9
    800065b4:	00800c93          	li	s9,8
    800065b8:	be1ff06f          	j	80006198 <__printf+0x260>
    800065bc:	00002517          	auipc	a0,0x2
    800065c0:	0f450513          	addi	a0,a0,244 # 800086b0 <CONSOLE_STATUS+0x6a0>
    800065c4:	00000097          	auipc	ra,0x0
    800065c8:	918080e7          	jalr	-1768(ra) # 80005edc <panic>

00000000800065cc <printfinit>:
    800065cc:	fe010113          	addi	sp,sp,-32
    800065d0:	00813823          	sd	s0,16(sp)
    800065d4:	00913423          	sd	s1,8(sp)
    800065d8:	00113c23          	sd	ra,24(sp)
    800065dc:	02010413          	addi	s0,sp,32
    800065e0:	00005497          	auipc	s1,0x5
    800065e4:	e9048493          	addi	s1,s1,-368 # 8000b470 <pr>
    800065e8:	00048513          	mv	a0,s1
    800065ec:	00002597          	auipc	a1,0x2
    800065f0:	0d458593          	addi	a1,a1,212 # 800086c0 <CONSOLE_STATUS+0x6b0>
    800065f4:	00000097          	auipc	ra,0x0
    800065f8:	5f4080e7          	jalr	1524(ra) # 80006be8 <initlock>
    800065fc:	01813083          	ld	ra,24(sp)
    80006600:	01013403          	ld	s0,16(sp)
    80006604:	0004ac23          	sw	zero,24(s1)
    80006608:	00813483          	ld	s1,8(sp)
    8000660c:	02010113          	addi	sp,sp,32
    80006610:	00008067          	ret

0000000080006614 <uartinit>:
    80006614:	ff010113          	addi	sp,sp,-16
    80006618:	00813423          	sd	s0,8(sp)
    8000661c:	01010413          	addi	s0,sp,16
    80006620:	100007b7          	lui	a5,0x10000
    80006624:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006628:	f8000713          	li	a4,-128
    8000662c:	00e781a3          	sb	a4,3(a5)
    80006630:	00300713          	li	a4,3
    80006634:	00e78023          	sb	a4,0(a5)
    80006638:	000780a3          	sb	zero,1(a5)
    8000663c:	00e781a3          	sb	a4,3(a5)
    80006640:	00700693          	li	a3,7
    80006644:	00d78123          	sb	a3,2(a5)
    80006648:	00e780a3          	sb	a4,1(a5)
    8000664c:	00813403          	ld	s0,8(sp)
    80006650:	01010113          	addi	sp,sp,16
    80006654:	00008067          	ret

0000000080006658 <uartputc>:
    80006658:	00004797          	auipc	a5,0x4
    8000665c:	b607a783          	lw	a5,-1184(a5) # 8000a1b8 <panicked>
    80006660:	00078463          	beqz	a5,80006668 <uartputc+0x10>
    80006664:	0000006f          	j	80006664 <uartputc+0xc>
    80006668:	fd010113          	addi	sp,sp,-48
    8000666c:	02813023          	sd	s0,32(sp)
    80006670:	00913c23          	sd	s1,24(sp)
    80006674:	01213823          	sd	s2,16(sp)
    80006678:	01313423          	sd	s3,8(sp)
    8000667c:	02113423          	sd	ra,40(sp)
    80006680:	03010413          	addi	s0,sp,48
    80006684:	00004917          	auipc	s2,0x4
    80006688:	b3c90913          	addi	s2,s2,-1220 # 8000a1c0 <uart_tx_r>
    8000668c:	00093783          	ld	a5,0(s2)
    80006690:	00004497          	auipc	s1,0x4
    80006694:	b3848493          	addi	s1,s1,-1224 # 8000a1c8 <uart_tx_w>
    80006698:	0004b703          	ld	a4,0(s1)
    8000669c:	02078693          	addi	a3,a5,32
    800066a0:	00050993          	mv	s3,a0
    800066a4:	02e69c63          	bne	a3,a4,800066dc <uartputc+0x84>
    800066a8:	00001097          	auipc	ra,0x1
    800066ac:	834080e7          	jalr	-1996(ra) # 80006edc <push_on>
    800066b0:	00093783          	ld	a5,0(s2)
    800066b4:	0004b703          	ld	a4,0(s1)
    800066b8:	02078793          	addi	a5,a5,32
    800066bc:	00e79463          	bne	a5,a4,800066c4 <uartputc+0x6c>
    800066c0:	0000006f          	j	800066c0 <uartputc+0x68>
    800066c4:	00001097          	auipc	ra,0x1
    800066c8:	88c080e7          	jalr	-1908(ra) # 80006f50 <pop_on>
    800066cc:	00093783          	ld	a5,0(s2)
    800066d0:	0004b703          	ld	a4,0(s1)
    800066d4:	02078693          	addi	a3,a5,32
    800066d8:	fce688e3          	beq	a3,a4,800066a8 <uartputc+0x50>
    800066dc:	01f77693          	andi	a3,a4,31
    800066e0:	00005597          	auipc	a1,0x5
    800066e4:	db058593          	addi	a1,a1,-592 # 8000b490 <uart_tx_buf>
    800066e8:	00d586b3          	add	a3,a1,a3
    800066ec:	00170713          	addi	a4,a4,1
    800066f0:	01368023          	sb	s3,0(a3)
    800066f4:	00e4b023          	sd	a4,0(s1)
    800066f8:	10000637          	lui	a2,0x10000
    800066fc:	02f71063          	bne	a4,a5,8000671c <uartputc+0xc4>
    80006700:	0340006f          	j	80006734 <uartputc+0xdc>
    80006704:	00074703          	lbu	a4,0(a4)
    80006708:	00f93023          	sd	a5,0(s2)
    8000670c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006710:	00093783          	ld	a5,0(s2)
    80006714:	0004b703          	ld	a4,0(s1)
    80006718:	00f70e63          	beq	a4,a5,80006734 <uartputc+0xdc>
    8000671c:	00564683          	lbu	a3,5(a2)
    80006720:	01f7f713          	andi	a4,a5,31
    80006724:	00e58733          	add	a4,a1,a4
    80006728:	0206f693          	andi	a3,a3,32
    8000672c:	00178793          	addi	a5,a5,1
    80006730:	fc069ae3          	bnez	a3,80006704 <uartputc+0xac>
    80006734:	02813083          	ld	ra,40(sp)
    80006738:	02013403          	ld	s0,32(sp)
    8000673c:	01813483          	ld	s1,24(sp)
    80006740:	01013903          	ld	s2,16(sp)
    80006744:	00813983          	ld	s3,8(sp)
    80006748:	03010113          	addi	sp,sp,48
    8000674c:	00008067          	ret

0000000080006750 <uartputc_sync>:
    80006750:	ff010113          	addi	sp,sp,-16
    80006754:	00813423          	sd	s0,8(sp)
    80006758:	01010413          	addi	s0,sp,16
    8000675c:	00004717          	auipc	a4,0x4
    80006760:	a5c72703          	lw	a4,-1444(a4) # 8000a1b8 <panicked>
    80006764:	02071663          	bnez	a4,80006790 <uartputc_sync+0x40>
    80006768:	00050793          	mv	a5,a0
    8000676c:	100006b7          	lui	a3,0x10000
    80006770:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006774:	02077713          	andi	a4,a4,32
    80006778:	fe070ce3          	beqz	a4,80006770 <uartputc_sync+0x20>
    8000677c:	0ff7f793          	andi	a5,a5,255
    80006780:	00f68023          	sb	a5,0(a3)
    80006784:	00813403          	ld	s0,8(sp)
    80006788:	01010113          	addi	sp,sp,16
    8000678c:	00008067          	ret
    80006790:	0000006f          	j	80006790 <uartputc_sync+0x40>

0000000080006794 <uartstart>:
    80006794:	ff010113          	addi	sp,sp,-16
    80006798:	00813423          	sd	s0,8(sp)
    8000679c:	01010413          	addi	s0,sp,16
    800067a0:	00004617          	auipc	a2,0x4
    800067a4:	a2060613          	addi	a2,a2,-1504 # 8000a1c0 <uart_tx_r>
    800067a8:	00004517          	auipc	a0,0x4
    800067ac:	a2050513          	addi	a0,a0,-1504 # 8000a1c8 <uart_tx_w>
    800067b0:	00063783          	ld	a5,0(a2)
    800067b4:	00053703          	ld	a4,0(a0)
    800067b8:	04f70263          	beq	a4,a5,800067fc <uartstart+0x68>
    800067bc:	100005b7          	lui	a1,0x10000
    800067c0:	00005817          	auipc	a6,0x5
    800067c4:	cd080813          	addi	a6,a6,-816 # 8000b490 <uart_tx_buf>
    800067c8:	01c0006f          	j	800067e4 <uartstart+0x50>
    800067cc:	0006c703          	lbu	a4,0(a3)
    800067d0:	00f63023          	sd	a5,0(a2)
    800067d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800067d8:	00063783          	ld	a5,0(a2)
    800067dc:	00053703          	ld	a4,0(a0)
    800067e0:	00f70e63          	beq	a4,a5,800067fc <uartstart+0x68>
    800067e4:	01f7f713          	andi	a4,a5,31
    800067e8:	00e806b3          	add	a3,a6,a4
    800067ec:	0055c703          	lbu	a4,5(a1)
    800067f0:	00178793          	addi	a5,a5,1
    800067f4:	02077713          	andi	a4,a4,32
    800067f8:	fc071ae3          	bnez	a4,800067cc <uartstart+0x38>
    800067fc:	00813403          	ld	s0,8(sp)
    80006800:	01010113          	addi	sp,sp,16
    80006804:	00008067          	ret

0000000080006808 <uartgetc>:
    80006808:	ff010113          	addi	sp,sp,-16
    8000680c:	00813423          	sd	s0,8(sp)
    80006810:	01010413          	addi	s0,sp,16
    80006814:	10000737          	lui	a4,0x10000
    80006818:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000681c:	0017f793          	andi	a5,a5,1
    80006820:	00078c63          	beqz	a5,80006838 <uartgetc+0x30>
    80006824:	00074503          	lbu	a0,0(a4)
    80006828:	0ff57513          	andi	a0,a0,255
    8000682c:	00813403          	ld	s0,8(sp)
    80006830:	01010113          	addi	sp,sp,16
    80006834:	00008067          	ret
    80006838:	fff00513          	li	a0,-1
    8000683c:	ff1ff06f          	j	8000682c <uartgetc+0x24>

0000000080006840 <uartintr>:
    80006840:	100007b7          	lui	a5,0x10000
    80006844:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006848:	0017f793          	andi	a5,a5,1
    8000684c:	0a078463          	beqz	a5,800068f4 <uartintr+0xb4>
    80006850:	fe010113          	addi	sp,sp,-32
    80006854:	00813823          	sd	s0,16(sp)
    80006858:	00913423          	sd	s1,8(sp)
    8000685c:	00113c23          	sd	ra,24(sp)
    80006860:	02010413          	addi	s0,sp,32
    80006864:	100004b7          	lui	s1,0x10000
    80006868:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000686c:	0ff57513          	andi	a0,a0,255
    80006870:	fffff097          	auipc	ra,0xfffff
    80006874:	534080e7          	jalr	1332(ra) # 80005da4 <consoleintr>
    80006878:	0054c783          	lbu	a5,5(s1)
    8000687c:	0017f793          	andi	a5,a5,1
    80006880:	fe0794e3          	bnez	a5,80006868 <uartintr+0x28>
    80006884:	00004617          	auipc	a2,0x4
    80006888:	93c60613          	addi	a2,a2,-1732 # 8000a1c0 <uart_tx_r>
    8000688c:	00004517          	auipc	a0,0x4
    80006890:	93c50513          	addi	a0,a0,-1732 # 8000a1c8 <uart_tx_w>
    80006894:	00063783          	ld	a5,0(a2)
    80006898:	00053703          	ld	a4,0(a0)
    8000689c:	04f70263          	beq	a4,a5,800068e0 <uartintr+0xa0>
    800068a0:	100005b7          	lui	a1,0x10000
    800068a4:	00005817          	auipc	a6,0x5
    800068a8:	bec80813          	addi	a6,a6,-1044 # 8000b490 <uart_tx_buf>
    800068ac:	01c0006f          	j	800068c8 <uartintr+0x88>
    800068b0:	0006c703          	lbu	a4,0(a3)
    800068b4:	00f63023          	sd	a5,0(a2)
    800068b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800068bc:	00063783          	ld	a5,0(a2)
    800068c0:	00053703          	ld	a4,0(a0)
    800068c4:	00f70e63          	beq	a4,a5,800068e0 <uartintr+0xa0>
    800068c8:	01f7f713          	andi	a4,a5,31
    800068cc:	00e806b3          	add	a3,a6,a4
    800068d0:	0055c703          	lbu	a4,5(a1)
    800068d4:	00178793          	addi	a5,a5,1
    800068d8:	02077713          	andi	a4,a4,32
    800068dc:	fc071ae3          	bnez	a4,800068b0 <uartintr+0x70>
    800068e0:	01813083          	ld	ra,24(sp)
    800068e4:	01013403          	ld	s0,16(sp)
    800068e8:	00813483          	ld	s1,8(sp)
    800068ec:	02010113          	addi	sp,sp,32
    800068f0:	00008067          	ret
    800068f4:	00004617          	auipc	a2,0x4
    800068f8:	8cc60613          	addi	a2,a2,-1844 # 8000a1c0 <uart_tx_r>
    800068fc:	00004517          	auipc	a0,0x4
    80006900:	8cc50513          	addi	a0,a0,-1844 # 8000a1c8 <uart_tx_w>
    80006904:	00063783          	ld	a5,0(a2)
    80006908:	00053703          	ld	a4,0(a0)
    8000690c:	04f70263          	beq	a4,a5,80006950 <uartintr+0x110>
    80006910:	100005b7          	lui	a1,0x10000
    80006914:	00005817          	auipc	a6,0x5
    80006918:	b7c80813          	addi	a6,a6,-1156 # 8000b490 <uart_tx_buf>
    8000691c:	01c0006f          	j	80006938 <uartintr+0xf8>
    80006920:	0006c703          	lbu	a4,0(a3)
    80006924:	00f63023          	sd	a5,0(a2)
    80006928:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000692c:	00063783          	ld	a5,0(a2)
    80006930:	00053703          	ld	a4,0(a0)
    80006934:	02f70063          	beq	a4,a5,80006954 <uartintr+0x114>
    80006938:	01f7f713          	andi	a4,a5,31
    8000693c:	00e806b3          	add	a3,a6,a4
    80006940:	0055c703          	lbu	a4,5(a1)
    80006944:	00178793          	addi	a5,a5,1
    80006948:	02077713          	andi	a4,a4,32
    8000694c:	fc071ae3          	bnez	a4,80006920 <uartintr+0xe0>
    80006950:	00008067          	ret
    80006954:	00008067          	ret

0000000080006958 <kinit>:
    80006958:	fc010113          	addi	sp,sp,-64
    8000695c:	02913423          	sd	s1,40(sp)
    80006960:	fffff7b7          	lui	a5,0xfffff
    80006964:	00006497          	auipc	s1,0x6
    80006968:	b4b48493          	addi	s1,s1,-1205 # 8000c4af <end+0xfff>
    8000696c:	02813823          	sd	s0,48(sp)
    80006970:	01313c23          	sd	s3,24(sp)
    80006974:	00f4f4b3          	and	s1,s1,a5
    80006978:	02113c23          	sd	ra,56(sp)
    8000697c:	03213023          	sd	s2,32(sp)
    80006980:	01413823          	sd	s4,16(sp)
    80006984:	01513423          	sd	s5,8(sp)
    80006988:	04010413          	addi	s0,sp,64
    8000698c:	000017b7          	lui	a5,0x1
    80006990:	01100993          	li	s3,17
    80006994:	00f487b3          	add	a5,s1,a5
    80006998:	01b99993          	slli	s3,s3,0x1b
    8000699c:	06f9e063          	bltu	s3,a5,800069fc <kinit+0xa4>
    800069a0:	00005a97          	auipc	s5,0x5
    800069a4:	b10a8a93          	addi	s5,s5,-1264 # 8000b4b0 <end>
    800069a8:	0754ec63          	bltu	s1,s5,80006a20 <kinit+0xc8>
    800069ac:	0734fa63          	bgeu	s1,s3,80006a20 <kinit+0xc8>
    800069b0:	00088a37          	lui	s4,0x88
    800069b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800069b8:	00004917          	auipc	s2,0x4
    800069bc:	81890913          	addi	s2,s2,-2024 # 8000a1d0 <kmem>
    800069c0:	00ca1a13          	slli	s4,s4,0xc
    800069c4:	0140006f          	j	800069d8 <kinit+0x80>
    800069c8:	000017b7          	lui	a5,0x1
    800069cc:	00f484b3          	add	s1,s1,a5
    800069d0:	0554e863          	bltu	s1,s5,80006a20 <kinit+0xc8>
    800069d4:	0534f663          	bgeu	s1,s3,80006a20 <kinit+0xc8>
    800069d8:	00001637          	lui	a2,0x1
    800069dc:	00100593          	li	a1,1
    800069e0:	00048513          	mv	a0,s1
    800069e4:	00000097          	auipc	ra,0x0
    800069e8:	5e4080e7          	jalr	1508(ra) # 80006fc8 <__memset>
    800069ec:	00093783          	ld	a5,0(s2)
    800069f0:	00f4b023          	sd	a5,0(s1)
    800069f4:	00993023          	sd	s1,0(s2)
    800069f8:	fd4498e3          	bne	s1,s4,800069c8 <kinit+0x70>
    800069fc:	03813083          	ld	ra,56(sp)
    80006a00:	03013403          	ld	s0,48(sp)
    80006a04:	02813483          	ld	s1,40(sp)
    80006a08:	02013903          	ld	s2,32(sp)
    80006a0c:	01813983          	ld	s3,24(sp)
    80006a10:	01013a03          	ld	s4,16(sp)
    80006a14:	00813a83          	ld	s5,8(sp)
    80006a18:	04010113          	addi	sp,sp,64
    80006a1c:	00008067          	ret
    80006a20:	00002517          	auipc	a0,0x2
    80006a24:	cc050513          	addi	a0,a0,-832 # 800086e0 <digits+0x18>
    80006a28:	fffff097          	auipc	ra,0xfffff
    80006a2c:	4b4080e7          	jalr	1204(ra) # 80005edc <panic>

0000000080006a30 <freerange>:
    80006a30:	fc010113          	addi	sp,sp,-64
    80006a34:	000017b7          	lui	a5,0x1
    80006a38:	02913423          	sd	s1,40(sp)
    80006a3c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006a40:	009504b3          	add	s1,a0,s1
    80006a44:	fffff537          	lui	a0,0xfffff
    80006a48:	02813823          	sd	s0,48(sp)
    80006a4c:	02113c23          	sd	ra,56(sp)
    80006a50:	03213023          	sd	s2,32(sp)
    80006a54:	01313c23          	sd	s3,24(sp)
    80006a58:	01413823          	sd	s4,16(sp)
    80006a5c:	01513423          	sd	s5,8(sp)
    80006a60:	01613023          	sd	s6,0(sp)
    80006a64:	04010413          	addi	s0,sp,64
    80006a68:	00a4f4b3          	and	s1,s1,a0
    80006a6c:	00f487b3          	add	a5,s1,a5
    80006a70:	06f5e463          	bltu	a1,a5,80006ad8 <freerange+0xa8>
    80006a74:	00005a97          	auipc	s5,0x5
    80006a78:	a3ca8a93          	addi	s5,s5,-1476 # 8000b4b0 <end>
    80006a7c:	0954e263          	bltu	s1,s5,80006b00 <freerange+0xd0>
    80006a80:	01100993          	li	s3,17
    80006a84:	01b99993          	slli	s3,s3,0x1b
    80006a88:	0734fc63          	bgeu	s1,s3,80006b00 <freerange+0xd0>
    80006a8c:	00058a13          	mv	s4,a1
    80006a90:	00003917          	auipc	s2,0x3
    80006a94:	74090913          	addi	s2,s2,1856 # 8000a1d0 <kmem>
    80006a98:	00002b37          	lui	s6,0x2
    80006a9c:	0140006f          	j	80006ab0 <freerange+0x80>
    80006aa0:	000017b7          	lui	a5,0x1
    80006aa4:	00f484b3          	add	s1,s1,a5
    80006aa8:	0554ec63          	bltu	s1,s5,80006b00 <freerange+0xd0>
    80006aac:	0534fa63          	bgeu	s1,s3,80006b00 <freerange+0xd0>
    80006ab0:	00001637          	lui	a2,0x1
    80006ab4:	00100593          	li	a1,1
    80006ab8:	00048513          	mv	a0,s1
    80006abc:	00000097          	auipc	ra,0x0
    80006ac0:	50c080e7          	jalr	1292(ra) # 80006fc8 <__memset>
    80006ac4:	00093703          	ld	a4,0(s2)
    80006ac8:	016487b3          	add	a5,s1,s6
    80006acc:	00e4b023          	sd	a4,0(s1)
    80006ad0:	00993023          	sd	s1,0(s2)
    80006ad4:	fcfa76e3          	bgeu	s4,a5,80006aa0 <freerange+0x70>
    80006ad8:	03813083          	ld	ra,56(sp)
    80006adc:	03013403          	ld	s0,48(sp)
    80006ae0:	02813483          	ld	s1,40(sp)
    80006ae4:	02013903          	ld	s2,32(sp)
    80006ae8:	01813983          	ld	s3,24(sp)
    80006aec:	01013a03          	ld	s4,16(sp)
    80006af0:	00813a83          	ld	s5,8(sp)
    80006af4:	00013b03          	ld	s6,0(sp)
    80006af8:	04010113          	addi	sp,sp,64
    80006afc:	00008067          	ret
    80006b00:	00002517          	auipc	a0,0x2
    80006b04:	be050513          	addi	a0,a0,-1056 # 800086e0 <digits+0x18>
    80006b08:	fffff097          	auipc	ra,0xfffff
    80006b0c:	3d4080e7          	jalr	980(ra) # 80005edc <panic>

0000000080006b10 <kfree>:
    80006b10:	fe010113          	addi	sp,sp,-32
    80006b14:	00813823          	sd	s0,16(sp)
    80006b18:	00113c23          	sd	ra,24(sp)
    80006b1c:	00913423          	sd	s1,8(sp)
    80006b20:	02010413          	addi	s0,sp,32
    80006b24:	03451793          	slli	a5,a0,0x34
    80006b28:	04079c63          	bnez	a5,80006b80 <kfree+0x70>
    80006b2c:	00005797          	auipc	a5,0x5
    80006b30:	98478793          	addi	a5,a5,-1660 # 8000b4b0 <end>
    80006b34:	00050493          	mv	s1,a0
    80006b38:	04f56463          	bltu	a0,a5,80006b80 <kfree+0x70>
    80006b3c:	01100793          	li	a5,17
    80006b40:	01b79793          	slli	a5,a5,0x1b
    80006b44:	02f57e63          	bgeu	a0,a5,80006b80 <kfree+0x70>
    80006b48:	00001637          	lui	a2,0x1
    80006b4c:	00100593          	li	a1,1
    80006b50:	00000097          	auipc	ra,0x0
    80006b54:	478080e7          	jalr	1144(ra) # 80006fc8 <__memset>
    80006b58:	00003797          	auipc	a5,0x3
    80006b5c:	67878793          	addi	a5,a5,1656 # 8000a1d0 <kmem>
    80006b60:	0007b703          	ld	a4,0(a5)
    80006b64:	01813083          	ld	ra,24(sp)
    80006b68:	01013403          	ld	s0,16(sp)
    80006b6c:	00e4b023          	sd	a4,0(s1)
    80006b70:	0097b023          	sd	s1,0(a5)
    80006b74:	00813483          	ld	s1,8(sp)
    80006b78:	02010113          	addi	sp,sp,32
    80006b7c:	00008067          	ret
    80006b80:	00002517          	auipc	a0,0x2
    80006b84:	b6050513          	addi	a0,a0,-1184 # 800086e0 <digits+0x18>
    80006b88:	fffff097          	auipc	ra,0xfffff
    80006b8c:	354080e7          	jalr	852(ra) # 80005edc <panic>

0000000080006b90 <kalloc>:
    80006b90:	fe010113          	addi	sp,sp,-32
    80006b94:	00813823          	sd	s0,16(sp)
    80006b98:	00913423          	sd	s1,8(sp)
    80006b9c:	00113c23          	sd	ra,24(sp)
    80006ba0:	02010413          	addi	s0,sp,32
    80006ba4:	00003797          	auipc	a5,0x3
    80006ba8:	62c78793          	addi	a5,a5,1580 # 8000a1d0 <kmem>
    80006bac:	0007b483          	ld	s1,0(a5)
    80006bb0:	02048063          	beqz	s1,80006bd0 <kalloc+0x40>
    80006bb4:	0004b703          	ld	a4,0(s1)
    80006bb8:	00001637          	lui	a2,0x1
    80006bbc:	00500593          	li	a1,5
    80006bc0:	00048513          	mv	a0,s1
    80006bc4:	00e7b023          	sd	a4,0(a5)
    80006bc8:	00000097          	auipc	ra,0x0
    80006bcc:	400080e7          	jalr	1024(ra) # 80006fc8 <__memset>
    80006bd0:	01813083          	ld	ra,24(sp)
    80006bd4:	01013403          	ld	s0,16(sp)
    80006bd8:	00048513          	mv	a0,s1
    80006bdc:	00813483          	ld	s1,8(sp)
    80006be0:	02010113          	addi	sp,sp,32
    80006be4:	00008067          	ret

0000000080006be8 <initlock>:
    80006be8:	ff010113          	addi	sp,sp,-16
    80006bec:	00813423          	sd	s0,8(sp)
    80006bf0:	01010413          	addi	s0,sp,16
    80006bf4:	00813403          	ld	s0,8(sp)
    80006bf8:	00b53423          	sd	a1,8(a0)
    80006bfc:	00052023          	sw	zero,0(a0)
    80006c00:	00053823          	sd	zero,16(a0)
    80006c04:	01010113          	addi	sp,sp,16
    80006c08:	00008067          	ret

0000000080006c0c <acquire>:
    80006c0c:	fe010113          	addi	sp,sp,-32
    80006c10:	00813823          	sd	s0,16(sp)
    80006c14:	00913423          	sd	s1,8(sp)
    80006c18:	00113c23          	sd	ra,24(sp)
    80006c1c:	01213023          	sd	s2,0(sp)
    80006c20:	02010413          	addi	s0,sp,32
    80006c24:	00050493          	mv	s1,a0
    80006c28:	10002973          	csrr	s2,sstatus
    80006c2c:	100027f3          	csrr	a5,sstatus
    80006c30:	ffd7f793          	andi	a5,a5,-3
    80006c34:	10079073          	csrw	sstatus,a5
    80006c38:	fffff097          	auipc	ra,0xfffff
    80006c3c:	8ec080e7          	jalr	-1812(ra) # 80005524 <mycpu>
    80006c40:	07852783          	lw	a5,120(a0)
    80006c44:	06078e63          	beqz	a5,80006cc0 <acquire+0xb4>
    80006c48:	fffff097          	auipc	ra,0xfffff
    80006c4c:	8dc080e7          	jalr	-1828(ra) # 80005524 <mycpu>
    80006c50:	07852783          	lw	a5,120(a0)
    80006c54:	0004a703          	lw	a4,0(s1)
    80006c58:	0017879b          	addiw	a5,a5,1
    80006c5c:	06f52c23          	sw	a5,120(a0)
    80006c60:	04071063          	bnez	a4,80006ca0 <acquire+0x94>
    80006c64:	00100713          	li	a4,1
    80006c68:	00070793          	mv	a5,a4
    80006c6c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006c70:	0007879b          	sext.w	a5,a5
    80006c74:	fe079ae3          	bnez	a5,80006c68 <acquire+0x5c>
    80006c78:	0ff0000f          	fence
    80006c7c:	fffff097          	auipc	ra,0xfffff
    80006c80:	8a8080e7          	jalr	-1880(ra) # 80005524 <mycpu>
    80006c84:	01813083          	ld	ra,24(sp)
    80006c88:	01013403          	ld	s0,16(sp)
    80006c8c:	00a4b823          	sd	a0,16(s1)
    80006c90:	00013903          	ld	s2,0(sp)
    80006c94:	00813483          	ld	s1,8(sp)
    80006c98:	02010113          	addi	sp,sp,32
    80006c9c:	00008067          	ret
    80006ca0:	0104b903          	ld	s2,16(s1)
    80006ca4:	fffff097          	auipc	ra,0xfffff
    80006ca8:	880080e7          	jalr	-1920(ra) # 80005524 <mycpu>
    80006cac:	faa91ce3          	bne	s2,a0,80006c64 <acquire+0x58>
    80006cb0:	00002517          	auipc	a0,0x2
    80006cb4:	a3850513          	addi	a0,a0,-1480 # 800086e8 <digits+0x20>
    80006cb8:	fffff097          	auipc	ra,0xfffff
    80006cbc:	224080e7          	jalr	548(ra) # 80005edc <panic>
    80006cc0:	00195913          	srli	s2,s2,0x1
    80006cc4:	fffff097          	auipc	ra,0xfffff
    80006cc8:	860080e7          	jalr	-1952(ra) # 80005524 <mycpu>
    80006ccc:	00197913          	andi	s2,s2,1
    80006cd0:	07252e23          	sw	s2,124(a0)
    80006cd4:	f75ff06f          	j	80006c48 <acquire+0x3c>

0000000080006cd8 <release>:
    80006cd8:	fe010113          	addi	sp,sp,-32
    80006cdc:	00813823          	sd	s0,16(sp)
    80006ce0:	00113c23          	sd	ra,24(sp)
    80006ce4:	00913423          	sd	s1,8(sp)
    80006ce8:	01213023          	sd	s2,0(sp)
    80006cec:	02010413          	addi	s0,sp,32
    80006cf0:	00052783          	lw	a5,0(a0)
    80006cf4:	00079a63          	bnez	a5,80006d08 <release+0x30>
    80006cf8:	00002517          	auipc	a0,0x2
    80006cfc:	9f850513          	addi	a0,a0,-1544 # 800086f0 <digits+0x28>
    80006d00:	fffff097          	auipc	ra,0xfffff
    80006d04:	1dc080e7          	jalr	476(ra) # 80005edc <panic>
    80006d08:	01053903          	ld	s2,16(a0)
    80006d0c:	00050493          	mv	s1,a0
    80006d10:	fffff097          	auipc	ra,0xfffff
    80006d14:	814080e7          	jalr	-2028(ra) # 80005524 <mycpu>
    80006d18:	fea910e3          	bne	s2,a0,80006cf8 <release+0x20>
    80006d1c:	0004b823          	sd	zero,16(s1)
    80006d20:	0ff0000f          	fence
    80006d24:	0f50000f          	fence	iorw,ow
    80006d28:	0804a02f          	amoswap.w	zero,zero,(s1)
    80006d2c:	ffffe097          	auipc	ra,0xffffe
    80006d30:	7f8080e7          	jalr	2040(ra) # 80005524 <mycpu>
    80006d34:	100027f3          	csrr	a5,sstatus
    80006d38:	0027f793          	andi	a5,a5,2
    80006d3c:	04079a63          	bnez	a5,80006d90 <release+0xb8>
    80006d40:	07852783          	lw	a5,120(a0)
    80006d44:	02f05e63          	blez	a5,80006d80 <release+0xa8>
    80006d48:	fff7871b          	addiw	a4,a5,-1
    80006d4c:	06e52c23          	sw	a4,120(a0)
    80006d50:	00071c63          	bnez	a4,80006d68 <release+0x90>
    80006d54:	07c52783          	lw	a5,124(a0)
    80006d58:	00078863          	beqz	a5,80006d68 <release+0x90>
    80006d5c:	100027f3          	csrr	a5,sstatus
    80006d60:	0027e793          	ori	a5,a5,2
    80006d64:	10079073          	csrw	sstatus,a5
    80006d68:	01813083          	ld	ra,24(sp)
    80006d6c:	01013403          	ld	s0,16(sp)
    80006d70:	00813483          	ld	s1,8(sp)
    80006d74:	00013903          	ld	s2,0(sp)
    80006d78:	02010113          	addi	sp,sp,32
    80006d7c:	00008067          	ret
    80006d80:	00002517          	auipc	a0,0x2
    80006d84:	99050513          	addi	a0,a0,-1648 # 80008710 <digits+0x48>
    80006d88:	fffff097          	auipc	ra,0xfffff
    80006d8c:	154080e7          	jalr	340(ra) # 80005edc <panic>
    80006d90:	00002517          	auipc	a0,0x2
    80006d94:	96850513          	addi	a0,a0,-1688 # 800086f8 <digits+0x30>
    80006d98:	fffff097          	auipc	ra,0xfffff
    80006d9c:	144080e7          	jalr	324(ra) # 80005edc <panic>

0000000080006da0 <holding>:
    80006da0:	00052783          	lw	a5,0(a0)
    80006da4:	00079663          	bnez	a5,80006db0 <holding+0x10>
    80006da8:	00000513          	li	a0,0
    80006dac:	00008067          	ret
    80006db0:	fe010113          	addi	sp,sp,-32
    80006db4:	00813823          	sd	s0,16(sp)
    80006db8:	00913423          	sd	s1,8(sp)
    80006dbc:	00113c23          	sd	ra,24(sp)
    80006dc0:	02010413          	addi	s0,sp,32
    80006dc4:	01053483          	ld	s1,16(a0)
    80006dc8:	ffffe097          	auipc	ra,0xffffe
    80006dcc:	75c080e7          	jalr	1884(ra) # 80005524 <mycpu>
    80006dd0:	01813083          	ld	ra,24(sp)
    80006dd4:	01013403          	ld	s0,16(sp)
    80006dd8:	40a48533          	sub	a0,s1,a0
    80006ddc:	00153513          	seqz	a0,a0
    80006de0:	00813483          	ld	s1,8(sp)
    80006de4:	02010113          	addi	sp,sp,32
    80006de8:	00008067          	ret

0000000080006dec <push_off>:
    80006dec:	fe010113          	addi	sp,sp,-32
    80006df0:	00813823          	sd	s0,16(sp)
    80006df4:	00113c23          	sd	ra,24(sp)
    80006df8:	00913423          	sd	s1,8(sp)
    80006dfc:	02010413          	addi	s0,sp,32
    80006e00:	100024f3          	csrr	s1,sstatus
    80006e04:	100027f3          	csrr	a5,sstatus
    80006e08:	ffd7f793          	andi	a5,a5,-3
    80006e0c:	10079073          	csrw	sstatus,a5
    80006e10:	ffffe097          	auipc	ra,0xffffe
    80006e14:	714080e7          	jalr	1812(ra) # 80005524 <mycpu>
    80006e18:	07852783          	lw	a5,120(a0)
    80006e1c:	02078663          	beqz	a5,80006e48 <push_off+0x5c>
    80006e20:	ffffe097          	auipc	ra,0xffffe
    80006e24:	704080e7          	jalr	1796(ra) # 80005524 <mycpu>
    80006e28:	07852783          	lw	a5,120(a0)
    80006e2c:	01813083          	ld	ra,24(sp)
    80006e30:	01013403          	ld	s0,16(sp)
    80006e34:	0017879b          	addiw	a5,a5,1
    80006e38:	06f52c23          	sw	a5,120(a0)
    80006e3c:	00813483          	ld	s1,8(sp)
    80006e40:	02010113          	addi	sp,sp,32
    80006e44:	00008067          	ret
    80006e48:	0014d493          	srli	s1,s1,0x1
    80006e4c:	ffffe097          	auipc	ra,0xffffe
    80006e50:	6d8080e7          	jalr	1752(ra) # 80005524 <mycpu>
    80006e54:	0014f493          	andi	s1,s1,1
    80006e58:	06952e23          	sw	s1,124(a0)
    80006e5c:	fc5ff06f          	j	80006e20 <push_off+0x34>

0000000080006e60 <pop_off>:
    80006e60:	ff010113          	addi	sp,sp,-16
    80006e64:	00813023          	sd	s0,0(sp)
    80006e68:	00113423          	sd	ra,8(sp)
    80006e6c:	01010413          	addi	s0,sp,16
    80006e70:	ffffe097          	auipc	ra,0xffffe
    80006e74:	6b4080e7          	jalr	1716(ra) # 80005524 <mycpu>
    80006e78:	100027f3          	csrr	a5,sstatus
    80006e7c:	0027f793          	andi	a5,a5,2
    80006e80:	04079663          	bnez	a5,80006ecc <pop_off+0x6c>
    80006e84:	07852783          	lw	a5,120(a0)
    80006e88:	02f05a63          	blez	a5,80006ebc <pop_off+0x5c>
    80006e8c:	fff7871b          	addiw	a4,a5,-1
    80006e90:	06e52c23          	sw	a4,120(a0)
    80006e94:	00071c63          	bnez	a4,80006eac <pop_off+0x4c>
    80006e98:	07c52783          	lw	a5,124(a0)
    80006e9c:	00078863          	beqz	a5,80006eac <pop_off+0x4c>
    80006ea0:	100027f3          	csrr	a5,sstatus
    80006ea4:	0027e793          	ori	a5,a5,2
    80006ea8:	10079073          	csrw	sstatus,a5
    80006eac:	00813083          	ld	ra,8(sp)
    80006eb0:	00013403          	ld	s0,0(sp)
    80006eb4:	01010113          	addi	sp,sp,16
    80006eb8:	00008067          	ret
    80006ebc:	00002517          	auipc	a0,0x2
    80006ec0:	85450513          	addi	a0,a0,-1964 # 80008710 <digits+0x48>
    80006ec4:	fffff097          	auipc	ra,0xfffff
    80006ec8:	018080e7          	jalr	24(ra) # 80005edc <panic>
    80006ecc:	00002517          	auipc	a0,0x2
    80006ed0:	82c50513          	addi	a0,a0,-2004 # 800086f8 <digits+0x30>
    80006ed4:	fffff097          	auipc	ra,0xfffff
    80006ed8:	008080e7          	jalr	8(ra) # 80005edc <panic>

0000000080006edc <push_on>:
    80006edc:	fe010113          	addi	sp,sp,-32
    80006ee0:	00813823          	sd	s0,16(sp)
    80006ee4:	00113c23          	sd	ra,24(sp)
    80006ee8:	00913423          	sd	s1,8(sp)
    80006eec:	02010413          	addi	s0,sp,32
    80006ef0:	100024f3          	csrr	s1,sstatus
    80006ef4:	100027f3          	csrr	a5,sstatus
    80006ef8:	0027e793          	ori	a5,a5,2
    80006efc:	10079073          	csrw	sstatus,a5
    80006f00:	ffffe097          	auipc	ra,0xffffe
    80006f04:	624080e7          	jalr	1572(ra) # 80005524 <mycpu>
    80006f08:	07852783          	lw	a5,120(a0)
    80006f0c:	02078663          	beqz	a5,80006f38 <push_on+0x5c>
    80006f10:	ffffe097          	auipc	ra,0xffffe
    80006f14:	614080e7          	jalr	1556(ra) # 80005524 <mycpu>
    80006f18:	07852783          	lw	a5,120(a0)
    80006f1c:	01813083          	ld	ra,24(sp)
    80006f20:	01013403          	ld	s0,16(sp)
    80006f24:	0017879b          	addiw	a5,a5,1
    80006f28:	06f52c23          	sw	a5,120(a0)
    80006f2c:	00813483          	ld	s1,8(sp)
    80006f30:	02010113          	addi	sp,sp,32
    80006f34:	00008067          	ret
    80006f38:	0014d493          	srli	s1,s1,0x1
    80006f3c:	ffffe097          	auipc	ra,0xffffe
    80006f40:	5e8080e7          	jalr	1512(ra) # 80005524 <mycpu>
    80006f44:	0014f493          	andi	s1,s1,1
    80006f48:	06952e23          	sw	s1,124(a0)
    80006f4c:	fc5ff06f          	j	80006f10 <push_on+0x34>

0000000080006f50 <pop_on>:
    80006f50:	ff010113          	addi	sp,sp,-16
    80006f54:	00813023          	sd	s0,0(sp)
    80006f58:	00113423          	sd	ra,8(sp)
    80006f5c:	01010413          	addi	s0,sp,16
    80006f60:	ffffe097          	auipc	ra,0xffffe
    80006f64:	5c4080e7          	jalr	1476(ra) # 80005524 <mycpu>
    80006f68:	100027f3          	csrr	a5,sstatus
    80006f6c:	0027f793          	andi	a5,a5,2
    80006f70:	04078463          	beqz	a5,80006fb8 <pop_on+0x68>
    80006f74:	07852783          	lw	a5,120(a0)
    80006f78:	02f05863          	blez	a5,80006fa8 <pop_on+0x58>
    80006f7c:	fff7879b          	addiw	a5,a5,-1
    80006f80:	06f52c23          	sw	a5,120(a0)
    80006f84:	07853783          	ld	a5,120(a0)
    80006f88:	00079863          	bnez	a5,80006f98 <pop_on+0x48>
    80006f8c:	100027f3          	csrr	a5,sstatus
    80006f90:	ffd7f793          	andi	a5,a5,-3
    80006f94:	10079073          	csrw	sstatus,a5
    80006f98:	00813083          	ld	ra,8(sp)
    80006f9c:	00013403          	ld	s0,0(sp)
    80006fa0:	01010113          	addi	sp,sp,16
    80006fa4:	00008067          	ret
    80006fa8:	00001517          	auipc	a0,0x1
    80006fac:	79050513          	addi	a0,a0,1936 # 80008738 <digits+0x70>
    80006fb0:	fffff097          	auipc	ra,0xfffff
    80006fb4:	f2c080e7          	jalr	-212(ra) # 80005edc <panic>
    80006fb8:	00001517          	auipc	a0,0x1
    80006fbc:	76050513          	addi	a0,a0,1888 # 80008718 <digits+0x50>
    80006fc0:	fffff097          	auipc	ra,0xfffff
    80006fc4:	f1c080e7          	jalr	-228(ra) # 80005edc <panic>

0000000080006fc8 <__memset>:
    80006fc8:	ff010113          	addi	sp,sp,-16
    80006fcc:	00813423          	sd	s0,8(sp)
    80006fd0:	01010413          	addi	s0,sp,16
    80006fd4:	1a060e63          	beqz	a2,80007190 <__memset+0x1c8>
    80006fd8:	40a007b3          	neg	a5,a0
    80006fdc:	0077f793          	andi	a5,a5,7
    80006fe0:	00778693          	addi	a3,a5,7
    80006fe4:	00b00813          	li	a6,11
    80006fe8:	0ff5f593          	andi	a1,a1,255
    80006fec:	fff6071b          	addiw	a4,a2,-1
    80006ff0:	1b06e663          	bltu	a3,a6,8000719c <__memset+0x1d4>
    80006ff4:	1cd76463          	bltu	a4,a3,800071bc <__memset+0x1f4>
    80006ff8:	1a078e63          	beqz	a5,800071b4 <__memset+0x1ec>
    80006ffc:	00b50023          	sb	a1,0(a0)
    80007000:	00100713          	li	a4,1
    80007004:	1ae78463          	beq	a5,a4,800071ac <__memset+0x1e4>
    80007008:	00b500a3          	sb	a1,1(a0)
    8000700c:	00200713          	li	a4,2
    80007010:	1ae78a63          	beq	a5,a4,800071c4 <__memset+0x1fc>
    80007014:	00b50123          	sb	a1,2(a0)
    80007018:	00300713          	li	a4,3
    8000701c:	18e78463          	beq	a5,a4,800071a4 <__memset+0x1dc>
    80007020:	00b501a3          	sb	a1,3(a0)
    80007024:	00400713          	li	a4,4
    80007028:	1ae78263          	beq	a5,a4,800071cc <__memset+0x204>
    8000702c:	00b50223          	sb	a1,4(a0)
    80007030:	00500713          	li	a4,5
    80007034:	1ae78063          	beq	a5,a4,800071d4 <__memset+0x20c>
    80007038:	00b502a3          	sb	a1,5(a0)
    8000703c:	00700713          	li	a4,7
    80007040:	18e79e63          	bne	a5,a4,800071dc <__memset+0x214>
    80007044:	00b50323          	sb	a1,6(a0)
    80007048:	00700e93          	li	t4,7
    8000704c:	00859713          	slli	a4,a1,0x8
    80007050:	00e5e733          	or	a4,a1,a4
    80007054:	01059e13          	slli	t3,a1,0x10
    80007058:	01c76e33          	or	t3,a4,t3
    8000705c:	01859313          	slli	t1,a1,0x18
    80007060:	006e6333          	or	t1,t3,t1
    80007064:	02059893          	slli	a7,a1,0x20
    80007068:	40f60e3b          	subw	t3,a2,a5
    8000706c:	011368b3          	or	a7,t1,a7
    80007070:	02859813          	slli	a6,a1,0x28
    80007074:	0108e833          	or	a6,a7,a6
    80007078:	03059693          	slli	a3,a1,0x30
    8000707c:	003e589b          	srliw	a7,t3,0x3
    80007080:	00d866b3          	or	a3,a6,a3
    80007084:	03859713          	slli	a4,a1,0x38
    80007088:	00389813          	slli	a6,a7,0x3
    8000708c:	00f507b3          	add	a5,a0,a5
    80007090:	00e6e733          	or	a4,a3,a4
    80007094:	000e089b          	sext.w	a7,t3
    80007098:	00f806b3          	add	a3,a6,a5
    8000709c:	00e7b023          	sd	a4,0(a5)
    800070a0:	00878793          	addi	a5,a5,8
    800070a4:	fed79ce3          	bne	a5,a3,8000709c <__memset+0xd4>
    800070a8:	ff8e7793          	andi	a5,t3,-8
    800070ac:	0007871b          	sext.w	a4,a5
    800070b0:	01d787bb          	addw	a5,a5,t4
    800070b4:	0ce88e63          	beq	a7,a4,80007190 <__memset+0x1c8>
    800070b8:	00f50733          	add	a4,a0,a5
    800070bc:	00b70023          	sb	a1,0(a4)
    800070c0:	0017871b          	addiw	a4,a5,1
    800070c4:	0cc77663          	bgeu	a4,a2,80007190 <__memset+0x1c8>
    800070c8:	00e50733          	add	a4,a0,a4
    800070cc:	00b70023          	sb	a1,0(a4)
    800070d0:	0027871b          	addiw	a4,a5,2
    800070d4:	0ac77e63          	bgeu	a4,a2,80007190 <__memset+0x1c8>
    800070d8:	00e50733          	add	a4,a0,a4
    800070dc:	00b70023          	sb	a1,0(a4)
    800070e0:	0037871b          	addiw	a4,a5,3
    800070e4:	0ac77663          	bgeu	a4,a2,80007190 <__memset+0x1c8>
    800070e8:	00e50733          	add	a4,a0,a4
    800070ec:	00b70023          	sb	a1,0(a4)
    800070f0:	0047871b          	addiw	a4,a5,4
    800070f4:	08c77e63          	bgeu	a4,a2,80007190 <__memset+0x1c8>
    800070f8:	00e50733          	add	a4,a0,a4
    800070fc:	00b70023          	sb	a1,0(a4)
    80007100:	0057871b          	addiw	a4,a5,5
    80007104:	08c77663          	bgeu	a4,a2,80007190 <__memset+0x1c8>
    80007108:	00e50733          	add	a4,a0,a4
    8000710c:	00b70023          	sb	a1,0(a4)
    80007110:	0067871b          	addiw	a4,a5,6
    80007114:	06c77e63          	bgeu	a4,a2,80007190 <__memset+0x1c8>
    80007118:	00e50733          	add	a4,a0,a4
    8000711c:	00b70023          	sb	a1,0(a4)
    80007120:	0077871b          	addiw	a4,a5,7
    80007124:	06c77663          	bgeu	a4,a2,80007190 <__memset+0x1c8>
    80007128:	00e50733          	add	a4,a0,a4
    8000712c:	00b70023          	sb	a1,0(a4)
    80007130:	0087871b          	addiw	a4,a5,8
    80007134:	04c77e63          	bgeu	a4,a2,80007190 <__memset+0x1c8>
    80007138:	00e50733          	add	a4,a0,a4
    8000713c:	00b70023          	sb	a1,0(a4)
    80007140:	0097871b          	addiw	a4,a5,9
    80007144:	04c77663          	bgeu	a4,a2,80007190 <__memset+0x1c8>
    80007148:	00e50733          	add	a4,a0,a4
    8000714c:	00b70023          	sb	a1,0(a4)
    80007150:	00a7871b          	addiw	a4,a5,10
    80007154:	02c77e63          	bgeu	a4,a2,80007190 <__memset+0x1c8>
    80007158:	00e50733          	add	a4,a0,a4
    8000715c:	00b70023          	sb	a1,0(a4)
    80007160:	00b7871b          	addiw	a4,a5,11
    80007164:	02c77663          	bgeu	a4,a2,80007190 <__memset+0x1c8>
    80007168:	00e50733          	add	a4,a0,a4
    8000716c:	00b70023          	sb	a1,0(a4)
    80007170:	00c7871b          	addiw	a4,a5,12
    80007174:	00c77e63          	bgeu	a4,a2,80007190 <__memset+0x1c8>
    80007178:	00e50733          	add	a4,a0,a4
    8000717c:	00b70023          	sb	a1,0(a4)
    80007180:	00d7879b          	addiw	a5,a5,13
    80007184:	00c7f663          	bgeu	a5,a2,80007190 <__memset+0x1c8>
    80007188:	00f507b3          	add	a5,a0,a5
    8000718c:	00b78023          	sb	a1,0(a5)
    80007190:	00813403          	ld	s0,8(sp)
    80007194:	01010113          	addi	sp,sp,16
    80007198:	00008067          	ret
    8000719c:	00b00693          	li	a3,11
    800071a0:	e55ff06f          	j	80006ff4 <__memset+0x2c>
    800071a4:	00300e93          	li	t4,3
    800071a8:	ea5ff06f          	j	8000704c <__memset+0x84>
    800071ac:	00100e93          	li	t4,1
    800071b0:	e9dff06f          	j	8000704c <__memset+0x84>
    800071b4:	00000e93          	li	t4,0
    800071b8:	e95ff06f          	j	8000704c <__memset+0x84>
    800071bc:	00000793          	li	a5,0
    800071c0:	ef9ff06f          	j	800070b8 <__memset+0xf0>
    800071c4:	00200e93          	li	t4,2
    800071c8:	e85ff06f          	j	8000704c <__memset+0x84>
    800071cc:	00400e93          	li	t4,4
    800071d0:	e7dff06f          	j	8000704c <__memset+0x84>
    800071d4:	00500e93          	li	t4,5
    800071d8:	e75ff06f          	j	8000704c <__memset+0x84>
    800071dc:	00600e93          	li	t4,6
    800071e0:	e6dff06f          	j	8000704c <__memset+0x84>

00000000800071e4 <__memmove>:
    800071e4:	ff010113          	addi	sp,sp,-16
    800071e8:	00813423          	sd	s0,8(sp)
    800071ec:	01010413          	addi	s0,sp,16
    800071f0:	0e060863          	beqz	a2,800072e0 <__memmove+0xfc>
    800071f4:	fff6069b          	addiw	a3,a2,-1
    800071f8:	0006881b          	sext.w	a6,a3
    800071fc:	0ea5e863          	bltu	a1,a0,800072ec <__memmove+0x108>
    80007200:	00758713          	addi	a4,a1,7
    80007204:	00a5e7b3          	or	a5,a1,a0
    80007208:	40a70733          	sub	a4,a4,a0
    8000720c:	0077f793          	andi	a5,a5,7
    80007210:	00f73713          	sltiu	a4,a4,15
    80007214:	00174713          	xori	a4,a4,1
    80007218:	0017b793          	seqz	a5,a5
    8000721c:	00e7f7b3          	and	a5,a5,a4
    80007220:	10078863          	beqz	a5,80007330 <__memmove+0x14c>
    80007224:	00900793          	li	a5,9
    80007228:	1107f463          	bgeu	a5,a6,80007330 <__memmove+0x14c>
    8000722c:	0036581b          	srliw	a6,a2,0x3
    80007230:	fff8081b          	addiw	a6,a6,-1
    80007234:	02081813          	slli	a6,a6,0x20
    80007238:	01d85893          	srli	a7,a6,0x1d
    8000723c:	00858813          	addi	a6,a1,8
    80007240:	00058793          	mv	a5,a1
    80007244:	00050713          	mv	a4,a0
    80007248:	01088833          	add	a6,a7,a6
    8000724c:	0007b883          	ld	a7,0(a5)
    80007250:	00878793          	addi	a5,a5,8
    80007254:	00870713          	addi	a4,a4,8
    80007258:	ff173c23          	sd	a7,-8(a4)
    8000725c:	ff0798e3          	bne	a5,a6,8000724c <__memmove+0x68>
    80007260:	ff867713          	andi	a4,a2,-8
    80007264:	02071793          	slli	a5,a4,0x20
    80007268:	0207d793          	srli	a5,a5,0x20
    8000726c:	00f585b3          	add	a1,a1,a5
    80007270:	40e686bb          	subw	a3,a3,a4
    80007274:	00f507b3          	add	a5,a0,a5
    80007278:	06e60463          	beq	a2,a4,800072e0 <__memmove+0xfc>
    8000727c:	0005c703          	lbu	a4,0(a1)
    80007280:	00e78023          	sb	a4,0(a5)
    80007284:	04068e63          	beqz	a3,800072e0 <__memmove+0xfc>
    80007288:	0015c603          	lbu	a2,1(a1)
    8000728c:	00100713          	li	a4,1
    80007290:	00c780a3          	sb	a2,1(a5)
    80007294:	04e68663          	beq	a3,a4,800072e0 <__memmove+0xfc>
    80007298:	0025c603          	lbu	a2,2(a1)
    8000729c:	00200713          	li	a4,2
    800072a0:	00c78123          	sb	a2,2(a5)
    800072a4:	02e68e63          	beq	a3,a4,800072e0 <__memmove+0xfc>
    800072a8:	0035c603          	lbu	a2,3(a1)
    800072ac:	00300713          	li	a4,3
    800072b0:	00c781a3          	sb	a2,3(a5)
    800072b4:	02e68663          	beq	a3,a4,800072e0 <__memmove+0xfc>
    800072b8:	0045c603          	lbu	a2,4(a1)
    800072bc:	00400713          	li	a4,4
    800072c0:	00c78223          	sb	a2,4(a5)
    800072c4:	00e68e63          	beq	a3,a4,800072e0 <__memmove+0xfc>
    800072c8:	0055c603          	lbu	a2,5(a1)
    800072cc:	00500713          	li	a4,5
    800072d0:	00c782a3          	sb	a2,5(a5)
    800072d4:	00e68663          	beq	a3,a4,800072e0 <__memmove+0xfc>
    800072d8:	0065c703          	lbu	a4,6(a1)
    800072dc:	00e78323          	sb	a4,6(a5)
    800072e0:	00813403          	ld	s0,8(sp)
    800072e4:	01010113          	addi	sp,sp,16
    800072e8:	00008067          	ret
    800072ec:	02061713          	slli	a4,a2,0x20
    800072f0:	02075713          	srli	a4,a4,0x20
    800072f4:	00e587b3          	add	a5,a1,a4
    800072f8:	f0f574e3          	bgeu	a0,a5,80007200 <__memmove+0x1c>
    800072fc:	02069613          	slli	a2,a3,0x20
    80007300:	02065613          	srli	a2,a2,0x20
    80007304:	fff64613          	not	a2,a2
    80007308:	00e50733          	add	a4,a0,a4
    8000730c:	00c78633          	add	a2,a5,a2
    80007310:	fff7c683          	lbu	a3,-1(a5)
    80007314:	fff78793          	addi	a5,a5,-1
    80007318:	fff70713          	addi	a4,a4,-1
    8000731c:	00d70023          	sb	a3,0(a4)
    80007320:	fec798e3          	bne	a5,a2,80007310 <__memmove+0x12c>
    80007324:	00813403          	ld	s0,8(sp)
    80007328:	01010113          	addi	sp,sp,16
    8000732c:	00008067          	ret
    80007330:	02069713          	slli	a4,a3,0x20
    80007334:	02075713          	srli	a4,a4,0x20
    80007338:	00170713          	addi	a4,a4,1
    8000733c:	00e50733          	add	a4,a0,a4
    80007340:	00050793          	mv	a5,a0
    80007344:	0005c683          	lbu	a3,0(a1)
    80007348:	00178793          	addi	a5,a5,1
    8000734c:	00158593          	addi	a1,a1,1
    80007350:	fed78fa3          	sb	a3,-1(a5)
    80007354:	fee798e3          	bne	a5,a4,80007344 <__memmove+0x160>
    80007358:	f89ff06f          	j	800072e0 <__memmove+0xfc>

000000008000735c <__putc>:
    8000735c:	fe010113          	addi	sp,sp,-32
    80007360:	00813823          	sd	s0,16(sp)
    80007364:	00113c23          	sd	ra,24(sp)
    80007368:	02010413          	addi	s0,sp,32
    8000736c:	00050793          	mv	a5,a0
    80007370:	fef40593          	addi	a1,s0,-17
    80007374:	00100613          	li	a2,1
    80007378:	00000513          	li	a0,0
    8000737c:	fef407a3          	sb	a5,-17(s0)
    80007380:	fffff097          	auipc	ra,0xfffff
    80007384:	b3c080e7          	jalr	-1220(ra) # 80005ebc <console_write>
    80007388:	01813083          	ld	ra,24(sp)
    8000738c:	01013403          	ld	s0,16(sp)
    80007390:	02010113          	addi	sp,sp,32
    80007394:	00008067          	ret

0000000080007398 <__getc>:
    80007398:	fe010113          	addi	sp,sp,-32
    8000739c:	00813823          	sd	s0,16(sp)
    800073a0:	00113c23          	sd	ra,24(sp)
    800073a4:	02010413          	addi	s0,sp,32
    800073a8:	fe840593          	addi	a1,s0,-24
    800073ac:	00100613          	li	a2,1
    800073b0:	00000513          	li	a0,0
    800073b4:	fffff097          	auipc	ra,0xfffff
    800073b8:	ae8080e7          	jalr	-1304(ra) # 80005e9c <console_read>
    800073bc:	fe844503          	lbu	a0,-24(s0)
    800073c0:	01813083          	ld	ra,24(sp)
    800073c4:	01013403          	ld	s0,16(sp)
    800073c8:	02010113          	addi	sp,sp,32
    800073cc:	00008067          	ret

00000000800073d0 <console_handler>:
    800073d0:	fe010113          	addi	sp,sp,-32
    800073d4:	00813823          	sd	s0,16(sp)
    800073d8:	00113c23          	sd	ra,24(sp)
    800073dc:	00913423          	sd	s1,8(sp)
    800073e0:	02010413          	addi	s0,sp,32
    800073e4:	14202773          	csrr	a4,scause
    800073e8:	100027f3          	csrr	a5,sstatus
    800073ec:	0027f793          	andi	a5,a5,2
    800073f0:	06079e63          	bnez	a5,8000746c <console_handler+0x9c>
    800073f4:	00074c63          	bltz	a4,8000740c <console_handler+0x3c>
    800073f8:	01813083          	ld	ra,24(sp)
    800073fc:	01013403          	ld	s0,16(sp)
    80007400:	00813483          	ld	s1,8(sp)
    80007404:	02010113          	addi	sp,sp,32
    80007408:	00008067          	ret
    8000740c:	0ff77713          	andi	a4,a4,255
    80007410:	00900793          	li	a5,9
    80007414:	fef712e3          	bne	a4,a5,800073f8 <console_handler+0x28>
    80007418:	ffffe097          	auipc	ra,0xffffe
    8000741c:	6dc080e7          	jalr	1756(ra) # 80005af4 <plic_claim>
    80007420:	00a00793          	li	a5,10
    80007424:	00050493          	mv	s1,a0
    80007428:	02f50c63          	beq	a0,a5,80007460 <console_handler+0x90>
    8000742c:	fc0506e3          	beqz	a0,800073f8 <console_handler+0x28>
    80007430:	00050593          	mv	a1,a0
    80007434:	00001517          	auipc	a0,0x1
    80007438:	20c50513          	addi	a0,a0,524 # 80008640 <CONSOLE_STATUS+0x630>
    8000743c:	fffff097          	auipc	ra,0xfffff
    80007440:	afc080e7          	jalr	-1284(ra) # 80005f38 <__printf>
    80007444:	01013403          	ld	s0,16(sp)
    80007448:	01813083          	ld	ra,24(sp)
    8000744c:	00048513          	mv	a0,s1
    80007450:	00813483          	ld	s1,8(sp)
    80007454:	02010113          	addi	sp,sp,32
    80007458:	ffffe317          	auipc	t1,0xffffe
    8000745c:	6d430067          	jr	1748(t1) # 80005b2c <plic_complete>
    80007460:	fffff097          	auipc	ra,0xfffff
    80007464:	3e0080e7          	jalr	992(ra) # 80006840 <uartintr>
    80007468:	fddff06f          	j	80007444 <console_handler+0x74>
    8000746c:	00001517          	auipc	a0,0x1
    80007470:	2d450513          	addi	a0,a0,724 # 80008740 <digits+0x78>
    80007474:	fffff097          	auipc	ra,0xfffff
    80007478:	a68080e7          	jalr	-1432(ra) # 80005edc <panic>
	...
