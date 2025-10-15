
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	cd013103          	ld	sp,-816(sp) # 80005cd0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	38d020ef          	jal	ra,80002ba8 <start>

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
    80001088:	cc22be23          	sd	sp,-804(t0) # 80005d60 <framePointer>

    call _ZN5Riscv11trapHandlerEv
    8000108c:	001000ef          	jal	ra,8000188c <_ZN5Riscv11trapHandlerEv>

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

0000000080001310 <_ZN6ThreadC1EPFvPvES0_S0_m>:
Thread::Thread(Body b, void* a, size_t stackSizeBytes)
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), next(nullptr) {
    allocateStack(stackSizeBytes);
}

Thread::Thread(Body b, void* a, void* externalStackBase, size_t externalStackSize)
    80001310:	ff010113          	addi	sp,sp,-16
    80001314:	00813423          	sd	s0,8(sp)
    80001318:	01010413          	addi	s0,sp,16
    : id(staticId++), stack(nullptr), stackSize(0), body(b), args(a), state(NEW), next(nullptr) {
    8000131c:	00005817          	auipc	a6,0x5
    80001320:	a2480813          	addi	a6,a6,-1500 # 80005d40 <_ZN6Thread8staticIdE>
    80001324:	00082783          	lw	a5,0(a6)
    80001328:	0017889b          	addiw	a7,a5,1
    8000132c:	01182023          	sw	a7,0(a6)
    80001330:	00f52023          	sw	a5,0(a0) # 1000 <_entry-0x7ffff000>
    80001334:	02b53423          	sd	a1,40(a0)
    80001338:	02c53823          	sd	a2,48(a0)
    8000133c:	02052c23          	sw	zero,56(a0)
    80001340:	04053023          	sd	zero,64(a0)
    stack = externalStackBase;
    80001344:	00d53423          	sd	a3,8(a0)
    stackSize = externalStackSize;
    80001348:	00e53823          	sd	a4,16(a0)
}
    8000134c:	00813403          	ld	s0,8(sp)
    80001350:	01010113          	addi	sp,sp,16
    80001354:	00008067          	ret

0000000080001358 <_ZN6ThreadD1Ev>:

Thread::~Thread() {
    if (stack) {
    80001358:	00853503          	ld	a0,8(a0)
    8000135c:	02050663          	beqz	a0,80001388 <_ZN6ThreadD1Ev+0x30>
Thread::~Thread() {
    80001360:	ff010113          	addi	sp,sp,-16
    80001364:	00113423          	sd	ra,8(sp)
    80001368:	00813023          	sd	s0,0(sp)
    8000136c:	01010413          	addi	s0,sp,16
        MemoryAllocator::mem_free(stack);
    80001370:	00001097          	auipc	ra,0x1
    80001374:	824080e7          	jalr	-2012(ra) # 80001b94 <_ZN15MemoryAllocator8mem_freeEPv>
        stack = nullptr;
    }
}
    80001378:	00813083          	ld	ra,8(sp)
    8000137c:	00013403          	ld	s0,0(sp)
    80001380:	01010113          	addi	sp,sp,16
    80001384:	00008067          	ret
    80001388:	00008067          	ret

000000008000138c <_ZN6Thread12createThreadEPFvPvES0_S0_m>:

Thread* Thread::createThread(Body b, void* a, size_t stackSizeBytes) {
    return new Thread(b, a, stackSizeBytes);
}

Thread* Thread::createThread(Body b, void* a, void* externalStackBase, size_t externalStackSize) {
    8000138c:	fc010113          	addi	sp,sp,-64
    80001390:	02113c23          	sd	ra,56(sp)
    80001394:	02813823          	sd	s0,48(sp)
    80001398:	02913423          	sd	s1,40(sp)
    8000139c:	03213023          	sd	s2,32(sp)
    800013a0:	01313c23          	sd	s3,24(sp)
    800013a4:	01413823          	sd	s4,16(sp)
    800013a8:	01513423          	sd	s5,8(sp)
    800013ac:	04010413          	addi	s0,sp,64
    800013b0:	00050913          	mv	s2,a0
    800013b4:	00058993          	mv	s3,a1
    800013b8:	00060a13          	mv	s4,a2
    800013bc:	00068a93          	mv	s5,a3

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    800013c0:	00200513          	li	a0,2
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	6d0080e7          	jalr	1744(ra) # 80001a94 <_ZN15MemoryAllocator9mem_allocEm>
    800013cc:	00050493          	mv	s1,a0
    return new Thread(b, a, externalStackBase, externalStackSize);
    800013d0:	000a8713          	mv	a4,s5
    800013d4:	000a0693          	mv	a3,s4
    800013d8:	00098613          	mv	a2,s3
    800013dc:	00090593          	mv	a1,s2
    800013e0:	00000097          	auipc	ra,0x0
    800013e4:	f30080e7          	jalr	-208(ra) # 80001310 <_ZN6ThreadC1EPFvPvES0_S0_m>
}
    800013e8:	00048513          	mv	a0,s1
    800013ec:	03813083          	ld	ra,56(sp)
    800013f0:	03013403          	ld	s0,48(sp)
    800013f4:	02813483          	ld	s1,40(sp)
    800013f8:	02013903          	ld	s2,32(sp)
    800013fc:	01813983          	ld	s3,24(sp)
    80001400:	01013a03          	ld	s4,16(sp)
    80001404:	00813a83          	ld	s5,8(sp)
    80001408:	04010113          	addi	sp,sp,64
    8000140c:	00008067          	ret

0000000080001410 <_ZN6Thread13allocateStackEm>:

void Thread::allocateStack(size_t bytes) {
    80001410:	fe010113          	addi	sp,sp,-32
    80001414:	00113c23          	sd	ra,24(sp)
    80001418:	00813823          	sd	s0,16(sp)
    8000141c:	00913423          	sd	s1,8(sp)
    80001420:	01213023          	sd	s2,0(sp)
    80001424:	02010413          	addi	s0,sp,32
    80001428:	00050913          	mv	s2,a0
    size_t blocks = bytes / MEM_BLOCK_SIZE;
    8000142c:	0065d493          	srli	s1,a1,0x6
    if (bytes % MEM_BLOCK_SIZE != 0) blocks++;
    80001430:	03f5f593          	andi	a1,a1,63
    80001434:	00058463          	beqz	a1,8000143c <_ZN6Thread13allocateStackEm+0x2c>
    80001438:	00148493          	addi	s1,s1,1

    stack = MemoryAllocator::mem_alloc(blocks);
    8000143c:	00048513          	mv	a0,s1
    80001440:	00000097          	auipc	ra,0x0
    80001444:	654080e7          	jalr	1620(ra) # 80001a94 <_ZN15MemoryAllocator9mem_allocEm>
    80001448:	00a93423          	sd	a0,8(s2)
    stackSize = blocks * MEM_BLOCK_SIZE;
    8000144c:	00649493          	slli	s1,s1,0x6
    80001450:	00993823          	sd	s1,16(s2)
}
    80001454:	01813083          	ld	ra,24(sp)
    80001458:	01013403          	ld	s0,16(sp)
    8000145c:	00813483          	ld	s1,8(sp)
    80001460:	00013903          	ld	s2,0(sp)
    80001464:	02010113          	addi	sp,sp,32
    80001468:	00008067          	ret

000000008000146c <_ZN6ThreadC1EPFvPvES0_m>:
Thread::Thread(Body b, void* a, size_t stackSizeBytes)
    8000146c:	ff010113          	addi	sp,sp,-16
    80001470:	00113423          	sd	ra,8(sp)
    80001474:	00813023          	sd	s0,0(sp)
    80001478:	01010413          	addi	s0,sp,16
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), next(nullptr) {
    8000147c:	00005817          	auipc	a6,0x5
    80001480:	8c480813          	addi	a6,a6,-1852 # 80005d40 <_ZN6Thread8staticIdE>
    80001484:	00082703          	lw	a4,0(a6)
    80001488:	0017089b          	addiw	a7,a4,1
    8000148c:	01182023          	sw	a7,0(a6)
    80001490:	00e52023          	sw	a4,0(a0)
    80001494:	00053423          	sd	zero,8(a0)
    80001498:	00d53823          	sd	a3,16(a0)
    8000149c:	02b53423          	sd	a1,40(a0)
    800014a0:	02c53823          	sd	a2,48(a0)
    800014a4:	02052c23          	sw	zero,56(a0)
    800014a8:	04053023          	sd	zero,64(a0)
    allocateStack(stackSizeBytes);
    800014ac:	00068593          	mv	a1,a3
    800014b0:	00000097          	auipc	ra,0x0
    800014b4:	f60080e7          	jalr	-160(ra) # 80001410 <_ZN6Thread13allocateStackEm>
}
    800014b8:	00813083          	ld	ra,8(sp)
    800014bc:	00013403          	ld	s0,0(sp)
    800014c0:	01010113          	addi	sp,sp,16
    800014c4:	00008067          	ret

00000000800014c8 <_ZN6Thread12createThreadEPFvPvES0_m>:
Thread* Thread::createThread(Body b, void* a, size_t stackSizeBytes) {
    800014c8:	fd010113          	addi	sp,sp,-48
    800014cc:	02113423          	sd	ra,40(sp)
    800014d0:	02813023          	sd	s0,32(sp)
    800014d4:	00913c23          	sd	s1,24(sp)
    800014d8:	01213823          	sd	s2,16(sp)
    800014dc:	01313423          	sd	s3,8(sp)
    800014e0:	01413023          	sd	s4,0(sp)
    800014e4:	03010413          	addi	s0,sp,48
    800014e8:	00050913          	mv	s2,a0
    800014ec:	00058993          	mv	s3,a1
    800014f0:	00060a13          	mv	s4,a2
    800014f4:	00200513          	li	a0,2
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	59c080e7          	jalr	1436(ra) # 80001a94 <_ZN15MemoryAllocator9mem_allocEm>
    80001500:	00050493          	mv	s1,a0
    return new Thread(b, a, stackSizeBytes);
    80001504:	000a0693          	mv	a3,s4
    80001508:	00098613          	mv	a2,s3
    8000150c:	00090593          	mv	a1,s2
    80001510:	00000097          	auipc	ra,0x0
    80001514:	f5c080e7          	jalr	-164(ra) # 8000146c <_ZN6ThreadC1EPFvPvES0_m>
    80001518:	0200006f          	j	80001538 <_ZN6Thread12createThreadEPFvPvES0_m+0x70>
    8000151c:	00050913          	mv	s2,a0
    }

    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    80001520:	00048513          	mv	a0,s1
    80001524:	00000097          	auipc	ra,0x0
    80001528:	670080e7          	jalr	1648(ra) # 80001b94 <_ZN15MemoryAllocator8mem_freeEPv>
    8000152c:	00090513          	mv	a0,s2
    80001530:	00006097          	auipc	ra,0x6
    80001534:	928080e7          	jalr	-1752(ra) # 80006e58 <_Unwind_Resume>
}
    80001538:	00048513          	mv	a0,s1
    8000153c:	02813083          	ld	ra,40(sp)
    80001540:	02013403          	ld	s0,32(sp)
    80001544:	01813483          	ld	s1,24(sp)
    80001548:	01013903          	ld	s2,16(sp)
    8000154c:	00813983          	ld	s3,8(sp)
    80001550:	00013a03          	ld	s4,0(sp)
    80001554:	03010113          	addi	sp,sp,48
    80001558:	00008067          	ret

000000008000155c <_ZN6Thread5startEv>:

void Thread::start() {
    if (state != NEW) return;
    8000155c:	03852783          	lw	a5,56(a0)
    80001560:	00078463          	beqz	a5,80001568 <_ZN6Thread5startEv+0xc>
    80001564:	00008067          	ret
void Thread::start() {
    80001568:	fe010113          	addi	sp,sp,-32
    8000156c:	00113c23          	sd	ra,24(sp)
    80001570:	00813823          	sd	s0,16(sp)
    80001574:	00913423          	sd	s1,8(sp)
    80001578:	02010413          	addi	s0,sp,32
    8000157c:	00050493          	mv	s1,a0

    void* stackTop = (char*)stack + stackSize;
    80001580:	00853603          	ld	a2,8(a0)
    80001584:	01053783          	ld	a5,16(a0)
    initContext(&context, wrapper, stackTop);
    80001588:	00f60633          	add	a2,a2,a5
    8000158c:	00000597          	auipc	a1,0x0
    80001590:	12c58593          	addi	a1,a1,300 # 800016b8 <_ZN6Thread7wrapperEv>
    80001594:	01850513          	addi	a0,a0,24
    80001598:	00000097          	auipc	ra,0x0
    8000159c:	b9c080e7          	jalr	-1124(ra) # 80001134 <_ZN6Thread11initContextEPNS_7ContextEPFvvEPv>
    state = READY;
    800015a0:	00100793          	li	a5,1
    800015a4:	02f4ac23          	sw	a5,56(s1)
    Scheduler::put(this);
    800015a8:	00048513          	mv	a0,s1
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	1a4080e7          	jalr	420(ra) # 80001750 <_ZN9Scheduler3putEP6Thread>
}
    800015b4:	01813083          	ld	ra,24(sp)
    800015b8:	01013403          	ld	s0,16(sp)
    800015bc:	00813483          	ld	s1,8(sp)
    800015c0:	02010113          	addi	sp,sp,32
    800015c4:	00008067          	ret

00000000800015c8 <_ZN6Thread4exitEv>:

void Thread::exit() {
    800015c8:	ff010113          	addi	sp,sp,-16
    800015cc:	00813423          	sd	s0,8(sp)
    800015d0:	01010413          	addi	s0,sp,16
    state = FINISHED;
    800015d4:	00400793          	li	a5,4
    800015d8:	02f52c23          	sw	a5,56(a0)
}
    800015dc:	00813403          	ld	s0,8(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret

00000000800015e8 <_ZN6Thread8dispatchEv>:
    running->body(running->args);
    running->exit();
    yield();
}

void Thread::dispatch() {
    800015e8:	fe010113          	addi	sp,sp,-32
    800015ec:	00113c23          	sd	ra,24(sp)
    800015f0:	00813823          	sd	s0,16(sp)
    800015f4:	00913423          	sd	s1,8(sp)
    800015f8:	02010413          	addi	s0,sp,32
    Thread* old = running;
    800015fc:	00004497          	auipc	s1,0x4
    80001600:	74c4b483          	ld	s1,1868(s1) # 80005d48 <_ZN6Thread7runningE>

    if (old && old->state != FINISHED) {
    80001604:	00048863          	beqz	s1,80001614 <_ZN6Thread8dispatchEv+0x2c>
    80001608:	0384a703          	lw	a4,56(s1)
    8000160c:	00400793          	li	a5,4
    80001610:	04f71e63          	bne	a4,a5,8000166c <_ZN6Thread8dispatchEv+0x84>
        old->state = READY;
        Scheduler::put(old);
    }

    running = Scheduler::get();
    80001614:	00000097          	auipc	ra,0x0
    80001618:	0f8080e7          	jalr	248(ra) # 8000170c <_ZN9Scheduler3getEv>
    8000161c:	00004797          	auipc	a5,0x4
    80001620:	72a7b623          	sd	a0,1836(a5) # 80005d48 <_ZN6Thread7runningE>
    if (!running) return;
    80001624:	02050a63          	beqz	a0,80001658 <_ZN6Thread8dispatchEv+0x70>

    running->state = RUNNING;
    80001628:	00200793          	li	a5,2
    8000162c:	02f52c23          	sw	a5,56(a0)

    if (old && old->state == FINISHED) {
    80001630:	00048863          	beqz	s1,80001640 <_ZN6Thread8dispatchEv+0x58>
    80001634:	0384a703          	lw	a4,56(s1)
    80001638:	00400793          	li	a5,4
    8000163c:	04f70463          	beq	a4,a5,80001684 <_ZN6Thread8dispatchEv+0x9c>
        MemoryAllocator::mem_free(old->stack);
        old->stack = nullptr;
    }

    contextSwitch(&old->context, &running->context);
    80001640:	00004597          	auipc	a1,0x4
    80001644:	7085b583          	ld	a1,1800(a1) # 80005d48 <_ZN6Thread7runningE>
    80001648:	01858593          	addi	a1,a1,24
    8000164c:	01848513          	addi	a0,s1,24
    80001650:	00000097          	auipc	ra,0x0
    80001654:	ad0080e7          	jalr	-1328(ra) # 80001120 <_ZN6Thread13contextSwitchEPNS_7ContextES1_>
}
    80001658:	01813083          	ld	ra,24(sp)
    8000165c:	01013403          	ld	s0,16(sp)
    80001660:	00813483          	ld	s1,8(sp)
    80001664:	02010113          	addi	sp,sp,32
    80001668:	00008067          	ret
        old->state = READY;
    8000166c:	00100793          	li	a5,1
    80001670:	02f4ac23          	sw	a5,56(s1)
        Scheduler::put(old);
    80001674:	00048513          	mv	a0,s1
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	0d8080e7          	jalr	216(ra) # 80001750 <_ZN9Scheduler3putEP6Thread>
    80001680:	f95ff06f          	j	80001614 <_ZN6Thread8dispatchEv+0x2c>
        MemoryAllocator::mem_free(old->stack);
    80001684:	0084b503          	ld	a0,8(s1)
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	50c080e7          	jalr	1292(ra) # 80001b94 <_ZN15MemoryAllocator8mem_freeEPv>
        old->stack = nullptr;
    80001690:	0004b423          	sd	zero,8(s1)
    80001694:	fadff06f          	j	80001640 <_ZN6Thread8dispatchEv+0x58>

0000000080001698 <_ZN6Thread5yieldEv>:

void Thread::yield() {
    80001698:	ff010113          	addi	sp,sp,-16
    8000169c:	00813423          	sd	s0,8(sp)
    800016a0:	01010413          	addi	s0,sp,16
    asm volatile ("li a0, 0x13");
    800016a4:	01300513          	li	a0,19
    asm volatile ("ecall");
    800016a8:	00000073          	ecall
    800016ac:	00813403          	ld	s0,8(sp)
    800016b0:	01010113          	addi	sp,sp,16
    800016b4:	00008067          	ret

00000000800016b8 <_ZN6Thread7wrapperEv>:
void Thread::wrapper() {
    800016b8:	fe010113          	addi	sp,sp,-32
    800016bc:	00113c23          	sd	ra,24(sp)
    800016c0:	00813823          	sd	s0,16(sp)
    800016c4:	00913423          	sd	s1,8(sp)
    800016c8:	02010413          	addi	s0,sp,32
    running->body(running->args);
    800016cc:	00004497          	auipc	s1,0x4
    800016d0:	67448493          	addi	s1,s1,1652 # 80005d40 <_ZN6Thread8staticIdE>
    800016d4:	0084b783          	ld	a5,8(s1)
    800016d8:	0287b703          	ld	a4,40(a5)
    800016dc:	0307b503          	ld	a0,48(a5)
    800016e0:	000700e7          	jalr	a4
    running->exit();
    800016e4:	0084b503          	ld	a0,8(s1)
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	ee0080e7          	jalr	-288(ra) # 800015c8 <_ZN6Thread4exitEv>
    yield();
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	fa8080e7          	jalr	-88(ra) # 80001698 <_ZN6Thread5yieldEv>
}
    800016f8:	01813083          	ld	ra,24(sp)
    800016fc:	01013403          	ld	s0,16(sp)
    80001700:	00813483          	ld	s1,8(sp)
    80001704:	02010113          	addi	sp,sp,32
    80001708:	00008067          	ret

000000008000170c <_ZN9Scheduler3getEv>:
#include "../h/Thread.hpp"

Thread* Scheduler::head = nullptr;
Thread* Scheduler::tail = nullptr;

Thread* Scheduler::get() {
    8000170c:	ff010113          	addi	sp,sp,-16
    80001710:	00813423          	sd	s0,8(sp)
    80001714:	01010413          	addi	s0,sp,16
    if (!head) return nullptr;
    80001718:	00004517          	auipc	a0,0x4
    8000171c:	63853503          	ld	a0,1592(a0) # 80005d50 <_ZN9Scheduler4headE>
    80001720:	00050c63          	beqz	a0,80001738 <_ZN9Scheduler3getEv+0x2c>

    Thread* thread = head;
    head = head->next;
    80001724:	04053783          	ld	a5,64(a0)
    80001728:	00004717          	auipc	a4,0x4
    8000172c:	62f73423          	sd	a5,1576(a4) # 80005d50 <_ZN9Scheduler4headE>

    if (!head) tail = nullptr;
    80001730:	00078a63          	beqz	a5,80001744 <_ZN9Scheduler3getEv+0x38>
    thread->next = nullptr;
    80001734:	04053023          	sd	zero,64(a0)

    return thread;
}
    80001738:	00813403          	ld	s0,8(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret
    if (!head) tail = nullptr;
    80001744:	00004797          	auipc	a5,0x4
    80001748:	6007ba23          	sd	zero,1556(a5) # 80005d58 <_ZN9Scheduler4tailE>
    8000174c:	fe9ff06f          	j	80001734 <_ZN9Scheduler3getEv+0x28>

0000000080001750 <_ZN9Scheduler3putEP6Thread>:

void Scheduler::put(Thread* thread) {
    80001750:	ff010113          	addi	sp,sp,-16
    80001754:	00813423          	sd	s0,8(sp)
    80001758:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    8000175c:	00004797          	auipc	a5,0x4
    80001760:	5f47b783          	ld	a5,1524(a5) # 80005d50 <_ZN9Scheduler4headE>
    80001764:	02078263          	beqz	a5,80001788 <_ZN9Scheduler3putEP6Thread+0x38>
    else tail->next = thread;
    80001768:	00004797          	auipc	a5,0x4
    8000176c:	5f07b783          	ld	a5,1520(a5) # 80005d58 <_ZN9Scheduler4tailE>
    80001770:	04a7b023          	sd	a0,64(a5)
    tail = thread;
    80001774:	00004797          	auipc	a5,0x4
    80001778:	5ea7b223          	sd	a0,1508(a5) # 80005d58 <_ZN9Scheduler4tailE>
}
    8000177c:	00813403          	ld	s0,8(sp)
    80001780:	01010113          	addi	sp,sp,16
    80001784:	00008067          	ret
    if (!head) head = thread;
    80001788:	00004797          	auipc	a5,0x4
    8000178c:	5ca7b423          	sd	a0,1480(a5) # 80005d50 <_ZN9Scheduler4headE>
    80001790:	fe5ff06f          	j	80001774 <_ZN9Scheduler3putEP6Thread+0x24>

0000000080001794 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80001794:	ff010113          	addi	sp,sp,-16
    80001798:	00813423          	sd	s0,8(sp)
    8000179c:	01010413          	addi	s0,sp,16
    return head == nullptr;
    800017a0:	00004517          	auipc	a0,0x4
    800017a4:	5b053503          	ld	a0,1456(a0) # 80005d50 <_ZN9Scheduler4headE>
    800017a8:	00153513          	seqz	a0,a0
    800017ac:	00813403          	ld	s0,8(sp)
    800017b0:	01010113          	addi	sp,sp,16
    800017b4:	00008067          	ret

00000000800017b8 <_Z11userWrapperPv>:
//
//     thread_exit();
// }

void userMain();
void userWrapper(void* arg) {
    800017b8:	ff010113          	addi	sp,sp,-16
    800017bc:	00113423          	sd	ra,8(sp)
    800017c0:	00813023          	sd	s0,0(sp)
    800017c4:	01010413          	addi	s0,sp,16
    userMain();
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	db0080e7          	jalr	-592(ra) # 80002578 <_Z8userMainv>
}
    800017d0:	00813083          	ld	ra,8(sp)
    800017d4:	00013403          	ld	s0,0(sp)
    800017d8:	01010113          	addi	sp,sp,16
    800017dc:	00008067          	ret

00000000800017e0 <main>:

void main() {
    800017e0:	fe010113          	addi	sp,sp,-32
    800017e4:	00113c23          	sd	ra,24(sp)
    800017e8:	00813823          	sd	s0,16(sp)
    800017ec:	02010413          	addi	s0,sp,32
    MemoryAllocator::initHeap();
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	254080e7          	jalr	596(ra) # 80001a44 <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	070080e7          	jalr	112(ra) # 80001868 <_ZN5Riscv16setupTrapHandlerEv>

    thread_t mainThread, userBody;

    mainThread = Thread::createThread(nullptr, nullptr);
    80001800:	00001637          	lui	a2,0x1
    80001804:	00000593          	li	a1,0
    80001808:	00000513          	li	a0,0
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	cbc080e7          	jalr	-836(ra) # 800014c8 <_ZN6Thread12createThreadEPFvPvES0_m>
    Thread::running = mainThread;
    80001814:	00004797          	auipc	a5,0x4
    80001818:	4cc7b783          	ld	a5,1228(a5) # 80005ce0 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000181c:	00a7b023          	sd	a0,0(a5)
    void setState(ThreadState s) { state = s; }
    80001820:	00200793          	li	a5,2
    80001824:	02f52c23          	sw	a5,56(a0)
    mainThread->setState(RUNNING);

    thread_create(&userBody, &userWrapper, nullptr);
    80001828:	00000613          	li	a2,0
    8000182c:	00000597          	auipc	a1,0x0
    80001830:	f8c58593          	addi	a1,a1,-116 # 800017b8 <_Z11userWrapperPv>
    80001834:	fe840513          	addi	a0,s0,-24
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	9e4080e7          	jalr	-1564(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>

    while (!Scheduler::isEmpty()) {
    80001840:	00000097          	auipc	ra,0x0
    80001844:	f54080e7          	jalr	-172(ra) # 80001794 <_ZN9Scheduler7isEmptyEv>
    80001848:	00051863          	bnez	a0,80001858 <main+0x78>
        Thread::yield();
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	e4c080e7          	jalr	-436(ra) # 80001698 <_ZN6Thread5yieldEv>
    80001854:	fedff06f          	j	80001840 <main+0x60>
    // }
    //
    // printString("All threads done!\n");

    // userMain();
    80001858:	01813083          	ld	ra,24(sp)
    8000185c:	01013403          	ld	s0,16(sp)
    80001860:	02010113          	addi	sp,sp,32
    80001864:	00008067          	ret

0000000080001868 <_ZN5Riscv16setupTrapHandlerEv>:

constexpr uint64 THREAD_CREATE = 0x11;
constexpr uint64 THREAD_EXIT = 0x12;
constexpr uint64 THREAD_DISPATCH = 0x13;

void Riscv::setupTrapHandler() {
    80001868:	ff010113          	addi	sp,sp,-16
    8000186c:	00813423          	sd	s0,8(sp)
    80001870:	01010413          	addi	s0,sp,16
    unsigned long addr = (unsigned long)&trap_handler;
    80001874:	00004797          	auipc	a5,0x4
    80001878:	4647b783          	ld	a5,1124(a5) # 80005cd8 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(addr));
    8000187c:	10579073          	csrw	stvec,a5
}
    80001880:	00813403          	ld	s0,8(sp)
    80001884:	01010113          	addi	sp,sp,16
    80001888:	00008067          	ret

000000008000188c <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    8000188c:	fe010113          	addi	sp,sp,-32
    80001890:	00113c23          	sd	ra,24(sp)
    80001894:	00813823          	sd	s0,16(sp)
    80001898:	00913423          	sd	s1,8(sp)
    8000189c:	01213023          	sd	s2,0(sp)
    800018a0:	02010413          	addi	s0,sp,32
    uint64 scause = 0, sepc = 0;
    asm volatile("csrr %0, scause" : "=r"(scause));
    800018a4:	14202773          	csrr	a4,scause
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    800018a8:	141024f3          	csrr	s1,sepc

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    800018ac:	fff00793          	li	a5,-1
    800018b0:	0017d793          	srli	a5,a5,0x1
    800018b4:	00f777b3          	and	a5,a4,a5

    if (interrupt == 0 && (cause == 8 || cause == 9)) {
    800018b8:	00074863          	bltz	a4,800018c8 <_ZN5Riscv11trapHandlerEv+0x3c>
    800018bc:	ff878793          	addi	a5,a5,-8
    800018c0:	00100713          	li	a4,1
    800018c4:	00f77e63          	bgeu	a4,a5,800018e0 <_ZN5Riscv11trapHandlerEv+0x54>
        }

        sepc += 4;
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    }
    800018c8:	01813083          	ld	ra,24(sp)
    800018cc:	01013403          	ld	s0,16(sp)
    800018d0:	00813483          	ld	s1,8(sp)
    800018d4:	00013903          	ld	s2,0(sp)
    800018d8:	02010113          	addi	sp,sp,32
    800018dc:	00008067          	ret
        asm volatile("mv %0, a0" : "=r"(code));
    800018e0:	00050793          	mv	a5,a0
        switch (code) {
    800018e4:	01300713          	li	a4,19
    800018e8:	04f76463          	bltu	a4,a5,80001930 <_ZN5Riscv11trapHandlerEv+0xa4>
    800018ec:	00279793          	slli	a5,a5,0x2
    800018f0:	00003717          	auipc	a4,0x3
    800018f4:	73070713          	addi	a4,a4,1840 # 80005020 <CONSOLE_STATUS+0x10>
    800018f8:	00e787b3          	add	a5,a5,a4
    800018fc:	0007a783          	lw	a5,0(a5)
    80001900:	00e787b3          	add	a5,a5,a4
    80001904:	00078067          	jr	a5
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001908:	00004917          	auipc	s2,0x4
    8000190c:	3e893903          	ld	s2,1000(s2) # 80005cf0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001910:	00093783          	ld	a5,0(s2)
    80001914:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(size));
    80001918:	00058513          	mv	a0,a1
                void* ptr = MemoryAllocator::mem_alloc(size);
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	178080e7          	jalr	376(ra) # 80001a94 <_ZN15MemoryAllocator9mem_allocEm>
                asm volatile("mv a0, %0" :: "r"(ptr));
    80001924:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001928:	00093783          	ld	a5,0(s2)
    8000192c:	04a7b823          	sd	a0,80(a5)
        sepc += 4;
    80001930:	00448493          	addi	s1,s1,4
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    80001934:	14149073          	csrw	sepc,s1
    80001938:	f91ff06f          	j	800018c8 <_ZN5Riscv11trapHandlerEv+0x3c>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    8000193c:	00004917          	auipc	s2,0x4
    80001940:	3b493903          	ld	s2,948(s2) # 80005cf0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001944:	00093783          	ld	a5,0(s2)
    80001948:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(addr));
    8000194c:	00058513          	mv	a0,a1
                int status = MemoryAllocator::mem_free(addr);
    80001950:	00000097          	auipc	ra,0x0
    80001954:	244080e7          	jalr	580(ra) # 80001b94 <_ZN15MemoryAllocator8mem_freeEPv>
                asm volatile("mv a0, %0" :: "r"(status));
    80001958:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    8000195c:	00093783          	ld	a5,0(s2)
    80001960:	04a7b823          	sd	a0,80(a5)
                break;
    80001964:	fcdff06f          	j	80001930 <_ZN5Riscv11trapHandlerEv+0xa4>
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	2d0080e7          	jalr	720(ra) # 80001c38 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                asm volatile("mv a0, %0" :: "r"(freeSpace));
    80001970:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001974:	00004797          	auipc	a5,0x4
    80001978:	37c7b783          	ld	a5,892(a5) # 80005cf0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000197c:	0007b783          	ld	a5,0(a5)
    80001980:	04a7b823          	sd	a0,80(a5)
                break;
    80001984:	fadff06f          	j	80001930 <_ZN5Riscv11trapHandlerEv+0xa4>
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	2f8080e7          	jalr	760(ra) # 80001c80 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                asm volatile("mv a0, %0" :: "r"(largest));
    80001990:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001994:	00004797          	auipc	a5,0x4
    80001998:	35c7b783          	ld	a5,860(a5) # 80005cf0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000199c:	0007b783          	ld	a5,0(a5)
    800019a0:	04a7b823          	sd	a0,80(a5)
                break;
    800019a4:	f8dff06f          	j	80001930 <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    800019a8:	00004797          	auipc	a5,0x4
    800019ac:	3487b783          	ld	a5,840(a5) # 80005cf0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800019b0:	0007b783          	ld	a5,0(a5)
    800019b4:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    800019b8:	00058913          	mv	s2,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    800019bc:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(start_routine));
    800019c0:	00060513          	mv	a0,a2
                asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
    800019c4:	0687b683          	ld	a3,104(a5)
                asm volatile("mv %0, a3" : "=r"(args));
    800019c8:	00068593          	mv	a1,a3
                asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
    800019cc:	0707b703          	ld	a4,112(a5)
                asm volatile("mv %0, a4" : "=r"(stack));
    800019d0:	00070613          	mv	a2,a4
                *handle = Thread::createThread(start_routine, args, stack, stackSize);
    800019d4:	000016b7          	lui	a3,0x1
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	9b4080e7          	jalr	-1612(ra) # 8000138c <_ZN6Thread12createThreadEPFvPvES0_S0_m>
    800019e0:	00a93023          	sd	a0,0(s2)
                if (*handle != nullptr) {
    800019e4:	02050263          	beqz	a0,80001a08 <_ZN5Riscv11trapHandlerEv+0x17c>
                    (*handle)->start();
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	b74080e7          	jalr	-1164(ra) # 8000155c <_ZN6Thread5startEv>
                    asm volatile("li a0, 0");
    800019f0:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    800019f4:	00004797          	auipc	a5,0x4
    800019f8:	2fc7b783          	ld	a5,764(a5) # 80005cf0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800019fc:	0007b783          	ld	a5,0(a5)
    80001a00:	04a7b823          	sd	a0,80(a5)
                break;
    80001a04:	f2dff06f          	j	80001930 <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001a08:	fff00513          	li	a0,-1
    80001a0c:	fe9ff06f          	j	800019f4 <_ZN5Riscv11trapHandlerEv+0x168>
                if (Thread::running) {
    80001a10:	00004797          	auipc	a5,0x4
    80001a14:	2d07b783          	ld	a5,720(a5) # 80005ce0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a18:	0007b503          	ld	a0,0(a5)
    80001a1c:	00050663          	beqz	a0,80001a28 <_ZN5Riscv11trapHandlerEv+0x19c>
                    Thread::running->exit();
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	ba8080e7          	jalr	-1112(ra) # 800015c8 <_ZN6Thread4exitEv>
                Thread::dispatch();
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	bc0080e7          	jalr	-1088(ra) # 800015e8 <_ZN6Thread8dispatchEv>
                asm volatile("li a0, 0");
    80001a30:	00000513          	li	a0,0
                break;
    80001a34:	efdff06f          	j	80001930 <_ZN5Riscv11trapHandlerEv+0xa4>
                Thread::dispatch();
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	bb0080e7          	jalr	-1104(ra) # 800015e8 <_ZN6Thread8dispatchEv>
                break;
    80001a40:	ef1ff06f          	j	80001930 <_ZN5Riscv11trapHandlerEv+0xa4>

0000000080001a44 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00813423          	sd	s0,8(sp)
    80001a4c:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80001a50:	00004697          	auipc	a3,0x4
    80001a54:	2786b683          	ld	a3,632(a3) # 80005cc8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a58:	0006b783          	ld	a5,0(a3)
    80001a5c:	00004717          	auipc	a4,0x4
    80001a60:	30c70713          	addi	a4,a4,780 # 80005d68 <_ZN15MemoryAllocator12freeListHeadE>
    80001a64:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    80001a68:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80001a6c:	00004797          	auipc	a5,0x4
    80001a70:	27c7b783          	ld	a5,636(a5) # 80005ce8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a74:	0007b783          	ld	a5,0(a5)
    80001a78:	0006b683          	ld	a3,0(a3)
    80001a7c:	00073703          	ld	a4,0(a4)
    80001a80:	40d787b3          	sub	a5,a5,a3
    80001a84:	00f73423          	sd	a5,8(a4)
}
    80001a88:	00813403          	ld	s0,8(sp)
    80001a8c:	01010113          	addi	sp,sp,16
    80001a90:	00008067          	ret

0000000080001a94 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    80001a94:	ff010113          	addi	sp,sp,-16
    80001a98:	00813423          	sd	s0,8(sp)
    80001a9c:	01010413          	addi	s0,sp,16
    80001aa0:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    80001aa4:	00004517          	auipc	a0,0x4
    80001aa8:	2c453503          	ld	a0,708(a0) # 80005d68 <_ZN15MemoryAllocator12freeListHeadE>
    80001aac:	06050063          	beqz	a0,80001b0c <_ZN15MemoryAllocator9mem_allocEm+0x78>
    80001ab0:	08078a63          	beqz	a5,80001b44 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    80001ab4:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    80001ab8:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    80001abc:	00000613          	li	a2,0
    80001ac0:	00c0006f          	j	80001acc <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    80001ac4:	00050613          	mv	a2,a0
        curr = curr->next;
    80001ac8:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    80001acc:	00050663          	beqz	a0,80001ad8 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    80001ad0:	00853783          	ld	a5,8(a0)
    80001ad4:	fee7e8e3          	bltu	a5,a4,80001ac4 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    80001ad8:	02050a63          	beqz	a0,80001b0c <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    80001adc:	00853583          	ld	a1,8(a0)
    80001ae0:	02068793          	addi	a5,a3,32
    80001ae4:	04f5e063          	bltu	a1,a5,80001b24 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    80001ae8:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    80001aec:	40e585b3          	sub	a1,a1,a4
    80001af0:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    80001af4:	00053683          	ld	a3,0(a0)
    80001af8:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    80001afc:	00060e63          	beqz	a2,80001b18 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80001b00:	00f63023          	sd	a5,0(a2) # 1000 <_entry-0x7ffff000>
        else freeListHead = newBlock;

        curr->size = totalSize;
    80001b04:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
    80001b08:	01050513          	addi	a0,a0,16
}
    80001b0c:	00813403          	ld	s0,8(sp)
    80001b10:	01010113          	addi	sp,sp,16
    80001b14:	00008067          	ret
        else freeListHead = newBlock;
    80001b18:	00004697          	auipc	a3,0x4
    80001b1c:	24f6b823          	sd	a5,592(a3) # 80005d68 <_ZN15MemoryAllocator12freeListHeadE>
    80001b20:	fe5ff06f          	j	80001b04 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    80001b24:	00060863          	beqz	a2,80001b34 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80001b28:	00053783          	ld	a5,0(a0)
    80001b2c:	00f63023          	sd	a5,0(a2)
    80001b30:	fd9ff06f          	j	80001b08 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    80001b34:	00053783          	ld	a5,0(a0)
    80001b38:	00004717          	auipc	a4,0x4
    80001b3c:	22f73823          	sd	a5,560(a4) # 80005d68 <_ZN15MemoryAllocator12freeListHeadE>
    80001b40:	fc9ff06f          	j	80001b08 <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    80001b44:	00000513          	li	a0,0
    80001b48:	fc5ff06f          	j	80001b0c <_ZN15MemoryAllocator9mem_allocEm+0x78>

0000000080001b4c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    80001b4c:	ff010113          	addi	sp,sp,-16
    80001b50:	00813423          	sd	s0,8(sp)
    80001b54:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80001b58:	00050c63          	beqz	a0,80001b70 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    80001b5c:	00053783          	ld	a5,0(a0)
    80001b60:	00078863          	beqz	a5,80001b70 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    80001b64:	00853703          	ld	a4,8(a0)
    80001b68:	00e506b3          	add	a3,a0,a4
    80001b6c:	00d78863          	beq	a5,a3,80001b7c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    80001b70:	00813403          	ld	s0,8(sp)
    80001b74:	01010113          	addi	sp,sp,16
    80001b78:	00008067          	ret
        curr->size += curr->next->size;
    80001b7c:	0087b683          	ld	a3,8(a5)
    80001b80:	00d70733          	add	a4,a4,a3
    80001b84:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    80001b88:	0007b783          	ld	a5,0(a5)
    80001b8c:	00f53023          	sd	a5,0(a0)
    80001b90:	fe1ff06f          	j	80001b70 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

0000000080001b94 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    80001b94:	08050e63          	beqz	a0,80001c30 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80001b98:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    80001b9c:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    80001ba0:	00004797          	auipc	a5,0x4
    80001ba4:	1c87b783          	ld	a5,456(a5) # 80005d68 <_ZN15MemoryAllocator12freeListHeadE>
    80001ba8:	02078863          	beqz	a5,80001bd8 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    80001bac:	fe010113          	addi	sp,sp,-32
    80001bb0:	00113c23          	sd	ra,24(sp)
    80001bb4:	00813823          	sd	s0,16(sp)
    80001bb8:	00913423          	sd	s1,8(sp)
    80001bbc:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    80001bc0:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    80001bc4:	02078463          	beqz	a5,80001bec <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001bc8:	02a7f263          	bgeu	a5,a0,80001bec <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    80001bcc:	00078493          	mv	s1,a5
        curr = curr->next;
    80001bd0:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    80001bd4:	ff1ff06f          	j	80001bc4 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    80001bd8:	00004797          	auipc	a5,0x4
    80001bdc:	18a7b823          	sd	a0,400(a5) # 80005d68 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    80001be0:	fe073823          	sd	zero,-16(a4)
        return 0;
    80001be4:	00000513          	li	a0,0
    80001be8:	00008067          	ret
    blockToFree->next = curr;
    80001bec:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    80001bf0:	02048a63          	beqz	s1,80001c24 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80001bf4:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	f54080e7          	jalr	-172(ra) # 80001b4c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    80001c00:	00048513          	mv	a0,s1
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	f48080e7          	jalr	-184(ra) # 80001b4c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    80001c0c:	00000513          	li	a0,0
}
    80001c10:	01813083          	ld	ra,24(sp)
    80001c14:	01013403          	ld	s0,16(sp)
    80001c18:	00813483          	ld	s1,8(sp)
    80001c1c:	02010113          	addi	sp,sp,32
    80001c20:	00008067          	ret
    else freeListHead = blockToFree;
    80001c24:	00004797          	auipc	a5,0x4
    80001c28:	14a7b223          	sd	a0,324(a5) # 80005d68 <_ZN15MemoryAllocator12freeListHeadE>
    80001c2c:	fcdff06f          	j	80001bf8 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    80001c30:	fff00513          	li	a0,-1
}
    80001c34:	00008067          	ret

0000000080001c38 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00813423          	sd	s0,8(sp)
    80001c40:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001c44:	00004797          	auipc	a5,0x4
    80001c48:	1247b783          	ld	a5,292(a5) # 80005d68 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    80001c4c:	00000513          	li	a0,0
    80001c50:	0080006f          	j	80001c58 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001c54:	0007b783          	ld	a5,0(a5)
    80001c58:	00078e63          	beqz	a5,80001c74 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    80001c5c:	0087b703          	ld	a4,8(a5)
    80001c60:	01000693          	li	a3,16
    80001c64:	fee6f8e3          	bgeu	a3,a4,80001c54 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    80001c68:	00a70533          	add	a0,a4,a0
    80001c6c:	ff050513          	addi	a0,a0,-16
    80001c70:	fe5ff06f          	j	80001c54 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    80001c74:	00813403          	ld	s0,8(sp)
    80001c78:	01010113          	addi	sp,sp,16
    80001c7c:	00008067          	ret

0000000080001c80 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00813423          	sd	s0,8(sp)
    80001c88:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001c8c:	00004717          	auipc	a4,0x4
    80001c90:	0dc73703          	ld	a4,220(a4) # 80005d68 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    80001c94:	00000513          	li	a0,0
    80001c98:	0080006f          	j	80001ca0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001c9c:	00073703          	ld	a4,0(a4)
    80001ca0:	02070263          	beqz	a4,80001cc4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    80001ca4:	00873783          	ld	a5,8(a4)
    80001ca8:	01000693          	li	a3,16
    80001cac:	00d7f463          	bgeu	a5,a3,80001cb4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    80001cb0:	01000793          	li	a5,16
    80001cb4:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    80001cb8:	fef572e3          	bgeu	a0,a5,80001c9c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    80001cbc:	00078513          	mv	a0,a5
    80001cc0:	fddff06f          	j	80001c9c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    80001cc4:	00813403          	ld	s0,8(sp)
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret

0000000080001cd0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80001cd0:	fe010113          	addi	sp,sp,-32
    80001cd4:	00113c23          	sd	ra,24(sp)
    80001cd8:	00813823          	sd	s0,16(sp)
    80001cdc:	00913423          	sd	s1,8(sp)
    80001ce0:	01213023          	sd	s2,0(sp)
    80001ce4:	02010413          	addi	s0,sp,32
    80001ce8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001cec:	00100793          	li	a5,1
    80001cf0:	02a7f863          	bgeu	a5,a0,80001d20 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001cf4:	00a00793          	li	a5,10
    80001cf8:	02f577b3          	remu	a5,a0,a5
    80001cfc:	02078e63          	beqz	a5,80001d38 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001d00:	fff48513          	addi	a0,s1,-1
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	fcc080e7          	jalr	-52(ra) # 80001cd0 <_ZL9fibonaccim>
    80001d0c:	00050913          	mv	s2,a0
    80001d10:	ffe48513          	addi	a0,s1,-2
    80001d14:	00000097          	auipc	ra,0x0
    80001d18:	fbc080e7          	jalr	-68(ra) # 80001cd0 <_ZL9fibonaccim>
    80001d1c:	00a90533          	add	a0,s2,a0
}
    80001d20:	01813083          	ld	ra,24(sp)
    80001d24:	01013403          	ld	s0,16(sp)
    80001d28:	00813483          	ld	s1,8(sp)
    80001d2c:	00013903          	ld	s2,0(sp)
    80001d30:	02010113          	addi	sp,sp,32
    80001d34:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001d38:	fffff097          	auipc	ra,0xfffff
    80001d3c:	5b8080e7          	jalr	1464(ra) # 800012f0 <_Z15thread_dispatchv>
    80001d40:	fc1ff06f          	j	80001d00 <_ZL9fibonaccim+0x30>

