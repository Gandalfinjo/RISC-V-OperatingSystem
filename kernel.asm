
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	a1813103          	ld	sp,-1512(sp) # 80005a18 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	785010ef          	jal	ra,80001fa0 <start>

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
    80001088:	a022be23          	sd	sp,-1508(t0) # 80005aa0 <framePointer>

    call _ZN5Riscv11trapHandlerEv
    8000108c:	071000ef          	jal	ra,800018fc <_ZN5Riscv11trapHandlerEv>

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

0000000080001144 <_Z9mem_allocm>:
// Created by os on 10/7/25.
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size) {
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16
    if (size == 0) return nullptr;
    80001150:	02050863          	beqz	a0,80001180 <_Z9mem_allocm+0x3c>

    size_t blocks = size / MEM_BLOCK_SIZE;
    80001154:	00655793          	srli	a5,a0,0x6
    if (size % MEM_BLOCK_SIZE != 0) blocks++;
    80001158:	03f57513          	andi	a0,a0,63
    8000115c:	00050463          	beqz	a0,80001164 <_Z9mem_allocm+0x20>
    80001160:	00178793          	addi	a5,a5,1

    void* result;
    asm volatile("mv a1, %0" :: "r"(blocks));
    80001164:	00078593          	mv	a1,a5
    asm volatile("li a0, 0x01");
    80001168:	00100513          	li	a0,1
    asm volatile("ecall");
    8000116c:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    80001170:	00050513          	mv	a0,a0
    return result;
}
    80001174:	00813403          	ld	s0,8(sp)
    80001178:	01010113          	addi	sp,sp,16
    8000117c:	00008067          	ret
    if (size == 0) return nullptr;
    80001180:	00000513          	li	a0,0
    80001184:	ff1ff06f          	j	80001174 <_Z9mem_allocm+0x30>

0000000080001188 <_Z8mem_freePv>:

int mem_free(void* addr) {
    80001188:	ff010113          	addi	sp,sp,-16
    8000118c:	00813423          	sd	s0,8(sp)
    80001190:	01010413          	addi	s0,sp,16
    int result;
    asm volatile("mv a1, %0" :: "r"(addr));
    80001194:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x02");
    80001198:	00200513          	li	a0,2
    asm volatile("ecall");
    8000119c:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800011a0:	00050513          	mv	a0,a0
    return result;
}
    800011a4:	0005051b          	sext.w	a0,a0
    800011a8:	00813403          	ld	s0,8(sp)
    800011ac:	01010113          	addi	sp,sp,16
    800011b0:	00008067          	ret

00000000800011b4 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    800011b4:	ff010113          	addi	sp,sp,-16
    800011b8:	00813423          	sd	s0,8(sp)
    800011bc:	01010413          	addi	s0,sp,16
    size_t result;
    asm volatile("li a0, 0x03");
    800011c0:	00300513          	li	a0,3
    asm volatile("ecall");
    800011c4:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800011c8:	00050513          	mv	a0,a0
    return result;
}
    800011cc:	00813403          	ld	s0,8(sp)
    800011d0:	01010113          	addi	sp,sp,16
    800011d4:	00008067          	ret

00000000800011d8 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    800011d8:	ff010113          	addi	sp,sp,-16
    800011dc:	00813423          	sd	s0,8(sp)
    800011e0:	01010413          	addi	s0,sp,16
    size_t result;
    asm volatile("li a0, 0x04");
    800011e4:	00400513          	li	a0,4
    asm volatile("ecall");
    800011e8:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800011ec:	00050513          	mv	a0,a0
    return result;
}
    800011f0:	00813403          	ld	s0,8(sp)
    800011f4:	01010113          	addi	sp,sp,16
    800011f8:	00008067          	ret

00000000800011fc <_Z13thread_createPP6ThreadPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg) {
    800011fc:	fd010113          	addi	sp,sp,-48
    80001200:	02113423          	sd	ra,40(sp)
    80001204:	02813023          	sd	s0,32(sp)
    80001208:	00913c23          	sd	s1,24(sp)
    8000120c:	01213823          	sd	s2,16(sp)
    80001210:	01313423          	sd	s3,8(sp)
    80001214:	03010413          	addi	s0,sp,48
    if (!handle || !start_routine) return -1;
    80001218:	06050c63          	beqz	a0,80001290 <_Z13thread_createPP6ThreadPFvPvES2_+0x94>
    8000121c:	00050493          	mv	s1,a0
    80001220:	00058913          	mv	s2,a1
    80001224:	00060993          	mv	s3,a2
    80001228:	06058863          	beqz	a1,80001298 <_Z13thread_createPP6ThreadPFvPvES2_+0x9c>

    size_t stackBytes = DEFAULT_STACK_SIZE;
    void* stack = mem_alloc(stackBytes);
    8000122c:	00001537          	lui	a0,0x1
    80001230:	00000097          	auipc	ra,0x0
    80001234:	f14080e7          	jalr	-236(ra) # 80001144 <_Z9mem_allocm>
    if (!stack) return -1;
    80001238:	06050463          	beqz	a0,800012a0 <_Z13thread_createPP6ThreadPFvPvES2_+0xa4>

    // void* stackTop = (char*)stack + stackBytes;

    int result;

    asm volatile("mv a1, %0" :: "r"(handle));
    8000123c:	00048593          	mv	a1,s1
    asm volatile("mv a2, %0" :: "r"(start_routine));
    80001240:	00090613          	mv	a2,s2
    asm volatile("mv a3, %0" :: "r"(arg));
    80001244:	00098693          	mv	a3,s3
    asm volatile("mv a4, %0" :: "r"(stack));
    80001248:	00050713          	mv	a4,a0
    asm volatile("li a0, 0x11");
    8000124c:	01100513          	li	a0,17
    asm volatile("ecall");
    80001250:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    80001254:	00050793          	mv	a5,a0
    80001258:	0007849b          	sext.w	s1,a5

    if (result < 0) {
    8000125c:	02079713          	slli	a4,a5,0x20
    80001260:	02074263          	bltz	a4,80001284 <_Z13thread_createPP6ThreadPFvPvES2_+0x88>
        mem_free(stack);
    }

    return result;
}
    80001264:	00048513          	mv	a0,s1
    80001268:	02813083          	ld	ra,40(sp)
    8000126c:	02013403          	ld	s0,32(sp)
    80001270:	01813483          	ld	s1,24(sp)
    80001274:	01013903          	ld	s2,16(sp)
    80001278:	00813983          	ld	s3,8(sp)
    8000127c:	03010113          	addi	sp,sp,48
    80001280:	00008067          	ret
        mem_free(stack);
    80001284:	00000097          	auipc	ra,0x0
    80001288:	f04080e7          	jalr	-252(ra) # 80001188 <_Z8mem_freePv>
    8000128c:	fd9ff06f          	j	80001264 <_Z13thread_createPP6ThreadPFvPvES2_+0x68>
    if (!handle || !start_routine) return -1;
    80001290:	fff00493          	li	s1,-1
    80001294:	fd1ff06f          	j	80001264 <_Z13thread_createPP6ThreadPFvPvES2_+0x68>
    80001298:	fff00493          	li	s1,-1
    8000129c:	fc9ff06f          	j	80001264 <_Z13thread_createPP6ThreadPFvPvES2_+0x68>
    if (!stack) return -1;
    800012a0:	fff00493          	li	s1,-1
    800012a4:	fc1ff06f          	j	80001264 <_Z13thread_createPP6ThreadPFvPvES2_+0x68>

00000000800012a8 <_Z11thread_exitv>:

int thread_exit() {
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    int result;
    asm volatile("li a0, 0x12");
    800012b4:	01200513          	li	a0,18
    asm volatile("ecall");
    800012b8:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800012bc:	00050513          	mv	a0,a0
    return result;
}
    800012c0:	0005051b          	sext.w	a0,a0
    800012c4:	00813403          	ld	s0,8(sp)
    800012c8:	01010113          	addi	sp,sp,16
    800012cc:	00008067          	ret

00000000800012d0 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800012d0:	ff010113          	addi	sp,sp,-16
    800012d4:	00813423          	sd	s0,8(sp)
    800012d8:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x13");
    800012dc:	01300513          	li	a0,19
    asm volatile("ecall");
    800012e0:	00000073          	ecall
    800012e4:	00813403          	ld	s0,8(sp)
    800012e8:	01010113          	addi	sp,sp,16
    800012ec:	00008067          	ret

00000000800012f0 <_ZN6ThreadC1EPFvPvES0_S0_m>:
Thread::Thread(Body b, void* a, size_t stackSizeBytes)
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), next(nullptr) {
    allocateStack(stackSizeBytes);
}

Thread::Thread(Body b, void* a, void* externalStackBase, size_t externalStackSize)
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00813423          	sd	s0,8(sp)
    800012f8:	01010413          	addi	s0,sp,16
    : id(staticId++), stack(nullptr), stackSize(0), body(b), args(a), state(NEW), next(nullptr) {
    800012fc:	00004817          	auipc	a6,0x4
    80001300:	78480813          	addi	a6,a6,1924 # 80005a80 <_ZN6Thread8staticIdE>
    80001304:	00082783          	lw	a5,0(a6)
    80001308:	0017889b          	addiw	a7,a5,1
    8000130c:	01182023          	sw	a7,0(a6)
    80001310:	00f52023          	sw	a5,0(a0) # 1000 <_entry-0x7ffff000>
    80001314:	02b53423          	sd	a1,40(a0)
    80001318:	02c53823          	sd	a2,48(a0)
    8000131c:	02052c23          	sw	zero,56(a0)
    80001320:	04053023          	sd	zero,64(a0)
    stack = externalStackBase;
    80001324:	00d53423          	sd	a3,8(a0)
    stackSize = externalStackSize;
    80001328:	00e53823          	sd	a4,16(a0)
}
    8000132c:	00813403          	ld	s0,8(sp)
    80001330:	01010113          	addi	sp,sp,16
    80001334:	00008067          	ret

0000000080001338 <_ZN6ThreadD1Ev>:

