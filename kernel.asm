
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	a6813103          	ld	sp,-1432(sp) # 80008a68 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	500040ef          	jal	ra,8000451c <start>

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
    80001088:	a622b623          	sd	sp,-1428(t0) # 80008af0 <framePointer>

    call _ZN5Riscv11trapHandlerEv
    8000108c:	57d000ef          	jal	ra,80001e08 <_ZN5Riscv11trapHandlerEv>

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
    8000146c:	66870713          	addi	a4,a4,1640 # 80008ad0 <_ZN7KThread8staticIdE>
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
    80001500:	5d470713          	addi	a4,a4,1492 # 80008ad0 <_ZN7KThread8staticIdE>
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
    80001524:	5e4080e7          	jalr	1508(ra) # 80001b04 <_Znam>
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
    8000159c:	ce0080e7          	jalr	-800(ra) # 80002278 <_ZN15MemoryAllocator8mem_freeEPv>
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
    800015e8:	b94080e7          	jalr	-1132(ra) # 80002178 <_ZN15MemoryAllocator9mem_allocEm>
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
    8000164c:	b30080e7          	jalr	-1232(ra) # 80002178 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001670:	c0c080e7          	jalr	-1012(ra) # 80002278 <_ZN15MemoryAllocator8mem_freeEPv>
    80001674:	00090513          	mv	a0,s2
    80001678:	00008097          	auipc	ra,0x8
    8000167c:	580080e7          	jalr	1408(ra) # 80009bf8 <_Unwind_Resume>
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
    80001710:	3cc4b483          	ld	s1,972(s1) # 80008ad8 <_ZN7KThread7runningE>

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
    80001730:	3aa7b623          	sd	a0,940(a5) # 80008ad8 <_ZN7KThread7runningE>
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
    80001754:	3885b583          	ld	a1,904(a1) # 80008ad8 <_ZN7KThread7runningE>
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
    8000179c:	ae0080e7          	jalr	-1312(ra) # 80002278 <_ZN15MemoryAllocator8mem_freeEPv>
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
    800017e0:	2f448493          	addi	s1,s1,756 # 80008ad0 <_ZN7KThread8staticIdE>
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
    8000182c:	2b853503          	ld	a0,696(a0) # 80008ae0 <_ZN9Scheduler4headE>
    80001830:	00050c63          	beqz	a0,80001848 <_ZN9Scheduler3getEv+0x2c>

    KThread* thread = head;
    head = head->schedulerNext;
    80001834:	03853783          	ld	a5,56(a0)
    80001838:	00007717          	auipc	a4,0x7
    8000183c:	2af73423          	sd	a5,680(a4) # 80008ae0 <_ZN9Scheduler4headE>

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
    80001858:	2807ba23          	sd	zero,660(a5) # 80008ae8 <_ZN9Scheduler4tailE>
    8000185c:	fe9ff06f          	j	80001844 <_ZN9Scheduler3getEv+0x28>

0000000080001860 <_ZN9Scheduler3putEP7KThread>:

void Scheduler::put(KThread* thread) {
    80001860:	ff010113          	addi	sp,sp,-16
    80001864:	00813423          	sd	s0,8(sp)
    80001868:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    8000186c:	00007797          	auipc	a5,0x7
    80001870:	2747b783          	ld	a5,628(a5) # 80008ae0 <_ZN9Scheduler4headE>
    80001874:	02078263          	beqz	a5,80001898 <_ZN9Scheduler3putEP7KThread+0x38>
    else tail->schedulerNext = thread;
    80001878:	00007797          	auipc	a5,0x7
    8000187c:	2707b783          	ld	a5,624(a5) # 80008ae8 <_ZN9Scheduler4tailE>
    80001880:	02a7bc23          	sd	a0,56(a5)
    tail = thread;
    80001884:	00007797          	auipc	a5,0x7
    80001888:	26a7b223          	sd	a0,612(a5) # 80008ae8 <_ZN9Scheduler4tailE>
}
    8000188c:	00813403          	ld	s0,8(sp)
    80001890:	01010113          	addi	sp,sp,16
    80001894:	00008067          	ret
    if (!head) head = thread;
    80001898:	00007797          	auipc	a5,0x7
    8000189c:	24a7b423          	sd	a0,584(a5) # 80008ae0 <_ZN9Scheduler4headE>
    800018a0:	fe5ff06f          	j	80001884 <_ZN9Scheduler3putEP7KThread+0x24>

00000000800018a4 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    800018a4:	ff010113          	addi	sp,sp,-16
    800018a8:	00813423          	sd	s0,8(sp)
    800018ac:	01010413          	addi	s0,sp,16
    return head == nullptr;
    800018b0:	00007517          	auipc	a0,0x7
    800018b4:	23053503          	ld	a0,560(a0) # 80008ae0 <_ZN9Scheduler4headE>
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
    800018dc:	304080e7          	jalr	772(ra) # 80003bdc <_Z8userMainv>
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
    80001900:	00001097          	auipc	ra,0x1
    80001904:	828080e7          	jalr	-2008(ra) # 80002128 <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	4dc080e7          	jalr	1244(ra) # 80001de4 <_ZN5Riscv16setupTrapHandlerEv>

    thread_t mainThread, userBody;

    mainThread = KThread::createThread(nullptr, nullptr, nullptr);
    80001910:	00000613          	li	a2,0
    80001914:	00000593          	li	a1,0
    80001918:	00000513          	li	a0,0
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	c98080e7          	jalr	-872(ra) # 800015b4 <_ZN7KThread12createThreadEPFvPvES0_S0_>
    KThread::running = mainThread;
    80001924:	00007797          	auipc	a5,0x7
    80001928:	15c7b783          	ld	a5,348(a5) # 80008a80 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000192c:	00a7b023          	sd	a0,0(a5)
    void setState(ThreadState s) { state = s; }
    80001930:	00200793          	li	a5,2
    80001934:	02f52823          	sw	a5,48(a0)
    mainThread->setState(RUNNING);

    Riscv::setUserMode();
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	3f0080e7          	jalr	1008(ra) # 80001d28 <_ZN5Riscv11setUserModeEv>

    thread_create(&userBody, &userWrapper, nullptr);
    80001940:	00000613          	li	a2,0
    80001944:	00000597          	auipc	a1,0x0
    80001948:	f8458593          	addi	a1,a1,-124 # 800018c8 <_Z11userWrapperPv>
    8000194c:	fe840513          	addi	a0,s0,-24
    80001950:	00000097          	auipc	ra,0x0
    80001954:	90c080e7          	jalr	-1780(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
inline void Riscv::w_sip(uint64 sip) {
    asm volatile("csrw sip, %0" :: "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    asm volatile("csrs sstatus, %0" :: "r"(mask));
    80001958:	00200793          	li	a5,2
    8000195c:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(0x02);

    while (!Scheduler::isEmpty()) {
    80001960:	00000097          	auipc	ra,0x0
    80001964:	f44080e7          	jalr	-188(ra) # 800018a4 <_ZN9Scheduler7isEmptyEv>
    80001968:	00051863          	bnez	a0,80001978 <main+0x88>
        KThread::yield();
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	e3c080e7          	jalr	-452(ra) # 800017a8 <_ZN7KThread5yieldEv>
    80001974:	fedff06f          	j	80001960 <main+0x70>
    }

    80001978:	01813083          	ld	ra,24(sp)
    8000197c:	01013403          	ld	s0,16(sp)
    80001980:	02010113          	addi	sp,sp,32
    80001984:	00008067          	ret

0000000080001988 <_ZN6ThreadD1Ev>:
    : myHandle(nullptr), body(body), arg(arg) {}

Thread::Thread()
    : myHandle(nullptr), body(nullptr), arg(nullptr) {}

Thread::~Thread() {
    80001988:	00007797          	auipc	a5,0x7
    8000198c:	fe078793          	addi	a5,a5,-32 # 80008968 <_ZTV6Thread+0x10>
    80001990:	00f53023          	sd	a5,0(a0)
    if (myHandle) {
    80001994:	00853503          	ld	a0,8(a0)
    80001998:	02050663          	beqz	a0,800019c4 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread() {
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00113423          	sd	ra,8(sp)
    800019a4:	00813023          	sd	s0,0(sp)
    800019a8:	01010413          	addi	s0,sp,16
        mem_free(myHandle);
    800019ac:	fffff097          	auipc	ra,0xfffff
    800019b0:	7fc080e7          	jalr	2044(ra) # 800011a8 <_Z8mem_freePv>
        myHandle = nullptr;
    }
}
    800019b4:	00813083          	ld	ra,8(sp)
    800019b8:	00013403          	ld	s0,0(sp)
    800019bc:	01010113          	addi	sp,sp,16
    800019c0:	00008067          	ret
    800019c4:	00008067          	ret

00000000800019c8 <_ZN6Thread7wrapperEPv>:
void Thread::wrapper(void* arg) {
    800019c8:	ff010113          	addi	sp,sp,-16
    800019cc:	00113423          	sd	ra,8(sp)
    800019d0:	00813023          	sd	s0,0(sp)
    800019d4:	01010413          	addi	s0,sp,16
    thread->run();
    800019d8:	00053783          	ld	a5,0(a0)
    800019dc:	0107b783          	ld	a5,16(a5)
    800019e0:	000780e7          	jalr	a5
    thread_exit();
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	924080e7          	jalr	-1756(ra) # 80001308 <_Z11thread_exitv>
}
    800019ec:	00813083          	ld	ra,8(sp)
    800019f0:	00013403          	ld	s0,0(sp)
    800019f4:	01010113          	addi	sp,sp,16
    800019f8:	00008067          	ret

00000000800019fc <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800019fc:	ff010113          	addi	sp,sp,-16
    80001a00:	00113423          	sd	ra,8(sp)
    80001a04:	00813023          	sd	s0,0(sp)
    80001a08:	01010413          	addi	s0,sp,16
    80001a0c:	00007797          	auipc	a5,0x7
    80001a10:	f8478793          	addi	a5,a5,-124 # 80008990 <_ZTV9Semaphore+0x10>
    80001a14:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001a18:	00853503          	ld	a0,8(a0)
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	96c080e7          	jalr	-1684(ra) # 80001388 <_Z9sem_closeP10KSemaphore>
}
    80001a24:	00813083          	ld	ra,8(sp)
    80001a28:	00013403          	ld	s0,0(sp)
    80001a2c:	01010113          	addi	sp,sp,16
    80001a30:	00008067          	ret

0000000080001a34 <_Znwm>:
void* operator new(size_t size) {
    80001a34:	ff010113          	addi	sp,sp,-16
    80001a38:	00113423          	sd	ra,8(sp)
    80001a3c:	00813023          	sd	s0,0(sp)
    80001a40:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a44:	fffff097          	auipc	ra,0xfffff
    80001a48:	720080e7          	jalr	1824(ra) # 80001164 <_Z9mem_allocm>
}
    80001a4c:	00813083          	ld	ra,8(sp)
    80001a50:	00013403          	ld	s0,0(sp)
    80001a54:	01010113          	addi	sp,sp,16
    80001a58:	00008067          	ret

0000000080001a5c <_ZdlPv>:
void operator delete(void* ptr) {
    80001a5c:	ff010113          	addi	sp,sp,-16
    80001a60:	00113423          	sd	ra,8(sp)
    80001a64:	00813023          	sd	s0,0(sp)
    80001a68:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001a6c:	fffff097          	auipc	ra,0xfffff
    80001a70:	73c080e7          	jalr	1852(ra) # 800011a8 <_Z8mem_freePv>
}
    80001a74:	00813083          	ld	ra,8(sp)
    80001a78:	00013403          	ld	s0,0(sp)
    80001a7c:	01010113          	addi	sp,sp,16
    80001a80:	00008067          	ret

0000000080001a84 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001a84:	fe010113          	addi	sp,sp,-32
    80001a88:	00113c23          	sd	ra,24(sp)
    80001a8c:	00813823          	sd	s0,16(sp)
    80001a90:	00913423          	sd	s1,8(sp)
    80001a94:	02010413          	addi	s0,sp,32
    80001a98:	00050493          	mv	s1,a0
}
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	eec080e7          	jalr	-276(ra) # 80001988 <_ZN6ThreadD1Ev>
    80001aa4:	00048513          	mv	a0,s1
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	fb4080e7          	jalr	-76(ra) # 80001a5c <_ZdlPv>
    80001ab0:	01813083          	ld	ra,24(sp)
    80001ab4:	01013403          	ld	s0,16(sp)
    80001ab8:	00813483          	ld	s1,8(sp)
    80001abc:	02010113          	addi	sp,sp,32
    80001ac0:	00008067          	ret

0000000080001ac4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001ac4:	fe010113          	addi	sp,sp,-32
    80001ac8:	00113c23          	sd	ra,24(sp)
    80001acc:	00813823          	sd	s0,16(sp)
    80001ad0:	00913423          	sd	s1,8(sp)
    80001ad4:	02010413          	addi	s0,sp,32
    80001ad8:	00050493          	mv	s1,a0
}
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	f20080e7          	jalr	-224(ra) # 800019fc <_ZN9SemaphoreD1Ev>
    80001ae4:	00048513          	mv	a0,s1
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	f74080e7          	jalr	-140(ra) # 80001a5c <_ZdlPv>
    80001af0:	01813083          	ld	ra,24(sp)
    80001af4:	01013403          	ld	s0,16(sp)
    80001af8:	00813483          	ld	s1,8(sp)
    80001afc:	02010113          	addi	sp,sp,32
    80001b00:	00008067          	ret

0000000080001b04 <_Znam>:
void* operator new[](size_t size) {
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00113423          	sd	ra,8(sp)
    80001b0c:	00813023          	sd	s0,0(sp)
    80001b10:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001b14:	fffff097          	auipc	ra,0xfffff
    80001b18:	650080e7          	jalr	1616(ra) # 80001164 <_Z9mem_allocm>
}
    80001b1c:	00813083          	ld	ra,8(sp)
    80001b20:	00013403          	ld	s0,0(sp)
    80001b24:	01010113          	addi	sp,sp,16
    80001b28:	00008067          	ret

0000000080001b2c <_ZdaPv>:
void operator delete[](void* ptr) {
    80001b2c:	ff010113          	addi	sp,sp,-16
    80001b30:	00113423          	sd	ra,8(sp)
    80001b34:	00813023          	sd	s0,0(sp)
    80001b38:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001b3c:	fffff097          	auipc	ra,0xfffff
    80001b40:	66c080e7          	jalr	1644(ra) # 800011a8 <_Z8mem_freePv>
}
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret

0000000080001b54 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg)
    80001b54:	ff010113          	addi	sp,sp,-16
    80001b58:	00813423          	sd	s0,8(sp)
    80001b5c:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(body), arg(arg) {}
    80001b60:	00007797          	auipc	a5,0x7
    80001b64:	e0878793          	addi	a5,a5,-504 # 80008968 <_ZTV6Thread+0x10>
    80001b68:	00f53023          	sd	a5,0(a0)
    80001b6c:	00053423          	sd	zero,8(a0)
    80001b70:	00b53823          	sd	a1,16(a0)
    80001b74:	00c53c23          	sd	a2,24(a0)
    80001b78:	00813403          	ld	s0,8(sp)
    80001b7c:	01010113          	addi	sp,sp,16
    80001b80:	00008067          	ret

0000000080001b84 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80001b84:	ff010113          	addi	sp,sp,-16
    80001b88:	00813423          	sd	s0,8(sp)
    80001b8c:	01010413          	addi	s0,sp,16
    : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    80001b90:	00007797          	auipc	a5,0x7
    80001b94:	dd878793          	addi	a5,a5,-552 # 80008968 <_ZTV6Thread+0x10>
    80001b98:	00f53023          	sd	a5,0(a0)
    80001b9c:	00053423          	sd	zero,8(a0)
    80001ba0:	00053823          	sd	zero,16(a0)
    80001ba4:	00053c23          	sd	zero,24(a0)
    80001ba8:	00813403          	ld	s0,8(sp)
    80001bac:	01010113          	addi	sp,sp,16
    80001bb0:	00008067          	ret

0000000080001bb4 <_ZN6Thread5startEv>:
int Thread::start() {
    80001bb4:	ff010113          	addi	sp,sp,-16
    80001bb8:	00113423          	sd	ra,8(sp)
    80001bbc:	00813023          	sd	s0,0(sp)
    80001bc0:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    80001bc4:	01053583          	ld	a1,16(a0)
    80001bc8:	02058263          	beqz	a1,80001bec <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80001bcc:	01853603          	ld	a2,24(a0)
    80001bd0:	00850513          	addi	a0,a0,8
    80001bd4:	fffff097          	auipc	ra,0xfffff
    80001bd8:	688080e7          	jalr	1672(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
}
    80001bdc:	00813083          	ld	ra,8(sp)
    80001be0:	00013403          	ld	s0,0(sp)
    80001be4:	01010113          	addi	sp,sp,16
    80001be8:	00008067          	ret
    return thread_create(&myHandle, wrapper, this);
    80001bec:	00050613          	mv	a2,a0
    80001bf0:	00000597          	auipc	a1,0x0
    80001bf4:	dd858593          	addi	a1,a1,-552 # 800019c8 <_ZN6Thread7wrapperEPv>
    80001bf8:	00850513          	addi	a0,a0,8
    80001bfc:	fffff097          	auipc	ra,0xfffff
    80001c00:	660080e7          	jalr	1632(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    80001c04:	fd9ff06f          	j	80001bdc <_ZN6Thread5startEv+0x28>

0000000080001c08 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001c08:	ff010113          	addi	sp,sp,-16
    80001c0c:	00113423          	sd	ra,8(sp)
    80001c10:	00813023          	sd	s0,0(sp)
    80001c14:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001c18:	fffff097          	auipc	ra,0xfffff
    80001c1c:	718080e7          	jalr	1816(ra) # 80001330 <_Z15thread_dispatchv>
}
    80001c20:	00813083          	ld	ra,8(sp)
    80001c24:	00013403          	ld	s0,0(sp)
    80001c28:	01010113          	addi	sp,sp,16
    80001c2c:	00008067          	ret

0000000080001c30 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80001c30:	ff010113          	addi	sp,sp,-16
    80001c34:	00113423          	sd	ra,8(sp)
    80001c38:	00813023          	sd	s0,0(sp)
    80001c3c:	01010413          	addi	s0,sp,16
    80001c40:	00007797          	auipc	a5,0x7
    80001c44:	d5078793          	addi	a5,a5,-688 # 80008990 <_ZTV9Semaphore+0x10>
    80001c48:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001c4c:	00850513          	addi	a0,a0,8
    80001c50:	fffff097          	auipc	ra,0xfffff
    80001c54:	700080e7          	jalr	1792(ra) # 80001350 <_Z8sem_openPP10KSemaphorej>
}
    80001c58:	00813083          	ld	ra,8(sp)
    80001c5c:	00013403          	ld	s0,0(sp)
    80001c60:	01010113          	addi	sp,sp,16
    80001c64:	00008067          	ret

0000000080001c68 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00113423          	sd	ra,8(sp)
    80001c70:	00813023          	sd	s0,0(sp)
    80001c74:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001c78:	00853503          	ld	a0,8(a0)
    80001c7c:	fffff097          	auipc	ra,0xfffff
    80001c80:	738080e7          	jalr	1848(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>
}
    80001c84:	00813083          	ld	ra,8(sp)
    80001c88:	00013403          	ld	s0,0(sp)
    80001c8c:	01010113          	addi	sp,sp,16
    80001c90:	00008067          	ret

0000000080001c94 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00113423          	sd	ra,8(sp)
    80001c9c:	00813023          	sd	s0,0(sp)
    80001ca0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001ca4:	00853503          	ld	a0,8(a0)
    80001ca8:	fffff097          	auipc	ra,0xfffff
    80001cac:	738080e7          	jalr	1848(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>
}
    80001cb0:	00813083          	ld	ra,8(sp)
    80001cb4:	00013403          	ld	s0,0(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret

0000000080001cc0 <_ZN7Console4getcEv>:

char Console::getc() {
    80001cc0:	ff010113          	addi	sp,sp,-16
    80001cc4:	00113423          	sd	ra,8(sp)
    80001cc8:	00813023          	sd	s0,0(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    return ::getc();
    80001cd0:	fffff097          	auipc	ra,0xfffff
    80001cd4:	73c080e7          	jalr	1852(ra) # 8000140c <_Z4getcv>
}
    80001cd8:	00813083          	ld	ra,8(sp)
    80001cdc:	00013403          	ld	s0,0(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00113423          	sd	ra,8(sp)
    80001cf0:	00813023          	sd	s0,0(sp)
    80001cf4:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001cf8:	fffff097          	auipc	ra,0xfffff
    80001cfc:	73c080e7          	jalr	1852(ra) # 80001434 <_Z4putcc>
    80001d00:	00813083          	ld	ra,8(sp)
    80001d04:	00013403          	ld	s0,0(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret

0000000080001d10 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001d10:	ff010113          	addi	sp,sp,-16
    80001d14:	00813423          	sd	s0,8(sp)
    80001d18:	01010413          	addi	s0,sp,16
    80001d1c:	00813403          	ld	s0,8(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <_ZN5Riscv11setUserModeEv>:
constexpr uint64 SEM_SIGNAL = 0x24;

constexpr uint64 GETC = 0x41;
constexpr uint64 PUTC = 0x42;

void Riscv::setUserMode() {
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00813423          	sd	s0,8(sp)
    80001d30:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    asm volatile("csrc sstatus, %0" :: "r"(mask));
    80001d34:	10000793          	li	a5,256
    80001d38:	1007b073          	csrc	sstatus,a5
    // Očisti SPP bit (previous privilege = User mode)
    mc_sstatus(SSTATUS_SPP);
}
    80001d3c:	00813403          	ld	s0,8(sp)
    80001d40:	01010113          	addi	sp,sp,16
    80001d44:	00008067          	ret

0000000080001d48 <_ZN5Riscv13setKernelModeEv>:

// ✅ NOVO - Postavi kernel režim
void Riscv::setKernelMode() {
    80001d48:	ff010113          	addi	sp,sp,-16
    80001d4c:	00813423          	sd	s0,8(sp)
    80001d50:	01010413          	addi	s0,sp,16
    asm volatile("csrs sstatus, %0" :: "r"(mask));
    80001d54:	10000793          	li	a5,256
    80001d58:	1007a073          	csrs	sstatus,a5
    // Postavi SPP bit (previous privilege = Supervisor mode)
    ms_sstatus(SSTATUS_SPP);
}
    80001d5c:	00813403          	ld	s0,8(sp)
    80001d60:	01010113          	addi	sp,sp,16
    80001d64:	00008067          	ret

0000000080001d68 <_ZN5Riscv10isUserModeEv>:

// ✅ NOVO - Proveri da li je korisnički režim
bool Riscv::isUserMode() {
    80001d68:	fe010113          	addi	sp,sp,-32
    80001d6c:	00813c23          	sd	s0,24(sp)
    80001d70:	02010413          	addi	s0,sp,32
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    asm volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001d74:	100027f3          	csrr	a5,sstatus
    80001d78:	fef43423          	sd	a5,-24(s0)
    return sstatus;
    80001d7c:	fe843503          	ld	a0,-24(s0)
    uint64 sstatus = r_sstatus();
    return (sstatus & SSTATUS_SPP) == 0;
    80001d80:	10057513          	andi	a0,a0,256
}
    80001d84:	00153513          	seqz	a0,a0
    80001d88:	01813403          	ld	s0,24(sp)
    80001d8c:	02010113          	addi	sp,sp,32
    80001d90:	00008067          	ret

0000000080001d94 <_ZN5Riscv12returnToUserEv>:

// ✅ NOVO - Vrati se u korisnički režim
void Riscv::returnToUser() {
    80001d94:	ff010113          	addi	sp,sp,-16
    80001d98:	00813423          	sd	s0,8(sp)
    80001d9c:	01010413          	addi	s0,sp,16
    asm volatile("csrc sstatus, %0" :: "r"(mask));
    80001da0:	10000793          	li	a5,256
    80001da4:	1007b073          	csrc	sstatus,a5
    asm volatile("csrs sstatus, %0" :: "r"(mask));
    80001da8:	02000793          	li	a5,32
    80001dac:	1007a073          	csrs	sstatus,a5
    // Postavi da sledeći sret ide u korisnički režim
    mc_sstatus(SSTATUS_SPP);

    // Omogući prekide nakon povratka
    ms_sstatus(SSTATUS_SPIE);
}
    80001db0:	00813403          	ld	s0,8(sp)
    80001db4:	01010113          	addi	sp,sp,16
    80001db8:	00008067          	ret

0000000080001dbc <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80001dbc:	ff010113          	addi	sp,sp,-16
    80001dc0:	00813423          	sd	s0,8(sp)
    80001dc4:	01010413          	addi	s0,sp,16
    asm volatile("csrc sstatus, %0" :: "r"(mask));
    80001dc8:	10000793          	li	a5,256
    80001dcc:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    asm volatile("csrw sepc, ra");
    80001dd0:	14109073          	csrw	sepc,ra
    asm volatile("sret");
    80001dd4:	10200073          	sret
}
    80001dd8:	00813403          	ld	s0,8(sp)
    80001ddc:	01010113          	addi	sp,sp,16
    80001de0:	00008067          	ret

0000000080001de4 <_ZN5Riscv16setupTrapHandlerEv>:


void Riscv::setupTrapHandler() {
    80001de4:	ff010113          	addi	sp,sp,-16
    80001de8:	00813423          	sd	s0,8(sp)
    80001dec:	01010413          	addi	s0,sp,16
    unsigned long addr = (unsigned long)&trap_handler;
    80001df0:	00007797          	auipc	a5,0x7
    80001df4:	c807b783          	ld	a5,-896(a5) # 80008a70 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(stvec));
    80001df8:	10579073          	csrw	stvec,a5
    w_stvec(addr);
}
    80001dfc:	00813403          	ld	s0,8(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret

0000000080001e08 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001e08:	fb010113          	addi	sp,sp,-80
    80001e0c:	04113423          	sd	ra,72(sp)
    80001e10:	04813023          	sd	s0,64(sp)
    80001e14:	02913c23          	sd	s1,56(sp)
    80001e18:	03213823          	sd	s2,48(sp)
    80001e1c:	03313423          	sd	s3,40(sp)
    80001e20:	03413023          	sd	s4,32(sp)
    80001e24:	05010413          	addi	s0,sp,80
    asm volatile("csrr %0, scause" : "=r"(scause));
    80001e28:	142027f3          	csrr	a5,scause
    80001e2c:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001e30:	fc043483          	ld	s1,-64(s0)
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    80001e34:	141027f3          	csrr	a5,sepc
    80001e38:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001e3c:	fb843983          	ld	s3,-72(s0)
    uint64 scause = r_scause();
    uint64 sepc = r_sepc();

    bool wasUserMode = !isUserMode();
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	f28080e7          	jalr	-216(ra) # 80001d68 <_ZN5Riscv10isUserModeEv>

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    80001e48:	fff00793          	li	a5,-1
    80001e4c:	0017d793          	srli	a5,a5,0x1
    80001e50:	00f4f7b3          	and	a5,s1,a5

    if (interrupt == 0 && (cause == 8 || cause == 9)) {
    80001e54:	0004ca63          	bltz	s1,80001e68 <_ZN5Riscv11trapHandlerEv+0x60>
    80001e58:	00050913          	mv	s2,a0
    80001e5c:	ff878793          	addi	a5,a5,-8
    80001e60:	00100713          	li	a4,1
    80001e64:	02f77263          	bgeu	a4,a5,80001e88 <_ZN5Riscv11trapHandlerEv+0x80>
        if (wasUserMode) {
            returnToUser();
        }
        w_sstatus(sstatus);
    }
    80001e68:	04813083          	ld	ra,72(sp)
    80001e6c:	04013403          	ld	s0,64(sp)
    80001e70:	03813483          	ld	s1,56(sp)
    80001e74:	03013903          	ld	s2,48(sp)
    80001e78:	02813983          	ld	s3,40(sp)
    80001e7c:	02013a03          	ld	s4,32(sp)
    80001e80:	05010113          	addi	sp,sp,80
    80001e84:	00008067          	ret
    asm volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001e88:	100027f3          	csrr	a5,sstatus
    80001e8c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001e90:	fc843483          	ld	s1,-56(s0)
        asm volatile("mv %0, a0" : "=r"(code));
    80001e94:	00050793          	mv	a5,a0
        switch (code) {
    80001e98:	04200713          	li	a4,66
    80001e9c:	04f76463          	bltu	a4,a5,80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
    80001ea0:	00279793          	slli	a5,a5,0x2
    80001ea4:	00005717          	auipc	a4,0x5
    80001ea8:	17c70713          	addi	a4,a4,380 # 80007020 <CONSOLE_STATUS+0x10>
    80001eac:	00e787b3          	add	a5,a5,a4
    80001eb0:	0007a783          	lw	a5,0(a5)
    80001eb4:	00e787b3          	add	a5,a5,a4
    80001eb8:	00078067          	jr	a5
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001ebc:	00007a17          	auipc	s4,0x7
    80001ec0:	bcca3a03          	ld	s4,-1076(s4) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ec4:	000a3783          	ld	a5,0(s4)
    80001ec8:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(size));
    80001ecc:	00058513          	mv	a0,a1
                void* ptr = MemoryAllocator::mem_alloc(size);
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	2a8080e7          	jalr	680(ra) # 80002178 <_ZN15MemoryAllocator9mem_allocEm>
                asm volatile("mv a0, %0" :: "r"(ptr));
    80001ed8:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001edc:	000a3783          	ld	a5,0(s4)
    80001ee0:	04a7b823          	sd	a0,80(a5)
        sepc += 4;
    80001ee4:	00498993          	addi	s3,s3,4
    asm volatile("csrw sepc, %0" :: "r"(sepc));
    80001ee8:	14199073          	csrw	sepc,s3
        if (wasUserMode) {
    80001eec:	22090863          	beqz	s2,8000211c <_ZN5Riscv11trapHandlerEv+0x314>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    asm volatile("csrw sstatus, %0" :: "r"(sstatus));
    80001ef0:	10049073          	csrw	sstatus,s1
    80001ef4:	f75ff06f          	j	80001e68 <_ZN5Riscv11trapHandlerEv+0x60>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001ef8:	00007a17          	auipc	s4,0x7
    80001efc:	b90a3a03          	ld	s4,-1136(s4) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f00:	000a3783          	ld	a5,0(s4)
    80001f04:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(addr));
    80001f08:	00058513          	mv	a0,a1
                int status = MemoryAllocator::mem_free(addr);
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	36c080e7          	jalr	876(ra) # 80002278 <_ZN15MemoryAllocator8mem_freeEPv>
                asm volatile("mv a0, %0" :: "r"(status));
    80001f14:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001f18:	000a3783          	ld	a5,0(s4)
    80001f1c:	04a7b823          	sd	a0,80(a5)
                break;
    80001f20:	fc5ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	3f8080e7          	jalr	1016(ra) # 8000231c <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                asm volatile("mv a0, %0" :: "r"(freeSpace));
    80001f2c:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001f30:	00007797          	auipc	a5,0x7
    80001f34:	b587b783          	ld	a5,-1192(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f38:	0007b783          	ld	a5,0(a5)
    80001f3c:	04a7b823          	sd	a0,80(a5)
                break;
    80001f40:	fa5ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	420080e7          	jalr	1056(ra) # 80002364 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                asm volatile("mv a0, %0" :: "r"(largest));
    80001f4c:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001f50:	00007797          	auipc	a5,0x7
    80001f54:	b387b783          	ld	a5,-1224(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f58:	0007b783          	ld	a5,0(a5)
    80001f5c:	04a7b823          	sd	a0,80(a5)
                break;
    80001f60:	f85ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
    asm volatile("csrc sstatus, %0" :: "r"(mask));
    80001f64:	10000793          	li	a5,256
    80001f68:	1007b073          	csrc	sstatus,a5
}
    80001f6c:	f79ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
    asm volatile("csrs sstatus, %0" :: "r"(mask));
    80001f70:	10000793          	li	a5,256
    80001f74:	1007a073          	csrs	sstatus,a5
}
    80001f78:	f6dff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001f7c:	00007797          	auipc	a5,0x7
    80001f80:	b0c7b783          	ld	a5,-1268(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f84:	0007b783          	ld	a5,0(a5)
    80001f88:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001f8c:	00058a13          	mv	s4,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001f90:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(start_routine));
    80001f94:	00060513          	mv	a0,a2
                asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
    80001f98:	0687b683          	ld	a3,104(a5)
                asm volatile("mv %0, a3" : "=r"(args));
    80001f9c:	00068593          	mv	a1,a3
                asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
    80001fa0:	0707b703          	ld	a4,112(a5)
                asm volatile("mv %0, a4" : "=r"(stack));
    80001fa4:	00070613          	mv	a2,a4
                *handle = KThread::createThread(start_routine, args, stack);
    80001fa8:	fffff097          	auipc	ra,0xfffff
    80001fac:	60c080e7          	jalr	1548(ra) # 800015b4 <_ZN7KThread12createThreadEPFvPvES0_S0_>
    80001fb0:	00aa3023          	sd	a0,0(s4)
                if (*handle != nullptr) {
    80001fb4:	02050263          	beqz	a0,80001fd8 <_ZN5Riscv11trapHandlerEv+0x1d0>
                    (*handle)->start();
    80001fb8:	fffff097          	auipc	ra,0xfffff
    80001fbc:	6e4080e7          	jalr	1764(ra) # 8000169c <_ZN7KThread5startEv>
                    asm volatile("li a0, 0");
    80001fc0:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001fc4:	00007797          	auipc	a5,0x7
    80001fc8:	ac47b783          	ld	a5,-1340(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fcc:	0007b783          	ld	a5,0(a5)
    80001fd0:	04a7b823          	sd	a0,80(a5)
                break;
    80001fd4:	f11ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                else asm volatile("li a0, -1");
    80001fd8:	fff00513          	li	a0,-1
    80001fdc:	fe9ff06f          	j	80001fc4 <_ZN5Riscv11trapHandlerEv+0x1bc>
                if (KThread::running) {
    80001fe0:	00007797          	auipc	a5,0x7
    80001fe4:	aa07b783          	ld	a5,-1376(a5) # 80008a80 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001fe8:	0007b503          	ld	a0,0(a5)
    80001fec:	00050663          	beqz	a0,80001ff8 <_ZN5Riscv11trapHandlerEv+0x1f0>
                    KThread::running->exit();
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	6e8080e7          	jalr	1768(ra) # 800016d8 <_ZN7KThread4exitEv>
                KThread::dispatch();
    80001ff8:	fffff097          	auipc	ra,0xfffff
    80001ffc:	700080e7          	jalr	1792(ra) # 800016f8 <_ZN7KThread8dispatchEv>
                asm volatile("li a0, 0");
    80002000:	00000513          	li	a0,0
                break;
    80002004:	ee1ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                KThread::dispatch();
    80002008:	fffff097          	auipc	ra,0xfffff
    8000200c:	6f0080e7          	jalr	1776(ra) # 800016f8 <_ZN7KThread8dispatchEv>
                break;
    80002010:	ed5ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80002014:	00007797          	auipc	a5,0x7
    80002018:	a747b783          	ld	a5,-1420(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000201c:	0007b783          	ld	a5,0(a5)
    80002020:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80002024:	00058a13          	mv	s4,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80002028:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(init));
    8000202c:	00060513          	mv	a0,a2
                *handle = KSemaphore::createSemaphore(init);
    80002030:	02051513          	slli	a0,a0,0x20
    80002034:	02055513          	srli	a0,a0,0x20
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	37c080e7          	jalr	892(ra) # 800023b4 <_ZN10KSemaphore15createSemaphoreEm>
    80002040:	00aa3023          	sd	a0,0(s4)
                if (*handle != nullptr) asm volatile("li a0, 0");
    80002044:	00050e63          	beqz	a0,80002060 <_ZN5Riscv11trapHandlerEv+0x258>
    80002048:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    8000204c:	00007797          	auipc	a5,0x7
    80002050:	a3c7b783          	ld	a5,-1476(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002054:	0007b783          	ld	a5,0(a5)
    80002058:	04a7b823          	sd	a0,80(a5)
                break;
    8000205c:	e89ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                else asm volatile("li a0, -1");
    80002060:	fff00513          	li	a0,-1
    80002064:	fe9ff06f          	j	8000204c <_ZN5Riscv11trapHandlerEv+0x244>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80002068:	00007797          	auipc	a5,0x7
    8000206c:	a207b783          	ld	a5,-1504(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002070:	0007b783          	ld	a5,0(a5)
    80002074:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80002078:	00058513          	mv	a0,a1
                if (handle) {
    8000207c:	00050a63          	beqz	a0,80002090 <_ZN5Riscv11trapHandlerEv+0x288>
                    handle->close();
    80002080:	00000097          	auipc	ra,0x0
    80002084:	498080e7          	jalr	1176(ra) # 80002518 <_ZN10KSemaphore5closeEv>
                    asm volatile("li a0, 0");
    80002088:	00000513          	li	a0,0
    8000208c:	e59ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                else asm volatile("li a0, -1");
    80002090:	fff00513          	li	a0,-1
    80002094:	e51ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80002098:	00007797          	auipc	a5,0x7
    8000209c:	9f07b783          	ld	a5,-1552(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020a0:	0007b783          	ld	a5,0(a5)
    800020a4:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    800020a8:	00058513          	mv	a0,a1
                if (handle) {
    800020ac:	00050a63          	beqz	a0,800020c0 <_ZN5Riscv11trapHandlerEv+0x2b8>
                    handle->wait();
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	3b8080e7          	jalr	952(ra) # 80002468 <_ZN10KSemaphore4waitEv>
                    asm volatile("li a0, 0");
    800020b8:	00000513          	li	a0,0
    800020bc:	e29ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                else asm volatile("li a0, -1");
    800020c0:	fff00513          	li	a0,-1
    800020c4:	e21ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    800020c8:	00007797          	auipc	a5,0x7
    800020cc:	9c07b783          	ld	a5,-1600(a5) # 80008a88 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020d0:	0007b783          	ld	a5,0(a5)
    800020d4:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    800020d8:	00058513          	mv	a0,a1
                if (handle) {
    800020dc:	00050a63          	beqz	a0,800020f0 <_ZN5Riscv11trapHandlerEv+0x2e8>
                    handle->signal();
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	3e4080e7          	jalr	996(ra) # 800024c4 <_ZN10KSemaphore6signalEv>
                    asm volatile("li a0, 0");
    800020e8:	00000513          	li	a0,0
    800020ec:	df9ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                else asm volatile("li a0, -1");
    800020f0:	fff00513          	li	a0,-1
    800020f4:	df1ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                char c = __getc();
    800020f8:	00004097          	auipc	ra,0x4
    800020fc:	520080e7          	jalr	1312(ra) # 80006618 <__getc>
                asm volatile("mv a0, %0" :: "r"(c));
    80002100:	00050513          	mv	a0,a0
                break;
    80002104:	de1ff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
                asm volatile("mv %0, a1" : "=r"(c));
    80002108:	00058513          	mv	a0,a1
                __putc(c);
    8000210c:	0ff57513          	andi	a0,a0,255
    80002110:	00004097          	auipc	ra,0x4
    80002114:	4cc080e7          	jalr	1228(ra) # 800065dc <__putc>
                break;
    80002118:	dcdff06f          	j	80001ee4 <_ZN5Riscv11trapHandlerEv+0xdc>
            returnToUser();
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	c78080e7          	jalr	-904(ra) # 80001d94 <_ZN5Riscv12returnToUserEv>
    80002124:	dcdff06f          	j	80001ef0 <_ZN5Riscv11trapHandlerEv+0xe8>

0000000080002128 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80002128:	ff010113          	addi	sp,sp,-16
    8000212c:	00813423          	sd	s0,8(sp)
    80002130:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80002134:	00007697          	auipc	a3,0x7
    80002138:	92c6b683          	ld	a3,-1748(a3) # 80008a60 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000213c:	0006b783          	ld	a5,0(a3)
    80002140:	00007717          	auipc	a4,0x7
    80002144:	9b870713          	addi	a4,a4,-1608 # 80008af8 <_ZN15MemoryAllocator12freeListHeadE>
    80002148:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    8000214c:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80002150:	00007797          	auipc	a5,0x7
    80002154:	9287b783          	ld	a5,-1752(a5) # 80008a78 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002158:	0007b783          	ld	a5,0(a5)
    8000215c:	0006b683          	ld	a3,0(a3)
    80002160:	00073703          	ld	a4,0(a4)
    80002164:	40d787b3          	sub	a5,a5,a3
    80002168:	00f73423          	sd	a5,8(a4)
}
    8000216c:	00813403          	ld	s0,8(sp)
    80002170:	01010113          	addi	sp,sp,16
    80002174:	00008067          	ret

0000000080002178 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    80002178:	ff010113          	addi	sp,sp,-16
    8000217c:	00813423          	sd	s0,8(sp)
    80002180:	01010413          	addi	s0,sp,16
    80002184:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    80002188:	00007517          	auipc	a0,0x7
    8000218c:	97053503          	ld	a0,-1680(a0) # 80008af8 <_ZN15MemoryAllocator12freeListHeadE>
    80002190:	06050063          	beqz	a0,800021f0 <_ZN15MemoryAllocator9mem_allocEm+0x78>
    80002194:	08078a63          	beqz	a5,80002228 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    80002198:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    8000219c:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    800021a0:	00000613          	li	a2,0
    800021a4:	00c0006f          	j	800021b0 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    800021a8:	00050613          	mv	a2,a0
        curr = curr->next;
    800021ac:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    800021b0:	00050663          	beqz	a0,800021bc <_ZN15MemoryAllocator9mem_allocEm+0x44>
    800021b4:	00853783          	ld	a5,8(a0)
    800021b8:	fee7e8e3          	bltu	a5,a4,800021a8 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    800021bc:	02050a63          	beqz	a0,800021f0 <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    800021c0:	00853583          	ld	a1,8(a0)
    800021c4:	02068793          	addi	a5,a3,32
    800021c8:	04f5e063          	bltu	a1,a5,80002208 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    800021cc:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    800021d0:	40e585b3          	sub	a1,a1,a4
    800021d4:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    800021d8:	00053683          	ld	a3,0(a0)
    800021dc:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    800021e0:	00060e63          	beqz	a2,800021fc <_ZN15MemoryAllocator9mem_allocEm+0x84>
    800021e4:	00f63023          	sd	a5,0(a2)
        else freeListHead = newBlock;

        curr->size = totalSize;
    800021e8:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
    800021ec:	01050513          	addi	a0,a0,16
}
    800021f0:	00813403          	ld	s0,8(sp)
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00008067          	ret
        else freeListHead = newBlock;
    800021fc:	00007697          	auipc	a3,0x7
    80002200:	8ef6be23          	sd	a5,-1796(a3) # 80008af8 <_ZN15MemoryAllocator12freeListHeadE>
    80002204:	fe5ff06f          	j	800021e8 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    80002208:	00060863          	beqz	a2,80002218 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    8000220c:	00053783          	ld	a5,0(a0)
    80002210:	00f63023          	sd	a5,0(a2)
    80002214:	fd9ff06f          	j	800021ec <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    80002218:	00053783          	ld	a5,0(a0)
    8000221c:	00007717          	auipc	a4,0x7
    80002220:	8cf73e23          	sd	a5,-1828(a4) # 80008af8 <_ZN15MemoryAllocator12freeListHeadE>
    80002224:	fc9ff06f          	j	800021ec <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    80002228:	00000513          	li	a0,0
    8000222c:	fc5ff06f          	j	800021f0 <_ZN15MemoryAllocator9mem_allocEm+0x78>

0000000080002230 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    80002230:	ff010113          	addi	sp,sp,-16
    80002234:	00813423          	sd	s0,8(sp)
    80002238:	01010413          	addi	s0,sp,16
    if (!curr) return;
    8000223c:	00050c63          	beqz	a0,80002254 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    80002240:	00053783          	ld	a5,0(a0)
    80002244:	00078863          	beqz	a5,80002254 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    80002248:	00853703          	ld	a4,8(a0)
    8000224c:	00e506b3          	add	a3,a0,a4
    80002250:	00d78863          	beq	a5,a3,80002260 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    80002254:	00813403          	ld	s0,8(sp)
    80002258:	01010113          	addi	sp,sp,16
    8000225c:	00008067          	ret
        curr->size += curr->next->size;
    80002260:	0087b683          	ld	a3,8(a5)
    80002264:	00d70733          	add	a4,a4,a3
    80002268:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    8000226c:	0007b783          	ld	a5,0(a5)
    80002270:	00f53023          	sd	a5,0(a0)
    80002274:	fe1ff06f          	j	80002254 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

0000000080002278 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    80002278:	08050e63          	beqz	a0,80002314 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    8000227c:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    80002280:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    80002284:	00007797          	auipc	a5,0x7
    80002288:	8747b783          	ld	a5,-1932(a5) # 80008af8 <_ZN15MemoryAllocator12freeListHeadE>
    8000228c:	02078863          	beqz	a5,800022bc <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    80002290:	fe010113          	addi	sp,sp,-32
    80002294:	00113c23          	sd	ra,24(sp)
    80002298:	00813823          	sd	s0,16(sp)
    8000229c:	00913423          	sd	s1,8(sp)
    800022a0:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    800022a4:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    800022a8:	02078463          	beqz	a5,800022d0 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800022ac:	02a7f263          	bgeu	a5,a0,800022d0 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    800022b0:	00078493          	mv	s1,a5
        curr = curr->next;
    800022b4:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    800022b8:	ff1ff06f          	j	800022a8 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    800022bc:	00007797          	auipc	a5,0x7
    800022c0:	82a7be23          	sd	a0,-1988(a5) # 80008af8 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    800022c4:	fe073823          	sd	zero,-16(a4)
        return 0;
    800022c8:	00000513          	li	a0,0
    800022cc:	00008067          	ret
    blockToFree->next = curr;
    800022d0:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    800022d4:	02048a63          	beqz	s1,80002308 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    800022d8:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	f54080e7          	jalr	-172(ra) # 80002230 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    800022e4:	00048513          	mv	a0,s1
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	f48080e7          	jalr	-184(ra) # 80002230 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    800022f0:	00000513          	li	a0,0
}
    800022f4:	01813083          	ld	ra,24(sp)
    800022f8:	01013403          	ld	s0,16(sp)
    800022fc:	00813483          	ld	s1,8(sp)
    80002300:	02010113          	addi	sp,sp,32
    80002304:	00008067          	ret
    else freeListHead = blockToFree;
    80002308:	00006797          	auipc	a5,0x6
    8000230c:	7ea7b823          	sd	a0,2032(a5) # 80008af8 <_ZN15MemoryAllocator12freeListHeadE>
    80002310:	fcdff06f          	j	800022dc <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    80002314:	fff00513          	li	a0,-1
}
    80002318:	00008067          	ret

000000008000231c <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    8000231c:	ff010113          	addi	sp,sp,-16
    80002320:	00813423          	sd	s0,8(sp)
    80002324:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002328:	00006797          	auipc	a5,0x6
    8000232c:	7d07b783          	ld	a5,2000(a5) # 80008af8 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    80002330:	00000513          	li	a0,0
    80002334:	0080006f          	j	8000233c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002338:	0007b783          	ld	a5,0(a5)
    8000233c:	00078e63          	beqz	a5,80002358 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    80002340:	0087b703          	ld	a4,8(a5)
    80002344:	01000693          	li	a3,16
    80002348:	fee6f8e3          	bgeu	a3,a4,80002338 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    8000234c:	00a70533          	add	a0,a4,a0
    80002350:	ff050513          	addi	a0,a0,-16
    80002354:	fe5ff06f          	j	80002338 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    80002358:	00813403          	ld	s0,8(sp)
    8000235c:	01010113          	addi	sp,sp,16
    80002360:	00008067          	ret

0000000080002364 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80002364:	ff010113          	addi	sp,sp,-16
    80002368:	00813423          	sd	s0,8(sp)
    8000236c:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002370:	00006717          	auipc	a4,0x6
    80002374:	78873703          	ld	a4,1928(a4) # 80008af8 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    80002378:	00000513          	li	a0,0
    8000237c:	0080006f          	j	80002384 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80002380:	00073703          	ld	a4,0(a4)
    80002384:	02070263          	beqz	a4,800023a8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    80002388:	00873783          	ld	a5,8(a4)
    8000238c:	01000693          	li	a3,16
    80002390:	00d7f463          	bgeu	a5,a3,80002398 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    80002394:	01000793          	li	a5,16
    80002398:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    8000239c:	fef572e3          	bgeu	a0,a5,80002380 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    800023a0:	00078513          	mv	a0,a5
    800023a4:	fddff06f          	j	80002380 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    800023a8:	00813403          	ld	s0,8(sp)
    800023ac:	01010113          	addi	sp,sp,16
    800023b0:	00008067          	ret

00000000800023b4 <_ZN10KSemaphore15createSemaphoreEm>:

#include "../h/KSemaphore.hpp"
#include "../h/KThread.hpp"
#include "../h/Scheduler.hpp"

KSemaphore* KSemaphore::createSemaphore(uint64 init) {
    800023b4:	fe010113          	addi	sp,sp,-32
    800023b8:	00113c23          	sd	ra,24(sp)
    800023bc:	00813823          	sd	s0,16(sp)
    800023c0:	00913423          	sd	s1,8(sp)
    800023c4:	02010413          	addi	s0,sp,32
    800023c8:	00050493          	mv	s1,a0

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    800023cc:	00100513          	li	a0,1
    800023d0:	00000097          	auipc	ra,0x0
    800023d4:	da8080e7          	jalr	-600(ra) # 80002178 <_ZN15MemoryAllocator9mem_allocEm>
    void operator delete[](void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    explicit KSemaphore(uint64 init) : val(init) {}
    800023d8:	00952023          	sw	s1,0(a0)
    800023dc:	00053423          	sd	zero,8(a0)
    800023e0:	00053823          	sd	zero,16(a0)
    return new KSemaphore(init);
}
    800023e4:	01813083          	ld	ra,24(sp)
    800023e8:	01013403          	ld	s0,16(sp)
    800023ec:	00813483          	ld	s1,8(sp)
    800023f0:	02010113          	addi	sp,sp,32
    800023f4:	00008067          	ret

00000000800023f8 <_ZN10KSemaphore3getEv>:

KThread* KSemaphore::get() {
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00813423          	sd	s0,8(sp)
    80002400:	01010413          	addi	s0,sp,16
    80002404:	00050793          	mv	a5,a0
    if (!head) return nullptr;
    80002408:	00853503          	ld	a0,8(a0)
    8000240c:	00050a63          	beqz	a0,80002420 <_ZN10KSemaphore3getEv+0x28>

    KThread* thread = head;
    head = head->semaphoreNext;
    80002410:	04053703          	ld	a4,64(a0)
    80002414:	00e7b423          	sd	a4,8(a5)

    if (!head) tail = nullptr;
    80002418:	00070a63          	beqz	a4,8000242c <_ZN10KSemaphore3getEv+0x34>
    thread->semaphoreNext = nullptr;
    8000241c:	04053023          	sd	zero,64(a0)

    return thread;
}
    80002420:	00813403          	ld	s0,8(sp)
    80002424:	01010113          	addi	sp,sp,16
    80002428:	00008067          	ret
    if (!head) tail = nullptr;
    8000242c:	0007b823          	sd	zero,16(a5)
    80002430:	fedff06f          	j	8000241c <_ZN10KSemaphore3getEv+0x24>

0000000080002434 <_ZN10KSemaphore3putEP7KThread>:


void KSemaphore::put(KThread *thread) {
    80002434:	ff010113          	addi	sp,sp,-16
    80002438:	00813423          	sd	s0,8(sp)
    8000243c:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    80002440:	00853783          	ld	a5,8(a0)
    80002444:	00078e63          	beqz	a5,80002460 <_ZN10KSemaphore3putEP7KThread+0x2c>
    else tail->semaphoreNext = thread;
    80002448:	01053783          	ld	a5,16(a0)
    8000244c:	04b7b023          	sd	a1,64(a5)
    tail = thread;
    80002450:	00b53823          	sd	a1,16(a0)
}
    80002454:	00813403          	ld	s0,8(sp)
    80002458:	01010113          	addi	sp,sp,16
    8000245c:	00008067          	ret
    if (!head) head = thread;
    80002460:	00b53423          	sd	a1,8(a0)
    80002464:	fedff06f          	j	80002450 <_ZN10KSemaphore3putEP7KThread+0x1c>

0000000080002468 <_ZN10KSemaphore4waitEv>:

void KSemaphore::wait() {
    val--;
    80002468:	00052783          	lw	a5,0(a0)
    8000246c:	fff7879b          	addiw	a5,a5,-1
    80002470:	00f52023          	sw	a5,0(a0)

    if (val < 0) {
    80002474:	02079713          	slli	a4,a5,0x20
    80002478:	00074463          	bltz	a4,80002480 <_ZN10KSemaphore4waitEv+0x18>
    8000247c:	00008067          	ret
void KSemaphore::wait() {
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00113423          	sd	ra,8(sp)
    80002488:	00813023          	sd	s0,0(sp)
    8000248c:	01010413          	addi	s0,sp,16
        KThread::running->setState(BLOCKED);
    80002490:	00006797          	auipc	a5,0x6
    80002494:	5f07b783          	ld	a5,1520(a5) # 80008a80 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002498:	0007b583          	ld	a1,0(a5)
    8000249c:	00300793          	li	a5,3
    800024a0:	02f5a823          	sw	a5,48(a1)
        put(KThread::running);
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	f90080e7          	jalr	-112(ra) # 80002434 <_ZN10KSemaphore3putEP7KThread>
        KThread::dispatch();
    800024ac:	fffff097          	auipc	ra,0xfffff
    800024b0:	24c080e7          	jalr	588(ra) # 800016f8 <_ZN7KThread8dispatchEv>
    }
}
    800024b4:	00813083          	ld	ra,8(sp)
    800024b8:	00013403          	ld	s0,0(sp)
    800024bc:	01010113          	addi	sp,sp,16
    800024c0:	00008067          	ret

00000000800024c4 <_ZN10KSemaphore6signalEv>:

void KSemaphore::signal() {
    val++;
    800024c4:	00052783          	lw	a5,0(a0)
    800024c8:	0017879b          	addiw	a5,a5,1
    800024cc:	0007871b          	sext.w	a4,a5
    800024d0:	00f52023          	sw	a5,0(a0)

    if (val <= 0) {
    800024d4:	00e05463          	blez	a4,800024dc <_ZN10KSemaphore6signalEv+0x18>
    800024d8:	00008067          	ret
void KSemaphore::signal() {
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00113423          	sd	ra,8(sp)
    800024e4:	00813023          	sd	s0,0(sp)
    800024e8:	01010413          	addi	s0,sp,16
        KThread* thread = get();
    800024ec:	00000097          	auipc	ra,0x0
    800024f0:	f0c080e7          	jalr	-244(ra) # 800023f8 <_ZN10KSemaphore3getEv>

        if (thread) {
    800024f4:	00050a63          	beqz	a0,80002508 <_ZN10KSemaphore6signalEv+0x44>
    800024f8:	00100793          	li	a5,1
    800024fc:	02f52823          	sw	a5,48(a0)
            thread->setState(READY);
            Scheduler::put(thread);
    80002500:	fffff097          	auipc	ra,0xfffff
    80002504:	360080e7          	jalr	864(ra) # 80001860 <_ZN9Scheduler3putEP7KThread>
        }
    }
}
    80002508:	00813083          	ld	ra,8(sp)
    8000250c:	00013403          	ld	s0,0(sp)
    80002510:	01010113          	addi	sp,sp,16
    80002514:	00008067          	ret

0000000080002518 <_ZN10KSemaphore5closeEv>:

void KSemaphore::close() {
    80002518:	fe010113          	addi	sp,sp,-32
    8000251c:	00113c23          	sd	ra,24(sp)
    80002520:	00813823          	sd	s0,16(sp)
    80002524:	00913423          	sd	s1,8(sp)
    80002528:	02010413          	addi	s0,sp,32
    8000252c:	00050493          	mv	s1,a0
    while (head) {
    80002530:	0084b783          	ld	a5,8(s1)
    80002534:	02078263          	beqz	a5,80002558 <_ZN10KSemaphore5closeEv+0x40>
        KThread* thread = get();
    80002538:	00048513          	mv	a0,s1
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	ebc080e7          	jalr	-324(ra) # 800023f8 <_ZN10KSemaphore3getEv>
    80002544:	00100793          	li	a5,1
    80002548:	02f52823          	sw	a5,48(a0)
        thread->setState(READY);
        Scheduler::put(thread);
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	314080e7          	jalr	788(ra) # 80001860 <_ZN9Scheduler3putEP7KThread>
    while (head) {
    80002554:	fddff06f          	j	80002530 <_ZN10KSemaphore5closeEv+0x18>
    }
    80002558:	01813083          	ld	ra,24(sp)
    8000255c:	01013403          	ld	s0,16(sp)
    80002560:	00813483          	ld	s1,8(sp)
    80002564:	02010113          	addi	sp,sp,32
    80002568:	00008067          	ret

000000008000256c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000256c:	fe010113          	addi	sp,sp,-32
    80002570:	00113c23          	sd	ra,24(sp)
    80002574:	00813823          	sd	s0,16(sp)
    80002578:	00913423          	sd	s1,8(sp)
    8000257c:	01213023          	sd	s2,0(sp)
    80002580:	02010413          	addi	s0,sp,32
    80002584:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002588:	00000913          	li	s2,0
    8000258c:	00c0006f          	j	80002598 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002590:	fffff097          	auipc	ra,0xfffff
    80002594:	da0080e7          	jalr	-608(ra) # 80001330 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002598:	fffff097          	auipc	ra,0xfffff
    8000259c:	e74080e7          	jalr	-396(ra) # 8000140c <_Z4getcv>
    800025a0:	0005059b          	sext.w	a1,a0
    800025a4:	01b00793          	li	a5,27
    800025a8:	02f58a63          	beq	a1,a5,800025dc <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800025ac:	0084b503          	ld	a0,8(s1)
    800025b0:	00002097          	auipc	ra,0x2
    800025b4:	ce8080e7          	jalr	-792(ra) # 80004298 <_ZN6Buffer3putEi>
        i++;
    800025b8:	0019071b          	addiw	a4,s2,1
    800025bc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800025c0:	0004a683          	lw	a3,0(s1)
    800025c4:	0026979b          	slliw	a5,a3,0x2
    800025c8:	00d787bb          	addw	a5,a5,a3
    800025cc:	0017979b          	slliw	a5,a5,0x1
    800025d0:	02f767bb          	remw	a5,a4,a5
    800025d4:	fc0792e3          	bnez	a5,80002598 <_ZL16producerKeyboardPv+0x2c>
    800025d8:	fb9ff06f          	j	80002590 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800025dc:	00100793          	li	a5,1
    800025e0:	00006717          	auipc	a4,0x6
    800025e4:	52f72023          	sw	a5,1312(a4) # 80008b00 <_ZL9threadEnd>
    data->buffer->put('!');
    800025e8:	02100593          	li	a1,33
    800025ec:	0084b503          	ld	a0,8(s1)
    800025f0:	00002097          	auipc	ra,0x2
    800025f4:	ca8080e7          	jalr	-856(ra) # 80004298 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800025f8:	0104b503          	ld	a0,16(s1)
    800025fc:	fffff097          	auipc	ra,0xfffff
    80002600:	de4080e7          	jalr	-540(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>
}
    80002604:	01813083          	ld	ra,24(sp)
    80002608:	01013403          	ld	s0,16(sp)
    8000260c:	00813483          	ld	s1,8(sp)
    80002610:	00013903          	ld	s2,0(sp)
    80002614:	02010113          	addi	sp,sp,32
    80002618:	00008067          	ret

000000008000261c <_ZL8producerPv>:

static void producer(void *arg) {
    8000261c:	fe010113          	addi	sp,sp,-32
    80002620:	00113c23          	sd	ra,24(sp)
    80002624:	00813823          	sd	s0,16(sp)
    80002628:	00913423          	sd	s1,8(sp)
    8000262c:	01213023          	sd	s2,0(sp)
    80002630:	02010413          	addi	s0,sp,32
    80002634:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002638:	00000913          	li	s2,0
    8000263c:	00c0006f          	j	80002648 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	cf0080e7          	jalr	-784(ra) # 80001330 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002648:	00006797          	auipc	a5,0x6
    8000264c:	4b87a783          	lw	a5,1208(a5) # 80008b00 <_ZL9threadEnd>
    80002650:	02079e63          	bnez	a5,8000268c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002654:	0004a583          	lw	a1,0(s1)
    80002658:	0305859b          	addiw	a1,a1,48
    8000265c:	0084b503          	ld	a0,8(s1)
    80002660:	00002097          	auipc	ra,0x2
    80002664:	c38080e7          	jalr	-968(ra) # 80004298 <_ZN6Buffer3putEi>
        i++;
    80002668:	0019071b          	addiw	a4,s2,1
    8000266c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002670:	0004a683          	lw	a3,0(s1)
    80002674:	0026979b          	slliw	a5,a3,0x2
    80002678:	00d787bb          	addw	a5,a5,a3
    8000267c:	0017979b          	slliw	a5,a5,0x1
    80002680:	02f767bb          	remw	a5,a4,a5
    80002684:	fc0792e3          	bnez	a5,80002648 <_ZL8producerPv+0x2c>
    80002688:	fb9ff06f          	j	80002640 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000268c:	0104b503          	ld	a0,16(s1)
    80002690:	fffff097          	auipc	ra,0xfffff
    80002694:	d50080e7          	jalr	-688(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>
}
    80002698:	01813083          	ld	ra,24(sp)
    8000269c:	01013403          	ld	s0,16(sp)
    800026a0:	00813483          	ld	s1,8(sp)
    800026a4:	00013903          	ld	s2,0(sp)
    800026a8:	02010113          	addi	sp,sp,32
    800026ac:	00008067          	ret

00000000800026b0 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800026b0:	fd010113          	addi	sp,sp,-48
    800026b4:	02113423          	sd	ra,40(sp)
    800026b8:	02813023          	sd	s0,32(sp)
    800026bc:	00913c23          	sd	s1,24(sp)
    800026c0:	01213823          	sd	s2,16(sp)
    800026c4:	01313423          	sd	s3,8(sp)
    800026c8:	03010413          	addi	s0,sp,48
    800026cc:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800026d0:	00000993          	li	s3,0
    800026d4:	01c0006f          	j	800026f0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	c58080e7          	jalr	-936(ra) # 80001330 <_Z15thread_dispatchv>
    800026e0:	0500006f          	j	80002730 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800026e4:	00a00513          	li	a0,10
    800026e8:	fffff097          	auipc	ra,0xfffff
    800026ec:	d4c080e7          	jalr	-692(ra) # 80001434 <_Z4putcc>
    while (!threadEnd) {
    800026f0:	00006797          	auipc	a5,0x6
    800026f4:	4107a783          	lw	a5,1040(a5) # 80008b00 <_ZL9threadEnd>
    800026f8:	06079063          	bnez	a5,80002758 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800026fc:	00893503          	ld	a0,8(s2)
    80002700:	00002097          	auipc	ra,0x2
    80002704:	c28080e7          	jalr	-984(ra) # 80004328 <_ZN6Buffer3getEv>
        i++;
    80002708:	0019849b          	addiw	s1,s3,1
    8000270c:	0004899b          	sext.w	s3,s1
        putc(key);
    80002710:	0ff57513          	andi	a0,a0,255
    80002714:	fffff097          	auipc	ra,0xfffff
    80002718:	d20080e7          	jalr	-736(ra) # 80001434 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000271c:	00092703          	lw	a4,0(s2)
    80002720:	0027179b          	slliw	a5,a4,0x2
    80002724:	00e787bb          	addw	a5,a5,a4
    80002728:	02f4e7bb          	remw	a5,s1,a5
    8000272c:	fa0786e3          	beqz	a5,800026d8 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002730:	05000793          	li	a5,80
    80002734:	02f4e4bb          	remw	s1,s1,a5
    80002738:	fa049ce3          	bnez	s1,800026f0 <_ZL8consumerPv+0x40>
    8000273c:	fa9ff06f          	j	800026e4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002740:	00893503          	ld	a0,8(s2)
    80002744:	00002097          	auipc	ra,0x2
    80002748:	be4080e7          	jalr	-1052(ra) # 80004328 <_ZN6Buffer3getEv>
        putc(key);
    8000274c:	0ff57513          	andi	a0,a0,255
    80002750:	fffff097          	auipc	ra,0xfffff
    80002754:	ce4080e7          	jalr	-796(ra) # 80001434 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002758:	00893503          	ld	a0,8(s2)
    8000275c:	00002097          	auipc	ra,0x2
    80002760:	c58080e7          	jalr	-936(ra) # 800043b4 <_ZN6Buffer6getCntEv>
    80002764:	fca04ee3          	bgtz	a0,80002740 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002768:	01093503          	ld	a0,16(s2)
    8000276c:	fffff097          	auipc	ra,0xfffff
    80002770:	c74080e7          	jalr	-908(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>
}
    80002774:	02813083          	ld	ra,40(sp)
    80002778:	02013403          	ld	s0,32(sp)
    8000277c:	01813483          	ld	s1,24(sp)
    80002780:	01013903          	ld	s2,16(sp)
    80002784:	00813983          	ld	s3,8(sp)
    80002788:	03010113          	addi	sp,sp,48
    8000278c:	00008067          	ret

0000000080002790 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002790:	f7010113          	addi	sp,sp,-144
    80002794:	08113423          	sd	ra,136(sp)
    80002798:	08813023          	sd	s0,128(sp)
    8000279c:	06913c23          	sd	s1,120(sp)
    800027a0:	07213823          	sd	s2,112(sp)
    800027a4:	07313423          	sd	s3,104(sp)
    800027a8:	09010413          	addi	s0,sp,144
    // char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    800027ac:	00005517          	auipc	a0,0x5
    800027b0:	98450513          	addi	a0,a0,-1660 # 80007130 <CONSOLE_STATUS+0x120>
    800027b4:	00001097          	auipc	ra,0x1
    800027b8:	158080e7          	jalr	344(ra) # 8000390c <_Z11printStringPKc>
    // getString(input, 30);
    // threadNum = stringToInt(input);
    threadNum = 10;

    printString("Unesite velicinu bafera?\n");
    800027bc:	00005517          	auipc	a0,0x5
    800027c0:	99450513          	addi	a0,a0,-1644 # 80007150 <CONSOLE_STATUS+0x140>
    800027c4:	00001097          	auipc	ra,0x1
    800027c8:	148080e7          	jalr	328(ra) # 8000390c <_Z11printStringPKc>
    // getString(input, 30);
    // n = stringToInt(input);
    n = 30;

    printString("Broj proizvodjaca "); printInt(threadNum);
    800027cc:	00005517          	auipc	a0,0x5
    800027d0:	9a450513          	addi	a0,a0,-1628 # 80007170 <CONSOLE_STATUS+0x160>
    800027d4:	00001097          	auipc	ra,0x1
    800027d8:	138080e7          	jalr	312(ra) # 8000390c <_Z11printStringPKc>
    800027dc:	00000613          	li	a2,0
    800027e0:	00a00593          	li	a1,10
    800027e4:	00a00513          	li	a0,10
    800027e8:	00001097          	auipc	ra,0x1
    800027ec:	2d4080e7          	jalr	724(ra) # 80003abc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800027f0:	00005517          	auipc	a0,0x5
    800027f4:	99850513          	addi	a0,a0,-1640 # 80007188 <CONSOLE_STATUS+0x178>
    800027f8:	00001097          	auipc	ra,0x1
    800027fc:	114080e7          	jalr	276(ra) # 8000390c <_Z11printStringPKc>
    80002800:	00000613          	li	a2,0
    80002804:	00a00593          	li	a1,10
    80002808:	01e00513          	li	a0,30
    8000280c:	00001097          	auipc	ra,0x1
    80002810:	2b0080e7          	jalr	688(ra) # 80003abc <_Z8printIntiii>
    printString(".\n");
    80002814:	00005517          	auipc	a0,0x5
    80002818:	98c50513          	addi	a0,a0,-1652 # 800071a0 <CONSOLE_STATUS+0x190>
    8000281c:	00001097          	auipc	ra,0x1
    80002820:	0f0080e7          	jalr	240(ra) # 8000390c <_Z11printStringPKc>
    } else if (threadNum < 1) {
        printString("Broj proizvodjaca mora biti veci od nula!\n");
        return;
    }

    Buffer *buffer = new Buffer(n);
    80002824:	03800513          	li	a0,56
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	20c080e7          	jalr	524(ra) # 80001a34 <_Znwm>
    80002830:	00050993          	mv	s3,a0
    80002834:	01e00593          	li	a1,30
    80002838:	00002097          	auipc	ra,0x2
    8000283c:	9c4080e7          	jalr	-1596(ra) # 800041fc <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    80002840:	00000593          	li	a1,0
    80002844:	00006517          	auipc	a0,0x6
    80002848:	2c450513          	addi	a0,a0,708 # 80008b08 <_ZL10waitForAll>
    8000284c:	fffff097          	auipc	ra,0xfffff
    80002850:	b04080e7          	jalr	-1276(ra) # 80001350 <_Z8sem_openPP10KSemaphorej>

    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];
    80002854:	ef010113          	addi	sp,sp,-272
    80002858:	00010913          	mv	s2,sp

    data[threadNum].id = threadNum;
    8000285c:	00a00793          	li	a5,10
    80002860:	0ef92823          	sw	a5,240(s2)
    data[threadNum].buffer = buffer;
    80002864:	0f393c23          	sd	s3,248(s2)
    data[threadNum].wait = waitForAll;
    80002868:	00006797          	auipc	a5,0x6
    8000286c:	2a07b783          	ld	a5,672(a5) # 80008b08 <_ZL10waitForAll>
    80002870:	10f93023          	sd	a5,256(s2)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002874:	0f090613          	addi	a2,s2,240
    80002878:	00000597          	auipc	a1,0x0
    8000287c:	e3858593          	addi	a1,a1,-456 # 800026b0 <_ZL8consumerPv>
    80002880:	fc840513          	addi	a0,s0,-56
    80002884:	fffff097          	auipc	ra,0xfffff
    80002888:	9d8080e7          	jalr	-1576(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>

    for (int i = 0; i < threadNum; i++) {
    8000288c:	00000493          	li	s1,0
    80002890:	00900793          	li	a5,9
    80002894:	0697c863          	blt	a5,s1,80002904 <_Z22producerConsumer_C_APIv+0x174>
        data[i].id = i;
    80002898:	00149793          	slli	a5,s1,0x1
    8000289c:	009787b3          	add	a5,a5,s1
    800028a0:	00379793          	slli	a5,a5,0x3
    800028a4:	00f907b3          	add	a5,s2,a5
    800028a8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800028ac:	0137b423          	sd	s3,8(a5)
        data[i].wait = waitForAll;
    800028b0:	00006717          	auipc	a4,0x6
    800028b4:	25873703          	ld	a4,600(a4) # 80008b08 <_ZL10waitForAll>
    800028b8:	00e7b823          	sd	a4,16(a5)

        thread_create(threads + i,
    800028bc:	00048713          	mv	a4,s1
    800028c0:	00349513          	slli	a0,s1,0x3
    800028c4:	f7840793          	addi	a5,s0,-136
    800028c8:	00a78533          	add	a0,a5,a0
    800028cc:	02905663          	blez	s1,800028f8 <_Z22producerConsumer_C_APIv+0x168>
    800028d0:	00000597          	auipc	a1,0x0
    800028d4:	d4c58593          	addi	a1,a1,-692 # 8000261c <_ZL8producerPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    800028d8:	00171613          	slli	a2,a4,0x1
    800028dc:	00e60633          	add	a2,a2,a4
    800028e0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800028e4:	00c90633          	add	a2,s2,a2
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	974080e7          	jalr	-1676(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800028f0:	0014849b          	addiw	s1,s1,1
    800028f4:	f9dff06f          	j	80002890 <_Z22producerConsumer_C_APIv+0x100>
        thread_create(threads + i,
    800028f8:	00000597          	auipc	a1,0x0
    800028fc:	c7458593          	addi	a1,a1,-908 # 8000256c <_ZL16producerKeyboardPv>
    80002900:	fd9ff06f          	j	800028d8 <_Z22producerConsumer_C_APIv+0x148>
    }

    thread_dispatch();
    80002904:	fffff097          	auipc	ra,0xfffff
    80002908:	a2c080e7          	jalr	-1492(ra) # 80001330 <_Z15thread_dispatchv>

    for (int i = 0; i <= threadNum; i++) {
    8000290c:	00000493          	li	s1,0
    80002910:	0180006f          	j	80002928 <_Z22producerConsumer_C_APIv+0x198>
        sem_wait(waitForAll);
    80002914:	00006517          	auipc	a0,0x6
    80002918:	1f453503          	ld	a0,500(a0) # 80008b08 <_ZL10waitForAll>
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	a98080e7          	jalr	-1384(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80002924:	0014849b          	addiw	s1,s1,1
    80002928:	00a00793          	li	a5,10
    8000292c:	fe97d4e3          	bge	a5,s1,80002914 <_Z22producerConsumer_C_APIv+0x184>
    }

    sem_close(waitForAll);
    80002930:	00006517          	auipc	a0,0x6
    80002934:	1d853503          	ld	a0,472(a0) # 80008b08 <_ZL10waitForAll>
    80002938:	fffff097          	auipc	ra,0xfffff
    8000293c:	a50080e7          	jalr	-1456(ra) # 80001388 <_Z9sem_closeP10KSemaphore>

    delete buffer;
    80002940:	00098e63          	beqz	s3,8000295c <_Z22producerConsumer_C_APIv+0x1cc>
    80002944:	00098513          	mv	a0,s3
    80002948:	00002097          	auipc	ra,0x2
    8000294c:	af4080e7          	jalr	-1292(ra) # 8000443c <_ZN6BufferD1Ev>
    80002950:	00098513          	mv	a0,s3
    80002954:	fffff097          	auipc	ra,0xfffff
    80002958:	108080e7          	jalr	264(ra) # 80001a5c <_ZdlPv>

}
    8000295c:	f7040113          	addi	sp,s0,-144
    80002960:	08813083          	ld	ra,136(sp)
    80002964:	08013403          	ld	s0,128(sp)
    80002968:	07813483          	ld	s1,120(sp)
    8000296c:	07013903          	ld	s2,112(sp)
    80002970:	06813983          	ld	s3,104(sp)
    80002974:	09010113          	addi	sp,sp,144
    80002978:	00008067          	ret
    8000297c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002980:	00098513          	mv	a0,s3
    80002984:	fffff097          	auipc	ra,0xfffff
    80002988:	0d8080e7          	jalr	216(ra) # 80001a5c <_ZdlPv>
    8000298c:	00048513          	mv	a0,s1
    80002990:	00007097          	auipc	ra,0x7
    80002994:	268080e7          	jalr	616(ra) # 80009bf8 <_Unwind_Resume>

0000000080002998 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002998:	fe010113          	addi	sp,sp,-32
    8000299c:	00113c23          	sd	ra,24(sp)
    800029a0:	00813823          	sd	s0,16(sp)
    800029a4:	00913423          	sd	s1,8(sp)
    800029a8:	01213023          	sd	s2,0(sp)
    800029ac:	02010413          	addi	s0,sp,32
    800029b0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800029b4:	00100793          	li	a5,1
    800029b8:	02a7f863          	bgeu	a5,a0,800029e8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800029bc:	00a00793          	li	a5,10
    800029c0:	02f577b3          	remu	a5,a0,a5
    800029c4:	02078e63          	beqz	a5,80002a00 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800029c8:	fff48513          	addi	a0,s1,-1
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	fcc080e7          	jalr	-52(ra) # 80002998 <_ZL9fibonaccim>
    800029d4:	00050913          	mv	s2,a0
    800029d8:	ffe48513          	addi	a0,s1,-2
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	fbc080e7          	jalr	-68(ra) # 80002998 <_ZL9fibonaccim>
    800029e4:	00a90533          	add	a0,s2,a0
}
    800029e8:	01813083          	ld	ra,24(sp)
    800029ec:	01013403          	ld	s0,16(sp)
    800029f0:	00813483          	ld	s1,8(sp)
    800029f4:	00013903          	ld	s2,0(sp)
    800029f8:	02010113          	addi	sp,sp,32
    800029fc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002a00:	fffff097          	auipc	ra,0xfffff
    80002a04:	930080e7          	jalr	-1744(ra) # 80001330 <_Z15thread_dispatchv>
    80002a08:	fc1ff06f          	j	800029c8 <_ZL9fibonaccim+0x30>

0000000080002a0c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002a0c:	fe010113          	addi	sp,sp,-32
    80002a10:	00113c23          	sd	ra,24(sp)
    80002a14:	00813823          	sd	s0,16(sp)
    80002a18:	00913423          	sd	s1,8(sp)
    80002a1c:	01213023          	sd	s2,0(sp)
    80002a20:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002a24:	00000913          	li	s2,0
    80002a28:	0380006f          	j	80002a60 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002a2c:	fffff097          	auipc	ra,0xfffff
    80002a30:	904080e7          	jalr	-1788(ra) # 80001330 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a34:	00148493          	addi	s1,s1,1
    80002a38:	000027b7          	lui	a5,0x2
    80002a3c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002a40:	0097ee63          	bltu	a5,s1,80002a5c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002a44:	00000713          	li	a4,0
    80002a48:	000077b7          	lui	a5,0x7
    80002a4c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002a50:	fce7eee3          	bltu	a5,a4,80002a2c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002a54:	00170713          	addi	a4,a4,1
    80002a58:	ff1ff06f          	j	80002a48 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002a5c:	00190913          	addi	s2,s2,1
    80002a60:	00900793          	li	a5,9
    80002a64:	0527e063          	bltu	a5,s2,80002aa4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002a68:	00004517          	auipc	a0,0x4
    80002a6c:	74050513          	addi	a0,a0,1856 # 800071a8 <CONSOLE_STATUS+0x198>
    80002a70:	00001097          	auipc	ra,0x1
    80002a74:	e9c080e7          	jalr	-356(ra) # 8000390c <_Z11printStringPKc>
    80002a78:	00000613          	li	a2,0
    80002a7c:	00a00593          	li	a1,10
    80002a80:	0009051b          	sext.w	a0,s2
    80002a84:	00001097          	auipc	ra,0x1
    80002a88:	038080e7          	jalr	56(ra) # 80003abc <_Z8printIntiii>
    80002a8c:	00004517          	auipc	a0,0x4
    80002a90:	6dc50513          	addi	a0,a0,1756 # 80007168 <CONSOLE_STATUS+0x158>
    80002a94:	00001097          	auipc	ra,0x1
    80002a98:	e78080e7          	jalr	-392(ra) # 8000390c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002a9c:	00000493          	li	s1,0
    80002aa0:	f99ff06f          	j	80002a38 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002aa4:	00004517          	auipc	a0,0x4
    80002aa8:	70c50513          	addi	a0,a0,1804 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80002aac:	00001097          	auipc	ra,0x1
    80002ab0:	e60080e7          	jalr	-416(ra) # 8000390c <_Z11printStringPKc>
    finishedA = true;
    80002ab4:	00100793          	li	a5,1
    80002ab8:	00006717          	auipc	a4,0x6
    80002abc:	04f70c23          	sb	a5,88(a4) # 80008b10 <_ZL9finishedA>
}
    80002ac0:	01813083          	ld	ra,24(sp)
    80002ac4:	01013403          	ld	s0,16(sp)
    80002ac8:	00813483          	ld	s1,8(sp)
    80002acc:	00013903          	ld	s2,0(sp)
    80002ad0:	02010113          	addi	sp,sp,32
    80002ad4:	00008067          	ret

0000000080002ad8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002ad8:	fe010113          	addi	sp,sp,-32
    80002adc:	00113c23          	sd	ra,24(sp)
    80002ae0:	00813823          	sd	s0,16(sp)
    80002ae4:	00913423          	sd	s1,8(sp)
    80002ae8:	01213023          	sd	s2,0(sp)
    80002aec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002af0:	00000913          	li	s2,0
    80002af4:	0380006f          	j	80002b2c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	838080e7          	jalr	-1992(ra) # 80001330 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002b00:	00148493          	addi	s1,s1,1
    80002b04:	000027b7          	lui	a5,0x2
    80002b08:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002b0c:	0097ee63          	bltu	a5,s1,80002b28 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b10:	00000713          	li	a4,0
    80002b14:	000077b7          	lui	a5,0x7
    80002b18:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b1c:	fce7eee3          	bltu	a5,a4,80002af8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002b20:	00170713          	addi	a4,a4,1
    80002b24:	ff1ff06f          	j	80002b14 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002b28:	00190913          	addi	s2,s2,1
    80002b2c:	00f00793          	li	a5,15
    80002b30:	0527e063          	bltu	a5,s2,80002b70 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002b34:	00004517          	auipc	a0,0x4
    80002b38:	68c50513          	addi	a0,a0,1676 # 800071c0 <CONSOLE_STATUS+0x1b0>
    80002b3c:	00001097          	auipc	ra,0x1
    80002b40:	dd0080e7          	jalr	-560(ra) # 8000390c <_Z11printStringPKc>
    80002b44:	00000613          	li	a2,0
    80002b48:	00a00593          	li	a1,10
    80002b4c:	0009051b          	sext.w	a0,s2
    80002b50:	00001097          	auipc	ra,0x1
    80002b54:	f6c080e7          	jalr	-148(ra) # 80003abc <_Z8printIntiii>
    80002b58:	00004517          	auipc	a0,0x4
    80002b5c:	61050513          	addi	a0,a0,1552 # 80007168 <CONSOLE_STATUS+0x158>
    80002b60:	00001097          	auipc	ra,0x1
    80002b64:	dac080e7          	jalr	-596(ra) # 8000390c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b68:	00000493          	li	s1,0
    80002b6c:	f99ff06f          	j	80002b04 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002b70:	00004517          	auipc	a0,0x4
    80002b74:	65850513          	addi	a0,a0,1624 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80002b78:	00001097          	auipc	ra,0x1
    80002b7c:	d94080e7          	jalr	-620(ra) # 8000390c <_Z11printStringPKc>
    finishedB = true;
    80002b80:	00100793          	li	a5,1
    80002b84:	00006717          	auipc	a4,0x6
    80002b88:	f8f706a3          	sb	a5,-115(a4) # 80008b11 <_ZL9finishedB>
    thread_dispatch();
    80002b8c:	ffffe097          	auipc	ra,0xffffe
    80002b90:	7a4080e7          	jalr	1956(ra) # 80001330 <_Z15thread_dispatchv>
}
    80002b94:	01813083          	ld	ra,24(sp)
    80002b98:	01013403          	ld	s0,16(sp)
    80002b9c:	00813483          	ld	s1,8(sp)
    80002ba0:	00013903          	ld	s2,0(sp)
    80002ba4:	02010113          	addi	sp,sp,32
    80002ba8:	00008067          	ret

0000000080002bac <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002bac:	fe010113          	addi	sp,sp,-32
    80002bb0:	00113c23          	sd	ra,24(sp)
    80002bb4:	00813823          	sd	s0,16(sp)
    80002bb8:	00913423          	sd	s1,8(sp)
    80002bbc:	01213023          	sd	s2,0(sp)
    80002bc0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002bc4:	00000493          	li	s1,0
    80002bc8:	0400006f          	j	80002c08 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002bcc:	00004517          	auipc	a0,0x4
    80002bd0:	60c50513          	addi	a0,a0,1548 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80002bd4:	00001097          	auipc	ra,0x1
    80002bd8:	d38080e7          	jalr	-712(ra) # 8000390c <_Z11printStringPKc>
    80002bdc:	00000613          	li	a2,0
    80002be0:	00a00593          	li	a1,10
    80002be4:	00048513          	mv	a0,s1
    80002be8:	00001097          	auipc	ra,0x1
    80002bec:	ed4080e7          	jalr	-300(ra) # 80003abc <_Z8printIntiii>
    80002bf0:	00004517          	auipc	a0,0x4
    80002bf4:	57850513          	addi	a0,a0,1400 # 80007168 <CONSOLE_STATUS+0x158>
    80002bf8:	00001097          	auipc	ra,0x1
    80002bfc:	d14080e7          	jalr	-748(ra) # 8000390c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002c00:	0014849b          	addiw	s1,s1,1
    80002c04:	0ff4f493          	andi	s1,s1,255
    80002c08:	00200793          	li	a5,2
    80002c0c:	fc97f0e3          	bgeu	a5,s1,80002bcc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002c10:	00004517          	auipc	a0,0x4
    80002c14:	5d050513          	addi	a0,a0,1488 # 800071e0 <CONSOLE_STATUS+0x1d0>
    80002c18:	00001097          	auipc	ra,0x1
    80002c1c:	cf4080e7          	jalr	-780(ra) # 8000390c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002c20:	00700313          	li	t1,7
    thread_dispatch();
    80002c24:	ffffe097          	auipc	ra,0xffffe
    80002c28:	70c080e7          	jalr	1804(ra) # 80001330 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002c2c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002c30:	00004517          	auipc	a0,0x4
    80002c34:	5c050513          	addi	a0,a0,1472 # 800071f0 <CONSOLE_STATUS+0x1e0>
    80002c38:	00001097          	auipc	ra,0x1
    80002c3c:	cd4080e7          	jalr	-812(ra) # 8000390c <_Z11printStringPKc>
    80002c40:	00000613          	li	a2,0
    80002c44:	00a00593          	li	a1,10
    80002c48:	0009051b          	sext.w	a0,s2
    80002c4c:	00001097          	auipc	ra,0x1
    80002c50:	e70080e7          	jalr	-400(ra) # 80003abc <_Z8printIntiii>
    80002c54:	00004517          	auipc	a0,0x4
    80002c58:	51450513          	addi	a0,a0,1300 # 80007168 <CONSOLE_STATUS+0x158>
    80002c5c:	00001097          	auipc	ra,0x1
    80002c60:	cb0080e7          	jalr	-848(ra) # 8000390c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002c64:	00c00513          	li	a0,12
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	d30080e7          	jalr	-720(ra) # 80002998 <_ZL9fibonaccim>
    80002c70:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002c74:	00004517          	auipc	a0,0x4
    80002c78:	58450513          	addi	a0,a0,1412 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80002c7c:	00001097          	auipc	ra,0x1
    80002c80:	c90080e7          	jalr	-880(ra) # 8000390c <_Z11printStringPKc>
    80002c84:	00000613          	li	a2,0
    80002c88:	00a00593          	li	a1,10
    80002c8c:	0009051b          	sext.w	a0,s2
    80002c90:	00001097          	auipc	ra,0x1
    80002c94:	e2c080e7          	jalr	-468(ra) # 80003abc <_Z8printIntiii>
    80002c98:	00004517          	auipc	a0,0x4
    80002c9c:	4d050513          	addi	a0,a0,1232 # 80007168 <CONSOLE_STATUS+0x158>
    80002ca0:	00001097          	auipc	ra,0x1
    80002ca4:	c6c080e7          	jalr	-916(ra) # 8000390c <_Z11printStringPKc>
    80002ca8:	0400006f          	j	80002ce8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002cac:	00004517          	auipc	a0,0x4
    80002cb0:	52c50513          	addi	a0,a0,1324 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80002cb4:	00001097          	auipc	ra,0x1
    80002cb8:	c58080e7          	jalr	-936(ra) # 8000390c <_Z11printStringPKc>
    80002cbc:	00000613          	li	a2,0
    80002cc0:	00a00593          	li	a1,10
    80002cc4:	00048513          	mv	a0,s1
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	df4080e7          	jalr	-524(ra) # 80003abc <_Z8printIntiii>
    80002cd0:	00004517          	auipc	a0,0x4
    80002cd4:	49850513          	addi	a0,a0,1176 # 80007168 <CONSOLE_STATUS+0x158>
    80002cd8:	00001097          	auipc	ra,0x1
    80002cdc:	c34080e7          	jalr	-972(ra) # 8000390c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002ce0:	0014849b          	addiw	s1,s1,1
    80002ce4:	0ff4f493          	andi	s1,s1,255
    80002ce8:	00500793          	li	a5,5
    80002cec:	fc97f0e3          	bgeu	a5,s1,80002cac <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002cf0:	00004517          	auipc	a0,0x4
    80002cf4:	4c050513          	addi	a0,a0,1216 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80002cf8:	00001097          	auipc	ra,0x1
    80002cfc:	c14080e7          	jalr	-1004(ra) # 8000390c <_Z11printStringPKc>
    finishedC = true;
    80002d00:	00100793          	li	a5,1
    80002d04:	00006717          	auipc	a4,0x6
    80002d08:	e0f70723          	sb	a5,-498(a4) # 80008b12 <_ZL9finishedC>
    thread_dispatch();
    80002d0c:	ffffe097          	auipc	ra,0xffffe
    80002d10:	624080e7          	jalr	1572(ra) # 80001330 <_Z15thread_dispatchv>
}
    80002d14:	01813083          	ld	ra,24(sp)
    80002d18:	01013403          	ld	s0,16(sp)
    80002d1c:	00813483          	ld	s1,8(sp)
    80002d20:	00013903          	ld	s2,0(sp)
    80002d24:	02010113          	addi	sp,sp,32
    80002d28:	00008067          	ret

0000000080002d2c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002d2c:	fe010113          	addi	sp,sp,-32
    80002d30:	00113c23          	sd	ra,24(sp)
    80002d34:	00813823          	sd	s0,16(sp)
    80002d38:	00913423          	sd	s1,8(sp)
    80002d3c:	01213023          	sd	s2,0(sp)
    80002d40:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002d44:	00a00493          	li	s1,10
    80002d48:	0400006f          	j	80002d88 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002d4c:	00004517          	auipc	a0,0x4
    80002d50:	4bc50513          	addi	a0,a0,1212 # 80007208 <CONSOLE_STATUS+0x1f8>
    80002d54:	00001097          	auipc	ra,0x1
    80002d58:	bb8080e7          	jalr	-1096(ra) # 8000390c <_Z11printStringPKc>
    80002d5c:	00000613          	li	a2,0
    80002d60:	00a00593          	li	a1,10
    80002d64:	00048513          	mv	a0,s1
    80002d68:	00001097          	auipc	ra,0x1
    80002d6c:	d54080e7          	jalr	-684(ra) # 80003abc <_Z8printIntiii>
    80002d70:	00004517          	auipc	a0,0x4
    80002d74:	3f850513          	addi	a0,a0,1016 # 80007168 <CONSOLE_STATUS+0x158>
    80002d78:	00001097          	auipc	ra,0x1
    80002d7c:	b94080e7          	jalr	-1132(ra) # 8000390c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002d80:	0014849b          	addiw	s1,s1,1
    80002d84:	0ff4f493          	andi	s1,s1,255
    80002d88:	00c00793          	li	a5,12
    80002d8c:	fc97f0e3          	bgeu	a5,s1,80002d4c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002d90:	00004517          	auipc	a0,0x4
    80002d94:	48050513          	addi	a0,a0,1152 # 80007210 <CONSOLE_STATUS+0x200>
    80002d98:	00001097          	auipc	ra,0x1
    80002d9c:	b74080e7          	jalr	-1164(ra) # 8000390c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002da0:	00500313          	li	t1,5
    thread_dispatch();
    80002da4:	ffffe097          	auipc	ra,0xffffe
    80002da8:	58c080e7          	jalr	1420(ra) # 80001330 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002dac:	01000513          	li	a0,16
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	be8080e7          	jalr	-1048(ra) # 80002998 <_ZL9fibonaccim>
    80002db8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002dbc:	00004517          	auipc	a0,0x4
    80002dc0:	46450513          	addi	a0,a0,1124 # 80007220 <CONSOLE_STATUS+0x210>
    80002dc4:	00001097          	auipc	ra,0x1
    80002dc8:	b48080e7          	jalr	-1208(ra) # 8000390c <_Z11printStringPKc>
    80002dcc:	00000613          	li	a2,0
    80002dd0:	00a00593          	li	a1,10
    80002dd4:	0009051b          	sext.w	a0,s2
    80002dd8:	00001097          	auipc	ra,0x1
    80002ddc:	ce4080e7          	jalr	-796(ra) # 80003abc <_Z8printIntiii>
    80002de0:	00004517          	auipc	a0,0x4
    80002de4:	38850513          	addi	a0,a0,904 # 80007168 <CONSOLE_STATUS+0x158>
    80002de8:	00001097          	auipc	ra,0x1
    80002dec:	b24080e7          	jalr	-1244(ra) # 8000390c <_Z11printStringPKc>
    80002df0:	0400006f          	j	80002e30 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002df4:	00004517          	auipc	a0,0x4
    80002df8:	41450513          	addi	a0,a0,1044 # 80007208 <CONSOLE_STATUS+0x1f8>
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	b10080e7          	jalr	-1264(ra) # 8000390c <_Z11printStringPKc>
    80002e04:	00000613          	li	a2,0
    80002e08:	00a00593          	li	a1,10
    80002e0c:	00048513          	mv	a0,s1
    80002e10:	00001097          	auipc	ra,0x1
    80002e14:	cac080e7          	jalr	-852(ra) # 80003abc <_Z8printIntiii>
    80002e18:	00004517          	auipc	a0,0x4
    80002e1c:	35050513          	addi	a0,a0,848 # 80007168 <CONSOLE_STATUS+0x158>
    80002e20:	00001097          	auipc	ra,0x1
    80002e24:	aec080e7          	jalr	-1300(ra) # 8000390c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002e28:	0014849b          	addiw	s1,s1,1
    80002e2c:	0ff4f493          	andi	s1,s1,255
    80002e30:	00f00793          	li	a5,15
    80002e34:	fc97f0e3          	bgeu	a5,s1,80002df4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002e38:	00004517          	auipc	a0,0x4
    80002e3c:	3f850513          	addi	a0,a0,1016 # 80007230 <CONSOLE_STATUS+0x220>
    80002e40:	00001097          	auipc	ra,0x1
    80002e44:	acc080e7          	jalr	-1332(ra) # 8000390c <_Z11printStringPKc>
    finishedD = true;
    80002e48:	00100793          	li	a5,1
    80002e4c:	00006717          	auipc	a4,0x6
    80002e50:	ccf703a3          	sb	a5,-825(a4) # 80008b13 <_ZL9finishedD>
    thread_dispatch();
    80002e54:	ffffe097          	auipc	ra,0xffffe
    80002e58:	4dc080e7          	jalr	1244(ra) # 80001330 <_Z15thread_dispatchv>
}
    80002e5c:	01813083          	ld	ra,24(sp)
    80002e60:	01013403          	ld	s0,16(sp)
    80002e64:	00813483          	ld	s1,8(sp)
    80002e68:	00013903          	ld	s2,0(sp)
    80002e6c:	02010113          	addi	sp,sp,32
    80002e70:	00008067          	ret

0000000080002e74 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002e74:	fc010113          	addi	sp,sp,-64
    80002e78:	02113c23          	sd	ra,56(sp)
    80002e7c:	02813823          	sd	s0,48(sp)
    80002e80:	02913423          	sd	s1,40(sp)
    80002e84:	03213023          	sd	s2,32(sp)
    80002e88:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002e8c:	02000513          	li	a0,32
    80002e90:	fffff097          	auipc	ra,0xfffff
    80002e94:	ba4080e7          	jalr	-1116(ra) # 80001a34 <_Znwm>
    80002e98:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002e9c:	fffff097          	auipc	ra,0xfffff
    80002ea0:	ce8080e7          	jalr	-792(ra) # 80001b84 <_ZN6ThreadC1Ev>
    80002ea4:	00006797          	auipc	a5,0x6
    80002ea8:	b0c78793          	addi	a5,a5,-1268 # 800089b0 <_ZTV7WorkerA+0x10>
    80002eac:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002eb0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002eb4:	00004517          	auipc	a0,0x4
    80002eb8:	38c50513          	addi	a0,a0,908 # 80007240 <CONSOLE_STATUS+0x230>
    80002ebc:	00001097          	auipc	ra,0x1
    80002ec0:	a50080e7          	jalr	-1456(ra) # 8000390c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002ec4:	02000513          	li	a0,32
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	b6c080e7          	jalr	-1172(ra) # 80001a34 <_Znwm>
    80002ed0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002ed4:	fffff097          	auipc	ra,0xfffff
    80002ed8:	cb0080e7          	jalr	-848(ra) # 80001b84 <_ZN6ThreadC1Ev>
    80002edc:	00006797          	auipc	a5,0x6
    80002ee0:	afc78793          	addi	a5,a5,-1284 # 800089d8 <_ZTV7WorkerB+0x10>
    80002ee4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002ee8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002eec:	00004517          	auipc	a0,0x4
    80002ef0:	36c50513          	addi	a0,a0,876 # 80007258 <CONSOLE_STATUS+0x248>
    80002ef4:	00001097          	auipc	ra,0x1
    80002ef8:	a18080e7          	jalr	-1512(ra) # 8000390c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002efc:	02000513          	li	a0,32
    80002f00:	fffff097          	auipc	ra,0xfffff
    80002f04:	b34080e7          	jalr	-1228(ra) # 80001a34 <_Znwm>
    80002f08:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002f0c:	fffff097          	auipc	ra,0xfffff
    80002f10:	c78080e7          	jalr	-904(ra) # 80001b84 <_ZN6ThreadC1Ev>
    80002f14:	00006797          	auipc	a5,0x6
    80002f18:	aec78793          	addi	a5,a5,-1300 # 80008a00 <_ZTV7WorkerC+0x10>
    80002f1c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002f20:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002f24:	00004517          	auipc	a0,0x4
    80002f28:	34c50513          	addi	a0,a0,844 # 80007270 <CONSOLE_STATUS+0x260>
    80002f2c:	00001097          	auipc	ra,0x1
    80002f30:	9e0080e7          	jalr	-1568(ra) # 8000390c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002f34:	02000513          	li	a0,32
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	afc080e7          	jalr	-1284(ra) # 80001a34 <_Znwm>
    80002f40:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002f44:	fffff097          	auipc	ra,0xfffff
    80002f48:	c40080e7          	jalr	-960(ra) # 80001b84 <_ZN6ThreadC1Ev>
    80002f4c:	00006797          	auipc	a5,0x6
    80002f50:	adc78793          	addi	a5,a5,-1316 # 80008a28 <_ZTV7WorkerD+0x10>
    80002f54:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002f58:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002f5c:	00004517          	auipc	a0,0x4
    80002f60:	32c50513          	addi	a0,a0,812 # 80007288 <CONSOLE_STATUS+0x278>
    80002f64:	00001097          	auipc	ra,0x1
    80002f68:	9a8080e7          	jalr	-1624(ra) # 8000390c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002f6c:	00000493          	li	s1,0
    80002f70:	00300793          	li	a5,3
    80002f74:	0297c663          	blt	a5,s1,80002fa0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002f78:	00349793          	slli	a5,s1,0x3
    80002f7c:	fe040713          	addi	a4,s0,-32
    80002f80:	00f707b3          	add	a5,a4,a5
    80002f84:	fe07b503          	ld	a0,-32(a5)
    80002f88:	fffff097          	auipc	ra,0xfffff
    80002f8c:	c2c080e7          	jalr	-980(ra) # 80001bb4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002f90:	0014849b          	addiw	s1,s1,1
    80002f94:	fddff06f          	j	80002f70 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002f98:	fffff097          	auipc	ra,0xfffff
    80002f9c:	c70080e7          	jalr	-912(ra) # 80001c08 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002fa0:	00006797          	auipc	a5,0x6
    80002fa4:	b707c783          	lbu	a5,-1168(a5) # 80008b10 <_ZL9finishedA>
    80002fa8:	fe0788e3          	beqz	a5,80002f98 <_Z20Threads_CPP_API_testv+0x124>
    80002fac:	00006797          	auipc	a5,0x6
    80002fb0:	b657c783          	lbu	a5,-1179(a5) # 80008b11 <_ZL9finishedB>
    80002fb4:	fe0782e3          	beqz	a5,80002f98 <_Z20Threads_CPP_API_testv+0x124>
    80002fb8:	00006797          	auipc	a5,0x6
    80002fbc:	b5a7c783          	lbu	a5,-1190(a5) # 80008b12 <_ZL9finishedC>
    80002fc0:	fc078ce3          	beqz	a5,80002f98 <_Z20Threads_CPP_API_testv+0x124>
    80002fc4:	00006797          	auipc	a5,0x6
    80002fc8:	b4f7c783          	lbu	a5,-1201(a5) # 80008b13 <_ZL9finishedD>
    80002fcc:	fc0786e3          	beqz	a5,80002f98 <_Z20Threads_CPP_API_testv+0x124>
    80002fd0:	fc040493          	addi	s1,s0,-64
    80002fd4:	0080006f          	j	80002fdc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002fd8:	00848493          	addi	s1,s1,8
    80002fdc:	fe040793          	addi	a5,s0,-32
    80002fe0:	08f48663          	beq	s1,a5,8000306c <_Z20Threads_CPP_API_testv+0x1f8>
    80002fe4:	0004b503          	ld	a0,0(s1)
    80002fe8:	fe0508e3          	beqz	a0,80002fd8 <_Z20Threads_CPP_API_testv+0x164>
    80002fec:	00053783          	ld	a5,0(a0)
    80002ff0:	0087b783          	ld	a5,8(a5)
    80002ff4:	000780e7          	jalr	a5
    80002ff8:	fe1ff06f          	j	80002fd8 <_Z20Threads_CPP_API_testv+0x164>
    80002ffc:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003000:	00048513          	mv	a0,s1
    80003004:	fffff097          	auipc	ra,0xfffff
    80003008:	a58080e7          	jalr	-1448(ra) # 80001a5c <_ZdlPv>
    8000300c:	00090513          	mv	a0,s2
    80003010:	00007097          	auipc	ra,0x7
    80003014:	be8080e7          	jalr	-1048(ra) # 80009bf8 <_Unwind_Resume>
    80003018:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000301c:	00048513          	mv	a0,s1
    80003020:	fffff097          	auipc	ra,0xfffff
    80003024:	a3c080e7          	jalr	-1476(ra) # 80001a5c <_ZdlPv>
    80003028:	00090513          	mv	a0,s2
    8000302c:	00007097          	auipc	ra,0x7
    80003030:	bcc080e7          	jalr	-1076(ra) # 80009bf8 <_Unwind_Resume>
    80003034:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003038:	00048513          	mv	a0,s1
    8000303c:	fffff097          	auipc	ra,0xfffff
    80003040:	a20080e7          	jalr	-1504(ra) # 80001a5c <_ZdlPv>
    80003044:	00090513          	mv	a0,s2
    80003048:	00007097          	auipc	ra,0x7
    8000304c:	bb0080e7          	jalr	-1104(ra) # 80009bf8 <_Unwind_Resume>
    80003050:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003054:	00048513          	mv	a0,s1
    80003058:	fffff097          	auipc	ra,0xfffff
    8000305c:	a04080e7          	jalr	-1532(ra) # 80001a5c <_ZdlPv>
    80003060:	00090513          	mv	a0,s2
    80003064:	00007097          	auipc	ra,0x7
    80003068:	b94080e7          	jalr	-1132(ra) # 80009bf8 <_Unwind_Resume>
}
    8000306c:	03813083          	ld	ra,56(sp)
    80003070:	03013403          	ld	s0,48(sp)
    80003074:	02813483          	ld	s1,40(sp)
    80003078:	02013903          	ld	s2,32(sp)
    8000307c:	04010113          	addi	sp,sp,64
    80003080:	00008067          	ret

0000000080003084 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003084:	ff010113          	addi	sp,sp,-16
    80003088:	00113423          	sd	ra,8(sp)
    8000308c:	00813023          	sd	s0,0(sp)
    80003090:	01010413          	addi	s0,sp,16
    80003094:	00006797          	auipc	a5,0x6
    80003098:	91c78793          	addi	a5,a5,-1764 # 800089b0 <_ZTV7WorkerA+0x10>
    8000309c:	00f53023          	sd	a5,0(a0)
    800030a0:	fffff097          	auipc	ra,0xfffff
    800030a4:	8e8080e7          	jalr	-1816(ra) # 80001988 <_ZN6ThreadD1Ev>
    800030a8:	00813083          	ld	ra,8(sp)
    800030ac:	00013403          	ld	s0,0(sp)
    800030b0:	01010113          	addi	sp,sp,16
    800030b4:	00008067          	ret

00000000800030b8 <_ZN7WorkerAD0Ev>:
    800030b8:	fe010113          	addi	sp,sp,-32
    800030bc:	00113c23          	sd	ra,24(sp)
    800030c0:	00813823          	sd	s0,16(sp)
    800030c4:	00913423          	sd	s1,8(sp)
    800030c8:	02010413          	addi	s0,sp,32
    800030cc:	00050493          	mv	s1,a0
    800030d0:	00006797          	auipc	a5,0x6
    800030d4:	8e078793          	addi	a5,a5,-1824 # 800089b0 <_ZTV7WorkerA+0x10>
    800030d8:	00f53023          	sd	a5,0(a0)
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	8ac080e7          	jalr	-1876(ra) # 80001988 <_ZN6ThreadD1Ev>
    800030e4:	00048513          	mv	a0,s1
    800030e8:	fffff097          	auipc	ra,0xfffff
    800030ec:	974080e7          	jalr	-1676(ra) # 80001a5c <_ZdlPv>
    800030f0:	01813083          	ld	ra,24(sp)
    800030f4:	01013403          	ld	s0,16(sp)
    800030f8:	00813483          	ld	s1,8(sp)
    800030fc:	02010113          	addi	sp,sp,32
    80003100:	00008067          	ret

0000000080003104 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003104:	ff010113          	addi	sp,sp,-16
    80003108:	00113423          	sd	ra,8(sp)
    8000310c:	00813023          	sd	s0,0(sp)
    80003110:	01010413          	addi	s0,sp,16
    80003114:	00006797          	auipc	a5,0x6
    80003118:	8c478793          	addi	a5,a5,-1852 # 800089d8 <_ZTV7WorkerB+0x10>
    8000311c:	00f53023          	sd	a5,0(a0)
    80003120:	fffff097          	auipc	ra,0xfffff
    80003124:	868080e7          	jalr	-1944(ra) # 80001988 <_ZN6ThreadD1Ev>
    80003128:	00813083          	ld	ra,8(sp)
    8000312c:	00013403          	ld	s0,0(sp)
    80003130:	01010113          	addi	sp,sp,16
    80003134:	00008067          	ret

0000000080003138 <_ZN7WorkerBD0Ev>:
    80003138:	fe010113          	addi	sp,sp,-32
    8000313c:	00113c23          	sd	ra,24(sp)
    80003140:	00813823          	sd	s0,16(sp)
    80003144:	00913423          	sd	s1,8(sp)
    80003148:	02010413          	addi	s0,sp,32
    8000314c:	00050493          	mv	s1,a0
    80003150:	00006797          	auipc	a5,0x6
    80003154:	88878793          	addi	a5,a5,-1912 # 800089d8 <_ZTV7WorkerB+0x10>
    80003158:	00f53023          	sd	a5,0(a0)
    8000315c:	fffff097          	auipc	ra,0xfffff
    80003160:	82c080e7          	jalr	-2004(ra) # 80001988 <_ZN6ThreadD1Ev>
    80003164:	00048513          	mv	a0,s1
    80003168:	fffff097          	auipc	ra,0xfffff
    8000316c:	8f4080e7          	jalr	-1804(ra) # 80001a5c <_ZdlPv>
    80003170:	01813083          	ld	ra,24(sp)
    80003174:	01013403          	ld	s0,16(sp)
    80003178:	00813483          	ld	s1,8(sp)
    8000317c:	02010113          	addi	sp,sp,32
    80003180:	00008067          	ret

0000000080003184 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003184:	ff010113          	addi	sp,sp,-16
    80003188:	00113423          	sd	ra,8(sp)
    8000318c:	00813023          	sd	s0,0(sp)
    80003190:	01010413          	addi	s0,sp,16
    80003194:	00006797          	auipc	a5,0x6
    80003198:	86c78793          	addi	a5,a5,-1940 # 80008a00 <_ZTV7WorkerC+0x10>
    8000319c:	00f53023          	sd	a5,0(a0)
    800031a0:	ffffe097          	auipc	ra,0xffffe
    800031a4:	7e8080e7          	jalr	2024(ra) # 80001988 <_ZN6ThreadD1Ev>
    800031a8:	00813083          	ld	ra,8(sp)
    800031ac:	00013403          	ld	s0,0(sp)
    800031b0:	01010113          	addi	sp,sp,16
    800031b4:	00008067          	ret

00000000800031b8 <_ZN7WorkerCD0Ev>:
    800031b8:	fe010113          	addi	sp,sp,-32
    800031bc:	00113c23          	sd	ra,24(sp)
    800031c0:	00813823          	sd	s0,16(sp)
    800031c4:	00913423          	sd	s1,8(sp)
    800031c8:	02010413          	addi	s0,sp,32
    800031cc:	00050493          	mv	s1,a0
    800031d0:	00006797          	auipc	a5,0x6
    800031d4:	83078793          	addi	a5,a5,-2000 # 80008a00 <_ZTV7WorkerC+0x10>
    800031d8:	00f53023          	sd	a5,0(a0)
    800031dc:	ffffe097          	auipc	ra,0xffffe
    800031e0:	7ac080e7          	jalr	1964(ra) # 80001988 <_ZN6ThreadD1Ev>
    800031e4:	00048513          	mv	a0,s1
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	874080e7          	jalr	-1932(ra) # 80001a5c <_ZdlPv>
    800031f0:	01813083          	ld	ra,24(sp)
    800031f4:	01013403          	ld	s0,16(sp)
    800031f8:	00813483          	ld	s1,8(sp)
    800031fc:	02010113          	addi	sp,sp,32
    80003200:	00008067          	ret

0000000080003204 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003204:	ff010113          	addi	sp,sp,-16
    80003208:	00113423          	sd	ra,8(sp)
    8000320c:	00813023          	sd	s0,0(sp)
    80003210:	01010413          	addi	s0,sp,16
    80003214:	00006797          	auipc	a5,0x6
    80003218:	81478793          	addi	a5,a5,-2028 # 80008a28 <_ZTV7WorkerD+0x10>
    8000321c:	00f53023          	sd	a5,0(a0)
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	768080e7          	jalr	1896(ra) # 80001988 <_ZN6ThreadD1Ev>
    80003228:	00813083          	ld	ra,8(sp)
    8000322c:	00013403          	ld	s0,0(sp)
    80003230:	01010113          	addi	sp,sp,16
    80003234:	00008067          	ret

0000000080003238 <_ZN7WorkerDD0Ev>:
    80003238:	fe010113          	addi	sp,sp,-32
    8000323c:	00113c23          	sd	ra,24(sp)
    80003240:	00813823          	sd	s0,16(sp)
    80003244:	00913423          	sd	s1,8(sp)
    80003248:	02010413          	addi	s0,sp,32
    8000324c:	00050493          	mv	s1,a0
    80003250:	00005797          	auipc	a5,0x5
    80003254:	7d878793          	addi	a5,a5,2008 # 80008a28 <_ZTV7WorkerD+0x10>
    80003258:	00f53023          	sd	a5,0(a0)
    8000325c:	ffffe097          	auipc	ra,0xffffe
    80003260:	72c080e7          	jalr	1836(ra) # 80001988 <_ZN6ThreadD1Ev>
    80003264:	00048513          	mv	a0,s1
    80003268:	ffffe097          	auipc	ra,0xffffe
    8000326c:	7f4080e7          	jalr	2036(ra) # 80001a5c <_ZdlPv>
    80003270:	01813083          	ld	ra,24(sp)
    80003274:	01013403          	ld	s0,16(sp)
    80003278:	00813483          	ld	s1,8(sp)
    8000327c:	02010113          	addi	sp,sp,32
    80003280:	00008067          	ret

0000000080003284 <_ZN7WorkerA3runEv>:
    void run() override {
    80003284:	ff010113          	addi	sp,sp,-16
    80003288:	00113423          	sd	ra,8(sp)
    8000328c:	00813023          	sd	s0,0(sp)
    80003290:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003294:	00000593          	li	a1,0
    80003298:	fffff097          	auipc	ra,0xfffff
    8000329c:	774080e7          	jalr	1908(ra) # 80002a0c <_ZN7WorkerA11workerBodyAEPv>
    }
    800032a0:	00813083          	ld	ra,8(sp)
    800032a4:	00013403          	ld	s0,0(sp)
    800032a8:	01010113          	addi	sp,sp,16
    800032ac:	00008067          	ret

00000000800032b0 <_ZN7WorkerB3runEv>:
    void run() override {
    800032b0:	ff010113          	addi	sp,sp,-16
    800032b4:	00113423          	sd	ra,8(sp)
    800032b8:	00813023          	sd	s0,0(sp)
    800032bc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800032c0:	00000593          	li	a1,0
    800032c4:	00000097          	auipc	ra,0x0
    800032c8:	814080e7          	jalr	-2028(ra) # 80002ad8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800032cc:	00813083          	ld	ra,8(sp)
    800032d0:	00013403          	ld	s0,0(sp)
    800032d4:	01010113          	addi	sp,sp,16
    800032d8:	00008067          	ret

00000000800032dc <_ZN7WorkerC3runEv>:
    void run() override {
    800032dc:	ff010113          	addi	sp,sp,-16
    800032e0:	00113423          	sd	ra,8(sp)
    800032e4:	00813023          	sd	s0,0(sp)
    800032e8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800032ec:	00000593          	li	a1,0
    800032f0:	00000097          	auipc	ra,0x0
    800032f4:	8bc080e7          	jalr	-1860(ra) # 80002bac <_ZN7WorkerC11workerBodyCEPv>
    }
    800032f8:	00813083          	ld	ra,8(sp)
    800032fc:	00013403          	ld	s0,0(sp)
    80003300:	01010113          	addi	sp,sp,16
    80003304:	00008067          	ret

0000000080003308 <_ZN7WorkerD3runEv>:
    void run() override {
    80003308:	ff010113          	addi	sp,sp,-16
    8000330c:	00113423          	sd	ra,8(sp)
    80003310:	00813023          	sd	s0,0(sp)
    80003314:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003318:	00000593          	li	a1,0
    8000331c:	00000097          	auipc	ra,0x0
    80003320:	a10080e7          	jalr	-1520(ra) # 80002d2c <_ZN7WorkerD11workerBodyDEPv>
    }
    80003324:	00813083          	ld	ra,8(sp)
    80003328:	00013403          	ld	s0,0(sp)
    8000332c:	01010113          	addi	sp,sp,16
    80003330:	00008067          	ret

0000000080003334 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003334:	fe010113          	addi	sp,sp,-32
    80003338:	00113c23          	sd	ra,24(sp)
    8000333c:	00813823          	sd	s0,16(sp)
    80003340:	00913423          	sd	s1,8(sp)
    80003344:	01213023          	sd	s2,0(sp)
    80003348:	02010413          	addi	s0,sp,32
    8000334c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003350:	00100793          	li	a5,1
    80003354:	02a7f863          	bgeu	a5,a0,80003384 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003358:	00a00793          	li	a5,10
    8000335c:	02f577b3          	remu	a5,a0,a5
    80003360:	02078e63          	beqz	a5,8000339c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003364:	fff48513          	addi	a0,s1,-1
    80003368:	00000097          	auipc	ra,0x0
    8000336c:	fcc080e7          	jalr	-52(ra) # 80003334 <_ZL9fibonaccim>
    80003370:	00050913          	mv	s2,a0
    80003374:	ffe48513          	addi	a0,s1,-2
    80003378:	00000097          	auipc	ra,0x0
    8000337c:	fbc080e7          	jalr	-68(ra) # 80003334 <_ZL9fibonaccim>
    80003380:	00a90533          	add	a0,s2,a0
}
    80003384:	01813083          	ld	ra,24(sp)
    80003388:	01013403          	ld	s0,16(sp)
    8000338c:	00813483          	ld	s1,8(sp)
    80003390:	00013903          	ld	s2,0(sp)
    80003394:	02010113          	addi	sp,sp,32
    80003398:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000339c:	ffffe097          	auipc	ra,0xffffe
    800033a0:	f94080e7          	jalr	-108(ra) # 80001330 <_Z15thread_dispatchv>
    800033a4:	fc1ff06f          	j	80003364 <_ZL9fibonaccim+0x30>

00000000800033a8 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800033a8:	fe010113          	addi	sp,sp,-32
    800033ac:	00113c23          	sd	ra,24(sp)
    800033b0:	00813823          	sd	s0,16(sp)
    800033b4:	00913423          	sd	s1,8(sp)
    800033b8:	01213023          	sd	s2,0(sp)
    800033bc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800033c0:	00a00493          	li	s1,10
    800033c4:	0400006f          	j	80003404 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800033c8:	00004517          	auipc	a0,0x4
    800033cc:	e4050513          	addi	a0,a0,-448 # 80007208 <CONSOLE_STATUS+0x1f8>
    800033d0:	00000097          	auipc	ra,0x0
    800033d4:	53c080e7          	jalr	1340(ra) # 8000390c <_Z11printStringPKc>
    800033d8:	00000613          	li	a2,0
    800033dc:	00a00593          	li	a1,10
    800033e0:	00048513          	mv	a0,s1
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	6d8080e7          	jalr	1752(ra) # 80003abc <_Z8printIntiii>
    800033ec:	00004517          	auipc	a0,0x4
    800033f0:	d7c50513          	addi	a0,a0,-644 # 80007168 <CONSOLE_STATUS+0x158>
    800033f4:	00000097          	auipc	ra,0x0
    800033f8:	518080e7          	jalr	1304(ra) # 8000390c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800033fc:	0014849b          	addiw	s1,s1,1
    80003400:	0ff4f493          	andi	s1,s1,255
    80003404:	00c00793          	li	a5,12
    80003408:	fc97f0e3          	bgeu	a5,s1,800033c8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000340c:	00004517          	auipc	a0,0x4
    80003410:	e0450513          	addi	a0,a0,-508 # 80007210 <CONSOLE_STATUS+0x200>
    80003414:	00000097          	auipc	ra,0x0
    80003418:	4f8080e7          	jalr	1272(ra) # 8000390c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000341c:	00500313          	li	t1,5
    thread_dispatch();
    80003420:	ffffe097          	auipc	ra,0xffffe
    80003424:	f10080e7          	jalr	-240(ra) # 80001330 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003428:	01000513          	li	a0,16
    8000342c:	00000097          	auipc	ra,0x0
    80003430:	f08080e7          	jalr	-248(ra) # 80003334 <_ZL9fibonaccim>
    80003434:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003438:	00004517          	auipc	a0,0x4
    8000343c:	de850513          	addi	a0,a0,-536 # 80007220 <CONSOLE_STATUS+0x210>
    80003440:	00000097          	auipc	ra,0x0
    80003444:	4cc080e7          	jalr	1228(ra) # 8000390c <_Z11printStringPKc>
    80003448:	00000613          	li	a2,0
    8000344c:	00a00593          	li	a1,10
    80003450:	0009051b          	sext.w	a0,s2
    80003454:	00000097          	auipc	ra,0x0
    80003458:	668080e7          	jalr	1640(ra) # 80003abc <_Z8printIntiii>
    8000345c:	00004517          	auipc	a0,0x4
    80003460:	d0c50513          	addi	a0,a0,-756 # 80007168 <CONSOLE_STATUS+0x158>
    80003464:	00000097          	auipc	ra,0x0
    80003468:	4a8080e7          	jalr	1192(ra) # 8000390c <_Z11printStringPKc>
    8000346c:	0400006f          	j	800034ac <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003470:	00004517          	auipc	a0,0x4
    80003474:	d9850513          	addi	a0,a0,-616 # 80007208 <CONSOLE_STATUS+0x1f8>
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	494080e7          	jalr	1172(ra) # 8000390c <_Z11printStringPKc>
    80003480:	00000613          	li	a2,0
    80003484:	00a00593          	li	a1,10
    80003488:	00048513          	mv	a0,s1
    8000348c:	00000097          	auipc	ra,0x0
    80003490:	630080e7          	jalr	1584(ra) # 80003abc <_Z8printIntiii>
    80003494:	00004517          	auipc	a0,0x4
    80003498:	cd450513          	addi	a0,a0,-812 # 80007168 <CONSOLE_STATUS+0x158>
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	470080e7          	jalr	1136(ra) # 8000390c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800034a4:	0014849b          	addiw	s1,s1,1
    800034a8:	0ff4f493          	andi	s1,s1,255
    800034ac:	00f00793          	li	a5,15
    800034b0:	fc97f0e3          	bgeu	a5,s1,80003470 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800034b4:	00004517          	auipc	a0,0x4
    800034b8:	d7c50513          	addi	a0,a0,-644 # 80007230 <CONSOLE_STATUS+0x220>
    800034bc:	00000097          	auipc	ra,0x0
    800034c0:	450080e7          	jalr	1104(ra) # 8000390c <_Z11printStringPKc>
    finishedD = true;
    800034c4:	00100793          	li	a5,1
    800034c8:	00005717          	auipc	a4,0x5
    800034cc:	64f70623          	sb	a5,1612(a4) # 80008b14 <_ZL9finishedD>
    thread_dispatch();
    800034d0:	ffffe097          	auipc	ra,0xffffe
    800034d4:	e60080e7          	jalr	-416(ra) # 80001330 <_Z15thread_dispatchv>
}
    800034d8:	01813083          	ld	ra,24(sp)
    800034dc:	01013403          	ld	s0,16(sp)
    800034e0:	00813483          	ld	s1,8(sp)
    800034e4:	00013903          	ld	s2,0(sp)
    800034e8:	02010113          	addi	sp,sp,32
    800034ec:	00008067          	ret

00000000800034f0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800034f0:	fe010113          	addi	sp,sp,-32
    800034f4:	00113c23          	sd	ra,24(sp)
    800034f8:	00813823          	sd	s0,16(sp)
    800034fc:	00913423          	sd	s1,8(sp)
    80003500:	01213023          	sd	s2,0(sp)
    80003504:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003508:	00000493          	li	s1,0
    8000350c:	0400006f          	j	8000354c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003510:	00004517          	auipc	a0,0x4
    80003514:	cc850513          	addi	a0,a0,-824 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	3f4080e7          	jalr	1012(ra) # 8000390c <_Z11printStringPKc>
    80003520:	00000613          	li	a2,0
    80003524:	00a00593          	li	a1,10
    80003528:	00048513          	mv	a0,s1
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	590080e7          	jalr	1424(ra) # 80003abc <_Z8printIntiii>
    80003534:	00004517          	auipc	a0,0x4
    80003538:	c3450513          	addi	a0,a0,-972 # 80007168 <CONSOLE_STATUS+0x158>
    8000353c:	00000097          	auipc	ra,0x0
    80003540:	3d0080e7          	jalr	976(ra) # 8000390c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003544:	0014849b          	addiw	s1,s1,1
    80003548:	0ff4f493          	andi	s1,s1,255
    8000354c:	00200793          	li	a5,2
    80003550:	fc97f0e3          	bgeu	a5,s1,80003510 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003554:	00004517          	auipc	a0,0x4
    80003558:	c8c50513          	addi	a0,a0,-884 # 800071e0 <CONSOLE_STATUS+0x1d0>
    8000355c:	00000097          	auipc	ra,0x0
    80003560:	3b0080e7          	jalr	944(ra) # 8000390c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003564:	00700313          	li	t1,7
    thread_dispatch();
    80003568:	ffffe097          	auipc	ra,0xffffe
    8000356c:	dc8080e7          	jalr	-568(ra) # 80001330 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003570:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003574:	00004517          	auipc	a0,0x4
    80003578:	c7c50513          	addi	a0,a0,-900 # 800071f0 <CONSOLE_STATUS+0x1e0>
    8000357c:	00000097          	auipc	ra,0x0
    80003580:	390080e7          	jalr	912(ra) # 8000390c <_Z11printStringPKc>
    80003584:	00000613          	li	a2,0
    80003588:	00a00593          	li	a1,10
    8000358c:	0009051b          	sext.w	a0,s2
    80003590:	00000097          	auipc	ra,0x0
    80003594:	52c080e7          	jalr	1324(ra) # 80003abc <_Z8printIntiii>
    80003598:	00004517          	auipc	a0,0x4
    8000359c:	bd050513          	addi	a0,a0,-1072 # 80007168 <CONSOLE_STATUS+0x158>
    800035a0:	00000097          	auipc	ra,0x0
    800035a4:	36c080e7          	jalr	876(ra) # 8000390c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800035a8:	00c00513          	li	a0,12
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	d88080e7          	jalr	-632(ra) # 80003334 <_ZL9fibonaccim>
    800035b4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800035b8:	00004517          	auipc	a0,0x4
    800035bc:	c4050513          	addi	a0,a0,-960 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	34c080e7          	jalr	844(ra) # 8000390c <_Z11printStringPKc>
    800035c8:	00000613          	li	a2,0
    800035cc:	00a00593          	li	a1,10
    800035d0:	0009051b          	sext.w	a0,s2
    800035d4:	00000097          	auipc	ra,0x0
    800035d8:	4e8080e7          	jalr	1256(ra) # 80003abc <_Z8printIntiii>
    800035dc:	00004517          	auipc	a0,0x4
    800035e0:	b8c50513          	addi	a0,a0,-1140 # 80007168 <CONSOLE_STATUS+0x158>
    800035e4:	00000097          	auipc	ra,0x0
    800035e8:	328080e7          	jalr	808(ra) # 8000390c <_Z11printStringPKc>
    800035ec:	0400006f          	j	8000362c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800035f0:	00004517          	auipc	a0,0x4
    800035f4:	be850513          	addi	a0,a0,-1048 # 800071d8 <CONSOLE_STATUS+0x1c8>
    800035f8:	00000097          	auipc	ra,0x0
    800035fc:	314080e7          	jalr	788(ra) # 8000390c <_Z11printStringPKc>
    80003600:	00000613          	li	a2,0
    80003604:	00a00593          	li	a1,10
    80003608:	00048513          	mv	a0,s1
    8000360c:	00000097          	auipc	ra,0x0
    80003610:	4b0080e7          	jalr	1200(ra) # 80003abc <_Z8printIntiii>
    80003614:	00004517          	auipc	a0,0x4
    80003618:	b5450513          	addi	a0,a0,-1196 # 80007168 <CONSOLE_STATUS+0x158>
    8000361c:	00000097          	auipc	ra,0x0
    80003620:	2f0080e7          	jalr	752(ra) # 8000390c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003624:	0014849b          	addiw	s1,s1,1
    80003628:	0ff4f493          	andi	s1,s1,255
    8000362c:	00500793          	li	a5,5
    80003630:	fc97f0e3          	bgeu	a5,s1,800035f0 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80003634:	00004517          	auipc	a0,0x4
    80003638:	c6c50513          	addi	a0,a0,-916 # 800072a0 <CONSOLE_STATUS+0x290>
    8000363c:	00000097          	auipc	ra,0x0
    80003640:	2d0080e7          	jalr	720(ra) # 8000390c <_Z11printStringPKc>
    finishedC = true;
    80003644:	00100793          	li	a5,1
    80003648:	00005717          	auipc	a4,0x5
    8000364c:	4cf706a3          	sb	a5,1229(a4) # 80008b15 <_ZL9finishedC>
    thread_dispatch();
    80003650:	ffffe097          	auipc	ra,0xffffe
    80003654:	ce0080e7          	jalr	-800(ra) # 80001330 <_Z15thread_dispatchv>
}
    80003658:	01813083          	ld	ra,24(sp)
    8000365c:	01013403          	ld	s0,16(sp)
    80003660:	00813483          	ld	s1,8(sp)
    80003664:	00013903          	ld	s2,0(sp)
    80003668:	02010113          	addi	sp,sp,32
    8000366c:	00008067          	ret

0000000080003670 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003670:	fe010113          	addi	sp,sp,-32
    80003674:	00113c23          	sd	ra,24(sp)
    80003678:	00813823          	sd	s0,16(sp)
    8000367c:	00913423          	sd	s1,8(sp)
    80003680:	01213023          	sd	s2,0(sp)
    80003684:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003688:	00000913          	li	s2,0
    8000368c:	0380006f          	j	800036c4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	ca0080e7          	jalr	-864(ra) # 80001330 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003698:	00148493          	addi	s1,s1,1
    8000369c:	000027b7          	lui	a5,0x2
    800036a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800036a4:	0097ee63          	bltu	a5,s1,800036c0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800036a8:	00000713          	li	a4,0
    800036ac:	000077b7          	lui	a5,0x7
    800036b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036b4:	fce7eee3          	bltu	a5,a4,80003690 <_ZL11workerBodyBPv+0x20>
    800036b8:	00170713          	addi	a4,a4,1
    800036bc:	ff1ff06f          	j	800036ac <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800036c0:	00190913          	addi	s2,s2,1
    800036c4:	00f00793          	li	a5,15
    800036c8:	0527e063          	bltu	a5,s2,80003708 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800036cc:	00004517          	auipc	a0,0x4
    800036d0:	af450513          	addi	a0,a0,-1292 # 800071c0 <CONSOLE_STATUS+0x1b0>
    800036d4:	00000097          	auipc	ra,0x0
    800036d8:	238080e7          	jalr	568(ra) # 8000390c <_Z11printStringPKc>
    800036dc:	00000613          	li	a2,0
    800036e0:	00a00593          	li	a1,10
    800036e4:	0009051b          	sext.w	a0,s2
    800036e8:	00000097          	auipc	ra,0x0
    800036ec:	3d4080e7          	jalr	980(ra) # 80003abc <_Z8printIntiii>
    800036f0:	00004517          	auipc	a0,0x4
    800036f4:	a7850513          	addi	a0,a0,-1416 # 80007168 <CONSOLE_STATUS+0x158>
    800036f8:	00000097          	auipc	ra,0x0
    800036fc:	214080e7          	jalr	532(ra) # 8000390c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003700:	00000493          	li	s1,0
    80003704:	f99ff06f          	j	8000369c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003708:	00004517          	auipc	a0,0x4
    8000370c:	ac050513          	addi	a0,a0,-1344 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80003710:	00000097          	auipc	ra,0x0
    80003714:	1fc080e7          	jalr	508(ra) # 8000390c <_Z11printStringPKc>
    finishedB = true;
    80003718:	00100793          	li	a5,1
    8000371c:	00005717          	auipc	a4,0x5
    80003720:	3ef70d23          	sb	a5,1018(a4) # 80008b16 <_ZL9finishedB>
    thread_dispatch();
    80003724:	ffffe097          	auipc	ra,0xffffe
    80003728:	c0c080e7          	jalr	-1012(ra) # 80001330 <_Z15thread_dispatchv>
}
    8000372c:	01813083          	ld	ra,24(sp)
    80003730:	01013403          	ld	s0,16(sp)
    80003734:	00813483          	ld	s1,8(sp)
    80003738:	00013903          	ld	s2,0(sp)
    8000373c:	02010113          	addi	sp,sp,32
    80003740:	00008067          	ret

0000000080003744 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003744:	fe010113          	addi	sp,sp,-32
    80003748:	00113c23          	sd	ra,24(sp)
    8000374c:	00813823          	sd	s0,16(sp)
    80003750:	00913423          	sd	s1,8(sp)
    80003754:	01213023          	sd	s2,0(sp)
    80003758:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000375c:	00000913          	li	s2,0
    80003760:	0380006f          	j	80003798 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003764:	ffffe097          	auipc	ra,0xffffe
    80003768:	bcc080e7          	jalr	-1076(ra) # 80001330 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000376c:	00148493          	addi	s1,s1,1
    80003770:	000027b7          	lui	a5,0x2
    80003774:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003778:	0097ee63          	bltu	a5,s1,80003794 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000377c:	00000713          	li	a4,0
    80003780:	000077b7          	lui	a5,0x7
    80003784:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003788:	fce7eee3          	bltu	a5,a4,80003764 <_ZL11workerBodyAPv+0x20>
    8000378c:	00170713          	addi	a4,a4,1
    80003790:	ff1ff06f          	j	80003780 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003794:	00190913          	addi	s2,s2,1
    80003798:	00900793          	li	a5,9
    8000379c:	0527e063          	bltu	a5,s2,800037dc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800037a0:	00004517          	auipc	a0,0x4
    800037a4:	a0850513          	addi	a0,a0,-1528 # 800071a8 <CONSOLE_STATUS+0x198>
    800037a8:	00000097          	auipc	ra,0x0
    800037ac:	164080e7          	jalr	356(ra) # 8000390c <_Z11printStringPKc>
    800037b0:	00000613          	li	a2,0
    800037b4:	00a00593          	li	a1,10
    800037b8:	0009051b          	sext.w	a0,s2
    800037bc:	00000097          	auipc	ra,0x0
    800037c0:	300080e7          	jalr	768(ra) # 80003abc <_Z8printIntiii>
    800037c4:	00004517          	auipc	a0,0x4
    800037c8:	9a450513          	addi	a0,a0,-1628 # 80007168 <CONSOLE_STATUS+0x158>
    800037cc:	00000097          	auipc	ra,0x0
    800037d0:	140080e7          	jalr	320(ra) # 8000390c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800037d4:	00000493          	li	s1,0
    800037d8:	f99ff06f          	j	80003770 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800037dc:	00004517          	auipc	a0,0x4
    800037e0:	9d450513          	addi	a0,a0,-1580 # 800071b0 <CONSOLE_STATUS+0x1a0>
    800037e4:	00000097          	auipc	ra,0x0
    800037e8:	128080e7          	jalr	296(ra) # 8000390c <_Z11printStringPKc>
    finishedA = true;
    800037ec:	00100793          	li	a5,1
    800037f0:	00005717          	auipc	a4,0x5
    800037f4:	32f703a3          	sb	a5,807(a4) # 80008b17 <_ZL9finishedA>
}
    800037f8:	01813083          	ld	ra,24(sp)
    800037fc:	01013403          	ld	s0,16(sp)
    80003800:	00813483          	ld	s1,8(sp)
    80003804:	00013903          	ld	s2,0(sp)
    80003808:	02010113          	addi	sp,sp,32
    8000380c:	00008067          	ret

0000000080003810 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003810:	fd010113          	addi	sp,sp,-48
    80003814:	02113423          	sd	ra,40(sp)
    80003818:	02813023          	sd	s0,32(sp)
    8000381c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003820:	00000613          	li	a2,0
    80003824:	00000597          	auipc	a1,0x0
    80003828:	f2058593          	addi	a1,a1,-224 # 80003744 <_ZL11workerBodyAPv>
    8000382c:	fd040513          	addi	a0,s0,-48
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	a2c080e7          	jalr	-1492(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80003838:	00004517          	auipc	a0,0x4
    8000383c:	a0850513          	addi	a0,a0,-1528 # 80007240 <CONSOLE_STATUS+0x230>
    80003840:	00000097          	auipc	ra,0x0
    80003844:	0cc080e7          	jalr	204(ra) # 8000390c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003848:	00000613          	li	a2,0
    8000384c:	00000597          	auipc	a1,0x0
    80003850:	e2458593          	addi	a1,a1,-476 # 80003670 <_ZL11workerBodyBPv>
    80003854:	fd840513          	addi	a0,s0,-40
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	a04080e7          	jalr	-1532(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    80003860:	00004517          	auipc	a0,0x4
    80003864:	9f850513          	addi	a0,a0,-1544 # 80007258 <CONSOLE_STATUS+0x248>
    80003868:	00000097          	auipc	ra,0x0
    8000386c:	0a4080e7          	jalr	164(ra) # 8000390c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003870:	00000613          	li	a2,0
    80003874:	00000597          	auipc	a1,0x0
    80003878:	c7c58593          	addi	a1,a1,-900 # 800034f0 <_ZL11workerBodyCPv>
    8000387c:	fe040513          	addi	a0,s0,-32
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	9dc080e7          	jalr	-1572(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    80003888:	00004517          	auipc	a0,0x4
    8000388c:	9e850513          	addi	a0,a0,-1560 # 80007270 <CONSOLE_STATUS+0x260>
    80003890:	00000097          	auipc	ra,0x0
    80003894:	07c080e7          	jalr	124(ra) # 8000390c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003898:	00000613          	li	a2,0
    8000389c:	00000597          	auipc	a1,0x0
    800038a0:	b0c58593          	addi	a1,a1,-1268 # 800033a8 <_ZL11workerBodyDPv>
    800038a4:	fe840513          	addi	a0,s0,-24
    800038a8:	ffffe097          	auipc	ra,0xffffe
    800038ac:	9b4080e7          	jalr	-1612(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    800038b0:	00004517          	auipc	a0,0x4
    800038b4:	9d850513          	addi	a0,a0,-1576 # 80007288 <CONSOLE_STATUS+0x278>
    800038b8:	00000097          	auipc	ra,0x0
    800038bc:	054080e7          	jalr	84(ra) # 8000390c <_Z11printStringPKc>
    800038c0:	00c0006f          	j	800038cc <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800038c4:	ffffe097          	auipc	ra,0xffffe
    800038c8:	a6c080e7          	jalr	-1428(ra) # 80001330 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800038cc:	00005797          	auipc	a5,0x5
    800038d0:	24b7c783          	lbu	a5,587(a5) # 80008b17 <_ZL9finishedA>
    800038d4:	fe0788e3          	beqz	a5,800038c4 <_Z18Threads_C_API_testv+0xb4>
    800038d8:	00005797          	auipc	a5,0x5
    800038dc:	23e7c783          	lbu	a5,574(a5) # 80008b16 <_ZL9finishedB>
    800038e0:	fe0782e3          	beqz	a5,800038c4 <_Z18Threads_C_API_testv+0xb4>
    800038e4:	00005797          	auipc	a5,0x5
    800038e8:	2317c783          	lbu	a5,561(a5) # 80008b15 <_ZL9finishedC>
    800038ec:	fc078ce3          	beqz	a5,800038c4 <_Z18Threads_C_API_testv+0xb4>
    800038f0:	00005797          	auipc	a5,0x5
    800038f4:	2247c783          	lbu	a5,548(a5) # 80008b14 <_ZL9finishedD>
    800038f8:	fc0786e3          	beqz	a5,800038c4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800038fc:	02813083          	ld	ra,40(sp)
    80003900:	02013403          	ld	s0,32(sp)
    80003904:	03010113          	addi	sp,sp,48
    80003908:	00008067          	ret

000000008000390c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000390c:	fe010113          	addi	sp,sp,-32
    80003910:	00113c23          	sd	ra,24(sp)
    80003914:	00813823          	sd	s0,16(sp)
    80003918:	00913423          	sd	s1,8(sp)
    8000391c:	02010413          	addi	s0,sp,32
    80003920:	00050493          	mv	s1,a0
    LOCK();
    80003924:	00100613          	li	a2,1
    80003928:	00000593          	li	a1,0
    8000392c:	00005517          	auipc	a0,0x5
    80003930:	1ec50513          	addi	a0,a0,492 # 80008b18 <lockPrint>
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	810080e7          	jalr	-2032(ra) # 80001144 <copy_and_swap>
    8000393c:	00050863          	beqz	a0,8000394c <_Z11printStringPKc+0x40>
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	9f0080e7          	jalr	-1552(ra) # 80001330 <_Z15thread_dispatchv>
    80003948:	fddff06f          	j	80003924 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000394c:	0004c503          	lbu	a0,0(s1)
    80003950:	00050a63          	beqz	a0,80003964 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	ae0080e7          	jalr	-1312(ra) # 80001434 <_Z4putcc>
        string++;
    8000395c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003960:	fedff06f          	j	8000394c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80003964:	00000613          	li	a2,0
    80003968:	00100593          	li	a1,1
    8000396c:	00005517          	auipc	a0,0x5
    80003970:	1ac50513          	addi	a0,a0,428 # 80008b18 <lockPrint>
    80003974:	ffffd097          	auipc	ra,0xffffd
    80003978:	7d0080e7          	jalr	2000(ra) # 80001144 <copy_and_swap>
    8000397c:	fe0514e3          	bnez	a0,80003964 <_Z11printStringPKc+0x58>
}
    80003980:	01813083          	ld	ra,24(sp)
    80003984:	01013403          	ld	s0,16(sp)
    80003988:	00813483          	ld	s1,8(sp)
    8000398c:	02010113          	addi	sp,sp,32
    80003990:	00008067          	ret

0000000080003994 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003994:	fd010113          	addi	sp,sp,-48
    80003998:	02113423          	sd	ra,40(sp)
    8000399c:	02813023          	sd	s0,32(sp)
    800039a0:	00913c23          	sd	s1,24(sp)
    800039a4:	01213823          	sd	s2,16(sp)
    800039a8:	01313423          	sd	s3,8(sp)
    800039ac:	01413023          	sd	s4,0(sp)
    800039b0:	03010413          	addi	s0,sp,48
    800039b4:	00050993          	mv	s3,a0
    800039b8:	00058a13          	mv	s4,a1
    LOCK();
    800039bc:	00100613          	li	a2,1
    800039c0:	00000593          	li	a1,0
    800039c4:	00005517          	auipc	a0,0x5
    800039c8:	15450513          	addi	a0,a0,340 # 80008b18 <lockPrint>
    800039cc:	ffffd097          	auipc	ra,0xffffd
    800039d0:	778080e7          	jalr	1912(ra) # 80001144 <copy_and_swap>
    800039d4:	00050863          	beqz	a0,800039e4 <_Z9getStringPci+0x50>
    800039d8:	ffffe097          	auipc	ra,0xffffe
    800039dc:	958080e7          	jalr	-1704(ra) # 80001330 <_Z15thread_dispatchv>
    800039e0:	fddff06f          	j	800039bc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800039e4:	00000913          	li	s2,0
    800039e8:	00090493          	mv	s1,s2
    800039ec:	0019091b          	addiw	s2,s2,1
    800039f0:	03495a63          	bge	s2,s4,80003a24 <_Z9getStringPci+0x90>
        cc = getc();
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	a18080e7          	jalr	-1512(ra) # 8000140c <_Z4getcv>
        if(cc < 1)
    800039fc:	02050463          	beqz	a0,80003a24 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80003a00:	009984b3          	add	s1,s3,s1
    80003a04:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80003a08:	00a00793          	li	a5,10
    80003a0c:	00f50a63          	beq	a0,a5,80003a20 <_Z9getStringPci+0x8c>
    80003a10:	00d00793          	li	a5,13
    80003a14:	fcf51ae3          	bne	a0,a5,800039e8 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80003a18:	00090493          	mv	s1,s2
    80003a1c:	0080006f          	j	80003a24 <_Z9getStringPci+0x90>
    80003a20:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003a24:	009984b3          	add	s1,s3,s1
    80003a28:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003a2c:	00000613          	li	a2,0
    80003a30:	00100593          	li	a1,1
    80003a34:	00005517          	auipc	a0,0x5
    80003a38:	0e450513          	addi	a0,a0,228 # 80008b18 <lockPrint>
    80003a3c:	ffffd097          	auipc	ra,0xffffd
    80003a40:	708080e7          	jalr	1800(ra) # 80001144 <copy_and_swap>
    80003a44:	fe0514e3          	bnez	a0,80003a2c <_Z9getStringPci+0x98>
    return buf;
}
    80003a48:	00098513          	mv	a0,s3
    80003a4c:	02813083          	ld	ra,40(sp)
    80003a50:	02013403          	ld	s0,32(sp)
    80003a54:	01813483          	ld	s1,24(sp)
    80003a58:	01013903          	ld	s2,16(sp)
    80003a5c:	00813983          	ld	s3,8(sp)
    80003a60:	00013a03          	ld	s4,0(sp)
    80003a64:	03010113          	addi	sp,sp,48
    80003a68:	00008067          	ret

0000000080003a6c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003a6c:	ff010113          	addi	sp,sp,-16
    80003a70:	00813423          	sd	s0,8(sp)
    80003a74:	01010413          	addi	s0,sp,16
    80003a78:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003a7c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003a80:	0006c603          	lbu	a2,0(a3)
    80003a84:	fd06071b          	addiw	a4,a2,-48
    80003a88:	0ff77713          	andi	a4,a4,255
    80003a8c:	00900793          	li	a5,9
    80003a90:	02e7e063          	bltu	a5,a4,80003ab0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003a94:	0025179b          	slliw	a5,a0,0x2
    80003a98:	00a787bb          	addw	a5,a5,a0
    80003a9c:	0017979b          	slliw	a5,a5,0x1
    80003aa0:	00168693          	addi	a3,a3,1
    80003aa4:	00c787bb          	addw	a5,a5,a2
    80003aa8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003aac:	fd5ff06f          	j	80003a80 <_Z11stringToIntPKc+0x14>
    return n;
}
    80003ab0:	00813403          	ld	s0,8(sp)
    80003ab4:	01010113          	addi	sp,sp,16
    80003ab8:	00008067          	ret

0000000080003abc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003abc:	fc010113          	addi	sp,sp,-64
    80003ac0:	02113c23          	sd	ra,56(sp)
    80003ac4:	02813823          	sd	s0,48(sp)
    80003ac8:	02913423          	sd	s1,40(sp)
    80003acc:	03213023          	sd	s2,32(sp)
    80003ad0:	01313c23          	sd	s3,24(sp)
    80003ad4:	04010413          	addi	s0,sp,64
    80003ad8:	00050493          	mv	s1,a0
    80003adc:	00058913          	mv	s2,a1
    80003ae0:	00060993          	mv	s3,a2
    LOCK();
    80003ae4:	00100613          	li	a2,1
    80003ae8:	00000593          	li	a1,0
    80003aec:	00005517          	auipc	a0,0x5
    80003af0:	02c50513          	addi	a0,a0,44 # 80008b18 <lockPrint>
    80003af4:	ffffd097          	auipc	ra,0xffffd
    80003af8:	650080e7          	jalr	1616(ra) # 80001144 <copy_and_swap>
    80003afc:	00050863          	beqz	a0,80003b0c <_Z8printIntiii+0x50>
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	830080e7          	jalr	-2000(ra) # 80001330 <_Z15thread_dispatchv>
    80003b08:	fddff06f          	j	80003ae4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003b0c:	00098463          	beqz	s3,80003b14 <_Z8printIntiii+0x58>
    80003b10:	0804c463          	bltz	s1,80003b98 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003b14:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003b18:	00000593          	li	a1,0
    }

    i = 0;
    80003b1c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003b20:	0009079b          	sext.w	a5,s2
    80003b24:	0325773b          	remuw	a4,a0,s2
    80003b28:	00048613          	mv	a2,s1
    80003b2c:	0014849b          	addiw	s1,s1,1
    80003b30:	02071693          	slli	a3,a4,0x20
    80003b34:	0206d693          	srli	a3,a3,0x20
    80003b38:	00005717          	auipc	a4,0x5
    80003b3c:	f0870713          	addi	a4,a4,-248 # 80008a40 <digits>
    80003b40:	00d70733          	add	a4,a4,a3
    80003b44:	00074683          	lbu	a3,0(a4)
    80003b48:	fd040713          	addi	a4,s0,-48
    80003b4c:	00c70733          	add	a4,a4,a2
    80003b50:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003b54:	0005071b          	sext.w	a4,a0
    80003b58:	0325553b          	divuw	a0,a0,s2
    80003b5c:	fcf772e3          	bgeu	a4,a5,80003b20 <_Z8printIntiii+0x64>
    if(neg)
    80003b60:	00058c63          	beqz	a1,80003b78 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80003b64:	fd040793          	addi	a5,s0,-48
    80003b68:	009784b3          	add	s1,a5,s1
    80003b6c:	02d00793          	li	a5,45
    80003b70:	fef48823          	sb	a5,-16(s1)
    80003b74:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003b78:	fff4849b          	addiw	s1,s1,-1
    80003b7c:	0204c463          	bltz	s1,80003ba4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80003b80:	fd040793          	addi	a5,s0,-48
    80003b84:	009787b3          	add	a5,a5,s1
    80003b88:	ff07c503          	lbu	a0,-16(a5)
    80003b8c:	ffffe097          	auipc	ra,0xffffe
    80003b90:	8a8080e7          	jalr	-1880(ra) # 80001434 <_Z4putcc>
    80003b94:	fe5ff06f          	j	80003b78 <_Z8printIntiii+0xbc>
        x = -xx;
    80003b98:	4090053b          	negw	a0,s1
        neg = 1;
    80003b9c:	00100593          	li	a1,1
        x = -xx;
    80003ba0:	f7dff06f          	j	80003b1c <_Z8printIntiii+0x60>

    UNLOCK();
    80003ba4:	00000613          	li	a2,0
    80003ba8:	00100593          	li	a1,1
    80003bac:	00005517          	auipc	a0,0x5
    80003bb0:	f6c50513          	addi	a0,a0,-148 # 80008b18 <lockPrint>
    80003bb4:	ffffd097          	auipc	ra,0xffffd
    80003bb8:	590080e7          	jalr	1424(ra) # 80001144 <copy_and_swap>
    80003bbc:	fe0514e3          	bnez	a0,80003ba4 <_Z8printIntiii+0xe8>
    80003bc0:	03813083          	ld	ra,56(sp)
    80003bc4:	03013403          	ld	s0,48(sp)
    80003bc8:	02813483          	ld	s1,40(sp)
    80003bcc:	02013903          	ld	s2,32(sp)
    80003bd0:	01813983          	ld	s3,24(sp)
    80003bd4:	04010113          	addi	sp,sp,64
    80003bd8:	00008067          	ret

0000000080003bdc <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80003bdc:	ff010113          	addi	sp,sp,-16
    80003be0:	00113423          	sd	ra,8(sp)
    80003be4:	00813023          	sd	s0,0(sp)
    80003be8:	01010413          	addi	s0,sp,16
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80003bec:	00000097          	auipc	ra,0x0
    80003bf0:	c24080e7          	jalr	-988(ra) # 80003810 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80003bf4:	00003517          	auipc	a0,0x3
    80003bf8:	6bc50513          	addi	a0,a0,1724 # 800072b0 <CONSOLE_STATUS+0x2a0>
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	d10080e7          	jalr	-752(ra) # 8000390c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80003c04:	00813083          	ld	ra,8(sp)
    80003c08:	00013403          	ld	s0,0(sp)
    80003c0c:	01010113          	addi	sp,sp,16
    80003c10:	00008067          	ret

0000000080003c14 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003c14:	fe010113          	addi	sp,sp,-32
    80003c18:	00113c23          	sd	ra,24(sp)
    80003c1c:	00813823          	sd	s0,16(sp)
    80003c20:	00913423          	sd	s1,8(sp)
    80003c24:	01213023          	sd	s2,0(sp)
    80003c28:	02010413          	addi	s0,sp,32
    80003c2c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003c30:	00100793          	li	a5,1
    80003c34:	02a7f863          	bgeu	a5,a0,80003c64 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003c38:	00a00793          	li	a5,10
    80003c3c:	02f577b3          	remu	a5,a0,a5
    80003c40:	02078e63          	beqz	a5,80003c7c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003c44:	fff48513          	addi	a0,s1,-1
    80003c48:	00000097          	auipc	ra,0x0
    80003c4c:	fcc080e7          	jalr	-52(ra) # 80003c14 <_ZL9fibonaccim>
    80003c50:	00050913          	mv	s2,a0
    80003c54:	ffe48513          	addi	a0,s1,-2
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	fbc080e7          	jalr	-68(ra) # 80003c14 <_ZL9fibonaccim>
    80003c60:	00a90533          	add	a0,s2,a0
}
    80003c64:	01813083          	ld	ra,24(sp)
    80003c68:	01013403          	ld	s0,16(sp)
    80003c6c:	00813483          	ld	s1,8(sp)
    80003c70:	00013903          	ld	s2,0(sp)
    80003c74:	02010113          	addi	sp,sp,32
    80003c78:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003c7c:	ffffd097          	auipc	ra,0xffffd
    80003c80:	6b4080e7          	jalr	1716(ra) # 80001330 <_Z15thread_dispatchv>
    80003c84:	fc1ff06f          	j	80003c44 <_ZL9fibonaccim+0x30>

0000000080003c88 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003c88:	fe010113          	addi	sp,sp,-32
    80003c8c:	00113c23          	sd	ra,24(sp)
    80003c90:	00813823          	sd	s0,16(sp)
    80003c94:	00913423          	sd	s1,8(sp)
    80003c98:	01213023          	sd	s2,0(sp)
    80003c9c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003ca0:	00a00493          	li	s1,10
    80003ca4:	0400006f          	j	80003ce4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ca8:	00003517          	auipc	a0,0x3
    80003cac:	56050513          	addi	a0,a0,1376 # 80007208 <CONSOLE_STATUS+0x1f8>
    80003cb0:	00000097          	auipc	ra,0x0
    80003cb4:	c5c080e7          	jalr	-932(ra) # 8000390c <_Z11printStringPKc>
    80003cb8:	00000613          	li	a2,0
    80003cbc:	00a00593          	li	a1,10
    80003cc0:	00048513          	mv	a0,s1
    80003cc4:	00000097          	auipc	ra,0x0
    80003cc8:	df8080e7          	jalr	-520(ra) # 80003abc <_Z8printIntiii>
    80003ccc:	00003517          	auipc	a0,0x3
    80003cd0:	49c50513          	addi	a0,a0,1180 # 80007168 <CONSOLE_STATUS+0x158>
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	c38080e7          	jalr	-968(ra) # 8000390c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003cdc:	0014849b          	addiw	s1,s1,1
    80003ce0:	0ff4f493          	andi	s1,s1,255
    80003ce4:	00c00793          	li	a5,12
    80003ce8:	fc97f0e3          	bgeu	a5,s1,80003ca8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003cec:	00003517          	auipc	a0,0x3
    80003cf0:	52450513          	addi	a0,a0,1316 # 80007210 <CONSOLE_STATUS+0x200>
    80003cf4:	00000097          	auipc	ra,0x0
    80003cf8:	c18080e7          	jalr	-1000(ra) # 8000390c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003cfc:	00500313          	li	t1,5
    thread_dispatch();
    80003d00:	ffffd097          	auipc	ra,0xffffd
    80003d04:	630080e7          	jalr	1584(ra) # 80001330 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003d08:	01000513          	li	a0,16
    80003d0c:	00000097          	auipc	ra,0x0
    80003d10:	f08080e7          	jalr	-248(ra) # 80003c14 <_ZL9fibonaccim>
    80003d14:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003d18:	00003517          	auipc	a0,0x3
    80003d1c:	50850513          	addi	a0,a0,1288 # 80007220 <CONSOLE_STATUS+0x210>
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	bec080e7          	jalr	-1044(ra) # 8000390c <_Z11printStringPKc>
    80003d28:	00000613          	li	a2,0
    80003d2c:	00a00593          	li	a1,10
    80003d30:	0009051b          	sext.w	a0,s2
    80003d34:	00000097          	auipc	ra,0x0
    80003d38:	d88080e7          	jalr	-632(ra) # 80003abc <_Z8printIntiii>
    80003d3c:	00003517          	auipc	a0,0x3
    80003d40:	42c50513          	addi	a0,a0,1068 # 80007168 <CONSOLE_STATUS+0x158>
    80003d44:	00000097          	auipc	ra,0x0
    80003d48:	bc8080e7          	jalr	-1080(ra) # 8000390c <_Z11printStringPKc>
    80003d4c:	0400006f          	j	80003d8c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d50:	00003517          	auipc	a0,0x3
    80003d54:	4b850513          	addi	a0,a0,1208 # 80007208 <CONSOLE_STATUS+0x1f8>
    80003d58:	00000097          	auipc	ra,0x0
    80003d5c:	bb4080e7          	jalr	-1100(ra) # 8000390c <_Z11printStringPKc>
    80003d60:	00000613          	li	a2,0
    80003d64:	00a00593          	li	a1,10
    80003d68:	00048513          	mv	a0,s1
    80003d6c:	00000097          	auipc	ra,0x0
    80003d70:	d50080e7          	jalr	-688(ra) # 80003abc <_Z8printIntiii>
    80003d74:	00003517          	auipc	a0,0x3
    80003d78:	3f450513          	addi	a0,a0,1012 # 80007168 <CONSOLE_STATUS+0x158>
    80003d7c:	00000097          	auipc	ra,0x0
    80003d80:	b90080e7          	jalr	-1136(ra) # 8000390c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003d84:	0014849b          	addiw	s1,s1,1
    80003d88:	0ff4f493          	andi	s1,s1,255
    80003d8c:	00f00793          	li	a5,15
    80003d90:	fc97f0e3          	bgeu	a5,s1,80003d50 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003d94:	00003517          	auipc	a0,0x3
    80003d98:	49c50513          	addi	a0,a0,1180 # 80007230 <CONSOLE_STATUS+0x220>
    80003d9c:	00000097          	auipc	ra,0x0
    80003da0:	b70080e7          	jalr	-1168(ra) # 8000390c <_Z11printStringPKc>
    finishedD = true;
    80003da4:	00100793          	li	a5,1
    80003da8:	00005717          	auipc	a4,0x5
    80003dac:	d6f70c23          	sb	a5,-648(a4) # 80008b20 <_ZL9finishedD>
    thread_dispatch();
    80003db0:	ffffd097          	auipc	ra,0xffffd
    80003db4:	580080e7          	jalr	1408(ra) # 80001330 <_Z15thread_dispatchv>
}
    80003db8:	01813083          	ld	ra,24(sp)
    80003dbc:	01013403          	ld	s0,16(sp)
    80003dc0:	00813483          	ld	s1,8(sp)
    80003dc4:	00013903          	ld	s2,0(sp)
    80003dc8:	02010113          	addi	sp,sp,32
    80003dcc:	00008067          	ret

0000000080003dd0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003dd0:	fe010113          	addi	sp,sp,-32
    80003dd4:	00113c23          	sd	ra,24(sp)
    80003dd8:	00813823          	sd	s0,16(sp)
    80003ddc:	00913423          	sd	s1,8(sp)
    80003de0:	01213023          	sd	s2,0(sp)
    80003de4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003de8:	00000493          	li	s1,0
    80003dec:	0400006f          	j	80003e2c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003df0:	00003517          	auipc	a0,0x3
    80003df4:	3e850513          	addi	a0,a0,1000 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80003df8:	00000097          	auipc	ra,0x0
    80003dfc:	b14080e7          	jalr	-1260(ra) # 8000390c <_Z11printStringPKc>
    80003e00:	00000613          	li	a2,0
    80003e04:	00a00593          	li	a1,10
    80003e08:	00048513          	mv	a0,s1
    80003e0c:	00000097          	auipc	ra,0x0
    80003e10:	cb0080e7          	jalr	-848(ra) # 80003abc <_Z8printIntiii>
    80003e14:	00003517          	auipc	a0,0x3
    80003e18:	35450513          	addi	a0,a0,852 # 80007168 <CONSOLE_STATUS+0x158>
    80003e1c:	00000097          	auipc	ra,0x0
    80003e20:	af0080e7          	jalr	-1296(ra) # 8000390c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003e24:	0014849b          	addiw	s1,s1,1
    80003e28:	0ff4f493          	andi	s1,s1,255
    80003e2c:	00200793          	li	a5,2
    80003e30:	fc97f0e3          	bgeu	a5,s1,80003df0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003e34:	00003517          	auipc	a0,0x3
    80003e38:	3ac50513          	addi	a0,a0,940 # 800071e0 <CONSOLE_STATUS+0x1d0>
    80003e3c:	00000097          	auipc	ra,0x0
    80003e40:	ad0080e7          	jalr	-1328(ra) # 8000390c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003e44:	00700313          	li	t1,7
    thread_dispatch();
    80003e48:	ffffd097          	auipc	ra,0xffffd
    80003e4c:	4e8080e7          	jalr	1256(ra) # 80001330 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003e50:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003e54:	00003517          	auipc	a0,0x3
    80003e58:	39c50513          	addi	a0,a0,924 # 800071f0 <CONSOLE_STATUS+0x1e0>
    80003e5c:	00000097          	auipc	ra,0x0
    80003e60:	ab0080e7          	jalr	-1360(ra) # 8000390c <_Z11printStringPKc>
    80003e64:	00000613          	li	a2,0
    80003e68:	00a00593          	li	a1,10
    80003e6c:	0009051b          	sext.w	a0,s2
    80003e70:	00000097          	auipc	ra,0x0
    80003e74:	c4c080e7          	jalr	-948(ra) # 80003abc <_Z8printIntiii>
    80003e78:	00003517          	auipc	a0,0x3
    80003e7c:	2f050513          	addi	a0,a0,752 # 80007168 <CONSOLE_STATUS+0x158>
    80003e80:	00000097          	auipc	ra,0x0
    80003e84:	a8c080e7          	jalr	-1396(ra) # 8000390c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003e88:	00c00513          	li	a0,12
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	d88080e7          	jalr	-632(ra) # 80003c14 <_ZL9fibonaccim>
    80003e94:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003e98:	00003517          	auipc	a0,0x3
    80003e9c:	36050513          	addi	a0,a0,864 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80003ea0:	00000097          	auipc	ra,0x0
    80003ea4:	a6c080e7          	jalr	-1428(ra) # 8000390c <_Z11printStringPKc>
    80003ea8:	00000613          	li	a2,0
    80003eac:	00a00593          	li	a1,10
    80003eb0:	0009051b          	sext.w	a0,s2
    80003eb4:	00000097          	auipc	ra,0x0
    80003eb8:	c08080e7          	jalr	-1016(ra) # 80003abc <_Z8printIntiii>
    80003ebc:	00003517          	auipc	a0,0x3
    80003ec0:	2ac50513          	addi	a0,a0,684 # 80007168 <CONSOLE_STATUS+0x158>
    80003ec4:	00000097          	auipc	ra,0x0
    80003ec8:	a48080e7          	jalr	-1464(ra) # 8000390c <_Z11printStringPKc>
    80003ecc:	0400006f          	j	80003f0c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003ed0:	00003517          	auipc	a0,0x3
    80003ed4:	30850513          	addi	a0,a0,776 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80003ed8:	00000097          	auipc	ra,0x0
    80003edc:	a34080e7          	jalr	-1484(ra) # 8000390c <_Z11printStringPKc>
    80003ee0:	00000613          	li	a2,0
    80003ee4:	00a00593          	li	a1,10
    80003ee8:	00048513          	mv	a0,s1
    80003eec:	00000097          	auipc	ra,0x0
    80003ef0:	bd0080e7          	jalr	-1072(ra) # 80003abc <_Z8printIntiii>
    80003ef4:	00003517          	auipc	a0,0x3
    80003ef8:	27450513          	addi	a0,a0,628 # 80007168 <CONSOLE_STATUS+0x158>
    80003efc:	00000097          	auipc	ra,0x0
    80003f00:	a10080e7          	jalr	-1520(ra) # 8000390c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003f04:	0014849b          	addiw	s1,s1,1
    80003f08:	0ff4f493          	andi	s1,s1,255
    80003f0c:	00500793          	li	a5,5
    80003f10:	fc97f0e3          	bgeu	a5,s1,80003ed0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003f14:	00003517          	auipc	a0,0x3
    80003f18:	29c50513          	addi	a0,a0,668 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80003f1c:	00000097          	auipc	ra,0x0
    80003f20:	9f0080e7          	jalr	-1552(ra) # 8000390c <_Z11printStringPKc>
    finishedC = true;
    80003f24:	00100793          	li	a5,1
    80003f28:	00005717          	auipc	a4,0x5
    80003f2c:	bef70ca3          	sb	a5,-1031(a4) # 80008b21 <_ZL9finishedC>
    thread_dispatch();
    80003f30:	ffffd097          	auipc	ra,0xffffd
    80003f34:	400080e7          	jalr	1024(ra) # 80001330 <_Z15thread_dispatchv>
}
    80003f38:	01813083          	ld	ra,24(sp)
    80003f3c:	01013403          	ld	s0,16(sp)
    80003f40:	00813483          	ld	s1,8(sp)
    80003f44:	00013903          	ld	s2,0(sp)
    80003f48:	02010113          	addi	sp,sp,32
    80003f4c:	00008067          	ret

0000000080003f50 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003f50:	fe010113          	addi	sp,sp,-32
    80003f54:	00113c23          	sd	ra,24(sp)
    80003f58:	00813823          	sd	s0,16(sp)
    80003f5c:	00913423          	sd	s1,8(sp)
    80003f60:	01213023          	sd	s2,0(sp)
    80003f64:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003f68:	00000913          	li	s2,0
    80003f6c:	0400006f          	j	80003fac <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003f70:	ffffd097          	auipc	ra,0xffffd
    80003f74:	3c0080e7          	jalr	960(ra) # 80001330 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f78:	00148493          	addi	s1,s1,1
    80003f7c:	000027b7          	lui	a5,0x2
    80003f80:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f84:	0097ee63          	bltu	a5,s1,80003fa0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f88:	00000713          	li	a4,0
    80003f8c:	000077b7          	lui	a5,0x7
    80003f90:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f94:	fce7eee3          	bltu	a5,a4,80003f70 <_ZL11workerBodyBPv+0x20>
    80003f98:	00170713          	addi	a4,a4,1
    80003f9c:	ff1ff06f          	j	80003f8c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003fa0:	00a00793          	li	a5,10
    80003fa4:	04f90663          	beq	s2,a5,80003ff0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003fa8:	00190913          	addi	s2,s2,1
    80003fac:	00f00793          	li	a5,15
    80003fb0:	0527e463          	bltu	a5,s2,80003ff8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80003fb4:	00003517          	auipc	a0,0x3
    80003fb8:	20c50513          	addi	a0,a0,524 # 800071c0 <CONSOLE_STATUS+0x1b0>
    80003fbc:	00000097          	auipc	ra,0x0
    80003fc0:	950080e7          	jalr	-1712(ra) # 8000390c <_Z11printStringPKc>
    80003fc4:	00000613          	li	a2,0
    80003fc8:	00a00593          	li	a1,10
    80003fcc:	0009051b          	sext.w	a0,s2
    80003fd0:	00000097          	auipc	ra,0x0
    80003fd4:	aec080e7          	jalr	-1300(ra) # 80003abc <_Z8printIntiii>
    80003fd8:	00003517          	auipc	a0,0x3
    80003fdc:	19050513          	addi	a0,a0,400 # 80007168 <CONSOLE_STATUS+0x158>
    80003fe0:	00000097          	auipc	ra,0x0
    80003fe4:	92c080e7          	jalr	-1748(ra) # 8000390c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003fe8:	00000493          	li	s1,0
    80003fec:	f91ff06f          	j	80003f7c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003ff0:	14102ff3          	csrr	t6,sepc
    80003ff4:	fb5ff06f          	j	80003fa8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80003ff8:	00003517          	auipc	a0,0x3
    80003ffc:	1d050513          	addi	a0,a0,464 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80004000:	00000097          	auipc	ra,0x0
    80004004:	90c080e7          	jalr	-1780(ra) # 8000390c <_Z11printStringPKc>
    finishedB = true;
    80004008:	00100793          	li	a5,1
    8000400c:	00005717          	auipc	a4,0x5
    80004010:	b0f70b23          	sb	a5,-1258(a4) # 80008b22 <_ZL9finishedB>
    thread_dispatch();
    80004014:	ffffd097          	auipc	ra,0xffffd
    80004018:	31c080e7          	jalr	796(ra) # 80001330 <_Z15thread_dispatchv>
}
    8000401c:	01813083          	ld	ra,24(sp)
    80004020:	01013403          	ld	s0,16(sp)
    80004024:	00813483          	ld	s1,8(sp)
    80004028:	00013903          	ld	s2,0(sp)
    8000402c:	02010113          	addi	sp,sp,32
    80004030:	00008067          	ret

0000000080004034 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004034:	fe010113          	addi	sp,sp,-32
    80004038:	00113c23          	sd	ra,24(sp)
    8000403c:	00813823          	sd	s0,16(sp)
    80004040:	00913423          	sd	s1,8(sp)
    80004044:	01213023          	sd	s2,0(sp)
    80004048:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000404c:	00000913          	li	s2,0
    80004050:	0380006f          	j	80004088 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004054:	ffffd097          	auipc	ra,0xffffd
    80004058:	2dc080e7          	jalr	732(ra) # 80001330 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000405c:	00148493          	addi	s1,s1,1
    80004060:	000027b7          	lui	a5,0x2
    80004064:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004068:	0097ee63          	bltu	a5,s1,80004084 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000406c:	00000713          	li	a4,0
    80004070:	000077b7          	lui	a5,0x7
    80004074:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004078:	fce7eee3          	bltu	a5,a4,80004054 <_ZL11workerBodyAPv+0x20>
    8000407c:	00170713          	addi	a4,a4,1
    80004080:	ff1ff06f          	j	80004070 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004084:	00190913          	addi	s2,s2,1
    80004088:	00900793          	li	a5,9
    8000408c:	0527e063          	bltu	a5,s2,800040cc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004090:	00003517          	auipc	a0,0x3
    80004094:	11850513          	addi	a0,a0,280 # 800071a8 <CONSOLE_STATUS+0x198>
    80004098:	00000097          	auipc	ra,0x0
    8000409c:	874080e7          	jalr	-1932(ra) # 8000390c <_Z11printStringPKc>
    800040a0:	00000613          	li	a2,0
    800040a4:	00a00593          	li	a1,10
    800040a8:	0009051b          	sext.w	a0,s2
    800040ac:	00000097          	auipc	ra,0x0
    800040b0:	a10080e7          	jalr	-1520(ra) # 80003abc <_Z8printIntiii>
    800040b4:	00003517          	auipc	a0,0x3
    800040b8:	0b450513          	addi	a0,a0,180 # 80007168 <CONSOLE_STATUS+0x158>
    800040bc:	00000097          	auipc	ra,0x0
    800040c0:	850080e7          	jalr	-1968(ra) # 8000390c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800040c4:	00000493          	li	s1,0
    800040c8:	f99ff06f          	j	80004060 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800040cc:	00003517          	auipc	a0,0x3
    800040d0:	0e450513          	addi	a0,a0,228 # 800071b0 <CONSOLE_STATUS+0x1a0>
    800040d4:	00000097          	auipc	ra,0x0
    800040d8:	838080e7          	jalr	-1992(ra) # 8000390c <_Z11printStringPKc>
    finishedA = true;
    800040dc:	00100793          	li	a5,1
    800040e0:	00005717          	auipc	a4,0x5
    800040e4:	a4f701a3          	sb	a5,-1469(a4) # 80008b23 <_ZL9finishedA>
}
    800040e8:	01813083          	ld	ra,24(sp)
    800040ec:	01013403          	ld	s0,16(sp)
    800040f0:	00813483          	ld	s1,8(sp)
    800040f4:	00013903          	ld	s2,0(sp)
    800040f8:	02010113          	addi	sp,sp,32
    800040fc:	00008067          	ret

0000000080004100 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80004100:	fd010113          	addi	sp,sp,-48
    80004104:	02113423          	sd	ra,40(sp)
    80004108:	02813023          	sd	s0,32(sp)
    8000410c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004110:	00000613          	li	a2,0
    80004114:	00000597          	auipc	a1,0x0
    80004118:	f2058593          	addi	a1,a1,-224 # 80004034 <_ZL11workerBodyAPv>
    8000411c:	fd040513          	addi	a0,s0,-48
    80004120:	ffffd097          	auipc	ra,0xffffd
    80004124:	13c080e7          	jalr	316(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadA created\n");
    80004128:	00003517          	auipc	a0,0x3
    8000412c:	11850513          	addi	a0,a0,280 # 80007240 <CONSOLE_STATUS+0x230>
    80004130:	fffff097          	auipc	ra,0xfffff
    80004134:	7dc080e7          	jalr	2012(ra) # 8000390c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004138:	00000613          	li	a2,0
    8000413c:	00000597          	auipc	a1,0x0
    80004140:	e1458593          	addi	a1,a1,-492 # 80003f50 <_ZL11workerBodyBPv>
    80004144:	fd840513          	addi	a0,s0,-40
    80004148:	ffffd097          	auipc	ra,0xffffd
    8000414c:	114080e7          	jalr	276(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadB created\n");
    80004150:	00003517          	auipc	a0,0x3
    80004154:	10850513          	addi	a0,a0,264 # 80007258 <CONSOLE_STATUS+0x248>
    80004158:	fffff097          	auipc	ra,0xfffff
    8000415c:	7b4080e7          	jalr	1972(ra) # 8000390c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004160:	00000613          	li	a2,0
    80004164:	00000597          	auipc	a1,0x0
    80004168:	c6c58593          	addi	a1,a1,-916 # 80003dd0 <_ZL11workerBodyCPv>
    8000416c:	fe040513          	addi	a0,s0,-32
    80004170:	ffffd097          	auipc	ra,0xffffd
    80004174:	0ec080e7          	jalr	236(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadC created\n");
    80004178:	00003517          	auipc	a0,0x3
    8000417c:	0f850513          	addi	a0,a0,248 # 80007270 <CONSOLE_STATUS+0x260>
    80004180:	fffff097          	auipc	ra,0xfffff
    80004184:	78c080e7          	jalr	1932(ra) # 8000390c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004188:	00000613          	li	a2,0
    8000418c:	00000597          	auipc	a1,0x0
    80004190:	afc58593          	addi	a1,a1,-1284 # 80003c88 <_ZL11workerBodyDPv>
    80004194:	fe840513          	addi	a0,s0,-24
    80004198:	ffffd097          	auipc	ra,0xffffd
    8000419c:	0c4080e7          	jalr	196(ra) # 8000125c <_Z13thread_createPP7KThreadPFvPvES2_>
    printString("ThreadD created\n");
    800041a0:	00003517          	auipc	a0,0x3
    800041a4:	0e850513          	addi	a0,a0,232 # 80007288 <CONSOLE_STATUS+0x278>
    800041a8:	fffff097          	auipc	ra,0xfffff
    800041ac:	764080e7          	jalr	1892(ra) # 8000390c <_Z11printStringPKc>
    800041b0:	00c0006f          	j	800041bc <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800041b4:	ffffd097          	auipc	ra,0xffffd
    800041b8:	17c080e7          	jalr	380(ra) # 80001330 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800041bc:	00005797          	auipc	a5,0x5
    800041c0:	9677c783          	lbu	a5,-1689(a5) # 80008b23 <_ZL9finishedA>
    800041c4:	fe0788e3          	beqz	a5,800041b4 <_Z16System_Mode_testv+0xb4>
    800041c8:	00005797          	auipc	a5,0x5
    800041cc:	95a7c783          	lbu	a5,-1702(a5) # 80008b22 <_ZL9finishedB>
    800041d0:	fe0782e3          	beqz	a5,800041b4 <_Z16System_Mode_testv+0xb4>
    800041d4:	00005797          	auipc	a5,0x5
    800041d8:	94d7c783          	lbu	a5,-1715(a5) # 80008b21 <_ZL9finishedC>
    800041dc:	fc078ce3          	beqz	a5,800041b4 <_Z16System_Mode_testv+0xb4>
    800041e0:	00005797          	auipc	a5,0x5
    800041e4:	9407c783          	lbu	a5,-1728(a5) # 80008b20 <_ZL9finishedD>
    800041e8:	fc0786e3          	beqz	a5,800041b4 <_Z16System_Mode_testv+0xb4>
    }

}
    800041ec:	02813083          	ld	ra,40(sp)
    800041f0:	02013403          	ld	s0,32(sp)
    800041f4:	03010113          	addi	sp,sp,48
    800041f8:	00008067          	ret

00000000800041fc <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800041fc:	fe010113          	addi	sp,sp,-32
    80004200:	00113c23          	sd	ra,24(sp)
    80004204:	00813823          	sd	s0,16(sp)
    80004208:	00913423          	sd	s1,8(sp)
    8000420c:	01213023          	sd	s2,0(sp)
    80004210:	02010413          	addi	s0,sp,32
    80004214:	00050493          	mv	s1,a0
    80004218:	00058913          	mv	s2,a1
    8000421c:	0015879b          	addiw	a5,a1,1
    80004220:	0007851b          	sext.w	a0,a5
    80004224:	00f4a023          	sw	a5,0(s1)
    80004228:	0004a823          	sw	zero,16(s1)
    8000422c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004230:	00251513          	slli	a0,a0,0x2
    80004234:	ffffd097          	auipc	ra,0xffffd
    80004238:	f30080e7          	jalr	-208(ra) # 80001164 <_Z9mem_allocm>
    8000423c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004240:	00000593          	li	a1,0
    80004244:	02048513          	addi	a0,s1,32
    80004248:	ffffd097          	auipc	ra,0xffffd
    8000424c:	108080e7          	jalr	264(ra) # 80001350 <_Z8sem_openPP10KSemaphorej>
    sem_open(&spaceAvailable, _cap);
    80004250:	00090593          	mv	a1,s2
    80004254:	01848513          	addi	a0,s1,24
    80004258:	ffffd097          	auipc	ra,0xffffd
    8000425c:	0f8080e7          	jalr	248(ra) # 80001350 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexHead, 1);
    80004260:	00100593          	li	a1,1
    80004264:	02848513          	addi	a0,s1,40
    80004268:	ffffd097          	auipc	ra,0xffffd
    8000426c:	0e8080e7          	jalr	232(ra) # 80001350 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexTail, 1);
    80004270:	00100593          	li	a1,1
    80004274:	03048513          	addi	a0,s1,48
    80004278:	ffffd097          	auipc	ra,0xffffd
    8000427c:	0d8080e7          	jalr	216(ra) # 80001350 <_Z8sem_openPP10KSemaphorej>
}
    80004280:	01813083          	ld	ra,24(sp)
    80004284:	01013403          	ld	s0,16(sp)
    80004288:	00813483          	ld	s1,8(sp)
    8000428c:	00013903          	ld	s2,0(sp)
    80004290:	02010113          	addi	sp,sp,32
    80004294:	00008067          	ret

0000000080004298 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004298:	fe010113          	addi	sp,sp,-32
    8000429c:	00113c23          	sd	ra,24(sp)
    800042a0:	00813823          	sd	s0,16(sp)
    800042a4:	00913423          	sd	s1,8(sp)
    800042a8:	01213023          	sd	s2,0(sp)
    800042ac:	02010413          	addi	s0,sp,32
    800042b0:	00050493          	mv	s1,a0
    800042b4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800042b8:	01853503          	ld	a0,24(a0)
    800042bc:	ffffd097          	auipc	ra,0xffffd
    800042c0:	0f8080e7          	jalr	248(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexTail);
    800042c4:	0304b503          	ld	a0,48(s1)
    800042c8:	ffffd097          	auipc	ra,0xffffd
    800042cc:	0ec080e7          	jalr	236(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>
    buffer[tail] = val;
    800042d0:	0084b783          	ld	a5,8(s1)
    800042d4:	0144a703          	lw	a4,20(s1)
    800042d8:	00271713          	slli	a4,a4,0x2
    800042dc:	00e787b3          	add	a5,a5,a4
    800042e0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800042e4:	0144a783          	lw	a5,20(s1)
    800042e8:	0017879b          	addiw	a5,a5,1
    800042ec:	0004a703          	lw	a4,0(s1)
    800042f0:	02e7e7bb          	remw	a5,a5,a4
    800042f4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800042f8:	0304b503          	ld	a0,48(s1)
    800042fc:	ffffd097          	auipc	ra,0xffffd
    80004300:	0e4080e7          	jalr	228(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>

    sem_signal(itemAvailable);
    80004304:	0204b503          	ld	a0,32(s1)
    80004308:	ffffd097          	auipc	ra,0xffffd
    8000430c:	0d8080e7          	jalr	216(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>

}
    80004310:	01813083          	ld	ra,24(sp)
    80004314:	01013403          	ld	s0,16(sp)
    80004318:	00813483          	ld	s1,8(sp)
    8000431c:	00013903          	ld	s2,0(sp)
    80004320:	02010113          	addi	sp,sp,32
    80004324:	00008067          	ret

0000000080004328 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004328:	fe010113          	addi	sp,sp,-32
    8000432c:	00113c23          	sd	ra,24(sp)
    80004330:	00813823          	sd	s0,16(sp)
    80004334:	00913423          	sd	s1,8(sp)
    80004338:	01213023          	sd	s2,0(sp)
    8000433c:	02010413          	addi	s0,sp,32
    80004340:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004344:	02053503          	ld	a0,32(a0)
    80004348:	ffffd097          	auipc	ra,0xffffd
    8000434c:	06c080e7          	jalr	108(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexHead);
    80004350:	0284b503          	ld	a0,40(s1)
    80004354:	ffffd097          	auipc	ra,0xffffd
    80004358:	060080e7          	jalr	96(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>

    int ret = buffer[head];
    8000435c:	0084b703          	ld	a4,8(s1)
    80004360:	0104a783          	lw	a5,16(s1)
    80004364:	00279693          	slli	a3,a5,0x2
    80004368:	00d70733          	add	a4,a4,a3
    8000436c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004370:	0017879b          	addiw	a5,a5,1
    80004374:	0004a703          	lw	a4,0(s1)
    80004378:	02e7e7bb          	remw	a5,a5,a4
    8000437c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004380:	0284b503          	ld	a0,40(s1)
    80004384:	ffffd097          	auipc	ra,0xffffd
    80004388:	05c080e7          	jalr	92(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>

    sem_signal(spaceAvailable);
    8000438c:	0184b503          	ld	a0,24(s1)
    80004390:	ffffd097          	auipc	ra,0xffffd
    80004394:	050080e7          	jalr	80(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    80004398:	00090513          	mv	a0,s2
    8000439c:	01813083          	ld	ra,24(sp)
    800043a0:	01013403          	ld	s0,16(sp)
    800043a4:	00813483          	ld	s1,8(sp)
    800043a8:	00013903          	ld	s2,0(sp)
    800043ac:	02010113          	addi	sp,sp,32
    800043b0:	00008067          	ret

00000000800043b4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800043b4:	fe010113          	addi	sp,sp,-32
    800043b8:	00113c23          	sd	ra,24(sp)
    800043bc:	00813823          	sd	s0,16(sp)
    800043c0:	00913423          	sd	s1,8(sp)
    800043c4:	01213023          	sd	s2,0(sp)
    800043c8:	02010413          	addi	s0,sp,32
    800043cc:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800043d0:	02853503          	ld	a0,40(a0)
    800043d4:	ffffd097          	auipc	ra,0xffffd
    800043d8:	fe0080e7          	jalr	-32(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>
    sem_wait(mutexTail);
    800043dc:	0304b503          	ld	a0,48(s1)
    800043e0:	ffffd097          	auipc	ra,0xffffd
    800043e4:	fd4080e7          	jalr	-44(ra) # 800013b4 <_Z8sem_waitP10KSemaphore>

    if (tail >= head) {
    800043e8:	0144a783          	lw	a5,20(s1)
    800043ec:	0104a903          	lw	s2,16(s1)
    800043f0:	0327ce63          	blt	a5,s2,8000442c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800043f4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800043f8:	0304b503          	ld	a0,48(s1)
    800043fc:	ffffd097          	auipc	ra,0xffffd
    80004400:	fe4080e7          	jalr	-28(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>
    sem_signal(mutexHead);
    80004404:	0284b503          	ld	a0,40(s1)
    80004408:	ffffd097          	auipc	ra,0xffffd
    8000440c:	fd8080e7          	jalr	-40(ra) # 800013e0 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    80004410:	00090513          	mv	a0,s2
    80004414:	01813083          	ld	ra,24(sp)
    80004418:	01013403          	ld	s0,16(sp)
    8000441c:	00813483          	ld	s1,8(sp)
    80004420:	00013903          	ld	s2,0(sp)
    80004424:	02010113          	addi	sp,sp,32
    80004428:	00008067          	ret
        ret = cap - head + tail;
    8000442c:	0004a703          	lw	a4,0(s1)
    80004430:	4127093b          	subw	s2,a4,s2
    80004434:	00f9093b          	addw	s2,s2,a5
    80004438:	fc1ff06f          	j	800043f8 <_ZN6Buffer6getCntEv+0x44>

000000008000443c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000443c:	fe010113          	addi	sp,sp,-32
    80004440:	00113c23          	sd	ra,24(sp)
    80004444:	00813823          	sd	s0,16(sp)
    80004448:	00913423          	sd	s1,8(sp)
    8000444c:	02010413          	addi	s0,sp,32
    80004450:	00050493          	mv	s1,a0
    putc('\n');
    80004454:	00a00513          	li	a0,10
    80004458:	ffffd097          	auipc	ra,0xffffd
    8000445c:	fdc080e7          	jalr	-36(ra) # 80001434 <_Z4putcc>
    printString("Buffer deleted!\n");
    80004460:	00003517          	auipc	a0,0x3
    80004464:	e9050513          	addi	a0,a0,-368 # 800072f0 <CONSOLE_STATUS+0x2e0>
    80004468:	fffff097          	auipc	ra,0xfffff
    8000446c:	4a4080e7          	jalr	1188(ra) # 8000390c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004470:	00048513          	mv	a0,s1
    80004474:	00000097          	auipc	ra,0x0
    80004478:	f40080e7          	jalr	-192(ra) # 800043b4 <_ZN6Buffer6getCntEv>
    8000447c:	02a05c63          	blez	a0,800044b4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004480:	0084b783          	ld	a5,8(s1)
    80004484:	0104a703          	lw	a4,16(s1)
    80004488:	00271713          	slli	a4,a4,0x2
    8000448c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004490:	0007c503          	lbu	a0,0(a5)
    80004494:	ffffd097          	auipc	ra,0xffffd
    80004498:	fa0080e7          	jalr	-96(ra) # 80001434 <_Z4putcc>
        head = (head + 1) % cap;
    8000449c:	0104a783          	lw	a5,16(s1)
    800044a0:	0017879b          	addiw	a5,a5,1
    800044a4:	0004a703          	lw	a4,0(s1)
    800044a8:	02e7e7bb          	remw	a5,a5,a4
    800044ac:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800044b0:	fc1ff06f          	j	80004470 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800044b4:	02100513          	li	a0,33
    800044b8:	ffffd097          	auipc	ra,0xffffd
    800044bc:	f7c080e7          	jalr	-132(ra) # 80001434 <_Z4putcc>
    putc('\n');
    800044c0:	00a00513          	li	a0,10
    800044c4:	ffffd097          	auipc	ra,0xffffd
    800044c8:	f70080e7          	jalr	-144(ra) # 80001434 <_Z4putcc>
    mem_free(buffer);
    800044cc:	0084b503          	ld	a0,8(s1)
    800044d0:	ffffd097          	auipc	ra,0xffffd
    800044d4:	cd8080e7          	jalr	-808(ra) # 800011a8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800044d8:	0204b503          	ld	a0,32(s1)
    800044dc:	ffffd097          	auipc	ra,0xffffd
    800044e0:	eac080e7          	jalr	-340(ra) # 80001388 <_Z9sem_closeP10KSemaphore>
    sem_close(spaceAvailable);
    800044e4:	0184b503          	ld	a0,24(s1)
    800044e8:	ffffd097          	auipc	ra,0xffffd
    800044ec:	ea0080e7          	jalr	-352(ra) # 80001388 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexTail);
    800044f0:	0304b503          	ld	a0,48(s1)
    800044f4:	ffffd097          	auipc	ra,0xffffd
    800044f8:	e94080e7          	jalr	-364(ra) # 80001388 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexHead);
    800044fc:	0284b503          	ld	a0,40(s1)
    80004500:	ffffd097          	auipc	ra,0xffffd
    80004504:	e88080e7          	jalr	-376(ra) # 80001388 <_Z9sem_closeP10KSemaphore>
}
    80004508:	01813083          	ld	ra,24(sp)
    8000450c:	01013403          	ld	s0,16(sp)
    80004510:	00813483          	ld	s1,8(sp)
    80004514:	02010113          	addi	sp,sp,32
    80004518:	00008067          	ret

000000008000451c <start>:
    8000451c:	ff010113          	addi	sp,sp,-16
    80004520:	00813423          	sd	s0,8(sp)
    80004524:	01010413          	addi	s0,sp,16
    80004528:	300027f3          	csrr	a5,mstatus
    8000452c:	ffffe737          	lui	a4,0xffffe
    80004530:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff4a6f>
    80004534:	00e7f7b3          	and	a5,a5,a4
    80004538:	00001737          	lui	a4,0x1
    8000453c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004540:	00e7e7b3          	or	a5,a5,a4
    80004544:	30079073          	csrw	mstatus,a5
    80004548:	00000797          	auipc	a5,0x0
    8000454c:	16078793          	addi	a5,a5,352 # 800046a8 <system_main>
    80004550:	34179073          	csrw	mepc,a5
    80004554:	00000793          	li	a5,0
    80004558:	18079073          	csrw	satp,a5
    8000455c:	000107b7          	lui	a5,0x10
    80004560:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004564:	30279073          	csrw	medeleg,a5
    80004568:	30379073          	csrw	mideleg,a5
    8000456c:	104027f3          	csrr	a5,sie
    80004570:	2227e793          	ori	a5,a5,546
    80004574:	10479073          	csrw	sie,a5
    80004578:	fff00793          	li	a5,-1
    8000457c:	00a7d793          	srli	a5,a5,0xa
    80004580:	3b079073          	csrw	pmpaddr0,a5
    80004584:	00f00793          	li	a5,15
    80004588:	3a079073          	csrw	pmpcfg0,a5
    8000458c:	f14027f3          	csrr	a5,mhartid
    80004590:	0200c737          	lui	a4,0x200c
    80004594:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004598:	0007869b          	sext.w	a3,a5
    8000459c:	00269713          	slli	a4,a3,0x2
    800045a0:	000f4637          	lui	a2,0xf4
    800045a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800045a8:	00d70733          	add	a4,a4,a3
    800045ac:	0037979b          	slliw	a5,a5,0x3
    800045b0:	020046b7          	lui	a3,0x2004
    800045b4:	00d787b3          	add	a5,a5,a3
    800045b8:	00c585b3          	add	a1,a1,a2
    800045bc:	00371693          	slli	a3,a4,0x3
    800045c0:	00004717          	auipc	a4,0x4
    800045c4:	57070713          	addi	a4,a4,1392 # 80008b30 <timer_scratch>
    800045c8:	00b7b023          	sd	a1,0(a5)
    800045cc:	00d70733          	add	a4,a4,a3
    800045d0:	00f73c23          	sd	a5,24(a4)
    800045d4:	02c73023          	sd	a2,32(a4)
    800045d8:	34071073          	csrw	mscratch,a4
    800045dc:	00000797          	auipc	a5,0x0
    800045e0:	6e478793          	addi	a5,a5,1764 # 80004cc0 <timervec>
    800045e4:	30579073          	csrw	mtvec,a5
    800045e8:	300027f3          	csrr	a5,mstatus
    800045ec:	0087e793          	ori	a5,a5,8
    800045f0:	30079073          	csrw	mstatus,a5
    800045f4:	304027f3          	csrr	a5,mie
    800045f8:	0807e793          	ori	a5,a5,128
    800045fc:	30479073          	csrw	mie,a5
    80004600:	f14027f3          	csrr	a5,mhartid
    80004604:	0007879b          	sext.w	a5,a5
    80004608:	00078213          	mv	tp,a5
    8000460c:	30200073          	mret
    80004610:	00813403          	ld	s0,8(sp)
    80004614:	01010113          	addi	sp,sp,16
    80004618:	00008067          	ret

000000008000461c <timerinit>:
    8000461c:	ff010113          	addi	sp,sp,-16
    80004620:	00813423          	sd	s0,8(sp)
    80004624:	01010413          	addi	s0,sp,16
    80004628:	f14027f3          	csrr	a5,mhartid
    8000462c:	0200c737          	lui	a4,0x200c
    80004630:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004634:	0007869b          	sext.w	a3,a5
    80004638:	00269713          	slli	a4,a3,0x2
    8000463c:	000f4637          	lui	a2,0xf4
    80004640:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004644:	00d70733          	add	a4,a4,a3
    80004648:	0037979b          	slliw	a5,a5,0x3
    8000464c:	020046b7          	lui	a3,0x2004
    80004650:	00d787b3          	add	a5,a5,a3
    80004654:	00c585b3          	add	a1,a1,a2
    80004658:	00371693          	slli	a3,a4,0x3
    8000465c:	00004717          	auipc	a4,0x4
    80004660:	4d470713          	addi	a4,a4,1236 # 80008b30 <timer_scratch>
    80004664:	00b7b023          	sd	a1,0(a5)
    80004668:	00d70733          	add	a4,a4,a3
    8000466c:	00f73c23          	sd	a5,24(a4)
    80004670:	02c73023          	sd	a2,32(a4)
    80004674:	34071073          	csrw	mscratch,a4
    80004678:	00000797          	auipc	a5,0x0
    8000467c:	64878793          	addi	a5,a5,1608 # 80004cc0 <timervec>
    80004680:	30579073          	csrw	mtvec,a5
    80004684:	300027f3          	csrr	a5,mstatus
    80004688:	0087e793          	ori	a5,a5,8
    8000468c:	30079073          	csrw	mstatus,a5
    80004690:	304027f3          	csrr	a5,mie
    80004694:	0807e793          	ori	a5,a5,128
    80004698:	30479073          	csrw	mie,a5
    8000469c:	00813403          	ld	s0,8(sp)
    800046a0:	01010113          	addi	sp,sp,16
    800046a4:	00008067          	ret

00000000800046a8 <system_main>:
    800046a8:	fe010113          	addi	sp,sp,-32
    800046ac:	00813823          	sd	s0,16(sp)
    800046b0:	00913423          	sd	s1,8(sp)
    800046b4:	00113c23          	sd	ra,24(sp)
    800046b8:	02010413          	addi	s0,sp,32
    800046bc:	00000097          	auipc	ra,0x0
    800046c0:	0c4080e7          	jalr	196(ra) # 80004780 <cpuid>
    800046c4:	00004497          	auipc	s1,0x4
    800046c8:	3dc48493          	addi	s1,s1,988 # 80008aa0 <started>
    800046cc:	02050263          	beqz	a0,800046f0 <system_main+0x48>
    800046d0:	0004a783          	lw	a5,0(s1)
    800046d4:	0007879b          	sext.w	a5,a5
    800046d8:	fe078ce3          	beqz	a5,800046d0 <system_main+0x28>
    800046dc:	0ff0000f          	fence
    800046e0:	00003517          	auipc	a0,0x3
    800046e4:	c5850513          	addi	a0,a0,-936 # 80007338 <CONSOLE_STATUS+0x328>
    800046e8:	00001097          	auipc	ra,0x1
    800046ec:	a74080e7          	jalr	-1420(ra) # 8000515c <panic>
    800046f0:	00001097          	auipc	ra,0x1
    800046f4:	9c8080e7          	jalr	-1592(ra) # 800050b8 <consoleinit>
    800046f8:	00001097          	auipc	ra,0x1
    800046fc:	154080e7          	jalr	340(ra) # 8000584c <printfinit>
    80004700:	00003517          	auipc	a0,0x3
    80004704:	a6850513          	addi	a0,a0,-1432 # 80007168 <CONSOLE_STATUS+0x158>
    80004708:	00001097          	auipc	ra,0x1
    8000470c:	ab0080e7          	jalr	-1360(ra) # 800051b8 <__printf>
    80004710:	00003517          	auipc	a0,0x3
    80004714:	bf850513          	addi	a0,a0,-1032 # 80007308 <CONSOLE_STATUS+0x2f8>
    80004718:	00001097          	auipc	ra,0x1
    8000471c:	aa0080e7          	jalr	-1376(ra) # 800051b8 <__printf>
    80004720:	00003517          	auipc	a0,0x3
    80004724:	a4850513          	addi	a0,a0,-1464 # 80007168 <CONSOLE_STATUS+0x158>
    80004728:	00001097          	auipc	ra,0x1
    8000472c:	a90080e7          	jalr	-1392(ra) # 800051b8 <__printf>
    80004730:	00001097          	auipc	ra,0x1
    80004734:	4a8080e7          	jalr	1192(ra) # 80005bd8 <kinit>
    80004738:	00000097          	auipc	ra,0x0
    8000473c:	148080e7          	jalr	328(ra) # 80004880 <trapinit>
    80004740:	00000097          	auipc	ra,0x0
    80004744:	16c080e7          	jalr	364(ra) # 800048ac <trapinithart>
    80004748:	00000097          	auipc	ra,0x0
    8000474c:	5b8080e7          	jalr	1464(ra) # 80004d00 <plicinit>
    80004750:	00000097          	auipc	ra,0x0
    80004754:	5d8080e7          	jalr	1496(ra) # 80004d28 <plicinithart>
    80004758:	00000097          	auipc	ra,0x0
    8000475c:	078080e7          	jalr	120(ra) # 800047d0 <userinit>
    80004760:	0ff0000f          	fence
    80004764:	00100793          	li	a5,1
    80004768:	00003517          	auipc	a0,0x3
    8000476c:	bb850513          	addi	a0,a0,-1096 # 80007320 <CONSOLE_STATUS+0x310>
    80004770:	00f4a023          	sw	a5,0(s1)
    80004774:	00001097          	auipc	ra,0x1
    80004778:	a44080e7          	jalr	-1468(ra) # 800051b8 <__printf>
    8000477c:	0000006f          	j	8000477c <system_main+0xd4>

0000000080004780 <cpuid>:
    80004780:	ff010113          	addi	sp,sp,-16
    80004784:	00813423          	sd	s0,8(sp)
    80004788:	01010413          	addi	s0,sp,16
    8000478c:	00020513          	mv	a0,tp
    80004790:	00813403          	ld	s0,8(sp)
    80004794:	0005051b          	sext.w	a0,a0
    80004798:	01010113          	addi	sp,sp,16
    8000479c:	00008067          	ret

00000000800047a0 <mycpu>:
    800047a0:	ff010113          	addi	sp,sp,-16
    800047a4:	00813423          	sd	s0,8(sp)
    800047a8:	01010413          	addi	s0,sp,16
    800047ac:	00020793          	mv	a5,tp
    800047b0:	00813403          	ld	s0,8(sp)
    800047b4:	0007879b          	sext.w	a5,a5
    800047b8:	00779793          	slli	a5,a5,0x7
    800047bc:	00005517          	auipc	a0,0x5
    800047c0:	3a450513          	addi	a0,a0,932 # 80009b60 <cpus>
    800047c4:	00f50533          	add	a0,a0,a5
    800047c8:	01010113          	addi	sp,sp,16
    800047cc:	00008067          	ret

00000000800047d0 <userinit>:
    800047d0:	ff010113          	addi	sp,sp,-16
    800047d4:	00813423          	sd	s0,8(sp)
    800047d8:	01010413          	addi	s0,sp,16
    800047dc:	00813403          	ld	s0,8(sp)
    800047e0:	01010113          	addi	sp,sp,16
    800047e4:	ffffd317          	auipc	t1,0xffffd
    800047e8:	10c30067          	jr	268(t1) # 800018f0 <main>

00000000800047ec <either_copyout>:
    800047ec:	ff010113          	addi	sp,sp,-16
    800047f0:	00813023          	sd	s0,0(sp)
    800047f4:	00113423          	sd	ra,8(sp)
    800047f8:	01010413          	addi	s0,sp,16
    800047fc:	02051663          	bnez	a0,80004828 <either_copyout+0x3c>
    80004800:	00058513          	mv	a0,a1
    80004804:	00060593          	mv	a1,a2
    80004808:	0006861b          	sext.w	a2,a3
    8000480c:	00002097          	auipc	ra,0x2
    80004810:	c58080e7          	jalr	-936(ra) # 80006464 <__memmove>
    80004814:	00813083          	ld	ra,8(sp)
    80004818:	00013403          	ld	s0,0(sp)
    8000481c:	00000513          	li	a0,0
    80004820:	01010113          	addi	sp,sp,16
    80004824:	00008067          	ret
    80004828:	00003517          	auipc	a0,0x3
    8000482c:	b3850513          	addi	a0,a0,-1224 # 80007360 <CONSOLE_STATUS+0x350>
    80004830:	00001097          	auipc	ra,0x1
    80004834:	92c080e7          	jalr	-1748(ra) # 8000515c <panic>

0000000080004838 <either_copyin>:
    80004838:	ff010113          	addi	sp,sp,-16
    8000483c:	00813023          	sd	s0,0(sp)
    80004840:	00113423          	sd	ra,8(sp)
    80004844:	01010413          	addi	s0,sp,16
    80004848:	02059463          	bnez	a1,80004870 <either_copyin+0x38>
    8000484c:	00060593          	mv	a1,a2
    80004850:	0006861b          	sext.w	a2,a3
    80004854:	00002097          	auipc	ra,0x2
    80004858:	c10080e7          	jalr	-1008(ra) # 80006464 <__memmove>
    8000485c:	00813083          	ld	ra,8(sp)
    80004860:	00013403          	ld	s0,0(sp)
    80004864:	00000513          	li	a0,0
    80004868:	01010113          	addi	sp,sp,16
    8000486c:	00008067          	ret
    80004870:	00003517          	auipc	a0,0x3
    80004874:	b1850513          	addi	a0,a0,-1256 # 80007388 <CONSOLE_STATUS+0x378>
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	8e4080e7          	jalr	-1820(ra) # 8000515c <panic>

0000000080004880 <trapinit>:
    80004880:	ff010113          	addi	sp,sp,-16
    80004884:	00813423          	sd	s0,8(sp)
    80004888:	01010413          	addi	s0,sp,16
    8000488c:	00813403          	ld	s0,8(sp)
    80004890:	00003597          	auipc	a1,0x3
    80004894:	b2058593          	addi	a1,a1,-1248 # 800073b0 <CONSOLE_STATUS+0x3a0>
    80004898:	00005517          	auipc	a0,0x5
    8000489c:	34850513          	addi	a0,a0,840 # 80009be0 <tickslock>
    800048a0:	01010113          	addi	sp,sp,16
    800048a4:	00001317          	auipc	t1,0x1
    800048a8:	5c430067          	jr	1476(t1) # 80005e68 <initlock>

00000000800048ac <trapinithart>:
    800048ac:	ff010113          	addi	sp,sp,-16
    800048b0:	00813423          	sd	s0,8(sp)
    800048b4:	01010413          	addi	s0,sp,16
    800048b8:	00000797          	auipc	a5,0x0
    800048bc:	2f878793          	addi	a5,a5,760 # 80004bb0 <kernelvec>
    800048c0:	10579073          	csrw	stvec,a5
    800048c4:	00813403          	ld	s0,8(sp)
    800048c8:	01010113          	addi	sp,sp,16
    800048cc:	00008067          	ret

00000000800048d0 <usertrap>:
    800048d0:	ff010113          	addi	sp,sp,-16
    800048d4:	00813423          	sd	s0,8(sp)
    800048d8:	01010413          	addi	s0,sp,16
    800048dc:	00813403          	ld	s0,8(sp)
    800048e0:	01010113          	addi	sp,sp,16
    800048e4:	00008067          	ret

00000000800048e8 <usertrapret>:
    800048e8:	ff010113          	addi	sp,sp,-16
    800048ec:	00813423          	sd	s0,8(sp)
    800048f0:	01010413          	addi	s0,sp,16
    800048f4:	00813403          	ld	s0,8(sp)
    800048f8:	01010113          	addi	sp,sp,16
    800048fc:	00008067          	ret

0000000080004900 <kerneltrap>:
    80004900:	fe010113          	addi	sp,sp,-32
    80004904:	00813823          	sd	s0,16(sp)
    80004908:	00113c23          	sd	ra,24(sp)
    8000490c:	00913423          	sd	s1,8(sp)
    80004910:	02010413          	addi	s0,sp,32
    80004914:	142025f3          	csrr	a1,scause
    80004918:	100027f3          	csrr	a5,sstatus
    8000491c:	0027f793          	andi	a5,a5,2
    80004920:	10079c63          	bnez	a5,80004a38 <kerneltrap+0x138>
    80004924:	142027f3          	csrr	a5,scause
    80004928:	0207ce63          	bltz	a5,80004964 <kerneltrap+0x64>
    8000492c:	00003517          	auipc	a0,0x3
    80004930:	acc50513          	addi	a0,a0,-1332 # 800073f8 <CONSOLE_STATUS+0x3e8>
    80004934:	00001097          	auipc	ra,0x1
    80004938:	884080e7          	jalr	-1916(ra) # 800051b8 <__printf>
    8000493c:	141025f3          	csrr	a1,sepc
    80004940:	14302673          	csrr	a2,stval
    80004944:	00003517          	auipc	a0,0x3
    80004948:	ac450513          	addi	a0,a0,-1340 # 80007408 <CONSOLE_STATUS+0x3f8>
    8000494c:	00001097          	auipc	ra,0x1
    80004950:	86c080e7          	jalr	-1940(ra) # 800051b8 <__printf>
    80004954:	00003517          	auipc	a0,0x3
    80004958:	acc50513          	addi	a0,a0,-1332 # 80007420 <CONSOLE_STATUS+0x410>
    8000495c:	00001097          	auipc	ra,0x1
    80004960:	800080e7          	jalr	-2048(ra) # 8000515c <panic>
    80004964:	0ff7f713          	andi	a4,a5,255
    80004968:	00900693          	li	a3,9
    8000496c:	04d70063          	beq	a4,a3,800049ac <kerneltrap+0xac>
    80004970:	fff00713          	li	a4,-1
    80004974:	03f71713          	slli	a4,a4,0x3f
    80004978:	00170713          	addi	a4,a4,1
    8000497c:	fae798e3          	bne	a5,a4,8000492c <kerneltrap+0x2c>
    80004980:	00000097          	auipc	ra,0x0
    80004984:	e00080e7          	jalr	-512(ra) # 80004780 <cpuid>
    80004988:	06050663          	beqz	a0,800049f4 <kerneltrap+0xf4>
    8000498c:	144027f3          	csrr	a5,sip
    80004990:	ffd7f793          	andi	a5,a5,-3
    80004994:	14479073          	csrw	sip,a5
    80004998:	01813083          	ld	ra,24(sp)
    8000499c:	01013403          	ld	s0,16(sp)
    800049a0:	00813483          	ld	s1,8(sp)
    800049a4:	02010113          	addi	sp,sp,32
    800049a8:	00008067          	ret
    800049ac:	00000097          	auipc	ra,0x0
    800049b0:	3c8080e7          	jalr	968(ra) # 80004d74 <plic_claim>
    800049b4:	00a00793          	li	a5,10
    800049b8:	00050493          	mv	s1,a0
    800049bc:	06f50863          	beq	a0,a5,80004a2c <kerneltrap+0x12c>
    800049c0:	fc050ce3          	beqz	a0,80004998 <kerneltrap+0x98>
    800049c4:	00050593          	mv	a1,a0
    800049c8:	00003517          	auipc	a0,0x3
    800049cc:	a1050513          	addi	a0,a0,-1520 # 800073d8 <CONSOLE_STATUS+0x3c8>
    800049d0:	00000097          	auipc	ra,0x0
    800049d4:	7e8080e7          	jalr	2024(ra) # 800051b8 <__printf>
    800049d8:	01013403          	ld	s0,16(sp)
    800049dc:	01813083          	ld	ra,24(sp)
    800049e0:	00048513          	mv	a0,s1
    800049e4:	00813483          	ld	s1,8(sp)
    800049e8:	02010113          	addi	sp,sp,32
    800049ec:	00000317          	auipc	t1,0x0
    800049f0:	3c030067          	jr	960(t1) # 80004dac <plic_complete>
    800049f4:	00005517          	auipc	a0,0x5
    800049f8:	1ec50513          	addi	a0,a0,492 # 80009be0 <tickslock>
    800049fc:	00001097          	auipc	ra,0x1
    80004a00:	490080e7          	jalr	1168(ra) # 80005e8c <acquire>
    80004a04:	00004717          	auipc	a4,0x4
    80004a08:	0a070713          	addi	a4,a4,160 # 80008aa4 <ticks>
    80004a0c:	00072783          	lw	a5,0(a4)
    80004a10:	00005517          	auipc	a0,0x5
    80004a14:	1d050513          	addi	a0,a0,464 # 80009be0 <tickslock>
    80004a18:	0017879b          	addiw	a5,a5,1
    80004a1c:	00f72023          	sw	a5,0(a4)
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	538080e7          	jalr	1336(ra) # 80005f58 <release>
    80004a28:	f65ff06f          	j	8000498c <kerneltrap+0x8c>
    80004a2c:	00001097          	auipc	ra,0x1
    80004a30:	094080e7          	jalr	148(ra) # 80005ac0 <uartintr>
    80004a34:	fa5ff06f          	j	800049d8 <kerneltrap+0xd8>
    80004a38:	00003517          	auipc	a0,0x3
    80004a3c:	98050513          	addi	a0,a0,-1664 # 800073b8 <CONSOLE_STATUS+0x3a8>
    80004a40:	00000097          	auipc	ra,0x0
    80004a44:	71c080e7          	jalr	1820(ra) # 8000515c <panic>

0000000080004a48 <clockintr>:
    80004a48:	fe010113          	addi	sp,sp,-32
    80004a4c:	00813823          	sd	s0,16(sp)
    80004a50:	00913423          	sd	s1,8(sp)
    80004a54:	00113c23          	sd	ra,24(sp)
    80004a58:	02010413          	addi	s0,sp,32
    80004a5c:	00005497          	auipc	s1,0x5
    80004a60:	18448493          	addi	s1,s1,388 # 80009be0 <tickslock>
    80004a64:	00048513          	mv	a0,s1
    80004a68:	00001097          	auipc	ra,0x1
    80004a6c:	424080e7          	jalr	1060(ra) # 80005e8c <acquire>
    80004a70:	00004717          	auipc	a4,0x4
    80004a74:	03470713          	addi	a4,a4,52 # 80008aa4 <ticks>
    80004a78:	00072783          	lw	a5,0(a4)
    80004a7c:	01013403          	ld	s0,16(sp)
    80004a80:	01813083          	ld	ra,24(sp)
    80004a84:	00048513          	mv	a0,s1
    80004a88:	0017879b          	addiw	a5,a5,1
    80004a8c:	00813483          	ld	s1,8(sp)
    80004a90:	00f72023          	sw	a5,0(a4)
    80004a94:	02010113          	addi	sp,sp,32
    80004a98:	00001317          	auipc	t1,0x1
    80004a9c:	4c030067          	jr	1216(t1) # 80005f58 <release>

0000000080004aa0 <devintr>:
    80004aa0:	142027f3          	csrr	a5,scause
    80004aa4:	00000513          	li	a0,0
    80004aa8:	0007c463          	bltz	a5,80004ab0 <devintr+0x10>
    80004aac:	00008067          	ret
    80004ab0:	fe010113          	addi	sp,sp,-32
    80004ab4:	00813823          	sd	s0,16(sp)
    80004ab8:	00113c23          	sd	ra,24(sp)
    80004abc:	00913423          	sd	s1,8(sp)
    80004ac0:	02010413          	addi	s0,sp,32
    80004ac4:	0ff7f713          	andi	a4,a5,255
    80004ac8:	00900693          	li	a3,9
    80004acc:	04d70c63          	beq	a4,a3,80004b24 <devintr+0x84>
    80004ad0:	fff00713          	li	a4,-1
    80004ad4:	03f71713          	slli	a4,a4,0x3f
    80004ad8:	00170713          	addi	a4,a4,1
    80004adc:	00e78c63          	beq	a5,a4,80004af4 <devintr+0x54>
    80004ae0:	01813083          	ld	ra,24(sp)
    80004ae4:	01013403          	ld	s0,16(sp)
    80004ae8:	00813483          	ld	s1,8(sp)
    80004aec:	02010113          	addi	sp,sp,32
    80004af0:	00008067          	ret
    80004af4:	00000097          	auipc	ra,0x0
    80004af8:	c8c080e7          	jalr	-884(ra) # 80004780 <cpuid>
    80004afc:	06050663          	beqz	a0,80004b68 <devintr+0xc8>
    80004b00:	144027f3          	csrr	a5,sip
    80004b04:	ffd7f793          	andi	a5,a5,-3
    80004b08:	14479073          	csrw	sip,a5
    80004b0c:	01813083          	ld	ra,24(sp)
    80004b10:	01013403          	ld	s0,16(sp)
    80004b14:	00813483          	ld	s1,8(sp)
    80004b18:	00200513          	li	a0,2
    80004b1c:	02010113          	addi	sp,sp,32
    80004b20:	00008067          	ret
    80004b24:	00000097          	auipc	ra,0x0
    80004b28:	250080e7          	jalr	592(ra) # 80004d74 <plic_claim>
    80004b2c:	00a00793          	li	a5,10
    80004b30:	00050493          	mv	s1,a0
    80004b34:	06f50663          	beq	a0,a5,80004ba0 <devintr+0x100>
    80004b38:	00100513          	li	a0,1
    80004b3c:	fa0482e3          	beqz	s1,80004ae0 <devintr+0x40>
    80004b40:	00048593          	mv	a1,s1
    80004b44:	00003517          	auipc	a0,0x3
    80004b48:	89450513          	addi	a0,a0,-1900 # 800073d8 <CONSOLE_STATUS+0x3c8>
    80004b4c:	00000097          	auipc	ra,0x0
    80004b50:	66c080e7          	jalr	1644(ra) # 800051b8 <__printf>
    80004b54:	00048513          	mv	a0,s1
    80004b58:	00000097          	auipc	ra,0x0
    80004b5c:	254080e7          	jalr	596(ra) # 80004dac <plic_complete>
    80004b60:	00100513          	li	a0,1
    80004b64:	f7dff06f          	j	80004ae0 <devintr+0x40>
    80004b68:	00005517          	auipc	a0,0x5
    80004b6c:	07850513          	addi	a0,a0,120 # 80009be0 <tickslock>
    80004b70:	00001097          	auipc	ra,0x1
    80004b74:	31c080e7          	jalr	796(ra) # 80005e8c <acquire>
    80004b78:	00004717          	auipc	a4,0x4
    80004b7c:	f2c70713          	addi	a4,a4,-212 # 80008aa4 <ticks>
    80004b80:	00072783          	lw	a5,0(a4)
    80004b84:	00005517          	auipc	a0,0x5
    80004b88:	05c50513          	addi	a0,a0,92 # 80009be0 <tickslock>
    80004b8c:	0017879b          	addiw	a5,a5,1
    80004b90:	00f72023          	sw	a5,0(a4)
    80004b94:	00001097          	auipc	ra,0x1
    80004b98:	3c4080e7          	jalr	964(ra) # 80005f58 <release>
    80004b9c:	f65ff06f          	j	80004b00 <devintr+0x60>
    80004ba0:	00001097          	auipc	ra,0x1
    80004ba4:	f20080e7          	jalr	-224(ra) # 80005ac0 <uartintr>
    80004ba8:	fadff06f          	j	80004b54 <devintr+0xb4>
    80004bac:	0000                	unimp
	...

0000000080004bb0 <kernelvec>:
    80004bb0:	f0010113          	addi	sp,sp,-256
    80004bb4:	00113023          	sd	ra,0(sp)
    80004bb8:	00213423          	sd	sp,8(sp)
    80004bbc:	00313823          	sd	gp,16(sp)
    80004bc0:	00413c23          	sd	tp,24(sp)
    80004bc4:	02513023          	sd	t0,32(sp)
    80004bc8:	02613423          	sd	t1,40(sp)
    80004bcc:	02713823          	sd	t2,48(sp)
    80004bd0:	02813c23          	sd	s0,56(sp)
    80004bd4:	04913023          	sd	s1,64(sp)
    80004bd8:	04a13423          	sd	a0,72(sp)
    80004bdc:	04b13823          	sd	a1,80(sp)
    80004be0:	04c13c23          	sd	a2,88(sp)
    80004be4:	06d13023          	sd	a3,96(sp)
    80004be8:	06e13423          	sd	a4,104(sp)
    80004bec:	06f13823          	sd	a5,112(sp)
    80004bf0:	07013c23          	sd	a6,120(sp)
    80004bf4:	09113023          	sd	a7,128(sp)
    80004bf8:	09213423          	sd	s2,136(sp)
    80004bfc:	09313823          	sd	s3,144(sp)
    80004c00:	09413c23          	sd	s4,152(sp)
    80004c04:	0b513023          	sd	s5,160(sp)
    80004c08:	0b613423          	sd	s6,168(sp)
    80004c0c:	0b713823          	sd	s7,176(sp)
    80004c10:	0b813c23          	sd	s8,184(sp)
    80004c14:	0d913023          	sd	s9,192(sp)
    80004c18:	0da13423          	sd	s10,200(sp)
    80004c1c:	0db13823          	sd	s11,208(sp)
    80004c20:	0dc13c23          	sd	t3,216(sp)
    80004c24:	0fd13023          	sd	t4,224(sp)
    80004c28:	0fe13423          	sd	t5,232(sp)
    80004c2c:	0ff13823          	sd	t6,240(sp)
    80004c30:	cd1ff0ef          	jal	ra,80004900 <kerneltrap>
    80004c34:	00013083          	ld	ra,0(sp)
    80004c38:	00813103          	ld	sp,8(sp)
    80004c3c:	01013183          	ld	gp,16(sp)
    80004c40:	02013283          	ld	t0,32(sp)
    80004c44:	02813303          	ld	t1,40(sp)
    80004c48:	03013383          	ld	t2,48(sp)
    80004c4c:	03813403          	ld	s0,56(sp)
    80004c50:	04013483          	ld	s1,64(sp)
    80004c54:	04813503          	ld	a0,72(sp)
    80004c58:	05013583          	ld	a1,80(sp)
    80004c5c:	05813603          	ld	a2,88(sp)
    80004c60:	06013683          	ld	a3,96(sp)
    80004c64:	06813703          	ld	a4,104(sp)
    80004c68:	07013783          	ld	a5,112(sp)
    80004c6c:	07813803          	ld	a6,120(sp)
    80004c70:	08013883          	ld	a7,128(sp)
    80004c74:	08813903          	ld	s2,136(sp)
    80004c78:	09013983          	ld	s3,144(sp)
    80004c7c:	09813a03          	ld	s4,152(sp)
    80004c80:	0a013a83          	ld	s5,160(sp)
    80004c84:	0a813b03          	ld	s6,168(sp)
    80004c88:	0b013b83          	ld	s7,176(sp)
    80004c8c:	0b813c03          	ld	s8,184(sp)
    80004c90:	0c013c83          	ld	s9,192(sp)
    80004c94:	0c813d03          	ld	s10,200(sp)
    80004c98:	0d013d83          	ld	s11,208(sp)
    80004c9c:	0d813e03          	ld	t3,216(sp)
    80004ca0:	0e013e83          	ld	t4,224(sp)
    80004ca4:	0e813f03          	ld	t5,232(sp)
    80004ca8:	0f013f83          	ld	t6,240(sp)
    80004cac:	10010113          	addi	sp,sp,256
    80004cb0:	10200073          	sret
    80004cb4:	00000013          	nop
    80004cb8:	00000013          	nop
    80004cbc:	00000013          	nop

0000000080004cc0 <timervec>:
    80004cc0:	34051573          	csrrw	a0,mscratch,a0
    80004cc4:	00b53023          	sd	a1,0(a0)
    80004cc8:	00c53423          	sd	a2,8(a0)
    80004ccc:	00d53823          	sd	a3,16(a0)
    80004cd0:	01853583          	ld	a1,24(a0)
    80004cd4:	02053603          	ld	a2,32(a0)
    80004cd8:	0005b683          	ld	a3,0(a1)
    80004cdc:	00c686b3          	add	a3,a3,a2
    80004ce0:	00d5b023          	sd	a3,0(a1)
    80004ce4:	00200593          	li	a1,2
    80004ce8:	14459073          	csrw	sip,a1
    80004cec:	01053683          	ld	a3,16(a0)
    80004cf0:	00853603          	ld	a2,8(a0)
    80004cf4:	00053583          	ld	a1,0(a0)
    80004cf8:	34051573          	csrrw	a0,mscratch,a0
    80004cfc:	30200073          	mret

0000000080004d00 <plicinit>:
    80004d00:	ff010113          	addi	sp,sp,-16
    80004d04:	00813423          	sd	s0,8(sp)
    80004d08:	01010413          	addi	s0,sp,16
    80004d0c:	00813403          	ld	s0,8(sp)
    80004d10:	0c0007b7          	lui	a5,0xc000
    80004d14:	00100713          	li	a4,1
    80004d18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80004d1c:	00e7a223          	sw	a4,4(a5)
    80004d20:	01010113          	addi	sp,sp,16
    80004d24:	00008067          	ret

0000000080004d28 <plicinithart>:
    80004d28:	ff010113          	addi	sp,sp,-16
    80004d2c:	00813023          	sd	s0,0(sp)
    80004d30:	00113423          	sd	ra,8(sp)
    80004d34:	01010413          	addi	s0,sp,16
    80004d38:	00000097          	auipc	ra,0x0
    80004d3c:	a48080e7          	jalr	-1464(ra) # 80004780 <cpuid>
    80004d40:	0085171b          	slliw	a4,a0,0x8
    80004d44:	0c0027b7          	lui	a5,0xc002
    80004d48:	00e787b3          	add	a5,a5,a4
    80004d4c:	40200713          	li	a4,1026
    80004d50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004d54:	00813083          	ld	ra,8(sp)
    80004d58:	00013403          	ld	s0,0(sp)
    80004d5c:	00d5151b          	slliw	a0,a0,0xd
    80004d60:	0c2017b7          	lui	a5,0xc201
    80004d64:	00a78533          	add	a0,a5,a0
    80004d68:	00052023          	sw	zero,0(a0)
    80004d6c:	01010113          	addi	sp,sp,16
    80004d70:	00008067          	ret

0000000080004d74 <plic_claim>:
    80004d74:	ff010113          	addi	sp,sp,-16
    80004d78:	00813023          	sd	s0,0(sp)
    80004d7c:	00113423          	sd	ra,8(sp)
    80004d80:	01010413          	addi	s0,sp,16
    80004d84:	00000097          	auipc	ra,0x0
    80004d88:	9fc080e7          	jalr	-1540(ra) # 80004780 <cpuid>
    80004d8c:	00813083          	ld	ra,8(sp)
    80004d90:	00013403          	ld	s0,0(sp)
    80004d94:	00d5151b          	slliw	a0,a0,0xd
    80004d98:	0c2017b7          	lui	a5,0xc201
    80004d9c:	00a78533          	add	a0,a5,a0
    80004da0:	00452503          	lw	a0,4(a0)
    80004da4:	01010113          	addi	sp,sp,16
    80004da8:	00008067          	ret

0000000080004dac <plic_complete>:
    80004dac:	fe010113          	addi	sp,sp,-32
    80004db0:	00813823          	sd	s0,16(sp)
    80004db4:	00913423          	sd	s1,8(sp)
    80004db8:	00113c23          	sd	ra,24(sp)
    80004dbc:	02010413          	addi	s0,sp,32
    80004dc0:	00050493          	mv	s1,a0
    80004dc4:	00000097          	auipc	ra,0x0
    80004dc8:	9bc080e7          	jalr	-1604(ra) # 80004780 <cpuid>
    80004dcc:	01813083          	ld	ra,24(sp)
    80004dd0:	01013403          	ld	s0,16(sp)
    80004dd4:	00d5179b          	slliw	a5,a0,0xd
    80004dd8:	0c201737          	lui	a4,0xc201
    80004ddc:	00f707b3          	add	a5,a4,a5
    80004de0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004de4:	00813483          	ld	s1,8(sp)
    80004de8:	02010113          	addi	sp,sp,32
    80004dec:	00008067          	ret

0000000080004df0 <consolewrite>:
    80004df0:	fb010113          	addi	sp,sp,-80
    80004df4:	04813023          	sd	s0,64(sp)
    80004df8:	04113423          	sd	ra,72(sp)
    80004dfc:	02913c23          	sd	s1,56(sp)
    80004e00:	03213823          	sd	s2,48(sp)
    80004e04:	03313423          	sd	s3,40(sp)
    80004e08:	03413023          	sd	s4,32(sp)
    80004e0c:	01513c23          	sd	s5,24(sp)
    80004e10:	05010413          	addi	s0,sp,80
    80004e14:	06c05c63          	blez	a2,80004e8c <consolewrite+0x9c>
    80004e18:	00060993          	mv	s3,a2
    80004e1c:	00050a13          	mv	s4,a0
    80004e20:	00058493          	mv	s1,a1
    80004e24:	00000913          	li	s2,0
    80004e28:	fff00a93          	li	s5,-1
    80004e2c:	01c0006f          	j	80004e48 <consolewrite+0x58>
    80004e30:	fbf44503          	lbu	a0,-65(s0)
    80004e34:	0019091b          	addiw	s2,s2,1
    80004e38:	00148493          	addi	s1,s1,1
    80004e3c:	00001097          	auipc	ra,0x1
    80004e40:	a9c080e7          	jalr	-1380(ra) # 800058d8 <uartputc>
    80004e44:	03298063          	beq	s3,s2,80004e64 <consolewrite+0x74>
    80004e48:	00048613          	mv	a2,s1
    80004e4c:	00100693          	li	a3,1
    80004e50:	000a0593          	mv	a1,s4
    80004e54:	fbf40513          	addi	a0,s0,-65
    80004e58:	00000097          	auipc	ra,0x0
    80004e5c:	9e0080e7          	jalr	-1568(ra) # 80004838 <either_copyin>
    80004e60:	fd5518e3          	bne	a0,s5,80004e30 <consolewrite+0x40>
    80004e64:	04813083          	ld	ra,72(sp)
    80004e68:	04013403          	ld	s0,64(sp)
    80004e6c:	03813483          	ld	s1,56(sp)
    80004e70:	02813983          	ld	s3,40(sp)
    80004e74:	02013a03          	ld	s4,32(sp)
    80004e78:	01813a83          	ld	s5,24(sp)
    80004e7c:	00090513          	mv	a0,s2
    80004e80:	03013903          	ld	s2,48(sp)
    80004e84:	05010113          	addi	sp,sp,80
    80004e88:	00008067          	ret
    80004e8c:	00000913          	li	s2,0
    80004e90:	fd5ff06f          	j	80004e64 <consolewrite+0x74>

0000000080004e94 <consoleread>:
    80004e94:	f9010113          	addi	sp,sp,-112
    80004e98:	06813023          	sd	s0,96(sp)
    80004e9c:	04913c23          	sd	s1,88(sp)
    80004ea0:	05213823          	sd	s2,80(sp)
    80004ea4:	05313423          	sd	s3,72(sp)
    80004ea8:	05413023          	sd	s4,64(sp)
    80004eac:	03513c23          	sd	s5,56(sp)
    80004eb0:	03613823          	sd	s6,48(sp)
    80004eb4:	03713423          	sd	s7,40(sp)
    80004eb8:	03813023          	sd	s8,32(sp)
    80004ebc:	06113423          	sd	ra,104(sp)
    80004ec0:	01913c23          	sd	s9,24(sp)
    80004ec4:	07010413          	addi	s0,sp,112
    80004ec8:	00060b93          	mv	s7,a2
    80004ecc:	00050913          	mv	s2,a0
    80004ed0:	00058c13          	mv	s8,a1
    80004ed4:	00060b1b          	sext.w	s6,a2
    80004ed8:	00005497          	auipc	s1,0x5
    80004edc:	d3048493          	addi	s1,s1,-720 # 80009c08 <cons>
    80004ee0:	00400993          	li	s3,4
    80004ee4:	fff00a13          	li	s4,-1
    80004ee8:	00a00a93          	li	s5,10
    80004eec:	05705e63          	blez	s7,80004f48 <consoleread+0xb4>
    80004ef0:	09c4a703          	lw	a4,156(s1)
    80004ef4:	0984a783          	lw	a5,152(s1)
    80004ef8:	0007071b          	sext.w	a4,a4
    80004efc:	08e78463          	beq	a5,a4,80004f84 <consoleread+0xf0>
    80004f00:	07f7f713          	andi	a4,a5,127
    80004f04:	00e48733          	add	a4,s1,a4
    80004f08:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80004f0c:	0017869b          	addiw	a3,a5,1
    80004f10:	08d4ac23          	sw	a3,152(s1)
    80004f14:	00070c9b          	sext.w	s9,a4
    80004f18:	0b370663          	beq	a4,s3,80004fc4 <consoleread+0x130>
    80004f1c:	00100693          	li	a3,1
    80004f20:	f9f40613          	addi	a2,s0,-97
    80004f24:	000c0593          	mv	a1,s8
    80004f28:	00090513          	mv	a0,s2
    80004f2c:	f8e40fa3          	sb	a4,-97(s0)
    80004f30:	00000097          	auipc	ra,0x0
    80004f34:	8bc080e7          	jalr	-1860(ra) # 800047ec <either_copyout>
    80004f38:	01450863          	beq	a0,s4,80004f48 <consoleread+0xb4>
    80004f3c:	001c0c13          	addi	s8,s8,1
    80004f40:	fffb8b9b          	addiw	s7,s7,-1
    80004f44:	fb5c94e3          	bne	s9,s5,80004eec <consoleread+0x58>
    80004f48:	000b851b          	sext.w	a0,s7
    80004f4c:	06813083          	ld	ra,104(sp)
    80004f50:	06013403          	ld	s0,96(sp)
    80004f54:	05813483          	ld	s1,88(sp)
    80004f58:	05013903          	ld	s2,80(sp)
    80004f5c:	04813983          	ld	s3,72(sp)
    80004f60:	04013a03          	ld	s4,64(sp)
    80004f64:	03813a83          	ld	s5,56(sp)
    80004f68:	02813b83          	ld	s7,40(sp)
    80004f6c:	02013c03          	ld	s8,32(sp)
    80004f70:	01813c83          	ld	s9,24(sp)
    80004f74:	40ab053b          	subw	a0,s6,a0
    80004f78:	03013b03          	ld	s6,48(sp)
    80004f7c:	07010113          	addi	sp,sp,112
    80004f80:	00008067          	ret
    80004f84:	00001097          	auipc	ra,0x1
    80004f88:	1d8080e7          	jalr	472(ra) # 8000615c <push_on>
    80004f8c:	0984a703          	lw	a4,152(s1)
    80004f90:	09c4a783          	lw	a5,156(s1)
    80004f94:	0007879b          	sext.w	a5,a5
    80004f98:	fef70ce3          	beq	a4,a5,80004f90 <consoleread+0xfc>
    80004f9c:	00001097          	auipc	ra,0x1
    80004fa0:	234080e7          	jalr	564(ra) # 800061d0 <pop_on>
    80004fa4:	0984a783          	lw	a5,152(s1)
    80004fa8:	07f7f713          	andi	a4,a5,127
    80004fac:	00e48733          	add	a4,s1,a4
    80004fb0:	01874703          	lbu	a4,24(a4)
    80004fb4:	0017869b          	addiw	a3,a5,1
    80004fb8:	08d4ac23          	sw	a3,152(s1)
    80004fbc:	00070c9b          	sext.w	s9,a4
    80004fc0:	f5371ee3          	bne	a4,s3,80004f1c <consoleread+0x88>
    80004fc4:	000b851b          	sext.w	a0,s7
    80004fc8:	f96bf2e3          	bgeu	s7,s6,80004f4c <consoleread+0xb8>
    80004fcc:	08f4ac23          	sw	a5,152(s1)
    80004fd0:	f7dff06f          	j	80004f4c <consoleread+0xb8>

0000000080004fd4 <consputc>:
    80004fd4:	10000793          	li	a5,256
    80004fd8:	00f50663          	beq	a0,a5,80004fe4 <consputc+0x10>
    80004fdc:	00001317          	auipc	t1,0x1
    80004fe0:	9f430067          	jr	-1548(t1) # 800059d0 <uartputc_sync>
    80004fe4:	ff010113          	addi	sp,sp,-16
    80004fe8:	00113423          	sd	ra,8(sp)
    80004fec:	00813023          	sd	s0,0(sp)
    80004ff0:	01010413          	addi	s0,sp,16
    80004ff4:	00800513          	li	a0,8
    80004ff8:	00001097          	auipc	ra,0x1
    80004ffc:	9d8080e7          	jalr	-1576(ra) # 800059d0 <uartputc_sync>
    80005000:	02000513          	li	a0,32
    80005004:	00001097          	auipc	ra,0x1
    80005008:	9cc080e7          	jalr	-1588(ra) # 800059d0 <uartputc_sync>
    8000500c:	00013403          	ld	s0,0(sp)
    80005010:	00813083          	ld	ra,8(sp)
    80005014:	00800513          	li	a0,8
    80005018:	01010113          	addi	sp,sp,16
    8000501c:	00001317          	auipc	t1,0x1
    80005020:	9b430067          	jr	-1612(t1) # 800059d0 <uartputc_sync>

0000000080005024 <consoleintr>:
    80005024:	fe010113          	addi	sp,sp,-32
    80005028:	00813823          	sd	s0,16(sp)
    8000502c:	00913423          	sd	s1,8(sp)
    80005030:	01213023          	sd	s2,0(sp)
    80005034:	00113c23          	sd	ra,24(sp)
    80005038:	02010413          	addi	s0,sp,32
    8000503c:	00005917          	auipc	s2,0x5
    80005040:	bcc90913          	addi	s2,s2,-1076 # 80009c08 <cons>
    80005044:	00050493          	mv	s1,a0
    80005048:	00090513          	mv	a0,s2
    8000504c:	00001097          	auipc	ra,0x1
    80005050:	e40080e7          	jalr	-448(ra) # 80005e8c <acquire>
    80005054:	02048c63          	beqz	s1,8000508c <consoleintr+0x68>
    80005058:	0a092783          	lw	a5,160(s2)
    8000505c:	09892703          	lw	a4,152(s2)
    80005060:	07f00693          	li	a3,127
    80005064:	40e7873b          	subw	a4,a5,a4
    80005068:	02e6e263          	bltu	a3,a4,8000508c <consoleintr+0x68>
    8000506c:	00d00713          	li	a4,13
    80005070:	04e48063          	beq	s1,a4,800050b0 <consoleintr+0x8c>
    80005074:	07f7f713          	andi	a4,a5,127
    80005078:	00e90733          	add	a4,s2,a4
    8000507c:	0017879b          	addiw	a5,a5,1
    80005080:	0af92023          	sw	a5,160(s2)
    80005084:	00970c23          	sb	s1,24(a4)
    80005088:	08f92e23          	sw	a5,156(s2)
    8000508c:	01013403          	ld	s0,16(sp)
    80005090:	01813083          	ld	ra,24(sp)
    80005094:	00813483          	ld	s1,8(sp)
    80005098:	00013903          	ld	s2,0(sp)
    8000509c:	00005517          	auipc	a0,0x5
    800050a0:	b6c50513          	addi	a0,a0,-1172 # 80009c08 <cons>
    800050a4:	02010113          	addi	sp,sp,32
    800050a8:	00001317          	auipc	t1,0x1
    800050ac:	eb030067          	jr	-336(t1) # 80005f58 <release>
    800050b0:	00a00493          	li	s1,10
    800050b4:	fc1ff06f          	j	80005074 <consoleintr+0x50>

00000000800050b8 <consoleinit>:
    800050b8:	fe010113          	addi	sp,sp,-32
    800050bc:	00113c23          	sd	ra,24(sp)
    800050c0:	00813823          	sd	s0,16(sp)
    800050c4:	00913423          	sd	s1,8(sp)
    800050c8:	02010413          	addi	s0,sp,32
    800050cc:	00005497          	auipc	s1,0x5
    800050d0:	b3c48493          	addi	s1,s1,-1220 # 80009c08 <cons>
    800050d4:	00048513          	mv	a0,s1
    800050d8:	00002597          	auipc	a1,0x2
    800050dc:	35858593          	addi	a1,a1,856 # 80007430 <CONSOLE_STATUS+0x420>
    800050e0:	00001097          	auipc	ra,0x1
    800050e4:	d88080e7          	jalr	-632(ra) # 80005e68 <initlock>
    800050e8:	00000097          	auipc	ra,0x0
    800050ec:	7ac080e7          	jalr	1964(ra) # 80005894 <uartinit>
    800050f0:	01813083          	ld	ra,24(sp)
    800050f4:	01013403          	ld	s0,16(sp)
    800050f8:	00000797          	auipc	a5,0x0
    800050fc:	d9c78793          	addi	a5,a5,-612 # 80004e94 <consoleread>
    80005100:	0af4bc23          	sd	a5,184(s1)
    80005104:	00000797          	auipc	a5,0x0
    80005108:	cec78793          	addi	a5,a5,-788 # 80004df0 <consolewrite>
    8000510c:	0cf4b023          	sd	a5,192(s1)
    80005110:	00813483          	ld	s1,8(sp)
    80005114:	02010113          	addi	sp,sp,32
    80005118:	00008067          	ret

000000008000511c <console_read>:
    8000511c:	ff010113          	addi	sp,sp,-16
    80005120:	00813423          	sd	s0,8(sp)
    80005124:	01010413          	addi	s0,sp,16
    80005128:	00813403          	ld	s0,8(sp)
    8000512c:	00005317          	auipc	t1,0x5
    80005130:	b9433303          	ld	t1,-1132(t1) # 80009cc0 <devsw+0x10>
    80005134:	01010113          	addi	sp,sp,16
    80005138:	00030067          	jr	t1

000000008000513c <console_write>:
    8000513c:	ff010113          	addi	sp,sp,-16
    80005140:	00813423          	sd	s0,8(sp)
    80005144:	01010413          	addi	s0,sp,16
    80005148:	00813403          	ld	s0,8(sp)
    8000514c:	00005317          	auipc	t1,0x5
    80005150:	b7c33303          	ld	t1,-1156(t1) # 80009cc8 <devsw+0x18>
    80005154:	01010113          	addi	sp,sp,16
    80005158:	00030067          	jr	t1

000000008000515c <panic>:
    8000515c:	fe010113          	addi	sp,sp,-32
    80005160:	00113c23          	sd	ra,24(sp)
    80005164:	00813823          	sd	s0,16(sp)
    80005168:	00913423          	sd	s1,8(sp)
    8000516c:	02010413          	addi	s0,sp,32
    80005170:	00050493          	mv	s1,a0
    80005174:	00002517          	auipc	a0,0x2
    80005178:	2c450513          	addi	a0,a0,708 # 80007438 <CONSOLE_STATUS+0x428>
    8000517c:	00005797          	auipc	a5,0x5
    80005180:	be07a623          	sw	zero,-1044(a5) # 80009d68 <pr+0x18>
    80005184:	00000097          	auipc	ra,0x0
    80005188:	034080e7          	jalr	52(ra) # 800051b8 <__printf>
    8000518c:	00048513          	mv	a0,s1
    80005190:	00000097          	auipc	ra,0x0
    80005194:	028080e7          	jalr	40(ra) # 800051b8 <__printf>
    80005198:	00002517          	auipc	a0,0x2
    8000519c:	fd050513          	addi	a0,a0,-48 # 80007168 <CONSOLE_STATUS+0x158>
    800051a0:	00000097          	auipc	ra,0x0
    800051a4:	018080e7          	jalr	24(ra) # 800051b8 <__printf>
    800051a8:	00100793          	li	a5,1
    800051ac:	00004717          	auipc	a4,0x4
    800051b0:	8ef72e23          	sw	a5,-1796(a4) # 80008aa8 <panicked>
    800051b4:	0000006f          	j	800051b4 <panic+0x58>

00000000800051b8 <__printf>:
    800051b8:	f3010113          	addi	sp,sp,-208
    800051bc:	08813023          	sd	s0,128(sp)
    800051c0:	07313423          	sd	s3,104(sp)
    800051c4:	09010413          	addi	s0,sp,144
    800051c8:	05813023          	sd	s8,64(sp)
    800051cc:	08113423          	sd	ra,136(sp)
    800051d0:	06913c23          	sd	s1,120(sp)
    800051d4:	07213823          	sd	s2,112(sp)
    800051d8:	07413023          	sd	s4,96(sp)
    800051dc:	05513c23          	sd	s5,88(sp)
    800051e0:	05613823          	sd	s6,80(sp)
    800051e4:	05713423          	sd	s7,72(sp)
    800051e8:	03913c23          	sd	s9,56(sp)
    800051ec:	03a13823          	sd	s10,48(sp)
    800051f0:	03b13423          	sd	s11,40(sp)
    800051f4:	00005317          	auipc	t1,0x5
    800051f8:	b5c30313          	addi	t1,t1,-1188 # 80009d50 <pr>
    800051fc:	01832c03          	lw	s8,24(t1)
    80005200:	00b43423          	sd	a1,8(s0)
    80005204:	00c43823          	sd	a2,16(s0)
    80005208:	00d43c23          	sd	a3,24(s0)
    8000520c:	02e43023          	sd	a4,32(s0)
    80005210:	02f43423          	sd	a5,40(s0)
    80005214:	03043823          	sd	a6,48(s0)
    80005218:	03143c23          	sd	a7,56(s0)
    8000521c:	00050993          	mv	s3,a0
    80005220:	4a0c1663          	bnez	s8,800056cc <__printf+0x514>
    80005224:	60098c63          	beqz	s3,8000583c <__printf+0x684>
    80005228:	0009c503          	lbu	a0,0(s3)
    8000522c:	00840793          	addi	a5,s0,8
    80005230:	f6f43c23          	sd	a5,-136(s0)
    80005234:	00000493          	li	s1,0
    80005238:	22050063          	beqz	a0,80005458 <__printf+0x2a0>
    8000523c:	00002a37          	lui	s4,0x2
    80005240:	00018ab7          	lui	s5,0x18
    80005244:	000f4b37          	lui	s6,0xf4
    80005248:	00989bb7          	lui	s7,0x989
    8000524c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005250:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005254:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005258:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000525c:	00148c9b          	addiw	s9,s1,1
    80005260:	02500793          	li	a5,37
    80005264:	01998933          	add	s2,s3,s9
    80005268:	38f51263          	bne	a0,a5,800055ec <__printf+0x434>
    8000526c:	00094783          	lbu	a5,0(s2)
    80005270:	00078c9b          	sext.w	s9,a5
    80005274:	1e078263          	beqz	a5,80005458 <__printf+0x2a0>
    80005278:	0024849b          	addiw	s1,s1,2
    8000527c:	07000713          	li	a4,112
    80005280:	00998933          	add	s2,s3,s1
    80005284:	38e78a63          	beq	a5,a4,80005618 <__printf+0x460>
    80005288:	20f76863          	bltu	a4,a5,80005498 <__printf+0x2e0>
    8000528c:	42a78863          	beq	a5,a0,800056bc <__printf+0x504>
    80005290:	06400713          	li	a4,100
    80005294:	40e79663          	bne	a5,a4,800056a0 <__printf+0x4e8>
    80005298:	f7843783          	ld	a5,-136(s0)
    8000529c:	0007a603          	lw	a2,0(a5)
    800052a0:	00878793          	addi	a5,a5,8
    800052a4:	f6f43c23          	sd	a5,-136(s0)
    800052a8:	42064a63          	bltz	a2,800056dc <__printf+0x524>
    800052ac:	00a00713          	li	a4,10
    800052b0:	02e677bb          	remuw	a5,a2,a4
    800052b4:	00002d97          	auipc	s11,0x2
    800052b8:	1acd8d93          	addi	s11,s11,428 # 80007460 <digits>
    800052bc:	00900593          	li	a1,9
    800052c0:	0006051b          	sext.w	a0,a2
    800052c4:	00000c93          	li	s9,0
    800052c8:	02079793          	slli	a5,a5,0x20
    800052cc:	0207d793          	srli	a5,a5,0x20
    800052d0:	00fd87b3          	add	a5,s11,a5
    800052d4:	0007c783          	lbu	a5,0(a5)
    800052d8:	02e656bb          	divuw	a3,a2,a4
    800052dc:	f8f40023          	sb	a5,-128(s0)
    800052e0:	14c5d863          	bge	a1,a2,80005430 <__printf+0x278>
    800052e4:	06300593          	li	a1,99
    800052e8:	00100c93          	li	s9,1
    800052ec:	02e6f7bb          	remuw	a5,a3,a4
    800052f0:	02079793          	slli	a5,a5,0x20
    800052f4:	0207d793          	srli	a5,a5,0x20
    800052f8:	00fd87b3          	add	a5,s11,a5
    800052fc:	0007c783          	lbu	a5,0(a5)
    80005300:	02e6d73b          	divuw	a4,a3,a4
    80005304:	f8f400a3          	sb	a5,-127(s0)
    80005308:	12a5f463          	bgeu	a1,a0,80005430 <__printf+0x278>
    8000530c:	00a00693          	li	a3,10
    80005310:	00900593          	li	a1,9
    80005314:	02d777bb          	remuw	a5,a4,a3
    80005318:	02079793          	slli	a5,a5,0x20
    8000531c:	0207d793          	srli	a5,a5,0x20
    80005320:	00fd87b3          	add	a5,s11,a5
    80005324:	0007c503          	lbu	a0,0(a5)
    80005328:	02d757bb          	divuw	a5,a4,a3
    8000532c:	f8a40123          	sb	a0,-126(s0)
    80005330:	48e5f263          	bgeu	a1,a4,800057b4 <__printf+0x5fc>
    80005334:	06300513          	li	a0,99
    80005338:	02d7f5bb          	remuw	a1,a5,a3
    8000533c:	02059593          	slli	a1,a1,0x20
    80005340:	0205d593          	srli	a1,a1,0x20
    80005344:	00bd85b3          	add	a1,s11,a1
    80005348:	0005c583          	lbu	a1,0(a1)
    8000534c:	02d7d7bb          	divuw	a5,a5,a3
    80005350:	f8b401a3          	sb	a1,-125(s0)
    80005354:	48e57263          	bgeu	a0,a4,800057d8 <__printf+0x620>
    80005358:	3e700513          	li	a0,999
    8000535c:	02d7f5bb          	remuw	a1,a5,a3
    80005360:	02059593          	slli	a1,a1,0x20
    80005364:	0205d593          	srli	a1,a1,0x20
    80005368:	00bd85b3          	add	a1,s11,a1
    8000536c:	0005c583          	lbu	a1,0(a1)
    80005370:	02d7d7bb          	divuw	a5,a5,a3
    80005374:	f8b40223          	sb	a1,-124(s0)
    80005378:	46e57663          	bgeu	a0,a4,800057e4 <__printf+0x62c>
    8000537c:	02d7f5bb          	remuw	a1,a5,a3
    80005380:	02059593          	slli	a1,a1,0x20
    80005384:	0205d593          	srli	a1,a1,0x20
    80005388:	00bd85b3          	add	a1,s11,a1
    8000538c:	0005c583          	lbu	a1,0(a1)
    80005390:	02d7d7bb          	divuw	a5,a5,a3
    80005394:	f8b402a3          	sb	a1,-123(s0)
    80005398:	46ea7863          	bgeu	s4,a4,80005808 <__printf+0x650>
    8000539c:	02d7f5bb          	remuw	a1,a5,a3
    800053a0:	02059593          	slli	a1,a1,0x20
    800053a4:	0205d593          	srli	a1,a1,0x20
    800053a8:	00bd85b3          	add	a1,s11,a1
    800053ac:	0005c583          	lbu	a1,0(a1)
    800053b0:	02d7d7bb          	divuw	a5,a5,a3
    800053b4:	f8b40323          	sb	a1,-122(s0)
    800053b8:	3eeaf863          	bgeu	s5,a4,800057a8 <__printf+0x5f0>
    800053bc:	02d7f5bb          	remuw	a1,a5,a3
    800053c0:	02059593          	slli	a1,a1,0x20
    800053c4:	0205d593          	srli	a1,a1,0x20
    800053c8:	00bd85b3          	add	a1,s11,a1
    800053cc:	0005c583          	lbu	a1,0(a1)
    800053d0:	02d7d7bb          	divuw	a5,a5,a3
    800053d4:	f8b403a3          	sb	a1,-121(s0)
    800053d8:	42eb7e63          	bgeu	s6,a4,80005814 <__printf+0x65c>
    800053dc:	02d7f5bb          	remuw	a1,a5,a3
    800053e0:	02059593          	slli	a1,a1,0x20
    800053e4:	0205d593          	srli	a1,a1,0x20
    800053e8:	00bd85b3          	add	a1,s11,a1
    800053ec:	0005c583          	lbu	a1,0(a1)
    800053f0:	02d7d7bb          	divuw	a5,a5,a3
    800053f4:	f8b40423          	sb	a1,-120(s0)
    800053f8:	42ebfc63          	bgeu	s7,a4,80005830 <__printf+0x678>
    800053fc:	02079793          	slli	a5,a5,0x20
    80005400:	0207d793          	srli	a5,a5,0x20
    80005404:	00fd8db3          	add	s11,s11,a5
    80005408:	000dc703          	lbu	a4,0(s11)
    8000540c:	00a00793          	li	a5,10
    80005410:	00900c93          	li	s9,9
    80005414:	f8e404a3          	sb	a4,-119(s0)
    80005418:	00065c63          	bgez	a2,80005430 <__printf+0x278>
    8000541c:	f9040713          	addi	a4,s0,-112
    80005420:	00f70733          	add	a4,a4,a5
    80005424:	02d00693          	li	a3,45
    80005428:	fed70823          	sb	a3,-16(a4)
    8000542c:	00078c93          	mv	s9,a5
    80005430:	f8040793          	addi	a5,s0,-128
    80005434:	01978cb3          	add	s9,a5,s9
    80005438:	f7f40d13          	addi	s10,s0,-129
    8000543c:	000cc503          	lbu	a0,0(s9)
    80005440:	fffc8c93          	addi	s9,s9,-1
    80005444:	00000097          	auipc	ra,0x0
    80005448:	b90080e7          	jalr	-1136(ra) # 80004fd4 <consputc>
    8000544c:	ffac98e3          	bne	s9,s10,8000543c <__printf+0x284>
    80005450:	00094503          	lbu	a0,0(s2)
    80005454:	e00514e3          	bnez	a0,8000525c <__printf+0xa4>
    80005458:	1a0c1663          	bnez	s8,80005604 <__printf+0x44c>
    8000545c:	08813083          	ld	ra,136(sp)
    80005460:	08013403          	ld	s0,128(sp)
    80005464:	07813483          	ld	s1,120(sp)
    80005468:	07013903          	ld	s2,112(sp)
    8000546c:	06813983          	ld	s3,104(sp)
    80005470:	06013a03          	ld	s4,96(sp)
    80005474:	05813a83          	ld	s5,88(sp)
    80005478:	05013b03          	ld	s6,80(sp)
    8000547c:	04813b83          	ld	s7,72(sp)
    80005480:	04013c03          	ld	s8,64(sp)
    80005484:	03813c83          	ld	s9,56(sp)
    80005488:	03013d03          	ld	s10,48(sp)
    8000548c:	02813d83          	ld	s11,40(sp)
    80005490:	0d010113          	addi	sp,sp,208
    80005494:	00008067          	ret
    80005498:	07300713          	li	a4,115
    8000549c:	1ce78a63          	beq	a5,a4,80005670 <__printf+0x4b8>
    800054a0:	07800713          	li	a4,120
    800054a4:	1ee79e63          	bne	a5,a4,800056a0 <__printf+0x4e8>
    800054a8:	f7843783          	ld	a5,-136(s0)
    800054ac:	0007a703          	lw	a4,0(a5)
    800054b0:	00878793          	addi	a5,a5,8
    800054b4:	f6f43c23          	sd	a5,-136(s0)
    800054b8:	28074263          	bltz	a4,8000573c <__printf+0x584>
    800054bc:	00002d97          	auipc	s11,0x2
    800054c0:	fa4d8d93          	addi	s11,s11,-92 # 80007460 <digits>
    800054c4:	00f77793          	andi	a5,a4,15
    800054c8:	00fd87b3          	add	a5,s11,a5
    800054cc:	0007c683          	lbu	a3,0(a5)
    800054d0:	00f00613          	li	a2,15
    800054d4:	0007079b          	sext.w	a5,a4
    800054d8:	f8d40023          	sb	a3,-128(s0)
    800054dc:	0047559b          	srliw	a1,a4,0x4
    800054e0:	0047569b          	srliw	a3,a4,0x4
    800054e4:	00000c93          	li	s9,0
    800054e8:	0ee65063          	bge	a2,a4,800055c8 <__printf+0x410>
    800054ec:	00f6f693          	andi	a3,a3,15
    800054f0:	00dd86b3          	add	a3,s11,a3
    800054f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800054f8:	0087d79b          	srliw	a5,a5,0x8
    800054fc:	00100c93          	li	s9,1
    80005500:	f8d400a3          	sb	a3,-127(s0)
    80005504:	0cb67263          	bgeu	a2,a1,800055c8 <__printf+0x410>
    80005508:	00f7f693          	andi	a3,a5,15
    8000550c:	00dd86b3          	add	a3,s11,a3
    80005510:	0006c583          	lbu	a1,0(a3)
    80005514:	00f00613          	li	a2,15
    80005518:	0047d69b          	srliw	a3,a5,0x4
    8000551c:	f8b40123          	sb	a1,-126(s0)
    80005520:	0047d593          	srli	a1,a5,0x4
    80005524:	28f67e63          	bgeu	a2,a5,800057c0 <__printf+0x608>
    80005528:	00f6f693          	andi	a3,a3,15
    8000552c:	00dd86b3          	add	a3,s11,a3
    80005530:	0006c503          	lbu	a0,0(a3)
    80005534:	0087d813          	srli	a6,a5,0x8
    80005538:	0087d69b          	srliw	a3,a5,0x8
    8000553c:	f8a401a3          	sb	a0,-125(s0)
    80005540:	28b67663          	bgeu	a2,a1,800057cc <__printf+0x614>
    80005544:	00f6f693          	andi	a3,a3,15
    80005548:	00dd86b3          	add	a3,s11,a3
    8000554c:	0006c583          	lbu	a1,0(a3)
    80005550:	00c7d513          	srli	a0,a5,0xc
    80005554:	00c7d69b          	srliw	a3,a5,0xc
    80005558:	f8b40223          	sb	a1,-124(s0)
    8000555c:	29067a63          	bgeu	a2,a6,800057f0 <__printf+0x638>
    80005560:	00f6f693          	andi	a3,a3,15
    80005564:	00dd86b3          	add	a3,s11,a3
    80005568:	0006c583          	lbu	a1,0(a3)
    8000556c:	0107d813          	srli	a6,a5,0x10
    80005570:	0107d69b          	srliw	a3,a5,0x10
    80005574:	f8b402a3          	sb	a1,-123(s0)
    80005578:	28a67263          	bgeu	a2,a0,800057fc <__printf+0x644>
    8000557c:	00f6f693          	andi	a3,a3,15
    80005580:	00dd86b3          	add	a3,s11,a3
    80005584:	0006c683          	lbu	a3,0(a3)
    80005588:	0147d79b          	srliw	a5,a5,0x14
    8000558c:	f8d40323          	sb	a3,-122(s0)
    80005590:	21067663          	bgeu	a2,a6,8000579c <__printf+0x5e4>
    80005594:	02079793          	slli	a5,a5,0x20
    80005598:	0207d793          	srli	a5,a5,0x20
    8000559c:	00fd8db3          	add	s11,s11,a5
    800055a0:	000dc683          	lbu	a3,0(s11)
    800055a4:	00800793          	li	a5,8
    800055a8:	00700c93          	li	s9,7
    800055ac:	f8d403a3          	sb	a3,-121(s0)
    800055b0:	00075c63          	bgez	a4,800055c8 <__printf+0x410>
    800055b4:	f9040713          	addi	a4,s0,-112
    800055b8:	00f70733          	add	a4,a4,a5
    800055bc:	02d00693          	li	a3,45
    800055c0:	fed70823          	sb	a3,-16(a4)
    800055c4:	00078c93          	mv	s9,a5
    800055c8:	f8040793          	addi	a5,s0,-128
    800055cc:	01978cb3          	add	s9,a5,s9
    800055d0:	f7f40d13          	addi	s10,s0,-129
    800055d4:	000cc503          	lbu	a0,0(s9)
    800055d8:	fffc8c93          	addi	s9,s9,-1
    800055dc:	00000097          	auipc	ra,0x0
    800055e0:	9f8080e7          	jalr	-1544(ra) # 80004fd4 <consputc>
    800055e4:	ff9d18e3          	bne	s10,s9,800055d4 <__printf+0x41c>
    800055e8:	0100006f          	j	800055f8 <__printf+0x440>
    800055ec:	00000097          	auipc	ra,0x0
    800055f0:	9e8080e7          	jalr	-1560(ra) # 80004fd4 <consputc>
    800055f4:	000c8493          	mv	s1,s9
    800055f8:	00094503          	lbu	a0,0(s2)
    800055fc:	c60510e3          	bnez	a0,8000525c <__printf+0xa4>
    80005600:	e40c0ee3          	beqz	s8,8000545c <__printf+0x2a4>
    80005604:	00004517          	auipc	a0,0x4
    80005608:	74c50513          	addi	a0,a0,1868 # 80009d50 <pr>
    8000560c:	00001097          	auipc	ra,0x1
    80005610:	94c080e7          	jalr	-1716(ra) # 80005f58 <release>
    80005614:	e49ff06f          	j	8000545c <__printf+0x2a4>
    80005618:	f7843783          	ld	a5,-136(s0)
    8000561c:	03000513          	li	a0,48
    80005620:	01000d13          	li	s10,16
    80005624:	00878713          	addi	a4,a5,8
    80005628:	0007bc83          	ld	s9,0(a5)
    8000562c:	f6e43c23          	sd	a4,-136(s0)
    80005630:	00000097          	auipc	ra,0x0
    80005634:	9a4080e7          	jalr	-1628(ra) # 80004fd4 <consputc>
    80005638:	07800513          	li	a0,120
    8000563c:	00000097          	auipc	ra,0x0
    80005640:	998080e7          	jalr	-1640(ra) # 80004fd4 <consputc>
    80005644:	00002d97          	auipc	s11,0x2
    80005648:	e1cd8d93          	addi	s11,s11,-484 # 80007460 <digits>
    8000564c:	03ccd793          	srli	a5,s9,0x3c
    80005650:	00fd87b3          	add	a5,s11,a5
    80005654:	0007c503          	lbu	a0,0(a5)
    80005658:	fffd0d1b          	addiw	s10,s10,-1
    8000565c:	004c9c93          	slli	s9,s9,0x4
    80005660:	00000097          	auipc	ra,0x0
    80005664:	974080e7          	jalr	-1676(ra) # 80004fd4 <consputc>
    80005668:	fe0d12e3          	bnez	s10,8000564c <__printf+0x494>
    8000566c:	f8dff06f          	j	800055f8 <__printf+0x440>
    80005670:	f7843783          	ld	a5,-136(s0)
    80005674:	0007bc83          	ld	s9,0(a5)
    80005678:	00878793          	addi	a5,a5,8
    8000567c:	f6f43c23          	sd	a5,-136(s0)
    80005680:	000c9a63          	bnez	s9,80005694 <__printf+0x4dc>
    80005684:	1080006f          	j	8000578c <__printf+0x5d4>
    80005688:	001c8c93          	addi	s9,s9,1
    8000568c:	00000097          	auipc	ra,0x0
    80005690:	948080e7          	jalr	-1720(ra) # 80004fd4 <consputc>
    80005694:	000cc503          	lbu	a0,0(s9)
    80005698:	fe0518e3          	bnez	a0,80005688 <__printf+0x4d0>
    8000569c:	f5dff06f          	j	800055f8 <__printf+0x440>
    800056a0:	02500513          	li	a0,37
    800056a4:	00000097          	auipc	ra,0x0
    800056a8:	930080e7          	jalr	-1744(ra) # 80004fd4 <consputc>
    800056ac:	000c8513          	mv	a0,s9
    800056b0:	00000097          	auipc	ra,0x0
    800056b4:	924080e7          	jalr	-1756(ra) # 80004fd4 <consputc>
    800056b8:	f41ff06f          	j	800055f8 <__printf+0x440>
    800056bc:	02500513          	li	a0,37
    800056c0:	00000097          	auipc	ra,0x0
    800056c4:	914080e7          	jalr	-1772(ra) # 80004fd4 <consputc>
    800056c8:	f31ff06f          	j	800055f8 <__printf+0x440>
    800056cc:	00030513          	mv	a0,t1
    800056d0:	00000097          	auipc	ra,0x0
    800056d4:	7bc080e7          	jalr	1980(ra) # 80005e8c <acquire>
    800056d8:	b4dff06f          	j	80005224 <__printf+0x6c>
    800056dc:	40c0053b          	negw	a0,a2
    800056e0:	00a00713          	li	a4,10
    800056e4:	02e576bb          	remuw	a3,a0,a4
    800056e8:	00002d97          	auipc	s11,0x2
    800056ec:	d78d8d93          	addi	s11,s11,-648 # 80007460 <digits>
    800056f0:	ff700593          	li	a1,-9
    800056f4:	02069693          	slli	a3,a3,0x20
    800056f8:	0206d693          	srli	a3,a3,0x20
    800056fc:	00dd86b3          	add	a3,s11,a3
    80005700:	0006c683          	lbu	a3,0(a3)
    80005704:	02e557bb          	divuw	a5,a0,a4
    80005708:	f8d40023          	sb	a3,-128(s0)
    8000570c:	10b65e63          	bge	a2,a1,80005828 <__printf+0x670>
    80005710:	06300593          	li	a1,99
    80005714:	02e7f6bb          	remuw	a3,a5,a4
    80005718:	02069693          	slli	a3,a3,0x20
    8000571c:	0206d693          	srli	a3,a3,0x20
    80005720:	00dd86b3          	add	a3,s11,a3
    80005724:	0006c683          	lbu	a3,0(a3)
    80005728:	02e7d73b          	divuw	a4,a5,a4
    8000572c:	00200793          	li	a5,2
    80005730:	f8d400a3          	sb	a3,-127(s0)
    80005734:	bca5ece3          	bltu	a1,a0,8000530c <__printf+0x154>
    80005738:	ce5ff06f          	j	8000541c <__printf+0x264>
    8000573c:	40e007bb          	negw	a5,a4
    80005740:	00002d97          	auipc	s11,0x2
    80005744:	d20d8d93          	addi	s11,s11,-736 # 80007460 <digits>
    80005748:	00f7f693          	andi	a3,a5,15
    8000574c:	00dd86b3          	add	a3,s11,a3
    80005750:	0006c583          	lbu	a1,0(a3)
    80005754:	ff100613          	li	a2,-15
    80005758:	0047d69b          	srliw	a3,a5,0x4
    8000575c:	f8b40023          	sb	a1,-128(s0)
    80005760:	0047d59b          	srliw	a1,a5,0x4
    80005764:	0ac75e63          	bge	a4,a2,80005820 <__printf+0x668>
    80005768:	00f6f693          	andi	a3,a3,15
    8000576c:	00dd86b3          	add	a3,s11,a3
    80005770:	0006c603          	lbu	a2,0(a3)
    80005774:	00f00693          	li	a3,15
    80005778:	0087d79b          	srliw	a5,a5,0x8
    8000577c:	f8c400a3          	sb	a2,-127(s0)
    80005780:	d8b6e4e3          	bltu	a3,a1,80005508 <__printf+0x350>
    80005784:	00200793          	li	a5,2
    80005788:	e2dff06f          	j	800055b4 <__printf+0x3fc>
    8000578c:	00002c97          	auipc	s9,0x2
    80005790:	cb4c8c93          	addi	s9,s9,-844 # 80007440 <CONSOLE_STATUS+0x430>
    80005794:	02800513          	li	a0,40
    80005798:	ef1ff06f          	j	80005688 <__printf+0x4d0>
    8000579c:	00700793          	li	a5,7
    800057a0:	00600c93          	li	s9,6
    800057a4:	e0dff06f          	j	800055b0 <__printf+0x3f8>
    800057a8:	00700793          	li	a5,7
    800057ac:	00600c93          	li	s9,6
    800057b0:	c69ff06f          	j	80005418 <__printf+0x260>
    800057b4:	00300793          	li	a5,3
    800057b8:	00200c93          	li	s9,2
    800057bc:	c5dff06f          	j	80005418 <__printf+0x260>
    800057c0:	00300793          	li	a5,3
    800057c4:	00200c93          	li	s9,2
    800057c8:	de9ff06f          	j	800055b0 <__printf+0x3f8>
    800057cc:	00400793          	li	a5,4
    800057d0:	00300c93          	li	s9,3
    800057d4:	dddff06f          	j	800055b0 <__printf+0x3f8>
    800057d8:	00400793          	li	a5,4
    800057dc:	00300c93          	li	s9,3
    800057e0:	c39ff06f          	j	80005418 <__printf+0x260>
    800057e4:	00500793          	li	a5,5
    800057e8:	00400c93          	li	s9,4
    800057ec:	c2dff06f          	j	80005418 <__printf+0x260>
    800057f0:	00500793          	li	a5,5
    800057f4:	00400c93          	li	s9,4
    800057f8:	db9ff06f          	j	800055b0 <__printf+0x3f8>
    800057fc:	00600793          	li	a5,6
    80005800:	00500c93          	li	s9,5
    80005804:	dadff06f          	j	800055b0 <__printf+0x3f8>
    80005808:	00600793          	li	a5,6
    8000580c:	00500c93          	li	s9,5
    80005810:	c09ff06f          	j	80005418 <__printf+0x260>
    80005814:	00800793          	li	a5,8
    80005818:	00700c93          	li	s9,7
    8000581c:	bfdff06f          	j	80005418 <__printf+0x260>
    80005820:	00100793          	li	a5,1
    80005824:	d91ff06f          	j	800055b4 <__printf+0x3fc>
    80005828:	00100793          	li	a5,1
    8000582c:	bf1ff06f          	j	8000541c <__printf+0x264>
    80005830:	00900793          	li	a5,9
    80005834:	00800c93          	li	s9,8
    80005838:	be1ff06f          	j	80005418 <__printf+0x260>
    8000583c:	00002517          	auipc	a0,0x2
    80005840:	c0c50513          	addi	a0,a0,-1012 # 80007448 <CONSOLE_STATUS+0x438>
    80005844:	00000097          	auipc	ra,0x0
    80005848:	918080e7          	jalr	-1768(ra) # 8000515c <panic>

000000008000584c <printfinit>:
    8000584c:	fe010113          	addi	sp,sp,-32
    80005850:	00813823          	sd	s0,16(sp)
    80005854:	00913423          	sd	s1,8(sp)
    80005858:	00113c23          	sd	ra,24(sp)
    8000585c:	02010413          	addi	s0,sp,32
    80005860:	00004497          	auipc	s1,0x4
    80005864:	4f048493          	addi	s1,s1,1264 # 80009d50 <pr>
    80005868:	00048513          	mv	a0,s1
    8000586c:	00002597          	auipc	a1,0x2
    80005870:	bec58593          	addi	a1,a1,-1044 # 80007458 <CONSOLE_STATUS+0x448>
    80005874:	00000097          	auipc	ra,0x0
    80005878:	5f4080e7          	jalr	1524(ra) # 80005e68 <initlock>
    8000587c:	01813083          	ld	ra,24(sp)
    80005880:	01013403          	ld	s0,16(sp)
    80005884:	0004ac23          	sw	zero,24(s1)
    80005888:	00813483          	ld	s1,8(sp)
    8000588c:	02010113          	addi	sp,sp,32
    80005890:	00008067          	ret

0000000080005894 <uartinit>:
    80005894:	ff010113          	addi	sp,sp,-16
    80005898:	00813423          	sd	s0,8(sp)
    8000589c:	01010413          	addi	s0,sp,16
    800058a0:	100007b7          	lui	a5,0x10000
    800058a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800058a8:	f8000713          	li	a4,-128
    800058ac:	00e781a3          	sb	a4,3(a5)
    800058b0:	00300713          	li	a4,3
    800058b4:	00e78023          	sb	a4,0(a5)
    800058b8:	000780a3          	sb	zero,1(a5)
    800058bc:	00e781a3          	sb	a4,3(a5)
    800058c0:	00700693          	li	a3,7
    800058c4:	00d78123          	sb	a3,2(a5)
    800058c8:	00e780a3          	sb	a4,1(a5)
    800058cc:	00813403          	ld	s0,8(sp)
    800058d0:	01010113          	addi	sp,sp,16
    800058d4:	00008067          	ret

00000000800058d8 <uartputc>:
    800058d8:	00003797          	auipc	a5,0x3
    800058dc:	1d07a783          	lw	a5,464(a5) # 80008aa8 <panicked>
    800058e0:	00078463          	beqz	a5,800058e8 <uartputc+0x10>
    800058e4:	0000006f          	j	800058e4 <uartputc+0xc>
    800058e8:	fd010113          	addi	sp,sp,-48
    800058ec:	02813023          	sd	s0,32(sp)
    800058f0:	00913c23          	sd	s1,24(sp)
    800058f4:	01213823          	sd	s2,16(sp)
    800058f8:	01313423          	sd	s3,8(sp)
    800058fc:	02113423          	sd	ra,40(sp)
    80005900:	03010413          	addi	s0,sp,48
    80005904:	00003917          	auipc	s2,0x3
    80005908:	1ac90913          	addi	s2,s2,428 # 80008ab0 <uart_tx_r>
    8000590c:	00093783          	ld	a5,0(s2)
    80005910:	00003497          	auipc	s1,0x3
    80005914:	1a848493          	addi	s1,s1,424 # 80008ab8 <uart_tx_w>
    80005918:	0004b703          	ld	a4,0(s1)
    8000591c:	02078693          	addi	a3,a5,32
    80005920:	00050993          	mv	s3,a0
    80005924:	02e69c63          	bne	a3,a4,8000595c <uartputc+0x84>
    80005928:	00001097          	auipc	ra,0x1
    8000592c:	834080e7          	jalr	-1996(ra) # 8000615c <push_on>
    80005930:	00093783          	ld	a5,0(s2)
    80005934:	0004b703          	ld	a4,0(s1)
    80005938:	02078793          	addi	a5,a5,32
    8000593c:	00e79463          	bne	a5,a4,80005944 <uartputc+0x6c>
    80005940:	0000006f          	j	80005940 <uartputc+0x68>
    80005944:	00001097          	auipc	ra,0x1
    80005948:	88c080e7          	jalr	-1908(ra) # 800061d0 <pop_on>
    8000594c:	00093783          	ld	a5,0(s2)
    80005950:	0004b703          	ld	a4,0(s1)
    80005954:	02078693          	addi	a3,a5,32
    80005958:	fce688e3          	beq	a3,a4,80005928 <uartputc+0x50>
    8000595c:	01f77693          	andi	a3,a4,31
    80005960:	00004597          	auipc	a1,0x4
    80005964:	41058593          	addi	a1,a1,1040 # 80009d70 <uart_tx_buf>
    80005968:	00d586b3          	add	a3,a1,a3
    8000596c:	00170713          	addi	a4,a4,1
    80005970:	01368023          	sb	s3,0(a3)
    80005974:	00e4b023          	sd	a4,0(s1)
    80005978:	10000637          	lui	a2,0x10000
    8000597c:	02f71063          	bne	a4,a5,8000599c <uartputc+0xc4>
    80005980:	0340006f          	j	800059b4 <uartputc+0xdc>
    80005984:	00074703          	lbu	a4,0(a4)
    80005988:	00f93023          	sd	a5,0(s2)
    8000598c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005990:	00093783          	ld	a5,0(s2)
    80005994:	0004b703          	ld	a4,0(s1)
    80005998:	00f70e63          	beq	a4,a5,800059b4 <uartputc+0xdc>
    8000599c:	00564683          	lbu	a3,5(a2)
    800059a0:	01f7f713          	andi	a4,a5,31
    800059a4:	00e58733          	add	a4,a1,a4
    800059a8:	0206f693          	andi	a3,a3,32
    800059ac:	00178793          	addi	a5,a5,1
    800059b0:	fc069ae3          	bnez	a3,80005984 <uartputc+0xac>
    800059b4:	02813083          	ld	ra,40(sp)
    800059b8:	02013403          	ld	s0,32(sp)
    800059bc:	01813483          	ld	s1,24(sp)
    800059c0:	01013903          	ld	s2,16(sp)
    800059c4:	00813983          	ld	s3,8(sp)
    800059c8:	03010113          	addi	sp,sp,48
    800059cc:	00008067          	ret

00000000800059d0 <uartputc_sync>:
    800059d0:	ff010113          	addi	sp,sp,-16
    800059d4:	00813423          	sd	s0,8(sp)
    800059d8:	01010413          	addi	s0,sp,16
    800059dc:	00003717          	auipc	a4,0x3
    800059e0:	0cc72703          	lw	a4,204(a4) # 80008aa8 <panicked>
    800059e4:	02071663          	bnez	a4,80005a10 <uartputc_sync+0x40>
    800059e8:	00050793          	mv	a5,a0
    800059ec:	100006b7          	lui	a3,0x10000
    800059f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800059f4:	02077713          	andi	a4,a4,32
    800059f8:	fe070ce3          	beqz	a4,800059f0 <uartputc_sync+0x20>
    800059fc:	0ff7f793          	andi	a5,a5,255
    80005a00:	00f68023          	sb	a5,0(a3)
    80005a04:	00813403          	ld	s0,8(sp)
    80005a08:	01010113          	addi	sp,sp,16
    80005a0c:	00008067          	ret
    80005a10:	0000006f          	j	80005a10 <uartputc_sync+0x40>

0000000080005a14 <uartstart>:
    80005a14:	ff010113          	addi	sp,sp,-16
    80005a18:	00813423          	sd	s0,8(sp)
    80005a1c:	01010413          	addi	s0,sp,16
    80005a20:	00003617          	auipc	a2,0x3
    80005a24:	09060613          	addi	a2,a2,144 # 80008ab0 <uart_tx_r>
    80005a28:	00003517          	auipc	a0,0x3
    80005a2c:	09050513          	addi	a0,a0,144 # 80008ab8 <uart_tx_w>
    80005a30:	00063783          	ld	a5,0(a2)
    80005a34:	00053703          	ld	a4,0(a0)
    80005a38:	04f70263          	beq	a4,a5,80005a7c <uartstart+0x68>
    80005a3c:	100005b7          	lui	a1,0x10000
    80005a40:	00004817          	auipc	a6,0x4
    80005a44:	33080813          	addi	a6,a6,816 # 80009d70 <uart_tx_buf>
    80005a48:	01c0006f          	j	80005a64 <uartstart+0x50>
    80005a4c:	0006c703          	lbu	a4,0(a3)
    80005a50:	00f63023          	sd	a5,0(a2)
    80005a54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005a58:	00063783          	ld	a5,0(a2)
    80005a5c:	00053703          	ld	a4,0(a0)
    80005a60:	00f70e63          	beq	a4,a5,80005a7c <uartstart+0x68>
    80005a64:	01f7f713          	andi	a4,a5,31
    80005a68:	00e806b3          	add	a3,a6,a4
    80005a6c:	0055c703          	lbu	a4,5(a1)
    80005a70:	00178793          	addi	a5,a5,1
    80005a74:	02077713          	andi	a4,a4,32
    80005a78:	fc071ae3          	bnez	a4,80005a4c <uartstart+0x38>
    80005a7c:	00813403          	ld	s0,8(sp)
    80005a80:	01010113          	addi	sp,sp,16
    80005a84:	00008067          	ret

0000000080005a88 <uartgetc>:
    80005a88:	ff010113          	addi	sp,sp,-16
    80005a8c:	00813423          	sd	s0,8(sp)
    80005a90:	01010413          	addi	s0,sp,16
    80005a94:	10000737          	lui	a4,0x10000
    80005a98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80005a9c:	0017f793          	andi	a5,a5,1
    80005aa0:	00078c63          	beqz	a5,80005ab8 <uartgetc+0x30>
    80005aa4:	00074503          	lbu	a0,0(a4)
    80005aa8:	0ff57513          	andi	a0,a0,255
    80005aac:	00813403          	ld	s0,8(sp)
    80005ab0:	01010113          	addi	sp,sp,16
    80005ab4:	00008067          	ret
    80005ab8:	fff00513          	li	a0,-1
    80005abc:	ff1ff06f          	j	80005aac <uartgetc+0x24>

0000000080005ac0 <uartintr>:
    80005ac0:	100007b7          	lui	a5,0x10000
    80005ac4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005ac8:	0017f793          	andi	a5,a5,1
    80005acc:	0a078463          	beqz	a5,80005b74 <uartintr+0xb4>
    80005ad0:	fe010113          	addi	sp,sp,-32
    80005ad4:	00813823          	sd	s0,16(sp)
    80005ad8:	00913423          	sd	s1,8(sp)
    80005adc:	00113c23          	sd	ra,24(sp)
    80005ae0:	02010413          	addi	s0,sp,32
    80005ae4:	100004b7          	lui	s1,0x10000
    80005ae8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80005aec:	0ff57513          	andi	a0,a0,255
    80005af0:	fffff097          	auipc	ra,0xfffff
    80005af4:	534080e7          	jalr	1332(ra) # 80005024 <consoleintr>
    80005af8:	0054c783          	lbu	a5,5(s1)
    80005afc:	0017f793          	andi	a5,a5,1
    80005b00:	fe0794e3          	bnez	a5,80005ae8 <uartintr+0x28>
    80005b04:	00003617          	auipc	a2,0x3
    80005b08:	fac60613          	addi	a2,a2,-84 # 80008ab0 <uart_tx_r>
    80005b0c:	00003517          	auipc	a0,0x3
    80005b10:	fac50513          	addi	a0,a0,-84 # 80008ab8 <uart_tx_w>
    80005b14:	00063783          	ld	a5,0(a2)
    80005b18:	00053703          	ld	a4,0(a0)
    80005b1c:	04f70263          	beq	a4,a5,80005b60 <uartintr+0xa0>
    80005b20:	100005b7          	lui	a1,0x10000
    80005b24:	00004817          	auipc	a6,0x4
    80005b28:	24c80813          	addi	a6,a6,588 # 80009d70 <uart_tx_buf>
    80005b2c:	01c0006f          	j	80005b48 <uartintr+0x88>
    80005b30:	0006c703          	lbu	a4,0(a3)
    80005b34:	00f63023          	sd	a5,0(a2)
    80005b38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005b3c:	00063783          	ld	a5,0(a2)
    80005b40:	00053703          	ld	a4,0(a0)
    80005b44:	00f70e63          	beq	a4,a5,80005b60 <uartintr+0xa0>
    80005b48:	01f7f713          	andi	a4,a5,31
    80005b4c:	00e806b3          	add	a3,a6,a4
    80005b50:	0055c703          	lbu	a4,5(a1)
    80005b54:	00178793          	addi	a5,a5,1
    80005b58:	02077713          	andi	a4,a4,32
    80005b5c:	fc071ae3          	bnez	a4,80005b30 <uartintr+0x70>
    80005b60:	01813083          	ld	ra,24(sp)
    80005b64:	01013403          	ld	s0,16(sp)
    80005b68:	00813483          	ld	s1,8(sp)
    80005b6c:	02010113          	addi	sp,sp,32
    80005b70:	00008067          	ret
    80005b74:	00003617          	auipc	a2,0x3
    80005b78:	f3c60613          	addi	a2,a2,-196 # 80008ab0 <uart_tx_r>
    80005b7c:	00003517          	auipc	a0,0x3
    80005b80:	f3c50513          	addi	a0,a0,-196 # 80008ab8 <uart_tx_w>
    80005b84:	00063783          	ld	a5,0(a2)
    80005b88:	00053703          	ld	a4,0(a0)
    80005b8c:	04f70263          	beq	a4,a5,80005bd0 <uartintr+0x110>
    80005b90:	100005b7          	lui	a1,0x10000
    80005b94:	00004817          	auipc	a6,0x4
    80005b98:	1dc80813          	addi	a6,a6,476 # 80009d70 <uart_tx_buf>
    80005b9c:	01c0006f          	j	80005bb8 <uartintr+0xf8>
    80005ba0:	0006c703          	lbu	a4,0(a3)
    80005ba4:	00f63023          	sd	a5,0(a2)
    80005ba8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005bac:	00063783          	ld	a5,0(a2)
    80005bb0:	00053703          	ld	a4,0(a0)
    80005bb4:	02f70063          	beq	a4,a5,80005bd4 <uartintr+0x114>
    80005bb8:	01f7f713          	andi	a4,a5,31
    80005bbc:	00e806b3          	add	a3,a6,a4
    80005bc0:	0055c703          	lbu	a4,5(a1)
    80005bc4:	00178793          	addi	a5,a5,1
    80005bc8:	02077713          	andi	a4,a4,32
    80005bcc:	fc071ae3          	bnez	a4,80005ba0 <uartintr+0xe0>
    80005bd0:	00008067          	ret
    80005bd4:	00008067          	ret

0000000080005bd8 <kinit>:
    80005bd8:	fc010113          	addi	sp,sp,-64
    80005bdc:	02913423          	sd	s1,40(sp)
    80005be0:	fffff7b7          	lui	a5,0xfffff
    80005be4:	00005497          	auipc	s1,0x5
    80005be8:	1ab48493          	addi	s1,s1,427 # 8000ad8f <end+0xfff>
    80005bec:	02813823          	sd	s0,48(sp)
    80005bf0:	01313c23          	sd	s3,24(sp)
    80005bf4:	00f4f4b3          	and	s1,s1,a5
    80005bf8:	02113c23          	sd	ra,56(sp)
    80005bfc:	03213023          	sd	s2,32(sp)
    80005c00:	01413823          	sd	s4,16(sp)
    80005c04:	01513423          	sd	s5,8(sp)
    80005c08:	04010413          	addi	s0,sp,64
    80005c0c:	000017b7          	lui	a5,0x1
    80005c10:	01100993          	li	s3,17
    80005c14:	00f487b3          	add	a5,s1,a5
    80005c18:	01b99993          	slli	s3,s3,0x1b
    80005c1c:	06f9e063          	bltu	s3,a5,80005c7c <kinit+0xa4>
    80005c20:	00004a97          	auipc	s5,0x4
    80005c24:	170a8a93          	addi	s5,s5,368 # 80009d90 <end>
    80005c28:	0754ec63          	bltu	s1,s5,80005ca0 <kinit+0xc8>
    80005c2c:	0734fa63          	bgeu	s1,s3,80005ca0 <kinit+0xc8>
    80005c30:	00088a37          	lui	s4,0x88
    80005c34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005c38:	00003917          	auipc	s2,0x3
    80005c3c:	e8890913          	addi	s2,s2,-376 # 80008ac0 <kmem>
    80005c40:	00ca1a13          	slli	s4,s4,0xc
    80005c44:	0140006f          	j	80005c58 <kinit+0x80>
    80005c48:	000017b7          	lui	a5,0x1
    80005c4c:	00f484b3          	add	s1,s1,a5
    80005c50:	0554e863          	bltu	s1,s5,80005ca0 <kinit+0xc8>
    80005c54:	0534f663          	bgeu	s1,s3,80005ca0 <kinit+0xc8>
    80005c58:	00001637          	lui	a2,0x1
    80005c5c:	00100593          	li	a1,1
    80005c60:	00048513          	mv	a0,s1
    80005c64:	00000097          	auipc	ra,0x0
    80005c68:	5e4080e7          	jalr	1508(ra) # 80006248 <__memset>
    80005c6c:	00093783          	ld	a5,0(s2)
    80005c70:	00f4b023          	sd	a5,0(s1)
    80005c74:	00993023          	sd	s1,0(s2)
    80005c78:	fd4498e3          	bne	s1,s4,80005c48 <kinit+0x70>
    80005c7c:	03813083          	ld	ra,56(sp)
    80005c80:	03013403          	ld	s0,48(sp)
    80005c84:	02813483          	ld	s1,40(sp)
    80005c88:	02013903          	ld	s2,32(sp)
    80005c8c:	01813983          	ld	s3,24(sp)
    80005c90:	01013a03          	ld	s4,16(sp)
    80005c94:	00813a83          	ld	s5,8(sp)
    80005c98:	04010113          	addi	sp,sp,64
    80005c9c:	00008067          	ret
    80005ca0:	00001517          	auipc	a0,0x1
    80005ca4:	7d850513          	addi	a0,a0,2008 # 80007478 <digits+0x18>
    80005ca8:	fffff097          	auipc	ra,0xfffff
    80005cac:	4b4080e7          	jalr	1204(ra) # 8000515c <panic>

0000000080005cb0 <freerange>:
    80005cb0:	fc010113          	addi	sp,sp,-64
    80005cb4:	000017b7          	lui	a5,0x1
    80005cb8:	02913423          	sd	s1,40(sp)
    80005cbc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005cc0:	009504b3          	add	s1,a0,s1
    80005cc4:	fffff537          	lui	a0,0xfffff
    80005cc8:	02813823          	sd	s0,48(sp)
    80005ccc:	02113c23          	sd	ra,56(sp)
    80005cd0:	03213023          	sd	s2,32(sp)
    80005cd4:	01313c23          	sd	s3,24(sp)
    80005cd8:	01413823          	sd	s4,16(sp)
    80005cdc:	01513423          	sd	s5,8(sp)
    80005ce0:	01613023          	sd	s6,0(sp)
    80005ce4:	04010413          	addi	s0,sp,64
    80005ce8:	00a4f4b3          	and	s1,s1,a0
    80005cec:	00f487b3          	add	a5,s1,a5
    80005cf0:	06f5e463          	bltu	a1,a5,80005d58 <freerange+0xa8>
    80005cf4:	00004a97          	auipc	s5,0x4
    80005cf8:	09ca8a93          	addi	s5,s5,156 # 80009d90 <end>
    80005cfc:	0954e263          	bltu	s1,s5,80005d80 <freerange+0xd0>
    80005d00:	01100993          	li	s3,17
    80005d04:	01b99993          	slli	s3,s3,0x1b
    80005d08:	0734fc63          	bgeu	s1,s3,80005d80 <freerange+0xd0>
    80005d0c:	00058a13          	mv	s4,a1
    80005d10:	00003917          	auipc	s2,0x3
    80005d14:	db090913          	addi	s2,s2,-592 # 80008ac0 <kmem>
    80005d18:	00002b37          	lui	s6,0x2
    80005d1c:	0140006f          	j	80005d30 <freerange+0x80>
    80005d20:	000017b7          	lui	a5,0x1
    80005d24:	00f484b3          	add	s1,s1,a5
    80005d28:	0554ec63          	bltu	s1,s5,80005d80 <freerange+0xd0>
    80005d2c:	0534fa63          	bgeu	s1,s3,80005d80 <freerange+0xd0>
    80005d30:	00001637          	lui	a2,0x1
    80005d34:	00100593          	li	a1,1
    80005d38:	00048513          	mv	a0,s1
    80005d3c:	00000097          	auipc	ra,0x0
    80005d40:	50c080e7          	jalr	1292(ra) # 80006248 <__memset>
    80005d44:	00093703          	ld	a4,0(s2)
    80005d48:	016487b3          	add	a5,s1,s6
    80005d4c:	00e4b023          	sd	a4,0(s1)
    80005d50:	00993023          	sd	s1,0(s2)
    80005d54:	fcfa76e3          	bgeu	s4,a5,80005d20 <freerange+0x70>
    80005d58:	03813083          	ld	ra,56(sp)
    80005d5c:	03013403          	ld	s0,48(sp)
    80005d60:	02813483          	ld	s1,40(sp)
    80005d64:	02013903          	ld	s2,32(sp)
    80005d68:	01813983          	ld	s3,24(sp)
    80005d6c:	01013a03          	ld	s4,16(sp)
    80005d70:	00813a83          	ld	s5,8(sp)
    80005d74:	00013b03          	ld	s6,0(sp)
    80005d78:	04010113          	addi	sp,sp,64
    80005d7c:	00008067          	ret
    80005d80:	00001517          	auipc	a0,0x1
    80005d84:	6f850513          	addi	a0,a0,1784 # 80007478 <digits+0x18>
    80005d88:	fffff097          	auipc	ra,0xfffff
    80005d8c:	3d4080e7          	jalr	980(ra) # 8000515c <panic>

0000000080005d90 <kfree>:
    80005d90:	fe010113          	addi	sp,sp,-32
    80005d94:	00813823          	sd	s0,16(sp)
    80005d98:	00113c23          	sd	ra,24(sp)
    80005d9c:	00913423          	sd	s1,8(sp)
    80005da0:	02010413          	addi	s0,sp,32
    80005da4:	03451793          	slli	a5,a0,0x34
    80005da8:	04079c63          	bnez	a5,80005e00 <kfree+0x70>
    80005dac:	00004797          	auipc	a5,0x4
    80005db0:	fe478793          	addi	a5,a5,-28 # 80009d90 <end>
    80005db4:	00050493          	mv	s1,a0
    80005db8:	04f56463          	bltu	a0,a5,80005e00 <kfree+0x70>
    80005dbc:	01100793          	li	a5,17
    80005dc0:	01b79793          	slli	a5,a5,0x1b
    80005dc4:	02f57e63          	bgeu	a0,a5,80005e00 <kfree+0x70>
    80005dc8:	00001637          	lui	a2,0x1
    80005dcc:	00100593          	li	a1,1
    80005dd0:	00000097          	auipc	ra,0x0
    80005dd4:	478080e7          	jalr	1144(ra) # 80006248 <__memset>
    80005dd8:	00003797          	auipc	a5,0x3
    80005ddc:	ce878793          	addi	a5,a5,-792 # 80008ac0 <kmem>
    80005de0:	0007b703          	ld	a4,0(a5)
    80005de4:	01813083          	ld	ra,24(sp)
    80005de8:	01013403          	ld	s0,16(sp)
    80005dec:	00e4b023          	sd	a4,0(s1)
    80005df0:	0097b023          	sd	s1,0(a5)
    80005df4:	00813483          	ld	s1,8(sp)
    80005df8:	02010113          	addi	sp,sp,32
    80005dfc:	00008067          	ret
    80005e00:	00001517          	auipc	a0,0x1
    80005e04:	67850513          	addi	a0,a0,1656 # 80007478 <digits+0x18>
    80005e08:	fffff097          	auipc	ra,0xfffff
    80005e0c:	354080e7          	jalr	852(ra) # 8000515c <panic>

0000000080005e10 <kalloc>:
    80005e10:	fe010113          	addi	sp,sp,-32
    80005e14:	00813823          	sd	s0,16(sp)
    80005e18:	00913423          	sd	s1,8(sp)
    80005e1c:	00113c23          	sd	ra,24(sp)
    80005e20:	02010413          	addi	s0,sp,32
    80005e24:	00003797          	auipc	a5,0x3
    80005e28:	c9c78793          	addi	a5,a5,-868 # 80008ac0 <kmem>
    80005e2c:	0007b483          	ld	s1,0(a5)
    80005e30:	02048063          	beqz	s1,80005e50 <kalloc+0x40>
    80005e34:	0004b703          	ld	a4,0(s1)
    80005e38:	00001637          	lui	a2,0x1
    80005e3c:	00500593          	li	a1,5
    80005e40:	00048513          	mv	a0,s1
    80005e44:	00e7b023          	sd	a4,0(a5)
    80005e48:	00000097          	auipc	ra,0x0
    80005e4c:	400080e7          	jalr	1024(ra) # 80006248 <__memset>
    80005e50:	01813083          	ld	ra,24(sp)
    80005e54:	01013403          	ld	s0,16(sp)
    80005e58:	00048513          	mv	a0,s1
    80005e5c:	00813483          	ld	s1,8(sp)
    80005e60:	02010113          	addi	sp,sp,32
    80005e64:	00008067          	ret

0000000080005e68 <initlock>:
    80005e68:	ff010113          	addi	sp,sp,-16
    80005e6c:	00813423          	sd	s0,8(sp)
    80005e70:	01010413          	addi	s0,sp,16
    80005e74:	00813403          	ld	s0,8(sp)
    80005e78:	00b53423          	sd	a1,8(a0)
    80005e7c:	00052023          	sw	zero,0(a0)
    80005e80:	00053823          	sd	zero,16(a0)
    80005e84:	01010113          	addi	sp,sp,16
    80005e88:	00008067          	ret

0000000080005e8c <acquire>:
    80005e8c:	fe010113          	addi	sp,sp,-32
    80005e90:	00813823          	sd	s0,16(sp)
    80005e94:	00913423          	sd	s1,8(sp)
    80005e98:	00113c23          	sd	ra,24(sp)
    80005e9c:	01213023          	sd	s2,0(sp)
    80005ea0:	02010413          	addi	s0,sp,32
    80005ea4:	00050493          	mv	s1,a0
    80005ea8:	10002973          	csrr	s2,sstatus
    80005eac:	100027f3          	csrr	a5,sstatus
    80005eb0:	ffd7f793          	andi	a5,a5,-3
    80005eb4:	10079073          	csrw	sstatus,a5
    80005eb8:	fffff097          	auipc	ra,0xfffff
    80005ebc:	8e8080e7          	jalr	-1816(ra) # 800047a0 <mycpu>
    80005ec0:	07852783          	lw	a5,120(a0)
    80005ec4:	06078e63          	beqz	a5,80005f40 <acquire+0xb4>
    80005ec8:	fffff097          	auipc	ra,0xfffff
    80005ecc:	8d8080e7          	jalr	-1832(ra) # 800047a0 <mycpu>
    80005ed0:	07852783          	lw	a5,120(a0)
    80005ed4:	0004a703          	lw	a4,0(s1)
    80005ed8:	0017879b          	addiw	a5,a5,1
    80005edc:	06f52c23          	sw	a5,120(a0)
    80005ee0:	04071063          	bnez	a4,80005f20 <acquire+0x94>
    80005ee4:	00100713          	li	a4,1
    80005ee8:	00070793          	mv	a5,a4
    80005eec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005ef0:	0007879b          	sext.w	a5,a5
    80005ef4:	fe079ae3          	bnez	a5,80005ee8 <acquire+0x5c>
    80005ef8:	0ff0000f          	fence
    80005efc:	fffff097          	auipc	ra,0xfffff
    80005f00:	8a4080e7          	jalr	-1884(ra) # 800047a0 <mycpu>
    80005f04:	01813083          	ld	ra,24(sp)
    80005f08:	01013403          	ld	s0,16(sp)
    80005f0c:	00a4b823          	sd	a0,16(s1)
    80005f10:	00013903          	ld	s2,0(sp)
    80005f14:	00813483          	ld	s1,8(sp)
    80005f18:	02010113          	addi	sp,sp,32
    80005f1c:	00008067          	ret
    80005f20:	0104b903          	ld	s2,16(s1)
    80005f24:	fffff097          	auipc	ra,0xfffff
    80005f28:	87c080e7          	jalr	-1924(ra) # 800047a0 <mycpu>
    80005f2c:	faa91ce3          	bne	s2,a0,80005ee4 <acquire+0x58>
    80005f30:	00001517          	auipc	a0,0x1
    80005f34:	55050513          	addi	a0,a0,1360 # 80007480 <digits+0x20>
    80005f38:	fffff097          	auipc	ra,0xfffff
    80005f3c:	224080e7          	jalr	548(ra) # 8000515c <panic>
    80005f40:	00195913          	srli	s2,s2,0x1
    80005f44:	fffff097          	auipc	ra,0xfffff
    80005f48:	85c080e7          	jalr	-1956(ra) # 800047a0 <mycpu>
    80005f4c:	00197913          	andi	s2,s2,1
    80005f50:	07252e23          	sw	s2,124(a0)
    80005f54:	f75ff06f          	j	80005ec8 <acquire+0x3c>

0000000080005f58 <release>:
    80005f58:	fe010113          	addi	sp,sp,-32
    80005f5c:	00813823          	sd	s0,16(sp)
    80005f60:	00113c23          	sd	ra,24(sp)
    80005f64:	00913423          	sd	s1,8(sp)
    80005f68:	01213023          	sd	s2,0(sp)
    80005f6c:	02010413          	addi	s0,sp,32
    80005f70:	00052783          	lw	a5,0(a0)
    80005f74:	00079a63          	bnez	a5,80005f88 <release+0x30>
    80005f78:	00001517          	auipc	a0,0x1
    80005f7c:	51050513          	addi	a0,a0,1296 # 80007488 <digits+0x28>
    80005f80:	fffff097          	auipc	ra,0xfffff
    80005f84:	1dc080e7          	jalr	476(ra) # 8000515c <panic>
    80005f88:	01053903          	ld	s2,16(a0)
    80005f8c:	00050493          	mv	s1,a0
    80005f90:	fffff097          	auipc	ra,0xfffff
    80005f94:	810080e7          	jalr	-2032(ra) # 800047a0 <mycpu>
    80005f98:	fea910e3          	bne	s2,a0,80005f78 <release+0x20>
    80005f9c:	0004b823          	sd	zero,16(s1)
    80005fa0:	0ff0000f          	fence
    80005fa4:	0f50000f          	fence	iorw,ow
    80005fa8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80005fac:	ffffe097          	auipc	ra,0xffffe
    80005fb0:	7f4080e7          	jalr	2036(ra) # 800047a0 <mycpu>
    80005fb4:	100027f3          	csrr	a5,sstatus
    80005fb8:	0027f793          	andi	a5,a5,2
    80005fbc:	04079a63          	bnez	a5,80006010 <release+0xb8>
    80005fc0:	07852783          	lw	a5,120(a0)
    80005fc4:	02f05e63          	blez	a5,80006000 <release+0xa8>
    80005fc8:	fff7871b          	addiw	a4,a5,-1
    80005fcc:	06e52c23          	sw	a4,120(a0)
    80005fd0:	00071c63          	bnez	a4,80005fe8 <release+0x90>
    80005fd4:	07c52783          	lw	a5,124(a0)
    80005fd8:	00078863          	beqz	a5,80005fe8 <release+0x90>
    80005fdc:	100027f3          	csrr	a5,sstatus
    80005fe0:	0027e793          	ori	a5,a5,2
    80005fe4:	10079073          	csrw	sstatus,a5
    80005fe8:	01813083          	ld	ra,24(sp)
    80005fec:	01013403          	ld	s0,16(sp)
    80005ff0:	00813483          	ld	s1,8(sp)
    80005ff4:	00013903          	ld	s2,0(sp)
    80005ff8:	02010113          	addi	sp,sp,32
    80005ffc:	00008067          	ret
    80006000:	00001517          	auipc	a0,0x1
    80006004:	4a850513          	addi	a0,a0,1192 # 800074a8 <digits+0x48>
    80006008:	fffff097          	auipc	ra,0xfffff
    8000600c:	154080e7          	jalr	340(ra) # 8000515c <panic>
    80006010:	00001517          	auipc	a0,0x1
    80006014:	48050513          	addi	a0,a0,1152 # 80007490 <digits+0x30>
    80006018:	fffff097          	auipc	ra,0xfffff
    8000601c:	144080e7          	jalr	324(ra) # 8000515c <panic>

0000000080006020 <holding>:
    80006020:	00052783          	lw	a5,0(a0)
    80006024:	00079663          	bnez	a5,80006030 <holding+0x10>
    80006028:	00000513          	li	a0,0
    8000602c:	00008067          	ret
    80006030:	fe010113          	addi	sp,sp,-32
    80006034:	00813823          	sd	s0,16(sp)
    80006038:	00913423          	sd	s1,8(sp)
    8000603c:	00113c23          	sd	ra,24(sp)
    80006040:	02010413          	addi	s0,sp,32
    80006044:	01053483          	ld	s1,16(a0)
    80006048:	ffffe097          	auipc	ra,0xffffe
    8000604c:	758080e7          	jalr	1880(ra) # 800047a0 <mycpu>
    80006050:	01813083          	ld	ra,24(sp)
    80006054:	01013403          	ld	s0,16(sp)
    80006058:	40a48533          	sub	a0,s1,a0
    8000605c:	00153513          	seqz	a0,a0
    80006060:	00813483          	ld	s1,8(sp)
    80006064:	02010113          	addi	sp,sp,32
    80006068:	00008067          	ret

000000008000606c <push_off>:
    8000606c:	fe010113          	addi	sp,sp,-32
    80006070:	00813823          	sd	s0,16(sp)
    80006074:	00113c23          	sd	ra,24(sp)
    80006078:	00913423          	sd	s1,8(sp)
    8000607c:	02010413          	addi	s0,sp,32
    80006080:	100024f3          	csrr	s1,sstatus
    80006084:	100027f3          	csrr	a5,sstatus
    80006088:	ffd7f793          	andi	a5,a5,-3
    8000608c:	10079073          	csrw	sstatus,a5
    80006090:	ffffe097          	auipc	ra,0xffffe
    80006094:	710080e7          	jalr	1808(ra) # 800047a0 <mycpu>
    80006098:	07852783          	lw	a5,120(a0)
    8000609c:	02078663          	beqz	a5,800060c8 <push_off+0x5c>
    800060a0:	ffffe097          	auipc	ra,0xffffe
    800060a4:	700080e7          	jalr	1792(ra) # 800047a0 <mycpu>
    800060a8:	07852783          	lw	a5,120(a0)
    800060ac:	01813083          	ld	ra,24(sp)
    800060b0:	01013403          	ld	s0,16(sp)
    800060b4:	0017879b          	addiw	a5,a5,1
    800060b8:	06f52c23          	sw	a5,120(a0)
    800060bc:	00813483          	ld	s1,8(sp)
    800060c0:	02010113          	addi	sp,sp,32
    800060c4:	00008067          	ret
    800060c8:	0014d493          	srli	s1,s1,0x1
    800060cc:	ffffe097          	auipc	ra,0xffffe
    800060d0:	6d4080e7          	jalr	1748(ra) # 800047a0 <mycpu>
    800060d4:	0014f493          	andi	s1,s1,1
    800060d8:	06952e23          	sw	s1,124(a0)
    800060dc:	fc5ff06f          	j	800060a0 <push_off+0x34>

00000000800060e0 <pop_off>:
    800060e0:	ff010113          	addi	sp,sp,-16
    800060e4:	00813023          	sd	s0,0(sp)
    800060e8:	00113423          	sd	ra,8(sp)
    800060ec:	01010413          	addi	s0,sp,16
    800060f0:	ffffe097          	auipc	ra,0xffffe
    800060f4:	6b0080e7          	jalr	1712(ra) # 800047a0 <mycpu>
    800060f8:	100027f3          	csrr	a5,sstatus
    800060fc:	0027f793          	andi	a5,a5,2
    80006100:	04079663          	bnez	a5,8000614c <pop_off+0x6c>
    80006104:	07852783          	lw	a5,120(a0)
    80006108:	02f05a63          	blez	a5,8000613c <pop_off+0x5c>
    8000610c:	fff7871b          	addiw	a4,a5,-1
    80006110:	06e52c23          	sw	a4,120(a0)
    80006114:	00071c63          	bnez	a4,8000612c <pop_off+0x4c>
    80006118:	07c52783          	lw	a5,124(a0)
    8000611c:	00078863          	beqz	a5,8000612c <pop_off+0x4c>
    80006120:	100027f3          	csrr	a5,sstatus
    80006124:	0027e793          	ori	a5,a5,2
    80006128:	10079073          	csrw	sstatus,a5
    8000612c:	00813083          	ld	ra,8(sp)
    80006130:	00013403          	ld	s0,0(sp)
    80006134:	01010113          	addi	sp,sp,16
    80006138:	00008067          	ret
    8000613c:	00001517          	auipc	a0,0x1
    80006140:	36c50513          	addi	a0,a0,876 # 800074a8 <digits+0x48>
    80006144:	fffff097          	auipc	ra,0xfffff
    80006148:	018080e7          	jalr	24(ra) # 8000515c <panic>
    8000614c:	00001517          	auipc	a0,0x1
    80006150:	34450513          	addi	a0,a0,836 # 80007490 <digits+0x30>
    80006154:	fffff097          	auipc	ra,0xfffff
    80006158:	008080e7          	jalr	8(ra) # 8000515c <panic>

000000008000615c <push_on>:
    8000615c:	fe010113          	addi	sp,sp,-32
    80006160:	00813823          	sd	s0,16(sp)
    80006164:	00113c23          	sd	ra,24(sp)
    80006168:	00913423          	sd	s1,8(sp)
    8000616c:	02010413          	addi	s0,sp,32
    80006170:	100024f3          	csrr	s1,sstatus
    80006174:	100027f3          	csrr	a5,sstatus
    80006178:	0027e793          	ori	a5,a5,2
    8000617c:	10079073          	csrw	sstatus,a5
    80006180:	ffffe097          	auipc	ra,0xffffe
    80006184:	620080e7          	jalr	1568(ra) # 800047a0 <mycpu>
    80006188:	07852783          	lw	a5,120(a0)
    8000618c:	02078663          	beqz	a5,800061b8 <push_on+0x5c>
    80006190:	ffffe097          	auipc	ra,0xffffe
    80006194:	610080e7          	jalr	1552(ra) # 800047a0 <mycpu>
    80006198:	07852783          	lw	a5,120(a0)
    8000619c:	01813083          	ld	ra,24(sp)
    800061a0:	01013403          	ld	s0,16(sp)
    800061a4:	0017879b          	addiw	a5,a5,1
    800061a8:	06f52c23          	sw	a5,120(a0)
    800061ac:	00813483          	ld	s1,8(sp)
    800061b0:	02010113          	addi	sp,sp,32
    800061b4:	00008067          	ret
    800061b8:	0014d493          	srli	s1,s1,0x1
    800061bc:	ffffe097          	auipc	ra,0xffffe
    800061c0:	5e4080e7          	jalr	1508(ra) # 800047a0 <mycpu>
    800061c4:	0014f493          	andi	s1,s1,1
    800061c8:	06952e23          	sw	s1,124(a0)
    800061cc:	fc5ff06f          	j	80006190 <push_on+0x34>

00000000800061d0 <pop_on>:
    800061d0:	ff010113          	addi	sp,sp,-16
    800061d4:	00813023          	sd	s0,0(sp)
    800061d8:	00113423          	sd	ra,8(sp)
    800061dc:	01010413          	addi	s0,sp,16
    800061e0:	ffffe097          	auipc	ra,0xffffe
    800061e4:	5c0080e7          	jalr	1472(ra) # 800047a0 <mycpu>
    800061e8:	100027f3          	csrr	a5,sstatus
    800061ec:	0027f793          	andi	a5,a5,2
    800061f0:	04078463          	beqz	a5,80006238 <pop_on+0x68>
    800061f4:	07852783          	lw	a5,120(a0)
    800061f8:	02f05863          	blez	a5,80006228 <pop_on+0x58>
    800061fc:	fff7879b          	addiw	a5,a5,-1
    80006200:	06f52c23          	sw	a5,120(a0)
    80006204:	07853783          	ld	a5,120(a0)
    80006208:	00079863          	bnez	a5,80006218 <pop_on+0x48>
    8000620c:	100027f3          	csrr	a5,sstatus
    80006210:	ffd7f793          	andi	a5,a5,-3
    80006214:	10079073          	csrw	sstatus,a5
    80006218:	00813083          	ld	ra,8(sp)
    8000621c:	00013403          	ld	s0,0(sp)
    80006220:	01010113          	addi	sp,sp,16
    80006224:	00008067          	ret
    80006228:	00001517          	auipc	a0,0x1
    8000622c:	2a850513          	addi	a0,a0,680 # 800074d0 <digits+0x70>
    80006230:	fffff097          	auipc	ra,0xfffff
    80006234:	f2c080e7          	jalr	-212(ra) # 8000515c <panic>
    80006238:	00001517          	auipc	a0,0x1
    8000623c:	27850513          	addi	a0,a0,632 # 800074b0 <digits+0x50>
    80006240:	fffff097          	auipc	ra,0xfffff
    80006244:	f1c080e7          	jalr	-228(ra) # 8000515c <panic>

0000000080006248 <__memset>:
    80006248:	ff010113          	addi	sp,sp,-16
    8000624c:	00813423          	sd	s0,8(sp)
    80006250:	01010413          	addi	s0,sp,16
    80006254:	1a060e63          	beqz	a2,80006410 <__memset+0x1c8>
    80006258:	40a007b3          	neg	a5,a0
    8000625c:	0077f793          	andi	a5,a5,7
    80006260:	00778693          	addi	a3,a5,7
    80006264:	00b00813          	li	a6,11
    80006268:	0ff5f593          	andi	a1,a1,255
    8000626c:	fff6071b          	addiw	a4,a2,-1
    80006270:	1b06e663          	bltu	a3,a6,8000641c <__memset+0x1d4>
    80006274:	1cd76463          	bltu	a4,a3,8000643c <__memset+0x1f4>
    80006278:	1a078e63          	beqz	a5,80006434 <__memset+0x1ec>
    8000627c:	00b50023          	sb	a1,0(a0)
    80006280:	00100713          	li	a4,1
    80006284:	1ae78463          	beq	a5,a4,8000642c <__memset+0x1e4>
    80006288:	00b500a3          	sb	a1,1(a0)
    8000628c:	00200713          	li	a4,2
    80006290:	1ae78a63          	beq	a5,a4,80006444 <__memset+0x1fc>
    80006294:	00b50123          	sb	a1,2(a0)
    80006298:	00300713          	li	a4,3
    8000629c:	18e78463          	beq	a5,a4,80006424 <__memset+0x1dc>
    800062a0:	00b501a3          	sb	a1,3(a0)
    800062a4:	00400713          	li	a4,4
    800062a8:	1ae78263          	beq	a5,a4,8000644c <__memset+0x204>
    800062ac:	00b50223          	sb	a1,4(a0)
    800062b0:	00500713          	li	a4,5
    800062b4:	1ae78063          	beq	a5,a4,80006454 <__memset+0x20c>
    800062b8:	00b502a3          	sb	a1,5(a0)
    800062bc:	00700713          	li	a4,7
    800062c0:	18e79e63          	bne	a5,a4,8000645c <__memset+0x214>
    800062c4:	00b50323          	sb	a1,6(a0)
    800062c8:	00700e93          	li	t4,7
    800062cc:	00859713          	slli	a4,a1,0x8
    800062d0:	00e5e733          	or	a4,a1,a4
    800062d4:	01059e13          	slli	t3,a1,0x10
    800062d8:	01c76e33          	or	t3,a4,t3
    800062dc:	01859313          	slli	t1,a1,0x18
    800062e0:	006e6333          	or	t1,t3,t1
    800062e4:	02059893          	slli	a7,a1,0x20
    800062e8:	40f60e3b          	subw	t3,a2,a5
    800062ec:	011368b3          	or	a7,t1,a7
    800062f0:	02859813          	slli	a6,a1,0x28
    800062f4:	0108e833          	or	a6,a7,a6
    800062f8:	03059693          	slli	a3,a1,0x30
    800062fc:	003e589b          	srliw	a7,t3,0x3
    80006300:	00d866b3          	or	a3,a6,a3
    80006304:	03859713          	slli	a4,a1,0x38
    80006308:	00389813          	slli	a6,a7,0x3
    8000630c:	00f507b3          	add	a5,a0,a5
    80006310:	00e6e733          	or	a4,a3,a4
    80006314:	000e089b          	sext.w	a7,t3
    80006318:	00f806b3          	add	a3,a6,a5
    8000631c:	00e7b023          	sd	a4,0(a5)
    80006320:	00878793          	addi	a5,a5,8
    80006324:	fed79ce3          	bne	a5,a3,8000631c <__memset+0xd4>
    80006328:	ff8e7793          	andi	a5,t3,-8
    8000632c:	0007871b          	sext.w	a4,a5
    80006330:	01d787bb          	addw	a5,a5,t4
    80006334:	0ce88e63          	beq	a7,a4,80006410 <__memset+0x1c8>
    80006338:	00f50733          	add	a4,a0,a5
    8000633c:	00b70023          	sb	a1,0(a4)
    80006340:	0017871b          	addiw	a4,a5,1
    80006344:	0cc77663          	bgeu	a4,a2,80006410 <__memset+0x1c8>
    80006348:	00e50733          	add	a4,a0,a4
    8000634c:	00b70023          	sb	a1,0(a4)
    80006350:	0027871b          	addiw	a4,a5,2
    80006354:	0ac77e63          	bgeu	a4,a2,80006410 <__memset+0x1c8>
    80006358:	00e50733          	add	a4,a0,a4
    8000635c:	00b70023          	sb	a1,0(a4)
    80006360:	0037871b          	addiw	a4,a5,3
    80006364:	0ac77663          	bgeu	a4,a2,80006410 <__memset+0x1c8>
    80006368:	00e50733          	add	a4,a0,a4
    8000636c:	00b70023          	sb	a1,0(a4)
    80006370:	0047871b          	addiw	a4,a5,4
    80006374:	08c77e63          	bgeu	a4,a2,80006410 <__memset+0x1c8>
    80006378:	00e50733          	add	a4,a0,a4
    8000637c:	00b70023          	sb	a1,0(a4)
    80006380:	0057871b          	addiw	a4,a5,5
    80006384:	08c77663          	bgeu	a4,a2,80006410 <__memset+0x1c8>
    80006388:	00e50733          	add	a4,a0,a4
    8000638c:	00b70023          	sb	a1,0(a4)
    80006390:	0067871b          	addiw	a4,a5,6
    80006394:	06c77e63          	bgeu	a4,a2,80006410 <__memset+0x1c8>
    80006398:	00e50733          	add	a4,a0,a4
    8000639c:	00b70023          	sb	a1,0(a4)
    800063a0:	0077871b          	addiw	a4,a5,7
    800063a4:	06c77663          	bgeu	a4,a2,80006410 <__memset+0x1c8>
    800063a8:	00e50733          	add	a4,a0,a4
    800063ac:	00b70023          	sb	a1,0(a4)
    800063b0:	0087871b          	addiw	a4,a5,8
    800063b4:	04c77e63          	bgeu	a4,a2,80006410 <__memset+0x1c8>
    800063b8:	00e50733          	add	a4,a0,a4
    800063bc:	00b70023          	sb	a1,0(a4)
    800063c0:	0097871b          	addiw	a4,a5,9
    800063c4:	04c77663          	bgeu	a4,a2,80006410 <__memset+0x1c8>
    800063c8:	00e50733          	add	a4,a0,a4
    800063cc:	00b70023          	sb	a1,0(a4)
    800063d0:	00a7871b          	addiw	a4,a5,10
    800063d4:	02c77e63          	bgeu	a4,a2,80006410 <__memset+0x1c8>
    800063d8:	00e50733          	add	a4,a0,a4
    800063dc:	00b70023          	sb	a1,0(a4)
    800063e0:	00b7871b          	addiw	a4,a5,11
    800063e4:	02c77663          	bgeu	a4,a2,80006410 <__memset+0x1c8>
    800063e8:	00e50733          	add	a4,a0,a4
    800063ec:	00b70023          	sb	a1,0(a4)
    800063f0:	00c7871b          	addiw	a4,a5,12
    800063f4:	00c77e63          	bgeu	a4,a2,80006410 <__memset+0x1c8>
    800063f8:	00e50733          	add	a4,a0,a4
    800063fc:	00b70023          	sb	a1,0(a4)
    80006400:	00d7879b          	addiw	a5,a5,13
    80006404:	00c7f663          	bgeu	a5,a2,80006410 <__memset+0x1c8>
    80006408:	00f507b3          	add	a5,a0,a5
    8000640c:	00b78023          	sb	a1,0(a5)
    80006410:	00813403          	ld	s0,8(sp)
    80006414:	01010113          	addi	sp,sp,16
    80006418:	00008067          	ret
    8000641c:	00b00693          	li	a3,11
    80006420:	e55ff06f          	j	80006274 <__memset+0x2c>
    80006424:	00300e93          	li	t4,3
    80006428:	ea5ff06f          	j	800062cc <__memset+0x84>
    8000642c:	00100e93          	li	t4,1
    80006430:	e9dff06f          	j	800062cc <__memset+0x84>
    80006434:	00000e93          	li	t4,0
    80006438:	e95ff06f          	j	800062cc <__memset+0x84>
    8000643c:	00000793          	li	a5,0
    80006440:	ef9ff06f          	j	80006338 <__memset+0xf0>
    80006444:	00200e93          	li	t4,2
    80006448:	e85ff06f          	j	800062cc <__memset+0x84>
    8000644c:	00400e93          	li	t4,4
    80006450:	e7dff06f          	j	800062cc <__memset+0x84>
    80006454:	00500e93          	li	t4,5
    80006458:	e75ff06f          	j	800062cc <__memset+0x84>
    8000645c:	00600e93          	li	t4,6
    80006460:	e6dff06f          	j	800062cc <__memset+0x84>

0000000080006464 <__memmove>:
    80006464:	ff010113          	addi	sp,sp,-16
    80006468:	00813423          	sd	s0,8(sp)
    8000646c:	01010413          	addi	s0,sp,16
    80006470:	0e060863          	beqz	a2,80006560 <__memmove+0xfc>
    80006474:	fff6069b          	addiw	a3,a2,-1
    80006478:	0006881b          	sext.w	a6,a3
    8000647c:	0ea5e863          	bltu	a1,a0,8000656c <__memmove+0x108>
    80006480:	00758713          	addi	a4,a1,7
    80006484:	00a5e7b3          	or	a5,a1,a0
    80006488:	40a70733          	sub	a4,a4,a0
    8000648c:	0077f793          	andi	a5,a5,7
    80006490:	00f73713          	sltiu	a4,a4,15
    80006494:	00174713          	xori	a4,a4,1
    80006498:	0017b793          	seqz	a5,a5
    8000649c:	00e7f7b3          	and	a5,a5,a4
    800064a0:	10078863          	beqz	a5,800065b0 <__memmove+0x14c>
    800064a4:	00900793          	li	a5,9
    800064a8:	1107f463          	bgeu	a5,a6,800065b0 <__memmove+0x14c>
    800064ac:	0036581b          	srliw	a6,a2,0x3
    800064b0:	fff8081b          	addiw	a6,a6,-1
    800064b4:	02081813          	slli	a6,a6,0x20
    800064b8:	01d85893          	srli	a7,a6,0x1d
    800064bc:	00858813          	addi	a6,a1,8
    800064c0:	00058793          	mv	a5,a1
    800064c4:	00050713          	mv	a4,a0
    800064c8:	01088833          	add	a6,a7,a6
    800064cc:	0007b883          	ld	a7,0(a5)
    800064d0:	00878793          	addi	a5,a5,8
    800064d4:	00870713          	addi	a4,a4,8
    800064d8:	ff173c23          	sd	a7,-8(a4)
    800064dc:	ff0798e3          	bne	a5,a6,800064cc <__memmove+0x68>
    800064e0:	ff867713          	andi	a4,a2,-8
    800064e4:	02071793          	slli	a5,a4,0x20
    800064e8:	0207d793          	srli	a5,a5,0x20
    800064ec:	00f585b3          	add	a1,a1,a5
    800064f0:	40e686bb          	subw	a3,a3,a4
    800064f4:	00f507b3          	add	a5,a0,a5
    800064f8:	06e60463          	beq	a2,a4,80006560 <__memmove+0xfc>
    800064fc:	0005c703          	lbu	a4,0(a1)
    80006500:	00e78023          	sb	a4,0(a5)
    80006504:	04068e63          	beqz	a3,80006560 <__memmove+0xfc>
    80006508:	0015c603          	lbu	a2,1(a1)
    8000650c:	00100713          	li	a4,1
    80006510:	00c780a3          	sb	a2,1(a5)
    80006514:	04e68663          	beq	a3,a4,80006560 <__memmove+0xfc>
    80006518:	0025c603          	lbu	a2,2(a1)
    8000651c:	00200713          	li	a4,2
    80006520:	00c78123          	sb	a2,2(a5)
    80006524:	02e68e63          	beq	a3,a4,80006560 <__memmove+0xfc>
    80006528:	0035c603          	lbu	a2,3(a1)
    8000652c:	00300713          	li	a4,3
    80006530:	00c781a3          	sb	a2,3(a5)
    80006534:	02e68663          	beq	a3,a4,80006560 <__memmove+0xfc>
    80006538:	0045c603          	lbu	a2,4(a1)
    8000653c:	00400713          	li	a4,4
    80006540:	00c78223          	sb	a2,4(a5)
    80006544:	00e68e63          	beq	a3,a4,80006560 <__memmove+0xfc>
    80006548:	0055c603          	lbu	a2,5(a1)
    8000654c:	00500713          	li	a4,5
    80006550:	00c782a3          	sb	a2,5(a5)
    80006554:	00e68663          	beq	a3,a4,80006560 <__memmove+0xfc>
    80006558:	0065c703          	lbu	a4,6(a1)
    8000655c:	00e78323          	sb	a4,6(a5)
    80006560:	00813403          	ld	s0,8(sp)
    80006564:	01010113          	addi	sp,sp,16
    80006568:	00008067          	ret
    8000656c:	02061713          	slli	a4,a2,0x20
    80006570:	02075713          	srli	a4,a4,0x20
    80006574:	00e587b3          	add	a5,a1,a4
    80006578:	f0f574e3          	bgeu	a0,a5,80006480 <__memmove+0x1c>
    8000657c:	02069613          	slli	a2,a3,0x20
    80006580:	02065613          	srli	a2,a2,0x20
    80006584:	fff64613          	not	a2,a2
    80006588:	00e50733          	add	a4,a0,a4
    8000658c:	00c78633          	add	a2,a5,a2
    80006590:	fff7c683          	lbu	a3,-1(a5)
    80006594:	fff78793          	addi	a5,a5,-1
    80006598:	fff70713          	addi	a4,a4,-1
    8000659c:	00d70023          	sb	a3,0(a4)
    800065a0:	fec798e3          	bne	a5,a2,80006590 <__memmove+0x12c>
    800065a4:	00813403          	ld	s0,8(sp)
    800065a8:	01010113          	addi	sp,sp,16
    800065ac:	00008067          	ret
    800065b0:	02069713          	slli	a4,a3,0x20
    800065b4:	02075713          	srli	a4,a4,0x20
    800065b8:	00170713          	addi	a4,a4,1
    800065bc:	00e50733          	add	a4,a0,a4
    800065c0:	00050793          	mv	a5,a0
    800065c4:	0005c683          	lbu	a3,0(a1)
    800065c8:	00178793          	addi	a5,a5,1
    800065cc:	00158593          	addi	a1,a1,1
    800065d0:	fed78fa3          	sb	a3,-1(a5)
    800065d4:	fee798e3          	bne	a5,a4,800065c4 <__memmove+0x160>
    800065d8:	f89ff06f          	j	80006560 <__memmove+0xfc>

00000000800065dc <__putc>:
    800065dc:	fe010113          	addi	sp,sp,-32
    800065e0:	00813823          	sd	s0,16(sp)
    800065e4:	00113c23          	sd	ra,24(sp)
    800065e8:	02010413          	addi	s0,sp,32
    800065ec:	00050793          	mv	a5,a0
    800065f0:	fef40593          	addi	a1,s0,-17
    800065f4:	00100613          	li	a2,1
    800065f8:	00000513          	li	a0,0
    800065fc:	fef407a3          	sb	a5,-17(s0)
    80006600:	fffff097          	auipc	ra,0xfffff
    80006604:	b3c080e7          	jalr	-1220(ra) # 8000513c <console_write>
    80006608:	01813083          	ld	ra,24(sp)
    8000660c:	01013403          	ld	s0,16(sp)
    80006610:	02010113          	addi	sp,sp,32
    80006614:	00008067          	ret

0000000080006618 <__getc>:
    80006618:	fe010113          	addi	sp,sp,-32
    8000661c:	00813823          	sd	s0,16(sp)
    80006620:	00113c23          	sd	ra,24(sp)
    80006624:	02010413          	addi	s0,sp,32
    80006628:	fe840593          	addi	a1,s0,-24
    8000662c:	00100613          	li	a2,1
    80006630:	00000513          	li	a0,0
    80006634:	fffff097          	auipc	ra,0xfffff
    80006638:	ae8080e7          	jalr	-1304(ra) # 8000511c <console_read>
    8000663c:	fe844503          	lbu	a0,-24(s0)
    80006640:	01813083          	ld	ra,24(sp)
    80006644:	01013403          	ld	s0,16(sp)
    80006648:	02010113          	addi	sp,sp,32
    8000664c:	00008067          	ret

0000000080006650 <console_handler>:
    80006650:	fe010113          	addi	sp,sp,-32
    80006654:	00813823          	sd	s0,16(sp)
    80006658:	00113c23          	sd	ra,24(sp)
    8000665c:	00913423          	sd	s1,8(sp)
    80006660:	02010413          	addi	s0,sp,32
    80006664:	14202773          	csrr	a4,scause
    80006668:	100027f3          	csrr	a5,sstatus
    8000666c:	0027f793          	andi	a5,a5,2
    80006670:	06079e63          	bnez	a5,800066ec <console_handler+0x9c>
    80006674:	00074c63          	bltz	a4,8000668c <console_handler+0x3c>
    80006678:	01813083          	ld	ra,24(sp)
    8000667c:	01013403          	ld	s0,16(sp)
    80006680:	00813483          	ld	s1,8(sp)
    80006684:	02010113          	addi	sp,sp,32
    80006688:	00008067          	ret
    8000668c:	0ff77713          	andi	a4,a4,255
    80006690:	00900793          	li	a5,9
    80006694:	fef712e3          	bne	a4,a5,80006678 <console_handler+0x28>
    80006698:	ffffe097          	auipc	ra,0xffffe
    8000669c:	6dc080e7          	jalr	1756(ra) # 80004d74 <plic_claim>
    800066a0:	00a00793          	li	a5,10
    800066a4:	00050493          	mv	s1,a0
    800066a8:	02f50c63          	beq	a0,a5,800066e0 <console_handler+0x90>
    800066ac:	fc0506e3          	beqz	a0,80006678 <console_handler+0x28>
    800066b0:	00050593          	mv	a1,a0
    800066b4:	00001517          	auipc	a0,0x1
    800066b8:	d2450513          	addi	a0,a0,-732 # 800073d8 <CONSOLE_STATUS+0x3c8>
    800066bc:	fffff097          	auipc	ra,0xfffff
    800066c0:	afc080e7          	jalr	-1284(ra) # 800051b8 <__printf>
    800066c4:	01013403          	ld	s0,16(sp)
    800066c8:	01813083          	ld	ra,24(sp)
    800066cc:	00048513          	mv	a0,s1
    800066d0:	00813483          	ld	s1,8(sp)
    800066d4:	02010113          	addi	sp,sp,32
    800066d8:	ffffe317          	auipc	t1,0xffffe
    800066dc:	6d430067          	jr	1748(t1) # 80004dac <plic_complete>
    800066e0:	fffff097          	auipc	ra,0xfffff
    800066e4:	3e0080e7          	jalr	992(ra) # 80005ac0 <uartintr>
    800066e8:	fddff06f          	j	800066c4 <console_handler+0x74>
    800066ec:	00001517          	auipc	a0,0x1
    800066f0:	dec50513          	addi	a0,a0,-532 # 800074d8 <digits+0x78>
    800066f4:	fffff097          	auipc	ra,0xfffff
    800066f8:	a68080e7          	jalr	-1432(ra) # 8000515c <panic>
	...