0000000080001d44 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80001d44:	fe010113          	addi	sp,sp,-32
    80001d48:	00113c23          	sd	ra,24(sp)
    80001d4c:	00813823          	sd	s0,16(sp)
    80001d50:	00913423          	sd	s1,8(sp)
    80001d54:	01213023          	sd	s2,0(sp)
    80001d58:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001d5c:	00a00493          	li	s1,10
    80001d60:	0400006f          	j	80001da0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001d64:	00003517          	auipc	a0,0x3
    80001d68:	30c50513          	addi	a0,a0,780 # 80005070 <CONSOLE_STATUS+0x60>
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	53c080e7          	jalr	1340(ra) # 800022a8 <_Z11printStringPKc>
    80001d74:	00000613          	li	a2,0
    80001d78:	00a00593          	li	a1,10
    80001d7c:	00048513          	mv	a0,s1
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	6d8080e7          	jalr	1752(ra) # 80002458 <_Z8printIntiii>
    80001d88:	00003517          	auipc	a0,0x3
    80001d8c:	56050513          	addi	a0,a0,1376 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	518080e7          	jalr	1304(ra) # 800022a8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001d98:	0014849b          	addiw	s1,s1,1
    80001d9c:	0ff4f493          	andi	s1,s1,255
    80001da0:	00c00793          	li	a5,12
    80001da4:	fc97f0e3          	bgeu	a5,s1,80001d64 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80001da8:	00003517          	auipc	a0,0x3
    80001dac:	2d050513          	addi	a0,a0,720 # 80005078 <CONSOLE_STATUS+0x68>
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	4f8080e7          	jalr	1272(ra) # 800022a8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001db8:	00500313          	li	t1,5
    thread_dispatch();
    80001dbc:	fffff097          	auipc	ra,0xfffff
    80001dc0:	534080e7          	jalr	1332(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001dc4:	01000513          	li	a0,16
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	f08080e7          	jalr	-248(ra) # 80001cd0 <_ZL9fibonaccim>
    80001dd0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80001dd4:	00003517          	auipc	a0,0x3
    80001dd8:	2b450513          	addi	a0,a0,692 # 80005088 <CONSOLE_STATUS+0x78>
    80001ddc:	00000097          	auipc	ra,0x0
    80001de0:	4cc080e7          	jalr	1228(ra) # 800022a8 <_Z11printStringPKc>
    80001de4:	00000613          	li	a2,0
    80001de8:	00a00593          	li	a1,10
    80001dec:	0009051b          	sext.w	a0,s2
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	668080e7          	jalr	1640(ra) # 80002458 <_Z8printIntiii>
    80001df8:	00003517          	auipc	a0,0x3
    80001dfc:	4f050513          	addi	a0,a0,1264 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	4a8080e7          	jalr	1192(ra) # 800022a8 <_Z11printStringPKc>
    80001e08:	0400006f          	j	80001e48 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001e0c:	00003517          	auipc	a0,0x3
    80001e10:	26450513          	addi	a0,a0,612 # 80005070 <CONSOLE_STATUS+0x60>
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	494080e7          	jalr	1172(ra) # 800022a8 <_Z11printStringPKc>
    80001e1c:	00000613          	li	a2,0
    80001e20:	00a00593          	li	a1,10
    80001e24:	00048513          	mv	a0,s1
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	630080e7          	jalr	1584(ra) # 80002458 <_Z8printIntiii>
    80001e30:	00003517          	auipc	a0,0x3
    80001e34:	4b850513          	addi	a0,a0,1208 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80001e38:	00000097          	auipc	ra,0x0
    80001e3c:	470080e7          	jalr	1136(ra) # 800022a8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001e40:	0014849b          	addiw	s1,s1,1
    80001e44:	0ff4f493          	andi	s1,s1,255
    80001e48:	00f00793          	li	a5,15
    80001e4c:	fc97f0e3          	bgeu	a5,s1,80001e0c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80001e50:	00003517          	auipc	a0,0x3
    80001e54:	24850513          	addi	a0,a0,584 # 80005098 <CONSOLE_STATUS+0x88>
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	450080e7          	jalr	1104(ra) # 800022a8 <_Z11printStringPKc>
    finishedD = true;
    80001e60:	00100793          	li	a5,1
    80001e64:	00004717          	auipc	a4,0x4
    80001e68:	f0f70623          	sb	a5,-244(a4) # 80005d70 <_ZL9finishedD>
    thread_dispatch();
    80001e6c:	fffff097          	auipc	ra,0xfffff
    80001e70:	484080e7          	jalr	1156(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80001e74:	01813083          	ld	ra,24(sp)
    80001e78:	01013403          	ld	s0,16(sp)
    80001e7c:	00813483          	ld	s1,8(sp)
    80001e80:	00013903          	ld	s2,0(sp)
    80001e84:	02010113          	addi	sp,sp,32
    80001e88:	00008067          	ret

0000000080001e8c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80001e8c:	fe010113          	addi	sp,sp,-32
    80001e90:	00113c23          	sd	ra,24(sp)
    80001e94:	00813823          	sd	s0,16(sp)
    80001e98:	00913423          	sd	s1,8(sp)
    80001e9c:	01213023          	sd	s2,0(sp)
    80001ea0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001ea4:	00000493          	li	s1,0
    80001ea8:	0400006f          	j	80001ee8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80001eac:	00003517          	auipc	a0,0x3
    80001eb0:	1fc50513          	addi	a0,a0,508 # 800050a8 <CONSOLE_STATUS+0x98>
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	3f4080e7          	jalr	1012(ra) # 800022a8 <_Z11printStringPKc>
    80001ebc:	00000613          	li	a2,0
    80001ec0:	00a00593          	li	a1,10
    80001ec4:	00048513          	mv	a0,s1
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	590080e7          	jalr	1424(ra) # 80002458 <_Z8printIntiii>
    80001ed0:	00003517          	auipc	a0,0x3
    80001ed4:	41850513          	addi	a0,a0,1048 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	3d0080e7          	jalr	976(ra) # 800022a8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001ee0:	0014849b          	addiw	s1,s1,1
    80001ee4:	0ff4f493          	andi	s1,s1,255
    80001ee8:	00200793          	li	a5,2
    80001eec:	fc97f0e3          	bgeu	a5,s1,80001eac <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80001ef0:	00003517          	auipc	a0,0x3
    80001ef4:	1c050513          	addi	a0,a0,448 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001ef8:	00000097          	auipc	ra,0x0
    80001efc:	3b0080e7          	jalr	944(ra) # 800022a8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001f00:	00700313          	li	t1,7
    thread_dispatch();
    80001f04:	fffff097          	auipc	ra,0xfffff
    80001f08:	3ec080e7          	jalr	1004(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001f0c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80001f10:	00003517          	auipc	a0,0x3
    80001f14:	1b050513          	addi	a0,a0,432 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	390080e7          	jalr	912(ra) # 800022a8 <_Z11printStringPKc>
    80001f20:	00000613          	li	a2,0
    80001f24:	00a00593          	li	a1,10
    80001f28:	0009051b          	sext.w	a0,s2
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	52c080e7          	jalr	1324(ra) # 80002458 <_Z8printIntiii>
    80001f34:	00003517          	auipc	a0,0x3
    80001f38:	3b450513          	addi	a0,a0,948 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	36c080e7          	jalr	876(ra) # 800022a8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80001f44:	00c00513          	li	a0,12
    80001f48:	00000097          	auipc	ra,0x0
    80001f4c:	d88080e7          	jalr	-632(ra) # 80001cd0 <_ZL9fibonaccim>
    80001f50:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80001f54:	00003517          	auipc	a0,0x3
    80001f58:	17450513          	addi	a0,a0,372 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001f5c:	00000097          	auipc	ra,0x0
    80001f60:	34c080e7          	jalr	844(ra) # 800022a8 <_Z11printStringPKc>
    80001f64:	00000613          	li	a2,0
    80001f68:	00a00593          	li	a1,10
    80001f6c:	0009051b          	sext.w	a0,s2
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	4e8080e7          	jalr	1256(ra) # 80002458 <_Z8printIntiii>
    80001f78:	00003517          	auipc	a0,0x3
    80001f7c:	37050513          	addi	a0,a0,880 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	328080e7          	jalr	808(ra) # 800022a8 <_Z11printStringPKc>
    80001f88:	0400006f          	j	80001fc8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80001f8c:	00003517          	auipc	a0,0x3
    80001f90:	11c50513          	addi	a0,a0,284 # 800050a8 <CONSOLE_STATUS+0x98>
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	314080e7          	jalr	788(ra) # 800022a8 <_Z11printStringPKc>
    80001f9c:	00000613          	li	a2,0
    80001fa0:	00a00593          	li	a1,10
    80001fa4:	00048513          	mv	a0,s1
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	4b0080e7          	jalr	1200(ra) # 80002458 <_Z8printIntiii>
    80001fb0:	00003517          	auipc	a0,0x3
    80001fb4:	33850513          	addi	a0,a0,824 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80001fb8:	00000097          	auipc	ra,0x0
    80001fbc:	2f0080e7          	jalr	752(ra) # 800022a8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001fc0:	0014849b          	addiw	s1,s1,1
    80001fc4:	0ff4f493          	andi	s1,s1,255
    80001fc8:	00500793          	li	a5,5
    80001fcc:	fc97f0e3          	bgeu	a5,s1,80001f8c <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80001fd0:	00003517          	auipc	a0,0x3
    80001fd4:	10850513          	addi	a0,a0,264 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	2d0080e7          	jalr	720(ra) # 800022a8 <_Z11printStringPKc>
    finishedC = true;
    80001fe0:	00100793          	li	a5,1
    80001fe4:	00004717          	auipc	a4,0x4
    80001fe8:	d8f706a3          	sb	a5,-627(a4) # 80005d71 <_ZL9finishedC>
    thread_dispatch();
    80001fec:	fffff097          	auipc	ra,0xfffff
    80001ff0:	304080e7          	jalr	772(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80001ff4:	01813083          	ld	ra,24(sp)
    80001ff8:	01013403          	ld	s0,16(sp)
    80001ffc:	00813483          	ld	s1,8(sp)
    80002000:	00013903          	ld	s2,0(sp)
    80002004:	02010113          	addi	sp,sp,32
    80002008:	00008067          	ret

000000008000200c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000200c:	fe010113          	addi	sp,sp,-32
    80002010:	00113c23          	sd	ra,24(sp)
    80002014:	00813823          	sd	s0,16(sp)
    80002018:	00913423          	sd	s1,8(sp)
    8000201c:	01213023          	sd	s2,0(sp)
    80002020:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002024:	00000913          	li	s2,0
    80002028:	0380006f          	j	80002060 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000202c:	fffff097          	auipc	ra,0xfffff
    80002030:	2c4080e7          	jalr	708(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002034:	00148493          	addi	s1,s1,1
    80002038:	000027b7          	lui	a5,0x2
    8000203c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002040:	0097ee63          	bltu	a5,s1,8000205c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002044:	00000713          	li	a4,0
    80002048:	000077b7          	lui	a5,0x7
    8000204c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002050:	fce7eee3          	bltu	a5,a4,8000202c <_ZL11workerBodyBPv+0x20>
    80002054:	00170713          	addi	a4,a4,1
    80002058:	ff1ff06f          	j	80002048 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000205c:	00190913          	addi	s2,s2,1
    80002060:	00f00793          	li	a5,15
    80002064:	0527e063          	bltu	a5,s2,800020a4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002068:	00003517          	auipc	a0,0x3
    8000206c:	08050513          	addi	a0,a0,128 # 800050e8 <CONSOLE_STATUS+0xd8>
    80002070:	00000097          	auipc	ra,0x0
    80002074:	238080e7          	jalr	568(ra) # 800022a8 <_Z11printStringPKc>
    80002078:	00000613          	li	a2,0
    8000207c:	00a00593          	li	a1,10
    80002080:	0009051b          	sext.w	a0,s2
    80002084:	00000097          	auipc	ra,0x0
    80002088:	3d4080e7          	jalr	980(ra) # 80002458 <_Z8printIntiii>
    8000208c:	00003517          	auipc	a0,0x3
    80002090:	25c50513          	addi	a0,a0,604 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002094:	00000097          	auipc	ra,0x0
    80002098:	214080e7          	jalr	532(ra) # 800022a8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000209c:	00000493          	li	s1,0
    800020a0:	f99ff06f          	j	80002038 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800020a4:	00003517          	auipc	a0,0x3
    800020a8:	04c50513          	addi	a0,a0,76 # 800050f0 <CONSOLE_STATUS+0xe0>
    800020ac:	00000097          	auipc	ra,0x0
    800020b0:	1fc080e7          	jalr	508(ra) # 800022a8 <_Z11printStringPKc>
    finishedB = true;
    800020b4:	00100793          	li	a5,1
    800020b8:	00004717          	auipc	a4,0x4
    800020bc:	caf70d23          	sb	a5,-838(a4) # 80005d72 <_ZL9finishedB>
    thread_dispatch();
    800020c0:	fffff097          	auipc	ra,0xfffff
    800020c4:	230080e7          	jalr	560(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800020c8:	01813083          	ld	ra,24(sp)
    800020cc:	01013403          	ld	s0,16(sp)
    800020d0:	00813483          	ld	s1,8(sp)
    800020d4:	00013903          	ld	s2,0(sp)
    800020d8:	02010113          	addi	sp,sp,32
    800020dc:	00008067          	ret

00000000800020e0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800020e0:	fe010113          	addi	sp,sp,-32
    800020e4:	00113c23          	sd	ra,24(sp)
    800020e8:	00813823          	sd	s0,16(sp)
    800020ec:	00913423          	sd	s1,8(sp)
    800020f0:	01213023          	sd	s2,0(sp)
    800020f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800020f8:	00000913          	li	s2,0
    800020fc:	0380006f          	j	80002134 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002100:	fffff097          	auipc	ra,0xfffff
    80002104:	1f0080e7          	jalr	496(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002108:	00148493          	addi	s1,s1,1
    8000210c:	000027b7          	lui	a5,0x2
    80002110:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002114:	0097ee63          	bltu	a5,s1,80002130 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002118:	00000713          	li	a4,0
    8000211c:	000077b7          	lui	a5,0x7
    80002120:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002124:	fce7eee3          	bltu	a5,a4,80002100 <_ZL11workerBodyAPv+0x20>
    80002128:	00170713          	addi	a4,a4,1
    8000212c:	ff1ff06f          	j	8000211c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002130:	00190913          	addi	s2,s2,1
    80002134:	00900793          	li	a5,9
    80002138:	0527e063          	bltu	a5,s2,80002178 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000213c:	00003517          	auipc	a0,0x3
    80002140:	fc450513          	addi	a0,a0,-60 # 80005100 <CONSOLE_STATUS+0xf0>
    80002144:	00000097          	auipc	ra,0x0
    80002148:	164080e7          	jalr	356(ra) # 800022a8 <_Z11printStringPKc>
    8000214c:	00000613          	li	a2,0
    80002150:	00a00593          	li	a1,10
    80002154:	0009051b          	sext.w	a0,s2
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	300080e7          	jalr	768(ra) # 80002458 <_Z8printIntiii>
    80002160:	00003517          	auipc	a0,0x3
    80002164:	18850513          	addi	a0,a0,392 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	140080e7          	jalr	320(ra) # 800022a8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002170:	00000493          	li	s1,0
    80002174:	f99ff06f          	j	8000210c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002178:	00003517          	auipc	a0,0x3
    8000217c:	f9050513          	addi	a0,a0,-112 # 80005108 <CONSOLE_STATUS+0xf8>
    80002180:	00000097          	auipc	ra,0x0
    80002184:	128080e7          	jalr	296(ra) # 800022a8 <_Z11printStringPKc>
    finishedA = true;
    80002188:	00100793          	li	a5,1
    8000218c:	00004717          	auipc	a4,0x4
    80002190:	bef703a3          	sb	a5,-1049(a4) # 80005d73 <_ZL9finishedA>
}
    80002194:	01813083          	ld	ra,24(sp)
    80002198:	01013403          	ld	s0,16(sp)
    8000219c:	00813483          	ld	s1,8(sp)
    800021a0:	00013903          	ld	s2,0(sp)
    800021a4:	02010113          	addi	sp,sp,32
    800021a8:	00008067          	ret

00000000800021ac <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800021ac:	fd010113          	addi	sp,sp,-48
    800021b0:	02113423          	sd	ra,40(sp)
    800021b4:	02813023          	sd	s0,32(sp)
    800021b8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800021bc:	00000613          	li	a2,0
    800021c0:	00000597          	auipc	a1,0x0
    800021c4:	f2058593          	addi	a1,a1,-224 # 800020e0 <_ZL11workerBodyAPv>
    800021c8:	fd040513          	addi	a0,s0,-48
    800021cc:	fffff097          	auipc	ra,0xfffff
    800021d0:	050080e7          	jalr	80(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadA created\n");
    800021d4:	00003517          	auipc	a0,0x3
    800021d8:	f4450513          	addi	a0,a0,-188 # 80005118 <CONSOLE_STATUS+0x108>
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	0cc080e7          	jalr	204(ra) # 800022a8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800021e4:	00000613          	li	a2,0
    800021e8:	00000597          	auipc	a1,0x0
    800021ec:	e2458593          	addi	a1,a1,-476 # 8000200c <_ZL11workerBodyBPv>
    800021f0:	fd840513          	addi	a0,s0,-40
    800021f4:	fffff097          	auipc	ra,0xfffff
    800021f8:	028080e7          	jalr	40(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadB created\n");
    800021fc:	00003517          	auipc	a0,0x3
    80002200:	f3450513          	addi	a0,a0,-204 # 80005130 <CONSOLE_STATUS+0x120>
    80002204:	00000097          	auipc	ra,0x0
    80002208:	0a4080e7          	jalr	164(ra) # 800022a8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000220c:	00000613          	li	a2,0
    80002210:	00000597          	auipc	a1,0x0
    80002214:	c7c58593          	addi	a1,a1,-900 # 80001e8c <_ZL11workerBodyCPv>
    80002218:	fe040513          	addi	a0,s0,-32
    8000221c:	fffff097          	auipc	ra,0xfffff
    80002220:	000080e7          	jalr	ra # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadC created\n");
    80002224:	00003517          	auipc	a0,0x3
    80002228:	f2450513          	addi	a0,a0,-220 # 80005148 <CONSOLE_STATUS+0x138>
    8000222c:	00000097          	auipc	ra,0x0
    80002230:	07c080e7          	jalr	124(ra) # 800022a8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002234:	00000613          	li	a2,0
    80002238:	00000597          	auipc	a1,0x0
    8000223c:	b0c58593          	addi	a1,a1,-1268 # 80001d44 <_ZL11workerBodyDPv>
    80002240:	fe840513          	addi	a0,s0,-24
    80002244:	fffff097          	auipc	ra,0xfffff
    80002248:	fd8080e7          	jalr	-40(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadD created\n");
    8000224c:	00003517          	auipc	a0,0x3
    80002250:	f1450513          	addi	a0,a0,-236 # 80005160 <CONSOLE_STATUS+0x150>
    80002254:	00000097          	auipc	ra,0x0
    80002258:	054080e7          	jalr	84(ra) # 800022a8 <_Z11printStringPKc>
    8000225c:	00c0006f          	j	80002268 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002260:	fffff097          	auipc	ra,0xfffff
    80002264:	090080e7          	jalr	144(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002268:	00004797          	auipc	a5,0x4
    8000226c:	b0b7c783          	lbu	a5,-1269(a5) # 80005d73 <_ZL9finishedA>
    80002270:	fe0788e3          	beqz	a5,80002260 <_Z18Threads_C_API_testv+0xb4>
    80002274:	00004797          	auipc	a5,0x4
    80002278:	afe7c783          	lbu	a5,-1282(a5) # 80005d72 <_ZL9finishedB>
    8000227c:	fe0782e3          	beqz	a5,80002260 <_Z18Threads_C_API_testv+0xb4>
    80002280:	00004797          	auipc	a5,0x4
    80002284:	af17c783          	lbu	a5,-1295(a5) # 80005d71 <_ZL9finishedC>
    80002288:	fc078ce3          	beqz	a5,80002260 <_Z18Threads_C_API_testv+0xb4>
    8000228c:	00004797          	auipc	a5,0x4
    80002290:	ae47c783          	lbu	a5,-1308(a5) # 80005d70 <_ZL9finishedD>
    80002294:	fc0786e3          	beqz	a5,80002260 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002298:	02813083          	ld	ra,40(sp)
    8000229c:	02013403          	ld	s0,32(sp)
    800022a0:	03010113          	addi	sp,sp,48
    800022a4:	00008067          	ret

00000000800022a8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800022a8:	fe010113          	addi	sp,sp,-32
    800022ac:	00113c23          	sd	ra,24(sp)
    800022b0:	00813823          	sd	s0,16(sp)
    800022b4:	00913423          	sd	s1,8(sp)
    800022b8:	02010413          	addi	s0,sp,32
    800022bc:	00050493          	mv	s1,a0
    LOCK();
    800022c0:	00100613          	li	a2,1
    800022c4:	00000593          	li	a1,0
    800022c8:	00004517          	auipc	a0,0x4
    800022cc:	ab050513          	addi	a0,a0,-1360 # 80005d78 <lockPrint>
    800022d0:	fffff097          	auipc	ra,0xfffff
    800022d4:	e74080e7          	jalr	-396(ra) # 80001144 <copy_and_swap>
    800022d8:	00050863          	beqz	a0,800022e8 <_Z11printStringPKc+0x40>
    800022dc:	fffff097          	auipc	ra,0xfffff
    800022e0:	014080e7          	jalr	20(ra) # 800012f0 <_Z15thread_dispatchv>
    800022e4:	fddff06f          	j	800022c0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800022e8:	0004c503          	lbu	a0,0(s1)
    800022ec:	00050a63          	beqz	a0,80002300 <_Z11printStringPKc+0x58>
    {
        __putc(*string);
    800022f0:	00003097          	auipc	ra,0x3
    800022f4:	97c080e7          	jalr	-1668(ra) # 80004c6c <__putc>
        string++;
    800022f8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800022fc:	fedff06f          	j	800022e8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80002300:	00000613          	li	a2,0
    80002304:	00100593          	li	a1,1
    80002308:	00004517          	auipc	a0,0x4
    8000230c:	a7050513          	addi	a0,a0,-1424 # 80005d78 <lockPrint>
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	e34080e7          	jalr	-460(ra) # 80001144 <copy_and_swap>
    80002318:	fe0514e3          	bnez	a0,80002300 <_Z11printStringPKc+0x58>
}
    8000231c:	01813083          	ld	ra,24(sp)
    80002320:	01013403          	ld	s0,16(sp)
    80002324:	00813483          	ld	s1,8(sp)
    80002328:	02010113          	addi	sp,sp,32
    8000232c:	00008067          	ret

0000000080002330 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002330:	fd010113          	addi	sp,sp,-48
    80002334:	02113423          	sd	ra,40(sp)
    80002338:	02813023          	sd	s0,32(sp)
    8000233c:	00913c23          	sd	s1,24(sp)
    80002340:	01213823          	sd	s2,16(sp)
    80002344:	01313423          	sd	s3,8(sp)
    80002348:	01413023          	sd	s4,0(sp)
    8000234c:	03010413          	addi	s0,sp,48
    80002350:	00050993          	mv	s3,a0
    80002354:	00058a13          	mv	s4,a1
    LOCK();
    80002358:	00100613          	li	a2,1
    8000235c:	00000593          	li	a1,0
    80002360:	00004517          	auipc	a0,0x4
    80002364:	a1850513          	addi	a0,a0,-1512 # 80005d78 <lockPrint>
    80002368:	fffff097          	auipc	ra,0xfffff
    8000236c:	ddc080e7          	jalr	-548(ra) # 80001144 <copy_and_swap>
    80002370:	00050863          	beqz	a0,80002380 <_Z9getStringPci+0x50>
    80002374:	fffff097          	auipc	ra,0xfffff
    80002378:	f7c080e7          	jalr	-132(ra) # 800012f0 <_Z15thread_dispatchv>
    8000237c:	fddff06f          	j	80002358 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002380:	00000913          	li	s2,0
    80002384:	00090493          	mv	s1,s2
    80002388:	0019091b          	addiw	s2,s2,1
    8000238c:	03495a63          	bge	s2,s4,800023c0 <_Z9getStringPci+0x90>
        cc = __getc();
    80002390:	00003097          	auipc	ra,0x3
    80002394:	918080e7          	jalr	-1768(ra) # 80004ca8 <__getc>
        if(cc < 1)
    80002398:	02050463          	beqz	a0,800023c0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000239c:	009984b3          	add	s1,s3,s1
    800023a0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800023a4:	00a00793          	li	a5,10
    800023a8:	00f50a63          	beq	a0,a5,800023bc <_Z9getStringPci+0x8c>
    800023ac:	00d00793          	li	a5,13
    800023b0:	fcf51ae3          	bne	a0,a5,80002384 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800023b4:	00090493          	mv	s1,s2
    800023b8:	0080006f          	j	800023c0 <_Z9getStringPci+0x90>
    800023bc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800023c0:	009984b3          	add	s1,s3,s1
    800023c4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800023c8:	00000613          	li	a2,0
    800023cc:	00100593          	li	a1,1
    800023d0:	00004517          	auipc	a0,0x4
    800023d4:	9a850513          	addi	a0,a0,-1624 # 80005d78 <lockPrint>
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	d6c080e7          	jalr	-660(ra) # 80001144 <copy_and_swap>
    800023e0:	fe0514e3          	bnez	a0,800023c8 <_Z9getStringPci+0x98>
    return buf;
}
    800023e4:	00098513          	mv	a0,s3
    800023e8:	02813083          	ld	ra,40(sp)
    800023ec:	02013403          	ld	s0,32(sp)
    800023f0:	01813483          	ld	s1,24(sp)
    800023f4:	01013903          	ld	s2,16(sp)
    800023f8:	00813983          	ld	s3,8(sp)
    800023fc:	00013a03          	ld	s4,0(sp)
    80002400:	03010113          	addi	sp,sp,48
    80002404:	00008067          	ret

0000000080002408 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002408:	ff010113          	addi	sp,sp,-16
    8000240c:	00813423          	sd	s0,8(sp)
    80002410:	01010413          	addi	s0,sp,16
    80002414:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002418:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000241c:	0006c603          	lbu	a2,0(a3)
    80002420:	fd06071b          	addiw	a4,a2,-48
    80002424:	0ff77713          	andi	a4,a4,255
    80002428:	00900793          	li	a5,9
    8000242c:	02e7e063          	bltu	a5,a4,8000244c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002430:	0025179b          	slliw	a5,a0,0x2
    80002434:	00a787bb          	addw	a5,a5,a0
    80002438:	0017979b          	slliw	a5,a5,0x1
    8000243c:	00168693          	addi	a3,a3,1
    80002440:	00c787bb          	addw	a5,a5,a2
    80002444:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002448:	fd5ff06f          	j	8000241c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000244c:	00813403          	ld	s0,8(sp)
    80002450:	01010113          	addi	sp,sp,16
    80002454:	00008067          	ret

0000000080002458 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002458:	fc010113          	addi	sp,sp,-64
    8000245c:	02113c23          	sd	ra,56(sp)
    80002460:	02813823          	sd	s0,48(sp)
    80002464:	02913423          	sd	s1,40(sp)
    80002468:	03213023          	sd	s2,32(sp)
    8000246c:	01313c23          	sd	s3,24(sp)
    80002470:	04010413          	addi	s0,sp,64
    80002474:	00050493          	mv	s1,a0
    80002478:	00058913          	mv	s2,a1
    8000247c:	00060993          	mv	s3,a2
    LOCK();
    80002480:	00100613          	li	a2,1
    80002484:	00000593          	li	a1,0
    80002488:	00004517          	auipc	a0,0x4
    8000248c:	8f050513          	addi	a0,a0,-1808 # 80005d78 <lockPrint>
    80002490:	fffff097          	auipc	ra,0xfffff
    80002494:	cb4080e7          	jalr	-844(ra) # 80001144 <copy_and_swap>
    80002498:	00050863          	beqz	a0,800024a8 <_Z8printIntiii+0x50>
    8000249c:	fffff097          	auipc	ra,0xfffff
    800024a0:	e54080e7          	jalr	-428(ra) # 800012f0 <_Z15thread_dispatchv>
    800024a4:	fddff06f          	j	80002480 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800024a8:	00098463          	beqz	s3,800024b0 <_Z8printIntiii+0x58>
    800024ac:	0804c463          	bltz	s1,80002534 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800024b0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800024b4:	00000593          	li	a1,0
    }

    i = 0;
    800024b8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800024bc:	0009079b          	sext.w	a5,s2
    800024c0:	0325773b          	remuw	a4,a0,s2
    800024c4:	00048613          	mv	a2,s1
    800024c8:	0014849b          	addiw	s1,s1,1
    800024cc:	02071693          	slli	a3,a4,0x20
    800024d0:	0206d693          	srli	a3,a3,0x20
    800024d4:	00003717          	auipc	a4,0x3
    800024d8:	7d470713          	addi	a4,a4,2004 # 80005ca8 <digits>
    800024dc:	00d70733          	add	a4,a4,a3
    800024e0:	00074683          	lbu	a3,0(a4)
    800024e4:	fd040713          	addi	a4,s0,-48
    800024e8:	00c70733          	add	a4,a4,a2
    800024ec:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800024f0:	0005071b          	sext.w	a4,a0
    800024f4:	0325553b          	divuw	a0,a0,s2
    800024f8:	fcf772e3          	bgeu	a4,a5,800024bc <_Z8printIntiii+0x64>
    if(neg)
    800024fc:	00058c63          	beqz	a1,80002514 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80002500:	fd040793          	addi	a5,s0,-48
    80002504:	009784b3          	add	s1,a5,s1
    80002508:	02d00793          	li	a5,45
    8000250c:	fef48823          	sb	a5,-16(s1)
    80002510:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002514:	fff4849b          	addiw	s1,s1,-1
    80002518:	0204c463          	bltz	s1,80002540 <_Z8printIntiii+0xe8>
        __putc(buf[i]);
    8000251c:	fd040793          	addi	a5,s0,-48
    80002520:	009787b3          	add	a5,a5,s1
    80002524:	ff07c503          	lbu	a0,-16(a5)
    80002528:	00002097          	auipc	ra,0x2
    8000252c:	744080e7          	jalr	1860(ra) # 80004c6c <__putc>
    80002530:	fe5ff06f          	j	80002514 <_Z8printIntiii+0xbc>
        x = -xx;
    80002534:	4090053b          	negw	a0,s1
        neg = 1;
    80002538:	00100593          	li	a1,1
        x = -xx;
    8000253c:	f7dff06f          	j	800024b8 <_Z8printIntiii+0x60>

    UNLOCK();
    80002540:	00000613          	li	a2,0
    80002544:	00100593          	li	a1,1
    80002548:	00004517          	auipc	a0,0x4
    8000254c:	83050513          	addi	a0,a0,-2000 # 80005d78 <lockPrint>
    80002550:	fffff097          	auipc	ra,0xfffff
    80002554:	bf4080e7          	jalr	-1036(ra) # 80001144 <copy_and_swap>
    80002558:	fe0514e3          	bnez	a0,80002540 <_Z8printIntiii+0xe8>
    8000255c:	03813083          	ld	ra,56(sp)
    80002560:	03013403          	ld	s0,48(sp)
    80002564:	02813483          	ld	s1,40(sp)
    80002568:	02013903          	ld	s2,32(sp)
    8000256c:	01813983          	ld	s3,24(sp)
    80002570:	04010113          	addi	sp,sp,64
    80002574:	00008067          	ret

0000000080002578 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80002578:	ff010113          	addi	sp,sp,-16
    8000257c:	00113423          	sd	ra,8(sp)
    80002580:	00813023          	sd	s0,0(sp)
    80002584:	01010413          	addi	s0,sp,16
    printString("Unesite broj testa? [1-7]\n");
    80002588:	00003517          	auipc	a0,0x3
    8000258c:	bf050513          	addi	a0,a0,-1040 # 80005178 <CONSOLE_STATUS+0x168>
    80002590:	00000097          	auipc	ra,0x0
    80002594:	d18080e7          	jalr	-744(ra) # 800022a8 <_Z11printStringPKc>
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	c14080e7          	jalr	-1004(ra) # 800021ac <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800025a0:	00003517          	auipc	a0,0x3
    800025a4:	bf850513          	addi	a0,a0,-1032 # 80005198 <CONSOLE_STATUS+0x188>
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	d00080e7          	jalr	-768(ra) # 800022a8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800025b0:	00813083          	ld	ra,8(sp)
    800025b4:	00013403          	ld	s0,0(sp)
    800025b8:	01010113          	addi	sp,sp,16
    800025bc:	00008067          	ret

00000000800025c0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800025c0:	fe010113          	addi	sp,sp,-32
    800025c4:	00113c23          	sd	ra,24(sp)
    800025c8:	00813823          	sd	s0,16(sp)
    800025cc:	00913423          	sd	s1,8(sp)
    800025d0:	01213023          	sd	s2,0(sp)
    800025d4:	02010413          	addi	s0,sp,32
    800025d8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800025dc:	00100793          	li	a5,1
    800025e0:	02a7f863          	bgeu	a5,a0,80002610 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800025e4:	00a00793          	li	a5,10
    800025e8:	02f577b3          	remu	a5,a0,a5
    800025ec:	02078e63          	beqz	a5,80002628 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800025f0:	fff48513          	addi	a0,s1,-1
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	fcc080e7          	jalr	-52(ra) # 800025c0 <_ZL9fibonaccim>
    800025fc:	00050913          	mv	s2,a0
    80002600:	ffe48513          	addi	a0,s1,-2
    80002604:	00000097          	auipc	ra,0x0
    80002608:	fbc080e7          	jalr	-68(ra) # 800025c0 <_ZL9fibonaccim>
    8000260c:	00a90533          	add	a0,s2,a0
}
    80002610:	01813083          	ld	ra,24(sp)
    80002614:	01013403          	ld	s0,16(sp)
    80002618:	00813483          	ld	s1,8(sp)
    8000261c:	00013903          	ld	s2,0(sp)
    80002620:	02010113          	addi	sp,sp,32
    80002624:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002628:	fffff097          	auipc	ra,0xfffff
    8000262c:	cc8080e7          	jalr	-824(ra) # 800012f0 <_Z15thread_dispatchv>
    80002630:	fc1ff06f          	j	800025f0 <_ZL9fibonaccim+0x30>

0000000080002634 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002634:	fe010113          	addi	sp,sp,-32
    80002638:	00113c23          	sd	ra,24(sp)
    8000263c:	00813823          	sd	s0,16(sp)
    80002640:	00913423          	sd	s1,8(sp)
    80002644:	01213023          	sd	s2,0(sp)
    80002648:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000264c:	00a00493          	li	s1,10
    80002650:	0400006f          	j	80002690 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002654:	00003517          	auipc	a0,0x3
    80002658:	a1c50513          	addi	a0,a0,-1508 # 80005070 <CONSOLE_STATUS+0x60>
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	c4c080e7          	jalr	-948(ra) # 800022a8 <_Z11printStringPKc>
    80002664:	00000613          	li	a2,0
    80002668:	00a00593          	li	a1,10
    8000266c:	00048513          	mv	a0,s1
    80002670:	00000097          	auipc	ra,0x0
    80002674:	de8080e7          	jalr	-536(ra) # 80002458 <_Z8printIntiii>
    80002678:	00003517          	auipc	a0,0x3
    8000267c:	c7050513          	addi	a0,a0,-912 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002680:	00000097          	auipc	ra,0x0
    80002684:	c28080e7          	jalr	-984(ra) # 800022a8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002688:	0014849b          	addiw	s1,s1,1
    8000268c:	0ff4f493          	andi	s1,s1,255
    80002690:	00c00793          	li	a5,12
    80002694:	fc97f0e3          	bgeu	a5,s1,80002654 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002698:	00003517          	auipc	a0,0x3
    8000269c:	9e050513          	addi	a0,a0,-1568 # 80005078 <CONSOLE_STATUS+0x68>
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	c08080e7          	jalr	-1016(ra) # 800022a8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800026a8:	00500313          	li	t1,5
    thread_dispatch();
    800026ac:	fffff097          	auipc	ra,0xfffff
    800026b0:	c44080e7          	jalr	-956(ra) # 800012f0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800026b4:	01000513          	li	a0,16
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	f08080e7          	jalr	-248(ra) # 800025c0 <_ZL9fibonaccim>
    800026c0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800026c4:	00003517          	auipc	a0,0x3
    800026c8:	9c450513          	addi	a0,a0,-1596 # 80005088 <CONSOLE_STATUS+0x78>
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	bdc080e7          	jalr	-1060(ra) # 800022a8 <_Z11printStringPKc>
    800026d4:	00000613          	li	a2,0
    800026d8:	00a00593          	li	a1,10
    800026dc:	0009051b          	sext.w	a0,s2
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	d78080e7          	jalr	-648(ra) # 80002458 <_Z8printIntiii>
    800026e8:	00003517          	auipc	a0,0x3
    800026ec:	c0050513          	addi	a0,a0,-1024 # 800052e8 <CONSOLE_STATUS+0x2d8>
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	bb8080e7          	jalr	-1096(ra) # 800022a8 <_Z11printStringPKc>
    800026f8:	0400006f          	j	80002738 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800026fc:	00003517          	auipc	a0,0x3
    80002700:	97450513          	addi	a0,a0,-1676 # 80005070 <CONSOLE_STATUS+0x60>
    80002704:	00000097          	auipc	ra,0x0
    80002708:	ba4080e7          	jalr	-1116(ra) # 800022a8 <_Z11printStringPKc>
    8000270c:	00000613          	li	a2,0
    80002710:	00a00593          	li	a1,10
    80002714:	00048513          	mv	a0,s1
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	d40080e7          	jalr	-704(ra) # 80002458 <_Z8printIntiii>
    80002720:	00003517          	auipc	a0,0x3
    80002724:	bc850513          	addi	a0,a0,-1080 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	b80080e7          	jalr	-1152(ra) # 800022a8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002730:	0014849b          	addiw	s1,s1,1
    80002734:	0ff4f493          	andi	s1,s1,255
    80002738:	00f00793          	li	a5,15
    8000273c:	fc97f0e3          	bgeu	a5,s1,800026fc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002740:	00003517          	auipc	a0,0x3
    80002744:	95850513          	addi	a0,a0,-1704 # 80005098 <CONSOLE_STATUS+0x88>
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	b60080e7          	jalr	-1184(ra) # 800022a8 <_Z11printStringPKc>
    finishedD = true;
    80002750:	00100793          	li	a5,1
    80002754:	00003717          	auipc	a4,0x3
    80002758:	62f70623          	sb	a5,1580(a4) # 80005d80 <_ZL9finishedD>
    thread_dispatch();
    8000275c:	fffff097          	auipc	ra,0xfffff
    80002760:	b94080e7          	jalr	-1132(ra) # 800012f0 <_Z15thread_dispatchv>
}
    80002764:	01813083          	ld	ra,24(sp)
    80002768:	01013403          	ld	s0,16(sp)
    8000276c:	00813483          	ld	s1,8(sp)
    80002770:	00013903          	ld	s2,0(sp)
    80002774:	02010113          	addi	sp,sp,32
    80002778:	00008067          	ret

000000008000277c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000277c:	fe010113          	addi	sp,sp,-32
    80002780:	00113c23          	sd	ra,24(sp)
    80002784:	00813823          	sd	s0,16(sp)
    80002788:	00913423          	sd	s1,8(sp)
    8000278c:	01213023          	sd	s2,0(sp)
    80002790:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002794:	00000493          	li	s1,0
    80002798:	0400006f          	j	800027d8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000279c:	00003517          	auipc	a0,0x3
    800027a0:	90c50513          	addi	a0,a0,-1780 # 800050a8 <CONSOLE_STATUS+0x98>
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	b04080e7          	jalr	-1276(ra) # 800022a8 <_Z11printStringPKc>
    800027ac:	00000613          	li	a2,0
    800027b0:	00a00593          	li	a1,10
    800027b4:	00048513          	mv	a0,s1
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	ca0080e7          	jalr	-864(ra) # 80002458 <_Z8printIntiii>
    800027c0:	00003517          	auipc	a0,0x3
    800027c4:	b2850513          	addi	a0,a0,-1240 # 800052e8 <CONSOLE_STATUS+0x2d8>
    800027c8:	00000097          	auipc	ra,0x0
    800027cc:	ae0080e7          	jalr	-1312(ra) # 800022a8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800027d0:	0014849b          	addiw	s1,s1,1
    800027d4:	0ff4f493          	andi	s1,s1,255
    800027d8:	00200793          	li	a5,2
    800027dc:	fc97f0e3          	bgeu	a5,s1,8000279c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800027e0:	00003517          	auipc	a0,0x3
    800027e4:	8d050513          	addi	a0,a0,-1840 # 800050b0 <CONSOLE_STATUS+0xa0>
    800027e8:	00000097          	auipc	ra,0x0
    800027ec:	ac0080e7          	jalr	-1344(ra) # 800022a8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800027f0:	00700313          	li	t1,7
    thread_dispatch();
    800027f4:	fffff097          	auipc	ra,0xfffff
    800027f8:	afc080e7          	jalr	-1284(ra) # 800012f0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800027fc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002800:	00003517          	auipc	a0,0x3
    80002804:	8c050513          	addi	a0,a0,-1856 # 800050c0 <CONSOLE_STATUS+0xb0>
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	aa0080e7          	jalr	-1376(ra) # 800022a8 <_Z11printStringPKc>
    80002810:	00000613          	li	a2,0
    80002814:	00a00593          	li	a1,10
    80002818:	0009051b          	sext.w	a0,s2
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	c3c080e7          	jalr	-964(ra) # 80002458 <_Z8printIntiii>
    80002824:	00003517          	auipc	a0,0x3
    80002828:	ac450513          	addi	a0,a0,-1340 # 800052e8 <CONSOLE_STATUS+0x2d8>
    8000282c:	00000097          	auipc	ra,0x0
    80002830:	a7c080e7          	jalr	-1412(ra) # 800022a8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002834:	00c00513          	li	a0,12
    80002838:	00000097          	auipc	ra,0x0
    8000283c:	d88080e7          	jalr	-632(ra) # 800025c0 <_ZL9fibonaccim>
    80002840:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002844:	00003517          	auipc	a0,0x3
    80002848:	88450513          	addi	a0,a0,-1916 # 800050c8 <CONSOLE_STATUS+0xb8>
    8000284c:	00000097          	auipc	ra,0x0
    80002850:	a5c080e7          	jalr	-1444(ra) # 800022a8 <_Z11printStringPKc>
    80002854:	00000613          	li	a2,0
    80002858:	00a00593          	li	a1,10
    8000285c:	0009051b          	sext.w	a0,s2
    80002860:	00000097          	auipc	ra,0x0
    80002864:	bf8080e7          	jalr	-1032(ra) # 80002458 <_Z8printIntiii>
    80002868:	00003517          	auipc	a0,0x3
    8000286c:	a8050513          	addi	a0,a0,-1408 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002870:	00000097          	auipc	ra,0x0
    80002874:	a38080e7          	jalr	-1480(ra) # 800022a8 <_Z11printStringPKc>
    80002878:	0400006f          	j	800028b8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000287c:	00003517          	auipc	a0,0x3
    80002880:	82c50513          	addi	a0,a0,-2004 # 800050a8 <CONSOLE_STATUS+0x98>
    80002884:	00000097          	auipc	ra,0x0
    80002888:	a24080e7          	jalr	-1500(ra) # 800022a8 <_Z11printStringPKc>
    8000288c:	00000613          	li	a2,0
    80002890:	00a00593          	li	a1,10
    80002894:	00048513          	mv	a0,s1
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	bc0080e7          	jalr	-1088(ra) # 80002458 <_Z8printIntiii>
    800028a0:	00003517          	auipc	a0,0x3
    800028a4:	a4850513          	addi	a0,a0,-1464 # 800052e8 <CONSOLE_STATUS+0x2d8>
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	a00080e7          	jalr	-1536(ra) # 800022a8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800028b0:	0014849b          	addiw	s1,s1,1
    800028b4:	0ff4f493          	andi	s1,s1,255
    800028b8:	00500793          	li	a5,5
    800028bc:	fc97f0e3          	bgeu	a5,s1,8000287c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800028c0:	00003517          	auipc	a0,0x3
    800028c4:	84850513          	addi	a0,a0,-1976 # 80005108 <CONSOLE_STATUS+0xf8>
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	9e0080e7          	jalr	-1568(ra) # 800022a8 <_Z11printStringPKc>
    finishedC = true;
    800028d0:	00100793          	li	a5,1
    800028d4:	00003717          	auipc	a4,0x3
    800028d8:	4af706a3          	sb	a5,1197(a4) # 80005d81 <_ZL9finishedC>
    thread_dispatch();
    800028dc:	fffff097          	auipc	ra,0xfffff
    800028e0:	a14080e7          	jalr	-1516(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800028e4:	01813083          	ld	ra,24(sp)
    800028e8:	01013403          	ld	s0,16(sp)
    800028ec:	00813483          	ld	s1,8(sp)
    800028f0:	00013903          	ld	s2,0(sp)
    800028f4:	02010113          	addi	sp,sp,32
    800028f8:	00008067          	ret

00000000800028fc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800028fc:	fe010113          	addi	sp,sp,-32
    80002900:	00113c23          	sd	ra,24(sp)
    80002904:	00813823          	sd	s0,16(sp)
    80002908:	00913423          	sd	s1,8(sp)
    8000290c:	01213023          	sd	s2,0(sp)
    80002910:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002914:	00000913          	li	s2,0
    80002918:	0400006f          	j	80002958 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	9d4080e7          	jalr	-1580(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002924:	00148493          	addi	s1,s1,1
    80002928:	000027b7          	lui	a5,0x2
    8000292c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002930:	0097ee63          	bltu	a5,s1,8000294c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002934:	00000713          	li	a4,0
    80002938:	000077b7          	lui	a5,0x7
    8000293c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002940:	fce7eee3          	bltu	a5,a4,8000291c <_ZL11workerBodyBPv+0x20>
    80002944:	00170713          	addi	a4,a4,1
    80002948:	ff1ff06f          	j	80002938 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000294c:	00a00793          	li	a5,10
    80002950:	04f90663          	beq	s2,a5,8000299c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80002954:	00190913          	addi	s2,s2,1
    80002958:	00f00793          	li	a5,15
    8000295c:	0527e463          	bltu	a5,s2,800029a4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80002960:	00002517          	auipc	a0,0x2
    80002964:	78850513          	addi	a0,a0,1928 # 800050e8 <CONSOLE_STATUS+0xd8>
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	940080e7          	jalr	-1728(ra) # 800022a8 <_Z11printStringPKc>
    80002970:	00000613          	li	a2,0
    80002974:	00a00593          	li	a1,10
    80002978:	0009051b          	sext.w	a0,s2
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	adc080e7          	jalr	-1316(ra) # 80002458 <_Z8printIntiii>
    80002984:	00003517          	auipc	a0,0x3
    80002988:	96450513          	addi	a0,a0,-1692 # 800052e8 <CONSOLE_STATUS+0x2d8>
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	91c080e7          	jalr	-1764(ra) # 800022a8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002994:	00000493          	li	s1,0
    80002998:	f91ff06f          	j	80002928 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    8000299c:	14102ff3          	csrr	t6,sepc
    800029a0:	fb5ff06f          	j	80002954 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800029a4:	00002517          	auipc	a0,0x2
    800029a8:	74c50513          	addi	a0,a0,1868 # 800050f0 <CONSOLE_STATUS+0xe0>
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	8fc080e7          	jalr	-1796(ra) # 800022a8 <_Z11printStringPKc>
    finishedB = true;
    800029b4:	00100793          	li	a5,1
    800029b8:	00003717          	auipc	a4,0x3
    800029bc:	3cf70523          	sb	a5,970(a4) # 80005d82 <_ZL9finishedB>
    thread_dispatch();
    800029c0:	fffff097          	auipc	ra,0xfffff
    800029c4:	930080e7          	jalr	-1744(ra) # 800012f0 <_Z15thread_dispatchv>
}
    800029c8:	01813083          	ld	ra,24(sp)
    800029cc:	01013403          	ld	s0,16(sp)
    800029d0:	00813483          	ld	s1,8(sp)
    800029d4:	00013903          	ld	s2,0(sp)
    800029d8:	02010113          	addi	sp,sp,32
    800029dc:	00008067          	ret

00000000800029e0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800029e0:	fe010113          	addi	sp,sp,-32
    800029e4:	00113c23          	sd	ra,24(sp)
    800029e8:	00813823          	sd	s0,16(sp)
    800029ec:	00913423          	sd	s1,8(sp)
    800029f0:	01213023          	sd	s2,0(sp)
    800029f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800029f8:	00000913          	li	s2,0
    800029fc:	0380006f          	j	80002a34 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002a00:	fffff097          	auipc	ra,0xfffff
    80002a04:	8f0080e7          	jalr	-1808(ra) # 800012f0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a08:	00148493          	addi	s1,s1,1
    80002a0c:	000027b7          	lui	a5,0x2
    80002a10:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002a14:	0097ee63          	bltu	a5,s1,80002a30 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002a18:	00000713          	li	a4,0
    80002a1c:	000077b7          	lui	a5,0x7
    80002a20:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002a24:	fce7eee3          	bltu	a5,a4,80002a00 <_ZL11workerBodyAPv+0x20>
    80002a28:	00170713          	addi	a4,a4,1
    80002a2c:	ff1ff06f          	j	80002a1c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002a30:	00190913          	addi	s2,s2,1
    80002a34:	00900793          	li	a5,9
    80002a38:	0527e063          	bltu	a5,s2,80002a78 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002a3c:	00002517          	auipc	a0,0x2
    80002a40:	6c450513          	addi	a0,a0,1732 # 80005100 <CONSOLE_STATUS+0xf0>
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	864080e7          	jalr	-1948(ra) # 800022a8 <_Z11printStringPKc>
    80002a4c:	00000613          	li	a2,0
    80002a50:	00a00593          	li	a1,10
    80002a54:	0009051b          	sext.w	a0,s2
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	a00080e7          	jalr	-1536(ra) # 80002458 <_Z8printIntiii>
    80002a60:	00003517          	auipc	a0,0x3
    80002a64:	88850513          	addi	a0,a0,-1912 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	840080e7          	jalr	-1984(ra) # 800022a8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002a70:	00000493          	li	s1,0
    80002a74:	f99ff06f          	j	80002a0c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002a78:	00002517          	auipc	a0,0x2
    80002a7c:	69050513          	addi	a0,a0,1680 # 80005108 <CONSOLE_STATUS+0xf8>
    80002a80:	00000097          	auipc	ra,0x0
    80002a84:	828080e7          	jalr	-2008(ra) # 800022a8 <_Z11printStringPKc>
    finishedA = true;
    80002a88:	00100793          	li	a5,1
    80002a8c:	00003717          	auipc	a4,0x3
    80002a90:	2ef70ba3          	sb	a5,759(a4) # 80005d83 <_ZL9finishedA>
}
    80002a94:	01813083          	ld	ra,24(sp)
    80002a98:	01013403          	ld	s0,16(sp)
    80002a9c:	00813483          	ld	s1,8(sp)
    80002aa0:	00013903          	ld	s2,0(sp)
    80002aa4:	02010113          	addi	sp,sp,32
    80002aa8:	00008067          	ret

0000000080002aac <_Z16System_Mode_testv>:


void System_Mode_test() {
    80002aac:	fd010113          	addi	sp,sp,-48
    80002ab0:	02113423          	sd	ra,40(sp)
    80002ab4:	02813023          	sd	s0,32(sp)
    80002ab8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002abc:	00000613          	li	a2,0
    80002ac0:	00000597          	auipc	a1,0x0
    80002ac4:	f2058593          	addi	a1,a1,-224 # 800029e0 <_ZL11workerBodyAPv>
    80002ac8:	fd040513          	addi	a0,s0,-48
    80002acc:	ffffe097          	auipc	ra,0xffffe
    80002ad0:	750080e7          	jalr	1872(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadA created\n");
    80002ad4:	00002517          	auipc	a0,0x2
    80002ad8:	64450513          	addi	a0,a0,1604 # 80005118 <CONSOLE_STATUS+0x108>
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	7cc080e7          	jalr	1996(ra) # 800022a8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002ae4:	00000613          	li	a2,0
    80002ae8:	00000597          	auipc	a1,0x0
    80002aec:	e1458593          	addi	a1,a1,-492 # 800028fc <_ZL11workerBodyBPv>
    80002af0:	fd840513          	addi	a0,s0,-40
    80002af4:	ffffe097          	auipc	ra,0xffffe
    80002af8:	728080e7          	jalr	1832(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadB created\n");
    80002afc:	00002517          	auipc	a0,0x2
    80002b00:	63450513          	addi	a0,a0,1588 # 80005130 <CONSOLE_STATUS+0x120>
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	7a4080e7          	jalr	1956(ra) # 800022a8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002b0c:	00000613          	li	a2,0
    80002b10:	00000597          	auipc	a1,0x0
    80002b14:	c6c58593          	addi	a1,a1,-916 # 8000277c <_ZL11workerBodyCPv>
    80002b18:	fe040513          	addi	a0,s0,-32
    80002b1c:	ffffe097          	auipc	ra,0xffffe
    80002b20:	700080e7          	jalr	1792(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadC created\n");
    80002b24:	00002517          	auipc	a0,0x2
    80002b28:	62450513          	addi	a0,a0,1572 # 80005148 <CONSOLE_STATUS+0x138>
    80002b2c:	fffff097          	auipc	ra,0xfffff
    80002b30:	77c080e7          	jalr	1916(ra) # 800022a8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002b34:	00000613          	li	a2,0
    80002b38:	00000597          	auipc	a1,0x0
    80002b3c:	afc58593          	addi	a1,a1,-1284 # 80002634 <_ZL11workerBodyDPv>
    80002b40:	fe840513          	addi	a0,s0,-24
    80002b44:	ffffe097          	auipc	ra,0xffffe
    80002b48:	6d8080e7          	jalr	1752(ra) # 8000121c <_Z13thread_createPP6ThreadPFvPvES2_>
    printString("ThreadD created\n");
    80002b4c:	00002517          	auipc	a0,0x2
    80002b50:	61450513          	addi	a0,a0,1556 # 80005160 <CONSOLE_STATUS+0x150>
    80002b54:	fffff097          	auipc	ra,0xfffff
    80002b58:	754080e7          	jalr	1876(ra) # 800022a8 <_Z11printStringPKc>
    80002b5c:	00c0006f          	j	80002b68 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002b60:	ffffe097          	auipc	ra,0xffffe
    80002b64:	790080e7          	jalr	1936(ra) # 800012f0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002b68:	00003797          	auipc	a5,0x3
    80002b6c:	21b7c783          	lbu	a5,539(a5) # 80005d83 <_ZL9finishedA>
    80002b70:	fe0788e3          	beqz	a5,80002b60 <_Z16System_Mode_testv+0xb4>
    80002b74:	00003797          	auipc	a5,0x3
    80002b78:	20e7c783          	lbu	a5,526(a5) # 80005d82 <_ZL9finishedB>
    80002b7c:	fe0782e3          	beqz	a5,80002b60 <_Z16System_Mode_testv+0xb4>
    80002b80:	00003797          	auipc	a5,0x3
    80002b84:	2017c783          	lbu	a5,513(a5) # 80005d81 <_ZL9finishedC>
    80002b88:	fc078ce3          	beqz	a5,80002b60 <_Z16System_Mode_testv+0xb4>
    80002b8c:	00003797          	auipc	a5,0x3
    80002b90:	1f47c783          	lbu	a5,500(a5) # 80005d80 <_ZL9finishedD>
    80002b94:	fc0786e3          	beqz	a5,80002b60 <_Z16System_Mode_testv+0xb4>
    }

}
    80002b98:	02813083          	ld	ra,40(sp)
    80002b9c:	02013403          	ld	s0,32(sp)
    80002ba0:	03010113          	addi	sp,sp,48
    80002ba4:	00008067          	ret

0000000080002ba8 <start>:
    80002ba8:	ff010113          	addi	sp,sp,-16
    80002bac:	00813423          	sd	s0,8(sp)
    80002bb0:	01010413          	addi	s0,sp,16
    80002bb4:	300027f3          	csrr	a5,mstatus
    80002bb8:	ffffe737          	lui	a4,0xffffe
    80002bbc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff780f>
    80002bc0:	00e7f7b3          	and	a5,a5,a4
    80002bc4:	00001737          	lui	a4,0x1
    80002bc8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002bcc:	00e7e7b3          	or	a5,a5,a4
    80002bd0:	30079073          	csrw	mstatus,a5
    80002bd4:	00000797          	auipc	a5,0x0
    80002bd8:	16078793          	addi	a5,a5,352 # 80002d34 <system_main>
    80002bdc:	34179073          	csrw	mepc,a5
    80002be0:	00000793          	li	a5,0
    80002be4:	18079073          	csrw	satp,a5
    80002be8:	000107b7          	lui	a5,0x10
    80002bec:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002bf0:	30279073          	csrw	medeleg,a5
    80002bf4:	30379073          	csrw	mideleg,a5
    80002bf8:	104027f3          	csrr	a5,sie
    80002bfc:	2227e793          	ori	a5,a5,546
    80002c00:	10479073          	csrw	sie,a5
    80002c04:	fff00793          	li	a5,-1
    80002c08:	00a7d793          	srli	a5,a5,0xa
    80002c0c:	3b079073          	csrw	pmpaddr0,a5
    80002c10:	00f00793          	li	a5,15
    80002c14:	3a079073          	csrw	pmpcfg0,a5
    80002c18:	f14027f3          	csrr	a5,mhartid
    80002c1c:	0200c737          	lui	a4,0x200c
    80002c20:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002c24:	0007869b          	sext.w	a3,a5
    80002c28:	00269713          	slli	a4,a3,0x2
    80002c2c:	000f4637          	lui	a2,0xf4
    80002c30:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002c34:	00d70733          	add	a4,a4,a3
    80002c38:	0037979b          	slliw	a5,a5,0x3
    80002c3c:	020046b7          	lui	a3,0x2004
    80002c40:	00d787b3          	add	a5,a5,a3
    80002c44:	00c585b3          	add	a1,a1,a2
    80002c48:	00371693          	slli	a3,a4,0x3
    80002c4c:	00003717          	auipc	a4,0x3
    80002c50:	14470713          	addi	a4,a4,324 # 80005d90 <timer_scratch>
    80002c54:	00b7b023          	sd	a1,0(a5)
    80002c58:	00d70733          	add	a4,a4,a3
    80002c5c:	00f73c23          	sd	a5,24(a4)
    80002c60:	02c73023          	sd	a2,32(a4)
    80002c64:	34071073          	csrw	mscratch,a4
    80002c68:	00000797          	auipc	a5,0x0
    80002c6c:	6e878793          	addi	a5,a5,1768 # 80003350 <timervec>
    80002c70:	30579073          	csrw	mtvec,a5
    80002c74:	300027f3          	csrr	a5,mstatus
    80002c78:	0087e793          	ori	a5,a5,8
    80002c7c:	30079073          	csrw	mstatus,a5
    80002c80:	304027f3          	csrr	a5,mie
    80002c84:	0807e793          	ori	a5,a5,128
    80002c88:	30479073          	csrw	mie,a5
    80002c8c:	f14027f3          	csrr	a5,mhartid
    80002c90:	0007879b          	sext.w	a5,a5
    80002c94:	00078213          	mv	tp,a5
    80002c98:	30200073          	mret
    80002c9c:	00813403          	ld	s0,8(sp)
    80002ca0:	01010113          	addi	sp,sp,16
    80002ca4:	00008067          	ret

0000000080002ca8 <timerinit>:
    80002ca8:	ff010113          	addi	sp,sp,-16
    80002cac:	00813423          	sd	s0,8(sp)
    80002cb0:	01010413          	addi	s0,sp,16
    80002cb4:	f14027f3          	csrr	a5,mhartid
    80002cb8:	0200c737          	lui	a4,0x200c
    80002cbc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002cc0:	0007869b          	sext.w	a3,a5
    80002cc4:	00269713          	slli	a4,a3,0x2
    80002cc8:	000f4637          	lui	a2,0xf4
    80002ccc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002cd0:	00d70733          	add	a4,a4,a3
    80002cd4:	0037979b          	slliw	a5,a5,0x3
    80002cd8:	020046b7          	lui	a3,0x2004
    80002cdc:	00d787b3          	add	a5,a5,a3
    80002ce0:	00c585b3          	add	a1,a1,a2
    80002ce4:	00371693          	slli	a3,a4,0x3
    80002ce8:	00003717          	auipc	a4,0x3
    80002cec:	0a870713          	addi	a4,a4,168 # 80005d90 <timer_scratch>
    80002cf0:	00b7b023          	sd	a1,0(a5)
    80002cf4:	00d70733          	add	a4,a4,a3
    80002cf8:	00f73c23          	sd	a5,24(a4)
    80002cfc:	02c73023          	sd	a2,32(a4)
    80002d00:	34071073          	csrw	mscratch,a4
    80002d04:	00000797          	auipc	a5,0x0
    80002d08:	64c78793          	addi	a5,a5,1612 # 80003350 <timervec>
    80002d0c:	30579073          	csrw	mtvec,a5
    80002d10:	300027f3          	csrr	a5,mstatus
    80002d14:	0087e793          	ori	a5,a5,8
    80002d18:	30079073          	csrw	mstatus,a5
    80002d1c:	304027f3          	csrr	a5,mie
    80002d20:	0807e793          	ori	a5,a5,128
    80002d24:	30479073          	csrw	mie,a5
    80002d28:	00813403          	ld	s0,8(sp)
    80002d2c:	01010113          	addi	sp,sp,16
    80002d30:	00008067          	ret

0000000080002d34 <system_main>:
    80002d34:	fe010113          	addi	sp,sp,-32
    80002d38:	00813823          	sd	s0,16(sp)
    80002d3c:	00913423          	sd	s1,8(sp)
    80002d40:	00113c23          	sd	ra,24(sp)
    80002d44:	02010413          	addi	s0,sp,32
    80002d48:	00000097          	auipc	ra,0x0
    80002d4c:	0c4080e7          	jalr	196(ra) # 80002e0c <cpuid>
    80002d50:	00003497          	auipc	s1,0x3
    80002d54:	fc048493          	addi	s1,s1,-64 # 80005d10 <started>
    80002d58:	02050263          	beqz	a0,80002d7c <system_main+0x48>
    80002d5c:	0004a783          	lw	a5,0(s1)
    80002d60:	0007879b          	sext.w	a5,a5
    80002d64:	fe078ce3          	beqz	a5,80002d5c <system_main+0x28>
    80002d68:	0ff0000f          	fence
    80002d6c:	00002517          	auipc	a0,0x2
    80002d70:	49c50513          	addi	a0,a0,1180 # 80005208 <CONSOLE_STATUS+0x1f8>
    80002d74:	00001097          	auipc	ra,0x1
    80002d78:	a78080e7          	jalr	-1416(ra) # 800037ec <panic>
    80002d7c:	00001097          	auipc	ra,0x1
    80002d80:	9cc080e7          	jalr	-1588(ra) # 80003748 <consoleinit>
    80002d84:	00001097          	auipc	ra,0x1
    80002d88:	158080e7          	jalr	344(ra) # 80003edc <printfinit>
    80002d8c:	00002517          	auipc	a0,0x2
    80002d90:	55c50513          	addi	a0,a0,1372 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002d94:	00001097          	auipc	ra,0x1
    80002d98:	ab4080e7          	jalr	-1356(ra) # 80003848 <__printf>
    80002d9c:	00002517          	auipc	a0,0x2
    80002da0:	43c50513          	addi	a0,a0,1084 # 800051d8 <CONSOLE_STATUS+0x1c8>
    80002da4:	00001097          	auipc	ra,0x1
    80002da8:	aa4080e7          	jalr	-1372(ra) # 80003848 <__printf>
    80002dac:	00002517          	auipc	a0,0x2
    80002db0:	53c50513          	addi	a0,a0,1340 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80002db4:	00001097          	auipc	ra,0x1
    80002db8:	a94080e7          	jalr	-1388(ra) # 80003848 <__printf>
    80002dbc:	00001097          	auipc	ra,0x1
    80002dc0:	4ac080e7          	jalr	1196(ra) # 80004268 <kinit>
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	148080e7          	jalr	328(ra) # 80002f0c <trapinit>
    80002dcc:	00000097          	auipc	ra,0x0
    80002dd0:	16c080e7          	jalr	364(ra) # 80002f38 <trapinithart>
    80002dd4:	00000097          	auipc	ra,0x0
    80002dd8:	5bc080e7          	jalr	1468(ra) # 80003390 <plicinit>
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	5dc080e7          	jalr	1500(ra) # 800033b8 <plicinithart>
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	078080e7          	jalr	120(ra) # 80002e5c <userinit>
    80002dec:	0ff0000f          	fence
    80002df0:	00100793          	li	a5,1
    80002df4:	00002517          	auipc	a0,0x2
    80002df8:	3fc50513          	addi	a0,a0,1020 # 800051f0 <CONSOLE_STATUS+0x1e0>
    80002dfc:	00f4a023          	sw	a5,0(s1)
    80002e00:	00001097          	auipc	ra,0x1
    80002e04:	a48080e7          	jalr	-1464(ra) # 80003848 <__printf>
    80002e08:	0000006f          	j	80002e08 <system_main+0xd4>

0000000080002e0c <cpuid>:
    80002e0c:	ff010113          	addi	sp,sp,-16
    80002e10:	00813423          	sd	s0,8(sp)
    80002e14:	01010413          	addi	s0,sp,16
    80002e18:	00020513          	mv	a0,tp
    80002e1c:	00813403          	ld	s0,8(sp)
    80002e20:	0005051b          	sext.w	a0,a0
    80002e24:	01010113          	addi	sp,sp,16
    80002e28:	00008067          	ret

0000000080002e2c <mycpu>:
    80002e2c:	ff010113          	addi	sp,sp,-16
    80002e30:	00813423          	sd	s0,8(sp)
    80002e34:	01010413          	addi	s0,sp,16
    80002e38:	00020793          	mv	a5,tp
    80002e3c:	00813403          	ld	s0,8(sp)
    80002e40:	0007879b          	sext.w	a5,a5
    80002e44:	00779793          	slli	a5,a5,0x7
    80002e48:	00004517          	auipc	a0,0x4
    80002e4c:	f7850513          	addi	a0,a0,-136 # 80006dc0 <cpus>
    80002e50:	00f50533          	add	a0,a0,a5
    80002e54:	01010113          	addi	sp,sp,16
    80002e58:	00008067          	ret

0000000080002e5c <userinit>:
    80002e5c:	ff010113          	addi	sp,sp,-16
    80002e60:	00813423          	sd	s0,8(sp)
    80002e64:	01010413          	addi	s0,sp,16
    80002e68:	00813403          	ld	s0,8(sp)
    80002e6c:	01010113          	addi	sp,sp,16
    80002e70:	fffff317          	auipc	t1,0xfffff
    80002e74:	97030067          	jr	-1680(t1) # 800017e0 <main>

0000000080002e78 <either_copyout>:
    80002e78:	ff010113          	addi	sp,sp,-16
    80002e7c:	00813023          	sd	s0,0(sp)
    80002e80:	00113423          	sd	ra,8(sp)
    80002e84:	01010413          	addi	s0,sp,16
    80002e88:	02051663          	bnez	a0,80002eb4 <either_copyout+0x3c>
    80002e8c:	00058513          	mv	a0,a1
    80002e90:	00060593          	mv	a1,a2
    80002e94:	0006861b          	sext.w	a2,a3
    80002e98:	00002097          	auipc	ra,0x2
    80002e9c:	c5c080e7          	jalr	-932(ra) # 80004af4 <__memmove>
    80002ea0:	00813083          	ld	ra,8(sp)
    80002ea4:	00013403          	ld	s0,0(sp)
    80002ea8:	00000513          	li	a0,0
    80002eac:	01010113          	addi	sp,sp,16
    80002eb0:	00008067          	ret
    80002eb4:	00002517          	auipc	a0,0x2
    80002eb8:	37c50513          	addi	a0,a0,892 # 80005230 <CONSOLE_STATUS+0x220>
    80002ebc:	00001097          	auipc	ra,0x1
    80002ec0:	930080e7          	jalr	-1744(ra) # 800037ec <panic>

0000000080002ec4 <either_copyin>:
    80002ec4:	ff010113          	addi	sp,sp,-16
    80002ec8:	00813023          	sd	s0,0(sp)
    80002ecc:	00113423          	sd	ra,8(sp)
    80002ed0:	01010413          	addi	s0,sp,16
    80002ed4:	02059463          	bnez	a1,80002efc <either_copyin+0x38>
    80002ed8:	00060593          	mv	a1,a2
    80002edc:	0006861b          	sext.w	a2,a3
    80002ee0:	00002097          	auipc	ra,0x2
    80002ee4:	c14080e7          	jalr	-1004(ra) # 80004af4 <__memmove>
    80002ee8:	00813083          	ld	ra,8(sp)
    80002eec:	00013403          	ld	s0,0(sp)
    80002ef0:	00000513          	li	a0,0
    80002ef4:	01010113          	addi	sp,sp,16
    80002ef8:	00008067          	ret
    80002efc:	00002517          	auipc	a0,0x2
    80002f00:	35c50513          	addi	a0,a0,860 # 80005258 <CONSOLE_STATUS+0x248>
    80002f04:	00001097          	auipc	ra,0x1
    80002f08:	8e8080e7          	jalr	-1816(ra) # 800037ec <panic>

0000000080002f0c <trapinit>:
    80002f0c:	ff010113          	addi	sp,sp,-16
    80002f10:	00813423          	sd	s0,8(sp)
    80002f14:	01010413          	addi	s0,sp,16
    80002f18:	00813403          	ld	s0,8(sp)
    80002f1c:	00002597          	auipc	a1,0x2
    80002f20:	36458593          	addi	a1,a1,868 # 80005280 <CONSOLE_STATUS+0x270>
    80002f24:	00004517          	auipc	a0,0x4
    80002f28:	f1c50513          	addi	a0,a0,-228 # 80006e40 <tickslock>
    80002f2c:	01010113          	addi	sp,sp,16
    80002f30:	00001317          	auipc	t1,0x1
    80002f34:	5c830067          	jr	1480(t1) # 800044f8 <initlock>

0000000080002f38 <trapinithart>:
    80002f38:	ff010113          	addi	sp,sp,-16
    80002f3c:	00813423          	sd	s0,8(sp)
    80002f40:	01010413          	addi	s0,sp,16
    80002f44:	00000797          	auipc	a5,0x0
    80002f48:	2fc78793          	addi	a5,a5,764 # 80003240 <kernelvec>
    80002f4c:	10579073          	csrw	stvec,a5
    80002f50:	00813403          	ld	s0,8(sp)
    80002f54:	01010113          	addi	sp,sp,16
    80002f58:	00008067          	ret

0000000080002f5c <usertrap>:
    80002f5c:	ff010113          	addi	sp,sp,-16
    80002f60:	00813423          	sd	s0,8(sp)
    80002f64:	01010413          	addi	s0,sp,16
    80002f68:	00813403          	ld	s0,8(sp)
    80002f6c:	01010113          	addi	sp,sp,16
    80002f70:	00008067          	ret

0000000080002f74 <usertrapret>:
    80002f74:	ff010113          	addi	sp,sp,-16
    80002f78:	00813423          	sd	s0,8(sp)
    80002f7c:	01010413          	addi	s0,sp,16
    80002f80:	00813403          	ld	s0,8(sp)
    80002f84:	01010113          	addi	sp,sp,16
    80002f88:	00008067          	ret

0000000080002f8c <kerneltrap>:
    80002f8c:	fe010113          	addi	sp,sp,-32
    80002f90:	00813823          	sd	s0,16(sp)
    80002f94:	00113c23          	sd	ra,24(sp)
    80002f98:	00913423          	sd	s1,8(sp)
    80002f9c:	02010413          	addi	s0,sp,32
    80002fa0:	142025f3          	csrr	a1,scause
    80002fa4:	100027f3          	csrr	a5,sstatus
    80002fa8:	0027f793          	andi	a5,a5,2
    80002fac:	10079c63          	bnez	a5,800030c4 <kerneltrap+0x138>
    80002fb0:	142027f3          	csrr	a5,scause
    80002fb4:	0207ce63          	bltz	a5,80002ff0 <kerneltrap+0x64>
    80002fb8:	00002517          	auipc	a0,0x2
    80002fbc:	31050513          	addi	a0,a0,784 # 800052c8 <CONSOLE_STATUS+0x2b8>
    80002fc0:	00001097          	auipc	ra,0x1
    80002fc4:	888080e7          	jalr	-1912(ra) # 80003848 <__printf>
    80002fc8:	141025f3          	csrr	a1,sepc
    80002fcc:	14302673          	csrr	a2,stval
    80002fd0:	00002517          	auipc	a0,0x2
    80002fd4:	30850513          	addi	a0,a0,776 # 800052d8 <CONSOLE_STATUS+0x2c8>
    80002fd8:	00001097          	auipc	ra,0x1
    80002fdc:	870080e7          	jalr	-1936(ra) # 80003848 <__printf>
    80002fe0:	00002517          	auipc	a0,0x2
    80002fe4:	31050513          	addi	a0,a0,784 # 800052f0 <CONSOLE_STATUS+0x2e0>
    80002fe8:	00001097          	auipc	ra,0x1
    80002fec:	804080e7          	jalr	-2044(ra) # 800037ec <panic>
    80002ff0:	0ff7f713          	andi	a4,a5,255
    80002ff4:	00900693          	li	a3,9
    80002ff8:	04d70063          	beq	a4,a3,80003038 <kerneltrap+0xac>
    80002ffc:	fff00713          	li	a4,-1
    80003000:	03f71713          	slli	a4,a4,0x3f
    80003004:	00170713          	addi	a4,a4,1
    80003008:	fae798e3          	bne	a5,a4,80002fb8 <kerneltrap+0x2c>
    8000300c:	00000097          	auipc	ra,0x0
    80003010:	e00080e7          	jalr	-512(ra) # 80002e0c <cpuid>
    80003014:	06050663          	beqz	a0,80003080 <kerneltrap+0xf4>
    80003018:	144027f3          	csrr	a5,sip
    8000301c:	ffd7f793          	andi	a5,a5,-3
    80003020:	14479073          	csrw	sip,a5
    80003024:	01813083          	ld	ra,24(sp)
    80003028:	01013403          	ld	s0,16(sp)
    8000302c:	00813483          	ld	s1,8(sp)
    80003030:	02010113          	addi	sp,sp,32
    80003034:	00008067          	ret
    80003038:	00000097          	auipc	ra,0x0
    8000303c:	3cc080e7          	jalr	972(ra) # 80003404 <plic_claim>
    80003040:	00a00793          	li	a5,10
    80003044:	00050493          	mv	s1,a0
    80003048:	06f50863          	beq	a0,a5,800030b8 <kerneltrap+0x12c>
    8000304c:	fc050ce3          	beqz	a0,80003024 <kerneltrap+0x98>
    80003050:	00050593          	mv	a1,a0
    80003054:	00002517          	auipc	a0,0x2
    80003058:	25450513          	addi	a0,a0,596 # 800052a8 <CONSOLE_STATUS+0x298>
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	7ec080e7          	jalr	2028(ra) # 80003848 <__printf>
    80003064:	01013403          	ld	s0,16(sp)
    80003068:	01813083          	ld	ra,24(sp)
    8000306c:	00048513          	mv	a0,s1
    80003070:	00813483          	ld	s1,8(sp)
    80003074:	02010113          	addi	sp,sp,32
    80003078:	00000317          	auipc	t1,0x0
    8000307c:	3c430067          	jr	964(t1) # 8000343c <plic_complete>
    80003080:	00004517          	auipc	a0,0x4
    80003084:	dc050513          	addi	a0,a0,-576 # 80006e40 <tickslock>
    80003088:	00001097          	auipc	ra,0x1
    8000308c:	494080e7          	jalr	1172(ra) # 8000451c <acquire>
    80003090:	00003717          	auipc	a4,0x3
    80003094:	c8470713          	addi	a4,a4,-892 # 80005d14 <ticks>
    80003098:	00072783          	lw	a5,0(a4)
    8000309c:	00004517          	auipc	a0,0x4
    800030a0:	da450513          	addi	a0,a0,-604 # 80006e40 <tickslock>
    800030a4:	0017879b          	addiw	a5,a5,1
    800030a8:	00f72023          	sw	a5,0(a4)
    800030ac:	00001097          	auipc	ra,0x1
    800030b0:	53c080e7          	jalr	1340(ra) # 800045e8 <release>
    800030b4:	f65ff06f          	j	80003018 <kerneltrap+0x8c>
    800030b8:	00001097          	auipc	ra,0x1
    800030bc:	098080e7          	jalr	152(ra) # 80004150 <uartintr>
    800030c0:	fa5ff06f          	j	80003064 <kerneltrap+0xd8>
    800030c4:	00002517          	auipc	a0,0x2
    800030c8:	1c450513          	addi	a0,a0,452 # 80005288 <CONSOLE_STATUS+0x278>
    800030cc:	00000097          	auipc	ra,0x0
    800030d0:	720080e7          	jalr	1824(ra) # 800037ec <panic>

00000000800030d4 <clockintr>:
    800030d4:	fe010113          	addi	sp,sp,-32
    800030d8:	00813823          	sd	s0,16(sp)
    800030dc:	00913423          	sd	s1,8(sp)
    800030e0:	00113c23          	sd	ra,24(sp)
    800030e4:	02010413          	addi	s0,sp,32
    800030e8:	00004497          	auipc	s1,0x4
    800030ec:	d5848493          	addi	s1,s1,-680 # 80006e40 <tickslock>
    800030f0:	00048513          	mv	a0,s1
    800030f4:	00001097          	auipc	ra,0x1
    800030f8:	428080e7          	jalr	1064(ra) # 8000451c <acquire>
    800030fc:	00003717          	auipc	a4,0x3
    80003100:	c1870713          	addi	a4,a4,-1000 # 80005d14 <ticks>
    80003104:	00072783          	lw	a5,0(a4)
    80003108:	01013403          	ld	s0,16(sp)
    8000310c:	01813083          	ld	ra,24(sp)
    80003110:	00048513          	mv	a0,s1
    80003114:	0017879b          	addiw	a5,a5,1
    80003118:	00813483          	ld	s1,8(sp)
    8000311c:	00f72023          	sw	a5,0(a4)
    80003120:	02010113          	addi	sp,sp,32
    80003124:	00001317          	auipc	t1,0x1
    80003128:	4c430067          	jr	1220(t1) # 800045e8 <release>

000000008000312c <devintr>:
    8000312c:	142027f3          	csrr	a5,scause
    80003130:	00000513          	li	a0,0
    80003134:	0007c463          	bltz	a5,8000313c <devintr+0x10>
    80003138:	00008067          	ret
    8000313c:	fe010113          	addi	sp,sp,-32
    80003140:	00813823          	sd	s0,16(sp)
    80003144:	00113c23          	sd	ra,24(sp)
    80003148:	00913423          	sd	s1,8(sp)
    8000314c:	02010413          	addi	s0,sp,32
    80003150:	0ff7f713          	andi	a4,a5,255
    80003154:	00900693          	li	a3,9
    80003158:	04d70c63          	beq	a4,a3,800031b0 <devintr+0x84>
    8000315c:	fff00713          	li	a4,-1
    80003160:	03f71713          	slli	a4,a4,0x3f
    80003164:	00170713          	addi	a4,a4,1
    80003168:	00e78c63          	beq	a5,a4,80003180 <devintr+0x54>
    8000316c:	01813083          	ld	ra,24(sp)
    80003170:	01013403          	ld	s0,16(sp)
    80003174:	00813483          	ld	s1,8(sp)
    80003178:	02010113          	addi	sp,sp,32
    8000317c:	00008067          	ret
    80003180:	00000097          	auipc	ra,0x0
    80003184:	c8c080e7          	jalr	-884(ra) # 80002e0c <cpuid>
    80003188:	06050663          	beqz	a0,800031f4 <devintr+0xc8>
    8000318c:	144027f3          	csrr	a5,sip
    80003190:	ffd7f793          	andi	a5,a5,-3
    80003194:	14479073          	csrw	sip,a5
    80003198:	01813083          	ld	ra,24(sp)
    8000319c:	01013403          	ld	s0,16(sp)
    800031a0:	00813483          	ld	s1,8(sp)
    800031a4:	00200513          	li	a0,2
    800031a8:	02010113          	addi	sp,sp,32
    800031ac:	00008067          	ret
    800031b0:	00000097          	auipc	ra,0x0
    800031b4:	254080e7          	jalr	596(ra) # 80003404 <plic_claim>
    800031b8:	00a00793          	li	a5,10
    800031bc:	00050493          	mv	s1,a0
    800031c0:	06f50663          	beq	a0,a5,8000322c <devintr+0x100>
    800031c4:	00100513          	li	a0,1
    800031c8:	fa0482e3          	beqz	s1,8000316c <devintr+0x40>
    800031cc:	00048593          	mv	a1,s1
    800031d0:	00002517          	auipc	a0,0x2
    800031d4:	0d850513          	addi	a0,a0,216 # 800052a8 <CONSOLE_STATUS+0x298>
    800031d8:	00000097          	auipc	ra,0x0
    800031dc:	670080e7          	jalr	1648(ra) # 80003848 <__printf>
    800031e0:	00048513          	mv	a0,s1
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	258080e7          	jalr	600(ra) # 8000343c <plic_complete>
    800031ec:	00100513          	li	a0,1
    800031f0:	f7dff06f          	j	8000316c <devintr+0x40>
    800031f4:	00004517          	auipc	a0,0x4
    800031f8:	c4c50513          	addi	a0,a0,-948 # 80006e40 <tickslock>
    800031fc:	00001097          	auipc	ra,0x1
    80003200:	320080e7          	jalr	800(ra) # 8000451c <acquire>
    80003204:	00003717          	auipc	a4,0x3
    80003208:	b1070713          	addi	a4,a4,-1264 # 80005d14 <ticks>
    8000320c:	00072783          	lw	a5,0(a4)
    80003210:	00004517          	auipc	a0,0x4
    80003214:	c3050513          	addi	a0,a0,-976 # 80006e40 <tickslock>
    80003218:	0017879b          	addiw	a5,a5,1
    8000321c:	00f72023          	sw	a5,0(a4)
    80003220:	00001097          	auipc	ra,0x1
    80003224:	3c8080e7          	jalr	968(ra) # 800045e8 <release>
    80003228:	f65ff06f          	j	8000318c <devintr+0x60>
    8000322c:	00001097          	auipc	ra,0x1
    80003230:	f24080e7          	jalr	-220(ra) # 80004150 <uartintr>
    80003234:	fadff06f          	j	800031e0 <devintr+0xb4>
	...

0000000080003240 <kernelvec>:
    80003240:	f0010113          	addi	sp,sp,-256
    80003244:	00113023          	sd	ra,0(sp)
    80003248:	00213423          	sd	sp,8(sp)
    8000324c:	00313823          	sd	gp,16(sp)
    80003250:	00413c23          	sd	tp,24(sp)
    80003254:	02513023          	sd	t0,32(sp)
    80003258:	02613423          	sd	t1,40(sp)
    8000325c:	02713823          	sd	t2,48(sp)
    80003260:	02813c23          	sd	s0,56(sp)
    80003264:	04913023          	sd	s1,64(sp)
    80003268:	04a13423          	sd	a0,72(sp)
    8000326c:	04b13823          	sd	a1,80(sp)
    80003270:	04c13c23          	sd	a2,88(sp)
    80003274:	06d13023          	sd	a3,96(sp)
    80003278:	06e13423          	sd	a4,104(sp)
    8000327c:	06f13823          	sd	a5,112(sp)
    80003280:	07013c23          	sd	a6,120(sp)
    80003284:	09113023          	sd	a7,128(sp)
    80003288:	09213423          	sd	s2,136(sp)
    8000328c:	09313823          	sd	s3,144(sp)
    80003290:	09413c23          	sd	s4,152(sp)
    80003294:	0b513023          	sd	s5,160(sp)
    80003298:	0b613423          	sd	s6,168(sp)
    8000329c:	0b713823          	sd	s7,176(sp)
    800032a0:	0b813c23          	sd	s8,184(sp)
    800032a4:	0d913023          	sd	s9,192(sp)
    800032a8:	0da13423          	sd	s10,200(sp)
    800032ac:	0db13823          	sd	s11,208(sp)
    800032b0:	0dc13c23          	sd	t3,216(sp)
    800032b4:	0fd13023          	sd	t4,224(sp)
    800032b8:	0fe13423          	sd	t5,232(sp)
    800032bc:	0ff13823          	sd	t6,240(sp)
    800032c0:	ccdff0ef          	jal	ra,80002f8c <kerneltrap>
    800032c4:	00013083          	ld	ra,0(sp)
    800032c8:	00813103          	ld	sp,8(sp)
    800032cc:	01013183          	ld	gp,16(sp)
    800032d0:	02013283          	ld	t0,32(sp)
    800032d4:	02813303          	ld	t1,40(sp)
    800032d8:	03013383          	ld	t2,48(sp)
    800032dc:	03813403          	ld	s0,56(sp)
    800032e0:	04013483          	ld	s1,64(sp)
    800032e4:	04813503          	ld	a0,72(sp)
    800032e8:	05013583          	ld	a1,80(sp)
    800032ec:	05813603          	ld	a2,88(sp)
    800032f0:	06013683          	ld	a3,96(sp)
    800032f4:	06813703          	ld	a4,104(sp)
    800032f8:	07013783          	ld	a5,112(sp)
    800032fc:	07813803          	ld	a6,120(sp)
    80003300:	08013883          	ld	a7,128(sp)
    80003304:	08813903          	ld	s2,136(sp)
    80003308:	09013983          	ld	s3,144(sp)
    8000330c:	09813a03          	ld	s4,152(sp)
    80003310:	0a013a83          	ld	s5,160(sp)
    80003314:	0a813b03          	ld	s6,168(sp)
    80003318:	0b013b83          	ld	s7,176(sp)
    8000331c:	0b813c03          	ld	s8,184(sp)
    80003320:	0c013c83          	ld	s9,192(sp)
    80003324:	0c813d03          	ld	s10,200(sp)
    80003328:	0d013d83          	ld	s11,208(sp)
    8000332c:	0d813e03          	ld	t3,216(sp)
    80003330:	0e013e83          	ld	t4,224(sp)
    80003334:	0e813f03          	ld	t5,232(sp)
    80003338:	0f013f83          	ld	t6,240(sp)
    8000333c:	10010113          	addi	sp,sp,256
    80003340:	10200073          	sret
    80003344:	00000013          	nop
    80003348:	00000013          	nop
    8000334c:	00000013          	nop

0000000080003350 <timervec>:
    80003350:	34051573          	csrrw	a0,mscratch,a0
    80003354:	00b53023          	sd	a1,0(a0)
    80003358:	00c53423          	sd	a2,8(a0)
    8000335c:	00d53823          	sd	a3,16(a0)
    80003360:	01853583          	ld	a1,24(a0)
    80003364:	02053603          	ld	a2,32(a0)
    80003368:	0005b683          	ld	a3,0(a1)
    8000336c:	00c686b3          	add	a3,a3,a2
    80003370:	00d5b023          	sd	a3,0(a1)
    80003374:	00200593          	li	a1,2
    80003378:	14459073          	csrw	sip,a1
    8000337c:	01053683          	ld	a3,16(a0)
    80003380:	00853603          	ld	a2,8(a0)
    80003384:	00053583          	ld	a1,0(a0)
    80003388:	34051573          	csrrw	a0,mscratch,a0
    8000338c:	30200073          	mret

0000000080003390 <plicinit>:
    80003390:	ff010113          	addi	sp,sp,-16
    80003394:	00813423          	sd	s0,8(sp)
    80003398:	01010413          	addi	s0,sp,16
    8000339c:	00813403          	ld	s0,8(sp)
    800033a0:	0c0007b7          	lui	a5,0xc000
    800033a4:	00100713          	li	a4,1
    800033a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800033ac:	00e7a223          	sw	a4,4(a5)
    800033b0:	01010113          	addi	sp,sp,16
    800033b4:	00008067          	ret

00000000800033b8 <plicinithart>:
    800033b8:	ff010113          	addi	sp,sp,-16
    800033bc:	00813023          	sd	s0,0(sp)
    800033c0:	00113423          	sd	ra,8(sp)
    800033c4:	01010413          	addi	s0,sp,16
    800033c8:	00000097          	auipc	ra,0x0
    800033cc:	a44080e7          	jalr	-1468(ra) # 80002e0c <cpuid>
    800033d0:	0085171b          	slliw	a4,a0,0x8
    800033d4:	0c0027b7          	lui	a5,0xc002
    800033d8:	00e787b3          	add	a5,a5,a4
    800033dc:	40200713          	li	a4,1026
    800033e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800033e4:	00813083          	ld	ra,8(sp)
    800033e8:	00013403          	ld	s0,0(sp)
    800033ec:	00d5151b          	slliw	a0,a0,0xd
    800033f0:	0c2017b7          	lui	a5,0xc201
    800033f4:	00a78533          	add	a0,a5,a0
    800033f8:	00052023          	sw	zero,0(a0)
    800033fc:	01010113          	addi	sp,sp,16
    80003400:	00008067          	ret

0000000080003404 <plic_claim>:
    80003404:	ff010113          	addi	sp,sp,-16
    80003408:	00813023          	sd	s0,0(sp)
    8000340c:	00113423          	sd	ra,8(sp)
    80003410:	01010413          	addi	s0,sp,16
    80003414:	00000097          	auipc	ra,0x0
    80003418:	9f8080e7          	jalr	-1544(ra) # 80002e0c <cpuid>
    8000341c:	00813083          	ld	ra,8(sp)
    80003420:	00013403          	ld	s0,0(sp)
    80003424:	00d5151b          	slliw	a0,a0,0xd
    80003428:	0c2017b7          	lui	a5,0xc201
    8000342c:	00a78533          	add	a0,a5,a0
    80003430:	00452503          	lw	a0,4(a0)
    80003434:	01010113          	addi	sp,sp,16
    80003438:	00008067          	ret

000000008000343c <plic_complete>:
    8000343c:	fe010113          	addi	sp,sp,-32
    80003440:	00813823          	sd	s0,16(sp)
    80003444:	00913423          	sd	s1,8(sp)
    80003448:	00113c23          	sd	ra,24(sp)
    8000344c:	02010413          	addi	s0,sp,32
    80003450:	00050493          	mv	s1,a0
    80003454:	00000097          	auipc	ra,0x0
    80003458:	9b8080e7          	jalr	-1608(ra) # 80002e0c <cpuid>
    8000345c:	01813083          	ld	ra,24(sp)
    80003460:	01013403          	ld	s0,16(sp)
    80003464:	00d5179b          	slliw	a5,a0,0xd
    80003468:	0c201737          	lui	a4,0xc201
    8000346c:	00f707b3          	add	a5,a4,a5
    80003470:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003474:	00813483          	ld	s1,8(sp)
    80003478:	02010113          	addi	sp,sp,32
    8000347c:	00008067          	ret

0000000080003480 <consolewrite>:
    80003480:	fb010113          	addi	sp,sp,-80
    80003484:	04813023          	sd	s0,64(sp)
    80003488:	04113423          	sd	ra,72(sp)
    8000348c:	02913c23          	sd	s1,56(sp)
    80003490:	03213823          	sd	s2,48(sp)
    80003494:	03313423          	sd	s3,40(sp)
    80003498:	03413023          	sd	s4,32(sp)
    8000349c:	01513c23          	sd	s5,24(sp)
    800034a0:	05010413          	addi	s0,sp,80
    800034a4:	06c05c63          	blez	a2,8000351c <consolewrite+0x9c>
    800034a8:	00060993          	mv	s3,a2
    800034ac:	00050a13          	mv	s4,a0
    800034b0:	00058493          	mv	s1,a1
    800034b4:	00000913          	li	s2,0
    800034b8:	fff00a93          	li	s5,-1
    800034bc:	01c0006f          	j	800034d8 <consolewrite+0x58>
    800034c0:	fbf44503          	lbu	a0,-65(s0)
    800034c4:	0019091b          	addiw	s2,s2,1
    800034c8:	00148493          	addi	s1,s1,1
    800034cc:	00001097          	auipc	ra,0x1
    800034d0:	a9c080e7          	jalr	-1380(ra) # 80003f68 <uartputc>
    800034d4:	03298063          	beq	s3,s2,800034f4 <consolewrite+0x74>
    800034d8:	00048613          	mv	a2,s1
    800034dc:	00100693          	li	a3,1
    800034e0:	000a0593          	mv	a1,s4
    800034e4:	fbf40513          	addi	a0,s0,-65
    800034e8:	00000097          	auipc	ra,0x0
    800034ec:	9dc080e7          	jalr	-1572(ra) # 80002ec4 <either_copyin>
    800034f0:	fd5518e3          	bne	a0,s5,800034c0 <consolewrite+0x40>
    800034f4:	04813083          	ld	ra,72(sp)
    800034f8:	04013403          	ld	s0,64(sp)
    800034fc:	03813483          	ld	s1,56(sp)
    80003500:	02813983          	ld	s3,40(sp)
    80003504:	02013a03          	ld	s4,32(sp)
    80003508:	01813a83          	ld	s5,24(sp)
    8000350c:	00090513          	mv	a0,s2
    80003510:	03013903          	ld	s2,48(sp)
    80003514:	05010113          	addi	sp,sp,80
    80003518:	00008067          	ret
    8000351c:	00000913          	li	s2,0
    80003520:	fd5ff06f          	j	800034f4 <consolewrite+0x74>

0000000080003524 <consoleread>:
    80003524:	f9010113          	addi	sp,sp,-112
    80003528:	06813023          	sd	s0,96(sp)
    8000352c:	04913c23          	sd	s1,88(sp)
    80003530:	05213823          	sd	s2,80(sp)
    80003534:	05313423          	sd	s3,72(sp)
    80003538:	05413023          	sd	s4,64(sp)
    8000353c:	03513c23          	sd	s5,56(sp)
    80003540:	03613823          	sd	s6,48(sp)
    80003544:	03713423          	sd	s7,40(sp)
    80003548:	03813023          	sd	s8,32(sp)
    8000354c:	06113423          	sd	ra,104(sp)
    80003550:	01913c23          	sd	s9,24(sp)
    80003554:	07010413          	addi	s0,sp,112
    80003558:	00060b93          	mv	s7,a2
    8000355c:	00050913          	mv	s2,a0
    80003560:	00058c13          	mv	s8,a1
    80003564:	00060b1b          	sext.w	s6,a2
    80003568:	00004497          	auipc	s1,0x4
    8000356c:	90048493          	addi	s1,s1,-1792 # 80006e68 <cons>
    80003570:	00400993          	li	s3,4
    80003574:	fff00a13          	li	s4,-1
    80003578:	00a00a93          	li	s5,10
    8000357c:	05705e63          	blez	s7,800035d8 <consoleread+0xb4>
    80003580:	09c4a703          	lw	a4,156(s1)
    80003584:	0984a783          	lw	a5,152(s1)
    80003588:	0007071b          	sext.w	a4,a4
    8000358c:	08e78463          	beq	a5,a4,80003614 <consoleread+0xf0>
    80003590:	07f7f713          	andi	a4,a5,127
    80003594:	00e48733          	add	a4,s1,a4
    80003598:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000359c:	0017869b          	addiw	a3,a5,1
    800035a0:	08d4ac23          	sw	a3,152(s1)
    800035a4:	00070c9b          	sext.w	s9,a4
    800035a8:	0b370663          	beq	a4,s3,80003654 <consoleread+0x130>
    800035ac:	00100693          	li	a3,1
    800035b0:	f9f40613          	addi	a2,s0,-97
    800035b4:	000c0593          	mv	a1,s8
    800035b8:	00090513          	mv	a0,s2
    800035bc:	f8e40fa3          	sb	a4,-97(s0)
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	8b8080e7          	jalr	-1864(ra) # 80002e78 <either_copyout>
    800035c8:	01450863          	beq	a0,s4,800035d8 <consoleread+0xb4>
    800035cc:	001c0c13          	addi	s8,s8,1
    800035d0:	fffb8b9b          	addiw	s7,s7,-1
    800035d4:	fb5c94e3          	bne	s9,s5,8000357c <consoleread+0x58>
    800035d8:	000b851b          	sext.w	a0,s7
    800035dc:	06813083          	ld	ra,104(sp)
    800035e0:	06013403          	ld	s0,96(sp)
    800035e4:	05813483          	ld	s1,88(sp)
    800035e8:	05013903          	ld	s2,80(sp)
    800035ec:	04813983          	ld	s3,72(sp)
    800035f0:	04013a03          	ld	s4,64(sp)
    800035f4:	03813a83          	ld	s5,56(sp)
    800035f8:	02813b83          	ld	s7,40(sp)
    800035fc:	02013c03          	ld	s8,32(sp)
    80003600:	01813c83          	ld	s9,24(sp)
    80003604:	40ab053b          	subw	a0,s6,a0
    80003608:	03013b03          	ld	s6,48(sp)
    8000360c:	07010113          	addi	sp,sp,112
    80003610:	00008067          	ret
    80003614:	00001097          	auipc	ra,0x1
    80003618:	1d8080e7          	jalr	472(ra) # 800047ec <push_on>
    8000361c:	0984a703          	lw	a4,152(s1)
    80003620:	09c4a783          	lw	a5,156(s1)
    80003624:	0007879b          	sext.w	a5,a5
    80003628:	fef70ce3          	beq	a4,a5,80003620 <consoleread+0xfc>
    8000362c:	00001097          	auipc	ra,0x1
    80003630:	234080e7          	jalr	564(ra) # 80004860 <pop_on>
    80003634:	0984a783          	lw	a5,152(s1)
    80003638:	07f7f713          	andi	a4,a5,127
    8000363c:	00e48733          	add	a4,s1,a4
    80003640:	01874703          	lbu	a4,24(a4)
    80003644:	0017869b          	addiw	a3,a5,1
    80003648:	08d4ac23          	sw	a3,152(s1)
    8000364c:	00070c9b          	sext.w	s9,a4
    80003650:	f5371ee3          	bne	a4,s3,800035ac <consoleread+0x88>
    80003654:	000b851b          	sext.w	a0,s7
    80003658:	f96bf2e3          	bgeu	s7,s6,800035dc <consoleread+0xb8>
    8000365c:	08f4ac23          	sw	a5,152(s1)
    80003660:	f7dff06f          	j	800035dc <consoleread+0xb8>

0000000080003664 <consputc>:
    80003664:	10000793          	li	a5,256
    80003668:	00f50663          	beq	a0,a5,80003674 <consputc+0x10>
    8000366c:	00001317          	auipc	t1,0x1
    80003670:	9f430067          	jr	-1548(t1) # 80004060 <uartputc_sync>
    80003674:	ff010113          	addi	sp,sp,-16
    80003678:	00113423          	sd	ra,8(sp)
    8000367c:	00813023          	sd	s0,0(sp)
    80003680:	01010413          	addi	s0,sp,16
    80003684:	00800513          	li	a0,8
    80003688:	00001097          	auipc	ra,0x1
    8000368c:	9d8080e7          	jalr	-1576(ra) # 80004060 <uartputc_sync>
    80003690:	02000513          	li	a0,32
    80003694:	00001097          	auipc	ra,0x1
    80003698:	9cc080e7          	jalr	-1588(ra) # 80004060 <uartputc_sync>
    8000369c:	00013403          	ld	s0,0(sp)
    800036a0:	00813083          	ld	ra,8(sp)
    800036a4:	00800513          	li	a0,8
    800036a8:	01010113          	addi	sp,sp,16
    800036ac:	00001317          	auipc	t1,0x1
    800036b0:	9b430067          	jr	-1612(t1) # 80004060 <uartputc_sync>

00000000800036b4 <consoleintr>:
    800036b4:	fe010113          	addi	sp,sp,-32
    800036b8:	00813823          	sd	s0,16(sp)
    800036bc:	00913423          	sd	s1,8(sp)
    800036c0:	01213023          	sd	s2,0(sp)
    800036c4:	00113c23          	sd	ra,24(sp)
    800036c8:	02010413          	addi	s0,sp,32
    800036cc:	00003917          	auipc	s2,0x3
    800036d0:	79c90913          	addi	s2,s2,1948 # 80006e68 <cons>
    800036d4:	00050493          	mv	s1,a0
    800036d8:	00090513          	mv	a0,s2
    800036dc:	00001097          	auipc	ra,0x1
    800036e0:	e40080e7          	jalr	-448(ra) # 8000451c <acquire>
    800036e4:	02048c63          	beqz	s1,8000371c <consoleintr+0x68>
    800036e8:	0a092783          	lw	a5,160(s2)
    800036ec:	09892703          	lw	a4,152(s2)
    800036f0:	07f00693          	li	a3,127
    800036f4:	40e7873b          	subw	a4,a5,a4
    800036f8:	02e6e263          	bltu	a3,a4,8000371c <consoleintr+0x68>
    800036fc:	00d00713          	li	a4,13
    80003700:	04e48063          	beq	s1,a4,80003740 <consoleintr+0x8c>
    80003704:	07f7f713          	andi	a4,a5,127
    80003708:	00e90733          	add	a4,s2,a4
    8000370c:	0017879b          	addiw	a5,a5,1
    80003710:	0af92023          	sw	a5,160(s2)
    80003714:	00970c23          	sb	s1,24(a4)
    80003718:	08f92e23          	sw	a5,156(s2)
    8000371c:	01013403          	ld	s0,16(sp)
    80003720:	01813083          	ld	ra,24(sp)
    80003724:	00813483          	ld	s1,8(sp)
    80003728:	00013903          	ld	s2,0(sp)
    8000372c:	00003517          	auipc	a0,0x3
    80003730:	73c50513          	addi	a0,a0,1852 # 80006e68 <cons>
    80003734:	02010113          	addi	sp,sp,32
    80003738:	00001317          	auipc	t1,0x1
    8000373c:	eb030067          	jr	-336(t1) # 800045e8 <release>
    80003740:	00a00493          	li	s1,10
    80003744:	fc1ff06f          	j	80003704 <consoleintr+0x50>

0000000080003748 <consoleinit>:
    80003748:	fe010113          	addi	sp,sp,-32
    8000374c:	00113c23          	sd	ra,24(sp)
    80003750:	00813823          	sd	s0,16(sp)
    80003754:	00913423          	sd	s1,8(sp)
    80003758:	02010413          	addi	s0,sp,32
    8000375c:	00003497          	auipc	s1,0x3
    80003760:	70c48493          	addi	s1,s1,1804 # 80006e68 <cons>
    80003764:	00048513          	mv	a0,s1
    80003768:	00002597          	auipc	a1,0x2
    8000376c:	b9858593          	addi	a1,a1,-1128 # 80005300 <CONSOLE_STATUS+0x2f0>
    80003770:	00001097          	auipc	ra,0x1
    80003774:	d88080e7          	jalr	-632(ra) # 800044f8 <initlock>
    80003778:	00000097          	auipc	ra,0x0
    8000377c:	7ac080e7          	jalr	1964(ra) # 80003f24 <uartinit>
    80003780:	01813083          	ld	ra,24(sp)
    80003784:	01013403          	ld	s0,16(sp)
    80003788:	00000797          	auipc	a5,0x0
    8000378c:	d9c78793          	addi	a5,a5,-612 # 80003524 <consoleread>
    80003790:	0af4bc23          	sd	a5,184(s1)
    80003794:	00000797          	auipc	a5,0x0
    80003798:	cec78793          	addi	a5,a5,-788 # 80003480 <consolewrite>
    8000379c:	0cf4b023          	sd	a5,192(s1)
    800037a0:	00813483          	ld	s1,8(sp)
    800037a4:	02010113          	addi	sp,sp,32
    800037a8:	00008067          	ret

00000000800037ac <console_read>:
    800037ac:	ff010113          	addi	sp,sp,-16
    800037b0:	00813423          	sd	s0,8(sp)
    800037b4:	01010413          	addi	s0,sp,16
    800037b8:	00813403          	ld	s0,8(sp)
    800037bc:	00003317          	auipc	t1,0x3
    800037c0:	76433303          	ld	t1,1892(t1) # 80006f20 <devsw+0x10>
    800037c4:	01010113          	addi	sp,sp,16
    800037c8:	00030067          	jr	t1

00000000800037cc <console_write>:
    800037cc:	ff010113          	addi	sp,sp,-16
    800037d0:	00813423          	sd	s0,8(sp)
    800037d4:	01010413          	addi	s0,sp,16
    800037d8:	00813403          	ld	s0,8(sp)
    800037dc:	00003317          	auipc	t1,0x3
    800037e0:	74c33303          	ld	t1,1868(t1) # 80006f28 <devsw+0x18>
    800037e4:	01010113          	addi	sp,sp,16
    800037e8:	00030067          	jr	t1

00000000800037ec <panic>:
    800037ec:	fe010113          	addi	sp,sp,-32
    800037f0:	00113c23          	sd	ra,24(sp)
    800037f4:	00813823          	sd	s0,16(sp)
    800037f8:	00913423          	sd	s1,8(sp)
    800037fc:	02010413          	addi	s0,sp,32
    80003800:	00050493          	mv	s1,a0
    80003804:	00002517          	auipc	a0,0x2
    80003808:	b0450513          	addi	a0,a0,-1276 # 80005308 <CONSOLE_STATUS+0x2f8>
    8000380c:	00003797          	auipc	a5,0x3
    80003810:	7a07ae23          	sw	zero,1980(a5) # 80006fc8 <pr+0x18>
    80003814:	00000097          	auipc	ra,0x0
    80003818:	034080e7          	jalr	52(ra) # 80003848 <__printf>
    8000381c:	00048513          	mv	a0,s1
    80003820:	00000097          	auipc	ra,0x0
    80003824:	028080e7          	jalr	40(ra) # 80003848 <__printf>
    80003828:	00002517          	auipc	a0,0x2
    8000382c:	ac050513          	addi	a0,a0,-1344 # 800052e8 <CONSOLE_STATUS+0x2d8>
    80003830:	00000097          	auipc	ra,0x0
    80003834:	018080e7          	jalr	24(ra) # 80003848 <__printf>
    80003838:	00100793          	li	a5,1
    8000383c:	00002717          	auipc	a4,0x2
    80003840:	4cf72e23          	sw	a5,1244(a4) # 80005d18 <panicked>
    80003844:	0000006f          	j	80003844 <panic+0x58>

0000000080003848 <__printf>:
    80003848:	f3010113          	addi	sp,sp,-208
    8000384c:	08813023          	sd	s0,128(sp)
    80003850:	07313423          	sd	s3,104(sp)
    80003854:	09010413          	addi	s0,sp,144
    80003858:	05813023          	sd	s8,64(sp)
    8000385c:	08113423          	sd	ra,136(sp)
    80003860:	06913c23          	sd	s1,120(sp)
    80003864:	07213823          	sd	s2,112(sp)
    80003868:	07413023          	sd	s4,96(sp)
    8000386c:	05513c23          	sd	s5,88(sp)
    80003870:	05613823          	sd	s6,80(sp)
    80003874:	05713423          	sd	s7,72(sp)
    80003878:	03913c23          	sd	s9,56(sp)
    8000387c:	03a13823          	sd	s10,48(sp)
    80003880:	03b13423          	sd	s11,40(sp)
    80003884:	00003317          	auipc	t1,0x3
    80003888:	72c30313          	addi	t1,t1,1836 # 80006fb0 <pr>
    8000388c:	01832c03          	lw	s8,24(t1)
    80003890:	00b43423          	sd	a1,8(s0)
    80003894:	00c43823          	sd	a2,16(s0)
    80003898:	00d43c23          	sd	a3,24(s0)
    8000389c:	02e43023          	sd	a4,32(s0)
    800038a0:	02f43423          	sd	a5,40(s0)
    800038a4:	03043823          	sd	a6,48(s0)
    800038a8:	03143c23          	sd	a7,56(s0)
    800038ac:	00050993          	mv	s3,a0
    800038b0:	4a0c1663          	bnez	s8,80003d5c <__printf+0x514>
    800038b4:	60098c63          	beqz	s3,80003ecc <__printf+0x684>
    800038b8:	0009c503          	lbu	a0,0(s3)
    800038bc:	00840793          	addi	a5,s0,8
    800038c0:	f6f43c23          	sd	a5,-136(s0)
    800038c4:	00000493          	li	s1,0
    800038c8:	22050063          	beqz	a0,80003ae8 <__printf+0x2a0>
    800038cc:	00002a37          	lui	s4,0x2
    800038d0:	00018ab7          	lui	s5,0x18
    800038d4:	000f4b37          	lui	s6,0xf4
    800038d8:	00989bb7          	lui	s7,0x989
    800038dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800038e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800038e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800038e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800038ec:	00148c9b          	addiw	s9,s1,1
    800038f0:	02500793          	li	a5,37
    800038f4:	01998933          	add	s2,s3,s9
    800038f8:	38f51263          	bne	a0,a5,80003c7c <__printf+0x434>
    800038fc:	00094783          	lbu	a5,0(s2)
    80003900:	00078c9b          	sext.w	s9,a5
    80003904:	1e078263          	beqz	a5,80003ae8 <__printf+0x2a0>
    80003908:	0024849b          	addiw	s1,s1,2
    8000390c:	07000713          	li	a4,112
    80003910:	00998933          	add	s2,s3,s1
    80003914:	38e78a63          	beq	a5,a4,80003ca8 <__printf+0x460>
    80003918:	20f76863          	bltu	a4,a5,80003b28 <__printf+0x2e0>
    8000391c:	42a78863          	beq	a5,a0,80003d4c <__printf+0x504>
    80003920:	06400713          	li	a4,100
    80003924:	40e79663          	bne	a5,a4,80003d30 <__printf+0x4e8>
    80003928:	f7843783          	ld	a5,-136(s0)
    8000392c:	0007a603          	lw	a2,0(a5)
    80003930:	00878793          	addi	a5,a5,8
    80003934:	f6f43c23          	sd	a5,-136(s0)
    80003938:	42064a63          	bltz	a2,80003d6c <__printf+0x524>
    8000393c:	00a00713          	li	a4,10
    80003940:	02e677bb          	remuw	a5,a2,a4
    80003944:	00002d97          	auipc	s11,0x2
    80003948:	9ecd8d93          	addi	s11,s11,-1556 # 80005330 <digits>
    8000394c:	00900593          	li	a1,9
    80003950:	0006051b          	sext.w	a0,a2
    80003954:	00000c93          	li	s9,0
    80003958:	02079793          	slli	a5,a5,0x20
    8000395c:	0207d793          	srli	a5,a5,0x20
    80003960:	00fd87b3          	add	a5,s11,a5
    80003964:	0007c783          	lbu	a5,0(a5)
    80003968:	02e656bb          	divuw	a3,a2,a4
    8000396c:	f8f40023          	sb	a5,-128(s0)
    80003970:	14c5d863          	bge	a1,a2,80003ac0 <__printf+0x278>
    80003974:	06300593          	li	a1,99
    80003978:	00100c93          	li	s9,1
    8000397c:	02e6f7bb          	remuw	a5,a3,a4
    80003980:	02079793          	slli	a5,a5,0x20
    80003984:	0207d793          	srli	a5,a5,0x20
    80003988:	00fd87b3          	add	a5,s11,a5
    8000398c:	0007c783          	lbu	a5,0(a5)
    80003990:	02e6d73b          	divuw	a4,a3,a4
    80003994:	f8f400a3          	sb	a5,-127(s0)
    80003998:	12a5f463          	bgeu	a1,a0,80003ac0 <__printf+0x278>
    8000399c:	00a00693          	li	a3,10
    800039a0:	00900593          	li	a1,9
    800039a4:	02d777bb          	remuw	a5,a4,a3
    800039a8:	02079793          	slli	a5,a5,0x20
    800039ac:	0207d793          	srli	a5,a5,0x20
    800039b0:	00fd87b3          	add	a5,s11,a5
    800039b4:	0007c503          	lbu	a0,0(a5)
    800039b8:	02d757bb          	divuw	a5,a4,a3
    800039bc:	f8a40123          	sb	a0,-126(s0)
    800039c0:	48e5f263          	bgeu	a1,a4,80003e44 <__printf+0x5fc>
    800039c4:	06300513          	li	a0,99
    800039c8:	02d7f5bb          	remuw	a1,a5,a3
    800039cc:	02059593          	slli	a1,a1,0x20
    800039d0:	0205d593          	srli	a1,a1,0x20
    800039d4:	00bd85b3          	add	a1,s11,a1
    800039d8:	0005c583          	lbu	a1,0(a1)
    800039dc:	02d7d7bb          	divuw	a5,a5,a3
    800039e0:	f8b401a3          	sb	a1,-125(s0)
    800039e4:	48e57263          	bgeu	a0,a4,80003e68 <__printf+0x620>
    800039e8:	3e700513          	li	a0,999
    800039ec:	02d7f5bb          	remuw	a1,a5,a3
    800039f0:	02059593          	slli	a1,a1,0x20
    800039f4:	0205d593          	srli	a1,a1,0x20
    800039f8:	00bd85b3          	add	a1,s11,a1
    800039fc:	0005c583          	lbu	a1,0(a1)
    80003a00:	02d7d7bb          	divuw	a5,a5,a3
    80003a04:	f8b40223          	sb	a1,-124(s0)
    80003a08:	46e57663          	bgeu	a0,a4,80003e74 <__printf+0x62c>
    80003a0c:	02d7f5bb          	remuw	a1,a5,a3
    80003a10:	02059593          	slli	a1,a1,0x20
    80003a14:	0205d593          	srli	a1,a1,0x20
    80003a18:	00bd85b3          	add	a1,s11,a1
    80003a1c:	0005c583          	lbu	a1,0(a1)
    80003a20:	02d7d7bb          	divuw	a5,a5,a3
    80003a24:	f8b402a3          	sb	a1,-123(s0)
    80003a28:	46ea7863          	bgeu	s4,a4,80003e98 <__printf+0x650>
    80003a2c:	02d7f5bb          	remuw	a1,a5,a3
    80003a30:	02059593          	slli	a1,a1,0x20
    80003a34:	0205d593          	srli	a1,a1,0x20
    80003a38:	00bd85b3          	add	a1,s11,a1
    80003a3c:	0005c583          	lbu	a1,0(a1)
    80003a40:	02d7d7bb          	divuw	a5,a5,a3
    80003a44:	f8b40323          	sb	a1,-122(s0)
    80003a48:	3eeaf863          	bgeu	s5,a4,80003e38 <__printf+0x5f0>
    80003a4c:	02d7f5bb          	remuw	a1,a5,a3
    80003a50:	02059593          	slli	a1,a1,0x20
    80003a54:	0205d593          	srli	a1,a1,0x20
    80003a58:	00bd85b3          	add	a1,s11,a1
    80003a5c:	0005c583          	lbu	a1,0(a1)
    80003a60:	02d7d7bb          	divuw	a5,a5,a3
    80003a64:	f8b403a3          	sb	a1,-121(s0)
    80003a68:	42eb7e63          	bgeu	s6,a4,80003ea4 <__printf+0x65c>
    80003a6c:	02d7f5bb          	remuw	a1,a5,a3
    80003a70:	02059593          	slli	a1,a1,0x20
    80003a74:	0205d593          	srli	a1,a1,0x20
    80003a78:	00bd85b3          	add	a1,s11,a1
    80003a7c:	0005c583          	lbu	a1,0(a1)
    80003a80:	02d7d7bb          	divuw	a5,a5,a3
    80003a84:	f8b40423          	sb	a1,-120(s0)
    80003a88:	42ebfc63          	bgeu	s7,a4,80003ec0 <__printf+0x678>
    80003a8c:	02079793          	slli	a5,a5,0x20
    80003a90:	0207d793          	srli	a5,a5,0x20
    80003a94:	00fd8db3          	add	s11,s11,a5
    80003a98:	000dc703          	lbu	a4,0(s11)
    80003a9c:	00a00793          	li	a5,10
    80003aa0:	00900c93          	li	s9,9
    80003aa4:	f8e404a3          	sb	a4,-119(s0)
    80003aa8:	00065c63          	bgez	a2,80003ac0 <__printf+0x278>
    80003aac:	f9040713          	addi	a4,s0,-112
    80003ab0:	00f70733          	add	a4,a4,a5
    80003ab4:	02d00693          	li	a3,45
    80003ab8:	fed70823          	sb	a3,-16(a4)
    80003abc:	00078c93          	mv	s9,a5
    80003ac0:	f8040793          	addi	a5,s0,-128
    80003ac4:	01978cb3          	add	s9,a5,s9
    80003ac8:	f7f40d13          	addi	s10,s0,-129
    80003acc:	000cc503          	lbu	a0,0(s9)
    80003ad0:	fffc8c93          	addi	s9,s9,-1
    80003ad4:	00000097          	auipc	ra,0x0
    80003ad8:	b90080e7          	jalr	-1136(ra) # 80003664 <consputc>
    80003adc:	ffac98e3          	bne	s9,s10,80003acc <__printf+0x284>
    80003ae0:	00094503          	lbu	a0,0(s2)
    80003ae4:	e00514e3          	bnez	a0,800038ec <__printf+0xa4>
    80003ae8:	1a0c1663          	bnez	s8,80003c94 <__printf+0x44c>
    80003aec:	08813083          	ld	ra,136(sp)
    80003af0:	08013403          	ld	s0,128(sp)
    80003af4:	07813483          	ld	s1,120(sp)
    80003af8:	07013903          	ld	s2,112(sp)
    80003afc:	06813983          	ld	s3,104(sp)
    80003b00:	06013a03          	ld	s4,96(sp)
    80003b04:	05813a83          	ld	s5,88(sp)
    80003b08:	05013b03          	ld	s6,80(sp)
    80003b0c:	04813b83          	ld	s7,72(sp)
    80003b10:	04013c03          	ld	s8,64(sp)
    80003b14:	03813c83          	ld	s9,56(sp)
    80003b18:	03013d03          	ld	s10,48(sp)
    80003b1c:	02813d83          	ld	s11,40(sp)
    80003b20:	0d010113          	addi	sp,sp,208
    80003b24:	00008067          	ret
    80003b28:	07300713          	li	a4,115
    80003b2c:	1ce78a63          	beq	a5,a4,80003d00 <__printf+0x4b8>
    80003b30:	07800713          	li	a4,120
    80003b34:	1ee79e63          	bne	a5,a4,80003d30 <__printf+0x4e8>
    80003b38:	f7843783          	ld	a5,-136(s0)
    80003b3c:	0007a703          	lw	a4,0(a5)
    80003b40:	00878793          	addi	a5,a5,8
    80003b44:	f6f43c23          	sd	a5,-136(s0)
    80003b48:	28074263          	bltz	a4,80003dcc <__printf+0x584>
    80003b4c:	00001d97          	auipc	s11,0x1
    80003b50:	7e4d8d93          	addi	s11,s11,2020 # 80005330 <digits>
    80003b54:	00f77793          	andi	a5,a4,15
    80003b58:	00fd87b3          	add	a5,s11,a5
    80003b5c:	0007c683          	lbu	a3,0(a5)
    80003b60:	00f00613          	li	a2,15
    80003b64:	0007079b          	sext.w	a5,a4
    80003b68:	f8d40023          	sb	a3,-128(s0)
    80003b6c:	0047559b          	srliw	a1,a4,0x4
    80003b70:	0047569b          	srliw	a3,a4,0x4
    80003b74:	00000c93          	li	s9,0
    80003b78:	0ee65063          	bge	a2,a4,80003c58 <__printf+0x410>
    80003b7c:	00f6f693          	andi	a3,a3,15
    80003b80:	00dd86b3          	add	a3,s11,a3
    80003b84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003b88:	0087d79b          	srliw	a5,a5,0x8
    80003b8c:	00100c93          	li	s9,1
    80003b90:	f8d400a3          	sb	a3,-127(s0)
    80003b94:	0cb67263          	bgeu	a2,a1,80003c58 <__printf+0x410>
    80003b98:	00f7f693          	andi	a3,a5,15
    80003b9c:	00dd86b3          	add	a3,s11,a3
    80003ba0:	0006c583          	lbu	a1,0(a3)
    80003ba4:	00f00613          	li	a2,15
    80003ba8:	0047d69b          	srliw	a3,a5,0x4
    80003bac:	f8b40123          	sb	a1,-126(s0)
    80003bb0:	0047d593          	srli	a1,a5,0x4
    80003bb4:	28f67e63          	bgeu	a2,a5,80003e50 <__printf+0x608>
    80003bb8:	00f6f693          	andi	a3,a3,15
    80003bbc:	00dd86b3          	add	a3,s11,a3
    80003bc0:	0006c503          	lbu	a0,0(a3)
    80003bc4:	0087d813          	srli	a6,a5,0x8
    80003bc8:	0087d69b          	srliw	a3,a5,0x8
    80003bcc:	f8a401a3          	sb	a0,-125(s0)
    80003bd0:	28b67663          	bgeu	a2,a1,80003e5c <__printf+0x614>
    80003bd4:	00f6f693          	andi	a3,a3,15
    80003bd8:	00dd86b3          	add	a3,s11,a3
    80003bdc:	0006c583          	lbu	a1,0(a3)
    80003be0:	00c7d513          	srli	a0,a5,0xc
    80003be4:	00c7d69b          	srliw	a3,a5,0xc
    80003be8:	f8b40223          	sb	a1,-124(s0)
    80003bec:	29067a63          	bgeu	a2,a6,80003e80 <__printf+0x638>
    80003bf0:	00f6f693          	andi	a3,a3,15
    80003bf4:	00dd86b3          	add	a3,s11,a3
    80003bf8:	0006c583          	lbu	a1,0(a3)
    80003bfc:	0107d813          	srli	a6,a5,0x10
    80003c00:	0107d69b          	srliw	a3,a5,0x10
    80003c04:	f8b402a3          	sb	a1,-123(s0)
    80003c08:	28a67263          	bgeu	a2,a0,80003e8c <__printf+0x644>
    80003c0c:	00f6f693          	andi	a3,a3,15
    80003c10:	00dd86b3          	add	a3,s11,a3
    80003c14:	0006c683          	lbu	a3,0(a3)
    80003c18:	0147d79b          	srliw	a5,a5,0x14
    80003c1c:	f8d40323          	sb	a3,-122(s0)
    80003c20:	21067663          	bgeu	a2,a6,80003e2c <__printf+0x5e4>
    80003c24:	02079793          	slli	a5,a5,0x20
    80003c28:	0207d793          	srli	a5,a5,0x20
    80003c2c:	00fd8db3          	add	s11,s11,a5
    80003c30:	000dc683          	lbu	a3,0(s11)
    80003c34:	00800793          	li	a5,8
    80003c38:	00700c93          	li	s9,7
    80003c3c:	f8d403a3          	sb	a3,-121(s0)
    80003c40:	00075c63          	bgez	a4,80003c58 <__printf+0x410>
    80003c44:	f9040713          	addi	a4,s0,-112
    80003c48:	00f70733          	add	a4,a4,a5
    80003c4c:	02d00693          	li	a3,45
    80003c50:	fed70823          	sb	a3,-16(a4)
    80003c54:	00078c93          	mv	s9,a5
    80003c58:	f8040793          	addi	a5,s0,-128
    80003c5c:	01978cb3          	add	s9,a5,s9
    80003c60:	f7f40d13          	addi	s10,s0,-129
    80003c64:	000cc503          	lbu	a0,0(s9)
    80003c68:	fffc8c93          	addi	s9,s9,-1
    80003c6c:	00000097          	auipc	ra,0x0
    80003c70:	9f8080e7          	jalr	-1544(ra) # 80003664 <consputc>
    80003c74:	ff9d18e3          	bne	s10,s9,80003c64 <__printf+0x41c>
    80003c78:	0100006f          	j	80003c88 <__printf+0x440>
    80003c7c:	00000097          	auipc	ra,0x0
    80003c80:	9e8080e7          	jalr	-1560(ra) # 80003664 <consputc>
    80003c84:	000c8493          	mv	s1,s9
    80003c88:	00094503          	lbu	a0,0(s2)
    80003c8c:	c60510e3          	bnez	a0,800038ec <__printf+0xa4>
    80003c90:	e40c0ee3          	beqz	s8,80003aec <__printf+0x2a4>
    80003c94:	00003517          	auipc	a0,0x3
    80003c98:	31c50513          	addi	a0,a0,796 # 80006fb0 <pr>
    80003c9c:	00001097          	auipc	ra,0x1
    80003ca0:	94c080e7          	jalr	-1716(ra) # 800045e8 <release>
    80003ca4:	e49ff06f          	j	80003aec <__printf+0x2a4>
    80003ca8:	f7843783          	ld	a5,-136(s0)
    80003cac:	03000513          	li	a0,48
    80003cb0:	01000d13          	li	s10,16
    80003cb4:	00878713          	addi	a4,a5,8
    80003cb8:	0007bc83          	ld	s9,0(a5)
    80003cbc:	f6e43c23          	sd	a4,-136(s0)
    80003cc0:	00000097          	auipc	ra,0x0
    80003cc4:	9a4080e7          	jalr	-1628(ra) # 80003664 <consputc>
    80003cc8:	07800513          	li	a0,120
    80003ccc:	00000097          	auipc	ra,0x0
    80003cd0:	998080e7          	jalr	-1640(ra) # 80003664 <consputc>
    80003cd4:	00001d97          	auipc	s11,0x1
    80003cd8:	65cd8d93          	addi	s11,s11,1628 # 80005330 <digits>
    80003cdc:	03ccd793          	srli	a5,s9,0x3c
    80003ce0:	00fd87b3          	add	a5,s11,a5
    80003ce4:	0007c503          	lbu	a0,0(a5)
    80003ce8:	fffd0d1b          	addiw	s10,s10,-1
    80003cec:	004c9c93          	slli	s9,s9,0x4
    80003cf0:	00000097          	auipc	ra,0x0
    80003cf4:	974080e7          	jalr	-1676(ra) # 80003664 <consputc>
    80003cf8:	fe0d12e3          	bnez	s10,80003cdc <__printf+0x494>
    80003cfc:	f8dff06f          	j	80003c88 <__printf+0x440>
    80003d00:	f7843783          	ld	a5,-136(s0)
    80003d04:	0007bc83          	ld	s9,0(a5)
    80003d08:	00878793          	addi	a5,a5,8
    80003d0c:	f6f43c23          	sd	a5,-136(s0)
    80003d10:	000c9a63          	bnez	s9,80003d24 <__printf+0x4dc>
    80003d14:	1080006f          	j	80003e1c <__printf+0x5d4>
    80003d18:	001c8c93          	addi	s9,s9,1
    80003d1c:	00000097          	auipc	ra,0x0
    80003d20:	948080e7          	jalr	-1720(ra) # 80003664 <consputc>
    80003d24:	000cc503          	lbu	a0,0(s9)
    80003d28:	fe0518e3          	bnez	a0,80003d18 <__printf+0x4d0>
    80003d2c:	f5dff06f          	j	80003c88 <__printf+0x440>
    80003d30:	02500513          	li	a0,37
    80003d34:	00000097          	auipc	ra,0x0
    80003d38:	930080e7          	jalr	-1744(ra) # 80003664 <consputc>
    80003d3c:	000c8513          	mv	a0,s9
    80003d40:	00000097          	auipc	ra,0x0
    80003d44:	924080e7          	jalr	-1756(ra) # 80003664 <consputc>
    80003d48:	f41ff06f          	j	80003c88 <__printf+0x440>
    80003d4c:	02500513          	li	a0,37
    80003d50:	00000097          	auipc	ra,0x0
    80003d54:	914080e7          	jalr	-1772(ra) # 80003664 <consputc>
    80003d58:	f31ff06f          	j	80003c88 <__printf+0x440>
    80003d5c:	00030513          	mv	a0,t1
    80003d60:	00000097          	auipc	ra,0x0
    80003d64:	7bc080e7          	jalr	1980(ra) # 8000451c <acquire>
    80003d68:	b4dff06f          	j	800038b4 <__printf+0x6c>
    80003d6c:	40c0053b          	negw	a0,a2
    80003d70:	00a00713          	li	a4,10
    80003d74:	02e576bb          	remuw	a3,a0,a4
    80003d78:	00001d97          	auipc	s11,0x1
    80003d7c:	5b8d8d93          	addi	s11,s11,1464 # 80005330 <digits>
    80003d80:	ff700593          	li	a1,-9
    80003d84:	02069693          	slli	a3,a3,0x20
    80003d88:	0206d693          	srli	a3,a3,0x20
    80003d8c:	00dd86b3          	add	a3,s11,a3
    80003d90:	0006c683          	lbu	a3,0(a3)
    80003d94:	02e557bb          	divuw	a5,a0,a4
    80003d98:	f8d40023          	sb	a3,-128(s0)
    80003d9c:	10b65e63          	bge	a2,a1,80003eb8 <__printf+0x670>
    80003da0:	06300593          	li	a1,99
    80003da4:	02e7f6bb          	remuw	a3,a5,a4
    80003da8:	02069693          	slli	a3,a3,0x20
    80003dac:	0206d693          	srli	a3,a3,0x20
    80003db0:	00dd86b3          	add	a3,s11,a3
    80003db4:	0006c683          	lbu	a3,0(a3)
    80003db8:	02e7d73b          	divuw	a4,a5,a4
    80003dbc:	00200793          	li	a5,2
    80003dc0:	f8d400a3          	sb	a3,-127(s0)
    80003dc4:	bca5ece3          	bltu	a1,a0,8000399c <__printf+0x154>
    80003dc8:	ce5ff06f          	j	80003aac <__printf+0x264>
    80003dcc:	40e007bb          	negw	a5,a4
    80003dd0:	00001d97          	auipc	s11,0x1
    80003dd4:	560d8d93          	addi	s11,s11,1376 # 80005330 <digits>
    80003dd8:	00f7f693          	andi	a3,a5,15
    80003ddc:	00dd86b3          	add	a3,s11,a3
    80003de0:	0006c583          	lbu	a1,0(a3)
    80003de4:	ff100613          	li	a2,-15
    80003de8:	0047d69b          	srliw	a3,a5,0x4
    80003dec:	f8b40023          	sb	a1,-128(s0)
    80003df0:	0047d59b          	srliw	a1,a5,0x4
    80003df4:	0ac75e63          	bge	a4,a2,80003eb0 <__printf+0x668>
    80003df8:	00f6f693          	andi	a3,a3,15
    80003dfc:	00dd86b3          	add	a3,s11,a3
    80003e00:	0006c603          	lbu	a2,0(a3)
    80003e04:	00f00693          	li	a3,15
    80003e08:	0087d79b          	srliw	a5,a5,0x8
    80003e0c:	f8c400a3          	sb	a2,-127(s0)
    80003e10:	d8b6e4e3          	bltu	a3,a1,80003b98 <__printf+0x350>
    80003e14:	00200793          	li	a5,2
    80003e18:	e2dff06f          	j	80003c44 <__printf+0x3fc>
    80003e1c:	00001c97          	auipc	s9,0x1
    80003e20:	4f4c8c93          	addi	s9,s9,1268 # 80005310 <CONSOLE_STATUS+0x300>
    80003e24:	02800513          	li	a0,40
    80003e28:	ef1ff06f          	j	80003d18 <__printf+0x4d0>
    80003e2c:	00700793          	li	a5,7
    80003e30:	00600c93          	li	s9,6
    80003e34:	e0dff06f          	j	80003c40 <__printf+0x3f8>
    80003e38:	00700793          	li	a5,7
    80003e3c:	00600c93          	li	s9,6
    80003e40:	c69ff06f          	j	80003aa8 <__printf+0x260>
    80003e44:	00300793          	li	a5,3
    80003e48:	00200c93          	li	s9,2
    80003e4c:	c5dff06f          	j	80003aa8 <__printf+0x260>
    80003e50:	00300793          	li	a5,3
    80003e54:	00200c93          	li	s9,2
    80003e58:	de9ff06f          	j	80003c40 <__printf+0x3f8>
    80003e5c:	00400793          	li	a5,4
    80003e60:	00300c93          	li	s9,3
    80003e64:	dddff06f          	j	80003c40 <__printf+0x3f8>
    80003e68:	00400793          	li	a5,4
    80003e6c:	00300c93          	li	s9,3
    80003e70:	c39ff06f          	j	80003aa8 <__printf+0x260>
    80003e74:	00500793          	li	a5,5
    80003e78:	00400c93          	li	s9,4
    80003e7c:	c2dff06f          	j	80003aa8 <__printf+0x260>
    80003e80:	00500793          	li	a5,5
    80003e84:	00400c93          	li	s9,4
    80003e88:	db9ff06f          	j	80003c40 <__printf+0x3f8>
    80003e8c:	00600793          	li	a5,6
    80003e90:	00500c93          	li	s9,5
    80003e94:	dadff06f          	j	80003c40 <__printf+0x3f8>
    80003e98:	00600793          	li	a5,6
    80003e9c:	00500c93          	li	s9,5
    80003ea0:	c09ff06f          	j	80003aa8 <__printf+0x260>
    80003ea4:	00800793          	li	a5,8
    80003ea8:	00700c93          	li	s9,7
    80003eac:	bfdff06f          	j	80003aa8 <__printf+0x260>
    80003eb0:	00100793          	li	a5,1
    80003eb4:	d91ff06f          	j	80003c44 <__printf+0x3fc>
    80003eb8:	00100793          	li	a5,1
    80003ebc:	bf1ff06f          	j	80003aac <__printf+0x264>
    80003ec0:	00900793          	li	a5,9
    80003ec4:	00800c93          	li	s9,8
    80003ec8:	be1ff06f          	j	80003aa8 <__printf+0x260>
    80003ecc:	00001517          	auipc	a0,0x1
    80003ed0:	44c50513          	addi	a0,a0,1100 # 80005318 <CONSOLE_STATUS+0x308>
    80003ed4:	00000097          	auipc	ra,0x0
    80003ed8:	918080e7          	jalr	-1768(ra) # 800037ec <panic>

0000000080003edc <printfinit>:
    80003edc:	fe010113          	addi	sp,sp,-32
    80003ee0:	00813823          	sd	s0,16(sp)
    80003ee4:	00913423          	sd	s1,8(sp)
    80003ee8:	00113c23          	sd	ra,24(sp)
    80003eec:	02010413          	addi	s0,sp,32
    80003ef0:	00003497          	auipc	s1,0x3
    80003ef4:	0c048493          	addi	s1,s1,192 # 80006fb0 <pr>
    80003ef8:	00048513          	mv	a0,s1
    80003efc:	00001597          	auipc	a1,0x1
    80003f00:	42c58593          	addi	a1,a1,1068 # 80005328 <CONSOLE_STATUS+0x318>
    80003f04:	00000097          	auipc	ra,0x0
    80003f08:	5f4080e7          	jalr	1524(ra) # 800044f8 <initlock>
    80003f0c:	01813083          	ld	ra,24(sp)
    80003f10:	01013403          	ld	s0,16(sp)
    80003f14:	0004ac23          	sw	zero,24(s1)
    80003f18:	00813483          	ld	s1,8(sp)
    80003f1c:	02010113          	addi	sp,sp,32
    80003f20:	00008067          	ret

0000000080003f24 <uartinit>:
    80003f24:	ff010113          	addi	sp,sp,-16
    80003f28:	00813423          	sd	s0,8(sp)
    80003f2c:	01010413          	addi	s0,sp,16
    80003f30:	100007b7          	lui	a5,0x10000
    80003f34:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003f38:	f8000713          	li	a4,-128
    80003f3c:	00e781a3          	sb	a4,3(a5)
    80003f40:	00300713          	li	a4,3
    80003f44:	00e78023          	sb	a4,0(a5)
    80003f48:	000780a3          	sb	zero,1(a5)
    80003f4c:	00e781a3          	sb	a4,3(a5)
    80003f50:	00700693          	li	a3,7
    80003f54:	00d78123          	sb	a3,2(a5)
    80003f58:	00e780a3          	sb	a4,1(a5)
    80003f5c:	00813403          	ld	s0,8(sp)
    80003f60:	01010113          	addi	sp,sp,16
    80003f64:	00008067          	ret

0000000080003f68 <uartputc>:
    80003f68:	00002797          	auipc	a5,0x2
    80003f6c:	db07a783          	lw	a5,-592(a5) # 80005d18 <panicked>
    80003f70:	00078463          	beqz	a5,80003f78 <uartputc+0x10>
    80003f74:	0000006f          	j	80003f74 <uartputc+0xc>
    80003f78:	fd010113          	addi	sp,sp,-48
    80003f7c:	02813023          	sd	s0,32(sp)
    80003f80:	00913c23          	sd	s1,24(sp)
    80003f84:	01213823          	sd	s2,16(sp)
    80003f88:	01313423          	sd	s3,8(sp)
    80003f8c:	02113423          	sd	ra,40(sp)
    80003f90:	03010413          	addi	s0,sp,48
    80003f94:	00002917          	auipc	s2,0x2
    80003f98:	d8c90913          	addi	s2,s2,-628 # 80005d20 <uart_tx_r>
    80003f9c:	00093783          	ld	a5,0(s2)
    80003fa0:	00002497          	auipc	s1,0x2
    80003fa4:	d8848493          	addi	s1,s1,-632 # 80005d28 <uart_tx_w>
    80003fa8:	0004b703          	ld	a4,0(s1)
    80003fac:	02078693          	addi	a3,a5,32
    80003fb0:	00050993          	mv	s3,a0
    80003fb4:	02e69c63          	bne	a3,a4,80003fec <uartputc+0x84>
    80003fb8:	00001097          	auipc	ra,0x1
    80003fbc:	834080e7          	jalr	-1996(ra) # 800047ec <push_on>
    80003fc0:	00093783          	ld	a5,0(s2)
    80003fc4:	0004b703          	ld	a4,0(s1)
    80003fc8:	02078793          	addi	a5,a5,32
    80003fcc:	00e79463          	bne	a5,a4,80003fd4 <uartputc+0x6c>
    80003fd0:	0000006f          	j	80003fd0 <uartputc+0x68>
    80003fd4:	00001097          	auipc	ra,0x1
    80003fd8:	88c080e7          	jalr	-1908(ra) # 80004860 <pop_on>
    80003fdc:	00093783          	ld	a5,0(s2)
    80003fe0:	0004b703          	ld	a4,0(s1)
    80003fe4:	02078693          	addi	a3,a5,32
    80003fe8:	fce688e3          	beq	a3,a4,80003fb8 <uartputc+0x50>
    80003fec:	01f77693          	andi	a3,a4,31
    80003ff0:	00003597          	auipc	a1,0x3
    80003ff4:	fe058593          	addi	a1,a1,-32 # 80006fd0 <uart_tx_buf>
    80003ff8:	00d586b3          	add	a3,a1,a3
    80003ffc:	00170713          	addi	a4,a4,1
    80004000:	01368023          	sb	s3,0(a3)
    80004004:	00e4b023          	sd	a4,0(s1)
    80004008:	10000637          	lui	a2,0x10000
    8000400c:	02f71063          	bne	a4,a5,8000402c <uartputc+0xc4>
    80004010:	0340006f          	j	80004044 <uartputc+0xdc>
    80004014:	00074703          	lbu	a4,0(a4)
    80004018:	00f93023          	sd	a5,0(s2)
    8000401c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004020:	00093783          	ld	a5,0(s2)
    80004024:	0004b703          	ld	a4,0(s1)
    80004028:	00f70e63          	beq	a4,a5,80004044 <uartputc+0xdc>
    8000402c:	00564683          	lbu	a3,5(a2)
    80004030:	01f7f713          	andi	a4,a5,31
    80004034:	00e58733          	add	a4,a1,a4
    80004038:	0206f693          	andi	a3,a3,32
    8000403c:	00178793          	addi	a5,a5,1
    80004040:	fc069ae3          	bnez	a3,80004014 <uartputc+0xac>
    80004044:	02813083          	ld	ra,40(sp)
    80004048:	02013403          	ld	s0,32(sp)
    8000404c:	01813483          	ld	s1,24(sp)
    80004050:	01013903          	ld	s2,16(sp)
    80004054:	00813983          	ld	s3,8(sp)
    80004058:	03010113          	addi	sp,sp,48
    8000405c:	00008067          	ret

0000000080004060 <uartputc_sync>:
    80004060:	ff010113          	addi	sp,sp,-16
    80004064:	00813423          	sd	s0,8(sp)
    80004068:	01010413          	addi	s0,sp,16
    8000406c:	00002717          	auipc	a4,0x2
    80004070:	cac72703          	lw	a4,-852(a4) # 80005d18 <panicked>
    80004074:	02071663          	bnez	a4,800040a0 <uartputc_sync+0x40>
    80004078:	00050793          	mv	a5,a0
    8000407c:	100006b7          	lui	a3,0x10000
    80004080:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004084:	02077713          	andi	a4,a4,32
    80004088:	fe070ce3          	beqz	a4,80004080 <uartputc_sync+0x20>
    8000408c:	0ff7f793          	andi	a5,a5,255
    80004090:	00f68023          	sb	a5,0(a3)
    80004094:	00813403          	ld	s0,8(sp)
    80004098:	01010113          	addi	sp,sp,16
    8000409c:	00008067          	ret
    800040a0:	0000006f          	j	800040a0 <uartputc_sync+0x40>

00000000800040a4 <uartstart>:
    800040a4:	ff010113          	addi	sp,sp,-16
    800040a8:	00813423          	sd	s0,8(sp)
    800040ac:	01010413          	addi	s0,sp,16
    800040b0:	00002617          	auipc	a2,0x2
    800040b4:	c7060613          	addi	a2,a2,-912 # 80005d20 <uart_tx_r>
    800040b8:	00002517          	auipc	a0,0x2
    800040bc:	c7050513          	addi	a0,a0,-912 # 80005d28 <uart_tx_w>
    800040c0:	00063783          	ld	a5,0(a2)
    800040c4:	00053703          	ld	a4,0(a0)
    800040c8:	04f70263          	beq	a4,a5,8000410c <uartstart+0x68>
    800040cc:	100005b7          	lui	a1,0x10000
    800040d0:	00003817          	auipc	a6,0x3
    800040d4:	f0080813          	addi	a6,a6,-256 # 80006fd0 <uart_tx_buf>
    800040d8:	01c0006f          	j	800040f4 <uartstart+0x50>
    800040dc:	0006c703          	lbu	a4,0(a3)
    800040e0:	00f63023          	sd	a5,0(a2)
    800040e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800040e8:	00063783          	ld	a5,0(a2)
    800040ec:	00053703          	ld	a4,0(a0)
    800040f0:	00f70e63          	beq	a4,a5,8000410c <uartstart+0x68>
    800040f4:	01f7f713          	andi	a4,a5,31
    800040f8:	00e806b3          	add	a3,a6,a4
    800040fc:	0055c703          	lbu	a4,5(a1)
    80004100:	00178793          	addi	a5,a5,1
    80004104:	02077713          	andi	a4,a4,32
    80004108:	fc071ae3          	bnez	a4,800040dc <uartstart+0x38>
    8000410c:	00813403          	ld	s0,8(sp)
    80004110:	01010113          	addi	sp,sp,16
    80004114:	00008067          	ret

0000000080004118 <uartgetc>:
    80004118:	ff010113          	addi	sp,sp,-16
    8000411c:	00813423          	sd	s0,8(sp)
    80004120:	01010413          	addi	s0,sp,16
    80004124:	10000737          	lui	a4,0x10000
    80004128:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000412c:	0017f793          	andi	a5,a5,1
    80004130:	00078c63          	beqz	a5,80004148 <uartgetc+0x30>
    80004134:	00074503          	lbu	a0,0(a4)
    80004138:	0ff57513          	andi	a0,a0,255
    8000413c:	00813403          	ld	s0,8(sp)
    80004140:	01010113          	addi	sp,sp,16
    80004144:	00008067          	ret
    80004148:	fff00513          	li	a0,-1
    8000414c:	ff1ff06f          	j	8000413c <uartgetc+0x24>

0000000080004150 <uartintr>:
    80004150:	100007b7          	lui	a5,0x10000
    80004154:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004158:	0017f793          	andi	a5,a5,1
    8000415c:	0a078463          	beqz	a5,80004204 <uartintr+0xb4>
    80004160:	fe010113          	addi	sp,sp,-32
    80004164:	00813823          	sd	s0,16(sp)
    80004168:	00913423          	sd	s1,8(sp)
    8000416c:	00113c23          	sd	ra,24(sp)
    80004170:	02010413          	addi	s0,sp,32
    80004174:	100004b7          	lui	s1,0x10000
    80004178:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000417c:	0ff57513          	andi	a0,a0,255
    80004180:	fffff097          	auipc	ra,0xfffff
    80004184:	534080e7          	jalr	1332(ra) # 800036b4 <consoleintr>
    80004188:	0054c783          	lbu	a5,5(s1)
    8000418c:	0017f793          	andi	a5,a5,1
    80004190:	fe0794e3          	bnez	a5,80004178 <uartintr+0x28>
    80004194:	00002617          	auipc	a2,0x2
    80004198:	b8c60613          	addi	a2,a2,-1140 # 80005d20 <uart_tx_r>
    8000419c:	00002517          	auipc	a0,0x2
    800041a0:	b8c50513          	addi	a0,a0,-1140 # 80005d28 <uart_tx_w>
    800041a4:	00063783          	ld	a5,0(a2)
    800041a8:	00053703          	ld	a4,0(a0)
    800041ac:	04f70263          	beq	a4,a5,800041f0 <uartintr+0xa0>
    800041b0:	100005b7          	lui	a1,0x10000
    800041b4:	00003817          	auipc	a6,0x3
    800041b8:	e1c80813          	addi	a6,a6,-484 # 80006fd0 <uart_tx_buf>
    800041bc:	01c0006f          	j	800041d8 <uartintr+0x88>
    800041c0:	0006c703          	lbu	a4,0(a3)
    800041c4:	00f63023          	sd	a5,0(a2)
    800041c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800041cc:	00063783          	ld	a5,0(a2)
    800041d0:	00053703          	ld	a4,0(a0)
    800041d4:	00f70e63          	beq	a4,a5,800041f0 <uartintr+0xa0>
    800041d8:	01f7f713          	andi	a4,a5,31
    800041dc:	00e806b3          	add	a3,a6,a4
    800041e0:	0055c703          	lbu	a4,5(a1)
    800041e4:	00178793          	addi	a5,a5,1
    800041e8:	02077713          	andi	a4,a4,32
    800041ec:	fc071ae3          	bnez	a4,800041c0 <uartintr+0x70>
    800041f0:	01813083          	ld	ra,24(sp)
    800041f4:	01013403          	ld	s0,16(sp)
    800041f8:	00813483          	ld	s1,8(sp)
    800041fc:	02010113          	addi	sp,sp,32
    80004200:	00008067          	ret
    80004204:	00002617          	auipc	a2,0x2
    80004208:	b1c60613          	addi	a2,a2,-1252 # 80005d20 <uart_tx_r>
    8000420c:	00002517          	auipc	a0,0x2
    80004210:	b1c50513          	addi	a0,a0,-1252 # 80005d28 <uart_tx_w>
    80004214:	00063783          	ld	a5,0(a2)
    80004218:	00053703          	ld	a4,0(a0)
    8000421c:	04f70263          	beq	a4,a5,80004260 <uartintr+0x110>
    80004220:	100005b7          	lui	a1,0x10000
    80004224:	00003817          	auipc	a6,0x3
    80004228:	dac80813          	addi	a6,a6,-596 # 80006fd0 <uart_tx_buf>
    8000422c:	01c0006f          	j	80004248 <uartintr+0xf8>
    80004230:	0006c703          	lbu	a4,0(a3)
    80004234:	00f63023          	sd	a5,0(a2)
    80004238:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000423c:	00063783          	ld	a5,0(a2)
    80004240:	00053703          	ld	a4,0(a0)
    80004244:	02f70063          	beq	a4,a5,80004264 <uartintr+0x114>
    80004248:	01f7f713          	andi	a4,a5,31
    8000424c:	00e806b3          	add	a3,a6,a4
    80004250:	0055c703          	lbu	a4,5(a1)
    80004254:	00178793          	addi	a5,a5,1
    80004258:	02077713          	andi	a4,a4,32
    8000425c:	fc071ae3          	bnez	a4,80004230 <uartintr+0xe0>
    80004260:	00008067          	ret
    80004264:	00008067          	ret

0000000080004268 <kinit>:
    80004268:	fc010113          	addi	sp,sp,-64
    8000426c:	02913423          	sd	s1,40(sp)
    80004270:	fffff7b7          	lui	a5,0xfffff
    80004274:	00004497          	auipc	s1,0x4
    80004278:	d7b48493          	addi	s1,s1,-645 # 80007fef <end+0xfff>
    8000427c:	02813823          	sd	s0,48(sp)
    80004280:	01313c23          	sd	s3,24(sp)
    80004284:	00f4f4b3          	and	s1,s1,a5
    80004288:	02113c23          	sd	ra,56(sp)
    8000428c:	03213023          	sd	s2,32(sp)
    80004290:	01413823          	sd	s4,16(sp)
    80004294:	01513423          	sd	s5,8(sp)
    80004298:	04010413          	addi	s0,sp,64
    8000429c:	000017b7          	lui	a5,0x1
    800042a0:	01100993          	li	s3,17
    800042a4:	00f487b3          	add	a5,s1,a5
    800042a8:	01b99993          	slli	s3,s3,0x1b
    800042ac:	06f9e063          	bltu	s3,a5,8000430c <kinit+0xa4>
    800042b0:	00003a97          	auipc	s5,0x3
    800042b4:	d40a8a93          	addi	s5,s5,-704 # 80006ff0 <end>
    800042b8:	0754ec63          	bltu	s1,s5,80004330 <kinit+0xc8>
    800042bc:	0734fa63          	bgeu	s1,s3,80004330 <kinit+0xc8>
    800042c0:	00088a37          	lui	s4,0x88
    800042c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800042c8:	00002917          	auipc	s2,0x2
    800042cc:	a6890913          	addi	s2,s2,-1432 # 80005d30 <kmem>
    800042d0:	00ca1a13          	slli	s4,s4,0xc
    800042d4:	0140006f          	j	800042e8 <kinit+0x80>
    800042d8:	000017b7          	lui	a5,0x1
    800042dc:	00f484b3          	add	s1,s1,a5
    800042e0:	0554e863          	bltu	s1,s5,80004330 <kinit+0xc8>
    800042e4:	0534f663          	bgeu	s1,s3,80004330 <kinit+0xc8>
    800042e8:	00001637          	lui	a2,0x1
    800042ec:	00100593          	li	a1,1
    800042f0:	00048513          	mv	a0,s1
    800042f4:	00000097          	auipc	ra,0x0
    800042f8:	5e4080e7          	jalr	1508(ra) # 800048d8 <__memset>
    800042fc:	00093783          	ld	a5,0(s2)
    80004300:	00f4b023          	sd	a5,0(s1)
    80004304:	00993023          	sd	s1,0(s2)
    80004308:	fd4498e3          	bne	s1,s4,800042d8 <kinit+0x70>
    8000430c:	03813083          	ld	ra,56(sp)
    80004310:	03013403          	ld	s0,48(sp)
    80004314:	02813483          	ld	s1,40(sp)
    80004318:	02013903          	ld	s2,32(sp)
    8000431c:	01813983          	ld	s3,24(sp)
    80004320:	01013a03          	ld	s4,16(sp)
    80004324:	00813a83          	ld	s5,8(sp)
    80004328:	04010113          	addi	sp,sp,64
    8000432c:	00008067          	ret
    80004330:	00001517          	auipc	a0,0x1
    80004334:	01850513          	addi	a0,a0,24 # 80005348 <digits+0x18>
    80004338:	fffff097          	auipc	ra,0xfffff
    8000433c:	4b4080e7          	jalr	1204(ra) # 800037ec <panic>

0000000080004340 <freerange>:
    80004340:	fc010113          	addi	sp,sp,-64
    80004344:	000017b7          	lui	a5,0x1
    80004348:	02913423          	sd	s1,40(sp)
    8000434c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004350:	009504b3          	add	s1,a0,s1
    80004354:	fffff537          	lui	a0,0xfffff
    80004358:	02813823          	sd	s0,48(sp)
    8000435c:	02113c23          	sd	ra,56(sp)
    80004360:	03213023          	sd	s2,32(sp)
    80004364:	01313c23          	sd	s3,24(sp)
    80004368:	01413823          	sd	s4,16(sp)
    8000436c:	01513423          	sd	s5,8(sp)
    80004370:	01613023          	sd	s6,0(sp)
    80004374:	04010413          	addi	s0,sp,64
    80004378:	00a4f4b3          	and	s1,s1,a0
    8000437c:	00f487b3          	add	a5,s1,a5
    80004380:	06f5e463          	bltu	a1,a5,800043e8 <freerange+0xa8>
    80004384:	00003a97          	auipc	s5,0x3
    80004388:	c6ca8a93          	addi	s5,s5,-916 # 80006ff0 <end>
    8000438c:	0954e263          	bltu	s1,s5,80004410 <freerange+0xd0>
    80004390:	01100993          	li	s3,17
    80004394:	01b99993          	slli	s3,s3,0x1b
    80004398:	0734fc63          	bgeu	s1,s3,80004410 <freerange+0xd0>
    8000439c:	00058a13          	mv	s4,a1
    800043a0:	00002917          	auipc	s2,0x2
    800043a4:	99090913          	addi	s2,s2,-1648 # 80005d30 <kmem>
    800043a8:	00002b37          	lui	s6,0x2
    800043ac:	0140006f          	j	800043c0 <freerange+0x80>
    800043b0:	000017b7          	lui	a5,0x1
    800043b4:	00f484b3          	add	s1,s1,a5
    800043b8:	0554ec63          	bltu	s1,s5,80004410 <freerange+0xd0>
    800043bc:	0534fa63          	bgeu	s1,s3,80004410 <freerange+0xd0>
    800043c0:	00001637          	lui	a2,0x1
    800043c4:	00100593          	li	a1,1
    800043c8:	00048513          	mv	a0,s1
    800043cc:	00000097          	auipc	ra,0x0
    800043d0:	50c080e7          	jalr	1292(ra) # 800048d8 <__memset>
    800043d4:	00093703          	ld	a4,0(s2)
    800043d8:	016487b3          	add	a5,s1,s6
    800043dc:	00e4b023          	sd	a4,0(s1)
    800043e0:	00993023          	sd	s1,0(s2)
    800043e4:	fcfa76e3          	bgeu	s4,a5,800043b0 <freerange+0x70>
    800043e8:	03813083          	ld	ra,56(sp)
    800043ec:	03013403          	ld	s0,48(sp)
    800043f0:	02813483          	ld	s1,40(sp)
    800043f4:	02013903          	ld	s2,32(sp)
    800043f8:	01813983          	ld	s3,24(sp)
    800043fc:	01013a03          	ld	s4,16(sp)
    80004400:	00813a83          	ld	s5,8(sp)
    80004404:	00013b03          	ld	s6,0(sp)
    80004408:	04010113          	addi	sp,sp,64
    8000440c:	00008067          	ret
    80004410:	00001517          	auipc	a0,0x1
    80004414:	f3850513          	addi	a0,a0,-200 # 80005348 <digits+0x18>
    80004418:	fffff097          	auipc	ra,0xfffff
    8000441c:	3d4080e7          	jalr	980(ra) # 800037ec <panic>

0000000080004420 <kfree>:
    80004420:	fe010113          	addi	sp,sp,-32
    80004424:	00813823          	sd	s0,16(sp)
    80004428:	00113c23          	sd	ra,24(sp)
    8000442c:	00913423          	sd	s1,8(sp)
    80004430:	02010413          	addi	s0,sp,32
    80004434:	03451793          	slli	a5,a0,0x34
    80004438:	04079c63          	bnez	a5,80004490 <kfree+0x70>
    8000443c:	00003797          	auipc	a5,0x3
    80004440:	bb478793          	addi	a5,a5,-1100 # 80006ff0 <end>
    80004444:	00050493          	mv	s1,a0
    80004448:	04f56463          	bltu	a0,a5,80004490 <kfree+0x70>
    8000444c:	01100793          	li	a5,17
    80004450:	01b79793          	slli	a5,a5,0x1b
    80004454:	02f57e63          	bgeu	a0,a5,80004490 <kfree+0x70>
    80004458:	00001637          	lui	a2,0x1
    8000445c:	00100593          	li	a1,1
    80004460:	00000097          	auipc	ra,0x0
    80004464:	478080e7          	jalr	1144(ra) # 800048d8 <__memset>
    80004468:	00002797          	auipc	a5,0x2
    8000446c:	8c878793          	addi	a5,a5,-1848 # 80005d30 <kmem>
    80004470:	0007b703          	ld	a4,0(a5)
    80004474:	01813083          	ld	ra,24(sp)
    80004478:	01013403          	ld	s0,16(sp)
    8000447c:	00e4b023          	sd	a4,0(s1)
    80004480:	0097b023          	sd	s1,0(a5)
    80004484:	00813483          	ld	s1,8(sp)
    80004488:	02010113          	addi	sp,sp,32
    8000448c:	00008067          	ret
    80004490:	00001517          	auipc	a0,0x1
    80004494:	eb850513          	addi	a0,a0,-328 # 80005348 <digits+0x18>
    80004498:	fffff097          	auipc	ra,0xfffff
    8000449c:	354080e7          	jalr	852(ra) # 800037ec <panic>

00000000800044a0 <kalloc>:
    800044a0:	fe010113          	addi	sp,sp,-32
    800044a4:	00813823          	sd	s0,16(sp)
    800044a8:	00913423          	sd	s1,8(sp)
    800044ac:	00113c23          	sd	ra,24(sp)
    800044b0:	02010413          	addi	s0,sp,32
    800044b4:	00002797          	auipc	a5,0x2
    800044b8:	87c78793          	addi	a5,a5,-1924 # 80005d30 <kmem>
    800044bc:	0007b483          	ld	s1,0(a5)
    800044c0:	02048063          	beqz	s1,800044e0 <kalloc+0x40>
    800044c4:	0004b703          	ld	a4,0(s1)
    800044c8:	00001637          	lui	a2,0x1
    800044cc:	00500593          	li	a1,5
    800044d0:	00048513          	mv	a0,s1
    800044d4:	00e7b023          	sd	a4,0(a5)
    800044d8:	00000097          	auipc	ra,0x0
    800044dc:	400080e7          	jalr	1024(ra) # 800048d8 <__memset>
    800044e0:	01813083          	ld	ra,24(sp)
    800044e4:	01013403          	ld	s0,16(sp)
    800044e8:	00048513          	mv	a0,s1
    800044ec:	00813483          	ld	s1,8(sp)
    800044f0:	02010113          	addi	sp,sp,32
    800044f4:	00008067          	ret

00000000800044f8 <initlock>:
    800044f8:	ff010113          	addi	sp,sp,-16
    800044fc:	00813423          	sd	s0,8(sp)
    80004500:	01010413          	addi	s0,sp,16
    80004504:	00813403          	ld	s0,8(sp)
    80004508:	00b53423          	sd	a1,8(a0)
    8000450c:	00052023          	sw	zero,0(a0)
    80004510:	00053823          	sd	zero,16(a0)
    80004514:	01010113          	addi	sp,sp,16
    80004518:	00008067          	ret

000000008000451c <acquire>:
    8000451c:	fe010113          	addi	sp,sp,-32
    80004520:	00813823          	sd	s0,16(sp)
    80004524:	00913423          	sd	s1,8(sp)
    80004528:	00113c23          	sd	ra,24(sp)
    8000452c:	01213023          	sd	s2,0(sp)
    80004530:	02010413          	addi	s0,sp,32
    80004534:	00050493          	mv	s1,a0
    80004538:	10002973          	csrr	s2,sstatus
    8000453c:	100027f3          	csrr	a5,sstatus
    80004540:	ffd7f793          	andi	a5,a5,-3
    80004544:	10079073          	csrw	sstatus,a5
    80004548:	fffff097          	auipc	ra,0xfffff
    8000454c:	8e4080e7          	jalr	-1820(ra) # 80002e2c <mycpu>
    80004550:	07852783          	lw	a5,120(a0)
    80004554:	06078e63          	beqz	a5,800045d0 <acquire+0xb4>
    80004558:	fffff097          	auipc	ra,0xfffff
    8000455c:	8d4080e7          	jalr	-1836(ra) # 80002e2c <mycpu>
    80004560:	07852783          	lw	a5,120(a0)
    80004564:	0004a703          	lw	a4,0(s1)
    80004568:	0017879b          	addiw	a5,a5,1
    8000456c:	06f52c23          	sw	a5,120(a0)
    80004570:	04071063          	bnez	a4,800045b0 <acquire+0x94>
    80004574:	00100713          	li	a4,1
    80004578:	00070793          	mv	a5,a4
    8000457c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004580:	0007879b          	sext.w	a5,a5
    80004584:	fe079ae3          	bnez	a5,80004578 <acquire+0x5c>
    80004588:	0ff0000f          	fence
    8000458c:	fffff097          	auipc	ra,0xfffff
    80004590:	8a0080e7          	jalr	-1888(ra) # 80002e2c <mycpu>
    80004594:	01813083          	ld	ra,24(sp)
    80004598:	01013403          	ld	s0,16(sp)
    8000459c:	00a4b823          	sd	a0,16(s1)
    800045a0:	00013903          	ld	s2,0(sp)
    800045a4:	00813483          	ld	s1,8(sp)
    800045a8:	02010113          	addi	sp,sp,32
    800045ac:	00008067          	ret
    800045b0:	0104b903          	ld	s2,16(s1)
    800045b4:	fffff097          	auipc	ra,0xfffff
    800045b8:	878080e7          	jalr	-1928(ra) # 80002e2c <mycpu>
    800045bc:	faa91ce3          	bne	s2,a0,80004574 <acquire+0x58>
    800045c0:	00001517          	auipc	a0,0x1
    800045c4:	d9050513          	addi	a0,a0,-624 # 80005350 <digits+0x20>
    800045c8:	fffff097          	auipc	ra,0xfffff
    800045cc:	224080e7          	jalr	548(ra) # 800037ec <panic>
    800045d0:	00195913          	srli	s2,s2,0x1
    800045d4:	fffff097          	auipc	ra,0xfffff
    800045d8:	858080e7          	jalr	-1960(ra) # 80002e2c <mycpu>
    800045dc:	00197913          	andi	s2,s2,1
    800045e0:	07252e23          	sw	s2,124(a0)
    800045e4:	f75ff06f          	j	80004558 <acquire+0x3c>

00000000800045e8 <release>:
    800045e8:	fe010113          	addi	sp,sp,-32
    800045ec:	00813823          	sd	s0,16(sp)
    800045f0:	00113c23          	sd	ra,24(sp)
    800045f4:	00913423          	sd	s1,8(sp)
    800045f8:	01213023          	sd	s2,0(sp)
    800045fc:	02010413          	addi	s0,sp,32
    80004600:	00052783          	lw	a5,0(a0)
    80004604:	00079a63          	bnez	a5,80004618 <release+0x30>
    80004608:	00001517          	auipc	a0,0x1
    8000460c:	d5050513          	addi	a0,a0,-688 # 80005358 <digits+0x28>
    80004610:	fffff097          	auipc	ra,0xfffff
    80004614:	1dc080e7          	jalr	476(ra) # 800037ec <panic>
    80004618:	01053903          	ld	s2,16(a0)
    8000461c:	00050493          	mv	s1,a0
    80004620:	fffff097          	auipc	ra,0xfffff
    80004624:	80c080e7          	jalr	-2036(ra) # 80002e2c <mycpu>
    80004628:	fea910e3          	bne	s2,a0,80004608 <release+0x20>
    8000462c:	0004b823          	sd	zero,16(s1)
    80004630:	0ff0000f          	fence
    80004634:	0f50000f          	fence	iorw,ow
    80004638:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000463c:	ffffe097          	auipc	ra,0xffffe
    80004640:	7f0080e7          	jalr	2032(ra) # 80002e2c <mycpu>
    80004644:	100027f3          	csrr	a5,sstatus
    80004648:	0027f793          	andi	a5,a5,2
    8000464c:	04079a63          	bnez	a5,800046a0 <release+0xb8>
    80004650:	07852783          	lw	a5,120(a0)
    80004654:	02f05e63          	blez	a5,80004690 <release+0xa8>
    80004658:	fff7871b          	addiw	a4,a5,-1
    8000465c:	06e52c23          	sw	a4,120(a0)
    80004660:	00071c63          	bnez	a4,80004678 <release+0x90>
    80004664:	07c52783          	lw	a5,124(a0)
    80004668:	00078863          	beqz	a5,80004678 <release+0x90>
    8000466c:	100027f3          	csrr	a5,sstatus
    80004670:	0027e793          	ori	a5,a5,2
    80004674:	10079073          	csrw	sstatus,a5
    80004678:	01813083          	ld	ra,24(sp)
    8000467c:	01013403          	ld	s0,16(sp)
    80004680:	00813483          	ld	s1,8(sp)
    80004684:	00013903          	ld	s2,0(sp)
    80004688:	02010113          	addi	sp,sp,32
    8000468c:	00008067          	ret
    80004690:	00001517          	auipc	a0,0x1
    80004694:	ce850513          	addi	a0,a0,-792 # 80005378 <digits+0x48>
    80004698:	fffff097          	auipc	ra,0xfffff
    8000469c:	154080e7          	jalr	340(ra) # 800037ec <panic>
    800046a0:	00001517          	auipc	a0,0x1
    800046a4:	cc050513          	addi	a0,a0,-832 # 80005360 <digits+0x30>
    800046a8:	fffff097          	auipc	ra,0xfffff
    800046ac:	144080e7          	jalr	324(ra) # 800037ec <panic>

00000000800046b0 <holding>:
    800046b0:	00052783          	lw	a5,0(a0)
    800046b4:	00079663          	bnez	a5,800046c0 <holding+0x10>
    800046b8:	00000513          	li	a0,0
    800046bc:	00008067          	ret
    800046c0:	fe010113          	addi	sp,sp,-32
    800046c4:	00813823          	sd	s0,16(sp)
    800046c8:	00913423          	sd	s1,8(sp)
    800046cc:	00113c23          	sd	ra,24(sp)
    800046d0:	02010413          	addi	s0,sp,32
    800046d4:	01053483          	ld	s1,16(a0)
    800046d8:	ffffe097          	auipc	ra,0xffffe
    800046dc:	754080e7          	jalr	1876(ra) # 80002e2c <mycpu>
    800046e0:	01813083          	ld	ra,24(sp)
    800046e4:	01013403          	ld	s0,16(sp)
    800046e8:	40a48533          	sub	a0,s1,a0
    800046ec:	00153513          	seqz	a0,a0
    800046f0:	00813483          	ld	s1,8(sp)
    800046f4:	02010113          	addi	sp,sp,32
    800046f8:	00008067          	ret

00000000800046fc <push_off>:
    800046fc:	fe010113          	addi	sp,sp,-32
    80004700:	00813823          	sd	s0,16(sp)
    80004704:	00113c23          	sd	ra,24(sp)
    80004708:	00913423          	sd	s1,8(sp)
    8000470c:	02010413          	addi	s0,sp,32
    80004710:	100024f3          	csrr	s1,sstatus
    80004714:	100027f3          	csrr	a5,sstatus
    80004718:	ffd7f793          	andi	a5,a5,-3
    8000471c:	10079073          	csrw	sstatus,a5
    80004720:	ffffe097          	auipc	ra,0xffffe
    80004724:	70c080e7          	jalr	1804(ra) # 80002e2c <mycpu>
    80004728:	07852783          	lw	a5,120(a0)
    8000472c:	02078663          	beqz	a5,80004758 <push_off+0x5c>
    80004730:	ffffe097          	auipc	ra,0xffffe
    80004734:	6fc080e7          	jalr	1788(ra) # 80002e2c <mycpu>
    80004738:	07852783          	lw	a5,120(a0)
    8000473c:	01813083          	ld	ra,24(sp)
    80004740:	01013403          	ld	s0,16(sp)
    80004744:	0017879b          	addiw	a5,a5,1
    80004748:	06f52c23          	sw	a5,120(a0)
    8000474c:	00813483          	ld	s1,8(sp)
    80004750:	02010113          	addi	sp,sp,32
    80004754:	00008067          	ret
    80004758:	0014d493          	srli	s1,s1,0x1
    8000475c:	ffffe097          	auipc	ra,0xffffe
    80004760:	6d0080e7          	jalr	1744(ra) # 80002e2c <mycpu>
    80004764:	0014f493          	andi	s1,s1,1
    80004768:	06952e23          	sw	s1,124(a0)
    8000476c:	fc5ff06f          	j	80004730 <push_off+0x34>

0000000080004770 <pop_off>:
    80004770:	ff010113          	addi	sp,sp,-16
    80004774:	00813023          	sd	s0,0(sp)
    80004778:	00113423          	sd	ra,8(sp)
    8000477c:	01010413          	addi	s0,sp,16
    80004780:	ffffe097          	auipc	ra,0xffffe
    80004784:	6ac080e7          	jalr	1708(ra) # 80002e2c <mycpu>
    80004788:	100027f3          	csrr	a5,sstatus
    8000478c:	0027f793          	andi	a5,a5,2
    80004790:	04079663          	bnez	a5,800047dc <pop_off+0x6c>
    80004794:	07852783          	lw	a5,120(a0)
    80004798:	02f05a63          	blez	a5,800047cc <pop_off+0x5c>
    8000479c:	fff7871b          	addiw	a4,a5,-1
    800047a0:	06e52c23          	sw	a4,120(a0)
    800047a4:	00071c63          	bnez	a4,800047bc <pop_off+0x4c>
    800047a8:	07c52783          	lw	a5,124(a0)
    800047ac:	00078863          	beqz	a5,800047bc <pop_off+0x4c>
    800047b0:	100027f3          	csrr	a5,sstatus
    800047b4:	0027e793          	ori	a5,a5,2
    800047b8:	10079073          	csrw	sstatus,a5
    800047bc:	00813083          	ld	ra,8(sp)
    800047c0:	00013403          	ld	s0,0(sp)
    800047c4:	01010113          	addi	sp,sp,16
    800047c8:	00008067          	ret
    800047cc:	00001517          	auipc	a0,0x1
    800047d0:	bac50513          	addi	a0,a0,-1108 # 80005378 <digits+0x48>
    800047d4:	fffff097          	auipc	ra,0xfffff
    800047d8:	018080e7          	jalr	24(ra) # 800037ec <panic>
    800047dc:	00001517          	auipc	a0,0x1
    800047e0:	b8450513          	addi	a0,a0,-1148 # 80005360 <digits+0x30>
    800047e4:	fffff097          	auipc	ra,0xfffff
    800047e8:	008080e7          	jalr	8(ra) # 800037ec <panic>

00000000800047ec <push_on>:
    800047ec:	fe010113          	addi	sp,sp,-32
    800047f0:	00813823          	sd	s0,16(sp)
    800047f4:	00113c23          	sd	ra,24(sp)
    800047f8:	00913423          	sd	s1,8(sp)
    800047fc:	02010413          	addi	s0,sp,32
    80004800:	100024f3          	csrr	s1,sstatus
    80004804:	100027f3          	csrr	a5,sstatus
    80004808:	0027e793          	ori	a5,a5,2
    8000480c:	10079073          	csrw	sstatus,a5
    80004810:	ffffe097          	auipc	ra,0xffffe
    80004814:	61c080e7          	jalr	1564(ra) # 80002e2c <mycpu>
    80004818:	07852783          	lw	a5,120(a0)
    8000481c:	02078663          	beqz	a5,80004848 <push_on+0x5c>
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	60c080e7          	jalr	1548(ra) # 80002e2c <mycpu>
    80004828:	07852783          	lw	a5,120(a0)
    8000482c:	01813083          	ld	ra,24(sp)
    80004830:	01013403          	ld	s0,16(sp)
    80004834:	0017879b          	addiw	a5,a5,1
    80004838:	06f52c23          	sw	a5,120(a0)
    8000483c:	00813483          	ld	s1,8(sp)
    80004840:	02010113          	addi	sp,sp,32
    80004844:	00008067          	ret
    80004848:	0014d493          	srli	s1,s1,0x1
    8000484c:	ffffe097          	auipc	ra,0xffffe
    80004850:	5e0080e7          	jalr	1504(ra) # 80002e2c <mycpu>
    80004854:	0014f493          	andi	s1,s1,1
    80004858:	06952e23          	sw	s1,124(a0)
    8000485c:	fc5ff06f          	j	80004820 <push_on+0x34>

0000000080004860 <pop_on>:
    80004860:	ff010113          	addi	sp,sp,-16
    80004864:	00813023          	sd	s0,0(sp)
    80004868:	00113423          	sd	ra,8(sp)
    8000486c:	01010413          	addi	s0,sp,16
    80004870:	ffffe097          	auipc	ra,0xffffe
    80004874:	5bc080e7          	jalr	1468(ra) # 80002e2c <mycpu>
    80004878:	100027f3          	csrr	a5,sstatus
    8000487c:	0027f793          	andi	a5,a5,2
    80004880:	04078463          	beqz	a5,800048c8 <pop_on+0x68>
    80004884:	07852783          	lw	a5,120(a0)
    80004888:	02f05863          	blez	a5,800048b8 <pop_on+0x58>
    8000488c:	fff7879b          	addiw	a5,a5,-1
    80004890:	06f52c23          	sw	a5,120(a0)
    80004894:	07853783          	ld	a5,120(a0)
    80004898:	00079863          	bnez	a5,800048a8 <pop_on+0x48>
    8000489c:	100027f3          	csrr	a5,sstatus
    800048a0:	ffd7f793          	andi	a5,a5,-3
    800048a4:	10079073          	csrw	sstatus,a5
    800048a8:	00813083          	ld	ra,8(sp)
    800048ac:	00013403          	ld	s0,0(sp)
    800048b0:	01010113          	addi	sp,sp,16
    800048b4:	00008067          	ret
    800048b8:	00001517          	auipc	a0,0x1
    800048bc:	ae850513          	addi	a0,a0,-1304 # 800053a0 <digits+0x70>
    800048c0:	fffff097          	auipc	ra,0xfffff
    800048c4:	f2c080e7          	jalr	-212(ra) # 800037ec <panic>
    800048c8:	00001517          	auipc	a0,0x1
    800048cc:	ab850513          	addi	a0,a0,-1352 # 80005380 <digits+0x50>
    800048d0:	fffff097          	auipc	ra,0xfffff
    800048d4:	f1c080e7          	jalr	-228(ra) # 800037ec <panic>

00000000800048d8 <__memset>:
    800048d8:	ff010113          	addi	sp,sp,-16
    800048dc:	00813423          	sd	s0,8(sp)
    800048e0:	01010413          	addi	s0,sp,16
    800048e4:	1a060e63          	beqz	a2,80004aa0 <__memset+0x1c8>
    800048e8:	40a007b3          	neg	a5,a0
    800048ec:	0077f793          	andi	a5,a5,7
    800048f0:	00778693          	addi	a3,a5,7
    800048f4:	00b00813          	li	a6,11
    800048f8:	0ff5f593          	andi	a1,a1,255
    800048fc:	fff6071b          	addiw	a4,a2,-1
    80004900:	1b06e663          	bltu	a3,a6,80004aac <__memset+0x1d4>
    80004904:	1cd76463          	bltu	a4,a3,80004acc <__memset+0x1f4>
    80004908:	1a078e63          	beqz	a5,80004ac4 <__memset+0x1ec>
    8000490c:	00b50023          	sb	a1,0(a0)
    80004910:	00100713          	li	a4,1
    80004914:	1ae78463          	beq	a5,a4,80004abc <__memset+0x1e4>
    80004918:	00b500a3          	sb	a1,1(a0)
    8000491c:	00200713          	li	a4,2
    80004920:	1ae78a63          	beq	a5,a4,80004ad4 <__memset+0x1fc>
    80004924:	00b50123          	sb	a1,2(a0)
    80004928:	00300713          	li	a4,3
    8000492c:	18e78463          	beq	a5,a4,80004ab4 <__memset+0x1dc>
    80004930:	00b501a3          	sb	a1,3(a0)
    80004934:	00400713          	li	a4,4
    80004938:	1ae78263          	beq	a5,a4,80004adc <__memset+0x204>
    8000493c:	00b50223          	sb	a1,4(a0)
    80004940:	00500713          	li	a4,5
    80004944:	1ae78063          	beq	a5,a4,80004ae4 <__memset+0x20c>
    80004948:	00b502a3          	sb	a1,5(a0)
    8000494c:	00700713          	li	a4,7
    80004950:	18e79e63          	bne	a5,a4,80004aec <__memset+0x214>
    80004954:	00b50323          	sb	a1,6(a0)
    80004958:	00700e93          	li	t4,7
    8000495c:	00859713          	slli	a4,a1,0x8
    80004960:	00e5e733          	or	a4,a1,a4
    80004964:	01059e13          	slli	t3,a1,0x10
    80004968:	01c76e33          	or	t3,a4,t3
    8000496c:	01859313          	slli	t1,a1,0x18
    80004970:	006e6333          	or	t1,t3,t1
    80004974:	02059893          	slli	a7,a1,0x20
    80004978:	40f60e3b          	subw	t3,a2,a5
    8000497c:	011368b3          	or	a7,t1,a7
    80004980:	02859813          	slli	a6,a1,0x28
    80004984:	0108e833          	or	a6,a7,a6
    80004988:	03059693          	slli	a3,a1,0x30
    8000498c:	003e589b          	srliw	a7,t3,0x3
    80004990:	00d866b3          	or	a3,a6,a3
    80004994:	03859713          	slli	a4,a1,0x38
    80004998:	00389813          	slli	a6,a7,0x3
    8000499c:	00f507b3          	add	a5,a0,a5
    800049a0:	00e6e733          	or	a4,a3,a4
    800049a4:	000e089b          	sext.w	a7,t3
    800049a8:	00f806b3          	add	a3,a6,a5
    800049ac:	00e7b023          	sd	a4,0(a5)
    800049b0:	00878793          	addi	a5,a5,8
    800049b4:	fed79ce3          	bne	a5,a3,800049ac <__memset+0xd4>
    800049b8:	ff8e7793          	andi	a5,t3,-8
    800049bc:	0007871b          	sext.w	a4,a5
    800049c0:	01d787bb          	addw	a5,a5,t4
    800049c4:	0ce88e63          	beq	a7,a4,80004aa0 <__memset+0x1c8>
    800049c8:	00f50733          	add	a4,a0,a5
    800049cc:	00b70023          	sb	a1,0(a4)
    800049d0:	0017871b          	addiw	a4,a5,1
    800049d4:	0cc77663          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    800049d8:	00e50733          	add	a4,a0,a4
    800049dc:	00b70023          	sb	a1,0(a4)
    800049e0:	0027871b          	addiw	a4,a5,2
    800049e4:	0ac77e63          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    800049e8:	00e50733          	add	a4,a0,a4
    800049ec:	00b70023          	sb	a1,0(a4)
    800049f0:	0037871b          	addiw	a4,a5,3
    800049f4:	0ac77663          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    800049f8:	00e50733          	add	a4,a0,a4
    800049fc:	00b70023          	sb	a1,0(a4)
    80004a00:	0047871b          	addiw	a4,a5,4
    80004a04:	08c77e63          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a08:	00e50733          	add	a4,a0,a4
    80004a0c:	00b70023          	sb	a1,0(a4)
    80004a10:	0057871b          	addiw	a4,a5,5
    80004a14:	08c77663          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a18:	00e50733          	add	a4,a0,a4
    80004a1c:	00b70023          	sb	a1,0(a4)
    80004a20:	0067871b          	addiw	a4,a5,6
    80004a24:	06c77e63          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a28:	00e50733          	add	a4,a0,a4
    80004a2c:	00b70023          	sb	a1,0(a4)
    80004a30:	0077871b          	addiw	a4,a5,7
    80004a34:	06c77663          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a38:	00e50733          	add	a4,a0,a4
    80004a3c:	00b70023          	sb	a1,0(a4)
    80004a40:	0087871b          	addiw	a4,a5,8
    80004a44:	04c77e63          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a48:	00e50733          	add	a4,a0,a4
    80004a4c:	00b70023          	sb	a1,0(a4)
    80004a50:	0097871b          	addiw	a4,a5,9
    80004a54:	04c77663          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a58:	00e50733          	add	a4,a0,a4
    80004a5c:	00b70023          	sb	a1,0(a4)
    80004a60:	00a7871b          	addiw	a4,a5,10
    80004a64:	02c77e63          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a68:	00e50733          	add	a4,a0,a4
    80004a6c:	00b70023          	sb	a1,0(a4)
    80004a70:	00b7871b          	addiw	a4,a5,11
    80004a74:	02c77663          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a78:	00e50733          	add	a4,a0,a4
    80004a7c:	00b70023          	sb	a1,0(a4)
    80004a80:	00c7871b          	addiw	a4,a5,12
    80004a84:	00c77e63          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a88:	00e50733          	add	a4,a0,a4
    80004a8c:	00b70023          	sb	a1,0(a4)
    80004a90:	00d7879b          	addiw	a5,a5,13
    80004a94:	00c7f663          	bgeu	a5,a2,80004aa0 <__memset+0x1c8>
    80004a98:	00f507b3          	add	a5,a0,a5
    80004a9c:	00b78023          	sb	a1,0(a5)
    80004aa0:	00813403          	ld	s0,8(sp)
    80004aa4:	01010113          	addi	sp,sp,16
    80004aa8:	00008067          	ret
    80004aac:	00b00693          	li	a3,11
    80004ab0:	e55ff06f          	j	80004904 <__memset+0x2c>
    80004ab4:	00300e93          	li	t4,3
    80004ab8:	ea5ff06f          	j	8000495c <__memset+0x84>
    80004abc:	00100e93          	li	t4,1
    80004ac0:	e9dff06f          	j	8000495c <__memset+0x84>
    80004ac4:	00000e93          	li	t4,0
    80004ac8:	e95ff06f          	j	8000495c <__memset+0x84>
    80004acc:	00000793          	li	a5,0
    80004ad0:	ef9ff06f          	j	800049c8 <__memset+0xf0>
    80004ad4:	00200e93          	li	t4,2
    80004ad8:	e85ff06f          	j	8000495c <__memset+0x84>
    80004adc:	00400e93          	li	t4,4
    80004ae0:	e7dff06f          	j	8000495c <__memset+0x84>
    80004ae4:	00500e93          	li	t4,5
    80004ae8:	e75ff06f          	j	8000495c <__memset+0x84>
    80004aec:	00600e93          	li	t4,6
    80004af0:	e6dff06f          	j	8000495c <__memset+0x84>

0000000080004af4 <__memmove>:
    80004af4:	ff010113          	addi	sp,sp,-16
    80004af8:	00813423          	sd	s0,8(sp)
    80004afc:	01010413          	addi	s0,sp,16
    80004b00:	0e060863          	beqz	a2,80004bf0 <__memmove+0xfc>
    80004b04:	fff6069b          	addiw	a3,a2,-1
    80004b08:	0006881b          	sext.w	a6,a3
    80004b0c:	0ea5e863          	bltu	a1,a0,80004bfc <__memmove+0x108>
    80004b10:	00758713          	addi	a4,a1,7
    80004b14:	00a5e7b3          	or	a5,a1,a0
    80004b18:	40a70733          	sub	a4,a4,a0
    80004b1c:	0077f793          	andi	a5,a5,7
    80004b20:	00f73713          	sltiu	a4,a4,15
    80004b24:	00174713          	xori	a4,a4,1
    80004b28:	0017b793          	seqz	a5,a5
    80004b2c:	00e7f7b3          	and	a5,a5,a4
    80004b30:	10078863          	beqz	a5,80004c40 <__memmove+0x14c>
    80004b34:	00900793          	li	a5,9
    80004b38:	1107f463          	bgeu	a5,a6,80004c40 <__memmove+0x14c>
    80004b3c:	0036581b          	srliw	a6,a2,0x3
    80004b40:	fff8081b          	addiw	a6,a6,-1
    80004b44:	02081813          	slli	a6,a6,0x20
    80004b48:	01d85893          	srli	a7,a6,0x1d
    80004b4c:	00858813          	addi	a6,a1,8
    80004b50:	00058793          	mv	a5,a1
    80004b54:	00050713          	mv	a4,a0
    80004b58:	01088833          	add	a6,a7,a6
    80004b5c:	0007b883          	ld	a7,0(a5)
    80004b60:	00878793          	addi	a5,a5,8
    80004b64:	00870713          	addi	a4,a4,8
    80004b68:	ff173c23          	sd	a7,-8(a4)
    80004b6c:	ff0798e3          	bne	a5,a6,80004b5c <__memmove+0x68>
    80004b70:	ff867713          	andi	a4,a2,-8
    80004b74:	02071793          	slli	a5,a4,0x20
    80004b78:	0207d793          	srli	a5,a5,0x20
    80004b7c:	00f585b3          	add	a1,a1,a5
    80004b80:	40e686bb          	subw	a3,a3,a4
    80004b84:	00f507b3          	add	a5,a0,a5
    80004b88:	06e60463          	beq	a2,a4,80004bf0 <__memmove+0xfc>
    80004b8c:	0005c703          	lbu	a4,0(a1)
    80004b90:	00e78023          	sb	a4,0(a5)
    80004b94:	04068e63          	beqz	a3,80004bf0 <__memmove+0xfc>
    80004b98:	0015c603          	lbu	a2,1(a1)
    80004b9c:	00100713          	li	a4,1
    80004ba0:	00c780a3          	sb	a2,1(a5)
    80004ba4:	04e68663          	beq	a3,a4,80004bf0 <__memmove+0xfc>
    80004ba8:	0025c603          	lbu	a2,2(a1)
    80004bac:	00200713          	li	a4,2
    80004bb0:	00c78123          	sb	a2,2(a5)
    80004bb4:	02e68e63          	beq	a3,a4,80004bf0 <__memmove+0xfc>
    80004bb8:	0035c603          	lbu	a2,3(a1)
    80004bbc:	00300713          	li	a4,3
    80004bc0:	00c781a3          	sb	a2,3(a5)
    80004bc4:	02e68663          	beq	a3,a4,80004bf0 <__memmove+0xfc>
    80004bc8:	0045c603          	lbu	a2,4(a1)
    80004bcc:	00400713          	li	a4,4
    80004bd0:	00c78223          	sb	a2,4(a5)
    80004bd4:	00e68e63          	beq	a3,a4,80004bf0 <__memmove+0xfc>
    80004bd8:	0055c603          	lbu	a2,5(a1)
    80004bdc:	00500713          	li	a4,5
    80004be0:	00c782a3          	sb	a2,5(a5)
    80004be4:	00e68663          	beq	a3,a4,80004bf0 <__memmove+0xfc>
    80004be8:	0065c703          	lbu	a4,6(a1)
    80004bec:	00e78323          	sb	a4,6(a5)
    80004bf0:	00813403          	ld	s0,8(sp)
    80004bf4:	01010113          	addi	sp,sp,16
    80004bf8:	00008067          	ret
    80004bfc:	02061713          	slli	a4,a2,0x20
    80004c00:	02075713          	srli	a4,a4,0x20
    80004c04:	00e587b3          	add	a5,a1,a4
    80004c08:	f0f574e3          	bgeu	a0,a5,80004b10 <__memmove+0x1c>
    80004c0c:	02069613          	slli	a2,a3,0x20
    80004c10:	02065613          	srli	a2,a2,0x20
    80004c14:	fff64613          	not	a2,a2
    80004c18:	00e50733          	add	a4,a0,a4
    80004c1c:	00c78633          	add	a2,a5,a2
    80004c20:	fff7c683          	lbu	a3,-1(a5)
    80004c24:	fff78793          	addi	a5,a5,-1
    80004c28:	fff70713          	addi	a4,a4,-1
    80004c2c:	00d70023          	sb	a3,0(a4)
    80004c30:	fec798e3          	bne	a5,a2,80004c20 <__memmove+0x12c>
    80004c34:	00813403          	ld	s0,8(sp)
    80004c38:	01010113          	addi	sp,sp,16
    80004c3c:	00008067          	ret
    80004c40:	02069713          	slli	a4,a3,0x20
    80004c44:	02075713          	srli	a4,a4,0x20
    80004c48:	00170713          	addi	a4,a4,1
    80004c4c:	00e50733          	add	a4,a0,a4
    80004c50:	00050793          	mv	a5,a0
    80004c54:	0005c683          	lbu	a3,0(a1)
    80004c58:	00178793          	addi	a5,a5,1
    80004c5c:	00158593          	addi	a1,a1,1
    80004c60:	fed78fa3          	sb	a3,-1(a5)
    80004c64:	fee798e3          	bne	a5,a4,80004c54 <__memmove+0x160>
    80004c68:	f89ff06f          	j	80004bf0 <__memmove+0xfc>

0000000080004c6c <__putc>:
    80004c6c:	fe010113          	addi	sp,sp,-32
    80004c70:	00813823          	sd	s0,16(sp)
    80004c74:	00113c23          	sd	ra,24(sp)
    80004c78:	02010413          	addi	s0,sp,32
    80004c7c:	00050793          	mv	a5,a0
    80004c80:	fef40593          	addi	a1,s0,-17
    80004c84:	00100613          	li	a2,1
    80004c88:	00000513          	li	a0,0
    80004c8c:	fef407a3          	sb	a5,-17(s0)
    80004c90:	fffff097          	auipc	ra,0xfffff
    80004c94:	b3c080e7          	jalr	-1220(ra) # 800037cc <console_write>
    80004c98:	01813083          	ld	ra,24(sp)
    80004c9c:	01013403          	ld	s0,16(sp)
    80004ca0:	02010113          	addi	sp,sp,32
    80004ca4:	00008067          	ret

0000000080004ca8 <__getc>:
    80004ca8:	fe010113          	addi	sp,sp,-32
    80004cac:	00813823          	sd	s0,16(sp)
    80004cb0:	00113c23          	sd	ra,24(sp)
    80004cb4:	02010413          	addi	s0,sp,32
    80004cb8:	fe840593          	addi	a1,s0,-24
    80004cbc:	00100613          	li	a2,1
    80004cc0:	00000513          	li	a0,0
    80004cc4:	fffff097          	auipc	ra,0xfffff
    80004cc8:	ae8080e7          	jalr	-1304(ra) # 800037ac <console_read>
    80004ccc:	fe844503          	lbu	a0,-24(s0)
    80004cd0:	01813083          	ld	ra,24(sp)
    80004cd4:	01013403          	ld	s0,16(sp)
    80004cd8:	02010113          	addi	sp,sp,32
    80004cdc:	00008067          	ret

0000000080004ce0 <console_handler>:
    80004ce0:	fe010113          	addi	sp,sp,-32
    80004ce4:	00813823          	sd	s0,16(sp)
    80004ce8:	00113c23          	sd	ra,24(sp)
    80004cec:	00913423          	sd	s1,8(sp)
    80004cf0:	02010413          	addi	s0,sp,32
    80004cf4:	14202773          	csrr	a4,scause
    80004cf8:	100027f3          	csrr	a5,sstatus
    80004cfc:	0027f793          	andi	a5,a5,2
    80004d00:	06079e63          	bnez	a5,80004d7c <console_handler+0x9c>
    80004d04:	00074c63          	bltz	a4,80004d1c <console_handler+0x3c>
    80004d08:	01813083          	ld	ra,24(sp)
    80004d0c:	01013403          	ld	s0,16(sp)
    80004d10:	00813483          	ld	s1,8(sp)
    80004d14:	02010113          	addi	sp,sp,32
    80004d18:	00008067          	ret
    80004d1c:	0ff77713          	andi	a4,a4,255
    80004d20:	00900793          	li	a5,9
    80004d24:	fef712e3          	bne	a4,a5,80004d08 <console_handler+0x28>
    80004d28:	ffffe097          	auipc	ra,0xffffe
    80004d2c:	6dc080e7          	jalr	1756(ra) # 80003404 <plic_claim>
    80004d30:	00a00793          	li	a5,10
    80004d34:	00050493          	mv	s1,a0
    80004d38:	02f50c63          	beq	a0,a5,80004d70 <console_handler+0x90>
    80004d3c:	fc0506e3          	beqz	a0,80004d08 <console_handler+0x28>
    80004d40:	00050593          	mv	a1,a0
    80004d44:	00000517          	auipc	a0,0x0
    80004d48:	56450513          	addi	a0,a0,1380 # 800052a8 <CONSOLE_STATUS+0x298>
    80004d4c:	fffff097          	auipc	ra,0xfffff
    80004d50:	afc080e7          	jalr	-1284(ra) # 80003848 <__printf>
    80004d54:	01013403          	ld	s0,16(sp)
    80004d58:	01813083          	ld	ra,24(sp)
    80004d5c:	00048513          	mv	a0,s1
    80004d60:	00813483          	ld	s1,8(sp)
    80004d64:	02010113          	addi	sp,sp,32
    80004d68:	ffffe317          	auipc	t1,0xffffe
    80004d6c:	6d430067          	jr	1748(t1) # 8000343c <plic_complete>
    80004d70:	fffff097          	auipc	ra,0xfffff
    80004d74:	3e0080e7          	jalr	992(ra) # 80004150 <uartintr>
    80004d78:	fddff06f          	j	80004d54 <console_handler+0x74>
    80004d7c:	00000517          	auipc	a0,0x0
    80004d80:	62c50513          	addi	a0,a0,1580 # 800053a8 <digits+0x78>
    80004d84:	fffff097          	auipc	ra,0xfffff
    80004d88:	a68080e7          	jalr	-1432(ra) # 800037ec <panic>
	...