Thread::~Thread() {
    if (stack) {
    80001338:	00853503          	ld	a0,8(a0)
    8000133c:	02050663          	beqz	a0,80001368 <_ZN6ThreadD1Ev+0x30>
Thread::~Thread() {
    80001340:	ff010113          	addi	sp,sp,-16
    80001344:	00113423          	sd	ra,8(sp)
    80001348:	00813023          	sd	s0,0(sp)
    8000134c:	01010413          	addi	s0,sp,16
        MemoryAllocator::mem_free(stack);
    80001350:	00001097          	auipc	ra,0x1
    80001354:	8b4080e7          	jalr	-1868(ra) # 80001c04 <_ZN15MemoryAllocator8mem_freeEPv>
        stack = nullptr;
    }
}
    80001358:	00813083          	ld	ra,8(sp)
    8000135c:	00013403          	ld	s0,0(sp)
    80001360:	01010113          	addi	sp,sp,16
    80001364:	00008067          	ret
    80001368:	00008067          	ret

000000008000136c <_ZN6Thread12createThreadEPFvPvES0_S0_m>:

Thread* Thread::createThread(Body b, void* a, size_t stackSizeBytes) {
    return new Thread(b, a, stackSizeBytes);
}

Thread* Thread::createThread(Body b, void* a, void* externalStackBase, size_t externalStackSize) {
    8000136c:	fc010113          	addi	sp,sp,-64
    80001370:	02113c23          	sd	ra,56(sp)
    80001374:	02813823          	sd	s0,48(sp)
    80001378:	02913423          	sd	s1,40(sp)
    8000137c:	03213023          	sd	s2,32(sp)
    80001380:	01313c23          	sd	s3,24(sp)
    80001384:	01413823          	sd	s4,16(sp)
    80001388:	01513423          	sd	s5,8(sp)
    8000138c:	04010413          	addi	s0,sp,64
    80001390:	00050913          	mv	s2,a0
    80001394:	00058993          	mv	s3,a1
    80001398:	00060a13          	mv	s4,a2
    8000139c:	00068a93          	mv	s5,a3

    void* operator new(size_t size) {
        size_t blocks = size / MEM_BLOCK_SIZE;
        if (size % MEM_BLOCK_SIZE) blocks++;

        return MemoryAllocator::mem_alloc(blocks);
    800013a0:	00200513          	li	a0,2
    800013a4:	00000097          	auipc	ra,0x0
    800013a8:	760080e7          	jalr	1888(ra) # 80001b04 <_ZN15MemoryAllocator9mem_allocEm>
    800013ac:	00050493          	mv	s1,a0
    return new Thread(b, a, externalStackBase, externalStackSize);
    800013b0:	000a8713          	mv	a4,s5
    800013b4:	000a0693          	mv	a3,s4
    800013b8:	00098613          	mv	a2,s3
    800013bc:	00090593          	mv	a1,s2
    800013c0:	00000097          	auipc	ra,0x0
    800013c4:	f30080e7          	jalr	-208(ra) # 800012f0 <_ZN6ThreadC1EPFvPvES0_S0_m>
}
    800013c8:	00048513          	mv	a0,s1
    800013cc:	03813083          	ld	ra,56(sp)
    800013d0:	03013403          	ld	s0,48(sp)
    800013d4:	02813483          	ld	s1,40(sp)
    800013d8:	02013903          	ld	s2,32(sp)
    800013dc:	01813983          	ld	s3,24(sp)
    800013e0:	01013a03          	ld	s4,16(sp)
    800013e4:	00813a83          	ld	s5,8(sp)
    800013e8:	04010113          	addi	sp,sp,64
    800013ec:	00008067          	ret

00000000800013f0 <_ZN6Thread13allocateStackEm>:

void Thread::allocateStack(size_t bytes) {
    800013f0:	fe010113          	addi	sp,sp,-32
    800013f4:	00113c23          	sd	ra,24(sp)
    800013f8:	00813823          	sd	s0,16(sp)
    800013fc:	00913423          	sd	s1,8(sp)
    80001400:	01213023          	sd	s2,0(sp)
    80001404:	02010413          	addi	s0,sp,32
    80001408:	00050913          	mv	s2,a0
    size_t blocks = bytes / MEM_BLOCK_SIZE;
    8000140c:	0065d493          	srli	s1,a1,0x6
    if (bytes % MEM_BLOCK_SIZE != 0) blocks++;
    80001410:	03f5f593          	andi	a1,a1,63
    80001414:	00058463          	beqz	a1,8000141c <_ZN6Thread13allocateStackEm+0x2c>
    80001418:	00148493          	addi	s1,s1,1

    stack = MemoryAllocator::mem_alloc(blocks);
    8000141c:	00048513          	mv	a0,s1
    80001420:	00000097          	auipc	ra,0x0
    80001424:	6e4080e7          	jalr	1764(ra) # 80001b04 <_ZN15MemoryAllocator9mem_allocEm>
    80001428:	00a93423          	sd	a0,8(s2)
    stackSize = blocks * MEM_BLOCK_SIZE;
    8000142c:	00649493          	slli	s1,s1,0x6
    80001430:	00993823          	sd	s1,16(s2)
}
    80001434:	01813083          	ld	ra,24(sp)
    80001438:	01013403          	ld	s0,16(sp)
    8000143c:	00813483          	ld	s1,8(sp)
    80001440:	00013903          	ld	s2,0(sp)
    80001444:	02010113          	addi	sp,sp,32
    80001448:	00008067          	ret

000000008000144c <_ZN6ThreadC1EPFvPvES0_m>:
Thread::Thread(Body b, void* a, size_t stackSizeBytes)
    8000144c:	ff010113          	addi	sp,sp,-16
    80001450:	00113423          	sd	ra,8(sp)
    80001454:	00813023          	sd	s0,0(sp)
    80001458:	01010413          	addi	s0,sp,16
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), next(nullptr) {
    8000145c:	00004817          	auipc	a6,0x4
    80001460:	62480813          	addi	a6,a6,1572 # 80005a80 <_ZN6Thread8staticIdE>
    80001464:	00082703          	lw	a4,0(a6)
    80001468:	0017089b          	addiw	a7,a4,1
    8000146c:	01182023          	sw	a7,0(a6)
    80001470:	00e52023          	sw	a4,0(a0)
    80001474:	00053423          	sd	zero,8(a0)
    80001478:	00d53823          	sd	a3,16(a0)
    8000147c:	02b53423          	sd	a1,40(a0)
    80001480:	02c53823          	sd	a2,48(a0)
    80001484:	02052c23          	sw	zero,56(a0)
    80001488:	04053023          	sd	zero,64(a0)
    allocateStack(stackSizeBytes);
    8000148c:	00068593          	mv	a1,a3
    80001490:	00000097          	auipc	ra,0x0
    80001494:	f60080e7          	jalr	-160(ra) # 800013f0 <_ZN6Thread13allocateStackEm>
}
    80001498:	00813083          	ld	ra,8(sp)
    8000149c:	00013403          	ld	s0,0(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret

00000000800014a8 <_ZN6Thread12createThreadEPFvPvES0_m>:
Thread* Thread::createThread(Body b, void* a, size_t stackSizeBytes) {
    800014a8:	fd010113          	addi	sp,sp,-48
    800014ac:	02113423          	sd	ra,40(sp)
    800014b0:	02813023          	sd	s0,32(sp)
    800014b4:	00913c23          	sd	s1,24(sp)
    800014b8:	01213823          	sd	s2,16(sp)
    800014bc:	01313423          	sd	s3,8(sp)
    800014c0:	01413023          	sd	s4,0(sp)
    800014c4:	03010413          	addi	s0,sp,48
    800014c8:	00050913          	mv	s2,a0
    800014cc:	00058993          	mv	s3,a1
    800014d0:	00060a13          	mv	s4,a2
    800014d4:	00200513          	li	a0,2
    800014d8:	00000097          	auipc	ra,0x0
    800014dc:	62c080e7          	jalr	1580(ra) # 80001b04 <_ZN15MemoryAllocator9mem_allocEm>
    800014e0:	00050493          	mv	s1,a0
    return new Thread(b, a, stackSizeBytes);
    800014e4:	000a0693          	mv	a3,s4
    800014e8:	00098613          	mv	a2,s3
    800014ec:	00090593          	mv	a1,s2
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	f5c080e7          	jalr	-164(ra) # 8000144c <_ZN6ThreadC1EPFvPvES0_m>
    800014f8:	0200006f          	j	80001518 <_ZN6Thread12createThreadEPFvPvES0_m+0x70>
    800014fc:	00050913          	mv	s2,a0
    }

    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    80001500:	00048513          	mv	a0,s1
    80001504:	00000097          	auipc	ra,0x0
    80001508:	700080e7          	jalr	1792(ra) # 80001c04 <_ZN15MemoryAllocator8mem_freeEPv>
    8000150c:	00090513          	mv	a0,s2
    80001510:	00005097          	auipc	ra,0x5
    80001514:	668080e7          	jalr	1640(ra) # 80006b78 <_Unwind_Resume>
}
    80001518:	00048513          	mv	a0,s1
    8000151c:	02813083          	ld	ra,40(sp)
    80001520:	02013403          	ld	s0,32(sp)
    80001524:	01813483          	ld	s1,24(sp)
    80001528:	01013903          	ld	s2,16(sp)
    8000152c:	00813983          	ld	s3,8(sp)
    80001530:	00013a03          	ld	s4,0(sp)
    80001534:	03010113          	addi	sp,sp,48
    80001538:	00008067          	ret

000000008000153c <_ZN6Thread5startEv>:

void Thread::start() {
    if (state != NEW) return;
    8000153c:	03852783          	lw	a5,56(a0)
    80001540:	00078463          	beqz	a5,80001548 <_ZN6Thread5startEv+0xc>
    80001544:	00008067          	ret
void Thread::start() {
    80001548:	fe010113          	addi	sp,sp,-32
    8000154c:	00113c23          	sd	ra,24(sp)
    80001550:	00813823          	sd	s0,16(sp)
    80001554:	00913423          	sd	s1,8(sp)
    80001558:	02010413          	addi	s0,sp,32
    8000155c:	00050493          	mv	s1,a0

    void* stackTop = (char*)stack + stackSize;
    80001560:	00853603          	ld	a2,8(a0)
    80001564:	01053783          	ld	a5,16(a0)
    initContext(&context, wrapper, stackTop);
    80001568:	00f60633          	add	a2,a2,a5
    8000156c:	00000597          	auipc	a1,0x0
    80001570:	10858593          	addi	a1,a1,264 # 80001674 <_ZN6Thread7wrapperEv>
    80001574:	01850513          	addi	a0,a0,24
    80001578:	00000097          	auipc	ra,0x0
    8000157c:	bbc080e7          	jalr	-1092(ra) # 80001134 <_ZN6Thread11initContextEPNS_7ContextEPFvvEPv>
    state = READY;
    80001580:	00100793          	li	a5,1
    80001584:	02f4ac23          	sw	a5,56(s1)
    Scheduler::put(this);
    80001588:	00048513          	mv	a0,s1
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	180080e7          	jalr	384(ra) # 8000170c <_ZN9Scheduler3putEP6Thread>
}
    80001594:	01813083          	ld	ra,24(sp)
    80001598:	01013403          	ld	s0,16(sp)
    8000159c:	00813483          	ld	s1,8(sp)
    800015a0:	02010113          	addi	sp,sp,32
    800015a4:	00008067          	ret

00000000800015a8 <_ZN6Thread4exitEv>:

void Thread::exit() {
    800015a8:	ff010113          	addi	sp,sp,-16
    800015ac:	00813423          	sd	s0,8(sp)
    800015b0:	01010413          	addi	s0,sp,16
    state = FINISHED;
    800015b4:	00400793          	li	a5,4
    800015b8:	02f52c23          	sw	a5,56(a0)
}
    800015bc:	00813403          	ld	s0,8(sp)
    800015c0:	01010113          	addi	sp,sp,16
    800015c4:	00008067          	ret

00000000800015c8 <_ZN6Thread8dispatchEv>:
    running->body(running->args);
    running->exit();
    yield();
}

void Thread::dispatch() {
    800015c8:	fe010113          	addi	sp,sp,-32
    800015cc:	00113c23          	sd	ra,24(sp)
    800015d0:	00813823          	sd	s0,16(sp)
    800015d4:	00913423          	sd	s1,8(sp)
    800015d8:	02010413          	addi	s0,sp,32
    Thread* old = running;
    800015dc:	00004497          	auipc	s1,0x4
    800015e0:	4ac4b483          	ld	s1,1196(s1) # 80005a88 <_ZN6Thread7runningE>

    if (old && old->state != FINISHED) {
    800015e4:	00048863          	beqz	s1,800015f4 <_ZN6Thread8dispatchEv+0x2c>
    800015e8:	0384a703          	lw	a4,56(s1)
    800015ec:	00400793          	li	a5,4
    800015f0:	04f71263          	bne	a4,a5,80001634 <_ZN6Thread8dispatchEv+0x6c>
        old->state = READY;
        Scheduler::put(old);
    }

    Thread* next = Scheduler::get();
    800015f4:	00000097          	auipc	ra,0x0
    800015f8:	0d4080e7          	jalr	212(ra) # 800016c8 <_ZN9Scheduler3getEv>
    if (!next) return;
    800015fc:	02050263          	beqz	a0,80001620 <_ZN6Thread8dispatchEv+0x58>

    next->state = RUNNING;
    80001600:	00200793          	li	a5,2
    80001604:	02f52c23          	sw	a5,56(a0)
    running = next;
    80001608:	00004797          	auipc	a5,0x4
    8000160c:	48a7b023          	sd	a0,1152(a5) # 80005a88 <_ZN6Thread7runningE>

    contextSwitch(&old->context, &next->context);
    80001610:	01850593          	addi	a1,a0,24
    80001614:	01848513          	addi	a0,s1,24
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	b08080e7          	jalr	-1272(ra) # 80001120 <_ZN6Thread13contextSwitchEPNS_7ContextES1_>
}
    80001620:	01813083          	ld	ra,24(sp)
    80001624:	01013403          	ld	s0,16(sp)
    80001628:	00813483          	ld	s1,8(sp)
    8000162c:	02010113          	addi	sp,sp,32
    80001630:	00008067          	ret
        old->state = READY;
    80001634:	00100793          	li	a5,1
    80001638:	02f4ac23          	sw	a5,56(s1)
        Scheduler::put(old);
    8000163c:	00048513          	mv	a0,s1
    80001640:	00000097          	auipc	ra,0x0
    80001644:	0cc080e7          	jalr	204(ra) # 8000170c <_ZN9Scheduler3putEP6Thread>
    80001648:	fadff06f          	j	800015f4 <_ZN6Thread8dispatchEv+0x2c>

000000008000164c <_ZN6Thread5yieldEv>:

void Thread::yield() {
    8000164c:	ff010113          	addi	sp,sp,-16
    80001650:	00113423          	sd	ra,8(sp)
    80001654:	00813023          	sd	s0,0(sp)
    80001658:	01010413          	addi	s0,sp,16
    dispatch();
    8000165c:	00000097          	auipc	ra,0x0
    80001660:	f6c080e7          	jalr	-148(ra) # 800015c8 <_ZN6Thread8dispatchEv>
    80001664:	00813083          	ld	ra,8(sp)
    80001668:	00013403          	ld	s0,0(sp)
    8000166c:	01010113          	addi	sp,sp,16
    80001670:	00008067          	ret

0000000080001674 <_ZN6Thread7wrapperEv>:
void Thread::wrapper() {
    80001674:	fe010113          	addi	sp,sp,-32
    80001678:	00113c23          	sd	ra,24(sp)
    8000167c:	00813823          	sd	s0,16(sp)
    80001680:	00913423          	sd	s1,8(sp)
    80001684:	02010413          	addi	s0,sp,32
    running->body(running->args);
    80001688:	00004497          	auipc	s1,0x4
    8000168c:	3f848493          	addi	s1,s1,1016 # 80005a80 <_ZN6Thread8staticIdE>
    80001690:	0084b783          	ld	a5,8(s1)
    80001694:	0287b703          	ld	a4,40(a5)
    80001698:	0307b503          	ld	a0,48(a5)
    8000169c:	000700e7          	jalr	a4
    running->exit();
    800016a0:	0084b503          	ld	a0,8(s1)
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	f04080e7          	jalr	-252(ra) # 800015a8 <_ZN6Thread4exitEv>
    yield();
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	fa0080e7          	jalr	-96(ra) # 8000164c <_ZN6Thread5yieldEv>
}
    800016b4:	01813083          	ld	ra,24(sp)
    800016b8:	01013403          	ld	s0,16(sp)
    800016bc:	00813483          	ld	s1,8(sp)
    800016c0:	02010113          	addi	sp,sp,32
    800016c4:	00008067          	ret

00000000800016c8 <_ZN9Scheduler3getEv>:
#include "../h/Thread.hpp"

Thread* Scheduler::head = nullptr;
Thread* Scheduler::tail = nullptr;

Thread* Scheduler::get() {
    800016c8:	ff010113          	addi	sp,sp,-16
    800016cc:	00813423          	sd	s0,8(sp)
    800016d0:	01010413          	addi	s0,sp,16
    if (!head) return nullptr;
    800016d4:	00004517          	auipc	a0,0x4
    800016d8:	3bc53503          	ld	a0,956(a0) # 80005a90 <_ZN9Scheduler4headE>
    800016dc:	00050c63          	beqz	a0,800016f4 <_ZN9Scheduler3getEv+0x2c>

    Thread* thread = head;
    head = head->next;
    800016e0:	04053783          	ld	a5,64(a0)
    800016e4:	00004717          	auipc	a4,0x4
    800016e8:	3af73623          	sd	a5,940(a4) # 80005a90 <_ZN9Scheduler4headE>

    if (!head) tail = nullptr;
    800016ec:	00078a63          	beqz	a5,80001700 <_ZN9Scheduler3getEv+0x38>
    thread->next = nullptr;
    800016f0:	04053023          	sd	zero,64(a0)

    return thread;
}
    800016f4:	00813403          	ld	s0,8(sp)
    800016f8:	01010113          	addi	sp,sp,16
    800016fc:	00008067          	ret
    if (!head) tail = nullptr;
    80001700:	00004797          	auipc	a5,0x4
    80001704:	3807bc23          	sd	zero,920(a5) # 80005a98 <_ZN9Scheduler4tailE>
    80001708:	fe9ff06f          	j	800016f0 <_ZN9Scheduler3getEv+0x28>

000000008000170c <_ZN9Scheduler3putEP6Thread>:

void Scheduler::put(Thread* thread) {
    8000170c:	ff010113          	addi	sp,sp,-16
    80001710:	00813423          	sd	s0,8(sp)
    80001714:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    80001718:	00004797          	auipc	a5,0x4
    8000171c:	3787b783          	ld	a5,888(a5) # 80005a90 <_ZN9Scheduler4headE>
    80001720:	02078263          	beqz	a5,80001744 <_ZN9Scheduler3putEP6Thread+0x38>
    else tail->next = thread;
    80001724:	00004797          	auipc	a5,0x4
    80001728:	3747b783          	ld	a5,884(a5) # 80005a98 <_ZN9Scheduler4tailE>
    8000172c:	04a7b023          	sd	a0,64(a5)
    tail = thread;
    80001730:	00004797          	auipc	a5,0x4
    80001734:	36a7b423          	sd	a0,872(a5) # 80005a98 <_ZN9Scheduler4tailE>
}
    80001738:	00813403          	ld	s0,8(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret
    if (!head) head = thread;
    80001744:	00004797          	auipc	a5,0x4
    80001748:	34a7b623          	sd	a0,844(a5) # 80005a90 <_ZN9Scheduler4headE>
    8000174c:	fe5ff06f          	j	80001730 <_ZN9Scheduler3putEP6Thread+0x24>

0000000080001750 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80001750:	ff010113          	addi	sp,sp,-16
    80001754:	00813423          	sd	s0,8(sp)
    80001758:	01010413          	addi	s0,sp,16
    return head == nullptr;
    8000175c:	00004517          	auipc	a0,0x4
    80001760:	33453503          	ld	a0,820(a0) # 80005a90 <_ZN9Scheduler4headE>
    80001764:	00153513          	seqz	a0,a0
    80001768:	00813403          	ld	s0,8(sp)
    8000176c:	01010113          	addi	sp,sp,16
    80001770:	00008067          	ret

0000000080001774 <_Z10threadBodyPv>:
uint64 framePointer;

extern void userMain();
extern void printString(const char* s);

void threadBody(void* arg) {
    80001774:	fe010113          	addi	sp,sp,-32
    80001778:	00113c23          	sd	ra,24(sp)
    8000177c:	00813823          	sd	s0,16(sp)
    80001780:	00913423          	sd	s1,8(sp)
    80001784:	01213023          	sd	s2,0(sp)
    80001788:	02010413          	addi	s0,sp,32
    8000178c:	00050913          	mv	s2,a0
    const char* name = (const char*)arg;

    for (int i = 0; i < 5; i++) {
    80001790:	00000493          	li	s1,0
    80001794:	00400793          	li	a5,4
    80001798:	0297c863          	blt	a5,s1,800017c8 <_Z10threadBodyPv+0x54>
        printString(name);
    8000179c:	00090513          	mv	a0,s2
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	5ec080e7          	jalr	1516(ra) # 80001d8c <_Z11printStringPKc>
        printString(": working... \n");
    800017a8:	00004517          	auipc	a0,0x4
    800017ac:	87850513          	addi	a0,a0,-1928 # 80005020 <CONSOLE_STATUS+0x10>
    800017b0:	00000097          	auipc	ra,0x0
    800017b4:	5dc080e7          	jalr	1500(ra) # 80001d8c <_Z11printStringPKc>
        thread_dispatch();
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	b18080e7          	jalr	-1256(ra) # 800012d0 <_Z15thread_dispatchv>
    for (int i = 0; i < 5; i++) {
    800017c0:	0014849b          	addiw	s1,s1,1
    800017c4:	fd1ff06f          	j	80001794 <_Z10threadBodyPv+0x20>
    }

    printString(name);
    800017c8:	00090513          	mv	a0,s2
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	5c0080e7          	jalr	1472(ra) # 80001d8c <_Z11printStringPKc>
    printString(": finished.\n");
    800017d4:	00004517          	auipc	a0,0x4
    800017d8:	85c50513          	addi	a0,a0,-1956 # 80005030 <CONSOLE_STATUS+0x20>
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	5b0080e7          	jalr	1456(ra) # 80001d8c <_Z11printStringPKc>

    thread_exit();
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	ac4080e7          	jalr	-1340(ra) # 800012a8 <_Z11thread_exitv>
}
    800017ec:	01813083          	ld	ra,24(sp)
    800017f0:	01013403          	ld	s0,16(sp)
    800017f4:	00813483          	ld	s1,8(sp)
    800017f8:	00013903          	ld	s2,0(sp)
    800017fc:	02010113          	addi	sp,sp,32
    80001800:	00008067          	ret

0000000080001804 <main>:

void main() {
    80001804:	fd010113          	addi	sp,sp,-48
    80001808:	02113423          	sd	ra,40(sp)
    8000180c:	02813023          	sd	s0,32(sp)
    80001810:	00913c23          	sd	s1,24(sp)
    80001814:	03010413          	addi	s0,sp,48
    MemoryAllocator::initHeap();
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	29c080e7          	jalr	668(ra) # 80001ab4 <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    80001820:	00000097          	auipc	ra,0x0
    80001824:	0b8080e7          	jalr	184(ra) # 800018d8 <_ZN5Riscv16setupTrapHandlerEv>

    thread_t mainThread, t1, t2;

    mainThread = Thread::createThread(nullptr, nullptr);
    80001828:	00001637          	lui	a2,0x1
    8000182c:	00000593          	li	a1,0
    80001830:	00000513          	li	a0,0
    80001834:	00000097          	auipc	ra,0x0
    80001838:	c74080e7          	jalr	-908(ra) # 800014a8 <_ZN6Thread12createThreadEPFvPvES0_m>
    Thread::running = mainThread;
    8000183c:	00004797          	auipc	a5,0x4
    80001840:	1ec7b783          	ld	a5,492(a5) # 80005a28 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001844:	00a7b023          	sd	a0,0(a5)
    void setState(ThreadState s) { state = s; }
    80001848:	00200793          	li	a5,2
    8000184c:	02f52c23          	sw	a5,56(a0)
    mainThread->setState(RUNNING);

    thread_create(&t1, threadBody, (void*)"Thread 1");
    80001850:	00003617          	auipc	a2,0x3
    80001854:	7f060613          	addi	a2,a2,2032 # 80005040 <CONSOLE_STATUS+0x30>
    80001858:	00000597          	auipc	a1,0x0
    8000185c:	f1c58593          	addi	a1,a1,-228 # 80001774 <_Z10threadBodyPv>
    80001860:	fd840513          	addi	a0,s0,-40
    80001864:	00000097          	auipc	ra,0x0
    80001868:	998080e7          	jalr	-1640(ra) # 800011fc <_Z13thread_createPP6ThreadPFvPvES2_>
    thread_create(&t2, threadBody, (void*)"Thread 2");
    8000186c:	00003617          	auipc	a2,0x3
    80001870:	7e460613          	addi	a2,a2,2020 # 80005050 <CONSOLE_STATUS+0x40>
    80001874:	00000597          	auipc	a1,0x0
    80001878:	f0058593          	addi	a1,a1,-256 # 80001774 <_Z10threadBodyPv>
    8000187c:	fd040513          	addi	a0,s0,-48
    80001880:	00000097          	auipc	ra,0x0
    80001884:	97c080e7          	jalr	-1668(ra) # 800011fc <_Z13thread_createPP6ThreadPFvPvES2_>

    for (int i = 0; i < 15; i++) {
    80001888:	00000493          	li	s1,0
    8000188c:	0200006f          	j	800018ac <main+0xa8>
        printString("Main: yielding...\n");
    80001890:	00003517          	auipc	a0,0x3
    80001894:	7d050513          	addi	a0,a0,2000 # 80005060 <CONSOLE_STATUS+0x50>
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	4f4080e7          	jalr	1268(ra) # 80001d8c <_Z11printStringPKc>
        thread_dispatch();
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	a30080e7          	jalr	-1488(ra) # 800012d0 <_Z15thread_dispatchv>
    for (int i = 0; i < 15; i++) {
    800018a8:	0014849b          	addiw	s1,s1,1
    800018ac:	00e00793          	li	a5,14
    800018b0:	fe97d0e3          	bge	a5,s1,80001890 <main+0x8c>
    }

    printString("All threads done!\n");
    800018b4:	00003517          	auipc	a0,0x3
    800018b8:	7c450513          	addi	a0,a0,1988 # 80005078 <CONSOLE_STATUS+0x68>
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	4d0080e7          	jalr	1232(ra) # 80001d8c <_Z11printStringPKc>

    // userMain();
    800018c4:	02813083          	ld	ra,40(sp)
    800018c8:	02013403          	ld	s0,32(sp)
    800018cc:	01813483          	ld	s1,24(sp)
    800018d0:	03010113          	addi	sp,sp,48
    800018d4:	00008067          	ret

00000000800018d8 <_ZN5Riscv16setupTrapHandlerEv>:

constexpr uint64 THREAD_CREATE = 0x11;
constexpr uint64 THREAD_EXIT = 0x12;
constexpr uint64 THREAD_DISPATCH = 0x13;

void Riscv::setupTrapHandler() {
    800018d8:	ff010113          	addi	sp,sp,-16
    800018dc:	00813423          	sd	s0,8(sp)
    800018e0:	01010413          	addi	s0,sp,16
    unsigned long addr = (unsigned long)&trap_handler;
    800018e4:	00004797          	auipc	a5,0x4
    800018e8:	13c7b783          	ld	a5,316(a5) # 80005a20 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(addr));
    800018ec:	10579073          	csrw	stvec,a5
}
    800018f0:	00813403          	ld	s0,8(sp)
    800018f4:	01010113          	addi	sp,sp,16
    800018f8:	00008067          	ret

00000000800018fc <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    800018fc:	fe010113          	addi	sp,sp,-32
    80001900:	00113c23          	sd	ra,24(sp)
    80001904:	00813823          	sd	s0,16(sp)
    80001908:	00913423          	sd	s1,8(sp)
    8000190c:	01213023          	sd	s2,0(sp)
    80001910:	02010413          	addi	s0,sp,32
    uint64 scause = 0, sepc = 0;
    asm volatile("csrr %0, scause" : "=r"(scause));
    80001914:	14202773          	csrr	a4,scause
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    80001918:	141024f3          	csrr	s1,sepc

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    8000191c:	fff00793          	li	a5,-1
    80001920:	0017d793          	srli	a5,a5,0x1
    80001924:	00f777b3          	and	a5,a4,a5

    if (interrupt == 0 && (cause == 8 || cause == 9)) {
    80001928:	00074863          	bltz	a4,80001938 <_ZN5Riscv11trapHandlerEv+0x3c>
    8000192c:	ff878793          	addi	a5,a5,-8
    80001930:	00100713          	li	a4,1
    80001934:	00f77e63          	bgeu	a4,a5,80001950 <_ZN5Riscv11trapHandlerEv+0x54>
        }

        sepc += 4;
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    }
    80001938:	01813083          	ld	ra,24(sp)
    8000193c:	01013403          	ld	s0,16(sp)
    80001940:	00813483          	ld	s1,8(sp)
    80001944:	00013903          	ld	s2,0(sp)
    80001948:	02010113          	addi	sp,sp,32
    8000194c:	00008067          	ret
        asm volatile("mv %0, a0" : "=r"(code));
    80001950:	00050793          	mv	a5,a0
        switch (code) {
    80001954:	01300713          	li	a4,19
    80001958:	04f76463          	bltu	a4,a5,800019a0 <_ZN5Riscv11trapHandlerEv+0xa4>
    8000195c:	00279793          	slli	a5,a5,0x2
    80001960:	00003717          	auipc	a4,0x3
    80001964:	72c70713          	addi	a4,a4,1836 # 8000508c <CONSOLE_STATUS+0x7c>
    80001968:	00e787b3          	add	a5,a5,a4
    8000196c:	0007a783          	lw	a5,0(a5)
    80001970:	00e787b3          	add	a5,a5,a4
    80001974:	00078067          	jr	a5
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001978:	00004917          	auipc	s2,0x4
    8000197c:	0c093903          	ld	s2,192(s2) # 80005a38 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001980:	00093783          	ld	a5,0(s2)
    80001984:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(size));
    80001988:	00058513          	mv	a0,a1
                void* ptr = MemoryAllocator::mem_alloc(size);
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	178080e7          	jalr	376(ra) # 80001b04 <_ZN15MemoryAllocator9mem_allocEm>
                asm volatile("mv a0, %0" :: "r"(ptr));
    80001994:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001998:	00093783          	ld	a5,0(s2)
    8000199c:	04a7b823          	sd	a0,80(a5)
        sepc += 4;
    800019a0:	00448493          	addi	s1,s1,4
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    800019a4:	14149073          	csrw	sepc,s1
    800019a8:	f91ff06f          	j	80001938 <_ZN5Riscv11trapHandlerEv+0x3c>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    800019ac:	00004917          	auipc	s2,0x4
    800019b0:	08c93903          	ld	s2,140(s2) # 80005a38 <_GLOBAL_OFFSET_TABLE_+0x30>
    800019b4:	00093783          	ld	a5,0(s2)
    800019b8:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(addr));
    800019bc:	00058513          	mv	a0,a1
                int status = MemoryAllocator::mem_free(addr);
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	244080e7          	jalr	580(ra) # 80001c04 <_ZN15MemoryAllocator8mem_freeEPv>
                asm volatile("mv a0, %0" :: "r"(status));
    800019c8:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    800019cc:	00093783          	ld	a5,0(s2)
    800019d0:	04a7b823          	sd	a0,80(a5)
                break;
    800019d4:	fcdff06f          	j	800019a0 <_ZN5Riscv11trapHandlerEv+0xa4>
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	2d0080e7          	jalr	720(ra) # 80001ca8 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                asm volatile("mv a0, %0" :: "r"(freeSpace));
    800019e0:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    800019e4:	00004797          	auipc	a5,0x4
    800019e8:	0547b783          	ld	a5,84(a5) # 80005a38 <_GLOBAL_OFFSET_TABLE_+0x30>
    800019ec:	0007b783          	ld	a5,0(a5)
    800019f0:	04a7b823          	sd	a0,80(a5)
                break;
    800019f4:	fadff06f          	j	800019a0 <_ZN5Riscv11trapHandlerEv+0xa4>
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	2f8080e7          	jalr	760(ra) # 80001cf0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                asm volatile("mv a0, %0" :: "r"(largest));
    80001a00:	00050513          	mv	a0,a0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001a04:	00004797          	auipc	a5,0x4
    80001a08:	0347b783          	ld	a5,52(a5) # 80005a38 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001a0c:	0007b783          	ld	a5,0(a5)
    80001a10:	04a7b823          	sd	a0,80(a5)
                break;
    80001a14:	f8dff06f          	j	800019a0 <_ZN5Riscv11trapHandlerEv+0xa4>
                asm volatile("ld a1, 11*8(%0)" :: "r"(framePointer));
    80001a18:	00004797          	auipc	a5,0x4
    80001a1c:	0207b783          	ld	a5,32(a5) # 80005a38 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001a20:	0007b783          	ld	a5,0(a5)
    80001a24:	0587b583          	ld	a1,88(a5)
                asm volatile("mv %0, a1" : "=r"(handle));
    80001a28:	00058913          	mv	s2,a1
                asm volatile("ld a2, 12*8(%0)" :: "r"(framePointer));
    80001a2c:	0607b603          	ld	a2,96(a5)
                asm volatile("mv %0, a2" : "=r"(start_routine));
    80001a30:	00060513          	mv	a0,a2
                asm volatile("ld a3, 13*8(%0)" :: "r"(framePointer));
    80001a34:	0687b683          	ld	a3,104(a5)
                asm volatile("mv %0, a3" : "=r"(args));
    80001a38:	00068593          	mv	a1,a3
                asm volatile("ld a4, 14*8(%0)" :: "r"(framePointer));
    80001a3c:	0707b703          	ld	a4,112(a5)
                asm volatile("mv %0, a4" : "=r"(stack));
    80001a40:	00070613          	mv	a2,a4
                *handle = Thread::createThread(start_routine, args, stack, stackSize);
    80001a44:	000016b7          	lui	a3,0x1
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	924080e7          	jalr	-1756(ra) # 8000136c <_ZN6Thread12createThreadEPFvPvES0_S0_m>
    80001a50:	00a93023          	sd	a0,0(s2)
                if (*handle != nullptr) {
    80001a54:	02050263          	beqz	a0,80001a78 <_ZN5Riscv11trapHandlerEv+0x17c>
                    (*handle)->start();
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	ae4080e7          	jalr	-1308(ra) # 8000153c <_ZN6Thread5startEv>
                    asm volatile("li a0, 0");
    80001a60:	00000513          	li	a0,0
                asm volatile("sd a0, 10*8(%0)" :: "r"(framePointer));
    80001a64:	00004797          	auipc	a5,0x4
    80001a68:	fd47b783          	ld	a5,-44(a5) # 80005a38 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001a6c:	0007b783          	ld	a5,0(a5)
    80001a70:	04a7b823          	sd	a0,80(a5)
                break;
    80001a74:	f2dff06f          	j	800019a0 <_ZN5Riscv11trapHandlerEv+0xa4>
                else asm volatile("li a0, -1");
    80001a78:	fff00513          	li	a0,-1
    80001a7c:	fe9ff06f          	j	80001a64 <_ZN5Riscv11trapHandlerEv+0x168>
                if (Thread::running) {
    80001a80:	00004797          	auipc	a5,0x4
    80001a84:	fa87b783          	ld	a5,-88(a5) # 80005a28 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a88:	0007b503          	ld	a0,0(a5)
    80001a8c:	00050663          	beqz	a0,80001a98 <_ZN5Riscv11trapHandlerEv+0x19c>
                    Thread::running->exit();
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	b18080e7          	jalr	-1256(ra) # 800015a8 <_ZN6Thread4exitEv>
                Thread::dispatch();
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	b30080e7          	jalr	-1232(ra) # 800015c8 <_ZN6Thread8dispatchEv>
                asm volatile("li a0, 0");
    80001aa0:	00000513          	li	a0,0
                break;
    80001aa4:	efdff06f          	j	800019a0 <_ZN5Riscv11trapHandlerEv+0xa4>
                Thread::dispatch();
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	b20080e7          	jalr	-1248(ra) # 800015c8 <_ZN6Thread8dispatchEv>
                break;
    80001ab0:	ef1ff06f          	j	800019a0 <_ZN5Riscv11trapHandlerEv+0xa4>

0000000080001ab4 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80001ab4:	ff010113          	addi	sp,sp,-16
    80001ab8:	00813423          	sd	s0,8(sp)
    80001abc:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80001ac0:	00004697          	auipc	a3,0x4
    80001ac4:	f506b683          	ld	a3,-176(a3) # 80005a10 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ac8:	0006b783          	ld	a5,0(a3)
    80001acc:	00004717          	auipc	a4,0x4
    80001ad0:	fdc70713          	addi	a4,a4,-36 # 80005aa8 <_ZN15MemoryAllocator12freeListHeadE>
    80001ad4:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    80001ad8:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80001adc:	00004797          	auipc	a5,0x4
    80001ae0:	f547b783          	ld	a5,-172(a5) # 80005a30 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ae4:	0007b783          	ld	a5,0(a5)
    80001ae8:	0006b683          	ld	a3,0(a3)
    80001aec:	00073703          	ld	a4,0(a4)
    80001af0:	40d787b3          	sub	a5,a5,a3
    80001af4:	00f73423          	sd	a5,8(a4)
}
    80001af8:	00813403          	ld	s0,8(sp)
    80001afc:	01010113          	addi	sp,sp,16
    80001b00:	00008067          	ret

0000000080001b04 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00813423          	sd	s0,8(sp)
    80001b0c:	01010413          	addi	s0,sp,16
    80001b10:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    80001b14:	00004517          	auipc	a0,0x4
    80001b18:	f9453503          	ld	a0,-108(a0) # 80005aa8 <_ZN15MemoryAllocator12freeListHeadE>
    80001b1c:	06050063          	beqz	a0,80001b7c <_ZN15MemoryAllocator9mem_allocEm+0x78>
    80001b20:	08078a63          	beqz	a5,80001bb4 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    80001b24:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    80001b28:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    80001b2c:	00000613          	li	a2,0
    80001b30:	00c0006f          	j	80001b3c <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    80001b34:	00050613          	mv	a2,a0
        curr = curr->next;
    80001b38:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    80001b3c:	00050663          	beqz	a0,80001b48 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    80001b40:	00853783          	ld	a5,8(a0)
    80001b44:	fee7e8e3          	bltu	a5,a4,80001b34 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    80001b48:	02050a63          	beqz	a0,80001b7c <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    80001b4c:	00853583          	ld	a1,8(a0)
    80001b50:	02068793          	addi	a5,a3,32
    80001b54:	04f5e063          	bltu	a1,a5,80001b94 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    80001b58:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    80001b5c:	40e585b3          	sub	a1,a1,a4
    80001b60:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    80001b64:	00053683          	ld	a3,0(a0)
    80001b68:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    80001b6c:	00060e63          	beqz	a2,80001b88 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80001b70:	00f63023          	sd	a5,0(a2)
        else freeListHead = newBlock;

        curr->size = totalSize;
    80001b74:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
    80001b78:	01050513          	addi	a0,a0,16
}
    80001b7c:	00813403          	ld	s0,8(sp)
    80001b80:	01010113          	addi	sp,sp,16
    80001b84:	00008067          	ret
        else freeListHead = newBlock;
    80001b88:	00004697          	auipc	a3,0x4
    80001b8c:	f2f6b023          	sd	a5,-224(a3) # 80005aa8 <_ZN15MemoryAllocator12freeListHeadE>
    80001b90:	fe5ff06f          	j	80001b74 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    80001b94:	00060863          	beqz	a2,80001ba4 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80001b98:	00053783          	ld	a5,0(a0)
    80001b9c:	00f63023          	sd	a5,0(a2)
    80001ba0:	fd9ff06f          	j	80001b78 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    80001ba4:	00053783          	ld	a5,0(a0)
    80001ba8:	00004717          	auipc	a4,0x4
    80001bac:	f0f73023          	sd	a5,-256(a4) # 80005aa8 <_ZN15MemoryAllocator12freeListHeadE>
    80001bb0:	fc9ff06f          	j	80001b78 <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    80001bb4:	00000513          	li	a0,0
    80001bb8:	fc5ff06f          	j	80001b7c <_ZN15MemoryAllocator9mem_allocEm+0x78>

0000000080001bbc <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    80001bbc:	ff010113          	addi	sp,sp,-16
    80001bc0:	00813423          	sd	s0,8(sp)
    80001bc4:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80001bc8:	00050c63          	beqz	a0,80001be0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    80001bcc:	00053783          	ld	a5,0(a0)
    80001bd0:	00078863          	beqz	a5,80001be0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    80001bd4:	00853703          	ld	a4,8(a0)
    80001bd8:	00e506b3          	add	a3,a0,a4
    80001bdc:	00d78863          	beq	a5,a3,80001bec <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    80001be0:	00813403          	ld	s0,8(sp)
    80001be4:	01010113          	addi	sp,sp,16
    80001be8:	00008067          	ret
        curr->size += curr->next->size;
    80001bec:	0087b683          	ld	a3,8(a5)
    80001bf0:	00d70733          	add	a4,a4,a3
    80001bf4:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    80001bf8:	0007b783          	ld	a5,0(a5)
    80001bfc:	00f53023          	sd	a5,0(a0)
    80001c00:	fe1ff06f          	j	80001be0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

0000000080001c04 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    80001c04:	08050e63          	beqz	a0,80001ca0 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80001c08:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    80001c0c:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    80001c10:	00004797          	auipc	a5,0x4
    80001c14:	e987b783          	ld	a5,-360(a5) # 80005aa8 <_ZN15MemoryAllocator12freeListHeadE>
    80001c18:	02078863          	beqz	a5,80001c48 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    80001c1c:	fe010113          	addi	sp,sp,-32
    80001c20:	00113c23          	sd	ra,24(sp)
    80001c24:	00813823          	sd	s0,16(sp)
    80001c28:	00913423          	sd	s1,8(sp)
    80001c2c:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    80001c30:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    80001c34:	02078463          	beqz	a5,80001c5c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001c38:	02a7f263          	bgeu	a5,a0,80001c5c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    80001c3c:	00078493          	mv	s1,a5
        curr = curr->next;
    80001c40:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    80001c44:	ff1ff06f          	j	80001c34 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    80001c48:	00004797          	auipc	a5,0x4
    80001c4c:	e6a7b023          	sd	a0,-416(a5) # 80005aa8 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    80001c50:	fe073823          	sd	zero,-16(a4)
        return 0;
    80001c54:	00000513          	li	a0,0
    80001c58:	00008067          	ret
    blockToFree->next = curr;
    80001c5c:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    80001c60:	02048a63          	beqz	s1,80001c94 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80001c64:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	f54080e7          	jalr	-172(ra) # 80001bbc <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    80001c70:	00048513          	mv	a0,s1
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	f48080e7          	jalr	-184(ra) # 80001bbc <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    80001c7c:	00000513          	li	a0,0
}
    80001c80:	01813083          	ld	ra,24(sp)
    80001c84:	01013403          	ld	s0,16(sp)
    80001c88:	00813483          	ld	s1,8(sp)
    80001c8c:	02010113          	addi	sp,sp,32
    80001c90:	00008067          	ret
    else freeListHead = blockToFree;
    80001c94:	00004797          	auipc	a5,0x4
    80001c98:	e0a7ba23          	sd	a0,-492(a5) # 80005aa8 <_ZN15MemoryAllocator12freeListHeadE>
    80001c9c:	fcdff06f          	j	80001c68 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    80001ca0:	fff00513          	li	a0,-1
}
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00813423          	sd	s0,8(sp)
    80001cb0:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001cb4:	00004797          	auipc	a5,0x4
    80001cb8:	df47b783          	ld	a5,-524(a5) # 80005aa8 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    80001cbc:	00000513          	li	a0,0
    80001cc0:	0080006f          	j	80001cc8 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001cc4:	0007b783          	ld	a5,0(a5)
    80001cc8:	00078e63          	beqz	a5,80001ce4 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    80001ccc:	0087b703          	ld	a4,8(a5)
    80001cd0:	01000693          	li	a3,16
    80001cd4:	fee6f8e3          	bgeu	a3,a4,80001cc4 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    80001cd8:	00a70533          	add	a0,a4,a0
    80001cdc:	ff050513          	addi	a0,a0,-16
    80001ce0:	fe5ff06f          	j	80001cc4 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    80001ce4:	00813403          	ld	s0,8(sp)
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret

0000000080001cf0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80001cf0:	ff010113          	addi	sp,sp,-16
    80001cf4:	00813423          	sd	s0,8(sp)
    80001cf8:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001cfc:	00004717          	auipc	a4,0x4
    80001d00:	dac73703          	ld	a4,-596(a4) # 80005aa8 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    80001d04:	00000513          	li	a0,0
    80001d08:	0080006f          	j	80001d10 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001d0c:	00073703          	ld	a4,0(a4)
    80001d10:	02070263          	beqz	a4,80001d34 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    80001d14:	00873783          	ld	a5,8(a4)
    80001d18:	01000693          	li	a3,16
    80001d1c:	00d7f463          	bgeu	a5,a3,80001d24 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    80001d20:	01000793          	li	a5,16
    80001d24:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    80001d28:	fef572e3          	bgeu	a0,a5,80001d0c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    80001d2c:	00078513          	mv	a0,a5
    80001d30:	fddff06f          	j	80001d0c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    80001d34:	00813403          	ld	s0,8(sp)
    80001d38:	01010113          	addi	sp,sp,16
    80001d3c:	00008067          	ret

0000000080001d40 <_Z10test_ecallv>:
//

#include "../h/syscall_c.hpp"
#include "../lib/console.h"

void test_ecall() {
    80001d40:	ff010113          	addi	sp,sp,-16
    80001d44:	00813423          	sd	s0,8(sp)
    80001d48:	01010413          	addi	s0,sp,16
    asm volatile (
        "li a0, 0\n"
        "li a7, 0xDE\n"
        "ecall\n"
    );
    80001d4c:	00000513          	li	a0,0
    80001d50:	0de00893          	li	a7,222
    80001d54:	00000073          	ecall
}
    80001d58:	00813403          	ld	s0,8(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret

0000000080001d64 <_Z9printCharc>:

void printChar(char c) { __putc(c); }
    80001d64:	ff010113          	addi	sp,sp,-16
    80001d68:	00113423          	sd	ra,8(sp)
    80001d6c:	00813023          	sd	s0,0(sp)
    80001d70:	01010413          	addi	s0,sp,16
    80001d74:	00002097          	auipc	ra,0x2
    80001d78:	2e8080e7          	jalr	744(ra) # 8000405c <__putc>
    80001d7c:	00813083          	ld	ra,8(sp)
    80001d80:	00013403          	ld	s0,0(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00008067          	ret

0000000080001d8c <_Z11printStringPKc>:
void printString(const char* s) { while (*s) __putc(*s++); }
    80001d8c:	fe010113          	addi	sp,sp,-32
    80001d90:	00113c23          	sd	ra,24(sp)
    80001d94:	00813823          	sd	s0,16(sp)
    80001d98:	00913423          	sd	s1,8(sp)
    80001d9c:	02010413          	addi	s0,sp,32
    80001da0:	00050493          	mv	s1,a0
    80001da4:	0004c503          	lbu	a0,0(s1)
    80001da8:	00050a63          	beqz	a0,80001dbc <_Z11printStringPKc+0x30>
    80001dac:	00148493          	addi	s1,s1,1
    80001db0:	00002097          	auipc	ra,0x2
    80001db4:	2ac080e7          	jalr	684(ra) # 8000405c <__putc>
    80001db8:	fedff06f          	j	80001da4 <_Z11printStringPKc+0x18>
    80001dbc:	01813083          	ld	ra,24(sp)
    80001dc0:	01013403          	ld	s0,16(sp)
    80001dc4:	00813483          	ld	s1,8(sp)
    80001dc8:	02010113          	addi	sp,sp,32
    80001dcc:	00008067          	ret

0000000080001dd0 <_Z11printNumberm>:
void printNumber(size_t num) {
    80001dd0:	fc010113          	addi	sp,sp,-64
    80001dd4:	02113c23          	sd	ra,56(sp)
    80001dd8:	02813823          	sd	s0,48(sp)
    80001ddc:	02913423          	sd	s1,40(sp)
    80001de0:	04010413          	addi	s0,sp,64
    if (num == 0) { __putc('0'); return; }
    80001de4:	02050863          	beqz	a0,80001e14 <_Z11printNumberm+0x44>
    char buf[20]; int i = 0;
    80001de8:	00000793          	li	a5,0
    while (num) { buf[i++] = '0' + (num % 10); num /= 10; }
    80001dec:	04050863          	beqz	a0,80001e3c <_Z11printNumberm+0x6c>
    80001df0:	00a00693          	li	a3,10
    80001df4:	02d57733          	remu	a4,a0,a3
    80001df8:	03070713          	addi	a4,a4,48
    80001dfc:	fe040613          	addi	a2,s0,-32
    80001e00:	00f60633          	add	a2,a2,a5
    80001e04:	fee60423          	sb	a4,-24(a2)
    80001e08:	02d55533          	divu	a0,a0,a3
    80001e0c:	0017879b          	addiw	a5,a5,1
    80001e10:	fddff06f          	j	80001dec <_Z11printNumberm+0x1c>
    if (num == 0) { __putc('0'); return; }
    80001e14:	03000513          	li	a0,48
    80001e18:	00002097          	auipc	ra,0x2
    80001e1c:	244080e7          	jalr	580(ra) # 8000405c <__putc>
    80001e20:	0240006f          	j	80001e44 <_Z11printNumberm+0x74>
    while (i--) __putc(buf[i]);
    80001e24:	fe040793          	addi	a5,s0,-32
    80001e28:	009787b3          	add	a5,a5,s1
    80001e2c:	fe87c503          	lbu	a0,-24(a5)
    80001e30:	00002097          	auipc	ra,0x2
    80001e34:	22c080e7          	jalr	556(ra) # 8000405c <__putc>
    80001e38:	00048793          	mv	a5,s1
    80001e3c:	fff7849b          	addiw	s1,a5,-1
    80001e40:	fe0792e3          	bnez	a5,80001e24 <_Z11printNumberm+0x54>
}
    80001e44:	03813083          	ld	ra,56(sp)
    80001e48:	03013403          	ld	s0,48(sp)
    80001e4c:	02813483          	ld	s1,40(sp)
    80001e50:	04010113          	addi	sp,sp,64
    80001e54:	00008067          	ret

0000000080001e58 <_Z12printPointerPv>:

void printPointer(void* ptr) {
    80001e58:	ff010113          	addi	sp,sp,-16
    80001e5c:	00113423          	sd	ra,8(sp)
    80001e60:	00813023          	sd	s0,0(sp)
    80001e64:	01010413          	addi	s0,sp,16
    printNumber((size_t)ptr);
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	f68080e7          	jalr	-152(ra) # 80001dd0 <_Z11printNumberm>
}
    80001e70:	00813083          	ld	ra,8(sp)
    80001e74:	00013403          	ld	s0,0(sp)
    80001e78:	01010113          	addi	sp,sp,16
    80001e7c:	00008067          	ret

0000000080001e80 <_Z8userMainv>:

void userMain() {
    80001e80:	fe010113          	addi	sp,sp,-32
    80001e84:	00113c23          	sd	ra,24(sp)
    80001e88:	00813823          	sd	s0,16(sp)
    80001e8c:	00913423          	sd	s1,8(sp)
    80001e90:	02010413          	addi	s0,sp,32
    printString("UserMain started\n");
    80001e94:	00003517          	auipc	a0,0x3
    80001e98:	24c50513          	addi	a0,a0,588 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	ef0080e7          	jalr	-272(ra) # 80001d8c <_Z11printStringPKc>

    printString("Free space: ");
    80001ea4:	00003517          	auipc	a0,0x3
    80001ea8:	25450513          	addi	a0,a0,596 # 800050f8 <CONSOLE_STATUS+0xe8>
    80001eac:	00000097          	auipc	ra,0x0
    80001eb0:	ee0080e7          	jalr	-288(ra) # 80001d8c <_Z11printStringPKc>
    printNumber(mem_get_free_space());
    80001eb4:	fffff097          	auipc	ra,0xfffff
    80001eb8:	300080e7          	jalr	768(ra) # 800011b4 <_Z18mem_get_free_spacev>
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	f14080e7          	jalr	-236(ra) # 80001dd0 <_Z11printNumberm>
    printString("\n");
    80001ec4:	00003517          	auipc	a0,0x3
    80001ec8:	27c50513          	addi	a0,a0,636 # 80005140 <CONSOLE_STATUS+0x130>
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	ec0080e7          	jalr	-320(ra) # 80001d8c <_Z11printStringPKc>

    void* p1 = mem_alloc(160);
    80001ed4:	0a000513          	li	a0,160
    80001ed8:	fffff097          	auipc	ra,0xfffff
    80001edc:	26c080e7          	jalr	620(ra) # 80001144 <_Z9mem_allocm>
    80001ee0:	00050493          	mv	s1,a0
    printString("Allocated: "); printNumber((size_t)p1); printString("\n");
    80001ee4:	00003517          	auipc	a0,0x3
    80001ee8:	22450513          	addi	a0,a0,548 # 80005108 <CONSOLE_STATUS+0xf8>
    80001eec:	00000097          	auipc	ra,0x0
    80001ef0:	ea0080e7          	jalr	-352(ra) # 80001d8c <_Z11printStringPKc>
    80001ef4:	00048513          	mv	a0,s1
    80001ef8:	00000097          	auipc	ra,0x0
    80001efc:	ed8080e7          	jalr	-296(ra) # 80001dd0 <_Z11printNumberm>
    80001f00:	00003517          	auipc	a0,0x3
    80001f04:	24050513          	addi	a0,a0,576 # 80005140 <CONSOLE_STATUS+0x130>
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	e84080e7          	jalr	-380(ra) # 80001d8c <_Z11printStringPKc>

    printString("Free space after alloc: ");
    80001f10:	00003517          	auipc	a0,0x3
    80001f14:	20850513          	addi	a0,a0,520 # 80005118 <CONSOLE_STATUS+0x108>
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	e74080e7          	jalr	-396(ra) # 80001d8c <_Z11printStringPKc>
    printNumber(mem_get_free_space());
    80001f20:	fffff097          	auipc	ra,0xfffff
    80001f24:	294080e7          	jalr	660(ra) # 800011b4 <_Z18mem_get_free_spacev>
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	ea8080e7          	jalr	-344(ra) # 80001dd0 <_Z11printNumberm>
    printString("\n");
    80001f30:	00003517          	auipc	a0,0x3
    80001f34:	21050513          	addi	a0,a0,528 # 80005140 <CONSOLE_STATUS+0x130>
    80001f38:	00000097          	auipc	ra,0x0
    80001f3c:	e54080e7          	jalr	-428(ra) # 80001d8c <_Z11printStringPKc>

    mem_free(p1);
    80001f40:	00048513          	mv	a0,s1
    80001f44:	fffff097          	auipc	ra,0xfffff
    80001f48:	244080e7          	jalr	580(ra) # 80001188 <_Z8mem_freePv>
    printString("Freed p1\n");
    80001f4c:	00003517          	auipc	a0,0x3
    80001f50:	1ec50513          	addi	a0,a0,492 # 80005138 <CONSOLE_STATUS+0x128>
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	e38080e7          	jalr	-456(ra) # 80001d8c <_Z11printStringPKc>

    printString("Free space after free: ");
    80001f5c:	00003517          	auipc	a0,0x3
    80001f60:	1ec50513          	addi	a0,a0,492 # 80005148 <CONSOLE_STATUS+0x138>
    80001f64:	00000097          	auipc	ra,0x0
    80001f68:	e28080e7          	jalr	-472(ra) # 80001d8c <_Z11printStringPKc>
    printNumber(mem_get_free_space());
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	248080e7          	jalr	584(ra) # 800011b4 <_Z18mem_get_free_spacev>
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	e5c080e7          	jalr	-420(ra) # 80001dd0 <_Z11printNumberm>
    printString("\n");
    80001f7c:	00003517          	auipc	a0,0x3
    80001f80:	1c450513          	addi	a0,a0,452 # 80005140 <CONSOLE_STATUS+0x130>
    80001f84:	00000097          	auipc	ra,0x0
    80001f88:	e08080e7          	jalr	-504(ra) # 80001d8c <_Z11printStringPKc>
    // printString("Pre ecall\n");
    //
    // test_ecall();
    //
    // printString("After ecall\n");
}
    80001f8c:	01813083          	ld	ra,24(sp)
    80001f90:	01013403          	ld	s0,16(sp)
    80001f94:	00813483          	ld	s1,8(sp)
    80001f98:	02010113          	addi	sp,sp,32
    80001f9c:	00008067          	ret

0000000080001fa0 <start>:
    80001fa0:	ff010113          	addi	sp,sp,-16
    80001fa4:	00813423          	sd	s0,8(sp)
    80001fa8:	01010413          	addi	s0,sp,16
    80001fac:	300027f3          	csrr	a5,mstatus
    80001fb0:	ffffe737          	lui	a4,0xffffe
    80001fb4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7aef>
    80001fb8:	00e7f7b3          	and	a5,a5,a4
    80001fbc:	00001737          	lui	a4,0x1
    80001fc0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001fc4:	00e7e7b3          	or	a5,a5,a4
    80001fc8:	30079073          	csrw	mstatus,a5
    80001fcc:	00000797          	auipc	a5,0x0
    80001fd0:	16078793          	addi	a5,a5,352 # 8000212c <system_main>
    80001fd4:	34179073          	csrw	mepc,a5
    80001fd8:	00000793          	li	a5,0
    80001fdc:	18079073          	csrw	satp,a5
    80001fe0:	000107b7          	lui	a5,0x10
    80001fe4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001fe8:	30279073          	csrw	medeleg,a5
    80001fec:	30379073          	csrw	mideleg,a5
    80001ff0:	104027f3          	csrr	a5,sie
    80001ff4:	2227e793          	ori	a5,a5,546
    80001ff8:	10479073          	csrw	sie,a5
    80001ffc:	fff00793          	li	a5,-1
    80002000:	00a7d793          	srli	a5,a5,0xa
    80002004:	3b079073          	csrw	pmpaddr0,a5
    80002008:	00f00793          	li	a5,15
    8000200c:	3a079073          	csrw	pmpcfg0,a5
    80002010:	f14027f3          	csrr	a5,mhartid
    80002014:	0200c737          	lui	a4,0x200c
    80002018:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000201c:	0007869b          	sext.w	a3,a5
    80002020:	00269713          	slli	a4,a3,0x2
    80002024:	000f4637          	lui	a2,0xf4
    80002028:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000202c:	00d70733          	add	a4,a4,a3
    80002030:	0037979b          	slliw	a5,a5,0x3
    80002034:	020046b7          	lui	a3,0x2004
    80002038:	00d787b3          	add	a5,a5,a3
    8000203c:	00c585b3          	add	a1,a1,a2
    80002040:	00371693          	slli	a3,a4,0x3
    80002044:	00004717          	auipc	a4,0x4
    80002048:	a6c70713          	addi	a4,a4,-1428 # 80005ab0 <timer_scratch>
    8000204c:	00b7b023          	sd	a1,0(a5)
    80002050:	00d70733          	add	a4,a4,a3
    80002054:	00f73c23          	sd	a5,24(a4)
    80002058:	02c73023          	sd	a2,32(a4)
    8000205c:	34071073          	csrw	mscratch,a4
    80002060:	00000797          	auipc	a5,0x0
    80002064:	6e078793          	addi	a5,a5,1760 # 80002740 <timervec>
    80002068:	30579073          	csrw	mtvec,a5
    8000206c:	300027f3          	csrr	a5,mstatus
    80002070:	0087e793          	ori	a5,a5,8
    80002074:	30079073          	csrw	mstatus,a5
    80002078:	304027f3          	csrr	a5,mie
    8000207c:	0807e793          	ori	a5,a5,128
    80002080:	30479073          	csrw	mie,a5
    80002084:	f14027f3          	csrr	a5,mhartid
    80002088:	0007879b          	sext.w	a5,a5
    8000208c:	00078213          	mv	tp,a5
    80002090:	30200073          	mret
    80002094:	00813403          	ld	s0,8(sp)
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret

00000000800020a0 <timerinit>:
    800020a0:	ff010113          	addi	sp,sp,-16
    800020a4:	00813423          	sd	s0,8(sp)
    800020a8:	01010413          	addi	s0,sp,16
    800020ac:	f14027f3          	csrr	a5,mhartid
    800020b0:	0200c737          	lui	a4,0x200c
    800020b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800020b8:	0007869b          	sext.w	a3,a5
    800020bc:	00269713          	slli	a4,a3,0x2
    800020c0:	000f4637          	lui	a2,0xf4
    800020c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800020c8:	00d70733          	add	a4,a4,a3
    800020cc:	0037979b          	slliw	a5,a5,0x3
    800020d0:	020046b7          	lui	a3,0x2004
    800020d4:	00d787b3          	add	a5,a5,a3
    800020d8:	00c585b3          	add	a1,a1,a2
    800020dc:	00371693          	slli	a3,a4,0x3
    800020e0:	00004717          	auipc	a4,0x4
    800020e4:	9d070713          	addi	a4,a4,-1584 # 80005ab0 <timer_scratch>
    800020e8:	00b7b023          	sd	a1,0(a5)
    800020ec:	00d70733          	add	a4,a4,a3
    800020f0:	00f73c23          	sd	a5,24(a4)
    800020f4:	02c73023          	sd	a2,32(a4)
    800020f8:	34071073          	csrw	mscratch,a4
    800020fc:	00000797          	auipc	a5,0x0
    80002100:	64478793          	addi	a5,a5,1604 # 80002740 <timervec>
    80002104:	30579073          	csrw	mtvec,a5
    80002108:	300027f3          	csrr	a5,mstatus
    8000210c:	0087e793          	ori	a5,a5,8
    80002110:	30079073          	csrw	mstatus,a5
    80002114:	304027f3          	csrr	a5,mie
    80002118:	0807e793          	ori	a5,a5,128
    8000211c:	30479073          	csrw	mie,a5
    80002120:	00813403          	ld	s0,8(sp)
    80002124:	01010113          	addi	sp,sp,16
    80002128:	00008067          	ret

000000008000212c <system_main>:
    8000212c:	fe010113          	addi	sp,sp,-32
    80002130:	00813823          	sd	s0,16(sp)
    80002134:	00913423          	sd	s1,8(sp)
    80002138:	00113c23          	sd	ra,24(sp)
    8000213c:	02010413          	addi	s0,sp,32
    80002140:	00000097          	auipc	ra,0x0
    80002144:	0c4080e7          	jalr	196(ra) # 80002204 <cpuid>
    80002148:	00004497          	auipc	s1,0x4
    8000214c:	90848493          	addi	s1,s1,-1784 # 80005a50 <started>
    80002150:	02050263          	beqz	a0,80002174 <system_main+0x48>
    80002154:	0004a783          	lw	a5,0(s1)
    80002158:	0007879b          	sext.w	a5,a5
    8000215c:	fe078ce3          	beqz	a5,80002154 <system_main+0x28>
    80002160:	0ff0000f          	fence
    80002164:	00003517          	auipc	a0,0x3
    80002168:	02c50513          	addi	a0,a0,44 # 80005190 <CONSOLE_STATUS+0x180>
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	a70080e7          	jalr	-1424(ra) # 80002bdc <panic>
    80002174:	00001097          	auipc	ra,0x1
    80002178:	9c4080e7          	jalr	-1596(ra) # 80002b38 <consoleinit>
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	150080e7          	jalr	336(ra) # 800032cc <printfinit>
    80002184:	00003517          	auipc	a0,0x3
    80002188:	fbc50513          	addi	a0,a0,-68 # 80005140 <CONSOLE_STATUS+0x130>
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	aac080e7          	jalr	-1364(ra) # 80002c38 <__printf>
    80002194:	00003517          	auipc	a0,0x3
    80002198:	fcc50513          	addi	a0,a0,-52 # 80005160 <CONSOLE_STATUS+0x150>
    8000219c:	00001097          	auipc	ra,0x1
    800021a0:	a9c080e7          	jalr	-1380(ra) # 80002c38 <__printf>
    800021a4:	00003517          	auipc	a0,0x3
    800021a8:	f9c50513          	addi	a0,a0,-100 # 80005140 <CONSOLE_STATUS+0x130>
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	a8c080e7          	jalr	-1396(ra) # 80002c38 <__printf>
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	4a4080e7          	jalr	1188(ra) # 80003658 <kinit>
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	148080e7          	jalr	328(ra) # 80002304 <trapinit>
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	16c080e7          	jalr	364(ra) # 80002330 <trapinithart>
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	5b4080e7          	jalr	1460(ra) # 80002780 <plicinit>
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	5d4080e7          	jalr	1492(ra) # 800027a8 <plicinithart>
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	078080e7          	jalr	120(ra) # 80002254 <userinit>
    800021e4:	0ff0000f          	fence
    800021e8:	00100793          	li	a5,1
    800021ec:	00003517          	auipc	a0,0x3
    800021f0:	f8c50513          	addi	a0,a0,-116 # 80005178 <CONSOLE_STATUS+0x168>
    800021f4:	00f4a023          	sw	a5,0(s1)
    800021f8:	00001097          	auipc	ra,0x1
    800021fc:	a40080e7          	jalr	-1472(ra) # 80002c38 <__printf>
    80002200:	0000006f          	j	80002200 <system_main+0xd4>

0000000080002204 <cpuid>:
    80002204:	ff010113          	addi	sp,sp,-16
    80002208:	00813423          	sd	s0,8(sp)
    8000220c:	01010413          	addi	s0,sp,16
    80002210:	00020513          	mv	a0,tp
    80002214:	00813403          	ld	s0,8(sp)
    80002218:	0005051b          	sext.w	a0,a0
    8000221c:	01010113          	addi	sp,sp,16
    80002220:	00008067          	ret

0000000080002224 <mycpu>:
    80002224:	ff010113          	addi	sp,sp,-16
    80002228:	00813423          	sd	s0,8(sp)
    8000222c:	01010413          	addi	s0,sp,16
    80002230:	00020793          	mv	a5,tp
    80002234:	00813403          	ld	s0,8(sp)
    80002238:	0007879b          	sext.w	a5,a5
    8000223c:	00779793          	slli	a5,a5,0x7
    80002240:	00005517          	auipc	a0,0x5
    80002244:	8a050513          	addi	a0,a0,-1888 # 80006ae0 <cpus>
    80002248:	00f50533          	add	a0,a0,a5
    8000224c:	01010113          	addi	sp,sp,16
    80002250:	00008067          	ret

0000000080002254 <userinit>:
    80002254:	ff010113          	addi	sp,sp,-16
    80002258:	00813423          	sd	s0,8(sp)
    8000225c:	01010413          	addi	s0,sp,16
    80002260:	00813403          	ld	s0,8(sp)
    80002264:	01010113          	addi	sp,sp,16
    80002268:	fffff317          	auipc	t1,0xfffff
    8000226c:	59c30067          	jr	1436(t1) # 80001804 <main>

0000000080002270 <either_copyout>:
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00813023          	sd	s0,0(sp)
    80002278:	00113423          	sd	ra,8(sp)
    8000227c:	01010413          	addi	s0,sp,16
    80002280:	02051663          	bnez	a0,800022ac <either_copyout+0x3c>
    80002284:	00058513          	mv	a0,a1
    80002288:	00060593          	mv	a1,a2
    8000228c:	0006861b          	sext.w	a2,a3
    80002290:	00002097          	auipc	ra,0x2
    80002294:	c54080e7          	jalr	-940(ra) # 80003ee4 <__memmove>
    80002298:	00813083          	ld	ra,8(sp)
    8000229c:	00013403          	ld	s0,0(sp)
    800022a0:	00000513          	li	a0,0
    800022a4:	01010113          	addi	sp,sp,16
    800022a8:	00008067          	ret
    800022ac:	00003517          	auipc	a0,0x3
    800022b0:	f0c50513          	addi	a0,a0,-244 # 800051b8 <CONSOLE_STATUS+0x1a8>
    800022b4:	00001097          	auipc	ra,0x1
    800022b8:	928080e7          	jalr	-1752(ra) # 80002bdc <panic>

00000000800022bc <either_copyin>:
    800022bc:	ff010113          	addi	sp,sp,-16
    800022c0:	00813023          	sd	s0,0(sp)
    800022c4:	00113423          	sd	ra,8(sp)
    800022c8:	01010413          	addi	s0,sp,16
    800022cc:	02059463          	bnez	a1,800022f4 <either_copyin+0x38>
    800022d0:	00060593          	mv	a1,a2
    800022d4:	0006861b          	sext.w	a2,a3
    800022d8:	00002097          	auipc	ra,0x2
    800022dc:	c0c080e7          	jalr	-1012(ra) # 80003ee4 <__memmove>
    800022e0:	00813083          	ld	ra,8(sp)
    800022e4:	00013403          	ld	s0,0(sp)
    800022e8:	00000513          	li	a0,0
    800022ec:	01010113          	addi	sp,sp,16
    800022f0:	00008067          	ret
    800022f4:	00003517          	auipc	a0,0x3
    800022f8:	eec50513          	addi	a0,a0,-276 # 800051e0 <CONSOLE_STATUS+0x1d0>
    800022fc:	00001097          	auipc	ra,0x1
    80002300:	8e0080e7          	jalr	-1824(ra) # 80002bdc <panic>

0000000080002304 <trapinit>:
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00813423          	sd	s0,8(sp)
    8000230c:	01010413          	addi	s0,sp,16
    80002310:	00813403          	ld	s0,8(sp)
    80002314:	00003597          	auipc	a1,0x3
    80002318:	ef458593          	addi	a1,a1,-268 # 80005208 <CONSOLE_STATUS+0x1f8>
    8000231c:	00005517          	auipc	a0,0x5
    80002320:	84450513          	addi	a0,a0,-1980 # 80006b60 <tickslock>
    80002324:	01010113          	addi	sp,sp,16
    80002328:	00001317          	auipc	t1,0x1
    8000232c:	5c030067          	jr	1472(t1) # 800038e8 <initlock>

0000000080002330 <trapinithart>:
    80002330:	ff010113          	addi	sp,sp,-16
    80002334:	00813423          	sd	s0,8(sp)
    80002338:	01010413          	addi	s0,sp,16
    8000233c:	00000797          	auipc	a5,0x0
    80002340:	2f478793          	addi	a5,a5,756 # 80002630 <kernelvec>
    80002344:	10579073          	csrw	stvec,a5
    80002348:	00813403          	ld	s0,8(sp)
    8000234c:	01010113          	addi	sp,sp,16
    80002350:	00008067          	ret

0000000080002354 <usertrap>:
    80002354:	ff010113          	addi	sp,sp,-16
    80002358:	00813423          	sd	s0,8(sp)
    8000235c:	01010413          	addi	s0,sp,16
    80002360:	00813403          	ld	s0,8(sp)
    80002364:	01010113          	addi	sp,sp,16
    80002368:	00008067          	ret

000000008000236c <usertrapret>:
    8000236c:	ff010113          	addi	sp,sp,-16
    80002370:	00813423          	sd	s0,8(sp)
    80002374:	01010413          	addi	s0,sp,16
    80002378:	00813403          	ld	s0,8(sp)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret

0000000080002384 <kerneltrap>:
    80002384:	fe010113          	addi	sp,sp,-32
    80002388:	00813823          	sd	s0,16(sp)
    8000238c:	00113c23          	sd	ra,24(sp)
    80002390:	00913423          	sd	s1,8(sp)
    80002394:	02010413          	addi	s0,sp,32
    80002398:	142025f3          	csrr	a1,scause
    8000239c:	100027f3          	csrr	a5,sstatus
    800023a0:	0027f793          	andi	a5,a5,2
    800023a4:	10079c63          	bnez	a5,800024bc <kerneltrap+0x138>
    800023a8:	142027f3          	csrr	a5,scause
    800023ac:	0207ce63          	bltz	a5,800023e8 <kerneltrap+0x64>
    800023b0:	00003517          	auipc	a0,0x3
    800023b4:	ea050513          	addi	a0,a0,-352 # 80005250 <CONSOLE_STATUS+0x240>
    800023b8:	00001097          	auipc	ra,0x1
    800023bc:	880080e7          	jalr	-1920(ra) # 80002c38 <__printf>
    800023c0:	141025f3          	csrr	a1,sepc
    800023c4:	14302673          	csrr	a2,stval
    800023c8:	00003517          	auipc	a0,0x3
    800023cc:	e9850513          	addi	a0,a0,-360 # 80005260 <CONSOLE_STATUS+0x250>
    800023d0:	00001097          	auipc	ra,0x1
    800023d4:	868080e7          	jalr	-1944(ra) # 80002c38 <__printf>
    800023d8:	00003517          	auipc	a0,0x3
    800023dc:	ea050513          	addi	a0,a0,-352 # 80005278 <CONSOLE_STATUS+0x268>
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	7fc080e7          	jalr	2044(ra) # 80002bdc <panic>
    800023e8:	0ff7f713          	andi	a4,a5,255
    800023ec:	00900693          	li	a3,9
    800023f0:	04d70063          	beq	a4,a3,80002430 <kerneltrap+0xac>
    800023f4:	fff00713          	li	a4,-1
    800023f8:	03f71713          	slli	a4,a4,0x3f
    800023fc:	00170713          	addi	a4,a4,1
    80002400:	fae798e3          	bne	a5,a4,800023b0 <kerneltrap+0x2c>
    80002404:	00000097          	auipc	ra,0x0
    80002408:	e00080e7          	jalr	-512(ra) # 80002204 <cpuid>
    8000240c:	06050663          	beqz	a0,80002478 <kerneltrap+0xf4>
    80002410:	144027f3          	csrr	a5,sip
    80002414:	ffd7f793          	andi	a5,a5,-3
    80002418:	14479073          	csrw	sip,a5
    8000241c:	01813083          	ld	ra,24(sp)
    80002420:	01013403          	ld	s0,16(sp)
    80002424:	00813483          	ld	s1,8(sp)
    80002428:	02010113          	addi	sp,sp,32
    8000242c:	00008067          	ret
    80002430:	00000097          	auipc	ra,0x0
    80002434:	3c4080e7          	jalr	964(ra) # 800027f4 <plic_claim>
    80002438:	00a00793          	li	a5,10
    8000243c:	00050493          	mv	s1,a0
    80002440:	06f50863          	beq	a0,a5,800024b0 <kerneltrap+0x12c>
    80002444:	fc050ce3          	beqz	a0,8000241c <kerneltrap+0x98>
    80002448:	00050593          	mv	a1,a0
    8000244c:	00003517          	auipc	a0,0x3
    80002450:	de450513          	addi	a0,a0,-540 # 80005230 <CONSOLE_STATUS+0x220>
    80002454:	00000097          	auipc	ra,0x0
    80002458:	7e4080e7          	jalr	2020(ra) # 80002c38 <__printf>
    8000245c:	01013403          	ld	s0,16(sp)
    80002460:	01813083          	ld	ra,24(sp)
    80002464:	00048513          	mv	a0,s1
    80002468:	00813483          	ld	s1,8(sp)
    8000246c:	02010113          	addi	sp,sp,32
    80002470:	00000317          	auipc	t1,0x0
    80002474:	3bc30067          	jr	956(t1) # 8000282c <plic_complete>
    80002478:	00004517          	auipc	a0,0x4
    8000247c:	6e850513          	addi	a0,a0,1768 # 80006b60 <tickslock>
    80002480:	00001097          	auipc	ra,0x1
    80002484:	48c080e7          	jalr	1164(ra) # 8000390c <acquire>
    80002488:	00003717          	auipc	a4,0x3
    8000248c:	5cc70713          	addi	a4,a4,1484 # 80005a54 <ticks>
    80002490:	00072783          	lw	a5,0(a4)
    80002494:	00004517          	auipc	a0,0x4
    80002498:	6cc50513          	addi	a0,a0,1740 # 80006b60 <tickslock>
    8000249c:	0017879b          	addiw	a5,a5,1
    800024a0:	00f72023          	sw	a5,0(a4)
    800024a4:	00001097          	auipc	ra,0x1
    800024a8:	534080e7          	jalr	1332(ra) # 800039d8 <release>
    800024ac:	f65ff06f          	j	80002410 <kerneltrap+0x8c>
    800024b0:	00001097          	auipc	ra,0x1
    800024b4:	090080e7          	jalr	144(ra) # 80003540 <uartintr>
    800024b8:	fa5ff06f          	j	8000245c <kerneltrap+0xd8>
    800024bc:	00003517          	auipc	a0,0x3
    800024c0:	d5450513          	addi	a0,a0,-684 # 80005210 <CONSOLE_STATUS+0x200>
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	718080e7          	jalr	1816(ra) # 80002bdc <panic>

00000000800024cc <clockintr>:
    800024cc:	fe010113          	addi	sp,sp,-32
    800024d0:	00813823          	sd	s0,16(sp)
    800024d4:	00913423          	sd	s1,8(sp)
    800024d8:	00113c23          	sd	ra,24(sp)
    800024dc:	02010413          	addi	s0,sp,32
    800024e0:	00004497          	auipc	s1,0x4
    800024e4:	68048493          	addi	s1,s1,1664 # 80006b60 <tickslock>
    800024e8:	00048513          	mv	a0,s1
    800024ec:	00001097          	auipc	ra,0x1
    800024f0:	420080e7          	jalr	1056(ra) # 8000390c <acquire>
    800024f4:	00003717          	auipc	a4,0x3
    800024f8:	56070713          	addi	a4,a4,1376 # 80005a54 <ticks>
    800024fc:	00072783          	lw	a5,0(a4)
    80002500:	01013403          	ld	s0,16(sp)
    80002504:	01813083          	ld	ra,24(sp)
    80002508:	00048513          	mv	a0,s1
    8000250c:	0017879b          	addiw	a5,a5,1
    80002510:	00813483          	ld	s1,8(sp)
    80002514:	00f72023          	sw	a5,0(a4)
    80002518:	02010113          	addi	sp,sp,32
    8000251c:	00001317          	auipc	t1,0x1
    80002520:	4bc30067          	jr	1212(t1) # 800039d8 <release>

0000000080002524 <devintr>:
    80002524:	142027f3          	csrr	a5,scause
    80002528:	00000513          	li	a0,0
    8000252c:	0007c463          	bltz	a5,80002534 <devintr+0x10>
    80002530:	00008067          	ret
    80002534:	fe010113          	addi	sp,sp,-32
    80002538:	00813823          	sd	s0,16(sp)
    8000253c:	00113c23          	sd	ra,24(sp)
    80002540:	00913423          	sd	s1,8(sp)
    80002544:	02010413          	addi	s0,sp,32
    80002548:	0ff7f713          	andi	a4,a5,255
    8000254c:	00900693          	li	a3,9
    80002550:	04d70c63          	beq	a4,a3,800025a8 <devintr+0x84>
    80002554:	fff00713          	li	a4,-1
    80002558:	03f71713          	slli	a4,a4,0x3f
    8000255c:	00170713          	addi	a4,a4,1
    80002560:	00e78c63          	beq	a5,a4,80002578 <devintr+0x54>
    80002564:	01813083          	ld	ra,24(sp)
    80002568:	01013403          	ld	s0,16(sp)
    8000256c:	00813483          	ld	s1,8(sp)
    80002570:	02010113          	addi	sp,sp,32
    80002574:	00008067          	ret
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	c8c080e7          	jalr	-884(ra) # 80002204 <cpuid>
    80002580:	06050663          	beqz	a0,800025ec <devintr+0xc8>
    80002584:	144027f3          	csrr	a5,sip
    80002588:	ffd7f793          	andi	a5,a5,-3
    8000258c:	14479073          	csrw	sip,a5
    80002590:	01813083          	ld	ra,24(sp)
    80002594:	01013403          	ld	s0,16(sp)
    80002598:	00813483          	ld	s1,8(sp)
    8000259c:	00200513          	li	a0,2
    800025a0:	02010113          	addi	sp,sp,32
    800025a4:	00008067          	ret
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	24c080e7          	jalr	588(ra) # 800027f4 <plic_claim>
    800025b0:	00a00793          	li	a5,10
    800025b4:	00050493          	mv	s1,a0
    800025b8:	06f50663          	beq	a0,a5,80002624 <devintr+0x100>
    800025bc:	00100513          	li	a0,1
    800025c0:	fa0482e3          	beqz	s1,80002564 <devintr+0x40>
    800025c4:	00048593          	mv	a1,s1
    800025c8:	00003517          	auipc	a0,0x3
    800025cc:	c6850513          	addi	a0,a0,-920 # 80005230 <CONSOLE_STATUS+0x220>
    800025d0:	00000097          	auipc	ra,0x0
    800025d4:	668080e7          	jalr	1640(ra) # 80002c38 <__printf>
    800025d8:	00048513          	mv	a0,s1
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	250080e7          	jalr	592(ra) # 8000282c <plic_complete>
    800025e4:	00100513          	li	a0,1
    800025e8:	f7dff06f          	j	80002564 <devintr+0x40>
    800025ec:	00004517          	auipc	a0,0x4
    800025f0:	57450513          	addi	a0,a0,1396 # 80006b60 <tickslock>
    800025f4:	00001097          	auipc	ra,0x1
    800025f8:	318080e7          	jalr	792(ra) # 8000390c <acquire>
    800025fc:	00003717          	auipc	a4,0x3
    80002600:	45870713          	addi	a4,a4,1112 # 80005a54 <ticks>
    80002604:	00072783          	lw	a5,0(a4)
    80002608:	00004517          	auipc	a0,0x4
    8000260c:	55850513          	addi	a0,a0,1368 # 80006b60 <tickslock>
    80002610:	0017879b          	addiw	a5,a5,1
    80002614:	00f72023          	sw	a5,0(a4)
    80002618:	00001097          	auipc	ra,0x1
    8000261c:	3c0080e7          	jalr	960(ra) # 800039d8 <release>
    80002620:	f65ff06f          	j	80002584 <devintr+0x60>
    80002624:	00001097          	auipc	ra,0x1
    80002628:	f1c080e7          	jalr	-228(ra) # 80003540 <uartintr>
    8000262c:	fadff06f          	j	800025d8 <devintr+0xb4>

0000000080002630 <kernelvec>:
    80002630:	f0010113          	addi	sp,sp,-256
    80002634:	00113023          	sd	ra,0(sp)
    80002638:	00213423          	sd	sp,8(sp)
    8000263c:	00313823          	sd	gp,16(sp)
    80002640:	00413c23          	sd	tp,24(sp)
    80002644:	02513023          	sd	t0,32(sp)
    80002648:	02613423          	sd	t1,40(sp)
    8000264c:	02713823          	sd	t2,48(sp)
    80002650:	02813c23          	sd	s0,56(sp)
    80002654:	04913023          	sd	s1,64(sp)
    80002658:	04a13423          	sd	a0,72(sp)
    8000265c:	04b13823          	sd	a1,80(sp)
    80002660:	04c13c23          	sd	a2,88(sp)
    80002664:	06d13023          	sd	a3,96(sp)
    80002668:	06e13423          	sd	a4,104(sp)
    8000266c:	06f13823          	sd	a5,112(sp)
    80002670:	07013c23          	sd	a6,120(sp)
    80002674:	09113023          	sd	a7,128(sp)
    80002678:	09213423          	sd	s2,136(sp)
    8000267c:	09313823          	sd	s3,144(sp)
    80002680:	09413c23          	sd	s4,152(sp)
    80002684:	0b513023          	sd	s5,160(sp)
    80002688:	0b613423          	sd	s6,168(sp)
    8000268c:	0b713823          	sd	s7,176(sp)
    80002690:	0b813c23          	sd	s8,184(sp)
    80002694:	0d913023          	sd	s9,192(sp)
    80002698:	0da13423          	sd	s10,200(sp)
    8000269c:	0db13823          	sd	s11,208(sp)
    800026a0:	0dc13c23          	sd	t3,216(sp)
    800026a4:	0fd13023          	sd	t4,224(sp)
    800026a8:	0fe13423          	sd	t5,232(sp)
    800026ac:	0ff13823          	sd	t6,240(sp)
    800026b0:	cd5ff0ef          	jal	ra,80002384 <kerneltrap>
    800026b4:	00013083          	ld	ra,0(sp)
    800026b8:	00813103          	ld	sp,8(sp)
    800026bc:	01013183          	ld	gp,16(sp)
    800026c0:	02013283          	ld	t0,32(sp)
    800026c4:	02813303          	ld	t1,40(sp)
    800026c8:	03013383          	ld	t2,48(sp)
    800026cc:	03813403          	ld	s0,56(sp)
    800026d0:	04013483          	ld	s1,64(sp)
    800026d4:	04813503          	ld	a0,72(sp)
    800026d8:	05013583          	ld	a1,80(sp)
    800026dc:	05813603          	ld	a2,88(sp)
    800026e0:	06013683          	ld	a3,96(sp)
    800026e4:	06813703          	ld	a4,104(sp)
    800026e8:	07013783          	ld	a5,112(sp)
    800026ec:	07813803          	ld	a6,120(sp)
    800026f0:	08013883          	ld	a7,128(sp)
    800026f4:	08813903          	ld	s2,136(sp)
    800026f8:	09013983          	ld	s3,144(sp)
    800026fc:	09813a03          	ld	s4,152(sp)
    80002700:	0a013a83          	ld	s5,160(sp)
    80002704:	0a813b03          	ld	s6,168(sp)
    80002708:	0b013b83          	ld	s7,176(sp)
    8000270c:	0b813c03          	ld	s8,184(sp)
    80002710:	0c013c83          	ld	s9,192(sp)
    80002714:	0c813d03          	ld	s10,200(sp)
    80002718:	0d013d83          	ld	s11,208(sp)
    8000271c:	0d813e03          	ld	t3,216(sp)
    80002720:	0e013e83          	ld	t4,224(sp)
    80002724:	0e813f03          	ld	t5,232(sp)
    80002728:	0f013f83          	ld	t6,240(sp)
    8000272c:	10010113          	addi	sp,sp,256
    80002730:	10200073          	sret
    80002734:	00000013          	nop
    80002738:	00000013          	nop
    8000273c:	00000013          	nop

0000000080002740 <timervec>:
    80002740:	34051573          	csrrw	a0,mscratch,a0
    80002744:	00b53023          	sd	a1,0(a0)
    80002748:	00c53423          	sd	a2,8(a0)
    8000274c:	00d53823          	sd	a3,16(a0)
    80002750:	01853583          	ld	a1,24(a0)
    80002754:	02053603          	ld	a2,32(a0)
    80002758:	0005b683          	ld	a3,0(a1)
    8000275c:	00c686b3          	add	a3,a3,a2
    80002760:	00d5b023          	sd	a3,0(a1)
    80002764:	00200593          	li	a1,2
    80002768:	14459073          	csrw	sip,a1
    8000276c:	01053683          	ld	a3,16(a0)
    80002770:	00853603          	ld	a2,8(a0)
    80002774:	00053583          	ld	a1,0(a0)
    80002778:	34051573          	csrrw	a0,mscratch,a0
    8000277c:	30200073          	mret

0000000080002780 <plicinit>:
    80002780:	ff010113          	addi	sp,sp,-16
    80002784:	00813423          	sd	s0,8(sp)
    80002788:	01010413          	addi	s0,sp,16
    8000278c:	00813403          	ld	s0,8(sp)
    80002790:	0c0007b7          	lui	a5,0xc000
    80002794:	00100713          	li	a4,1
    80002798:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000279c:	00e7a223          	sw	a4,4(a5)
    800027a0:	01010113          	addi	sp,sp,16
    800027a4:	00008067          	ret

00000000800027a8 <plicinithart>:
    800027a8:	ff010113          	addi	sp,sp,-16
    800027ac:	00813023          	sd	s0,0(sp)
    800027b0:	00113423          	sd	ra,8(sp)
    800027b4:	01010413          	addi	s0,sp,16
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	a4c080e7          	jalr	-1460(ra) # 80002204 <cpuid>
    800027c0:	0085171b          	slliw	a4,a0,0x8
    800027c4:	0c0027b7          	lui	a5,0xc002
    800027c8:	00e787b3          	add	a5,a5,a4
    800027cc:	40200713          	li	a4,1026
    800027d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800027d4:	00813083          	ld	ra,8(sp)
    800027d8:	00013403          	ld	s0,0(sp)
    800027dc:	00d5151b          	slliw	a0,a0,0xd
    800027e0:	0c2017b7          	lui	a5,0xc201
    800027e4:	00a78533          	add	a0,a5,a0
    800027e8:	00052023          	sw	zero,0(a0)
    800027ec:	01010113          	addi	sp,sp,16
    800027f0:	00008067          	ret

00000000800027f4 <plic_claim>:
    800027f4:	ff010113          	addi	sp,sp,-16
    800027f8:	00813023          	sd	s0,0(sp)
    800027fc:	00113423          	sd	ra,8(sp)
    80002800:	01010413          	addi	s0,sp,16
    80002804:	00000097          	auipc	ra,0x0
    80002808:	a00080e7          	jalr	-1536(ra) # 80002204 <cpuid>
    8000280c:	00813083          	ld	ra,8(sp)
    80002810:	00013403          	ld	s0,0(sp)
    80002814:	00d5151b          	slliw	a0,a0,0xd
    80002818:	0c2017b7          	lui	a5,0xc201
    8000281c:	00a78533          	add	a0,a5,a0
    80002820:	00452503          	lw	a0,4(a0)
    80002824:	01010113          	addi	sp,sp,16
    80002828:	00008067          	ret

000000008000282c <plic_complete>:
    8000282c:	fe010113          	addi	sp,sp,-32
    80002830:	00813823          	sd	s0,16(sp)
    80002834:	00913423          	sd	s1,8(sp)
    80002838:	00113c23          	sd	ra,24(sp)
    8000283c:	02010413          	addi	s0,sp,32
    80002840:	00050493          	mv	s1,a0
    80002844:	00000097          	auipc	ra,0x0
    80002848:	9c0080e7          	jalr	-1600(ra) # 80002204 <cpuid>
    8000284c:	01813083          	ld	ra,24(sp)
    80002850:	01013403          	ld	s0,16(sp)
    80002854:	00d5179b          	slliw	a5,a0,0xd
    80002858:	0c201737          	lui	a4,0xc201
    8000285c:	00f707b3          	add	a5,a4,a5
    80002860:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002864:	00813483          	ld	s1,8(sp)
    80002868:	02010113          	addi	sp,sp,32
    8000286c:	00008067          	ret

0000000080002870 <consolewrite>:
    80002870:	fb010113          	addi	sp,sp,-80
    80002874:	04813023          	sd	s0,64(sp)
    80002878:	04113423          	sd	ra,72(sp)
    8000287c:	02913c23          	sd	s1,56(sp)
    80002880:	03213823          	sd	s2,48(sp)
    80002884:	03313423          	sd	s3,40(sp)
    80002888:	03413023          	sd	s4,32(sp)
    8000288c:	01513c23          	sd	s5,24(sp)
    80002890:	05010413          	addi	s0,sp,80
    80002894:	06c05c63          	blez	a2,8000290c <consolewrite+0x9c>
    80002898:	00060993          	mv	s3,a2
    8000289c:	00050a13          	mv	s4,a0
    800028a0:	00058493          	mv	s1,a1
    800028a4:	00000913          	li	s2,0
    800028a8:	fff00a93          	li	s5,-1
    800028ac:	01c0006f          	j	800028c8 <consolewrite+0x58>
    800028b0:	fbf44503          	lbu	a0,-65(s0)
    800028b4:	0019091b          	addiw	s2,s2,1
    800028b8:	00148493          	addi	s1,s1,1
    800028bc:	00001097          	auipc	ra,0x1
    800028c0:	a9c080e7          	jalr	-1380(ra) # 80003358 <uartputc>
    800028c4:	03298063          	beq	s3,s2,800028e4 <consolewrite+0x74>
    800028c8:	00048613          	mv	a2,s1
    800028cc:	00100693          	li	a3,1
    800028d0:	000a0593          	mv	a1,s4
    800028d4:	fbf40513          	addi	a0,s0,-65
    800028d8:	00000097          	auipc	ra,0x0
    800028dc:	9e4080e7          	jalr	-1564(ra) # 800022bc <either_copyin>
    800028e0:	fd5518e3          	bne	a0,s5,800028b0 <consolewrite+0x40>
    800028e4:	04813083          	ld	ra,72(sp)
    800028e8:	04013403          	ld	s0,64(sp)
    800028ec:	03813483          	ld	s1,56(sp)
    800028f0:	02813983          	ld	s3,40(sp)
    800028f4:	02013a03          	ld	s4,32(sp)
    800028f8:	01813a83          	ld	s5,24(sp)
    800028fc:	00090513          	mv	a0,s2
    80002900:	03013903          	ld	s2,48(sp)
    80002904:	05010113          	addi	sp,sp,80
    80002908:	00008067          	ret
    8000290c:	00000913          	li	s2,0
    80002910:	fd5ff06f          	j	800028e4 <consolewrite+0x74>

0000000080002914 <consoleread>:
    80002914:	f9010113          	addi	sp,sp,-112
    80002918:	06813023          	sd	s0,96(sp)
    8000291c:	04913c23          	sd	s1,88(sp)
    80002920:	05213823          	sd	s2,80(sp)
    80002924:	05313423          	sd	s3,72(sp)
    80002928:	05413023          	sd	s4,64(sp)
    8000292c:	03513c23          	sd	s5,56(sp)
    80002930:	03613823          	sd	s6,48(sp)
    80002934:	03713423          	sd	s7,40(sp)
    80002938:	03813023          	sd	s8,32(sp)
    8000293c:	06113423          	sd	ra,104(sp)
    80002940:	01913c23          	sd	s9,24(sp)
    80002944:	07010413          	addi	s0,sp,112
    80002948:	00060b93          	mv	s7,a2
    8000294c:	00050913          	mv	s2,a0
    80002950:	00058c13          	mv	s8,a1
    80002954:	00060b1b          	sext.w	s6,a2
    80002958:	00004497          	auipc	s1,0x4
    8000295c:	23048493          	addi	s1,s1,560 # 80006b88 <cons>
    80002960:	00400993          	li	s3,4
    80002964:	fff00a13          	li	s4,-1
    80002968:	00a00a93          	li	s5,10
    8000296c:	05705e63          	blez	s7,800029c8 <consoleread+0xb4>
    80002970:	09c4a703          	lw	a4,156(s1)
    80002974:	0984a783          	lw	a5,152(s1)
    80002978:	0007071b          	sext.w	a4,a4
    8000297c:	08e78463          	beq	a5,a4,80002a04 <consoleread+0xf0>
    80002980:	07f7f713          	andi	a4,a5,127
    80002984:	00e48733          	add	a4,s1,a4
    80002988:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000298c:	0017869b          	addiw	a3,a5,1
    80002990:	08d4ac23          	sw	a3,152(s1)
    80002994:	00070c9b          	sext.w	s9,a4
    80002998:	0b370663          	beq	a4,s3,80002a44 <consoleread+0x130>
    8000299c:	00100693          	li	a3,1
    800029a0:	f9f40613          	addi	a2,s0,-97
    800029a4:	000c0593          	mv	a1,s8
    800029a8:	00090513          	mv	a0,s2
    800029ac:	f8e40fa3          	sb	a4,-97(s0)
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	8c0080e7          	jalr	-1856(ra) # 80002270 <either_copyout>
    800029b8:	01450863          	beq	a0,s4,800029c8 <consoleread+0xb4>
    800029bc:	001c0c13          	addi	s8,s8,1
    800029c0:	fffb8b9b          	addiw	s7,s7,-1
    800029c4:	fb5c94e3          	bne	s9,s5,8000296c <consoleread+0x58>
    800029c8:	000b851b          	sext.w	a0,s7
    800029cc:	06813083          	ld	ra,104(sp)
    800029d0:	06013403          	ld	s0,96(sp)
    800029d4:	05813483          	ld	s1,88(sp)
    800029d8:	05013903          	ld	s2,80(sp)
    800029dc:	04813983          	ld	s3,72(sp)
    800029e0:	04013a03          	ld	s4,64(sp)
    800029e4:	03813a83          	ld	s5,56(sp)
    800029e8:	02813b83          	ld	s7,40(sp)
    800029ec:	02013c03          	ld	s8,32(sp)
    800029f0:	01813c83          	ld	s9,24(sp)
    800029f4:	40ab053b          	subw	a0,s6,a0
    800029f8:	03013b03          	ld	s6,48(sp)
    800029fc:	07010113          	addi	sp,sp,112
    80002a00:	00008067          	ret
    80002a04:	00001097          	auipc	ra,0x1
    80002a08:	1d8080e7          	jalr	472(ra) # 80003bdc <push_on>
    80002a0c:	0984a703          	lw	a4,152(s1)
    80002a10:	09c4a783          	lw	a5,156(s1)
    80002a14:	0007879b          	sext.w	a5,a5
    80002a18:	fef70ce3          	beq	a4,a5,80002a10 <consoleread+0xfc>
    80002a1c:	00001097          	auipc	ra,0x1
    80002a20:	234080e7          	jalr	564(ra) # 80003c50 <pop_on>
    80002a24:	0984a783          	lw	a5,152(s1)
    80002a28:	07f7f713          	andi	a4,a5,127
    80002a2c:	00e48733          	add	a4,s1,a4
    80002a30:	01874703          	lbu	a4,24(a4)
    80002a34:	0017869b          	addiw	a3,a5,1
    80002a38:	08d4ac23          	sw	a3,152(s1)
    80002a3c:	00070c9b          	sext.w	s9,a4
    80002a40:	f5371ee3          	bne	a4,s3,8000299c <consoleread+0x88>
    80002a44:	000b851b          	sext.w	a0,s7
    80002a48:	f96bf2e3          	bgeu	s7,s6,800029cc <consoleread+0xb8>
    80002a4c:	08f4ac23          	sw	a5,152(s1)
    80002a50:	f7dff06f          	j	800029cc <consoleread+0xb8>

0000000080002a54 <consputc>:
    80002a54:	10000793          	li	a5,256
    80002a58:	00f50663          	beq	a0,a5,80002a64 <consputc+0x10>
    80002a5c:	00001317          	auipc	t1,0x1
    80002a60:	9f430067          	jr	-1548(t1) # 80003450 <uartputc_sync>
    80002a64:	ff010113          	addi	sp,sp,-16
    80002a68:	00113423          	sd	ra,8(sp)
    80002a6c:	00813023          	sd	s0,0(sp)
    80002a70:	01010413          	addi	s0,sp,16
    80002a74:	00800513          	li	a0,8
    80002a78:	00001097          	auipc	ra,0x1
    80002a7c:	9d8080e7          	jalr	-1576(ra) # 80003450 <uartputc_sync>
    80002a80:	02000513          	li	a0,32
    80002a84:	00001097          	auipc	ra,0x1
    80002a88:	9cc080e7          	jalr	-1588(ra) # 80003450 <uartputc_sync>
    80002a8c:	00013403          	ld	s0,0(sp)
    80002a90:	00813083          	ld	ra,8(sp)
    80002a94:	00800513          	li	a0,8
    80002a98:	01010113          	addi	sp,sp,16
    80002a9c:	00001317          	auipc	t1,0x1
    80002aa0:	9b430067          	jr	-1612(t1) # 80003450 <uartputc_sync>

0000000080002aa4 <consoleintr>:
    80002aa4:	fe010113          	addi	sp,sp,-32
    80002aa8:	00813823          	sd	s0,16(sp)
    80002aac:	00913423          	sd	s1,8(sp)
    80002ab0:	01213023          	sd	s2,0(sp)
    80002ab4:	00113c23          	sd	ra,24(sp)
    80002ab8:	02010413          	addi	s0,sp,32
    80002abc:	00004917          	auipc	s2,0x4
    80002ac0:	0cc90913          	addi	s2,s2,204 # 80006b88 <cons>
    80002ac4:	00050493          	mv	s1,a0
    80002ac8:	00090513          	mv	a0,s2
    80002acc:	00001097          	auipc	ra,0x1
    80002ad0:	e40080e7          	jalr	-448(ra) # 8000390c <acquire>
    80002ad4:	02048c63          	beqz	s1,80002b0c <consoleintr+0x68>
    80002ad8:	0a092783          	lw	a5,160(s2)
    80002adc:	09892703          	lw	a4,152(s2)
    80002ae0:	07f00693          	li	a3,127
    80002ae4:	40e7873b          	subw	a4,a5,a4
    80002ae8:	02e6e263          	bltu	a3,a4,80002b0c <consoleintr+0x68>
    80002aec:	00d00713          	li	a4,13
    80002af0:	04e48063          	beq	s1,a4,80002b30 <consoleintr+0x8c>
    80002af4:	07f7f713          	andi	a4,a5,127
    80002af8:	00e90733          	add	a4,s2,a4
    80002afc:	0017879b          	addiw	a5,a5,1
    80002b00:	0af92023          	sw	a5,160(s2)
    80002b04:	00970c23          	sb	s1,24(a4)
    80002b08:	08f92e23          	sw	a5,156(s2)
    80002b0c:	01013403          	ld	s0,16(sp)
    80002b10:	01813083          	ld	ra,24(sp)
    80002b14:	00813483          	ld	s1,8(sp)
    80002b18:	00013903          	ld	s2,0(sp)
    80002b1c:	00004517          	auipc	a0,0x4
    80002b20:	06c50513          	addi	a0,a0,108 # 80006b88 <cons>
    80002b24:	02010113          	addi	sp,sp,32
    80002b28:	00001317          	auipc	t1,0x1
    80002b2c:	eb030067          	jr	-336(t1) # 800039d8 <release>
    80002b30:	00a00493          	li	s1,10
    80002b34:	fc1ff06f          	j	80002af4 <consoleintr+0x50>

0000000080002b38 <consoleinit>:
    80002b38:	fe010113          	addi	sp,sp,-32
    80002b3c:	00113c23          	sd	ra,24(sp)
    80002b40:	00813823          	sd	s0,16(sp)
    80002b44:	00913423          	sd	s1,8(sp)
    80002b48:	02010413          	addi	s0,sp,32
    80002b4c:	00004497          	auipc	s1,0x4
    80002b50:	03c48493          	addi	s1,s1,60 # 80006b88 <cons>
    80002b54:	00048513          	mv	a0,s1
    80002b58:	00002597          	auipc	a1,0x2
    80002b5c:	73058593          	addi	a1,a1,1840 # 80005288 <CONSOLE_STATUS+0x278>
    80002b60:	00001097          	auipc	ra,0x1
    80002b64:	d88080e7          	jalr	-632(ra) # 800038e8 <initlock>
    80002b68:	00000097          	auipc	ra,0x0
    80002b6c:	7ac080e7          	jalr	1964(ra) # 80003314 <uartinit>
    80002b70:	01813083          	ld	ra,24(sp)
    80002b74:	01013403          	ld	s0,16(sp)
    80002b78:	00000797          	auipc	a5,0x0
    80002b7c:	d9c78793          	addi	a5,a5,-612 # 80002914 <consoleread>
    80002b80:	0af4bc23          	sd	a5,184(s1)
    80002b84:	00000797          	auipc	a5,0x0
    80002b88:	cec78793          	addi	a5,a5,-788 # 80002870 <consolewrite>
    80002b8c:	0cf4b023          	sd	a5,192(s1)
    80002b90:	00813483          	ld	s1,8(sp)
    80002b94:	02010113          	addi	sp,sp,32
    80002b98:	00008067          	ret

0000000080002b9c <console_read>:
    80002b9c:	ff010113          	addi	sp,sp,-16
    80002ba0:	00813423          	sd	s0,8(sp)
    80002ba4:	01010413          	addi	s0,sp,16
    80002ba8:	00813403          	ld	s0,8(sp)
    80002bac:	00004317          	auipc	t1,0x4
    80002bb0:	09433303          	ld	t1,148(t1) # 80006c40 <devsw+0x10>
    80002bb4:	01010113          	addi	sp,sp,16
    80002bb8:	00030067          	jr	t1

0000000080002bbc <console_write>:
    80002bbc:	ff010113          	addi	sp,sp,-16
    80002bc0:	00813423          	sd	s0,8(sp)
    80002bc4:	01010413          	addi	s0,sp,16
    80002bc8:	00813403          	ld	s0,8(sp)
    80002bcc:	00004317          	auipc	t1,0x4
    80002bd0:	07c33303          	ld	t1,124(t1) # 80006c48 <devsw+0x18>
    80002bd4:	01010113          	addi	sp,sp,16
    80002bd8:	00030067          	jr	t1

0000000080002bdc <panic>:
    80002bdc:	fe010113          	addi	sp,sp,-32
    80002be0:	00113c23          	sd	ra,24(sp)
    80002be4:	00813823          	sd	s0,16(sp)
    80002be8:	00913423          	sd	s1,8(sp)
    80002bec:	02010413          	addi	s0,sp,32
    80002bf0:	00050493          	mv	s1,a0
    80002bf4:	00002517          	auipc	a0,0x2
    80002bf8:	69c50513          	addi	a0,a0,1692 # 80005290 <CONSOLE_STATUS+0x280>
    80002bfc:	00004797          	auipc	a5,0x4
    80002c00:	0e07a623          	sw	zero,236(a5) # 80006ce8 <pr+0x18>
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	034080e7          	jalr	52(ra) # 80002c38 <__printf>
    80002c0c:	00048513          	mv	a0,s1
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	028080e7          	jalr	40(ra) # 80002c38 <__printf>
    80002c18:	00002517          	auipc	a0,0x2
    80002c1c:	52850513          	addi	a0,a0,1320 # 80005140 <CONSOLE_STATUS+0x130>
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	018080e7          	jalr	24(ra) # 80002c38 <__printf>
    80002c28:	00100793          	li	a5,1
    80002c2c:	00003717          	auipc	a4,0x3
    80002c30:	e2f72623          	sw	a5,-468(a4) # 80005a58 <panicked>
    80002c34:	0000006f          	j	80002c34 <panic+0x58>

0000000080002c38 <__printf>:
    80002c38:	f3010113          	addi	sp,sp,-208
    80002c3c:	08813023          	sd	s0,128(sp)
    80002c40:	07313423          	sd	s3,104(sp)
    80002c44:	09010413          	addi	s0,sp,144
    80002c48:	05813023          	sd	s8,64(sp)
    80002c4c:	08113423          	sd	ra,136(sp)
    80002c50:	06913c23          	sd	s1,120(sp)
    80002c54:	07213823          	sd	s2,112(sp)
    80002c58:	07413023          	sd	s4,96(sp)
    80002c5c:	05513c23          	sd	s5,88(sp)
    80002c60:	05613823          	sd	s6,80(sp)
    80002c64:	05713423          	sd	s7,72(sp)
    80002c68:	03913c23          	sd	s9,56(sp)
    80002c6c:	03a13823          	sd	s10,48(sp)
    80002c70:	03b13423          	sd	s11,40(sp)
    80002c74:	00004317          	auipc	t1,0x4
    80002c78:	05c30313          	addi	t1,t1,92 # 80006cd0 <pr>
    80002c7c:	01832c03          	lw	s8,24(t1)
    80002c80:	00b43423          	sd	a1,8(s0)
    80002c84:	00c43823          	sd	a2,16(s0)
    80002c88:	00d43c23          	sd	a3,24(s0)
    80002c8c:	02e43023          	sd	a4,32(s0)
    80002c90:	02f43423          	sd	a5,40(s0)
    80002c94:	03043823          	sd	a6,48(s0)
    80002c98:	03143c23          	sd	a7,56(s0)
    80002c9c:	00050993          	mv	s3,a0
    80002ca0:	4a0c1663          	bnez	s8,8000314c <__printf+0x514>
    80002ca4:	60098c63          	beqz	s3,800032bc <__printf+0x684>
    80002ca8:	0009c503          	lbu	a0,0(s3)
    80002cac:	00840793          	addi	a5,s0,8
    80002cb0:	f6f43c23          	sd	a5,-136(s0)
    80002cb4:	00000493          	li	s1,0
    80002cb8:	22050063          	beqz	a0,80002ed8 <__printf+0x2a0>
    80002cbc:	00002a37          	lui	s4,0x2
    80002cc0:	00018ab7          	lui	s5,0x18
    80002cc4:	000f4b37          	lui	s6,0xf4
    80002cc8:	00989bb7          	lui	s7,0x989
    80002ccc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002cd0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002cd4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002cd8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002cdc:	00148c9b          	addiw	s9,s1,1
    80002ce0:	02500793          	li	a5,37
    80002ce4:	01998933          	add	s2,s3,s9
    80002ce8:	38f51263          	bne	a0,a5,8000306c <__printf+0x434>
    80002cec:	00094783          	lbu	a5,0(s2)
    80002cf0:	00078c9b          	sext.w	s9,a5
    80002cf4:	1e078263          	beqz	a5,80002ed8 <__printf+0x2a0>
    80002cf8:	0024849b          	addiw	s1,s1,2
    80002cfc:	07000713          	li	a4,112
    80002d00:	00998933          	add	s2,s3,s1
    80002d04:	38e78a63          	beq	a5,a4,80003098 <__printf+0x460>
    80002d08:	20f76863          	bltu	a4,a5,80002f18 <__printf+0x2e0>
    80002d0c:	42a78863          	beq	a5,a0,8000313c <__printf+0x504>
    80002d10:	06400713          	li	a4,100
    80002d14:	40e79663          	bne	a5,a4,80003120 <__printf+0x4e8>
    80002d18:	f7843783          	ld	a5,-136(s0)
    80002d1c:	0007a603          	lw	a2,0(a5)
    80002d20:	00878793          	addi	a5,a5,8
    80002d24:	f6f43c23          	sd	a5,-136(s0)
    80002d28:	42064a63          	bltz	a2,8000315c <__printf+0x524>
    80002d2c:	00a00713          	li	a4,10
    80002d30:	02e677bb          	remuw	a5,a2,a4
    80002d34:	00002d97          	auipc	s11,0x2
    80002d38:	584d8d93          	addi	s11,s11,1412 # 800052b8 <digits>
    80002d3c:	00900593          	li	a1,9
    80002d40:	0006051b          	sext.w	a0,a2
    80002d44:	00000c93          	li	s9,0
    80002d48:	02079793          	slli	a5,a5,0x20
    80002d4c:	0207d793          	srli	a5,a5,0x20
    80002d50:	00fd87b3          	add	a5,s11,a5
    80002d54:	0007c783          	lbu	a5,0(a5)
    80002d58:	02e656bb          	divuw	a3,a2,a4
    80002d5c:	f8f40023          	sb	a5,-128(s0)
    80002d60:	14c5d863          	bge	a1,a2,80002eb0 <__printf+0x278>
    80002d64:	06300593          	li	a1,99
    80002d68:	00100c93          	li	s9,1
    80002d6c:	02e6f7bb          	remuw	a5,a3,a4
    80002d70:	02079793          	slli	a5,a5,0x20
    80002d74:	0207d793          	srli	a5,a5,0x20
    80002d78:	00fd87b3          	add	a5,s11,a5
    80002d7c:	0007c783          	lbu	a5,0(a5)
    80002d80:	02e6d73b          	divuw	a4,a3,a4
    80002d84:	f8f400a3          	sb	a5,-127(s0)
    80002d88:	12a5f463          	bgeu	a1,a0,80002eb0 <__printf+0x278>
    80002d8c:	00a00693          	li	a3,10
    80002d90:	00900593          	li	a1,9
    80002d94:	02d777bb          	remuw	a5,a4,a3
    80002d98:	02079793          	slli	a5,a5,0x20
    80002d9c:	0207d793          	srli	a5,a5,0x20
    80002da0:	00fd87b3          	add	a5,s11,a5
    80002da4:	0007c503          	lbu	a0,0(a5)
    80002da8:	02d757bb          	divuw	a5,a4,a3
    80002dac:	f8a40123          	sb	a0,-126(s0)
    80002db0:	48e5f263          	bgeu	a1,a4,80003234 <__printf+0x5fc>
    80002db4:	06300513          	li	a0,99
    80002db8:	02d7f5bb          	remuw	a1,a5,a3
    80002dbc:	02059593          	slli	a1,a1,0x20
    80002dc0:	0205d593          	srli	a1,a1,0x20
    80002dc4:	00bd85b3          	add	a1,s11,a1
    80002dc8:	0005c583          	lbu	a1,0(a1)
    80002dcc:	02d7d7bb          	divuw	a5,a5,a3
    80002dd0:	f8b401a3          	sb	a1,-125(s0)
    80002dd4:	48e57263          	bgeu	a0,a4,80003258 <__printf+0x620>
    80002dd8:	3e700513          	li	a0,999
    80002ddc:	02d7f5bb          	remuw	a1,a5,a3
    80002de0:	02059593          	slli	a1,a1,0x20
    80002de4:	0205d593          	srli	a1,a1,0x20
    80002de8:	00bd85b3          	add	a1,s11,a1
    80002dec:	0005c583          	lbu	a1,0(a1)
    80002df0:	02d7d7bb          	divuw	a5,a5,a3
    80002df4:	f8b40223          	sb	a1,-124(s0)
    80002df8:	46e57663          	bgeu	a0,a4,80003264 <__printf+0x62c>
    80002dfc:	02d7f5bb          	remuw	a1,a5,a3
    80002e00:	02059593          	slli	a1,a1,0x20
    80002e04:	0205d593          	srli	a1,a1,0x20
    80002e08:	00bd85b3          	add	a1,s11,a1
    80002e0c:	0005c583          	lbu	a1,0(a1)
    80002e10:	02d7d7bb          	divuw	a5,a5,a3
    80002e14:	f8b402a3          	sb	a1,-123(s0)
    80002e18:	46ea7863          	bgeu	s4,a4,80003288 <__printf+0x650>
    80002e1c:	02d7f5bb          	remuw	a1,a5,a3
    80002e20:	02059593          	slli	a1,a1,0x20
    80002e24:	0205d593          	srli	a1,a1,0x20
    80002e28:	00bd85b3          	add	a1,s11,a1
    80002e2c:	0005c583          	lbu	a1,0(a1)
    80002e30:	02d7d7bb          	divuw	a5,a5,a3
    80002e34:	f8b40323          	sb	a1,-122(s0)
    80002e38:	3eeaf863          	bgeu	s5,a4,80003228 <__printf+0x5f0>
    80002e3c:	02d7f5bb          	remuw	a1,a5,a3
    80002e40:	02059593          	slli	a1,a1,0x20
    80002e44:	0205d593          	srli	a1,a1,0x20
    80002e48:	00bd85b3          	add	a1,s11,a1
    80002e4c:	0005c583          	lbu	a1,0(a1)
    80002e50:	02d7d7bb          	divuw	a5,a5,a3
    80002e54:	f8b403a3          	sb	a1,-121(s0)
    80002e58:	42eb7e63          	bgeu	s6,a4,80003294 <__printf+0x65c>
    80002e5c:	02d7f5bb          	remuw	a1,a5,a3
    80002e60:	02059593          	slli	a1,a1,0x20
    80002e64:	0205d593          	srli	a1,a1,0x20
    80002e68:	00bd85b3          	add	a1,s11,a1
    80002e6c:	0005c583          	lbu	a1,0(a1)
    80002e70:	02d7d7bb          	divuw	a5,a5,a3
    80002e74:	f8b40423          	sb	a1,-120(s0)
    80002e78:	42ebfc63          	bgeu	s7,a4,800032b0 <__printf+0x678>
    80002e7c:	02079793          	slli	a5,a5,0x20
    80002e80:	0207d793          	srli	a5,a5,0x20
    80002e84:	00fd8db3          	add	s11,s11,a5
    80002e88:	000dc703          	lbu	a4,0(s11)
    80002e8c:	00a00793          	li	a5,10
    80002e90:	00900c93          	li	s9,9
    80002e94:	f8e404a3          	sb	a4,-119(s0)
    80002e98:	00065c63          	bgez	a2,80002eb0 <__printf+0x278>
    80002e9c:	f9040713          	addi	a4,s0,-112
    80002ea0:	00f70733          	add	a4,a4,a5
    80002ea4:	02d00693          	li	a3,45
    80002ea8:	fed70823          	sb	a3,-16(a4)
    80002eac:	00078c93          	mv	s9,a5
    80002eb0:	f8040793          	addi	a5,s0,-128
    80002eb4:	01978cb3          	add	s9,a5,s9
    80002eb8:	f7f40d13          	addi	s10,s0,-129
    80002ebc:	000cc503          	lbu	a0,0(s9)
    80002ec0:	fffc8c93          	addi	s9,s9,-1
    80002ec4:	00000097          	auipc	ra,0x0
    80002ec8:	b90080e7          	jalr	-1136(ra) # 80002a54 <consputc>
    80002ecc:	ffac98e3          	bne	s9,s10,80002ebc <__printf+0x284>
    80002ed0:	00094503          	lbu	a0,0(s2)
    80002ed4:	e00514e3          	bnez	a0,80002cdc <__printf+0xa4>
    80002ed8:	1a0c1663          	bnez	s8,80003084 <__printf+0x44c>
    80002edc:	08813083          	ld	ra,136(sp)
    80002ee0:	08013403          	ld	s0,128(sp)
    80002ee4:	07813483          	ld	s1,120(sp)
    80002ee8:	07013903          	ld	s2,112(sp)
    80002eec:	06813983          	ld	s3,104(sp)
    80002ef0:	06013a03          	ld	s4,96(sp)
    80002ef4:	05813a83          	ld	s5,88(sp)
    80002ef8:	05013b03          	ld	s6,80(sp)
    80002efc:	04813b83          	ld	s7,72(sp)
    80002f00:	04013c03          	ld	s8,64(sp)
    80002f04:	03813c83          	ld	s9,56(sp)
    80002f08:	03013d03          	ld	s10,48(sp)
    80002f0c:	02813d83          	ld	s11,40(sp)
    80002f10:	0d010113          	addi	sp,sp,208
    80002f14:	00008067          	ret
    80002f18:	07300713          	li	a4,115
    80002f1c:	1ce78a63          	beq	a5,a4,800030f0 <__printf+0x4b8>
    80002f20:	07800713          	li	a4,120
    80002f24:	1ee79e63          	bne	a5,a4,80003120 <__printf+0x4e8>
    80002f28:	f7843783          	ld	a5,-136(s0)
    80002f2c:	0007a703          	lw	a4,0(a5)
    80002f30:	00878793          	addi	a5,a5,8
    80002f34:	f6f43c23          	sd	a5,-136(s0)
    80002f38:	28074263          	bltz	a4,800031bc <__printf+0x584>
    80002f3c:	00002d97          	auipc	s11,0x2
    80002f40:	37cd8d93          	addi	s11,s11,892 # 800052b8 <digits>
    80002f44:	00f77793          	andi	a5,a4,15
    80002f48:	00fd87b3          	add	a5,s11,a5
    80002f4c:	0007c683          	lbu	a3,0(a5)
    80002f50:	00f00613          	li	a2,15
    80002f54:	0007079b          	sext.w	a5,a4
    80002f58:	f8d40023          	sb	a3,-128(s0)
    80002f5c:	0047559b          	srliw	a1,a4,0x4
    80002f60:	0047569b          	srliw	a3,a4,0x4
    80002f64:	00000c93          	li	s9,0
    80002f68:	0ee65063          	bge	a2,a4,80003048 <__printf+0x410>
    80002f6c:	00f6f693          	andi	a3,a3,15
    80002f70:	00dd86b3          	add	a3,s11,a3
    80002f74:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002f78:	0087d79b          	srliw	a5,a5,0x8
    80002f7c:	00100c93          	li	s9,1
    80002f80:	f8d400a3          	sb	a3,-127(s0)
    80002f84:	0cb67263          	bgeu	a2,a1,80003048 <__printf+0x410>
    80002f88:	00f7f693          	andi	a3,a5,15
    80002f8c:	00dd86b3          	add	a3,s11,a3
    80002f90:	0006c583          	lbu	a1,0(a3)
    80002f94:	00f00613          	li	a2,15
    80002f98:	0047d69b          	srliw	a3,a5,0x4
    80002f9c:	f8b40123          	sb	a1,-126(s0)
    80002fa0:	0047d593          	srli	a1,a5,0x4
    80002fa4:	28f67e63          	bgeu	a2,a5,80003240 <__printf+0x608>
    80002fa8:	00f6f693          	andi	a3,a3,15
    80002fac:	00dd86b3          	add	a3,s11,a3
    80002fb0:	0006c503          	lbu	a0,0(a3)
    80002fb4:	0087d813          	srli	a6,a5,0x8
    80002fb8:	0087d69b          	srliw	a3,a5,0x8
    80002fbc:	f8a401a3          	sb	a0,-125(s0)
    80002fc0:	28b67663          	bgeu	a2,a1,8000324c <__printf+0x614>
    80002fc4:	00f6f693          	andi	a3,a3,15
    80002fc8:	00dd86b3          	add	a3,s11,a3
    80002fcc:	0006c583          	lbu	a1,0(a3)
    80002fd0:	00c7d513          	srli	a0,a5,0xc
    80002fd4:	00c7d69b          	srliw	a3,a5,0xc
    80002fd8:	f8b40223          	sb	a1,-124(s0)
    80002fdc:	29067a63          	bgeu	a2,a6,80003270 <__printf+0x638>
    80002fe0:	00f6f693          	andi	a3,a3,15
    80002fe4:	00dd86b3          	add	a3,s11,a3
    80002fe8:	0006c583          	lbu	a1,0(a3)
    80002fec:	0107d813          	srli	a6,a5,0x10
    80002ff0:	0107d69b          	srliw	a3,a5,0x10
    80002ff4:	f8b402a3          	sb	a1,-123(s0)
    80002ff8:	28a67263          	bgeu	a2,a0,8000327c <__printf+0x644>
    80002ffc:	00f6f693          	andi	a3,a3,15
    80003000:	00dd86b3          	add	a3,s11,a3
    80003004:	0006c683          	lbu	a3,0(a3)
    80003008:	0147d79b          	srliw	a5,a5,0x14
    8000300c:	f8d40323          	sb	a3,-122(s0)
    80003010:	21067663          	bgeu	a2,a6,8000321c <__printf+0x5e4>
    80003014:	02079793          	slli	a5,a5,0x20
    80003018:	0207d793          	srli	a5,a5,0x20
    8000301c:	00fd8db3          	add	s11,s11,a5
    80003020:	000dc683          	lbu	a3,0(s11)
    80003024:	00800793          	li	a5,8
    80003028:	00700c93          	li	s9,7
    8000302c:	f8d403a3          	sb	a3,-121(s0)
    80003030:	00075c63          	bgez	a4,80003048 <__printf+0x410>
    80003034:	f9040713          	addi	a4,s0,-112
    80003038:	00f70733          	add	a4,a4,a5
    8000303c:	02d00693          	li	a3,45
    80003040:	fed70823          	sb	a3,-16(a4)
    80003044:	00078c93          	mv	s9,a5
    80003048:	f8040793          	addi	a5,s0,-128
    8000304c:	01978cb3          	add	s9,a5,s9
    80003050:	f7f40d13          	addi	s10,s0,-129
    80003054:	000cc503          	lbu	a0,0(s9)
    80003058:	fffc8c93          	addi	s9,s9,-1
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	9f8080e7          	jalr	-1544(ra) # 80002a54 <consputc>
    80003064:	ff9d18e3          	bne	s10,s9,80003054 <__printf+0x41c>
    80003068:	0100006f          	j	80003078 <__printf+0x440>
    8000306c:	00000097          	auipc	ra,0x0
    80003070:	9e8080e7          	jalr	-1560(ra) # 80002a54 <consputc>
    80003074:	000c8493          	mv	s1,s9
    80003078:	00094503          	lbu	a0,0(s2)
    8000307c:	c60510e3          	bnez	a0,80002cdc <__printf+0xa4>
    80003080:	e40c0ee3          	beqz	s8,80002edc <__printf+0x2a4>
    80003084:	00004517          	auipc	a0,0x4
    80003088:	c4c50513          	addi	a0,a0,-948 # 80006cd0 <pr>
    8000308c:	00001097          	auipc	ra,0x1
    80003090:	94c080e7          	jalr	-1716(ra) # 800039d8 <release>
    80003094:	e49ff06f          	j	80002edc <__printf+0x2a4>
    80003098:	f7843783          	ld	a5,-136(s0)
    8000309c:	03000513          	li	a0,48
    800030a0:	01000d13          	li	s10,16
    800030a4:	00878713          	addi	a4,a5,8
    800030a8:	0007bc83          	ld	s9,0(a5)
    800030ac:	f6e43c23          	sd	a4,-136(s0)
    800030b0:	00000097          	auipc	ra,0x0
    800030b4:	9a4080e7          	jalr	-1628(ra) # 80002a54 <consputc>
    800030b8:	07800513          	li	a0,120
    800030bc:	00000097          	auipc	ra,0x0
    800030c0:	998080e7          	jalr	-1640(ra) # 80002a54 <consputc>
    800030c4:	00002d97          	auipc	s11,0x2
    800030c8:	1f4d8d93          	addi	s11,s11,500 # 800052b8 <digits>
    800030cc:	03ccd793          	srli	a5,s9,0x3c
    800030d0:	00fd87b3          	add	a5,s11,a5
    800030d4:	0007c503          	lbu	a0,0(a5)
    800030d8:	fffd0d1b          	addiw	s10,s10,-1
    800030dc:	004c9c93          	slli	s9,s9,0x4
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	974080e7          	jalr	-1676(ra) # 80002a54 <consputc>
    800030e8:	fe0d12e3          	bnez	s10,800030cc <__printf+0x494>
    800030ec:	f8dff06f          	j	80003078 <__printf+0x440>
    800030f0:	f7843783          	ld	a5,-136(s0)
    800030f4:	0007bc83          	ld	s9,0(a5)
    800030f8:	00878793          	addi	a5,a5,8
    800030fc:	f6f43c23          	sd	a5,-136(s0)
    80003100:	000c9a63          	bnez	s9,80003114 <__printf+0x4dc>
    80003104:	1080006f          	j	8000320c <__printf+0x5d4>
    80003108:	001c8c93          	addi	s9,s9,1
    8000310c:	00000097          	auipc	ra,0x0
    80003110:	948080e7          	jalr	-1720(ra) # 80002a54 <consputc>
    80003114:	000cc503          	lbu	a0,0(s9)
    80003118:	fe0518e3          	bnez	a0,80003108 <__printf+0x4d0>
    8000311c:	f5dff06f          	j	80003078 <__printf+0x440>
    80003120:	02500513          	li	a0,37
    80003124:	00000097          	auipc	ra,0x0
    80003128:	930080e7          	jalr	-1744(ra) # 80002a54 <consputc>
    8000312c:	000c8513          	mv	a0,s9
    80003130:	00000097          	auipc	ra,0x0
    80003134:	924080e7          	jalr	-1756(ra) # 80002a54 <consputc>
    80003138:	f41ff06f          	j	80003078 <__printf+0x440>
    8000313c:	02500513          	li	a0,37
    80003140:	00000097          	auipc	ra,0x0
    80003144:	914080e7          	jalr	-1772(ra) # 80002a54 <consputc>
    80003148:	f31ff06f          	j	80003078 <__printf+0x440>
    8000314c:	00030513          	mv	a0,t1
    80003150:	00000097          	auipc	ra,0x0
    80003154:	7bc080e7          	jalr	1980(ra) # 8000390c <acquire>
    80003158:	b4dff06f          	j	80002ca4 <__printf+0x6c>
    8000315c:	40c0053b          	negw	a0,a2
    80003160:	00a00713          	li	a4,10
    80003164:	02e576bb          	remuw	a3,a0,a4
    80003168:	00002d97          	auipc	s11,0x2
    8000316c:	150d8d93          	addi	s11,s11,336 # 800052b8 <digits>
    80003170:	ff700593          	li	a1,-9
    80003174:	02069693          	slli	a3,a3,0x20
    80003178:	0206d693          	srli	a3,a3,0x20
    8000317c:	00dd86b3          	add	a3,s11,a3
    80003180:	0006c683          	lbu	a3,0(a3)
    80003184:	02e557bb          	divuw	a5,a0,a4
    80003188:	f8d40023          	sb	a3,-128(s0)
    8000318c:	10b65e63          	bge	a2,a1,800032a8 <__printf+0x670>
    80003190:	06300593          	li	a1,99
    80003194:	02e7f6bb          	remuw	a3,a5,a4
    80003198:	02069693          	slli	a3,a3,0x20
    8000319c:	0206d693          	srli	a3,a3,0x20
    800031a0:	00dd86b3          	add	a3,s11,a3
    800031a4:	0006c683          	lbu	a3,0(a3)
    800031a8:	02e7d73b          	divuw	a4,a5,a4
    800031ac:	00200793          	li	a5,2
    800031b0:	f8d400a3          	sb	a3,-127(s0)
    800031b4:	bca5ece3          	bltu	a1,a0,80002d8c <__printf+0x154>
    800031b8:	ce5ff06f          	j	80002e9c <__printf+0x264>
    800031bc:	40e007bb          	negw	a5,a4
    800031c0:	00002d97          	auipc	s11,0x2
    800031c4:	0f8d8d93          	addi	s11,s11,248 # 800052b8 <digits>
    800031c8:	00f7f693          	andi	a3,a5,15
    800031cc:	00dd86b3          	add	a3,s11,a3
    800031d0:	0006c583          	lbu	a1,0(a3)
    800031d4:	ff100613          	li	a2,-15
    800031d8:	0047d69b          	srliw	a3,a5,0x4
    800031dc:	f8b40023          	sb	a1,-128(s0)
    800031e0:	0047d59b          	srliw	a1,a5,0x4
    800031e4:	0ac75e63          	bge	a4,a2,800032a0 <__printf+0x668>
    800031e8:	00f6f693          	andi	a3,a3,15
    800031ec:	00dd86b3          	add	a3,s11,a3
    800031f0:	0006c603          	lbu	a2,0(a3)
    800031f4:	00f00693          	li	a3,15
    800031f8:	0087d79b          	srliw	a5,a5,0x8
    800031fc:	f8c400a3          	sb	a2,-127(s0)
    80003200:	d8b6e4e3          	bltu	a3,a1,80002f88 <__printf+0x350>
    80003204:	00200793          	li	a5,2
    80003208:	e2dff06f          	j	80003034 <__printf+0x3fc>
    8000320c:	00002c97          	auipc	s9,0x2
    80003210:	08cc8c93          	addi	s9,s9,140 # 80005298 <CONSOLE_STATUS+0x288>
    80003214:	02800513          	li	a0,40
    80003218:	ef1ff06f          	j	80003108 <__printf+0x4d0>
    8000321c:	00700793          	li	a5,7
    80003220:	00600c93          	li	s9,6
    80003224:	e0dff06f          	j	80003030 <__printf+0x3f8>
    80003228:	00700793          	li	a5,7
    8000322c:	00600c93          	li	s9,6
    80003230:	c69ff06f          	j	80002e98 <__printf+0x260>
    80003234:	00300793          	li	a5,3
    80003238:	00200c93          	li	s9,2
    8000323c:	c5dff06f          	j	80002e98 <__printf+0x260>
    80003240:	00300793          	li	a5,3
    80003244:	00200c93          	li	s9,2
    80003248:	de9ff06f          	j	80003030 <__printf+0x3f8>
    8000324c:	00400793          	li	a5,4
    80003250:	00300c93          	li	s9,3
    80003254:	dddff06f          	j	80003030 <__printf+0x3f8>
    80003258:	00400793          	li	a5,4
    8000325c:	00300c93          	li	s9,3
    80003260:	c39ff06f          	j	80002e98 <__printf+0x260>
    80003264:	00500793          	li	a5,5
    80003268:	00400c93          	li	s9,4
    8000326c:	c2dff06f          	j	80002e98 <__printf+0x260>
    80003270:	00500793          	li	a5,5
    80003274:	00400c93          	li	s9,4
    80003278:	db9ff06f          	j	80003030 <__printf+0x3f8>
    8000327c:	00600793          	li	a5,6
    80003280:	00500c93          	li	s9,5
    80003284:	dadff06f          	j	80003030 <__printf+0x3f8>
    80003288:	00600793          	li	a5,6
    8000328c:	00500c93          	li	s9,5
    80003290:	c09ff06f          	j	80002e98 <__printf+0x260>
    80003294:	00800793          	li	a5,8
    80003298:	00700c93          	li	s9,7
    8000329c:	bfdff06f          	j	80002e98 <__printf+0x260>
    800032a0:	00100793          	li	a5,1
    800032a4:	d91ff06f          	j	80003034 <__printf+0x3fc>
    800032a8:	00100793          	li	a5,1
    800032ac:	bf1ff06f          	j	80002e9c <__printf+0x264>
    800032b0:	00900793          	li	a5,9
    800032b4:	00800c93          	li	s9,8
    800032b8:	be1ff06f          	j	80002e98 <__printf+0x260>
    800032bc:	00002517          	auipc	a0,0x2
    800032c0:	fe450513          	addi	a0,a0,-28 # 800052a0 <CONSOLE_STATUS+0x290>
    800032c4:	00000097          	auipc	ra,0x0
    800032c8:	918080e7          	jalr	-1768(ra) # 80002bdc <panic>

00000000800032cc <printfinit>:
    800032cc:	fe010113          	addi	sp,sp,-32
    800032d0:	00813823          	sd	s0,16(sp)
    800032d4:	00913423          	sd	s1,8(sp)
    800032d8:	00113c23          	sd	ra,24(sp)
    800032dc:	02010413          	addi	s0,sp,32
    800032e0:	00004497          	auipc	s1,0x4
    800032e4:	9f048493          	addi	s1,s1,-1552 # 80006cd0 <pr>
    800032e8:	00048513          	mv	a0,s1
    800032ec:	00002597          	auipc	a1,0x2
    800032f0:	fc458593          	addi	a1,a1,-60 # 800052b0 <CONSOLE_STATUS+0x2a0>
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	5f4080e7          	jalr	1524(ra) # 800038e8 <initlock>
    800032fc:	01813083          	ld	ra,24(sp)
    80003300:	01013403          	ld	s0,16(sp)
    80003304:	0004ac23          	sw	zero,24(s1)
    80003308:	00813483          	ld	s1,8(sp)
    8000330c:	02010113          	addi	sp,sp,32
    80003310:	00008067          	ret

0000000080003314 <uartinit>:
    80003314:	ff010113          	addi	sp,sp,-16
    80003318:	00813423          	sd	s0,8(sp)
    8000331c:	01010413          	addi	s0,sp,16
    80003320:	100007b7          	lui	a5,0x10000
    80003324:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003328:	f8000713          	li	a4,-128
    8000332c:	00e781a3          	sb	a4,3(a5)
    80003330:	00300713          	li	a4,3
    80003334:	00e78023          	sb	a4,0(a5)
    80003338:	000780a3          	sb	zero,1(a5)
    8000333c:	00e781a3          	sb	a4,3(a5)
    80003340:	00700693          	li	a3,7
    80003344:	00d78123          	sb	a3,2(a5)
    80003348:	00e780a3          	sb	a4,1(a5)
    8000334c:	00813403          	ld	s0,8(sp)
    80003350:	01010113          	addi	sp,sp,16
    80003354:	00008067          	ret

0000000080003358 <uartputc>:
    80003358:	00002797          	auipc	a5,0x2
    8000335c:	7007a783          	lw	a5,1792(a5) # 80005a58 <panicked>
    80003360:	00078463          	beqz	a5,80003368 <uartputc+0x10>
    80003364:	0000006f          	j	80003364 <uartputc+0xc>
    80003368:	fd010113          	addi	sp,sp,-48
    8000336c:	02813023          	sd	s0,32(sp)
    80003370:	00913c23          	sd	s1,24(sp)
    80003374:	01213823          	sd	s2,16(sp)
    80003378:	01313423          	sd	s3,8(sp)
    8000337c:	02113423          	sd	ra,40(sp)
    80003380:	03010413          	addi	s0,sp,48
    80003384:	00002917          	auipc	s2,0x2
    80003388:	6dc90913          	addi	s2,s2,1756 # 80005a60 <uart_tx_r>
    8000338c:	00093783          	ld	a5,0(s2)
    80003390:	00002497          	auipc	s1,0x2
    80003394:	6d848493          	addi	s1,s1,1752 # 80005a68 <uart_tx_w>
    80003398:	0004b703          	ld	a4,0(s1)
    8000339c:	02078693          	addi	a3,a5,32
    800033a0:	00050993          	mv	s3,a0
    800033a4:	02e69c63          	bne	a3,a4,800033dc <uartputc+0x84>
    800033a8:	00001097          	auipc	ra,0x1
    800033ac:	834080e7          	jalr	-1996(ra) # 80003bdc <push_on>
    800033b0:	00093783          	ld	a5,0(s2)
    800033b4:	0004b703          	ld	a4,0(s1)
    800033b8:	02078793          	addi	a5,a5,32
    800033bc:	00e79463          	bne	a5,a4,800033c4 <uartputc+0x6c>
    800033c0:	0000006f          	j	800033c0 <uartputc+0x68>
    800033c4:	00001097          	auipc	ra,0x1
    800033c8:	88c080e7          	jalr	-1908(ra) # 80003c50 <pop_on>
    800033cc:	00093783          	ld	a5,0(s2)
    800033d0:	0004b703          	ld	a4,0(s1)
    800033d4:	02078693          	addi	a3,a5,32
    800033d8:	fce688e3          	beq	a3,a4,800033a8 <uartputc+0x50>
    800033dc:	01f77693          	andi	a3,a4,31
    800033e0:	00004597          	auipc	a1,0x4
    800033e4:	91058593          	addi	a1,a1,-1776 # 80006cf0 <uart_tx_buf>
    800033e8:	00d586b3          	add	a3,a1,a3
    800033ec:	00170713          	addi	a4,a4,1
    800033f0:	01368023          	sb	s3,0(a3)
    800033f4:	00e4b023          	sd	a4,0(s1)
    800033f8:	10000637          	lui	a2,0x10000
    800033fc:	02f71063          	bne	a4,a5,8000341c <uartputc+0xc4>
    80003400:	0340006f          	j	80003434 <uartputc+0xdc>
    80003404:	00074703          	lbu	a4,0(a4)
    80003408:	00f93023          	sd	a5,0(s2)
    8000340c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003410:	00093783          	ld	a5,0(s2)
    80003414:	0004b703          	ld	a4,0(s1)
    80003418:	00f70e63          	beq	a4,a5,80003434 <uartputc+0xdc>
    8000341c:	00564683          	lbu	a3,5(a2)
    80003420:	01f7f713          	andi	a4,a5,31
    80003424:	00e58733          	add	a4,a1,a4
    80003428:	0206f693          	andi	a3,a3,32
    8000342c:	00178793          	addi	a5,a5,1
    80003430:	fc069ae3          	bnez	a3,80003404 <uartputc+0xac>
    80003434:	02813083          	ld	ra,40(sp)
    80003438:	02013403          	ld	s0,32(sp)
    8000343c:	01813483          	ld	s1,24(sp)
    80003440:	01013903          	ld	s2,16(sp)
    80003444:	00813983          	ld	s3,8(sp)
    80003448:	03010113          	addi	sp,sp,48
    8000344c:	00008067          	ret

0000000080003450 <uartputc_sync>:
    80003450:	ff010113          	addi	sp,sp,-16
    80003454:	00813423          	sd	s0,8(sp)
    80003458:	01010413          	addi	s0,sp,16
    8000345c:	00002717          	auipc	a4,0x2
    80003460:	5fc72703          	lw	a4,1532(a4) # 80005a58 <panicked>
    80003464:	02071663          	bnez	a4,80003490 <uartputc_sync+0x40>
    80003468:	00050793          	mv	a5,a0
    8000346c:	100006b7          	lui	a3,0x10000
    80003470:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003474:	02077713          	andi	a4,a4,32
    80003478:	fe070ce3          	beqz	a4,80003470 <uartputc_sync+0x20>
    8000347c:	0ff7f793          	andi	a5,a5,255
    80003480:	00f68023          	sb	a5,0(a3)
    80003484:	00813403          	ld	s0,8(sp)
    80003488:	01010113          	addi	sp,sp,16
    8000348c:	00008067          	ret
    80003490:	0000006f          	j	80003490 <uartputc_sync+0x40>

0000000080003494 <uartstart>:
    80003494:	ff010113          	addi	sp,sp,-16
    80003498:	00813423          	sd	s0,8(sp)
    8000349c:	01010413          	addi	s0,sp,16
    800034a0:	00002617          	auipc	a2,0x2
    800034a4:	5c060613          	addi	a2,a2,1472 # 80005a60 <uart_tx_r>
    800034a8:	00002517          	auipc	a0,0x2
    800034ac:	5c050513          	addi	a0,a0,1472 # 80005a68 <uart_tx_w>
    800034b0:	00063783          	ld	a5,0(a2)
    800034b4:	00053703          	ld	a4,0(a0)
    800034b8:	04f70263          	beq	a4,a5,800034fc <uartstart+0x68>
    800034bc:	100005b7          	lui	a1,0x10000
    800034c0:	00004817          	auipc	a6,0x4
    800034c4:	83080813          	addi	a6,a6,-2000 # 80006cf0 <uart_tx_buf>
    800034c8:	01c0006f          	j	800034e4 <uartstart+0x50>
    800034cc:	0006c703          	lbu	a4,0(a3)
    800034d0:	00f63023          	sd	a5,0(a2)
    800034d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800034d8:	00063783          	ld	a5,0(a2)
    800034dc:	00053703          	ld	a4,0(a0)
    800034e0:	00f70e63          	beq	a4,a5,800034fc <uartstart+0x68>
    800034e4:	01f7f713          	andi	a4,a5,31
    800034e8:	00e806b3          	add	a3,a6,a4
    800034ec:	0055c703          	lbu	a4,5(a1)
    800034f0:	00178793          	addi	a5,a5,1
    800034f4:	02077713          	andi	a4,a4,32
    800034f8:	fc071ae3          	bnez	a4,800034cc <uartstart+0x38>
    800034fc:	00813403          	ld	s0,8(sp)
    80003500:	01010113          	addi	sp,sp,16
    80003504:	00008067          	ret

0000000080003508 <uartgetc>:
    80003508:	ff010113          	addi	sp,sp,-16
    8000350c:	00813423          	sd	s0,8(sp)
    80003510:	01010413          	addi	s0,sp,16
    80003514:	10000737          	lui	a4,0x10000
    80003518:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000351c:	0017f793          	andi	a5,a5,1
    80003520:	00078c63          	beqz	a5,80003538 <uartgetc+0x30>
    80003524:	00074503          	lbu	a0,0(a4)
    80003528:	0ff57513          	andi	a0,a0,255
    8000352c:	00813403          	ld	s0,8(sp)
    80003530:	01010113          	addi	sp,sp,16
    80003534:	00008067          	ret
    80003538:	fff00513          	li	a0,-1
    8000353c:	ff1ff06f          	j	8000352c <uartgetc+0x24>

0000000080003540 <uartintr>:
    80003540:	100007b7          	lui	a5,0x10000
    80003544:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003548:	0017f793          	andi	a5,a5,1
    8000354c:	0a078463          	beqz	a5,800035f4 <uartintr+0xb4>
    80003550:	fe010113          	addi	sp,sp,-32
    80003554:	00813823          	sd	s0,16(sp)
    80003558:	00913423          	sd	s1,8(sp)
    8000355c:	00113c23          	sd	ra,24(sp)
    80003560:	02010413          	addi	s0,sp,32
    80003564:	100004b7          	lui	s1,0x10000
    80003568:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000356c:	0ff57513          	andi	a0,a0,255
    80003570:	fffff097          	auipc	ra,0xfffff
    80003574:	534080e7          	jalr	1332(ra) # 80002aa4 <consoleintr>
    80003578:	0054c783          	lbu	a5,5(s1)
    8000357c:	0017f793          	andi	a5,a5,1
    80003580:	fe0794e3          	bnez	a5,80003568 <uartintr+0x28>
    80003584:	00002617          	auipc	a2,0x2
    80003588:	4dc60613          	addi	a2,a2,1244 # 80005a60 <uart_tx_r>
    8000358c:	00002517          	auipc	a0,0x2
    80003590:	4dc50513          	addi	a0,a0,1244 # 80005a68 <uart_tx_w>
    80003594:	00063783          	ld	a5,0(a2)
    80003598:	00053703          	ld	a4,0(a0)
    8000359c:	04f70263          	beq	a4,a5,800035e0 <uartintr+0xa0>
    800035a0:	100005b7          	lui	a1,0x10000
    800035a4:	00003817          	auipc	a6,0x3
    800035a8:	74c80813          	addi	a6,a6,1868 # 80006cf0 <uart_tx_buf>
    800035ac:	01c0006f          	j	800035c8 <uartintr+0x88>
    800035b0:	0006c703          	lbu	a4,0(a3)
    800035b4:	00f63023          	sd	a5,0(a2)
    800035b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800035bc:	00063783          	ld	a5,0(a2)
    800035c0:	00053703          	ld	a4,0(a0)
    800035c4:	00f70e63          	beq	a4,a5,800035e0 <uartintr+0xa0>
    800035c8:	01f7f713          	andi	a4,a5,31
    800035cc:	00e806b3          	add	a3,a6,a4
    800035d0:	0055c703          	lbu	a4,5(a1)
    800035d4:	00178793          	addi	a5,a5,1
    800035d8:	02077713          	andi	a4,a4,32
    800035dc:	fc071ae3          	bnez	a4,800035b0 <uartintr+0x70>
    800035e0:	01813083          	ld	ra,24(sp)
    800035e4:	01013403          	ld	s0,16(sp)
    800035e8:	00813483          	ld	s1,8(sp)
    800035ec:	02010113          	addi	sp,sp,32
    800035f0:	00008067          	ret
    800035f4:	00002617          	auipc	a2,0x2
    800035f8:	46c60613          	addi	a2,a2,1132 # 80005a60 <uart_tx_r>
    800035fc:	00002517          	auipc	a0,0x2
    80003600:	46c50513          	addi	a0,a0,1132 # 80005a68 <uart_tx_w>
    80003604:	00063783          	ld	a5,0(a2)
    80003608:	00053703          	ld	a4,0(a0)
    8000360c:	04f70263          	beq	a4,a5,80003650 <uartintr+0x110>
    80003610:	100005b7          	lui	a1,0x10000
    80003614:	00003817          	auipc	a6,0x3
    80003618:	6dc80813          	addi	a6,a6,1756 # 80006cf0 <uart_tx_buf>
    8000361c:	01c0006f          	j	80003638 <uartintr+0xf8>
    80003620:	0006c703          	lbu	a4,0(a3)
    80003624:	00f63023          	sd	a5,0(a2)
    80003628:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000362c:	00063783          	ld	a5,0(a2)
    80003630:	00053703          	ld	a4,0(a0)
    80003634:	02f70063          	beq	a4,a5,80003654 <uartintr+0x114>
    80003638:	01f7f713          	andi	a4,a5,31
    8000363c:	00e806b3          	add	a3,a6,a4
    80003640:	0055c703          	lbu	a4,5(a1)
    80003644:	00178793          	addi	a5,a5,1
    80003648:	02077713          	andi	a4,a4,32
    8000364c:	fc071ae3          	bnez	a4,80003620 <uartintr+0xe0>
    80003650:	00008067          	ret
    80003654:	00008067          	ret

0000000080003658 <kinit>:
    80003658:	fc010113          	addi	sp,sp,-64
    8000365c:	02913423          	sd	s1,40(sp)
    80003660:	fffff7b7          	lui	a5,0xfffff
    80003664:	00004497          	auipc	s1,0x4
    80003668:	6ab48493          	addi	s1,s1,1707 # 80007d0f <end+0xfff>
    8000366c:	02813823          	sd	s0,48(sp)
    80003670:	01313c23          	sd	s3,24(sp)
    80003674:	00f4f4b3          	and	s1,s1,a5
    80003678:	02113c23          	sd	ra,56(sp)
    8000367c:	03213023          	sd	s2,32(sp)
    80003680:	01413823          	sd	s4,16(sp)
    80003684:	01513423          	sd	s5,8(sp)
    80003688:	04010413          	addi	s0,sp,64
    8000368c:	000017b7          	lui	a5,0x1
    80003690:	01100993          	li	s3,17
    80003694:	00f487b3          	add	a5,s1,a5
    80003698:	01b99993          	slli	s3,s3,0x1b
    8000369c:	06f9e063          	bltu	s3,a5,800036fc <kinit+0xa4>
    800036a0:	00003a97          	auipc	s5,0x3
    800036a4:	670a8a93          	addi	s5,s5,1648 # 80006d10 <end>
    800036a8:	0754ec63          	bltu	s1,s5,80003720 <kinit+0xc8>
    800036ac:	0734fa63          	bgeu	s1,s3,80003720 <kinit+0xc8>
    800036b0:	00088a37          	lui	s4,0x88
    800036b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800036b8:	00002917          	auipc	s2,0x2
    800036bc:	3b890913          	addi	s2,s2,952 # 80005a70 <kmem>
    800036c0:	00ca1a13          	slli	s4,s4,0xc
    800036c4:	0140006f          	j	800036d8 <kinit+0x80>
    800036c8:	000017b7          	lui	a5,0x1
    800036cc:	00f484b3          	add	s1,s1,a5
    800036d0:	0554e863          	bltu	s1,s5,80003720 <kinit+0xc8>
    800036d4:	0534f663          	bgeu	s1,s3,80003720 <kinit+0xc8>
    800036d8:	00001637          	lui	a2,0x1
    800036dc:	00100593          	li	a1,1
    800036e0:	00048513          	mv	a0,s1
    800036e4:	00000097          	auipc	ra,0x0
    800036e8:	5e4080e7          	jalr	1508(ra) # 80003cc8 <__memset>
    800036ec:	00093783          	ld	a5,0(s2)
    800036f0:	00f4b023          	sd	a5,0(s1)
    800036f4:	00993023          	sd	s1,0(s2)
    800036f8:	fd4498e3          	bne	s1,s4,800036c8 <kinit+0x70>
    800036fc:	03813083          	ld	ra,56(sp)
    80003700:	03013403          	ld	s0,48(sp)
    80003704:	02813483          	ld	s1,40(sp)
    80003708:	02013903          	ld	s2,32(sp)
    8000370c:	01813983          	ld	s3,24(sp)
    80003710:	01013a03          	ld	s4,16(sp)
    80003714:	00813a83          	ld	s5,8(sp)
    80003718:	04010113          	addi	sp,sp,64
    8000371c:	00008067          	ret
    80003720:	00002517          	auipc	a0,0x2
    80003724:	bb050513          	addi	a0,a0,-1104 # 800052d0 <digits+0x18>
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	4b4080e7          	jalr	1204(ra) # 80002bdc <panic>

0000000080003730 <freerange>:
    80003730:	fc010113          	addi	sp,sp,-64
    80003734:	000017b7          	lui	a5,0x1
    80003738:	02913423          	sd	s1,40(sp)
    8000373c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003740:	009504b3          	add	s1,a0,s1
    80003744:	fffff537          	lui	a0,0xfffff
    80003748:	02813823          	sd	s0,48(sp)
    8000374c:	02113c23          	sd	ra,56(sp)
    80003750:	03213023          	sd	s2,32(sp)
    80003754:	01313c23          	sd	s3,24(sp)
    80003758:	01413823          	sd	s4,16(sp)
    8000375c:	01513423          	sd	s5,8(sp)
    80003760:	01613023          	sd	s6,0(sp)
    80003764:	04010413          	addi	s0,sp,64
    80003768:	00a4f4b3          	and	s1,s1,a0
    8000376c:	00f487b3          	add	a5,s1,a5
    80003770:	06f5e463          	bltu	a1,a5,800037d8 <freerange+0xa8>
    80003774:	00003a97          	auipc	s5,0x3
    80003778:	59ca8a93          	addi	s5,s5,1436 # 80006d10 <end>
    8000377c:	0954e263          	bltu	s1,s5,80003800 <freerange+0xd0>
    80003780:	01100993          	li	s3,17
    80003784:	01b99993          	slli	s3,s3,0x1b
    80003788:	0734fc63          	bgeu	s1,s3,80003800 <freerange+0xd0>
    8000378c:	00058a13          	mv	s4,a1
    80003790:	00002917          	auipc	s2,0x2
    80003794:	2e090913          	addi	s2,s2,736 # 80005a70 <kmem>
    80003798:	00002b37          	lui	s6,0x2
    8000379c:	0140006f          	j	800037b0 <freerange+0x80>
    800037a0:	000017b7          	lui	a5,0x1
    800037a4:	00f484b3          	add	s1,s1,a5
    800037a8:	0554ec63          	bltu	s1,s5,80003800 <freerange+0xd0>
    800037ac:	0534fa63          	bgeu	s1,s3,80003800 <freerange+0xd0>
    800037b0:	00001637          	lui	a2,0x1
    800037b4:	00100593          	li	a1,1
    800037b8:	00048513          	mv	a0,s1
    800037bc:	00000097          	auipc	ra,0x0
    800037c0:	50c080e7          	jalr	1292(ra) # 80003cc8 <__memset>
    800037c4:	00093703          	ld	a4,0(s2)
    800037c8:	016487b3          	add	a5,s1,s6
    800037cc:	00e4b023          	sd	a4,0(s1)
    800037d0:	00993023          	sd	s1,0(s2)
    800037d4:	fcfa76e3          	bgeu	s4,a5,800037a0 <freerange+0x70>
    800037d8:	03813083          	ld	ra,56(sp)
    800037dc:	03013403          	ld	s0,48(sp)
    800037e0:	02813483          	ld	s1,40(sp)
    800037e4:	02013903          	ld	s2,32(sp)
    800037e8:	01813983          	ld	s3,24(sp)
    800037ec:	01013a03          	ld	s4,16(sp)
    800037f0:	00813a83          	ld	s5,8(sp)
    800037f4:	00013b03          	ld	s6,0(sp)
    800037f8:	04010113          	addi	sp,sp,64
    800037fc:	00008067          	ret
    80003800:	00002517          	auipc	a0,0x2
    80003804:	ad050513          	addi	a0,a0,-1328 # 800052d0 <digits+0x18>
    80003808:	fffff097          	auipc	ra,0xfffff
    8000380c:	3d4080e7          	jalr	980(ra) # 80002bdc <panic>

0000000080003810 <kfree>:
    80003810:	fe010113          	addi	sp,sp,-32
    80003814:	00813823          	sd	s0,16(sp)
    80003818:	00113c23          	sd	ra,24(sp)
    8000381c:	00913423          	sd	s1,8(sp)
    80003820:	02010413          	addi	s0,sp,32
    80003824:	03451793          	slli	a5,a0,0x34
    80003828:	04079c63          	bnez	a5,80003880 <kfree+0x70>
    8000382c:	00003797          	auipc	a5,0x3
    80003830:	4e478793          	addi	a5,a5,1252 # 80006d10 <end>
    80003834:	00050493          	mv	s1,a0
    80003838:	04f56463          	bltu	a0,a5,80003880 <kfree+0x70>
    8000383c:	01100793          	li	a5,17
    80003840:	01b79793          	slli	a5,a5,0x1b
    80003844:	02f57e63          	bgeu	a0,a5,80003880 <kfree+0x70>
    80003848:	00001637          	lui	a2,0x1
    8000384c:	00100593          	li	a1,1
    80003850:	00000097          	auipc	ra,0x0
    80003854:	478080e7          	jalr	1144(ra) # 80003cc8 <__memset>
    80003858:	00002797          	auipc	a5,0x2
    8000385c:	21878793          	addi	a5,a5,536 # 80005a70 <kmem>
    80003860:	0007b703          	ld	a4,0(a5)
    80003864:	01813083          	ld	ra,24(sp)
    80003868:	01013403          	ld	s0,16(sp)
    8000386c:	00e4b023          	sd	a4,0(s1)
    80003870:	0097b023          	sd	s1,0(a5)
    80003874:	00813483          	ld	s1,8(sp)
    80003878:	02010113          	addi	sp,sp,32
    8000387c:	00008067          	ret
    80003880:	00002517          	auipc	a0,0x2
    80003884:	a5050513          	addi	a0,a0,-1456 # 800052d0 <digits+0x18>
    80003888:	fffff097          	auipc	ra,0xfffff
    8000388c:	354080e7          	jalr	852(ra) # 80002bdc <panic>

0000000080003890 <kalloc>:
    80003890:	fe010113          	addi	sp,sp,-32
    80003894:	00813823          	sd	s0,16(sp)
    80003898:	00913423          	sd	s1,8(sp)
    8000389c:	00113c23          	sd	ra,24(sp)
    800038a0:	02010413          	addi	s0,sp,32
    800038a4:	00002797          	auipc	a5,0x2
    800038a8:	1cc78793          	addi	a5,a5,460 # 80005a70 <kmem>
    800038ac:	0007b483          	ld	s1,0(a5)
    800038b0:	02048063          	beqz	s1,800038d0 <kalloc+0x40>
    800038b4:	0004b703          	ld	a4,0(s1)
    800038b8:	00001637          	lui	a2,0x1
    800038bc:	00500593          	li	a1,5
    800038c0:	00048513          	mv	a0,s1
    800038c4:	00e7b023          	sd	a4,0(a5)
    800038c8:	00000097          	auipc	ra,0x0
    800038cc:	400080e7          	jalr	1024(ra) # 80003cc8 <__memset>
    800038d0:	01813083          	ld	ra,24(sp)
    800038d4:	01013403          	ld	s0,16(sp)
    800038d8:	00048513          	mv	a0,s1
    800038dc:	00813483          	ld	s1,8(sp)
    800038e0:	02010113          	addi	sp,sp,32
    800038e4:	00008067          	ret

00000000800038e8 <initlock>:
    800038e8:	ff010113          	addi	sp,sp,-16
    800038ec:	00813423          	sd	s0,8(sp)
    800038f0:	01010413          	addi	s0,sp,16
    800038f4:	00813403          	ld	s0,8(sp)
    800038f8:	00b53423          	sd	a1,8(a0)
    800038fc:	00052023          	sw	zero,0(a0)
    80003900:	00053823          	sd	zero,16(a0)
    80003904:	01010113          	addi	sp,sp,16
    80003908:	00008067          	ret

000000008000390c <acquire>:
    8000390c:	fe010113          	addi	sp,sp,-32
    80003910:	00813823          	sd	s0,16(sp)
    80003914:	00913423          	sd	s1,8(sp)
    80003918:	00113c23          	sd	ra,24(sp)
    8000391c:	01213023          	sd	s2,0(sp)
    80003920:	02010413          	addi	s0,sp,32
    80003924:	00050493          	mv	s1,a0
    80003928:	10002973          	csrr	s2,sstatus
    8000392c:	100027f3          	csrr	a5,sstatus
    80003930:	ffd7f793          	andi	a5,a5,-3
    80003934:	10079073          	csrw	sstatus,a5
    80003938:	fffff097          	auipc	ra,0xfffff
    8000393c:	8ec080e7          	jalr	-1812(ra) # 80002224 <mycpu>
    80003940:	07852783          	lw	a5,120(a0)
    80003944:	06078e63          	beqz	a5,800039c0 <acquire+0xb4>
    80003948:	fffff097          	auipc	ra,0xfffff
    8000394c:	8dc080e7          	jalr	-1828(ra) # 80002224 <mycpu>
    80003950:	07852783          	lw	a5,120(a0)
    80003954:	0004a703          	lw	a4,0(s1)
    80003958:	0017879b          	addiw	a5,a5,1
    8000395c:	06f52c23          	sw	a5,120(a0)
    80003960:	04071063          	bnez	a4,800039a0 <acquire+0x94>
    80003964:	00100713          	li	a4,1
    80003968:	00070793          	mv	a5,a4
    8000396c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003970:	0007879b          	sext.w	a5,a5
    80003974:	fe079ae3          	bnez	a5,80003968 <acquire+0x5c>
    80003978:	0ff0000f          	fence
    8000397c:	fffff097          	auipc	ra,0xfffff
    80003980:	8a8080e7          	jalr	-1880(ra) # 80002224 <mycpu>
    80003984:	01813083          	ld	ra,24(sp)
    80003988:	01013403          	ld	s0,16(sp)
    8000398c:	00a4b823          	sd	a0,16(s1)
    80003990:	00013903          	ld	s2,0(sp)
    80003994:	00813483          	ld	s1,8(sp)
    80003998:	02010113          	addi	sp,sp,32
    8000399c:	00008067          	ret
    800039a0:	0104b903          	ld	s2,16(s1)
    800039a4:	fffff097          	auipc	ra,0xfffff
    800039a8:	880080e7          	jalr	-1920(ra) # 80002224 <mycpu>
    800039ac:	faa91ce3          	bne	s2,a0,80003964 <acquire+0x58>
    800039b0:	00002517          	auipc	a0,0x2
    800039b4:	92850513          	addi	a0,a0,-1752 # 800052d8 <digits+0x20>
    800039b8:	fffff097          	auipc	ra,0xfffff
    800039bc:	224080e7          	jalr	548(ra) # 80002bdc <panic>
    800039c0:	00195913          	srli	s2,s2,0x1
    800039c4:	fffff097          	auipc	ra,0xfffff
    800039c8:	860080e7          	jalr	-1952(ra) # 80002224 <mycpu>
    800039cc:	00197913          	andi	s2,s2,1
    800039d0:	07252e23          	sw	s2,124(a0)
    800039d4:	f75ff06f          	j	80003948 <acquire+0x3c>

00000000800039d8 <release>:
    800039d8:	fe010113          	addi	sp,sp,-32
    800039dc:	00813823          	sd	s0,16(sp)
    800039e0:	00113c23          	sd	ra,24(sp)
    800039e4:	00913423          	sd	s1,8(sp)
    800039e8:	01213023          	sd	s2,0(sp)
    800039ec:	02010413          	addi	s0,sp,32
    800039f0:	00052783          	lw	a5,0(a0)
    800039f4:	00079a63          	bnez	a5,80003a08 <release+0x30>
    800039f8:	00002517          	auipc	a0,0x2
    800039fc:	8e850513          	addi	a0,a0,-1816 # 800052e0 <digits+0x28>
    80003a00:	fffff097          	auipc	ra,0xfffff
    80003a04:	1dc080e7          	jalr	476(ra) # 80002bdc <panic>
    80003a08:	01053903          	ld	s2,16(a0)
    80003a0c:	00050493          	mv	s1,a0
    80003a10:	fffff097          	auipc	ra,0xfffff
    80003a14:	814080e7          	jalr	-2028(ra) # 80002224 <mycpu>
    80003a18:	fea910e3          	bne	s2,a0,800039f8 <release+0x20>
    80003a1c:	0004b823          	sd	zero,16(s1)
    80003a20:	0ff0000f          	fence
    80003a24:	0f50000f          	fence	iorw,ow
    80003a28:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	7f8080e7          	jalr	2040(ra) # 80002224 <mycpu>
    80003a34:	100027f3          	csrr	a5,sstatus
    80003a38:	0027f793          	andi	a5,a5,2
    80003a3c:	04079a63          	bnez	a5,80003a90 <release+0xb8>
    80003a40:	07852783          	lw	a5,120(a0)
    80003a44:	02f05e63          	blez	a5,80003a80 <release+0xa8>
    80003a48:	fff7871b          	addiw	a4,a5,-1
    80003a4c:	06e52c23          	sw	a4,120(a0)
    80003a50:	00071c63          	bnez	a4,80003a68 <release+0x90>
    80003a54:	07c52783          	lw	a5,124(a0)
    80003a58:	00078863          	beqz	a5,80003a68 <release+0x90>
    80003a5c:	100027f3          	csrr	a5,sstatus
    80003a60:	0027e793          	ori	a5,a5,2
    80003a64:	10079073          	csrw	sstatus,a5
    80003a68:	01813083          	ld	ra,24(sp)
    80003a6c:	01013403          	ld	s0,16(sp)
    80003a70:	00813483          	ld	s1,8(sp)
    80003a74:	00013903          	ld	s2,0(sp)
    80003a78:	02010113          	addi	sp,sp,32
    80003a7c:	00008067          	ret
    80003a80:	00002517          	auipc	a0,0x2
    80003a84:	88050513          	addi	a0,a0,-1920 # 80005300 <digits+0x48>
    80003a88:	fffff097          	auipc	ra,0xfffff
    80003a8c:	154080e7          	jalr	340(ra) # 80002bdc <panic>
    80003a90:	00002517          	auipc	a0,0x2
    80003a94:	85850513          	addi	a0,a0,-1960 # 800052e8 <digits+0x30>
    80003a98:	fffff097          	auipc	ra,0xfffff
    80003a9c:	144080e7          	jalr	324(ra) # 80002bdc <panic>

0000000080003aa0 <holding>:
    80003aa0:	00052783          	lw	a5,0(a0)
    80003aa4:	00079663          	bnez	a5,80003ab0 <holding+0x10>
    80003aa8:	00000513          	li	a0,0
    80003aac:	00008067          	ret
    80003ab0:	fe010113          	addi	sp,sp,-32
    80003ab4:	00813823          	sd	s0,16(sp)
    80003ab8:	00913423          	sd	s1,8(sp)
    80003abc:	00113c23          	sd	ra,24(sp)
    80003ac0:	02010413          	addi	s0,sp,32
    80003ac4:	01053483          	ld	s1,16(a0)
    80003ac8:	ffffe097          	auipc	ra,0xffffe
    80003acc:	75c080e7          	jalr	1884(ra) # 80002224 <mycpu>
    80003ad0:	01813083          	ld	ra,24(sp)
    80003ad4:	01013403          	ld	s0,16(sp)
    80003ad8:	40a48533          	sub	a0,s1,a0
    80003adc:	00153513          	seqz	a0,a0
    80003ae0:	00813483          	ld	s1,8(sp)
    80003ae4:	02010113          	addi	sp,sp,32
    80003ae8:	00008067          	ret

0000000080003aec <push_off>:
    80003aec:	fe010113          	addi	sp,sp,-32
    80003af0:	00813823          	sd	s0,16(sp)
    80003af4:	00113c23          	sd	ra,24(sp)
    80003af8:	00913423          	sd	s1,8(sp)
    80003afc:	02010413          	addi	s0,sp,32
    80003b00:	100024f3          	csrr	s1,sstatus
    80003b04:	100027f3          	csrr	a5,sstatus
    80003b08:	ffd7f793          	andi	a5,a5,-3
    80003b0c:	10079073          	csrw	sstatus,a5
    80003b10:	ffffe097          	auipc	ra,0xffffe
    80003b14:	714080e7          	jalr	1812(ra) # 80002224 <mycpu>
    80003b18:	07852783          	lw	a5,120(a0)
    80003b1c:	02078663          	beqz	a5,80003b48 <push_off+0x5c>
    80003b20:	ffffe097          	auipc	ra,0xffffe
    80003b24:	704080e7          	jalr	1796(ra) # 80002224 <mycpu>
    80003b28:	07852783          	lw	a5,120(a0)
    80003b2c:	01813083          	ld	ra,24(sp)
    80003b30:	01013403          	ld	s0,16(sp)
    80003b34:	0017879b          	addiw	a5,a5,1
    80003b38:	06f52c23          	sw	a5,120(a0)
    80003b3c:	00813483          	ld	s1,8(sp)
    80003b40:	02010113          	addi	sp,sp,32
    80003b44:	00008067          	ret
    80003b48:	0014d493          	srli	s1,s1,0x1
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	6d8080e7          	jalr	1752(ra) # 80002224 <mycpu>
    80003b54:	0014f493          	andi	s1,s1,1
    80003b58:	06952e23          	sw	s1,124(a0)
    80003b5c:	fc5ff06f          	j	80003b20 <push_off+0x34>

0000000080003b60 <pop_off>:
    80003b60:	ff010113          	addi	sp,sp,-16
    80003b64:	00813023          	sd	s0,0(sp)
    80003b68:	00113423          	sd	ra,8(sp)
    80003b6c:	01010413          	addi	s0,sp,16
    80003b70:	ffffe097          	auipc	ra,0xffffe
    80003b74:	6b4080e7          	jalr	1716(ra) # 80002224 <mycpu>
    80003b78:	100027f3          	csrr	a5,sstatus
    80003b7c:	0027f793          	andi	a5,a5,2
    80003b80:	04079663          	bnez	a5,80003bcc <pop_off+0x6c>
    80003b84:	07852783          	lw	a5,120(a0)
    80003b88:	02f05a63          	blez	a5,80003bbc <pop_off+0x5c>
    80003b8c:	fff7871b          	addiw	a4,a5,-1
    80003b90:	06e52c23          	sw	a4,120(a0)
    80003b94:	00071c63          	bnez	a4,80003bac <pop_off+0x4c>
    80003b98:	07c52783          	lw	a5,124(a0)
    80003b9c:	00078863          	beqz	a5,80003bac <pop_off+0x4c>
    80003ba0:	100027f3          	csrr	a5,sstatus
    80003ba4:	0027e793          	ori	a5,a5,2
    80003ba8:	10079073          	csrw	sstatus,a5
    80003bac:	00813083          	ld	ra,8(sp)
    80003bb0:	00013403          	ld	s0,0(sp)
    80003bb4:	01010113          	addi	sp,sp,16
    80003bb8:	00008067          	ret
    80003bbc:	00001517          	auipc	a0,0x1
    80003bc0:	74450513          	addi	a0,a0,1860 # 80005300 <digits+0x48>
    80003bc4:	fffff097          	auipc	ra,0xfffff
    80003bc8:	018080e7          	jalr	24(ra) # 80002bdc <panic>
    80003bcc:	00001517          	auipc	a0,0x1
    80003bd0:	71c50513          	addi	a0,a0,1820 # 800052e8 <digits+0x30>
    80003bd4:	fffff097          	auipc	ra,0xfffff
    80003bd8:	008080e7          	jalr	8(ra) # 80002bdc <panic>

0000000080003bdc <push_on>:
    80003bdc:	fe010113          	addi	sp,sp,-32
    80003be0:	00813823          	sd	s0,16(sp)
    80003be4:	00113c23          	sd	ra,24(sp)
    80003be8:	00913423          	sd	s1,8(sp)
    80003bec:	02010413          	addi	s0,sp,32
    80003bf0:	100024f3          	csrr	s1,sstatus
    80003bf4:	100027f3          	csrr	a5,sstatus
    80003bf8:	0027e793          	ori	a5,a5,2
    80003bfc:	10079073          	csrw	sstatus,a5
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	624080e7          	jalr	1572(ra) # 80002224 <mycpu>
    80003c08:	07852783          	lw	a5,120(a0)
    80003c0c:	02078663          	beqz	a5,80003c38 <push_on+0x5c>
    80003c10:	ffffe097          	auipc	ra,0xffffe
    80003c14:	614080e7          	jalr	1556(ra) # 80002224 <mycpu>
    80003c18:	07852783          	lw	a5,120(a0)
    80003c1c:	01813083          	ld	ra,24(sp)
    80003c20:	01013403          	ld	s0,16(sp)
    80003c24:	0017879b          	addiw	a5,a5,1
    80003c28:	06f52c23          	sw	a5,120(a0)
    80003c2c:	00813483          	ld	s1,8(sp)
    80003c30:	02010113          	addi	sp,sp,32
    80003c34:	00008067          	ret
    80003c38:	0014d493          	srli	s1,s1,0x1
    80003c3c:	ffffe097          	auipc	ra,0xffffe
    80003c40:	5e8080e7          	jalr	1512(ra) # 80002224 <mycpu>
    80003c44:	0014f493          	andi	s1,s1,1
    80003c48:	06952e23          	sw	s1,124(a0)
    80003c4c:	fc5ff06f          	j	80003c10 <push_on+0x34>

0000000080003c50 <pop_on>:
    80003c50:	ff010113          	addi	sp,sp,-16
    80003c54:	00813023          	sd	s0,0(sp)
    80003c58:	00113423          	sd	ra,8(sp)
    80003c5c:	01010413          	addi	s0,sp,16
    80003c60:	ffffe097          	auipc	ra,0xffffe
    80003c64:	5c4080e7          	jalr	1476(ra) # 80002224 <mycpu>
    80003c68:	100027f3          	csrr	a5,sstatus
    80003c6c:	0027f793          	andi	a5,a5,2
    80003c70:	04078463          	beqz	a5,80003cb8 <pop_on+0x68>
    80003c74:	07852783          	lw	a5,120(a0)
    80003c78:	02f05863          	blez	a5,80003ca8 <pop_on+0x58>
    80003c7c:	fff7879b          	addiw	a5,a5,-1
    80003c80:	06f52c23          	sw	a5,120(a0)
    80003c84:	07853783          	ld	a5,120(a0)
    80003c88:	00079863          	bnez	a5,80003c98 <pop_on+0x48>
    80003c8c:	100027f3          	csrr	a5,sstatus
    80003c90:	ffd7f793          	andi	a5,a5,-3
    80003c94:	10079073          	csrw	sstatus,a5
    80003c98:	00813083          	ld	ra,8(sp)
    80003c9c:	00013403          	ld	s0,0(sp)
    80003ca0:	01010113          	addi	sp,sp,16
    80003ca4:	00008067          	ret
    80003ca8:	00001517          	auipc	a0,0x1
    80003cac:	68050513          	addi	a0,a0,1664 # 80005328 <digits+0x70>
    80003cb0:	fffff097          	auipc	ra,0xfffff
    80003cb4:	f2c080e7          	jalr	-212(ra) # 80002bdc <panic>
    80003cb8:	00001517          	auipc	a0,0x1
    80003cbc:	65050513          	addi	a0,a0,1616 # 80005308 <digits+0x50>
    80003cc0:	fffff097          	auipc	ra,0xfffff
    80003cc4:	f1c080e7          	jalr	-228(ra) # 80002bdc <panic>

0000000080003cc8 <__memset>:
    80003cc8:	ff010113          	addi	sp,sp,-16
    80003ccc:	00813423          	sd	s0,8(sp)
    80003cd0:	01010413          	addi	s0,sp,16
    80003cd4:	1a060e63          	beqz	a2,80003e90 <__memset+0x1c8>
    80003cd8:	40a007b3          	neg	a5,a0
    80003cdc:	0077f793          	andi	a5,a5,7
    80003ce0:	00778693          	addi	a3,a5,7
    80003ce4:	00b00813          	li	a6,11
    80003ce8:	0ff5f593          	andi	a1,a1,255
    80003cec:	fff6071b          	addiw	a4,a2,-1
    80003cf0:	1b06e663          	bltu	a3,a6,80003e9c <__memset+0x1d4>
    80003cf4:	1cd76463          	bltu	a4,a3,80003ebc <__memset+0x1f4>
    80003cf8:	1a078e63          	beqz	a5,80003eb4 <__memset+0x1ec>
    80003cfc:	00b50023          	sb	a1,0(a0)
    80003d00:	00100713          	li	a4,1
    80003d04:	1ae78463          	beq	a5,a4,80003eac <__memset+0x1e4>
    80003d08:	00b500a3          	sb	a1,1(a0)
    80003d0c:	00200713          	li	a4,2
    80003d10:	1ae78a63          	beq	a5,a4,80003ec4 <__memset+0x1fc>
    80003d14:	00b50123          	sb	a1,2(a0)
    80003d18:	00300713          	li	a4,3
    80003d1c:	18e78463          	beq	a5,a4,80003ea4 <__memset+0x1dc>
    80003d20:	00b501a3          	sb	a1,3(a0)
    80003d24:	00400713          	li	a4,4
    80003d28:	1ae78263          	beq	a5,a4,80003ecc <__memset+0x204>
    80003d2c:	00b50223          	sb	a1,4(a0)
    80003d30:	00500713          	li	a4,5
    80003d34:	1ae78063          	beq	a5,a4,80003ed4 <__memset+0x20c>
    80003d38:	00b502a3          	sb	a1,5(a0)
    80003d3c:	00700713          	li	a4,7
    80003d40:	18e79e63          	bne	a5,a4,80003edc <__memset+0x214>
    80003d44:	00b50323          	sb	a1,6(a0)
    80003d48:	00700e93          	li	t4,7
    80003d4c:	00859713          	slli	a4,a1,0x8
    80003d50:	00e5e733          	or	a4,a1,a4
    80003d54:	01059e13          	slli	t3,a1,0x10
    80003d58:	01c76e33          	or	t3,a4,t3
    80003d5c:	01859313          	slli	t1,a1,0x18
    80003d60:	006e6333          	or	t1,t3,t1
    80003d64:	02059893          	slli	a7,a1,0x20
    80003d68:	40f60e3b          	subw	t3,a2,a5
    80003d6c:	011368b3          	or	a7,t1,a7
    80003d70:	02859813          	slli	a6,a1,0x28
    80003d74:	0108e833          	or	a6,a7,a6
    80003d78:	03059693          	slli	a3,a1,0x30
    80003d7c:	003e589b          	srliw	a7,t3,0x3
    80003d80:	00d866b3          	or	a3,a6,a3
    80003d84:	03859713          	slli	a4,a1,0x38
    80003d88:	00389813          	slli	a6,a7,0x3
    80003d8c:	00f507b3          	add	a5,a0,a5
    80003d90:	00e6e733          	or	a4,a3,a4
    80003d94:	000e089b          	sext.w	a7,t3
    80003d98:	00f806b3          	add	a3,a6,a5
    80003d9c:	00e7b023          	sd	a4,0(a5)
    80003da0:	00878793          	addi	a5,a5,8
    80003da4:	fed79ce3          	bne	a5,a3,80003d9c <__memset+0xd4>
    80003da8:	ff8e7793          	andi	a5,t3,-8
    80003dac:	0007871b          	sext.w	a4,a5
    80003db0:	01d787bb          	addw	a5,a5,t4
    80003db4:	0ce88e63          	beq	a7,a4,80003e90 <__memset+0x1c8>
    80003db8:	00f50733          	add	a4,a0,a5
    80003dbc:	00b70023          	sb	a1,0(a4)
    80003dc0:	0017871b          	addiw	a4,a5,1
    80003dc4:	0cc77663          	bgeu	a4,a2,80003e90 <__memset+0x1c8>
    80003dc8:	00e50733          	add	a4,a0,a4
    80003dcc:	00b70023          	sb	a1,0(a4)
    80003dd0:	0027871b          	addiw	a4,a5,2
    80003dd4:	0ac77e63          	bgeu	a4,a2,80003e90 <__memset+0x1c8>
    80003dd8:	00e50733          	add	a4,a0,a4
    80003ddc:	00b70023          	sb	a1,0(a4)
    80003de0:	0037871b          	addiw	a4,a5,3
    80003de4:	0ac77663          	bgeu	a4,a2,80003e90 <__memset+0x1c8>
    80003de8:	00e50733          	add	a4,a0,a4
    80003dec:	00b70023          	sb	a1,0(a4)
    80003df0:	0047871b          	addiw	a4,a5,4
    80003df4:	08c77e63          	bgeu	a4,a2,80003e90 <__memset+0x1c8>
    80003df8:	00e50733          	add	a4,a0,a4
    80003dfc:	00b70023          	sb	a1,0(a4)
    80003e00:	0057871b          	addiw	a4,a5,5
    80003e04:	08c77663          	bgeu	a4,a2,80003e90 <__memset+0x1c8>
    80003e08:	00e50733          	add	a4,a0,a4
    80003e0c:	00b70023          	sb	a1,0(a4)
    80003e10:	0067871b          	addiw	a4,a5,6
    80003e14:	06c77e63          	bgeu	a4,a2,80003e90 <__memset+0x1c8>
    80003e18:	00e50733          	add	a4,a0,a4
    80003e1c:	00b70023          	sb	a1,0(a4)
    80003e20:	0077871b          	addiw	a4,a5,7
    80003e24:	06c77663          	bgeu	a4,a2,80003e90 <__memset+0x1c8>
    80003e28:	00e50733          	add	a4,a0,a4
    80003e2c:	00b70023          	sb	a1,0(a4)
    80003e30:	0087871b          	addiw	a4,a5,8
    80003e34:	04c77e63          	bgeu	a4,a2,80003e90 <__memset+0x1c8>
    80003e38:	00e50733          	add	a4,a0,a4
    80003e3c:	00b70023          	sb	a1,0(a4)
    80003e40:	0097871b          	addiw	a4,a5,9
    80003e44:	04c77663          	bgeu	a4,a2,80003e90 <__memset+0x1c8>
    80003e48:	00e50733          	add	a4,a0,a4
    80003e4c:	00b70023          	sb	a1,0(a4)
    80003e50:	00a7871b          	addiw	a4,a5,10
    80003e54:	02c77e63          	bgeu	a4,a2,80003e90 <__memset+0x1c8>
    80003e58:	00e50733          	add	a4,a0,a4
    80003e5c:	00b70023          	sb	a1,0(a4)
    80003e60:	00b7871b          	addiw	a4,a5,11
    80003e64:	02c77663          	bgeu	a4,a2,80003e90 <__memset+0x1c8>
    80003e68:	00e50733          	add	a4,a0,a4
    80003e6c:	00b70023          	sb	a1,0(a4)
    80003e70:	00c7871b          	addiw	a4,a5,12
    80003e74:	00c77e63          	bgeu	a4,a2,80003e90 <__memset+0x1c8>
    80003e78:	00e50733          	add	a4,a0,a4
    80003e7c:	00b70023          	sb	a1,0(a4)
    80003e80:	00d7879b          	addiw	a5,a5,13
    80003e84:	00c7f663          	bgeu	a5,a2,80003e90 <__memset+0x1c8>
    80003e88:	00f507b3          	add	a5,a0,a5
    80003e8c:	00b78023          	sb	a1,0(a5)
    80003e90:	00813403          	ld	s0,8(sp)
    80003e94:	01010113          	addi	sp,sp,16
    80003e98:	00008067          	ret
    80003e9c:	00b00693          	li	a3,11
    80003ea0:	e55ff06f          	j	80003cf4 <__memset+0x2c>
    80003ea4:	00300e93          	li	t4,3
    80003ea8:	ea5ff06f          	j	80003d4c <__memset+0x84>
    80003eac:	00100e93          	li	t4,1
    80003eb0:	e9dff06f          	j	80003d4c <__memset+0x84>
    80003eb4:	00000e93          	li	t4,0
    80003eb8:	e95ff06f          	j	80003d4c <__memset+0x84>
    80003ebc:	00000793          	li	a5,0
    80003ec0:	ef9ff06f          	j	80003db8 <__memset+0xf0>
    80003ec4:	00200e93          	li	t4,2
    80003ec8:	e85ff06f          	j	80003d4c <__memset+0x84>
    80003ecc:	00400e93          	li	t4,4
    80003ed0:	e7dff06f          	j	80003d4c <__memset+0x84>
    80003ed4:	00500e93          	li	t4,5
    80003ed8:	e75ff06f          	j	80003d4c <__memset+0x84>
    80003edc:	00600e93          	li	t4,6
    80003ee0:	e6dff06f          	j	80003d4c <__memset+0x84>

0000000080003ee4 <__memmove>:
    80003ee4:	ff010113          	addi	sp,sp,-16
    80003ee8:	00813423          	sd	s0,8(sp)
    80003eec:	01010413          	addi	s0,sp,16
    80003ef0:	0e060863          	beqz	a2,80003fe0 <__memmove+0xfc>
    80003ef4:	fff6069b          	addiw	a3,a2,-1
    80003ef8:	0006881b          	sext.w	a6,a3
    80003efc:	0ea5e863          	bltu	a1,a0,80003fec <__memmove+0x108>
    80003f00:	00758713          	addi	a4,a1,7
    80003f04:	00a5e7b3          	or	a5,a1,a0
    80003f08:	40a70733          	sub	a4,a4,a0
    80003f0c:	0077f793          	andi	a5,a5,7
    80003f10:	00f73713          	sltiu	a4,a4,15
    80003f14:	00174713          	xori	a4,a4,1
    80003f18:	0017b793          	seqz	a5,a5
    80003f1c:	00e7f7b3          	and	a5,a5,a4
    80003f20:	10078863          	beqz	a5,80004030 <__memmove+0x14c>
    80003f24:	00900793          	li	a5,9
    80003f28:	1107f463          	bgeu	a5,a6,80004030 <__memmove+0x14c>
    80003f2c:	0036581b          	srliw	a6,a2,0x3
    80003f30:	fff8081b          	addiw	a6,a6,-1
    80003f34:	02081813          	slli	a6,a6,0x20
    80003f38:	01d85893          	srli	a7,a6,0x1d
    80003f3c:	00858813          	addi	a6,a1,8
    80003f40:	00058793          	mv	a5,a1
    80003f44:	00050713          	mv	a4,a0
    80003f48:	01088833          	add	a6,a7,a6
    80003f4c:	0007b883          	ld	a7,0(a5)
    80003f50:	00878793          	addi	a5,a5,8
    80003f54:	00870713          	addi	a4,a4,8
    80003f58:	ff173c23          	sd	a7,-8(a4)
    80003f5c:	ff0798e3          	bne	a5,a6,80003f4c <__memmove+0x68>
    80003f60:	ff867713          	andi	a4,a2,-8
    80003f64:	02071793          	slli	a5,a4,0x20
    80003f68:	0207d793          	srli	a5,a5,0x20
    80003f6c:	00f585b3          	add	a1,a1,a5
    80003f70:	40e686bb          	subw	a3,a3,a4
    80003f74:	00f507b3          	add	a5,a0,a5
    80003f78:	06e60463          	beq	a2,a4,80003fe0 <__memmove+0xfc>
    80003f7c:	0005c703          	lbu	a4,0(a1)
    80003f80:	00e78023          	sb	a4,0(a5)
    80003f84:	04068e63          	beqz	a3,80003fe0 <__memmove+0xfc>
    80003f88:	0015c603          	lbu	a2,1(a1)
    80003f8c:	00100713          	li	a4,1
    80003f90:	00c780a3          	sb	a2,1(a5)
    80003f94:	04e68663          	beq	a3,a4,80003fe0 <__memmove+0xfc>
    80003f98:	0025c603          	lbu	a2,2(a1)
    80003f9c:	00200713          	li	a4,2
    80003fa0:	00c78123          	sb	a2,2(a5)
    80003fa4:	02e68e63          	beq	a3,a4,80003fe0 <__memmove+0xfc>
    80003fa8:	0035c603          	lbu	a2,3(a1)
    80003fac:	00300713          	li	a4,3
    80003fb0:	00c781a3          	sb	a2,3(a5)
    80003fb4:	02e68663          	beq	a3,a4,80003fe0 <__memmove+0xfc>
    80003fb8:	0045c603          	lbu	a2,4(a1)
    80003fbc:	00400713          	li	a4,4
    80003fc0:	00c78223          	sb	a2,4(a5)
    80003fc4:	00e68e63          	beq	a3,a4,80003fe0 <__memmove+0xfc>
    80003fc8:	0055c603          	lbu	a2,5(a1)
    80003fcc:	00500713          	li	a4,5
    80003fd0:	00c782a3          	sb	a2,5(a5)
    80003fd4:	00e68663          	beq	a3,a4,80003fe0 <__memmove+0xfc>
    80003fd8:	0065c703          	lbu	a4,6(a1)
    80003fdc:	00e78323          	sb	a4,6(a5)
    80003fe0:	00813403          	ld	s0,8(sp)
    80003fe4:	01010113          	addi	sp,sp,16
    80003fe8:	00008067          	ret
    80003fec:	02061713          	slli	a4,a2,0x20
    80003ff0:	02075713          	srli	a4,a4,0x20
    80003ff4:	00e587b3          	add	a5,a1,a4
    80003ff8:	f0f574e3          	bgeu	a0,a5,80003f00 <__memmove+0x1c>
    80003ffc:	02069613          	slli	a2,a3,0x20
    80004000:	02065613          	srli	a2,a2,0x20
    80004004:	fff64613          	not	a2,a2
    80004008:	00e50733          	add	a4,a0,a4
    8000400c:	00c78633          	add	a2,a5,a2
    80004010:	fff7c683          	lbu	a3,-1(a5)
    80004014:	fff78793          	addi	a5,a5,-1
    80004018:	fff70713          	addi	a4,a4,-1
    8000401c:	00d70023          	sb	a3,0(a4)
    80004020:	fec798e3          	bne	a5,a2,80004010 <__memmove+0x12c>
    80004024:	00813403          	ld	s0,8(sp)
    80004028:	01010113          	addi	sp,sp,16
    8000402c:	00008067          	ret
    80004030:	02069713          	slli	a4,a3,0x20
    80004034:	02075713          	srli	a4,a4,0x20
    80004038:	00170713          	addi	a4,a4,1
    8000403c:	00e50733          	add	a4,a0,a4
    80004040:	00050793          	mv	a5,a0
    80004044:	0005c683          	lbu	a3,0(a1)
    80004048:	00178793          	addi	a5,a5,1
    8000404c:	00158593          	addi	a1,a1,1
    80004050:	fed78fa3          	sb	a3,-1(a5)
    80004054:	fee798e3          	bne	a5,a4,80004044 <__memmove+0x160>
    80004058:	f89ff06f          	j	80003fe0 <__memmove+0xfc>

000000008000405c <__putc>:
    8000405c:	fe010113          	addi	sp,sp,-32
    80004060:	00813823          	sd	s0,16(sp)
    80004064:	00113c23          	sd	ra,24(sp)
    80004068:	02010413          	addi	s0,sp,32
    8000406c:	00050793          	mv	a5,a0
    80004070:	fef40593          	addi	a1,s0,-17
    80004074:	00100613          	li	a2,1
    80004078:	00000513          	li	a0,0
    8000407c:	fef407a3          	sb	a5,-17(s0)
    80004080:	fffff097          	auipc	ra,0xfffff
    80004084:	b3c080e7          	jalr	-1220(ra) # 80002bbc <console_write>
    80004088:	01813083          	ld	ra,24(sp)
    8000408c:	01013403          	ld	s0,16(sp)
    80004090:	02010113          	addi	sp,sp,32
    80004094:	00008067          	ret

0000000080004098 <__getc>:
    80004098:	fe010113          	addi	sp,sp,-32
    8000409c:	00813823          	sd	s0,16(sp)
    800040a0:	00113c23          	sd	ra,24(sp)
    800040a4:	02010413          	addi	s0,sp,32
    800040a8:	fe840593          	addi	a1,s0,-24
    800040ac:	00100613          	li	a2,1
    800040b0:	00000513          	li	a0,0
    800040b4:	fffff097          	auipc	ra,0xfffff
    800040b8:	ae8080e7          	jalr	-1304(ra) # 80002b9c <console_read>
    800040bc:	fe844503          	lbu	a0,-24(s0)
    800040c0:	01813083          	ld	ra,24(sp)
    800040c4:	01013403          	ld	s0,16(sp)
    800040c8:	02010113          	addi	sp,sp,32
    800040cc:	00008067          	ret

00000000800040d0 <console_handler>:
    800040d0:	fe010113          	addi	sp,sp,-32
    800040d4:	00813823          	sd	s0,16(sp)
    800040d8:	00113c23          	sd	ra,24(sp)
    800040dc:	00913423          	sd	s1,8(sp)
    800040e0:	02010413          	addi	s0,sp,32
    800040e4:	14202773          	csrr	a4,scause
    800040e8:	100027f3          	csrr	a5,sstatus
    800040ec:	0027f793          	andi	a5,a5,2
    800040f0:	06079e63          	bnez	a5,8000416c <console_handler+0x9c>
    800040f4:	00074c63          	bltz	a4,8000410c <console_handler+0x3c>
    800040f8:	01813083          	ld	ra,24(sp)
    800040fc:	01013403          	ld	s0,16(sp)
    80004100:	00813483          	ld	s1,8(sp)
    80004104:	02010113          	addi	sp,sp,32
    80004108:	00008067          	ret
    8000410c:	0ff77713          	andi	a4,a4,255
    80004110:	00900793          	li	a5,9
    80004114:	fef712e3          	bne	a4,a5,800040f8 <console_handler+0x28>
    80004118:	ffffe097          	auipc	ra,0xffffe
    8000411c:	6dc080e7          	jalr	1756(ra) # 800027f4 <plic_claim>
    80004120:	00a00793          	li	a5,10
    80004124:	00050493          	mv	s1,a0
    80004128:	02f50c63          	beq	a0,a5,80004160 <console_handler+0x90>
    8000412c:	fc0506e3          	beqz	a0,800040f8 <console_handler+0x28>
    80004130:	00050593          	mv	a1,a0
    80004134:	00001517          	auipc	a0,0x1
    80004138:	0fc50513          	addi	a0,a0,252 # 80005230 <CONSOLE_STATUS+0x220>
    8000413c:	fffff097          	auipc	ra,0xfffff
    80004140:	afc080e7          	jalr	-1284(ra) # 80002c38 <__printf>
    80004144:	01013403          	ld	s0,16(sp)
    80004148:	01813083          	ld	ra,24(sp)
    8000414c:	00048513          	mv	a0,s1
    80004150:	00813483          	ld	s1,8(sp)
    80004154:	02010113          	addi	sp,sp,32
    80004158:	ffffe317          	auipc	t1,0xffffe
    8000415c:	6d430067          	jr	1748(t1) # 8000282c <plic_complete>
    80004160:	fffff097          	auipc	ra,0xfffff
    80004164:	3e0080e7          	jalr	992(ra) # 80003540 <uartintr>
    80004168:	fddff06f          	j	80004144 <console_handler+0x74>
    8000416c:	00001517          	auipc	a0,0x1
    80004170:	1c450513          	addi	a0,a0,452 # 80005330 <digits+0x78>
    80004174:	fffff097          	auipc	ra,0xfffff
    80004178:	a68080e7          	jalr	-1432(ra) # 80002bdc <panic>
	...
