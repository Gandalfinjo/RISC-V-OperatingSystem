
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	95813103          	ld	sp,-1704(sp) # 80004958 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	529010ef          	jal	ra,80001d44 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <trap_handler>:
.align 4

.extern _ZN5Riscv11trapHandlerEv

trap_handler:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256

    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
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
    8000102c:	04b13c23          	sd	a1,88(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    80001040:	09013023          	sd	a6,128(sp)
    80001044:	09113423          	sd	a7,136(sp)
    80001048:	09213823          	sd	s2,144(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv11trapHandlerEv
    80001080:	714000ef          	jal	ra,80001794 <_ZN5Riscv11trapHandlerEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    80001084:	00013003          	ld	zero,0(sp)
    80001088:	00813083          	ld	ra,8(sp)
    8000108c:	01013103          	ld	sp,16(sp)
    80001090:	01813183          	ld	gp,24(sp)
    80001094:	02013203          	ld	tp,32(sp)
    80001098:	02813283          	ld	t0,40(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    800010ac:	05813583          	ld	a1,88(sp)
    800010b0:	06013603          	ld	a2,96(sp)
    800010b4:	06813683          	ld	a3,104(sp)
    800010b8:	07013703          	ld	a4,112(sp)
    800010bc:	07813783          	ld	a5,120(sp)
    800010c0:	08013803          	ld	a6,128(sp)
    800010c4:	08813883          	ld	a7,136(sp)
    800010c8:	09013903          	ld	s2,144(sp)
    800010cc:	09813983          	ld	s3,152(sp)
    800010d0:	0a013a03          	ld	s4,160(sp)
    800010d4:	0a813a83          	ld	s5,168(sp)
    800010d8:	0b013b03          	ld	s6,176(sp)
    800010dc:	0b813b83          	ld	s7,184(sp)
    800010e0:	0c013c03          	ld	s8,192(sp)
    800010e4:	0c813c83          	ld	s9,200(sp)
    800010e8:	0d013d03          	ld	s10,208(sp)
    800010ec:	0d813d83          	ld	s11,216(sp)
    800010f0:	0e013e03          	ld	t3,224(sp)
    800010f4:	0e813e83          	ld	t4,232(sp)
    800010f8:	0f013f03          	ld	t5,240(sp)
    800010fc:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001100:	10010113          	addi	sp,sp,256
    80001104:	10200073          	sret
	...

0000000080001110 <_ZN6Thread13contextSwitchEPNS_7ContextES1_>:
.align 4

_ZN6Thread13contextSwitchEPNS_7ContextES1_:
    # a0 = &oldContext, a1 = &newContext

    sd ra, 0(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    ret
    80001120:	00008067          	ret

0000000080001124 <_ZN6Thread11initContextEPNS_7ContextEPFvvEPv>:

_ZN6Thread11initContextEPNS_7ContextEPFvvEPv:
    # a0 = context, a1 = entry (Thread::wrapper), a2 = stackTop

    sd a1, 0(a0)
    80001124:	00b53023          	sd	a1,0(a0)
    sd a2, 8(a0)
    80001128:	00c53423          	sd	a2,8(a0)

    8000112c:	00008067          	ret
    80001130:	0000                	unimp
	...

0000000080001134 <_Z9mem_allocm>:
// Created by os on 10/7/25.
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size) {
    80001134:	ff010113          	addi	sp,sp,-16
    80001138:	00813423          	sd	s0,8(sp)
    8000113c:	01010413          	addi	s0,sp,16
    if (size == 0) return nullptr;
    80001140:	02050863          	beqz	a0,80001170 <_Z9mem_allocm+0x3c>

    size_t blocks = size / MEM_BLOCK_SIZE;
    80001144:	00655793          	srli	a5,a0,0x6
    if (size % MEM_BLOCK_SIZE != 0) blocks++;
    80001148:	03f57513          	andi	a0,a0,63
    8000114c:	00050463          	beqz	a0,80001154 <_Z9mem_allocm+0x20>
    80001150:	00178793          	addi	a5,a5,1

    void* result;
    asm volatile("mv a1, %0" :: "r"(blocks));
    80001154:	00078593          	mv	a1,a5
    asm volatile("li a0, 0x01");
    80001158:	00100513          	li	a0,1
    asm volatile("ecall");
    8000115c:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    80001160:	00050513          	mv	a0,a0
    return result;
}
    80001164:	00813403          	ld	s0,8(sp)
    80001168:	01010113          	addi	sp,sp,16
    8000116c:	00008067          	ret
    if (size == 0) return nullptr;
    80001170:	00000513          	li	a0,0
    80001174:	ff1ff06f          	j	80001164 <_Z9mem_allocm+0x30>

0000000080001178 <_Z8mem_freePv>:

int mem_free(void* addr) {
    80001178:	ff010113          	addi	sp,sp,-16
    8000117c:	00813423          	sd	s0,8(sp)
    80001180:	01010413          	addi	s0,sp,16
    int result;
    asm volatile("mv a1, %0" :: "r"(addr));
    80001184:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x02");
    80001188:	00200513          	li	a0,2
    asm volatile("ecall");
    8000118c:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    80001190:	00050513          	mv	a0,a0
    return result;
}
    80001194:	0005051b          	sext.w	a0,a0
    80001198:	00813403          	ld	s0,8(sp)
    8000119c:	01010113          	addi	sp,sp,16
    800011a0:	00008067          	ret

00000000800011a4 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space() {
    800011a4:	ff010113          	addi	sp,sp,-16
    800011a8:	00813423          	sd	s0,8(sp)
    800011ac:	01010413          	addi	s0,sp,16
    size_t result;
    asm volatile("li a0, 0x03");
    800011b0:	00300513          	li	a0,3
    asm volatile("ecall");
    800011b4:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800011b8:	00050513          	mv	a0,a0
    return result;
}
    800011bc:	00813403          	ld	s0,8(sp)
    800011c0:	01010113          	addi	sp,sp,16
    800011c4:	00008067          	ret

00000000800011c8 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block() {
    800011c8:	ff010113          	addi	sp,sp,-16
    800011cc:	00813423          	sd	s0,8(sp)
    800011d0:	01010413          	addi	s0,sp,16
    size_t result;
    asm volatile("li a0, 0x04");
    800011d4:	00400513          	li	a0,4
    asm volatile("ecall");
    800011d8:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(result));
    800011dc:	00050513          	mv	a0,a0
    return result;
    800011e0:	00813403          	ld	s0,8(sp)
    800011e4:	01010113          	addi	sp,sp,16
    800011e8:	00008067          	ret

00000000800011ec <_Znwm>:
// Created by os on 10/8/25.
//
#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"

void* operator new(size_t size) {
    800011ec:	ff010113          	addi	sp,sp,-16
    800011f0:	00113423          	sd	ra,8(sp)
    800011f4:	00813023          	sd	s0,0(sp)
    800011f8:	01010413          	addi	s0,sp,16
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800011fc:	03f50513          	addi	a0,a0,63
    return MemoryAllocator::mem_alloc(blocks);
    80001200:	00655513          	srli	a0,a0,0x6
    80001204:	00000097          	auipc	ra,0x0
    80001208:	6a4080e7          	jalr	1700(ra) # 800018a8 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000120c:	00813083          	ld	ra,8(sp)
    80001210:	00013403          	ld	s0,0(sp)
    80001214:	01010113          	addi	sp,sp,16
    80001218:	00008067          	ret

000000008000121c <_ZdlPv>:

void operator delete(void* ptr) noexcept {
    8000121c:	ff010113          	addi	sp,sp,-16
    80001220:	00113423          	sd	ra,8(sp)
    80001224:	00813023          	sd	s0,0(sp)
    80001228:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    8000122c:	00000097          	auipc	ra,0x0
    80001230:	77c080e7          	jalr	1916(ra) # 800019a8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001234:	00813083          	ld	ra,8(sp)
    80001238:	00013403          	ld	s0,0(sp)
    8000123c:	01010113          	addi	sp,sp,16
    80001240:	00008067          	ret

0000000080001244 <_Znam>:

void* operator new[](size_t size) {
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00113423          	sd	ra,8(sp)
    8000124c:	00813023          	sd	s0,0(sp)
    80001250:	01010413          	addi	s0,sp,16
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001254:	03f50513          	addi	a0,a0,63
    return MemoryAllocator::mem_alloc(blocks);
    80001258:	00655513          	srli	a0,a0,0x6
    8000125c:	00000097          	auipc	ra,0x0
    80001260:	64c080e7          	jalr	1612(ra) # 800018a8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001264:	00813083          	ld	ra,8(sp)
    80001268:	00013403          	ld	s0,0(sp)
    8000126c:	01010113          	addi	sp,sp,16
    80001270:	00008067          	ret

0000000080001274 <_ZdaPv>:

void operator delete[](void* ptr) noexcept {
    80001274:	ff010113          	addi	sp,sp,-16
    80001278:	00113423          	sd	ra,8(sp)
    8000127c:	00813023          	sd	s0,0(sp)
    80001280:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001284:	00000097          	auipc	ra,0x0
    80001288:	724080e7          	jalr	1828(ra) # 800019a8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000128c:	00813083          	ld	ra,8(sp)
    80001290:	00013403          	ld	s0,0(sp)
    80001294:	01010113          	addi	sp,sp,16
    80001298:	00008067          	ret

000000008000129c <_ZN6ThreadD1Ev>:
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), next(nullptr) {
    allocateStack(stackSizeBytes);
}

Thread::~Thread() {
    if (stack) {
    8000129c:	00853503          	ld	a0,8(a0)
    800012a0:	02050663          	beqz	a0,800012cc <_ZN6ThreadD1Ev+0x30>
Thread::~Thread() {
    800012a4:	ff010113          	addi	sp,sp,-16
    800012a8:	00113423          	sd	ra,8(sp)
    800012ac:	00813023          	sd	s0,0(sp)
    800012b0:	01010413          	addi	s0,sp,16
        MemoryAllocator::mem_free(stack);
    800012b4:	00000097          	auipc	ra,0x0
    800012b8:	6f4080e7          	jalr	1780(ra) # 800019a8 <_ZN15MemoryAllocator8mem_freeEPv>
        stack = nullptr;
    }
}
    800012bc:	00813083          	ld	ra,8(sp)
    800012c0:	00013403          	ld	s0,0(sp)
    800012c4:	01010113          	addi	sp,sp,16
    800012c8:	00008067          	ret
    800012cc:	00008067          	ret

00000000800012d0 <_ZN6Thread13allocateStackEm>:

void Thread::allocateStack(size_t bytes) {
    800012d0:	fe010113          	addi	sp,sp,-32
    800012d4:	00113c23          	sd	ra,24(sp)
    800012d8:	00813823          	sd	s0,16(sp)
    800012dc:	00913423          	sd	s1,8(sp)
    800012e0:	01213023          	sd	s2,0(sp)
    800012e4:	02010413          	addi	s0,sp,32
    800012e8:	00050913          	mv	s2,a0
    size_t blocks = bytes / MEM_BLOCK_SIZE;
    800012ec:	0065d493          	srli	s1,a1,0x6
    if (bytes % MEM_BLOCK_SIZE != 0) blocks++;
    800012f0:	03f5f593          	andi	a1,a1,63
    800012f4:	00058463          	beqz	a1,800012fc <_ZN6Thread13allocateStackEm+0x2c>
    800012f8:	00148493          	addi	s1,s1,1

    stack = MemoryAllocator::mem_alloc(blocks);
    800012fc:	00048513          	mv	a0,s1
    80001300:	00000097          	auipc	ra,0x0
    80001304:	5a8080e7          	jalr	1448(ra) # 800018a8 <_ZN15MemoryAllocator9mem_allocEm>
    80001308:	00a93423          	sd	a0,8(s2)
    stackSize = blocks * MEM_BLOCK_SIZE;
    8000130c:	00649493          	slli	s1,s1,0x6
    80001310:	00993823          	sd	s1,16(s2)
}
    80001314:	01813083          	ld	ra,24(sp)
    80001318:	01013403          	ld	s0,16(sp)
    8000131c:	00813483          	ld	s1,8(sp)
    80001320:	00013903          	ld	s2,0(sp)
    80001324:	02010113          	addi	sp,sp,32
    80001328:	00008067          	ret

000000008000132c <_ZN6ThreadC1EPFvPvES0_m>:
Thread::Thread(Body b, void* a, size_t stackSizeBytes)
    8000132c:	ff010113          	addi	sp,sp,-16
    80001330:	00113423          	sd	ra,8(sp)
    80001334:	00813023          	sd	s0,0(sp)
    80001338:	01010413          	addi	s0,sp,16
    : id(staticId++), stack(nullptr), stackSize(stackSizeBytes), body(b), args(a), state(NEW), next(nullptr) {
    8000133c:	00003817          	auipc	a6,0x3
    80001340:	68480813          	addi	a6,a6,1668 # 800049c0 <_ZN6Thread8staticIdE>
    80001344:	00082703          	lw	a4,0(a6)
    80001348:	0017089b          	addiw	a7,a4,1
    8000134c:	01182023          	sw	a7,0(a6)
    80001350:	00e52023          	sw	a4,0(a0)
    80001354:	00053423          	sd	zero,8(a0)
    80001358:	00d53823          	sd	a3,16(a0)
    8000135c:	02b53423          	sd	a1,40(a0)
    80001360:	02c53823          	sd	a2,48(a0)
    80001364:	02052c23          	sw	zero,56(a0)
    80001368:	04053023          	sd	zero,64(a0)
    allocateStack(stackSizeBytes);
    8000136c:	00068593          	mv	a1,a3
    80001370:	00000097          	auipc	ra,0x0
    80001374:	f60080e7          	jalr	-160(ra) # 800012d0 <_ZN6Thread13allocateStackEm>
}
    80001378:	00813083          	ld	ra,8(sp)
    8000137c:	00013403          	ld	s0,0(sp)
    80001380:	01010113          	addi	sp,sp,16
    80001384:	00008067          	ret

0000000080001388 <_ZN6Thread5startEv>:

void Thread::start() {
    if (state != NEW) return;
    80001388:	03852783          	lw	a5,56(a0)
    8000138c:	00078463          	beqz	a5,80001394 <_ZN6Thread5startEv+0xc>
    80001390:	00008067          	ret
void Thread::start() {
    80001394:	fe010113          	addi	sp,sp,-32
    80001398:	00113c23          	sd	ra,24(sp)
    8000139c:	00813823          	sd	s0,16(sp)
    800013a0:	00913423          	sd	s1,8(sp)
    800013a4:	02010413          	addi	s0,sp,32
    800013a8:	00050493          	mv	s1,a0

    void* stackTop = (char*)stack + stackSize;
    800013ac:	00853603          	ld	a2,8(a0)
    800013b0:	01053783          	ld	a5,16(a0)
    initContext(&context, wrapper, stackTop);
    800013b4:	00f60633          	add	a2,a2,a5
    800013b8:	00000597          	auipc	a1,0x0
    800013bc:	10858593          	addi	a1,a1,264 # 800014c0 <_ZN6Thread7wrapperEv>
    800013c0:	01850513          	addi	a0,a0,24
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	d60080e7          	jalr	-672(ra) # 80001124 <_ZN6Thread11initContextEPNS_7ContextEPFvvEPv>
    state = READY;
    800013cc:	00100793          	li	a5,1
    800013d0:	02f4ac23          	sw	a5,56(s1)
    Scheduler::put(this);
    800013d4:	00048513          	mv	a0,s1
    800013d8:	00000097          	auipc	ra,0x0
    800013dc:	180080e7          	jalr	384(ra) # 80001558 <_ZN9Scheduler3putEP6Thread>
}
    800013e0:	01813083          	ld	ra,24(sp)
    800013e4:	01013403          	ld	s0,16(sp)
    800013e8:	00813483          	ld	s1,8(sp)
    800013ec:	02010113          	addi	sp,sp,32
    800013f0:	00008067          	ret

00000000800013f4 <_ZN6Thread4exitEv>:

void Thread::exit() {
    800013f4:	ff010113          	addi	sp,sp,-16
    800013f8:	00813423          	sd	s0,8(sp)
    800013fc:	01010413          	addi	s0,sp,16
    state = FINISHED;
    80001400:	00400793          	li	a5,4
    80001404:	02f52c23          	sw	a5,56(a0)
}
    80001408:	00813403          	ld	s0,8(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <_ZN6Thread8dispatchEv>:
    running->body(running->args);
    running->exit();
    yield();
}

void Thread::dispatch() {
    80001414:	fe010113          	addi	sp,sp,-32
    80001418:	00113c23          	sd	ra,24(sp)
    8000141c:	00813823          	sd	s0,16(sp)
    80001420:	00913423          	sd	s1,8(sp)
    80001424:	02010413          	addi	s0,sp,32
    Thread* old = running;
    80001428:	00003497          	auipc	s1,0x3
    8000142c:	5a04b483          	ld	s1,1440(s1) # 800049c8 <_ZN6Thread7runningE>

    if (old && old->state != FINISHED) {
    80001430:	00048863          	beqz	s1,80001440 <_ZN6Thread8dispatchEv+0x2c>
    80001434:	0384a703          	lw	a4,56(s1)
    80001438:	00400793          	li	a5,4
    8000143c:	04f71263          	bne	a4,a5,80001480 <_ZN6Thread8dispatchEv+0x6c>
        old->state = READY;
        Scheduler::put(old);
    }

    Thread* next = Scheduler::get();
    80001440:	00000097          	auipc	ra,0x0
    80001444:	0d4080e7          	jalr	212(ra) # 80001514 <_ZN9Scheduler3getEv>
    if (!next) return;
    80001448:	02050263          	beqz	a0,8000146c <_ZN6Thread8dispatchEv+0x58>

    next->state = RUNNING;
    8000144c:	00200793          	li	a5,2
    80001450:	02f52c23          	sw	a5,56(a0)
    running = next;
    80001454:	00003797          	auipc	a5,0x3
    80001458:	56a7ba23          	sd	a0,1396(a5) # 800049c8 <_ZN6Thread7runningE>

    contextSwitch(&old->context, &next->context);
    8000145c:	01850593          	addi	a1,a0,24
    80001460:	01848513          	addi	a0,s1,24
    80001464:	00000097          	auipc	ra,0x0
    80001468:	cac080e7          	jalr	-852(ra) # 80001110 <_ZN6Thread13contextSwitchEPNS_7ContextES1_>
}
    8000146c:	01813083          	ld	ra,24(sp)
    80001470:	01013403          	ld	s0,16(sp)
    80001474:	00813483          	ld	s1,8(sp)
    80001478:	02010113          	addi	sp,sp,32
    8000147c:	00008067          	ret
        old->state = READY;
    80001480:	00100793          	li	a5,1
    80001484:	02f4ac23          	sw	a5,56(s1)
        Scheduler::put(old);
    80001488:	00048513          	mv	a0,s1
    8000148c:	00000097          	auipc	ra,0x0
    80001490:	0cc080e7          	jalr	204(ra) # 80001558 <_ZN9Scheduler3putEP6Thread>
    80001494:	fadff06f          	j	80001440 <_ZN6Thread8dispatchEv+0x2c>

0000000080001498 <_ZN6Thread5yieldEv>:

void Thread::yield() {
    80001498:	ff010113          	addi	sp,sp,-16
    8000149c:	00113423          	sd	ra,8(sp)
    800014a0:	00813023          	sd	s0,0(sp)
    800014a4:	01010413          	addi	s0,sp,16
    dispatch();
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	f6c080e7          	jalr	-148(ra) # 80001414 <_ZN6Thread8dispatchEv>
    800014b0:	00813083          	ld	ra,8(sp)
    800014b4:	00013403          	ld	s0,0(sp)
    800014b8:	01010113          	addi	sp,sp,16
    800014bc:	00008067          	ret

00000000800014c0 <_ZN6Thread7wrapperEv>:
void Thread::wrapper() {
    800014c0:	fe010113          	addi	sp,sp,-32
    800014c4:	00113c23          	sd	ra,24(sp)
    800014c8:	00813823          	sd	s0,16(sp)
    800014cc:	00913423          	sd	s1,8(sp)
    800014d0:	02010413          	addi	s0,sp,32
    running->body(running->args);
    800014d4:	00003497          	auipc	s1,0x3
    800014d8:	4ec48493          	addi	s1,s1,1260 # 800049c0 <_ZN6Thread8staticIdE>
    800014dc:	0084b783          	ld	a5,8(s1)
    800014e0:	0287b703          	ld	a4,40(a5)
    800014e4:	0307b503          	ld	a0,48(a5)
    800014e8:	000700e7          	jalr	a4
    running->exit();
    800014ec:	0084b503          	ld	a0,8(s1)
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	f04080e7          	jalr	-252(ra) # 800013f4 <_ZN6Thread4exitEv>
    yield();
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	fa0080e7          	jalr	-96(ra) # 80001498 <_ZN6Thread5yieldEv>
}
    80001500:	01813083          	ld	ra,24(sp)
    80001504:	01013403          	ld	s0,16(sp)
    80001508:	00813483          	ld	s1,8(sp)
    8000150c:	02010113          	addi	sp,sp,32
    80001510:	00008067          	ret

0000000080001514 <_ZN9Scheduler3getEv>:
#include "../h/Thread.hpp"

Thread* Scheduler::head = nullptr;
Thread* Scheduler::tail = nullptr;

Thread* Scheduler::get() {
    80001514:	ff010113          	addi	sp,sp,-16
    80001518:	00813423          	sd	s0,8(sp)
    8000151c:	01010413          	addi	s0,sp,16
    if (!head) return nullptr;
    80001520:	00003517          	auipc	a0,0x3
    80001524:	4b053503          	ld	a0,1200(a0) # 800049d0 <_ZN9Scheduler4headE>
    80001528:	00050c63          	beqz	a0,80001540 <_ZN9Scheduler3getEv+0x2c>

    Thread* thread = head;
    head = head->next;
    8000152c:	04053783          	ld	a5,64(a0)
    80001530:	00003717          	auipc	a4,0x3
    80001534:	4af73023          	sd	a5,1184(a4) # 800049d0 <_ZN9Scheduler4headE>

    if (!head) tail = nullptr;
    80001538:	00078a63          	beqz	a5,8000154c <_ZN9Scheduler3getEv+0x38>
    thread->next = nullptr;
    8000153c:	04053023          	sd	zero,64(a0)

    return thread;
}
    80001540:	00813403          	ld	s0,8(sp)
    80001544:	01010113          	addi	sp,sp,16
    80001548:	00008067          	ret
    if (!head) tail = nullptr;
    8000154c:	00003797          	auipc	a5,0x3
    80001550:	4807b623          	sd	zero,1164(a5) # 800049d8 <_ZN9Scheduler4tailE>
    80001554:	fe9ff06f          	j	8000153c <_ZN9Scheduler3getEv+0x28>

0000000080001558 <_ZN9Scheduler3putEP6Thread>:

void Scheduler::put(Thread* thread) {
    80001558:	ff010113          	addi	sp,sp,-16
    8000155c:	00813423          	sd	s0,8(sp)
    80001560:	01010413          	addi	s0,sp,16
    if (!head) head = thread;
    80001564:	00003797          	auipc	a5,0x3
    80001568:	46c7b783          	ld	a5,1132(a5) # 800049d0 <_ZN9Scheduler4headE>
    8000156c:	02078263          	beqz	a5,80001590 <_ZN9Scheduler3putEP6Thread+0x38>
    else tail->next = thread;
    80001570:	00003797          	auipc	a5,0x3
    80001574:	4687b783          	ld	a5,1128(a5) # 800049d8 <_ZN9Scheduler4tailE>
    80001578:	04a7b023          	sd	a0,64(a5)
    tail = thread;
    8000157c:	00003797          	auipc	a5,0x3
    80001580:	44a7be23          	sd	a0,1116(a5) # 800049d8 <_ZN9Scheduler4tailE>
}
    80001584:	00813403          	ld	s0,8(sp)
    80001588:	01010113          	addi	sp,sp,16
    8000158c:	00008067          	ret
    if (!head) head = thread;
    80001590:	00003797          	auipc	a5,0x3
    80001594:	44a7b023          	sd	a0,1088(a5) # 800049d0 <_ZN9Scheduler4headE>
    80001598:	fe5ff06f          	j	8000157c <_ZN9Scheduler3putEP6Thread+0x24>

000000008000159c <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    8000159c:	ff010113          	addi	sp,sp,-16
    800015a0:	00813423          	sd	s0,8(sp)
    800015a4:	01010413          	addi	s0,sp,16
    return head == nullptr;
    800015a8:	00003517          	auipc	a0,0x3
    800015ac:	42853503          	ld	a0,1064(a0) # 800049d0 <_ZN9Scheduler4headE>
    800015b0:	00153513          	seqz	a0,a0
    800015b4:	00813403          	ld	s0,8(sp)
    800015b8:	01010113          	addi	sp,sp,16
    800015bc:	00008067          	ret

00000000800015c0 <_Z10threadBodyPv>:
#include "../h/Thread.hpp"

extern void userMain();
extern void printString(const char* s);

void threadBody(void* arg) {
    800015c0:	fe010113          	addi	sp,sp,-32
    800015c4:	00113c23          	sd	ra,24(sp)
    800015c8:	00813823          	sd	s0,16(sp)
    800015cc:	00913423          	sd	s1,8(sp)
    800015d0:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 5; i++) {
    800015d4:	00000493          	li	s1,0
    800015d8:	00400793          	li	a5,4
    800015dc:	0097ce63          	blt	a5,s1,800015f8 <_Z10threadBodyPv+0x38>
        printString("Thread running\n");
    800015e0:	00003517          	auipc	a0,0x3
    800015e4:	a4050513          	addi	a0,a0,-1472 # 80004020 <CONSOLE_STATUS+0x10>
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	548080e7          	jalr	1352(ra) # 80001b30 <_Z11printStringPKc>
    for (int i = 0; i < 5; i++) {
    800015f0:	0014849b          	addiw	s1,s1,1
    800015f4:	fe5ff06f          	j	800015d8 <_Z10threadBodyPv+0x18>
        // Thread::yield();
    }
}
    800015f8:	01813083          	ld	ra,24(sp)
    800015fc:	01013403          	ld	s0,16(sp)
    80001600:	00813483          	ld	s1,8(sp)
    80001604:	02010113          	addi	sp,sp,32
    80001608:	00008067          	ret

000000008000160c <main>:

void main() {
    8000160c:	fe010113          	addi	sp,sp,-32
    80001610:	00113c23          	sd	ra,24(sp)
    80001614:	00813823          	sd	s0,16(sp)
    80001618:	00913423          	sd	s1,8(sp)
    8000161c:	01213023          	sd	s2,0(sp)
    80001620:	02010413          	addi	s0,sp,32
    MemoryAllocator::initHeap();
    80001624:	00000097          	auipc	ra,0x0
    80001628:	234080e7          	jalr	564(ra) # 80001858 <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	144080e7          	jalr	324(ra) # 80001770 <_ZN5Riscv16setupTrapHandlerEv>

    Thread* mainThread = new Thread(nullptr, nullptr);
    80001634:	04800513          	li	a0,72
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	bb4080e7          	jalr	-1100(ra) # 800011ec <_Znwm>
    80001640:	00050493          	mv	s1,a0
    80001644:	000016b7          	lui	a3,0x1
    80001648:	00000613          	li	a2,0
    8000164c:	00000593          	li	a1,0
    80001650:	00000097          	auipc	ra,0x0
    80001654:	cdc080e7          	jalr	-804(ra) # 8000132c <_ZN6ThreadC1EPFvPvES0_m>
    Thread::running = mainThread;
    80001658:	00003797          	auipc	a5,0x3
    8000165c:	3107b783          	ld	a5,784(a5) # 80004968 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001660:	0097b023          	sd	s1,0(a5)
    void start();                       // prepare and put in the Scheduler
    void exit();                        // mark as finished (could be called from wrapper)
    static void wrapper();              // static function - entry which calls body(arg) and exit

    ThreadState getState() const { return state; }
    void setState(ThreadState s) { state = s; }
    80001664:	00200793          	li	a5,2
    80001668:	02f4ac23          	sw	a5,56(s1)
    mainThread->setState(RUNNING);

    Thread* t1 = new Thread(threadBody, nullptr);
    8000166c:	04800513          	li	a0,72
    80001670:	00000097          	auipc	ra,0x0
    80001674:	b7c080e7          	jalr	-1156(ra) # 800011ec <_Znwm>
    80001678:	00050913          	mv	s2,a0
    8000167c:	000016b7          	lui	a3,0x1
    80001680:	00000613          	li	a2,0
    80001684:	00000597          	auipc	a1,0x0
    80001688:	f3c58593          	addi	a1,a1,-196 # 800015c0 <_Z10threadBodyPv>
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	ca0080e7          	jalr	-864(ra) # 8000132c <_ZN6ThreadC1EPFvPvES0_m>
    Thread* t2 = new Thread(threadBody, nullptr);
    80001694:	04800513          	li	a0,72
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	b54080e7          	jalr	-1196(ra) # 800011ec <_Znwm>
    800016a0:	00050493          	mv	s1,a0
    800016a4:	000016b7          	lui	a3,0x1
    800016a8:	00000613          	li	a2,0
    800016ac:	00000597          	auipc	a1,0x0
    800016b0:	f1458593          	addi	a1,a1,-236 # 800015c0 <_Z10threadBodyPv>
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	c78080e7          	jalr	-904(ra) # 8000132c <_ZN6ThreadC1EPFvPvES0_m>
    t1->start();
    800016bc:	00090513          	mv	a0,s2
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	cc8080e7          	jalr	-824(ra) # 80001388 <_ZN6Thread5startEv>
    t2->start();
    800016c8:	00048513          	mv	a0,s1
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	cbc080e7          	jalr	-836(ra) # 80001388 <_ZN6Thread5startEv>

    while (!Scheduler::isEmpty()) {
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	ec8080e7          	jalr	-312(ra) # 8000159c <_ZN9Scheduler7isEmptyEv>
    800016dc:	00051863          	bnez	a0,800016ec <main+0xe0>
        Thread::yield();
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	db8080e7          	jalr	-584(ra) # 80001498 <_ZN6Thread5yieldEv>
    while (!Scheduler::isEmpty()) {
    800016e8:	fedff06f          	j	800016d4 <main+0xc8>
    }

    printString("All threads done!\n");
    800016ec:	00003517          	auipc	a0,0x3
    800016f0:	94450513          	addi	a0,a0,-1724 # 80004030 <CONSOLE_STATUS+0x20>
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	43c080e7          	jalr	1084(ra) # 80001b30 <_Z11printStringPKc>

    userMain();
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	528080e7          	jalr	1320(ra) # 80001c24 <_Z8userMainv>
    80001704:	01813083          	ld	ra,24(sp)
    80001708:	01013403          	ld	s0,16(sp)
    8000170c:	00813483          	ld	s1,8(sp)
    80001710:	00013903          	ld	s2,0(sp)
    80001714:	02010113          	addi	sp,sp,32
    80001718:	00008067          	ret
    8000171c:	00050913          	mv	s2,a0
    Thread* mainThread = new Thread(nullptr, nullptr);
    80001720:	00048513          	mv	a0,s1
    80001724:	00000097          	auipc	ra,0x0
    80001728:	af8080e7          	jalr	-1288(ra) # 8000121c <_ZdlPv>
    8000172c:	00090513          	mv	a0,s2
    80001730:	00004097          	auipc	ra,0x4
    80001734:	388080e7          	jalr	904(ra) # 80005ab8 <_Unwind_Resume>
    80001738:	00050493          	mv	s1,a0
    Thread* t1 = new Thread(threadBody, nullptr);
    8000173c:	00090513          	mv	a0,s2
    80001740:	00000097          	auipc	ra,0x0
    80001744:	adc080e7          	jalr	-1316(ra) # 8000121c <_ZdlPv>
    80001748:	00048513          	mv	a0,s1
    8000174c:	00004097          	auipc	ra,0x4
    80001750:	36c080e7          	jalr	876(ra) # 80005ab8 <_Unwind_Resume>
    80001754:	00050913          	mv	s2,a0
    Thread* t2 = new Thread(threadBody, nullptr);
    80001758:	00048513          	mv	a0,s1
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	ac0080e7          	jalr	-1344(ra) # 8000121c <_ZdlPv>
    80001764:	00090513          	mv	a0,s2
    80001768:	00004097          	auipc	ra,0x4
    8000176c:	350080e7          	jalr	848(ra) # 80005ab8 <_Unwind_Resume>

0000000080001770 <_ZN5Riscv16setupTrapHandlerEv>:
constexpr uint64 MEM_ALLOC = 0x01;
constexpr uint64 MEM_FREE = 0x02;
constexpr uint64 MEM_GET_FREE_SPACE = 0x03;
constexpr uint64 MEM_GET_LARGEST_FREE_BLOCK = 0x04;

void Riscv::setupTrapHandler() {
    80001770:	ff010113          	addi	sp,sp,-16
    80001774:	00813423          	sd	s0,8(sp)
    80001778:	01010413          	addi	s0,sp,16
    unsigned long addr = (unsigned long)&trap_handler;
    8000177c:	00003797          	auipc	a5,0x3
    80001780:	1e47b783          	ld	a5,484(a5) # 80004960 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(addr));
    80001784:	10579073          	csrw	stvec,a5
}
    80001788:	00813403          	ld	s0,8(sp)
    8000178c:	01010113          	addi	sp,sp,16
    80001790:	00008067          	ret

0000000080001794 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001794:	fe010113          	addi	sp,sp,-32
    80001798:	00113c23          	sd	ra,24(sp)
    8000179c:	00813823          	sd	s0,16(sp)
    800017a0:	00913423          	sd	s1,8(sp)
    800017a4:	02010413          	addi	s0,sp,32
    uint64 scause = 0, sepc = 0;
    asm volatile("csrr %0, scause" : "=r"(scause));
    800017a8:	14202773          	csrr	a4,scause
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    800017ac:	141024f3          	csrr	s1,sepc

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    800017b0:	fff00793          	li	a5,-1
    800017b4:	0017d793          	srli	a5,a5,0x1
    800017b8:	00f777b3          	and	a5,a4,a5

    if (interrupt == 0 && (cause == 8 || cause == 9)) {
    800017bc:	00074863          	bltz	a4,800017cc <_ZN5Riscv11trapHandlerEv+0x38>
    800017c0:	ff878793          	addi	a5,a5,-8
    800017c4:	00100713          	li	a4,1
    800017c8:	00f77c63          	bgeu	a4,a5,800017e0 <_ZN5Riscv11trapHandlerEv+0x4c>
        }

        sepc += 4;
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    }
    800017cc:	01813083          	ld	ra,24(sp)
    800017d0:	01013403          	ld	s0,16(sp)
    800017d4:	00813483          	ld	s1,8(sp)
    800017d8:	02010113          	addi	sp,sp,32
    800017dc:	00008067          	ret
        asm volatile("mv %0, a0" : "=r"(code));
    800017e0:	00050793          	mv	a5,a0
        switch (code) {
    800017e4:	00300713          	li	a4,3
    800017e8:	06e78063          	beq	a5,a4,80001848 <_ZN5Riscv11trapHandlerEv+0xb4>
    800017ec:	02f76463          	bltu	a4,a5,80001814 <_ZN5Riscv11trapHandlerEv+0x80>
    800017f0:	00100713          	li	a4,1
    800017f4:	02e78c63          	beq	a5,a4,8000182c <_ZN5Riscv11trapHandlerEv+0x98>
    800017f8:	00200713          	li	a4,2
    800017fc:	04e79063          	bne	a5,a4,8000183c <_ZN5Riscv11trapHandlerEv+0xa8>
                asm volatile("mv %0, a1" : "=r"(addr));
    80001800:	00058513          	mv	a0,a1
                int status = MemoryAllocator::mem_free(addr);
    80001804:	00000097          	auipc	ra,0x0
    80001808:	1a4080e7          	jalr	420(ra) # 800019a8 <_ZN15MemoryAllocator8mem_freeEPv>
                asm volatile("mv a0, %0" :: "r"(status));
    8000180c:	00050513          	mv	a0,a0
                break;
    80001810:	02c0006f          	j	8000183c <_ZN5Riscv11trapHandlerEv+0xa8>
        switch (code) {
    80001814:	00400713          	li	a4,4
    80001818:	02e79263          	bne	a5,a4,8000183c <_ZN5Riscv11trapHandlerEv+0xa8>
                size_t largest = MemoryAllocator::mem_get_largest_free_block();
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	278080e7          	jalr	632(ra) # 80001a94 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
                asm volatile("mv a0, %0" :: "r"(largest));
    80001824:	00050513          	mv	a0,a0
                break;
    80001828:	0140006f          	j	8000183c <_ZN5Riscv11trapHandlerEv+0xa8>
                asm volatile("mv %0, a1" : "=r"(size));
    8000182c:	00058513          	mv	a0,a1
                void* ptr = MemoryAllocator::mem_alloc(size);
    80001830:	00000097          	auipc	ra,0x0
    80001834:	078080e7          	jalr	120(ra) # 800018a8 <_ZN15MemoryAllocator9mem_allocEm>
                asm volatile("mv a0, %0" :: "r"(ptr));
    80001838:	00050513          	mv	a0,a0
        sepc += 4;
    8000183c:	00448493          	addi	s1,s1,4
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    80001840:	14149073          	csrw	sepc,s1
    80001844:	f89ff06f          	j	800017cc <_ZN5Riscv11trapHandlerEv+0x38>
                size_t freeSpace = MemoryAllocator::mem_get_free_space();
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	204080e7          	jalr	516(ra) # 80001a4c <_ZN15MemoryAllocator18mem_get_free_spaceEv>
                asm volatile("mv a0, %0" :: "r"(freeSpace));
    80001850:	00050513          	mv	a0,a0
                break;
    80001854:	fe9ff06f          	j	8000183c <_ZN5Riscv11trapHandlerEv+0xa8>

0000000080001858 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80001858:	ff010113          	addi	sp,sp,-16
    8000185c:	00813423          	sd	s0,8(sp)
    80001860:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80001864:	00003697          	auipc	a3,0x3
    80001868:	0ec6b683          	ld	a3,236(a3) # 80004950 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000186c:	0006b783          	ld	a5,0(a3)
    80001870:	00003717          	auipc	a4,0x3
    80001874:	17070713          	addi	a4,a4,368 # 800049e0 <_ZN15MemoryAllocator12freeListHeadE>
    80001878:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    8000187c:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    80001880:	00003797          	auipc	a5,0x3
    80001884:	0f07b783          	ld	a5,240(a5) # 80004970 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001888:	0007b783          	ld	a5,0(a5)
    8000188c:	0006b683          	ld	a3,0(a3)
    80001890:	00073703          	ld	a4,0(a4)
    80001894:	40d787b3          	sub	a5,a5,a3
    80001898:	00f73423          	sd	a5,8(a4)
}
    8000189c:	00813403          	ld	s0,8(sp)
    800018a0:	01010113          	addi	sp,sp,16
    800018a4:	00008067          	ret

00000000800018a8 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    800018a8:	ff010113          	addi	sp,sp,-16
    800018ac:	00813423          	sd	s0,8(sp)
    800018b0:	01010413          	addi	s0,sp,16
    800018b4:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    800018b8:	00003517          	auipc	a0,0x3
    800018bc:	12853503          	ld	a0,296(a0) # 800049e0 <_ZN15MemoryAllocator12freeListHeadE>
    800018c0:	06050063          	beqz	a0,80001920 <_ZN15MemoryAllocator9mem_allocEm+0x78>
    800018c4:	08078a63          	beqz	a5,80001958 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    800018c8:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    800018cc:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    800018d0:	00000613          	li	a2,0
    800018d4:	00c0006f          	j	800018e0 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    800018d8:	00050613          	mv	a2,a0
        curr = curr->next;
    800018dc:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    800018e0:	00050663          	beqz	a0,800018ec <_ZN15MemoryAllocator9mem_allocEm+0x44>
    800018e4:	00853783          	ld	a5,8(a0)
    800018e8:	fee7e8e3          	bltu	a5,a4,800018d8 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    800018ec:	02050a63          	beqz	a0,80001920 <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    800018f0:	00853583          	ld	a1,8(a0)
    800018f4:	02068793          	addi	a5,a3,32
    800018f8:	04f5e063          	bltu	a1,a5,80001938 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    800018fc:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    80001900:	40e585b3          	sub	a1,a1,a4
    80001904:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    80001908:	00053683          	ld	a3,0(a0)
    8000190c:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    80001910:	00060e63          	beqz	a2,8000192c <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80001914:	00f63023          	sd	a5,0(a2)
        else freeListHead = newBlock;

        curr->size = totalSize;
    80001918:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (char*)curr + sizeof(BlockHeader);
    8000191c:	01050513          	addi	a0,a0,16
}
    80001920:	00813403          	ld	s0,8(sp)
    80001924:	01010113          	addi	sp,sp,16
    80001928:	00008067          	ret
        else freeListHead = newBlock;
    8000192c:	00003697          	auipc	a3,0x3
    80001930:	0af6ba23          	sd	a5,180(a3) # 800049e0 <_ZN15MemoryAllocator12freeListHeadE>
    80001934:	fe5ff06f          	j	80001918 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    80001938:	00060863          	beqz	a2,80001948 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    8000193c:	00053783          	ld	a5,0(a0)
    80001940:	00f63023          	sd	a5,0(a2)
    80001944:	fd9ff06f          	j	8000191c <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    80001948:	00053783          	ld	a5,0(a0)
    8000194c:	00003717          	auipc	a4,0x3
    80001950:	08f73a23          	sd	a5,148(a4) # 800049e0 <_ZN15MemoryAllocator12freeListHeadE>
    80001954:	fc9ff06f          	j	8000191c <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    80001958:	00000513          	li	a0,0
    8000195c:	fc5ff06f          	j	80001920 <_ZN15MemoryAllocator9mem_allocEm+0x78>

0000000080001960 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    80001960:	ff010113          	addi	sp,sp,-16
    80001964:	00813423          	sd	s0,8(sp)
    80001968:	01010413          	addi	s0,sp,16
    if (!curr) return;
    8000196c:	00050c63          	beqz	a0,80001984 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    80001970:	00053783          	ld	a5,0(a0)
    80001974:	00078863          	beqz	a5,80001984 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    80001978:	00853703          	ld	a4,8(a0)
    8000197c:	00e506b3          	add	a3,a0,a4
    80001980:	00d78863          	beq	a5,a3,80001990 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    80001984:	00813403          	ld	s0,8(sp)
    80001988:	01010113          	addi	sp,sp,16
    8000198c:	00008067          	ret
        curr->size += curr->next->size;
    80001990:	0087b683          	ld	a3,8(a5)
    80001994:	00d70733          	add	a4,a4,a3
    80001998:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    8000199c:	0007b783          	ld	a5,0(a5)
    800019a0:	00f53023          	sd	a5,0(a0)
    800019a4:	fe1ff06f          	j	80001984 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

00000000800019a8 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    800019a8:	08050e63          	beqz	a0,80001a44 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    800019ac:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    800019b0:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    800019b4:	00003797          	auipc	a5,0x3
    800019b8:	02c7b783          	ld	a5,44(a5) # 800049e0 <_ZN15MemoryAllocator12freeListHeadE>
    800019bc:	02078863          	beqz	a5,800019ec <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    800019c0:	fe010113          	addi	sp,sp,-32
    800019c4:	00113c23          	sd	ra,24(sp)
    800019c8:	00813823          	sd	s0,16(sp)
    800019cc:	00913423          	sd	s1,8(sp)
    800019d0:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    800019d4:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    800019d8:	02078463          	beqz	a5,80001a00 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800019dc:	02a7f263          	bgeu	a5,a0,80001a00 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    800019e0:	00078493          	mv	s1,a5
        curr = curr->next;
    800019e4:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    800019e8:	ff1ff06f          	j	800019d8 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    800019ec:	00003797          	auipc	a5,0x3
    800019f0:	fea7ba23          	sd	a0,-12(a5) # 800049e0 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    800019f4:	fe073823          	sd	zero,-16(a4)
        return 0;
    800019f8:	00000513          	li	a0,0
    800019fc:	00008067          	ret
    blockToFree->next = curr;
    80001a00:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    80001a04:	02048a63          	beqz	s1,80001a38 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80001a08:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	f54080e7          	jalr	-172(ra) # 80001960 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    80001a14:	00048513          	mv	a0,s1
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	f48080e7          	jalr	-184(ra) # 80001960 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    80001a20:	00000513          	li	a0,0
}
    80001a24:	01813083          	ld	ra,24(sp)
    80001a28:	01013403          	ld	s0,16(sp)
    80001a2c:	00813483          	ld	s1,8(sp)
    80001a30:	02010113          	addi	sp,sp,32
    80001a34:	00008067          	ret
    else freeListHead = blockToFree;
    80001a38:	00003797          	auipc	a5,0x3
    80001a3c:	faa7b423          	sd	a0,-88(a5) # 800049e0 <_ZN15MemoryAllocator12freeListHeadE>
    80001a40:	fcdff06f          	j	80001a0c <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    80001a44:	fff00513          	li	a0,-1
}
    80001a48:	00008067          	ret

0000000080001a4c <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    80001a4c:	ff010113          	addi	sp,sp,-16
    80001a50:	00813423          	sd	s0,8(sp)
    80001a54:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001a58:	00003797          	auipc	a5,0x3
    80001a5c:	f887b783          	ld	a5,-120(a5) # 800049e0 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    80001a60:	00000513          	li	a0,0
    80001a64:	0080006f          	j	80001a6c <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001a68:	0007b783          	ld	a5,0(a5)
    80001a6c:	00078e63          	beqz	a5,80001a88 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    80001a70:	0087b703          	ld	a4,8(a5)
    80001a74:	01000693          	li	a3,16
    80001a78:	fee6f8e3          	bgeu	a3,a4,80001a68 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    80001a7c:	00a70533          	add	a0,a4,a0
    80001a80:	ff050513          	addi	a0,a0,-16
    80001a84:	fe5ff06f          	j	80001a68 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    80001a88:	00813403          	ld	s0,8(sp)
    80001a8c:	01010113          	addi	sp,sp,16
    80001a90:	00008067          	ret

0000000080001a94 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    80001a94:	ff010113          	addi	sp,sp,-16
    80001a98:	00813423          	sd	s0,8(sp)
    80001a9c:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001aa0:	00003717          	auipc	a4,0x3
    80001aa4:	f4073703          	ld	a4,-192(a4) # 800049e0 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    80001aa8:	00000513          	li	a0,0
    80001aac:	0080006f          	j	80001ab4 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    80001ab0:	00073703          	ld	a4,0(a4)
    80001ab4:	02070263          	beqz	a4,80001ad8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    80001ab8:	00873783          	ld	a5,8(a4)
    80001abc:	01000693          	li	a3,16
    80001ac0:	00d7f463          	bgeu	a5,a3,80001ac8 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    80001ac4:	01000793          	li	a5,16
    80001ac8:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    80001acc:	fef572e3          	bgeu	a0,a5,80001ab0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    80001ad0:	00078513          	mv	a0,a5
    80001ad4:	fddff06f          	j	80001ab0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    80001ad8:	00813403          	ld	s0,8(sp)
    80001adc:	01010113          	addi	sp,sp,16
    80001ae0:	00008067          	ret

0000000080001ae4 <_Z10test_ecallv>:
//

#include "../h/syscall_c.hpp"
#include "../lib/console.h"

void test_ecall() {
    80001ae4:	ff010113          	addi	sp,sp,-16
    80001ae8:	00813423          	sd	s0,8(sp)
    80001aec:	01010413          	addi	s0,sp,16
    asm volatile (
        "li a0, 0\n"
        "li a7, 0xDE\n"
        "ecall\n"
    );
    80001af0:	00000513          	li	a0,0
    80001af4:	0de00893          	li	a7,222
    80001af8:	00000073          	ecall
}
    80001afc:	00813403          	ld	s0,8(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret

0000000080001b08 <_Z9printCharc>:

void printChar(char c) { __putc(c); }
    80001b08:	ff010113          	addi	sp,sp,-16
    80001b0c:	00113423          	sd	ra,8(sp)
    80001b10:	00813023          	sd	s0,0(sp)
    80001b14:	01010413          	addi	s0,sp,16
    80001b18:	00002097          	auipc	ra,0x2
    80001b1c:	2f4080e7          	jalr	756(ra) # 80003e0c <__putc>
    80001b20:	00813083          	ld	ra,8(sp)
    80001b24:	00013403          	ld	s0,0(sp)
    80001b28:	01010113          	addi	sp,sp,16
    80001b2c:	00008067          	ret

0000000080001b30 <_Z11printStringPKc>:
void printString(const char* s) { while (*s) __putc(*s++); }
    80001b30:	fe010113          	addi	sp,sp,-32
    80001b34:	00113c23          	sd	ra,24(sp)
    80001b38:	00813823          	sd	s0,16(sp)
    80001b3c:	00913423          	sd	s1,8(sp)
    80001b40:	02010413          	addi	s0,sp,32
    80001b44:	00050493          	mv	s1,a0
    80001b48:	0004c503          	lbu	a0,0(s1)
    80001b4c:	00050a63          	beqz	a0,80001b60 <_Z11printStringPKc+0x30>
    80001b50:	00148493          	addi	s1,s1,1
    80001b54:	00002097          	auipc	ra,0x2
    80001b58:	2b8080e7          	jalr	696(ra) # 80003e0c <__putc>
    80001b5c:	fedff06f          	j	80001b48 <_Z11printStringPKc+0x18>
    80001b60:	01813083          	ld	ra,24(sp)
    80001b64:	01013403          	ld	s0,16(sp)
    80001b68:	00813483          	ld	s1,8(sp)
    80001b6c:	02010113          	addi	sp,sp,32
    80001b70:	00008067          	ret

0000000080001b74 <_Z11printNumberm>:
void printNumber(size_t num) {
    80001b74:	fc010113          	addi	sp,sp,-64
    80001b78:	02113c23          	sd	ra,56(sp)
    80001b7c:	02813823          	sd	s0,48(sp)
    80001b80:	02913423          	sd	s1,40(sp)
    80001b84:	04010413          	addi	s0,sp,64
    if (num == 0) { __putc('0'); return; }
    80001b88:	02050863          	beqz	a0,80001bb8 <_Z11printNumberm+0x44>
    char buf[20]; int i = 0;
    80001b8c:	00000793          	li	a5,0
    while (num) { buf[i++] = '0' + (num % 10); num /= 10; }
    80001b90:	04050863          	beqz	a0,80001be0 <_Z11printNumberm+0x6c>
    80001b94:	00a00693          	li	a3,10
    80001b98:	02d57733          	remu	a4,a0,a3
    80001b9c:	03070713          	addi	a4,a4,48
    80001ba0:	fe040613          	addi	a2,s0,-32
    80001ba4:	00f60633          	add	a2,a2,a5
    80001ba8:	fee60423          	sb	a4,-24(a2)
    80001bac:	02d55533          	divu	a0,a0,a3
    80001bb0:	0017879b          	addiw	a5,a5,1
    80001bb4:	fddff06f          	j	80001b90 <_Z11printNumberm+0x1c>
    if (num == 0) { __putc('0'); return; }
    80001bb8:	03000513          	li	a0,48
    80001bbc:	00002097          	auipc	ra,0x2
    80001bc0:	250080e7          	jalr	592(ra) # 80003e0c <__putc>
    80001bc4:	0240006f          	j	80001be8 <_Z11printNumberm+0x74>
    while (i--) __putc(buf[i]);
    80001bc8:	fe040793          	addi	a5,s0,-32
    80001bcc:	009787b3          	add	a5,a5,s1
    80001bd0:	fe87c503          	lbu	a0,-24(a5)
    80001bd4:	00002097          	auipc	ra,0x2
    80001bd8:	238080e7          	jalr	568(ra) # 80003e0c <__putc>
    80001bdc:	00048793          	mv	a5,s1
    80001be0:	fff7849b          	addiw	s1,a5,-1
    80001be4:	fe0792e3          	bnez	a5,80001bc8 <_Z11printNumberm+0x54>
}
    80001be8:	03813083          	ld	ra,56(sp)
    80001bec:	03013403          	ld	s0,48(sp)
    80001bf0:	02813483          	ld	s1,40(sp)
    80001bf4:	04010113          	addi	sp,sp,64
    80001bf8:	00008067          	ret

0000000080001bfc <_Z12printPointerPv>:

void printPointer(void* ptr) {
    80001bfc:	ff010113          	addi	sp,sp,-16
    80001c00:	00113423          	sd	ra,8(sp)
    80001c04:	00813023          	sd	s0,0(sp)
    80001c08:	01010413          	addi	s0,sp,16
    printNumber((size_t)ptr);
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	f68080e7          	jalr	-152(ra) # 80001b74 <_Z11printNumberm>
}
    80001c14:	00813083          	ld	ra,8(sp)
    80001c18:	00013403          	ld	s0,0(sp)
    80001c1c:	01010113          	addi	sp,sp,16
    80001c20:	00008067          	ret

0000000080001c24 <_Z8userMainv>:

void userMain() {
    80001c24:	fe010113          	addi	sp,sp,-32
    80001c28:	00113c23          	sd	ra,24(sp)
    80001c2c:	00813823          	sd	s0,16(sp)
    80001c30:	00913423          	sd	s1,8(sp)
    80001c34:	02010413          	addi	s0,sp,32
    printString("UserMain started\n");
    80001c38:	00002517          	auipc	a0,0x2
    80001c3c:	41050513          	addi	a0,a0,1040 # 80004048 <CONSOLE_STATUS+0x38>
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	ef0080e7          	jalr	-272(ra) # 80001b30 <_Z11printStringPKc>

    printString("Free space: ");
    80001c48:	00002517          	auipc	a0,0x2
    80001c4c:	41850513          	addi	a0,a0,1048 # 80004060 <CONSOLE_STATUS+0x50>
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	ee0080e7          	jalr	-288(ra) # 80001b30 <_Z11printStringPKc>
    printNumber(mem_get_free_space());
    80001c58:	fffff097          	auipc	ra,0xfffff
    80001c5c:	54c080e7          	jalr	1356(ra) # 800011a4 <_Z18mem_get_free_spacev>
    80001c60:	00000097          	auipc	ra,0x0
    80001c64:	f14080e7          	jalr	-236(ra) # 80001b74 <_Z11printNumberm>
    printString("\n");
    80001c68:	00002517          	auipc	a0,0x2
    80001c6c:	44050513          	addi	a0,a0,1088 # 800040a8 <CONSOLE_STATUS+0x98>
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	ec0080e7          	jalr	-320(ra) # 80001b30 <_Z11printStringPKc>

    void* p1 = mem_alloc(160);
    80001c78:	0a000513          	li	a0,160
    80001c7c:	fffff097          	auipc	ra,0xfffff
    80001c80:	4b8080e7          	jalr	1208(ra) # 80001134 <_Z9mem_allocm>
    80001c84:	00050493          	mv	s1,a0
    printString("Allocated: "); printNumber((size_t)p1); printString("\n");
    80001c88:	00002517          	auipc	a0,0x2
    80001c8c:	3e850513          	addi	a0,a0,1000 # 80004070 <CONSOLE_STATUS+0x60>
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	ea0080e7          	jalr	-352(ra) # 80001b30 <_Z11printStringPKc>
    80001c98:	00048513          	mv	a0,s1
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	ed8080e7          	jalr	-296(ra) # 80001b74 <_Z11printNumberm>
    80001ca4:	00002517          	auipc	a0,0x2
    80001ca8:	40450513          	addi	a0,a0,1028 # 800040a8 <CONSOLE_STATUS+0x98>
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	e84080e7          	jalr	-380(ra) # 80001b30 <_Z11printStringPKc>

    printString("Free space after alloc: ");
    80001cb4:	00002517          	auipc	a0,0x2
    80001cb8:	3cc50513          	addi	a0,a0,972 # 80004080 <CONSOLE_STATUS+0x70>
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	e74080e7          	jalr	-396(ra) # 80001b30 <_Z11printStringPKc>
    printNumber(mem_get_free_space());
    80001cc4:	fffff097          	auipc	ra,0xfffff
    80001cc8:	4e0080e7          	jalr	1248(ra) # 800011a4 <_Z18mem_get_free_spacev>
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	ea8080e7          	jalr	-344(ra) # 80001b74 <_Z11printNumberm>
    printString("\n");
    80001cd4:	00002517          	auipc	a0,0x2
    80001cd8:	3d450513          	addi	a0,a0,980 # 800040a8 <CONSOLE_STATUS+0x98>
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	e54080e7          	jalr	-428(ra) # 80001b30 <_Z11printStringPKc>

    mem_free(p1);
    80001ce4:	00048513          	mv	a0,s1
    80001ce8:	fffff097          	auipc	ra,0xfffff
    80001cec:	490080e7          	jalr	1168(ra) # 80001178 <_Z8mem_freePv>
    printString("Freed p1\n");
    80001cf0:	00002517          	auipc	a0,0x2
    80001cf4:	3b050513          	addi	a0,a0,944 # 800040a0 <CONSOLE_STATUS+0x90>
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	e38080e7          	jalr	-456(ra) # 80001b30 <_Z11printStringPKc>

    printString("Free space after free: ");
    80001d00:	00002517          	auipc	a0,0x2
    80001d04:	3b050513          	addi	a0,a0,944 # 800040b0 <CONSOLE_STATUS+0xa0>
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	e28080e7          	jalr	-472(ra) # 80001b30 <_Z11printStringPKc>
    printNumber(mem_get_free_space());
    80001d10:	fffff097          	auipc	ra,0xfffff
    80001d14:	494080e7          	jalr	1172(ra) # 800011a4 <_Z18mem_get_free_spacev>
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	e5c080e7          	jalr	-420(ra) # 80001b74 <_Z11printNumberm>
    printString("\n");
    80001d20:	00002517          	auipc	a0,0x2
    80001d24:	38850513          	addi	a0,a0,904 # 800040a8 <CONSOLE_STATUS+0x98>
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	e08080e7          	jalr	-504(ra) # 80001b30 <_Z11printStringPKc>
    // printString("Pre ecall\n");
    //
    // test_ecall();
    //
    // printString("After ecall\n");
}
    80001d30:	01813083          	ld	ra,24(sp)
    80001d34:	01013403          	ld	s0,16(sp)
    80001d38:	00813483          	ld	s1,8(sp)
    80001d3c:	02010113          	addi	sp,sp,32
    80001d40:	00008067          	ret

0000000080001d44 <start>:
    80001d44:	ff010113          	addi	sp,sp,-16
    80001d48:	00813423          	sd	s0,8(sp)
    80001d4c:	01010413          	addi	s0,sp,16
    80001d50:	300027f3          	csrr	a5,mstatus
    80001d54:	ffffe737          	lui	a4,0xffffe
    80001d58:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8baf>
    80001d5c:	00e7f7b3          	and	a5,a5,a4
    80001d60:	00001737          	lui	a4,0x1
    80001d64:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001d68:	00e7e7b3          	or	a5,a5,a4
    80001d6c:	30079073          	csrw	mstatus,a5
    80001d70:	00000797          	auipc	a5,0x0
    80001d74:	16078793          	addi	a5,a5,352 # 80001ed0 <system_main>
    80001d78:	34179073          	csrw	mepc,a5
    80001d7c:	00000793          	li	a5,0
    80001d80:	18079073          	csrw	satp,a5
    80001d84:	000107b7          	lui	a5,0x10
    80001d88:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001d8c:	30279073          	csrw	medeleg,a5
    80001d90:	30379073          	csrw	mideleg,a5
    80001d94:	104027f3          	csrr	a5,sie
    80001d98:	2227e793          	ori	a5,a5,546
    80001d9c:	10479073          	csrw	sie,a5
    80001da0:	fff00793          	li	a5,-1
    80001da4:	00a7d793          	srli	a5,a5,0xa
    80001da8:	3b079073          	csrw	pmpaddr0,a5
    80001dac:	00f00793          	li	a5,15
    80001db0:	3a079073          	csrw	pmpcfg0,a5
    80001db4:	f14027f3          	csrr	a5,mhartid
    80001db8:	0200c737          	lui	a4,0x200c
    80001dbc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001dc0:	0007869b          	sext.w	a3,a5
    80001dc4:	00269713          	slli	a4,a3,0x2
    80001dc8:	000f4637          	lui	a2,0xf4
    80001dcc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001dd0:	00d70733          	add	a4,a4,a3
    80001dd4:	0037979b          	slliw	a5,a5,0x3
    80001dd8:	020046b7          	lui	a3,0x2004
    80001ddc:	00d787b3          	add	a5,a5,a3
    80001de0:	00c585b3          	add	a1,a1,a2
    80001de4:	00371693          	slli	a3,a4,0x3
    80001de8:	00003717          	auipc	a4,0x3
    80001dec:	c0870713          	addi	a4,a4,-1016 # 800049f0 <timer_scratch>
    80001df0:	00b7b023          	sd	a1,0(a5)
    80001df4:	00d70733          	add	a4,a4,a3
    80001df8:	00f73c23          	sd	a5,24(a4)
    80001dfc:	02c73023          	sd	a2,32(a4)
    80001e00:	34071073          	csrw	mscratch,a4
    80001e04:	00000797          	auipc	a5,0x0
    80001e08:	6ec78793          	addi	a5,a5,1772 # 800024f0 <timervec>
    80001e0c:	30579073          	csrw	mtvec,a5
    80001e10:	300027f3          	csrr	a5,mstatus
    80001e14:	0087e793          	ori	a5,a5,8
    80001e18:	30079073          	csrw	mstatus,a5
    80001e1c:	304027f3          	csrr	a5,mie
    80001e20:	0807e793          	ori	a5,a5,128
    80001e24:	30479073          	csrw	mie,a5
    80001e28:	f14027f3          	csrr	a5,mhartid
    80001e2c:	0007879b          	sext.w	a5,a5
    80001e30:	00078213          	mv	tp,a5
    80001e34:	30200073          	mret
    80001e38:	00813403          	ld	s0,8(sp)
    80001e3c:	01010113          	addi	sp,sp,16
    80001e40:	00008067          	ret

0000000080001e44 <timerinit>:
    80001e44:	ff010113          	addi	sp,sp,-16
    80001e48:	00813423          	sd	s0,8(sp)
    80001e4c:	01010413          	addi	s0,sp,16
    80001e50:	f14027f3          	csrr	a5,mhartid
    80001e54:	0200c737          	lui	a4,0x200c
    80001e58:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e5c:	0007869b          	sext.w	a3,a5
    80001e60:	00269713          	slli	a4,a3,0x2
    80001e64:	000f4637          	lui	a2,0xf4
    80001e68:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e6c:	00d70733          	add	a4,a4,a3
    80001e70:	0037979b          	slliw	a5,a5,0x3
    80001e74:	020046b7          	lui	a3,0x2004
    80001e78:	00d787b3          	add	a5,a5,a3
    80001e7c:	00c585b3          	add	a1,a1,a2
    80001e80:	00371693          	slli	a3,a4,0x3
    80001e84:	00003717          	auipc	a4,0x3
    80001e88:	b6c70713          	addi	a4,a4,-1172 # 800049f0 <timer_scratch>
    80001e8c:	00b7b023          	sd	a1,0(a5)
    80001e90:	00d70733          	add	a4,a4,a3
    80001e94:	00f73c23          	sd	a5,24(a4)
    80001e98:	02c73023          	sd	a2,32(a4)
    80001e9c:	34071073          	csrw	mscratch,a4
    80001ea0:	00000797          	auipc	a5,0x0
    80001ea4:	65078793          	addi	a5,a5,1616 # 800024f0 <timervec>
    80001ea8:	30579073          	csrw	mtvec,a5
    80001eac:	300027f3          	csrr	a5,mstatus
    80001eb0:	0087e793          	ori	a5,a5,8
    80001eb4:	30079073          	csrw	mstatus,a5
    80001eb8:	304027f3          	csrr	a5,mie
    80001ebc:	0807e793          	ori	a5,a5,128
    80001ec0:	30479073          	csrw	mie,a5
    80001ec4:	00813403          	ld	s0,8(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret

0000000080001ed0 <system_main>:
    80001ed0:	fe010113          	addi	sp,sp,-32
    80001ed4:	00813823          	sd	s0,16(sp)
    80001ed8:	00913423          	sd	s1,8(sp)
    80001edc:	00113c23          	sd	ra,24(sp)
    80001ee0:	02010413          	addi	s0,sp,32
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	0c4080e7          	jalr	196(ra) # 80001fa8 <cpuid>
    80001eec:	00003497          	auipc	s1,0x3
    80001ef0:	aa448493          	addi	s1,s1,-1372 # 80004990 <started>
    80001ef4:	02050263          	beqz	a0,80001f18 <system_main+0x48>
    80001ef8:	0004a783          	lw	a5,0(s1)
    80001efc:	0007879b          	sext.w	a5,a5
    80001f00:	fe078ce3          	beqz	a5,80001ef8 <system_main+0x28>
    80001f04:	0ff0000f          	fence
    80001f08:	00002517          	auipc	a0,0x2
    80001f0c:	1f050513          	addi	a0,a0,496 # 800040f8 <CONSOLE_STATUS+0xe8>
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	a7c080e7          	jalr	-1412(ra) # 8000298c <panic>
    80001f18:	00001097          	auipc	ra,0x1
    80001f1c:	9d0080e7          	jalr	-1584(ra) # 800028e8 <consoleinit>
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	15c080e7          	jalr	348(ra) # 8000307c <printfinit>
    80001f28:	00002517          	auipc	a0,0x2
    80001f2c:	18050513          	addi	a0,a0,384 # 800040a8 <CONSOLE_STATUS+0x98>
    80001f30:	00001097          	auipc	ra,0x1
    80001f34:	ab8080e7          	jalr	-1352(ra) # 800029e8 <__printf>
    80001f38:	00002517          	auipc	a0,0x2
    80001f3c:	19050513          	addi	a0,a0,400 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001f40:	00001097          	auipc	ra,0x1
    80001f44:	aa8080e7          	jalr	-1368(ra) # 800029e8 <__printf>
    80001f48:	00002517          	auipc	a0,0x2
    80001f4c:	16050513          	addi	a0,a0,352 # 800040a8 <CONSOLE_STATUS+0x98>
    80001f50:	00001097          	auipc	ra,0x1
    80001f54:	a98080e7          	jalr	-1384(ra) # 800029e8 <__printf>
    80001f58:	00001097          	auipc	ra,0x1
    80001f5c:	4b0080e7          	jalr	1200(ra) # 80003408 <kinit>
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	148080e7          	jalr	328(ra) # 800020a8 <trapinit>
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	16c080e7          	jalr	364(ra) # 800020d4 <trapinithart>
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	5c0080e7          	jalr	1472(ra) # 80002530 <plicinit>
    80001f78:	00000097          	auipc	ra,0x0
    80001f7c:	5e0080e7          	jalr	1504(ra) # 80002558 <plicinithart>
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	078080e7          	jalr	120(ra) # 80001ff8 <userinit>
    80001f88:	0ff0000f          	fence
    80001f8c:	00100793          	li	a5,1
    80001f90:	00002517          	auipc	a0,0x2
    80001f94:	15050513          	addi	a0,a0,336 # 800040e0 <CONSOLE_STATUS+0xd0>
    80001f98:	00f4a023          	sw	a5,0(s1)
    80001f9c:	00001097          	auipc	ra,0x1
    80001fa0:	a4c080e7          	jalr	-1460(ra) # 800029e8 <__printf>
    80001fa4:	0000006f          	j	80001fa4 <system_main+0xd4>

0000000080001fa8 <cpuid>:
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00813423          	sd	s0,8(sp)
    80001fb0:	01010413          	addi	s0,sp,16
    80001fb4:	00020513          	mv	a0,tp
    80001fb8:	00813403          	ld	s0,8(sp)
    80001fbc:	0005051b          	sext.w	a0,a0
    80001fc0:	01010113          	addi	sp,sp,16
    80001fc4:	00008067          	ret

0000000080001fc8 <mycpu>:
    80001fc8:	ff010113          	addi	sp,sp,-16
    80001fcc:	00813423          	sd	s0,8(sp)
    80001fd0:	01010413          	addi	s0,sp,16
    80001fd4:	00020793          	mv	a5,tp
    80001fd8:	00813403          	ld	s0,8(sp)
    80001fdc:	0007879b          	sext.w	a5,a5
    80001fe0:	00779793          	slli	a5,a5,0x7
    80001fe4:	00004517          	auipc	a0,0x4
    80001fe8:	a3c50513          	addi	a0,a0,-1476 # 80005a20 <cpus>
    80001fec:	00f50533          	add	a0,a0,a5
    80001ff0:	01010113          	addi	sp,sp,16
    80001ff4:	00008067          	ret

0000000080001ff8 <userinit>:
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00813423          	sd	s0,8(sp)
    80002000:	01010413          	addi	s0,sp,16
    80002004:	00813403          	ld	s0,8(sp)
    80002008:	01010113          	addi	sp,sp,16
    8000200c:	fffff317          	auipc	t1,0xfffff
    80002010:	60030067          	jr	1536(t1) # 8000160c <main>

0000000080002014 <either_copyout>:
    80002014:	ff010113          	addi	sp,sp,-16
    80002018:	00813023          	sd	s0,0(sp)
    8000201c:	00113423          	sd	ra,8(sp)
    80002020:	01010413          	addi	s0,sp,16
    80002024:	02051663          	bnez	a0,80002050 <either_copyout+0x3c>
    80002028:	00058513          	mv	a0,a1
    8000202c:	00060593          	mv	a1,a2
    80002030:	0006861b          	sext.w	a2,a3
    80002034:	00002097          	auipc	ra,0x2
    80002038:	c60080e7          	jalr	-928(ra) # 80003c94 <__memmove>
    8000203c:	00813083          	ld	ra,8(sp)
    80002040:	00013403          	ld	s0,0(sp)
    80002044:	00000513          	li	a0,0
    80002048:	01010113          	addi	sp,sp,16
    8000204c:	00008067          	ret
    80002050:	00002517          	auipc	a0,0x2
    80002054:	0d050513          	addi	a0,a0,208 # 80004120 <CONSOLE_STATUS+0x110>
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	934080e7          	jalr	-1740(ra) # 8000298c <panic>

0000000080002060 <either_copyin>:
    80002060:	ff010113          	addi	sp,sp,-16
    80002064:	00813023          	sd	s0,0(sp)
    80002068:	00113423          	sd	ra,8(sp)
    8000206c:	01010413          	addi	s0,sp,16
    80002070:	02059463          	bnez	a1,80002098 <either_copyin+0x38>
    80002074:	00060593          	mv	a1,a2
    80002078:	0006861b          	sext.w	a2,a3
    8000207c:	00002097          	auipc	ra,0x2
    80002080:	c18080e7          	jalr	-1000(ra) # 80003c94 <__memmove>
    80002084:	00813083          	ld	ra,8(sp)
    80002088:	00013403          	ld	s0,0(sp)
    8000208c:	00000513          	li	a0,0
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret
    80002098:	00002517          	auipc	a0,0x2
    8000209c:	0b050513          	addi	a0,a0,176 # 80004148 <CONSOLE_STATUS+0x138>
    800020a0:	00001097          	auipc	ra,0x1
    800020a4:	8ec080e7          	jalr	-1812(ra) # 8000298c <panic>

00000000800020a8 <trapinit>:
    800020a8:	ff010113          	addi	sp,sp,-16
    800020ac:	00813423          	sd	s0,8(sp)
    800020b0:	01010413          	addi	s0,sp,16
    800020b4:	00813403          	ld	s0,8(sp)
    800020b8:	00002597          	auipc	a1,0x2
    800020bc:	0b858593          	addi	a1,a1,184 # 80004170 <CONSOLE_STATUS+0x160>
    800020c0:	00004517          	auipc	a0,0x4
    800020c4:	9e050513          	addi	a0,a0,-1568 # 80005aa0 <tickslock>
    800020c8:	01010113          	addi	sp,sp,16
    800020cc:	00001317          	auipc	t1,0x1
    800020d0:	5cc30067          	jr	1484(t1) # 80003698 <initlock>

00000000800020d4 <trapinithart>:
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00813423          	sd	s0,8(sp)
    800020dc:	01010413          	addi	s0,sp,16
    800020e0:	00000797          	auipc	a5,0x0
    800020e4:	30078793          	addi	a5,a5,768 # 800023e0 <kernelvec>
    800020e8:	10579073          	csrw	stvec,a5
    800020ec:	00813403          	ld	s0,8(sp)
    800020f0:	01010113          	addi	sp,sp,16
    800020f4:	00008067          	ret

00000000800020f8 <usertrap>:
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00813423          	sd	s0,8(sp)
    80002100:	01010413          	addi	s0,sp,16
    80002104:	00813403          	ld	s0,8(sp)
    80002108:	01010113          	addi	sp,sp,16
    8000210c:	00008067          	ret

0000000080002110 <usertrapret>:
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00813423          	sd	s0,8(sp)
    80002118:	01010413          	addi	s0,sp,16
    8000211c:	00813403          	ld	s0,8(sp)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret

0000000080002128 <kerneltrap>:
    80002128:	fe010113          	addi	sp,sp,-32
    8000212c:	00813823          	sd	s0,16(sp)
    80002130:	00113c23          	sd	ra,24(sp)
    80002134:	00913423          	sd	s1,8(sp)
    80002138:	02010413          	addi	s0,sp,32
    8000213c:	142025f3          	csrr	a1,scause
    80002140:	100027f3          	csrr	a5,sstatus
    80002144:	0027f793          	andi	a5,a5,2
    80002148:	10079c63          	bnez	a5,80002260 <kerneltrap+0x138>
    8000214c:	142027f3          	csrr	a5,scause
    80002150:	0207ce63          	bltz	a5,8000218c <kerneltrap+0x64>
    80002154:	00002517          	auipc	a0,0x2
    80002158:	06450513          	addi	a0,a0,100 # 800041b8 <CONSOLE_STATUS+0x1a8>
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	88c080e7          	jalr	-1908(ra) # 800029e8 <__printf>
    80002164:	141025f3          	csrr	a1,sepc
    80002168:	14302673          	csrr	a2,stval
    8000216c:	00002517          	auipc	a0,0x2
    80002170:	05c50513          	addi	a0,a0,92 # 800041c8 <CONSOLE_STATUS+0x1b8>
    80002174:	00001097          	auipc	ra,0x1
    80002178:	874080e7          	jalr	-1932(ra) # 800029e8 <__printf>
    8000217c:	00002517          	auipc	a0,0x2
    80002180:	06450513          	addi	a0,a0,100 # 800041e0 <CONSOLE_STATUS+0x1d0>
    80002184:	00001097          	auipc	ra,0x1
    80002188:	808080e7          	jalr	-2040(ra) # 8000298c <panic>
    8000218c:	0ff7f713          	andi	a4,a5,255
    80002190:	00900693          	li	a3,9
    80002194:	04d70063          	beq	a4,a3,800021d4 <kerneltrap+0xac>
    80002198:	fff00713          	li	a4,-1
    8000219c:	03f71713          	slli	a4,a4,0x3f
    800021a0:	00170713          	addi	a4,a4,1
    800021a4:	fae798e3          	bne	a5,a4,80002154 <kerneltrap+0x2c>
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	e00080e7          	jalr	-512(ra) # 80001fa8 <cpuid>
    800021b0:	06050663          	beqz	a0,8000221c <kerneltrap+0xf4>
    800021b4:	144027f3          	csrr	a5,sip
    800021b8:	ffd7f793          	andi	a5,a5,-3
    800021bc:	14479073          	csrw	sip,a5
    800021c0:	01813083          	ld	ra,24(sp)
    800021c4:	01013403          	ld	s0,16(sp)
    800021c8:	00813483          	ld	s1,8(sp)
    800021cc:	02010113          	addi	sp,sp,32
    800021d0:	00008067          	ret
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	3d0080e7          	jalr	976(ra) # 800025a4 <plic_claim>
    800021dc:	00a00793          	li	a5,10
    800021e0:	00050493          	mv	s1,a0
    800021e4:	06f50863          	beq	a0,a5,80002254 <kerneltrap+0x12c>
    800021e8:	fc050ce3          	beqz	a0,800021c0 <kerneltrap+0x98>
    800021ec:	00050593          	mv	a1,a0
    800021f0:	00002517          	auipc	a0,0x2
    800021f4:	fa850513          	addi	a0,a0,-88 # 80004198 <CONSOLE_STATUS+0x188>
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	7f0080e7          	jalr	2032(ra) # 800029e8 <__printf>
    80002200:	01013403          	ld	s0,16(sp)
    80002204:	01813083          	ld	ra,24(sp)
    80002208:	00048513          	mv	a0,s1
    8000220c:	00813483          	ld	s1,8(sp)
    80002210:	02010113          	addi	sp,sp,32
    80002214:	00000317          	auipc	t1,0x0
    80002218:	3c830067          	jr	968(t1) # 800025dc <plic_complete>
    8000221c:	00004517          	auipc	a0,0x4
    80002220:	88450513          	addi	a0,a0,-1916 # 80005aa0 <tickslock>
    80002224:	00001097          	auipc	ra,0x1
    80002228:	498080e7          	jalr	1176(ra) # 800036bc <acquire>
    8000222c:	00002717          	auipc	a4,0x2
    80002230:	76870713          	addi	a4,a4,1896 # 80004994 <ticks>
    80002234:	00072783          	lw	a5,0(a4)
    80002238:	00004517          	auipc	a0,0x4
    8000223c:	86850513          	addi	a0,a0,-1944 # 80005aa0 <tickslock>
    80002240:	0017879b          	addiw	a5,a5,1
    80002244:	00f72023          	sw	a5,0(a4)
    80002248:	00001097          	auipc	ra,0x1
    8000224c:	540080e7          	jalr	1344(ra) # 80003788 <release>
    80002250:	f65ff06f          	j	800021b4 <kerneltrap+0x8c>
    80002254:	00001097          	auipc	ra,0x1
    80002258:	09c080e7          	jalr	156(ra) # 800032f0 <uartintr>
    8000225c:	fa5ff06f          	j	80002200 <kerneltrap+0xd8>
    80002260:	00002517          	auipc	a0,0x2
    80002264:	f1850513          	addi	a0,a0,-232 # 80004178 <CONSOLE_STATUS+0x168>
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	724080e7          	jalr	1828(ra) # 8000298c <panic>

0000000080002270 <clockintr>:
    80002270:	fe010113          	addi	sp,sp,-32
    80002274:	00813823          	sd	s0,16(sp)
    80002278:	00913423          	sd	s1,8(sp)
    8000227c:	00113c23          	sd	ra,24(sp)
    80002280:	02010413          	addi	s0,sp,32
    80002284:	00004497          	auipc	s1,0x4
    80002288:	81c48493          	addi	s1,s1,-2020 # 80005aa0 <tickslock>
    8000228c:	00048513          	mv	a0,s1
    80002290:	00001097          	auipc	ra,0x1
    80002294:	42c080e7          	jalr	1068(ra) # 800036bc <acquire>
    80002298:	00002717          	auipc	a4,0x2
    8000229c:	6fc70713          	addi	a4,a4,1788 # 80004994 <ticks>
    800022a0:	00072783          	lw	a5,0(a4)
    800022a4:	01013403          	ld	s0,16(sp)
    800022a8:	01813083          	ld	ra,24(sp)
    800022ac:	00048513          	mv	a0,s1
    800022b0:	0017879b          	addiw	a5,a5,1
    800022b4:	00813483          	ld	s1,8(sp)
    800022b8:	00f72023          	sw	a5,0(a4)
    800022bc:	02010113          	addi	sp,sp,32
    800022c0:	00001317          	auipc	t1,0x1
    800022c4:	4c830067          	jr	1224(t1) # 80003788 <release>

00000000800022c8 <devintr>:
    800022c8:	142027f3          	csrr	a5,scause
    800022cc:	00000513          	li	a0,0
    800022d0:	0007c463          	bltz	a5,800022d8 <devintr+0x10>
    800022d4:	00008067          	ret
    800022d8:	fe010113          	addi	sp,sp,-32
    800022dc:	00813823          	sd	s0,16(sp)
    800022e0:	00113c23          	sd	ra,24(sp)
    800022e4:	00913423          	sd	s1,8(sp)
    800022e8:	02010413          	addi	s0,sp,32
    800022ec:	0ff7f713          	andi	a4,a5,255
    800022f0:	00900693          	li	a3,9
    800022f4:	04d70c63          	beq	a4,a3,8000234c <devintr+0x84>
    800022f8:	fff00713          	li	a4,-1
    800022fc:	03f71713          	slli	a4,a4,0x3f
    80002300:	00170713          	addi	a4,a4,1
    80002304:	00e78c63          	beq	a5,a4,8000231c <devintr+0x54>
    80002308:	01813083          	ld	ra,24(sp)
    8000230c:	01013403          	ld	s0,16(sp)
    80002310:	00813483          	ld	s1,8(sp)
    80002314:	02010113          	addi	sp,sp,32
    80002318:	00008067          	ret
    8000231c:	00000097          	auipc	ra,0x0
    80002320:	c8c080e7          	jalr	-884(ra) # 80001fa8 <cpuid>
    80002324:	06050663          	beqz	a0,80002390 <devintr+0xc8>
    80002328:	144027f3          	csrr	a5,sip
    8000232c:	ffd7f793          	andi	a5,a5,-3
    80002330:	14479073          	csrw	sip,a5
    80002334:	01813083          	ld	ra,24(sp)
    80002338:	01013403          	ld	s0,16(sp)
    8000233c:	00813483          	ld	s1,8(sp)
    80002340:	00200513          	li	a0,2
    80002344:	02010113          	addi	sp,sp,32
    80002348:	00008067          	ret
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	258080e7          	jalr	600(ra) # 800025a4 <plic_claim>
    80002354:	00a00793          	li	a5,10
    80002358:	00050493          	mv	s1,a0
    8000235c:	06f50663          	beq	a0,a5,800023c8 <devintr+0x100>
    80002360:	00100513          	li	a0,1
    80002364:	fa0482e3          	beqz	s1,80002308 <devintr+0x40>
    80002368:	00048593          	mv	a1,s1
    8000236c:	00002517          	auipc	a0,0x2
    80002370:	e2c50513          	addi	a0,a0,-468 # 80004198 <CONSOLE_STATUS+0x188>
    80002374:	00000097          	auipc	ra,0x0
    80002378:	674080e7          	jalr	1652(ra) # 800029e8 <__printf>
    8000237c:	00048513          	mv	a0,s1
    80002380:	00000097          	auipc	ra,0x0
    80002384:	25c080e7          	jalr	604(ra) # 800025dc <plic_complete>
    80002388:	00100513          	li	a0,1
    8000238c:	f7dff06f          	j	80002308 <devintr+0x40>
    80002390:	00003517          	auipc	a0,0x3
    80002394:	71050513          	addi	a0,a0,1808 # 80005aa0 <tickslock>
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	324080e7          	jalr	804(ra) # 800036bc <acquire>
    800023a0:	00002717          	auipc	a4,0x2
    800023a4:	5f470713          	addi	a4,a4,1524 # 80004994 <ticks>
    800023a8:	00072783          	lw	a5,0(a4)
    800023ac:	00003517          	auipc	a0,0x3
    800023b0:	6f450513          	addi	a0,a0,1780 # 80005aa0 <tickslock>
    800023b4:	0017879b          	addiw	a5,a5,1
    800023b8:	00f72023          	sw	a5,0(a4)
    800023bc:	00001097          	auipc	ra,0x1
    800023c0:	3cc080e7          	jalr	972(ra) # 80003788 <release>
    800023c4:	f65ff06f          	j	80002328 <devintr+0x60>
    800023c8:	00001097          	auipc	ra,0x1
    800023cc:	f28080e7          	jalr	-216(ra) # 800032f0 <uartintr>
    800023d0:	fadff06f          	j	8000237c <devintr+0xb4>
	...

00000000800023e0 <kernelvec>:
    800023e0:	f0010113          	addi	sp,sp,-256
    800023e4:	00113023          	sd	ra,0(sp)
    800023e8:	00213423          	sd	sp,8(sp)
    800023ec:	00313823          	sd	gp,16(sp)
    800023f0:	00413c23          	sd	tp,24(sp)
    800023f4:	02513023          	sd	t0,32(sp)
    800023f8:	02613423          	sd	t1,40(sp)
    800023fc:	02713823          	sd	t2,48(sp)
    80002400:	02813c23          	sd	s0,56(sp)
    80002404:	04913023          	sd	s1,64(sp)
    80002408:	04a13423          	sd	a0,72(sp)
    8000240c:	04b13823          	sd	a1,80(sp)
    80002410:	04c13c23          	sd	a2,88(sp)
    80002414:	06d13023          	sd	a3,96(sp)
    80002418:	06e13423          	sd	a4,104(sp)
    8000241c:	06f13823          	sd	a5,112(sp)
    80002420:	07013c23          	sd	a6,120(sp)
    80002424:	09113023          	sd	a7,128(sp)
    80002428:	09213423          	sd	s2,136(sp)
    8000242c:	09313823          	sd	s3,144(sp)
    80002430:	09413c23          	sd	s4,152(sp)
    80002434:	0b513023          	sd	s5,160(sp)
    80002438:	0b613423          	sd	s6,168(sp)
    8000243c:	0b713823          	sd	s7,176(sp)
    80002440:	0b813c23          	sd	s8,184(sp)
    80002444:	0d913023          	sd	s9,192(sp)
    80002448:	0da13423          	sd	s10,200(sp)
    8000244c:	0db13823          	sd	s11,208(sp)
    80002450:	0dc13c23          	sd	t3,216(sp)
    80002454:	0fd13023          	sd	t4,224(sp)
    80002458:	0fe13423          	sd	t5,232(sp)
    8000245c:	0ff13823          	sd	t6,240(sp)
    80002460:	cc9ff0ef          	jal	ra,80002128 <kerneltrap>
    80002464:	00013083          	ld	ra,0(sp)
    80002468:	00813103          	ld	sp,8(sp)
    8000246c:	01013183          	ld	gp,16(sp)
    80002470:	02013283          	ld	t0,32(sp)
    80002474:	02813303          	ld	t1,40(sp)
    80002478:	03013383          	ld	t2,48(sp)
    8000247c:	03813403          	ld	s0,56(sp)
    80002480:	04013483          	ld	s1,64(sp)
    80002484:	04813503          	ld	a0,72(sp)
    80002488:	05013583          	ld	a1,80(sp)
    8000248c:	05813603          	ld	a2,88(sp)
    80002490:	06013683          	ld	a3,96(sp)
    80002494:	06813703          	ld	a4,104(sp)
    80002498:	07013783          	ld	a5,112(sp)
    8000249c:	07813803          	ld	a6,120(sp)
    800024a0:	08013883          	ld	a7,128(sp)
    800024a4:	08813903          	ld	s2,136(sp)
    800024a8:	09013983          	ld	s3,144(sp)
    800024ac:	09813a03          	ld	s4,152(sp)
    800024b0:	0a013a83          	ld	s5,160(sp)
    800024b4:	0a813b03          	ld	s6,168(sp)
    800024b8:	0b013b83          	ld	s7,176(sp)
    800024bc:	0b813c03          	ld	s8,184(sp)
    800024c0:	0c013c83          	ld	s9,192(sp)
    800024c4:	0c813d03          	ld	s10,200(sp)
    800024c8:	0d013d83          	ld	s11,208(sp)
    800024cc:	0d813e03          	ld	t3,216(sp)
    800024d0:	0e013e83          	ld	t4,224(sp)
    800024d4:	0e813f03          	ld	t5,232(sp)
    800024d8:	0f013f83          	ld	t6,240(sp)
    800024dc:	10010113          	addi	sp,sp,256
    800024e0:	10200073          	sret
    800024e4:	00000013          	nop
    800024e8:	00000013          	nop
    800024ec:	00000013          	nop

00000000800024f0 <timervec>:
    800024f0:	34051573          	csrrw	a0,mscratch,a0
    800024f4:	00b53023          	sd	a1,0(a0)
    800024f8:	00c53423          	sd	a2,8(a0)
    800024fc:	00d53823          	sd	a3,16(a0)
    80002500:	01853583          	ld	a1,24(a0)
    80002504:	02053603          	ld	a2,32(a0)
    80002508:	0005b683          	ld	a3,0(a1)
    8000250c:	00c686b3          	add	a3,a3,a2
    80002510:	00d5b023          	sd	a3,0(a1)
    80002514:	00200593          	li	a1,2
    80002518:	14459073          	csrw	sip,a1
    8000251c:	01053683          	ld	a3,16(a0)
    80002520:	00853603          	ld	a2,8(a0)
    80002524:	00053583          	ld	a1,0(a0)
    80002528:	34051573          	csrrw	a0,mscratch,a0
    8000252c:	30200073          	mret

0000000080002530 <plicinit>:
    80002530:	ff010113          	addi	sp,sp,-16
    80002534:	00813423          	sd	s0,8(sp)
    80002538:	01010413          	addi	s0,sp,16
    8000253c:	00813403          	ld	s0,8(sp)
    80002540:	0c0007b7          	lui	a5,0xc000
    80002544:	00100713          	li	a4,1
    80002548:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000254c:	00e7a223          	sw	a4,4(a5)
    80002550:	01010113          	addi	sp,sp,16
    80002554:	00008067          	ret

0000000080002558 <plicinithart>:
    80002558:	ff010113          	addi	sp,sp,-16
    8000255c:	00813023          	sd	s0,0(sp)
    80002560:	00113423          	sd	ra,8(sp)
    80002564:	01010413          	addi	s0,sp,16
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	a40080e7          	jalr	-1472(ra) # 80001fa8 <cpuid>
    80002570:	0085171b          	slliw	a4,a0,0x8
    80002574:	0c0027b7          	lui	a5,0xc002
    80002578:	00e787b3          	add	a5,a5,a4
    8000257c:	40200713          	li	a4,1026
    80002580:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002584:	00813083          	ld	ra,8(sp)
    80002588:	00013403          	ld	s0,0(sp)
    8000258c:	00d5151b          	slliw	a0,a0,0xd
    80002590:	0c2017b7          	lui	a5,0xc201
    80002594:	00a78533          	add	a0,a5,a0
    80002598:	00052023          	sw	zero,0(a0)
    8000259c:	01010113          	addi	sp,sp,16
    800025a0:	00008067          	ret

00000000800025a4 <plic_claim>:
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00813023          	sd	s0,0(sp)
    800025ac:	00113423          	sd	ra,8(sp)
    800025b0:	01010413          	addi	s0,sp,16
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	9f4080e7          	jalr	-1548(ra) # 80001fa8 <cpuid>
    800025bc:	00813083          	ld	ra,8(sp)
    800025c0:	00013403          	ld	s0,0(sp)
    800025c4:	00d5151b          	slliw	a0,a0,0xd
    800025c8:	0c2017b7          	lui	a5,0xc201
    800025cc:	00a78533          	add	a0,a5,a0
    800025d0:	00452503          	lw	a0,4(a0)
    800025d4:	01010113          	addi	sp,sp,16
    800025d8:	00008067          	ret

00000000800025dc <plic_complete>:
    800025dc:	fe010113          	addi	sp,sp,-32
    800025e0:	00813823          	sd	s0,16(sp)
    800025e4:	00913423          	sd	s1,8(sp)
    800025e8:	00113c23          	sd	ra,24(sp)
    800025ec:	02010413          	addi	s0,sp,32
    800025f0:	00050493          	mv	s1,a0
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	9b4080e7          	jalr	-1612(ra) # 80001fa8 <cpuid>
    800025fc:	01813083          	ld	ra,24(sp)
    80002600:	01013403          	ld	s0,16(sp)
    80002604:	00d5179b          	slliw	a5,a0,0xd
    80002608:	0c201737          	lui	a4,0xc201
    8000260c:	00f707b3          	add	a5,a4,a5
    80002610:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002614:	00813483          	ld	s1,8(sp)
    80002618:	02010113          	addi	sp,sp,32
    8000261c:	00008067          	ret

0000000080002620 <consolewrite>:
    80002620:	fb010113          	addi	sp,sp,-80
    80002624:	04813023          	sd	s0,64(sp)
    80002628:	04113423          	sd	ra,72(sp)
    8000262c:	02913c23          	sd	s1,56(sp)
    80002630:	03213823          	sd	s2,48(sp)
    80002634:	03313423          	sd	s3,40(sp)
    80002638:	03413023          	sd	s4,32(sp)
    8000263c:	01513c23          	sd	s5,24(sp)
    80002640:	05010413          	addi	s0,sp,80
    80002644:	06c05c63          	blez	a2,800026bc <consolewrite+0x9c>
    80002648:	00060993          	mv	s3,a2
    8000264c:	00050a13          	mv	s4,a0
    80002650:	00058493          	mv	s1,a1
    80002654:	00000913          	li	s2,0
    80002658:	fff00a93          	li	s5,-1
    8000265c:	01c0006f          	j	80002678 <consolewrite+0x58>
    80002660:	fbf44503          	lbu	a0,-65(s0)
    80002664:	0019091b          	addiw	s2,s2,1
    80002668:	00148493          	addi	s1,s1,1
    8000266c:	00001097          	auipc	ra,0x1
    80002670:	a9c080e7          	jalr	-1380(ra) # 80003108 <uartputc>
    80002674:	03298063          	beq	s3,s2,80002694 <consolewrite+0x74>
    80002678:	00048613          	mv	a2,s1
    8000267c:	00100693          	li	a3,1
    80002680:	000a0593          	mv	a1,s4
    80002684:	fbf40513          	addi	a0,s0,-65
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	9d8080e7          	jalr	-1576(ra) # 80002060 <either_copyin>
    80002690:	fd5518e3          	bne	a0,s5,80002660 <consolewrite+0x40>
    80002694:	04813083          	ld	ra,72(sp)
    80002698:	04013403          	ld	s0,64(sp)
    8000269c:	03813483          	ld	s1,56(sp)
    800026a0:	02813983          	ld	s3,40(sp)
    800026a4:	02013a03          	ld	s4,32(sp)
    800026a8:	01813a83          	ld	s5,24(sp)
    800026ac:	00090513          	mv	a0,s2
    800026b0:	03013903          	ld	s2,48(sp)
    800026b4:	05010113          	addi	sp,sp,80
    800026b8:	00008067          	ret
    800026bc:	00000913          	li	s2,0
    800026c0:	fd5ff06f          	j	80002694 <consolewrite+0x74>

00000000800026c4 <consoleread>:
    800026c4:	f9010113          	addi	sp,sp,-112
    800026c8:	06813023          	sd	s0,96(sp)
    800026cc:	04913c23          	sd	s1,88(sp)
    800026d0:	05213823          	sd	s2,80(sp)
    800026d4:	05313423          	sd	s3,72(sp)
    800026d8:	05413023          	sd	s4,64(sp)
    800026dc:	03513c23          	sd	s5,56(sp)
    800026e0:	03613823          	sd	s6,48(sp)
    800026e4:	03713423          	sd	s7,40(sp)
    800026e8:	03813023          	sd	s8,32(sp)
    800026ec:	06113423          	sd	ra,104(sp)
    800026f0:	01913c23          	sd	s9,24(sp)
    800026f4:	07010413          	addi	s0,sp,112
    800026f8:	00060b93          	mv	s7,a2
    800026fc:	00050913          	mv	s2,a0
    80002700:	00058c13          	mv	s8,a1
    80002704:	00060b1b          	sext.w	s6,a2
    80002708:	00003497          	auipc	s1,0x3
    8000270c:	3c048493          	addi	s1,s1,960 # 80005ac8 <cons>
    80002710:	00400993          	li	s3,4
    80002714:	fff00a13          	li	s4,-1
    80002718:	00a00a93          	li	s5,10
    8000271c:	05705e63          	blez	s7,80002778 <consoleread+0xb4>
    80002720:	09c4a703          	lw	a4,156(s1)
    80002724:	0984a783          	lw	a5,152(s1)
    80002728:	0007071b          	sext.w	a4,a4
    8000272c:	08e78463          	beq	a5,a4,800027b4 <consoleread+0xf0>
    80002730:	07f7f713          	andi	a4,a5,127
    80002734:	00e48733          	add	a4,s1,a4
    80002738:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000273c:	0017869b          	addiw	a3,a5,1
    80002740:	08d4ac23          	sw	a3,152(s1)
    80002744:	00070c9b          	sext.w	s9,a4
    80002748:	0b370663          	beq	a4,s3,800027f4 <consoleread+0x130>
    8000274c:	00100693          	li	a3,1
    80002750:	f9f40613          	addi	a2,s0,-97
    80002754:	000c0593          	mv	a1,s8
    80002758:	00090513          	mv	a0,s2
    8000275c:	f8e40fa3          	sb	a4,-97(s0)
    80002760:	00000097          	auipc	ra,0x0
    80002764:	8b4080e7          	jalr	-1868(ra) # 80002014 <either_copyout>
    80002768:	01450863          	beq	a0,s4,80002778 <consoleread+0xb4>
    8000276c:	001c0c13          	addi	s8,s8,1
    80002770:	fffb8b9b          	addiw	s7,s7,-1
    80002774:	fb5c94e3          	bne	s9,s5,8000271c <consoleread+0x58>
    80002778:	000b851b          	sext.w	a0,s7
    8000277c:	06813083          	ld	ra,104(sp)
    80002780:	06013403          	ld	s0,96(sp)
    80002784:	05813483          	ld	s1,88(sp)
    80002788:	05013903          	ld	s2,80(sp)
    8000278c:	04813983          	ld	s3,72(sp)
    80002790:	04013a03          	ld	s4,64(sp)
    80002794:	03813a83          	ld	s5,56(sp)
    80002798:	02813b83          	ld	s7,40(sp)
    8000279c:	02013c03          	ld	s8,32(sp)
    800027a0:	01813c83          	ld	s9,24(sp)
    800027a4:	40ab053b          	subw	a0,s6,a0
    800027a8:	03013b03          	ld	s6,48(sp)
    800027ac:	07010113          	addi	sp,sp,112
    800027b0:	00008067          	ret
    800027b4:	00001097          	auipc	ra,0x1
    800027b8:	1d8080e7          	jalr	472(ra) # 8000398c <push_on>
    800027bc:	0984a703          	lw	a4,152(s1)
    800027c0:	09c4a783          	lw	a5,156(s1)
    800027c4:	0007879b          	sext.w	a5,a5
    800027c8:	fef70ce3          	beq	a4,a5,800027c0 <consoleread+0xfc>
    800027cc:	00001097          	auipc	ra,0x1
    800027d0:	234080e7          	jalr	564(ra) # 80003a00 <pop_on>
    800027d4:	0984a783          	lw	a5,152(s1)
    800027d8:	07f7f713          	andi	a4,a5,127
    800027dc:	00e48733          	add	a4,s1,a4
    800027e0:	01874703          	lbu	a4,24(a4)
    800027e4:	0017869b          	addiw	a3,a5,1
    800027e8:	08d4ac23          	sw	a3,152(s1)
    800027ec:	00070c9b          	sext.w	s9,a4
    800027f0:	f5371ee3          	bne	a4,s3,8000274c <consoleread+0x88>
    800027f4:	000b851b          	sext.w	a0,s7
    800027f8:	f96bf2e3          	bgeu	s7,s6,8000277c <consoleread+0xb8>
    800027fc:	08f4ac23          	sw	a5,152(s1)
    80002800:	f7dff06f          	j	8000277c <consoleread+0xb8>

0000000080002804 <consputc>:
    80002804:	10000793          	li	a5,256
    80002808:	00f50663          	beq	a0,a5,80002814 <consputc+0x10>
    8000280c:	00001317          	auipc	t1,0x1
    80002810:	9f430067          	jr	-1548(t1) # 80003200 <uartputc_sync>
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00113423          	sd	ra,8(sp)
    8000281c:	00813023          	sd	s0,0(sp)
    80002820:	01010413          	addi	s0,sp,16
    80002824:	00800513          	li	a0,8
    80002828:	00001097          	auipc	ra,0x1
    8000282c:	9d8080e7          	jalr	-1576(ra) # 80003200 <uartputc_sync>
    80002830:	02000513          	li	a0,32
    80002834:	00001097          	auipc	ra,0x1
    80002838:	9cc080e7          	jalr	-1588(ra) # 80003200 <uartputc_sync>
    8000283c:	00013403          	ld	s0,0(sp)
    80002840:	00813083          	ld	ra,8(sp)
    80002844:	00800513          	li	a0,8
    80002848:	01010113          	addi	sp,sp,16
    8000284c:	00001317          	auipc	t1,0x1
    80002850:	9b430067          	jr	-1612(t1) # 80003200 <uartputc_sync>

0000000080002854 <consoleintr>:
    80002854:	fe010113          	addi	sp,sp,-32
    80002858:	00813823          	sd	s0,16(sp)
    8000285c:	00913423          	sd	s1,8(sp)
    80002860:	01213023          	sd	s2,0(sp)
    80002864:	00113c23          	sd	ra,24(sp)
    80002868:	02010413          	addi	s0,sp,32
    8000286c:	00003917          	auipc	s2,0x3
    80002870:	25c90913          	addi	s2,s2,604 # 80005ac8 <cons>
    80002874:	00050493          	mv	s1,a0
    80002878:	00090513          	mv	a0,s2
    8000287c:	00001097          	auipc	ra,0x1
    80002880:	e40080e7          	jalr	-448(ra) # 800036bc <acquire>
    80002884:	02048c63          	beqz	s1,800028bc <consoleintr+0x68>
    80002888:	0a092783          	lw	a5,160(s2)
    8000288c:	09892703          	lw	a4,152(s2)
    80002890:	07f00693          	li	a3,127
    80002894:	40e7873b          	subw	a4,a5,a4
    80002898:	02e6e263          	bltu	a3,a4,800028bc <consoleintr+0x68>
    8000289c:	00d00713          	li	a4,13
    800028a0:	04e48063          	beq	s1,a4,800028e0 <consoleintr+0x8c>
    800028a4:	07f7f713          	andi	a4,a5,127
    800028a8:	00e90733          	add	a4,s2,a4
    800028ac:	0017879b          	addiw	a5,a5,1
    800028b0:	0af92023          	sw	a5,160(s2)
    800028b4:	00970c23          	sb	s1,24(a4)
    800028b8:	08f92e23          	sw	a5,156(s2)
    800028bc:	01013403          	ld	s0,16(sp)
    800028c0:	01813083          	ld	ra,24(sp)
    800028c4:	00813483          	ld	s1,8(sp)
    800028c8:	00013903          	ld	s2,0(sp)
    800028cc:	00003517          	auipc	a0,0x3
    800028d0:	1fc50513          	addi	a0,a0,508 # 80005ac8 <cons>
    800028d4:	02010113          	addi	sp,sp,32
    800028d8:	00001317          	auipc	t1,0x1
    800028dc:	eb030067          	jr	-336(t1) # 80003788 <release>
    800028e0:	00a00493          	li	s1,10
    800028e4:	fc1ff06f          	j	800028a4 <consoleintr+0x50>

00000000800028e8 <consoleinit>:
    800028e8:	fe010113          	addi	sp,sp,-32
    800028ec:	00113c23          	sd	ra,24(sp)
    800028f0:	00813823          	sd	s0,16(sp)
    800028f4:	00913423          	sd	s1,8(sp)
    800028f8:	02010413          	addi	s0,sp,32
    800028fc:	00003497          	auipc	s1,0x3
    80002900:	1cc48493          	addi	s1,s1,460 # 80005ac8 <cons>
    80002904:	00048513          	mv	a0,s1
    80002908:	00002597          	auipc	a1,0x2
    8000290c:	8e858593          	addi	a1,a1,-1816 # 800041f0 <CONSOLE_STATUS+0x1e0>
    80002910:	00001097          	auipc	ra,0x1
    80002914:	d88080e7          	jalr	-632(ra) # 80003698 <initlock>
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	7ac080e7          	jalr	1964(ra) # 800030c4 <uartinit>
    80002920:	01813083          	ld	ra,24(sp)
    80002924:	01013403          	ld	s0,16(sp)
    80002928:	00000797          	auipc	a5,0x0
    8000292c:	d9c78793          	addi	a5,a5,-612 # 800026c4 <consoleread>
    80002930:	0af4bc23          	sd	a5,184(s1)
    80002934:	00000797          	auipc	a5,0x0
    80002938:	cec78793          	addi	a5,a5,-788 # 80002620 <consolewrite>
    8000293c:	0cf4b023          	sd	a5,192(s1)
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00008067          	ret

000000008000294c <console_read>:
    8000294c:	ff010113          	addi	sp,sp,-16
    80002950:	00813423          	sd	s0,8(sp)
    80002954:	01010413          	addi	s0,sp,16
    80002958:	00813403          	ld	s0,8(sp)
    8000295c:	00003317          	auipc	t1,0x3
    80002960:	22433303          	ld	t1,548(t1) # 80005b80 <devsw+0x10>
    80002964:	01010113          	addi	sp,sp,16
    80002968:	00030067          	jr	t1

000000008000296c <console_write>:
    8000296c:	ff010113          	addi	sp,sp,-16
    80002970:	00813423          	sd	s0,8(sp)
    80002974:	01010413          	addi	s0,sp,16
    80002978:	00813403          	ld	s0,8(sp)
    8000297c:	00003317          	auipc	t1,0x3
    80002980:	20c33303          	ld	t1,524(t1) # 80005b88 <devsw+0x18>
    80002984:	01010113          	addi	sp,sp,16
    80002988:	00030067          	jr	t1

000000008000298c <panic>:
    8000298c:	fe010113          	addi	sp,sp,-32
    80002990:	00113c23          	sd	ra,24(sp)
    80002994:	00813823          	sd	s0,16(sp)
    80002998:	00913423          	sd	s1,8(sp)
    8000299c:	02010413          	addi	s0,sp,32
    800029a0:	00050493          	mv	s1,a0
    800029a4:	00002517          	auipc	a0,0x2
    800029a8:	85450513          	addi	a0,a0,-1964 # 800041f8 <CONSOLE_STATUS+0x1e8>
    800029ac:	00003797          	auipc	a5,0x3
    800029b0:	2607ae23          	sw	zero,636(a5) # 80005c28 <pr+0x18>
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	034080e7          	jalr	52(ra) # 800029e8 <__printf>
    800029bc:	00048513          	mv	a0,s1
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	028080e7          	jalr	40(ra) # 800029e8 <__printf>
    800029c8:	00001517          	auipc	a0,0x1
    800029cc:	6e050513          	addi	a0,a0,1760 # 800040a8 <CONSOLE_STATUS+0x98>
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	018080e7          	jalr	24(ra) # 800029e8 <__printf>
    800029d8:	00100793          	li	a5,1
    800029dc:	00002717          	auipc	a4,0x2
    800029e0:	faf72e23          	sw	a5,-68(a4) # 80004998 <panicked>
    800029e4:	0000006f          	j	800029e4 <panic+0x58>

00000000800029e8 <__printf>:
    800029e8:	f3010113          	addi	sp,sp,-208
    800029ec:	08813023          	sd	s0,128(sp)
    800029f0:	07313423          	sd	s3,104(sp)
    800029f4:	09010413          	addi	s0,sp,144
    800029f8:	05813023          	sd	s8,64(sp)
    800029fc:	08113423          	sd	ra,136(sp)
    80002a00:	06913c23          	sd	s1,120(sp)
    80002a04:	07213823          	sd	s2,112(sp)
    80002a08:	07413023          	sd	s4,96(sp)
    80002a0c:	05513c23          	sd	s5,88(sp)
    80002a10:	05613823          	sd	s6,80(sp)
    80002a14:	05713423          	sd	s7,72(sp)
    80002a18:	03913c23          	sd	s9,56(sp)
    80002a1c:	03a13823          	sd	s10,48(sp)
    80002a20:	03b13423          	sd	s11,40(sp)
    80002a24:	00003317          	auipc	t1,0x3
    80002a28:	1ec30313          	addi	t1,t1,492 # 80005c10 <pr>
    80002a2c:	01832c03          	lw	s8,24(t1)
    80002a30:	00b43423          	sd	a1,8(s0)
    80002a34:	00c43823          	sd	a2,16(s0)
    80002a38:	00d43c23          	sd	a3,24(s0)
    80002a3c:	02e43023          	sd	a4,32(s0)
    80002a40:	02f43423          	sd	a5,40(s0)
    80002a44:	03043823          	sd	a6,48(s0)
    80002a48:	03143c23          	sd	a7,56(s0)
    80002a4c:	00050993          	mv	s3,a0
    80002a50:	4a0c1663          	bnez	s8,80002efc <__printf+0x514>
    80002a54:	60098c63          	beqz	s3,8000306c <__printf+0x684>
    80002a58:	0009c503          	lbu	a0,0(s3)
    80002a5c:	00840793          	addi	a5,s0,8
    80002a60:	f6f43c23          	sd	a5,-136(s0)
    80002a64:	00000493          	li	s1,0
    80002a68:	22050063          	beqz	a0,80002c88 <__printf+0x2a0>
    80002a6c:	00002a37          	lui	s4,0x2
    80002a70:	00018ab7          	lui	s5,0x18
    80002a74:	000f4b37          	lui	s6,0xf4
    80002a78:	00989bb7          	lui	s7,0x989
    80002a7c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002a80:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002a84:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002a88:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002a8c:	00148c9b          	addiw	s9,s1,1
    80002a90:	02500793          	li	a5,37
    80002a94:	01998933          	add	s2,s3,s9
    80002a98:	38f51263          	bne	a0,a5,80002e1c <__printf+0x434>
    80002a9c:	00094783          	lbu	a5,0(s2)
    80002aa0:	00078c9b          	sext.w	s9,a5
    80002aa4:	1e078263          	beqz	a5,80002c88 <__printf+0x2a0>
    80002aa8:	0024849b          	addiw	s1,s1,2
    80002aac:	07000713          	li	a4,112
    80002ab0:	00998933          	add	s2,s3,s1
    80002ab4:	38e78a63          	beq	a5,a4,80002e48 <__printf+0x460>
    80002ab8:	20f76863          	bltu	a4,a5,80002cc8 <__printf+0x2e0>
    80002abc:	42a78863          	beq	a5,a0,80002eec <__printf+0x504>
    80002ac0:	06400713          	li	a4,100
    80002ac4:	40e79663          	bne	a5,a4,80002ed0 <__printf+0x4e8>
    80002ac8:	f7843783          	ld	a5,-136(s0)
    80002acc:	0007a603          	lw	a2,0(a5)
    80002ad0:	00878793          	addi	a5,a5,8
    80002ad4:	f6f43c23          	sd	a5,-136(s0)
    80002ad8:	42064a63          	bltz	a2,80002f0c <__printf+0x524>
    80002adc:	00a00713          	li	a4,10
    80002ae0:	02e677bb          	remuw	a5,a2,a4
    80002ae4:	00001d97          	auipc	s11,0x1
    80002ae8:	73cd8d93          	addi	s11,s11,1852 # 80004220 <digits>
    80002aec:	00900593          	li	a1,9
    80002af0:	0006051b          	sext.w	a0,a2
    80002af4:	00000c93          	li	s9,0
    80002af8:	02079793          	slli	a5,a5,0x20
    80002afc:	0207d793          	srli	a5,a5,0x20
    80002b00:	00fd87b3          	add	a5,s11,a5
    80002b04:	0007c783          	lbu	a5,0(a5)
    80002b08:	02e656bb          	divuw	a3,a2,a4
    80002b0c:	f8f40023          	sb	a5,-128(s0)
    80002b10:	14c5d863          	bge	a1,a2,80002c60 <__printf+0x278>
    80002b14:	06300593          	li	a1,99
    80002b18:	00100c93          	li	s9,1
    80002b1c:	02e6f7bb          	remuw	a5,a3,a4
    80002b20:	02079793          	slli	a5,a5,0x20
    80002b24:	0207d793          	srli	a5,a5,0x20
    80002b28:	00fd87b3          	add	a5,s11,a5
    80002b2c:	0007c783          	lbu	a5,0(a5)
    80002b30:	02e6d73b          	divuw	a4,a3,a4
    80002b34:	f8f400a3          	sb	a5,-127(s0)
    80002b38:	12a5f463          	bgeu	a1,a0,80002c60 <__printf+0x278>
    80002b3c:	00a00693          	li	a3,10
    80002b40:	00900593          	li	a1,9
    80002b44:	02d777bb          	remuw	a5,a4,a3
    80002b48:	02079793          	slli	a5,a5,0x20
    80002b4c:	0207d793          	srli	a5,a5,0x20
    80002b50:	00fd87b3          	add	a5,s11,a5
    80002b54:	0007c503          	lbu	a0,0(a5)
    80002b58:	02d757bb          	divuw	a5,a4,a3
    80002b5c:	f8a40123          	sb	a0,-126(s0)
    80002b60:	48e5f263          	bgeu	a1,a4,80002fe4 <__printf+0x5fc>
    80002b64:	06300513          	li	a0,99
    80002b68:	02d7f5bb          	remuw	a1,a5,a3
    80002b6c:	02059593          	slli	a1,a1,0x20
    80002b70:	0205d593          	srli	a1,a1,0x20
    80002b74:	00bd85b3          	add	a1,s11,a1
    80002b78:	0005c583          	lbu	a1,0(a1)
    80002b7c:	02d7d7bb          	divuw	a5,a5,a3
    80002b80:	f8b401a3          	sb	a1,-125(s0)
    80002b84:	48e57263          	bgeu	a0,a4,80003008 <__printf+0x620>
    80002b88:	3e700513          	li	a0,999
    80002b8c:	02d7f5bb          	remuw	a1,a5,a3
    80002b90:	02059593          	slli	a1,a1,0x20
    80002b94:	0205d593          	srli	a1,a1,0x20
    80002b98:	00bd85b3          	add	a1,s11,a1
    80002b9c:	0005c583          	lbu	a1,0(a1)
    80002ba0:	02d7d7bb          	divuw	a5,a5,a3
    80002ba4:	f8b40223          	sb	a1,-124(s0)
    80002ba8:	46e57663          	bgeu	a0,a4,80003014 <__printf+0x62c>
    80002bac:	02d7f5bb          	remuw	a1,a5,a3
    80002bb0:	02059593          	slli	a1,a1,0x20
    80002bb4:	0205d593          	srli	a1,a1,0x20
    80002bb8:	00bd85b3          	add	a1,s11,a1
    80002bbc:	0005c583          	lbu	a1,0(a1)
    80002bc0:	02d7d7bb          	divuw	a5,a5,a3
    80002bc4:	f8b402a3          	sb	a1,-123(s0)
    80002bc8:	46ea7863          	bgeu	s4,a4,80003038 <__printf+0x650>
    80002bcc:	02d7f5bb          	remuw	a1,a5,a3
    80002bd0:	02059593          	slli	a1,a1,0x20
    80002bd4:	0205d593          	srli	a1,a1,0x20
    80002bd8:	00bd85b3          	add	a1,s11,a1
    80002bdc:	0005c583          	lbu	a1,0(a1)
    80002be0:	02d7d7bb          	divuw	a5,a5,a3
    80002be4:	f8b40323          	sb	a1,-122(s0)
    80002be8:	3eeaf863          	bgeu	s5,a4,80002fd8 <__printf+0x5f0>
    80002bec:	02d7f5bb          	remuw	a1,a5,a3
    80002bf0:	02059593          	slli	a1,a1,0x20
    80002bf4:	0205d593          	srli	a1,a1,0x20
    80002bf8:	00bd85b3          	add	a1,s11,a1
    80002bfc:	0005c583          	lbu	a1,0(a1)
    80002c00:	02d7d7bb          	divuw	a5,a5,a3
    80002c04:	f8b403a3          	sb	a1,-121(s0)
    80002c08:	42eb7e63          	bgeu	s6,a4,80003044 <__printf+0x65c>
    80002c0c:	02d7f5bb          	remuw	a1,a5,a3
    80002c10:	02059593          	slli	a1,a1,0x20
    80002c14:	0205d593          	srli	a1,a1,0x20
    80002c18:	00bd85b3          	add	a1,s11,a1
    80002c1c:	0005c583          	lbu	a1,0(a1)
    80002c20:	02d7d7bb          	divuw	a5,a5,a3
    80002c24:	f8b40423          	sb	a1,-120(s0)
    80002c28:	42ebfc63          	bgeu	s7,a4,80003060 <__printf+0x678>
    80002c2c:	02079793          	slli	a5,a5,0x20
    80002c30:	0207d793          	srli	a5,a5,0x20
    80002c34:	00fd8db3          	add	s11,s11,a5
    80002c38:	000dc703          	lbu	a4,0(s11)
    80002c3c:	00a00793          	li	a5,10
    80002c40:	00900c93          	li	s9,9
    80002c44:	f8e404a3          	sb	a4,-119(s0)
    80002c48:	00065c63          	bgez	a2,80002c60 <__printf+0x278>
    80002c4c:	f9040713          	addi	a4,s0,-112
    80002c50:	00f70733          	add	a4,a4,a5
    80002c54:	02d00693          	li	a3,45
    80002c58:	fed70823          	sb	a3,-16(a4)
    80002c5c:	00078c93          	mv	s9,a5
    80002c60:	f8040793          	addi	a5,s0,-128
    80002c64:	01978cb3          	add	s9,a5,s9
    80002c68:	f7f40d13          	addi	s10,s0,-129
    80002c6c:	000cc503          	lbu	a0,0(s9)
    80002c70:	fffc8c93          	addi	s9,s9,-1
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	b90080e7          	jalr	-1136(ra) # 80002804 <consputc>
    80002c7c:	ffac98e3          	bne	s9,s10,80002c6c <__printf+0x284>
    80002c80:	00094503          	lbu	a0,0(s2)
    80002c84:	e00514e3          	bnez	a0,80002a8c <__printf+0xa4>
    80002c88:	1a0c1663          	bnez	s8,80002e34 <__printf+0x44c>
    80002c8c:	08813083          	ld	ra,136(sp)
    80002c90:	08013403          	ld	s0,128(sp)
    80002c94:	07813483          	ld	s1,120(sp)
    80002c98:	07013903          	ld	s2,112(sp)
    80002c9c:	06813983          	ld	s3,104(sp)
    80002ca0:	06013a03          	ld	s4,96(sp)
    80002ca4:	05813a83          	ld	s5,88(sp)
    80002ca8:	05013b03          	ld	s6,80(sp)
    80002cac:	04813b83          	ld	s7,72(sp)
    80002cb0:	04013c03          	ld	s8,64(sp)
    80002cb4:	03813c83          	ld	s9,56(sp)
    80002cb8:	03013d03          	ld	s10,48(sp)
    80002cbc:	02813d83          	ld	s11,40(sp)
    80002cc0:	0d010113          	addi	sp,sp,208
    80002cc4:	00008067          	ret
    80002cc8:	07300713          	li	a4,115
    80002ccc:	1ce78a63          	beq	a5,a4,80002ea0 <__printf+0x4b8>
    80002cd0:	07800713          	li	a4,120
    80002cd4:	1ee79e63          	bne	a5,a4,80002ed0 <__printf+0x4e8>
    80002cd8:	f7843783          	ld	a5,-136(s0)
    80002cdc:	0007a703          	lw	a4,0(a5)
    80002ce0:	00878793          	addi	a5,a5,8
    80002ce4:	f6f43c23          	sd	a5,-136(s0)
    80002ce8:	28074263          	bltz	a4,80002f6c <__printf+0x584>
    80002cec:	00001d97          	auipc	s11,0x1
    80002cf0:	534d8d93          	addi	s11,s11,1332 # 80004220 <digits>
    80002cf4:	00f77793          	andi	a5,a4,15
    80002cf8:	00fd87b3          	add	a5,s11,a5
    80002cfc:	0007c683          	lbu	a3,0(a5)
    80002d00:	00f00613          	li	a2,15
    80002d04:	0007079b          	sext.w	a5,a4
    80002d08:	f8d40023          	sb	a3,-128(s0)
    80002d0c:	0047559b          	srliw	a1,a4,0x4
    80002d10:	0047569b          	srliw	a3,a4,0x4
    80002d14:	00000c93          	li	s9,0
    80002d18:	0ee65063          	bge	a2,a4,80002df8 <__printf+0x410>
    80002d1c:	00f6f693          	andi	a3,a3,15
    80002d20:	00dd86b3          	add	a3,s11,a3
    80002d24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002d28:	0087d79b          	srliw	a5,a5,0x8
    80002d2c:	00100c93          	li	s9,1
    80002d30:	f8d400a3          	sb	a3,-127(s0)
    80002d34:	0cb67263          	bgeu	a2,a1,80002df8 <__printf+0x410>
    80002d38:	00f7f693          	andi	a3,a5,15
    80002d3c:	00dd86b3          	add	a3,s11,a3
    80002d40:	0006c583          	lbu	a1,0(a3)
    80002d44:	00f00613          	li	a2,15
    80002d48:	0047d69b          	srliw	a3,a5,0x4
    80002d4c:	f8b40123          	sb	a1,-126(s0)
    80002d50:	0047d593          	srli	a1,a5,0x4
    80002d54:	28f67e63          	bgeu	a2,a5,80002ff0 <__printf+0x608>
    80002d58:	00f6f693          	andi	a3,a3,15
    80002d5c:	00dd86b3          	add	a3,s11,a3
    80002d60:	0006c503          	lbu	a0,0(a3)
    80002d64:	0087d813          	srli	a6,a5,0x8
    80002d68:	0087d69b          	srliw	a3,a5,0x8
    80002d6c:	f8a401a3          	sb	a0,-125(s0)
    80002d70:	28b67663          	bgeu	a2,a1,80002ffc <__printf+0x614>
    80002d74:	00f6f693          	andi	a3,a3,15
    80002d78:	00dd86b3          	add	a3,s11,a3
    80002d7c:	0006c583          	lbu	a1,0(a3)
    80002d80:	00c7d513          	srli	a0,a5,0xc
    80002d84:	00c7d69b          	srliw	a3,a5,0xc
    80002d88:	f8b40223          	sb	a1,-124(s0)
    80002d8c:	29067a63          	bgeu	a2,a6,80003020 <__printf+0x638>
    80002d90:	00f6f693          	andi	a3,a3,15
    80002d94:	00dd86b3          	add	a3,s11,a3
    80002d98:	0006c583          	lbu	a1,0(a3)
    80002d9c:	0107d813          	srli	a6,a5,0x10
    80002da0:	0107d69b          	srliw	a3,a5,0x10
    80002da4:	f8b402a3          	sb	a1,-123(s0)
    80002da8:	28a67263          	bgeu	a2,a0,8000302c <__printf+0x644>
    80002dac:	00f6f693          	andi	a3,a3,15
    80002db0:	00dd86b3          	add	a3,s11,a3
    80002db4:	0006c683          	lbu	a3,0(a3)
    80002db8:	0147d79b          	srliw	a5,a5,0x14
    80002dbc:	f8d40323          	sb	a3,-122(s0)
    80002dc0:	21067663          	bgeu	a2,a6,80002fcc <__printf+0x5e4>
    80002dc4:	02079793          	slli	a5,a5,0x20
    80002dc8:	0207d793          	srli	a5,a5,0x20
    80002dcc:	00fd8db3          	add	s11,s11,a5
    80002dd0:	000dc683          	lbu	a3,0(s11)
    80002dd4:	00800793          	li	a5,8
    80002dd8:	00700c93          	li	s9,7
    80002ddc:	f8d403a3          	sb	a3,-121(s0)
    80002de0:	00075c63          	bgez	a4,80002df8 <__printf+0x410>
    80002de4:	f9040713          	addi	a4,s0,-112
    80002de8:	00f70733          	add	a4,a4,a5
    80002dec:	02d00693          	li	a3,45
    80002df0:	fed70823          	sb	a3,-16(a4)
    80002df4:	00078c93          	mv	s9,a5
    80002df8:	f8040793          	addi	a5,s0,-128
    80002dfc:	01978cb3          	add	s9,a5,s9
    80002e00:	f7f40d13          	addi	s10,s0,-129
    80002e04:	000cc503          	lbu	a0,0(s9)
    80002e08:	fffc8c93          	addi	s9,s9,-1
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	9f8080e7          	jalr	-1544(ra) # 80002804 <consputc>
    80002e14:	ff9d18e3          	bne	s10,s9,80002e04 <__printf+0x41c>
    80002e18:	0100006f          	j	80002e28 <__printf+0x440>
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	9e8080e7          	jalr	-1560(ra) # 80002804 <consputc>
    80002e24:	000c8493          	mv	s1,s9
    80002e28:	00094503          	lbu	a0,0(s2)
    80002e2c:	c60510e3          	bnez	a0,80002a8c <__printf+0xa4>
    80002e30:	e40c0ee3          	beqz	s8,80002c8c <__printf+0x2a4>
    80002e34:	00003517          	auipc	a0,0x3
    80002e38:	ddc50513          	addi	a0,a0,-548 # 80005c10 <pr>
    80002e3c:	00001097          	auipc	ra,0x1
    80002e40:	94c080e7          	jalr	-1716(ra) # 80003788 <release>
    80002e44:	e49ff06f          	j	80002c8c <__printf+0x2a4>
    80002e48:	f7843783          	ld	a5,-136(s0)
    80002e4c:	03000513          	li	a0,48
    80002e50:	01000d13          	li	s10,16
    80002e54:	00878713          	addi	a4,a5,8
    80002e58:	0007bc83          	ld	s9,0(a5)
    80002e5c:	f6e43c23          	sd	a4,-136(s0)
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	9a4080e7          	jalr	-1628(ra) # 80002804 <consputc>
    80002e68:	07800513          	li	a0,120
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	998080e7          	jalr	-1640(ra) # 80002804 <consputc>
    80002e74:	00001d97          	auipc	s11,0x1
    80002e78:	3acd8d93          	addi	s11,s11,940 # 80004220 <digits>
    80002e7c:	03ccd793          	srli	a5,s9,0x3c
    80002e80:	00fd87b3          	add	a5,s11,a5
    80002e84:	0007c503          	lbu	a0,0(a5)
    80002e88:	fffd0d1b          	addiw	s10,s10,-1
    80002e8c:	004c9c93          	slli	s9,s9,0x4
    80002e90:	00000097          	auipc	ra,0x0
    80002e94:	974080e7          	jalr	-1676(ra) # 80002804 <consputc>
    80002e98:	fe0d12e3          	bnez	s10,80002e7c <__printf+0x494>
    80002e9c:	f8dff06f          	j	80002e28 <__printf+0x440>
    80002ea0:	f7843783          	ld	a5,-136(s0)
    80002ea4:	0007bc83          	ld	s9,0(a5)
    80002ea8:	00878793          	addi	a5,a5,8
    80002eac:	f6f43c23          	sd	a5,-136(s0)
    80002eb0:	000c9a63          	bnez	s9,80002ec4 <__printf+0x4dc>
    80002eb4:	1080006f          	j	80002fbc <__printf+0x5d4>
    80002eb8:	001c8c93          	addi	s9,s9,1
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	948080e7          	jalr	-1720(ra) # 80002804 <consputc>
    80002ec4:	000cc503          	lbu	a0,0(s9)
    80002ec8:	fe0518e3          	bnez	a0,80002eb8 <__printf+0x4d0>
    80002ecc:	f5dff06f          	j	80002e28 <__printf+0x440>
    80002ed0:	02500513          	li	a0,37
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	930080e7          	jalr	-1744(ra) # 80002804 <consputc>
    80002edc:	000c8513          	mv	a0,s9
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	924080e7          	jalr	-1756(ra) # 80002804 <consputc>
    80002ee8:	f41ff06f          	j	80002e28 <__printf+0x440>
    80002eec:	02500513          	li	a0,37
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	914080e7          	jalr	-1772(ra) # 80002804 <consputc>
    80002ef8:	f31ff06f          	j	80002e28 <__printf+0x440>
    80002efc:	00030513          	mv	a0,t1
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	7bc080e7          	jalr	1980(ra) # 800036bc <acquire>
    80002f08:	b4dff06f          	j	80002a54 <__printf+0x6c>
    80002f0c:	40c0053b          	negw	a0,a2
    80002f10:	00a00713          	li	a4,10
    80002f14:	02e576bb          	remuw	a3,a0,a4
    80002f18:	00001d97          	auipc	s11,0x1
    80002f1c:	308d8d93          	addi	s11,s11,776 # 80004220 <digits>
    80002f20:	ff700593          	li	a1,-9
    80002f24:	02069693          	slli	a3,a3,0x20
    80002f28:	0206d693          	srli	a3,a3,0x20
    80002f2c:	00dd86b3          	add	a3,s11,a3
    80002f30:	0006c683          	lbu	a3,0(a3)
    80002f34:	02e557bb          	divuw	a5,a0,a4
    80002f38:	f8d40023          	sb	a3,-128(s0)
    80002f3c:	10b65e63          	bge	a2,a1,80003058 <__printf+0x670>
    80002f40:	06300593          	li	a1,99
    80002f44:	02e7f6bb          	remuw	a3,a5,a4
    80002f48:	02069693          	slli	a3,a3,0x20
    80002f4c:	0206d693          	srli	a3,a3,0x20
    80002f50:	00dd86b3          	add	a3,s11,a3
    80002f54:	0006c683          	lbu	a3,0(a3)
    80002f58:	02e7d73b          	divuw	a4,a5,a4
    80002f5c:	00200793          	li	a5,2
    80002f60:	f8d400a3          	sb	a3,-127(s0)
    80002f64:	bca5ece3          	bltu	a1,a0,80002b3c <__printf+0x154>
    80002f68:	ce5ff06f          	j	80002c4c <__printf+0x264>
    80002f6c:	40e007bb          	negw	a5,a4
    80002f70:	00001d97          	auipc	s11,0x1
    80002f74:	2b0d8d93          	addi	s11,s11,688 # 80004220 <digits>
    80002f78:	00f7f693          	andi	a3,a5,15
    80002f7c:	00dd86b3          	add	a3,s11,a3
    80002f80:	0006c583          	lbu	a1,0(a3)
    80002f84:	ff100613          	li	a2,-15
    80002f88:	0047d69b          	srliw	a3,a5,0x4
    80002f8c:	f8b40023          	sb	a1,-128(s0)
    80002f90:	0047d59b          	srliw	a1,a5,0x4
    80002f94:	0ac75e63          	bge	a4,a2,80003050 <__printf+0x668>
    80002f98:	00f6f693          	andi	a3,a3,15
    80002f9c:	00dd86b3          	add	a3,s11,a3
    80002fa0:	0006c603          	lbu	a2,0(a3)
    80002fa4:	00f00693          	li	a3,15
    80002fa8:	0087d79b          	srliw	a5,a5,0x8
    80002fac:	f8c400a3          	sb	a2,-127(s0)
    80002fb0:	d8b6e4e3          	bltu	a3,a1,80002d38 <__printf+0x350>
    80002fb4:	00200793          	li	a5,2
    80002fb8:	e2dff06f          	j	80002de4 <__printf+0x3fc>
    80002fbc:	00001c97          	auipc	s9,0x1
    80002fc0:	244c8c93          	addi	s9,s9,580 # 80004200 <CONSOLE_STATUS+0x1f0>
    80002fc4:	02800513          	li	a0,40
    80002fc8:	ef1ff06f          	j	80002eb8 <__printf+0x4d0>
    80002fcc:	00700793          	li	a5,7
    80002fd0:	00600c93          	li	s9,6
    80002fd4:	e0dff06f          	j	80002de0 <__printf+0x3f8>
    80002fd8:	00700793          	li	a5,7
    80002fdc:	00600c93          	li	s9,6
    80002fe0:	c69ff06f          	j	80002c48 <__printf+0x260>
    80002fe4:	00300793          	li	a5,3
    80002fe8:	00200c93          	li	s9,2
    80002fec:	c5dff06f          	j	80002c48 <__printf+0x260>
    80002ff0:	00300793          	li	a5,3
    80002ff4:	00200c93          	li	s9,2
    80002ff8:	de9ff06f          	j	80002de0 <__printf+0x3f8>
    80002ffc:	00400793          	li	a5,4
    80003000:	00300c93          	li	s9,3
    80003004:	dddff06f          	j	80002de0 <__printf+0x3f8>
    80003008:	00400793          	li	a5,4
    8000300c:	00300c93          	li	s9,3
    80003010:	c39ff06f          	j	80002c48 <__printf+0x260>
    80003014:	00500793          	li	a5,5
    80003018:	00400c93          	li	s9,4
    8000301c:	c2dff06f          	j	80002c48 <__printf+0x260>
    80003020:	00500793          	li	a5,5
    80003024:	00400c93          	li	s9,4
    80003028:	db9ff06f          	j	80002de0 <__printf+0x3f8>
    8000302c:	00600793          	li	a5,6
    80003030:	00500c93          	li	s9,5
    80003034:	dadff06f          	j	80002de0 <__printf+0x3f8>
    80003038:	00600793          	li	a5,6
    8000303c:	00500c93          	li	s9,5
    80003040:	c09ff06f          	j	80002c48 <__printf+0x260>
    80003044:	00800793          	li	a5,8
    80003048:	00700c93          	li	s9,7
    8000304c:	bfdff06f          	j	80002c48 <__printf+0x260>
    80003050:	00100793          	li	a5,1
    80003054:	d91ff06f          	j	80002de4 <__printf+0x3fc>
    80003058:	00100793          	li	a5,1
    8000305c:	bf1ff06f          	j	80002c4c <__printf+0x264>
    80003060:	00900793          	li	a5,9
    80003064:	00800c93          	li	s9,8
    80003068:	be1ff06f          	j	80002c48 <__printf+0x260>
    8000306c:	00001517          	auipc	a0,0x1
    80003070:	19c50513          	addi	a0,a0,412 # 80004208 <CONSOLE_STATUS+0x1f8>
    80003074:	00000097          	auipc	ra,0x0
    80003078:	918080e7          	jalr	-1768(ra) # 8000298c <panic>

000000008000307c <printfinit>:
    8000307c:	fe010113          	addi	sp,sp,-32
    80003080:	00813823          	sd	s0,16(sp)
    80003084:	00913423          	sd	s1,8(sp)
    80003088:	00113c23          	sd	ra,24(sp)
    8000308c:	02010413          	addi	s0,sp,32
    80003090:	00003497          	auipc	s1,0x3
    80003094:	b8048493          	addi	s1,s1,-1152 # 80005c10 <pr>
    80003098:	00048513          	mv	a0,s1
    8000309c:	00001597          	auipc	a1,0x1
    800030a0:	17c58593          	addi	a1,a1,380 # 80004218 <CONSOLE_STATUS+0x208>
    800030a4:	00000097          	auipc	ra,0x0
    800030a8:	5f4080e7          	jalr	1524(ra) # 80003698 <initlock>
    800030ac:	01813083          	ld	ra,24(sp)
    800030b0:	01013403          	ld	s0,16(sp)
    800030b4:	0004ac23          	sw	zero,24(s1)
    800030b8:	00813483          	ld	s1,8(sp)
    800030bc:	02010113          	addi	sp,sp,32
    800030c0:	00008067          	ret

00000000800030c4 <uartinit>:
    800030c4:	ff010113          	addi	sp,sp,-16
    800030c8:	00813423          	sd	s0,8(sp)
    800030cc:	01010413          	addi	s0,sp,16
    800030d0:	100007b7          	lui	a5,0x10000
    800030d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800030d8:	f8000713          	li	a4,-128
    800030dc:	00e781a3          	sb	a4,3(a5)
    800030e0:	00300713          	li	a4,3
    800030e4:	00e78023          	sb	a4,0(a5)
    800030e8:	000780a3          	sb	zero,1(a5)
    800030ec:	00e781a3          	sb	a4,3(a5)
    800030f0:	00700693          	li	a3,7
    800030f4:	00d78123          	sb	a3,2(a5)
    800030f8:	00e780a3          	sb	a4,1(a5)
    800030fc:	00813403          	ld	s0,8(sp)
    80003100:	01010113          	addi	sp,sp,16
    80003104:	00008067          	ret

0000000080003108 <uartputc>:
    80003108:	00002797          	auipc	a5,0x2
    8000310c:	8907a783          	lw	a5,-1904(a5) # 80004998 <panicked>
    80003110:	00078463          	beqz	a5,80003118 <uartputc+0x10>
    80003114:	0000006f          	j	80003114 <uartputc+0xc>
    80003118:	fd010113          	addi	sp,sp,-48
    8000311c:	02813023          	sd	s0,32(sp)
    80003120:	00913c23          	sd	s1,24(sp)
    80003124:	01213823          	sd	s2,16(sp)
    80003128:	01313423          	sd	s3,8(sp)
    8000312c:	02113423          	sd	ra,40(sp)
    80003130:	03010413          	addi	s0,sp,48
    80003134:	00002917          	auipc	s2,0x2
    80003138:	86c90913          	addi	s2,s2,-1940 # 800049a0 <uart_tx_r>
    8000313c:	00093783          	ld	a5,0(s2)
    80003140:	00002497          	auipc	s1,0x2
    80003144:	86848493          	addi	s1,s1,-1944 # 800049a8 <uart_tx_w>
    80003148:	0004b703          	ld	a4,0(s1)
    8000314c:	02078693          	addi	a3,a5,32
    80003150:	00050993          	mv	s3,a0
    80003154:	02e69c63          	bne	a3,a4,8000318c <uartputc+0x84>
    80003158:	00001097          	auipc	ra,0x1
    8000315c:	834080e7          	jalr	-1996(ra) # 8000398c <push_on>
    80003160:	00093783          	ld	a5,0(s2)
    80003164:	0004b703          	ld	a4,0(s1)
    80003168:	02078793          	addi	a5,a5,32
    8000316c:	00e79463          	bne	a5,a4,80003174 <uartputc+0x6c>
    80003170:	0000006f          	j	80003170 <uartputc+0x68>
    80003174:	00001097          	auipc	ra,0x1
    80003178:	88c080e7          	jalr	-1908(ra) # 80003a00 <pop_on>
    8000317c:	00093783          	ld	a5,0(s2)
    80003180:	0004b703          	ld	a4,0(s1)
    80003184:	02078693          	addi	a3,a5,32
    80003188:	fce688e3          	beq	a3,a4,80003158 <uartputc+0x50>
    8000318c:	01f77693          	andi	a3,a4,31
    80003190:	00003597          	auipc	a1,0x3
    80003194:	aa058593          	addi	a1,a1,-1376 # 80005c30 <uart_tx_buf>
    80003198:	00d586b3          	add	a3,a1,a3
    8000319c:	00170713          	addi	a4,a4,1
    800031a0:	01368023          	sb	s3,0(a3)
    800031a4:	00e4b023          	sd	a4,0(s1)
    800031a8:	10000637          	lui	a2,0x10000
    800031ac:	02f71063          	bne	a4,a5,800031cc <uartputc+0xc4>
    800031b0:	0340006f          	j	800031e4 <uartputc+0xdc>
    800031b4:	00074703          	lbu	a4,0(a4)
    800031b8:	00f93023          	sd	a5,0(s2)
    800031bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800031c0:	00093783          	ld	a5,0(s2)
    800031c4:	0004b703          	ld	a4,0(s1)
    800031c8:	00f70e63          	beq	a4,a5,800031e4 <uartputc+0xdc>
    800031cc:	00564683          	lbu	a3,5(a2)
    800031d0:	01f7f713          	andi	a4,a5,31
    800031d4:	00e58733          	add	a4,a1,a4
    800031d8:	0206f693          	andi	a3,a3,32
    800031dc:	00178793          	addi	a5,a5,1
    800031e0:	fc069ae3          	bnez	a3,800031b4 <uartputc+0xac>
    800031e4:	02813083          	ld	ra,40(sp)
    800031e8:	02013403          	ld	s0,32(sp)
    800031ec:	01813483          	ld	s1,24(sp)
    800031f0:	01013903          	ld	s2,16(sp)
    800031f4:	00813983          	ld	s3,8(sp)
    800031f8:	03010113          	addi	sp,sp,48
    800031fc:	00008067          	ret

0000000080003200 <uartputc_sync>:
    80003200:	ff010113          	addi	sp,sp,-16
    80003204:	00813423          	sd	s0,8(sp)
    80003208:	01010413          	addi	s0,sp,16
    8000320c:	00001717          	auipc	a4,0x1
    80003210:	78c72703          	lw	a4,1932(a4) # 80004998 <panicked>
    80003214:	02071663          	bnez	a4,80003240 <uartputc_sync+0x40>
    80003218:	00050793          	mv	a5,a0
    8000321c:	100006b7          	lui	a3,0x10000
    80003220:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003224:	02077713          	andi	a4,a4,32
    80003228:	fe070ce3          	beqz	a4,80003220 <uartputc_sync+0x20>
    8000322c:	0ff7f793          	andi	a5,a5,255
    80003230:	00f68023          	sb	a5,0(a3)
    80003234:	00813403          	ld	s0,8(sp)
    80003238:	01010113          	addi	sp,sp,16
    8000323c:	00008067          	ret
    80003240:	0000006f          	j	80003240 <uartputc_sync+0x40>

0000000080003244 <uartstart>:
    80003244:	ff010113          	addi	sp,sp,-16
    80003248:	00813423          	sd	s0,8(sp)
    8000324c:	01010413          	addi	s0,sp,16
    80003250:	00001617          	auipc	a2,0x1
    80003254:	75060613          	addi	a2,a2,1872 # 800049a0 <uart_tx_r>
    80003258:	00001517          	auipc	a0,0x1
    8000325c:	75050513          	addi	a0,a0,1872 # 800049a8 <uart_tx_w>
    80003260:	00063783          	ld	a5,0(a2)
    80003264:	00053703          	ld	a4,0(a0)
    80003268:	04f70263          	beq	a4,a5,800032ac <uartstart+0x68>
    8000326c:	100005b7          	lui	a1,0x10000
    80003270:	00003817          	auipc	a6,0x3
    80003274:	9c080813          	addi	a6,a6,-1600 # 80005c30 <uart_tx_buf>
    80003278:	01c0006f          	j	80003294 <uartstart+0x50>
    8000327c:	0006c703          	lbu	a4,0(a3)
    80003280:	00f63023          	sd	a5,0(a2)
    80003284:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003288:	00063783          	ld	a5,0(a2)
    8000328c:	00053703          	ld	a4,0(a0)
    80003290:	00f70e63          	beq	a4,a5,800032ac <uartstart+0x68>
    80003294:	01f7f713          	andi	a4,a5,31
    80003298:	00e806b3          	add	a3,a6,a4
    8000329c:	0055c703          	lbu	a4,5(a1)
    800032a0:	00178793          	addi	a5,a5,1
    800032a4:	02077713          	andi	a4,a4,32
    800032a8:	fc071ae3          	bnez	a4,8000327c <uartstart+0x38>
    800032ac:	00813403          	ld	s0,8(sp)
    800032b0:	01010113          	addi	sp,sp,16
    800032b4:	00008067          	ret

00000000800032b8 <uartgetc>:
    800032b8:	ff010113          	addi	sp,sp,-16
    800032bc:	00813423          	sd	s0,8(sp)
    800032c0:	01010413          	addi	s0,sp,16
    800032c4:	10000737          	lui	a4,0x10000
    800032c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800032cc:	0017f793          	andi	a5,a5,1
    800032d0:	00078c63          	beqz	a5,800032e8 <uartgetc+0x30>
    800032d4:	00074503          	lbu	a0,0(a4)
    800032d8:	0ff57513          	andi	a0,a0,255
    800032dc:	00813403          	ld	s0,8(sp)
    800032e0:	01010113          	addi	sp,sp,16
    800032e4:	00008067          	ret
    800032e8:	fff00513          	li	a0,-1
    800032ec:	ff1ff06f          	j	800032dc <uartgetc+0x24>

00000000800032f0 <uartintr>:
    800032f0:	100007b7          	lui	a5,0x10000
    800032f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800032f8:	0017f793          	andi	a5,a5,1
    800032fc:	0a078463          	beqz	a5,800033a4 <uartintr+0xb4>
    80003300:	fe010113          	addi	sp,sp,-32
    80003304:	00813823          	sd	s0,16(sp)
    80003308:	00913423          	sd	s1,8(sp)
    8000330c:	00113c23          	sd	ra,24(sp)
    80003310:	02010413          	addi	s0,sp,32
    80003314:	100004b7          	lui	s1,0x10000
    80003318:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000331c:	0ff57513          	andi	a0,a0,255
    80003320:	fffff097          	auipc	ra,0xfffff
    80003324:	534080e7          	jalr	1332(ra) # 80002854 <consoleintr>
    80003328:	0054c783          	lbu	a5,5(s1)
    8000332c:	0017f793          	andi	a5,a5,1
    80003330:	fe0794e3          	bnez	a5,80003318 <uartintr+0x28>
    80003334:	00001617          	auipc	a2,0x1
    80003338:	66c60613          	addi	a2,a2,1644 # 800049a0 <uart_tx_r>
    8000333c:	00001517          	auipc	a0,0x1
    80003340:	66c50513          	addi	a0,a0,1644 # 800049a8 <uart_tx_w>
    80003344:	00063783          	ld	a5,0(a2)
    80003348:	00053703          	ld	a4,0(a0)
    8000334c:	04f70263          	beq	a4,a5,80003390 <uartintr+0xa0>
    80003350:	100005b7          	lui	a1,0x10000
    80003354:	00003817          	auipc	a6,0x3
    80003358:	8dc80813          	addi	a6,a6,-1828 # 80005c30 <uart_tx_buf>
    8000335c:	01c0006f          	j	80003378 <uartintr+0x88>
    80003360:	0006c703          	lbu	a4,0(a3)
    80003364:	00f63023          	sd	a5,0(a2)
    80003368:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000336c:	00063783          	ld	a5,0(a2)
    80003370:	00053703          	ld	a4,0(a0)
    80003374:	00f70e63          	beq	a4,a5,80003390 <uartintr+0xa0>
    80003378:	01f7f713          	andi	a4,a5,31
    8000337c:	00e806b3          	add	a3,a6,a4
    80003380:	0055c703          	lbu	a4,5(a1)
    80003384:	00178793          	addi	a5,a5,1
    80003388:	02077713          	andi	a4,a4,32
    8000338c:	fc071ae3          	bnez	a4,80003360 <uartintr+0x70>
    80003390:	01813083          	ld	ra,24(sp)
    80003394:	01013403          	ld	s0,16(sp)
    80003398:	00813483          	ld	s1,8(sp)
    8000339c:	02010113          	addi	sp,sp,32
    800033a0:	00008067          	ret
    800033a4:	00001617          	auipc	a2,0x1
    800033a8:	5fc60613          	addi	a2,a2,1532 # 800049a0 <uart_tx_r>
    800033ac:	00001517          	auipc	a0,0x1
    800033b0:	5fc50513          	addi	a0,a0,1532 # 800049a8 <uart_tx_w>
    800033b4:	00063783          	ld	a5,0(a2)
    800033b8:	00053703          	ld	a4,0(a0)
    800033bc:	04f70263          	beq	a4,a5,80003400 <uartintr+0x110>
    800033c0:	100005b7          	lui	a1,0x10000
    800033c4:	00003817          	auipc	a6,0x3
    800033c8:	86c80813          	addi	a6,a6,-1940 # 80005c30 <uart_tx_buf>
    800033cc:	01c0006f          	j	800033e8 <uartintr+0xf8>
    800033d0:	0006c703          	lbu	a4,0(a3)
    800033d4:	00f63023          	sd	a5,0(a2)
    800033d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033dc:	00063783          	ld	a5,0(a2)
    800033e0:	00053703          	ld	a4,0(a0)
    800033e4:	02f70063          	beq	a4,a5,80003404 <uartintr+0x114>
    800033e8:	01f7f713          	andi	a4,a5,31
    800033ec:	00e806b3          	add	a3,a6,a4
    800033f0:	0055c703          	lbu	a4,5(a1)
    800033f4:	00178793          	addi	a5,a5,1
    800033f8:	02077713          	andi	a4,a4,32
    800033fc:	fc071ae3          	bnez	a4,800033d0 <uartintr+0xe0>
    80003400:	00008067          	ret
    80003404:	00008067          	ret

0000000080003408 <kinit>:
    80003408:	fc010113          	addi	sp,sp,-64
    8000340c:	02913423          	sd	s1,40(sp)
    80003410:	fffff7b7          	lui	a5,0xfffff
    80003414:	00004497          	auipc	s1,0x4
    80003418:	83b48493          	addi	s1,s1,-1989 # 80006c4f <end+0xfff>
    8000341c:	02813823          	sd	s0,48(sp)
    80003420:	01313c23          	sd	s3,24(sp)
    80003424:	00f4f4b3          	and	s1,s1,a5
    80003428:	02113c23          	sd	ra,56(sp)
    8000342c:	03213023          	sd	s2,32(sp)
    80003430:	01413823          	sd	s4,16(sp)
    80003434:	01513423          	sd	s5,8(sp)
    80003438:	04010413          	addi	s0,sp,64
    8000343c:	000017b7          	lui	a5,0x1
    80003440:	01100993          	li	s3,17
    80003444:	00f487b3          	add	a5,s1,a5
    80003448:	01b99993          	slli	s3,s3,0x1b
    8000344c:	06f9e063          	bltu	s3,a5,800034ac <kinit+0xa4>
    80003450:	00003a97          	auipc	s5,0x3
    80003454:	800a8a93          	addi	s5,s5,-2048 # 80005c50 <end>
    80003458:	0754ec63          	bltu	s1,s5,800034d0 <kinit+0xc8>
    8000345c:	0734fa63          	bgeu	s1,s3,800034d0 <kinit+0xc8>
    80003460:	00088a37          	lui	s4,0x88
    80003464:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003468:	00001917          	auipc	s2,0x1
    8000346c:	54890913          	addi	s2,s2,1352 # 800049b0 <kmem>
    80003470:	00ca1a13          	slli	s4,s4,0xc
    80003474:	0140006f          	j	80003488 <kinit+0x80>
    80003478:	000017b7          	lui	a5,0x1
    8000347c:	00f484b3          	add	s1,s1,a5
    80003480:	0554e863          	bltu	s1,s5,800034d0 <kinit+0xc8>
    80003484:	0534f663          	bgeu	s1,s3,800034d0 <kinit+0xc8>
    80003488:	00001637          	lui	a2,0x1
    8000348c:	00100593          	li	a1,1
    80003490:	00048513          	mv	a0,s1
    80003494:	00000097          	auipc	ra,0x0
    80003498:	5e4080e7          	jalr	1508(ra) # 80003a78 <__memset>
    8000349c:	00093783          	ld	a5,0(s2)
    800034a0:	00f4b023          	sd	a5,0(s1)
    800034a4:	00993023          	sd	s1,0(s2)
    800034a8:	fd4498e3          	bne	s1,s4,80003478 <kinit+0x70>
    800034ac:	03813083          	ld	ra,56(sp)
    800034b0:	03013403          	ld	s0,48(sp)
    800034b4:	02813483          	ld	s1,40(sp)
    800034b8:	02013903          	ld	s2,32(sp)
    800034bc:	01813983          	ld	s3,24(sp)
    800034c0:	01013a03          	ld	s4,16(sp)
    800034c4:	00813a83          	ld	s5,8(sp)
    800034c8:	04010113          	addi	sp,sp,64
    800034cc:	00008067          	ret
    800034d0:	00001517          	auipc	a0,0x1
    800034d4:	d6850513          	addi	a0,a0,-664 # 80004238 <digits+0x18>
    800034d8:	fffff097          	auipc	ra,0xfffff
    800034dc:	4b4080e7          	jalr	1204(ra) # 8000298c <panic>

00000000800034e0 <freerange>:
    800034e0:	fc010113          	addi	sp,sp,-64
    800034e4:	000017b7          	lui	a5,0x1
    800034e8:	02913423          	sd	s1,40(sp)
    800034ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800034f0:	009504b3          	add	s1,a0,s1
    800034f4:	fffff537          	lui	a0,0xfffff
    800034f8:	02813823          	sd	s0,48(sp)
    800034fc:	02113c23          	sd	ra,56(sp)
    80003500:	03213023          	sd	s2,32(sp)
    80003504:	01313c23          	sd	s3,24(sp)
    80003508:	01413823          	sd	s4,16(sp)
    8000350c:	01513423          	sd	s5,8(sp)
    80003510:	01613023          	sd	s6,0(sp)
    80003514:	04010413          	addi	s0,sp,64
    80003518:	00a4f4b3          	and	s1,s1,a0
    8000351c:	00f487b3          	add	a5,s1,a5
    80003520:	06f5e463          	bltu	a1,a5,80003588 <freerange+0xa8>
    80003524:	00002a97          	auipc	s5,0x2
    80003528:	72ca8a93          	addi	s5,s5,1836 # 80005c50 <end>
    8000352c:	0954e263          	bltu	s1,s5,800035b0 <freerange+0xd0>
    80003530:	01100993          	li	s3,17
    80003534:	01b99993          	slli	s3,s3,0x1b
    80003538:	0734fc63          	bgeu	s1,s3,800035b0 <freerange+0xd0>
    8000353c:	00058a13          	mv	s4,a1
    80003540:	00001917          	auipc	s2,0x1
    80003544:	47090913          	addi	s2,s2,1136 # 800049b0 <kmem>
    80003548:	00002b37          	lui	s6,0x2
    8000354c:	0140006f          	j	80003560 <freerange+0x80>
    80003550:	000017b7          	lui	a5,0x1
    80003554:	00f484b3          	add	s1,s1,a5
    80003558:	0554ec63          	bltu	s1,s5,800035b0 <freerange+0xd0>
    8000355c:	0534fa63          	bgeu	s1,s3,800035b0 <freerange+0xd0>
    80003560:	00001637          	lui	a2,0x1
    80003564:	00100593          	li	a1,1
    80003568:	00048513          	mv	a0,s1
    8000356c:	00000097          	auipc	ra,0x0
    80003570:	50c080e7          	jalr	1292(ra) # 80003a78 <__memset>
    80003574:	00093703          	ld	a4,0(s2)
    80003578:	016487b3          	add	a5,s1,s6
    8000357c:	00e4b023          	sd	a4,0(s1)
    80003580:	00993023          	sd	s1,0(s2)
    80003584:	fcfa76e3          	bgeu	s4,a5,80003550 <freerange+0x70>
    80003588:	03813083          	ld	ra,56(sp)
    8000358c:	03013403          	ld	s0,48(sp)
    80003590:	02813483          	ld	s1,40(sp)
    80003594:	02013903          	ld	s2,32(sp)
    80003598:	01813983          	ld	s3,24(sp)
    8000359c:	01013a03          	ld	s4,16(sp)
    800035a0:	00813a83          	ld	s5,8(sp)
    800035a4:	00013b03          	ld	s6,0(sp)
    800035a8:	04010113          	addi	sp,sp,64
    800035ac:	00008067          	ret
    800035b0:	00001517          	auipc	a0,0x1
    800035b4:	c8850513          	addi	a0,a0,-888 # 80004238 <digits+0x18>
    800035b8:	fffff097          	auipc	ra,0xfffff
    800035bc:	3d4080e7          	jalr	980(ra) # 8000298c <panic>

00000000800035c0 <kfree>:
    800035c0:	fe010113          	addi	sp,sp,-32
    800035c4:	00813823          	sd	s0,16(sp)
    800035c8:	00113c23          	sd	ra,24(sp)
    800035cc:	00913423          	sd	s1,8(sp)
    800035d0:	02010413          	addi	s0,sp,32
    800035d4:	03451793          	slli	a5,a0,0x34
    800035d8:	04079c63          	bnez	a5,80003630 <kfree+0x70>
    800035dc:	00002797          	auipc	a5,0x2
    800035e0:	67478793          	addi	a5,a5,1652 # 80005c50 <end>
    800035e4:	00050493          	mv	s1,a0
    800035e8:	04f56463          	bltu	a0,a5,80003630 <kfree+0x70>
    800035ec:	01100793          	li	a5,17
    800035f0:	01b79793          	slli	a5,a5,0x1b
    800035f4:	02f57e63          	bgeu	a0,a5,80003630 <kfree+0x70>
    800035f8:	00001637          	lui	a2,0x1
    800035fc:	00100593          	li	a1,1
    80003600:	00000097          	auipc	ra,0x0
    80003604:	478080e7          	jalr	1144(ra) # 80003a78 <__memset>
    80003608:	00001797          	auipc	a5,0x1
    8000360c:	3a878793          	addi	a5,a5,936 # 800049b0 <kmem>
    80003610:	0007b703          	ld	a4,0(a5)
    80003614:	01813083          	ld	ra,24(sp)
    80003618:	01013403          	ld	s0,16(sp)
    8000361c:	00e4b023          	sd	a4,0(s1)
    80003620:	0097b023          	sd	s1,0(a5)
    80003624:	00813483          	ld	s1,8(sp)
    80003628:	02010113          	addi	sp,sp,32
    8000362c:	00008067          	ret
    80003630:	00001517          	auipc	a0,0x1
    80003634:	c0850513          	addi	a0,a0,-1016 # 80004238 <digits+0x18>
    80003638:	fffff097          	auipc	ra,0xfffff
    8000363c:	354080e7          	jalr	852(ra) # 8000298c <panic>

0000000080003640 <kalloc>:
    80003640:	fe010113          	addi	sp,sp,-32
    80003644:	00813823          	sd	s0,16(sp)
    80003648:	00913423          	sd	s1,8(sp)
    8000364c:	00113c23          	sd	ra,24(sp)
    80003650:	02010413          	addi	s0,sp,32
    80003654:	00001797          	auipc	a5,0x1
    80003658:	35c78793          	addi	a5,a5,860 # 800049b0 <kmem>
    8000365c:	0007b483          	ld	s1,0(a5)
    80003660:	02048063          	beqz	s1,80003680 <kalloc+0x40>
    80003664:	0004b703          	ld	a4,0(s1)
    80003668:	00001637          	lui	a2,0x1
    8000366c:	00500593          	li	a1,5
    80003670:	00048513          	mv	a0,s1
    80003674:	00e7b023          	sd	a4,0(a5)
    80003678:	00000097          	auipc	ra,0x0
    8000367c:	400080e7          	jalr	1024(ra) # 80003a78 <__memset>
    80003680:	01813083          	ld	ra,24(sp)
    80003684:	01013403          	ld	s0,16(sp)
    80003688:	00048513          	mv	a0,s1
    8000368c:	00813483          	ld	s1,8(sp)
    80003690:	02010113          	addi	sp,sp,32
    80003694:	00008067          	ret

0000000080003698 <initlock>:
    80003698:	ff010113          	addi	sp,sp,-16
    8000369c:	00813423          	sd	s0,8(sp)
    800036a0:	01010413          	addi	s0,sp,16
    800036a4:	00813403          	ld	s0,8(sp)
    800036a8:	00b53423          	sd	a1,8(a0)
    800036ac:	00052023          	sw	zero,0(a0)
    800036b0:	00053823          	sd	zero,16(a0)
    800036b4:	01010113          	addi	sp,sp,16
    800036b8:	00008067          	ret

00000000800036bc <acquire>:
    800036bc:	fe010113          	addi	sp,sp,-32
    800036c0:	00813823          	sd	s0,16(sp)
    800036c4:	00913423          	sd	s1,8(sp)
    800036c8:	00113c23          	sd	ra,24(sp)
    800036cc:	01213023          	sd	s2,0(sp)
    800036d0:	02010413          	addi	s0,sp,32
    800036d4:	00050493          	mv	s1,a0
    800036d8:	10002973          	csrr	s2,sstatus
    800036dc:	100027f3          	csrr	a5,sstatus
    800036e0:	ffd7f793          	andi	a5,a5,-3
    800036e4:	10079073          	csrw	sstatus,a5
    800036e8:	fffff097          	auipc	ra,0xfffff
    800036ec:	8e0080e7          	jalr	-1824(ra) # 80001fc8 <mycpu>
    800036f0:	07852783          	lw	a5,120(a0)
    800036f4:	06078e63          	beqz	a5,80003770 <acquire+0xb4>
    800036f8:	fffff097          	auipc	ra,0xfffff
    800036fc:	8d0080e7          	jalr	-1840(ra) # 80001fc8 <mycpu>
    80003700:	07852783          	lw	a5,120(a0)
    80003704:	0004a703          	lw	a4,0(s1)
    80003708:	0017879b          	addiw	a5,a5,1
    8000370c:	06f52c23          	sw	a5,120(a0)
    80003710:	04071063          	bnez	a4,80003750 <acquire+0x94>
    80003714:	00100713          	li	a4,1
    80003718:	00070793          	mv	a5,a4
    8000371c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003720:	0007879b          	sext.w	a5,a5
    80003724:	fe079ae3          	bnez	a5,80003718 <acquire+0x5c>
    80003728:	0ff0000f          	fence
    8000372c:	fffff097          	auipc	ra,0xfffff
    80003730:	89c080e7          	jalr	-1892(ra) # 80001fc8 <mycpu>
    80003734:	01813083          	ld	ra,24(sp)
    80003738:	01013403          	ld	s0,16(sp)
    8000373c:	00a4b823          	sd	a0,16(s1)
    80003740:	00013903          	ld	s2,0(sp)
    80003744:	00813483          	ld	s1,8(sp)
    80003748:	02010113          	addi	sp,sp,32
    8000374c:	00008067          	ret
    80003750:	0104b903          	ld	s2,16(s1)
    80003754:	fffff097          	auipc	ra,0xfffff
    80003758:	874080e7          	jalr	-1932(ra) # 80001fc8 <mycpu>
    8000375c:	faa91ce3          	bne	s2,a0,80003714 <acquire+0x58>
    80003760:	00001517          	auipc	a0,0x1
    80003764:	ae050513          	addi	a0,a0,-1312 # 80004240 <digits+0x20>
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	224080e7          	jalr	548(ra) # 8000298c <panic>
    80003770:	00195913          	srli	s2,s2,0x1
    80003774:	fffff097          	auipc	ra,0xfffff
    80003778:	854080e7          	jalr	-1964(ra) # 80001fc8 <mycpu>
    8000377c:	00197913          	andi	s2,s2,1
    80003780:	07252e23          	sw	s2,124(a0)
    80003784:	f75ff06f          	j	800036f8 <acquire+0x3c>

0000000080003788 <release>:
    80003788:	fe010113          	addi	sp,sp,-32
    8000378c:	00813823          	sd	s0,16(sp)
    80003790:	00113c23          	sd	ra,24(sp)
    80003794:	00913423          	sd	s1,8(sp)
    80003798:	01213023          	sd	s2,0(sp)
    8000379c:	02010413          	addi	s0,sp,32
    800037a0:	00052783          	lw	a5,0(a0)
    800037a4:	00079a63          	bnez	a5,800037b8 <release+0x30>
    800037a8:	00001517          	auipc	a0,0x1
    800037ac:	aa050513          	addi	a0,a0,-1376 # 80004248 <digits+0x28>
    800037b0:	fffff097          	auipc	ra,0xfffff
    800037b4:	1dc080e7          	jalr	476(ra) # 8000298c <panic>
    800037b8:	01053903          	ld	s2,16(a0)
    800037bc:	00050493          	mv	s1,a0
    800037c0:	fffff097          	auipc	ra,0xfffff
    800037c4:	808080e7          	jalr	-2040(ra) # 80001fc8 <mycpu>
    800037c8:	fea910e3          	bne	s2,a0,800037a8 <release+0x20>
    800037cc:	0004b823          	sd	zero,16(s1)
    800037d0:	0ff0000f          	fence
    800037d4:	0f50000f          	fence	iorw,ow
    800037d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	7ec080e7          	jalr	2028(ra) # 80001fc8 <mycpu>
    800037e4:	100027f3          	csrr	a5,sstatus
    800037e8:	0027f793          	andi	a5,a5,2
    800037ec:	04079a63          	bnez	a5,80003840 <release+0xb8>
    800037f0:	07852783          	lw	a5,120(a0)
    800037f4:	02f05e63          	blez	a5,80003830 <release+0xa8>
    800037f8:	fff7871b          	addiw	a4,a5,-1
    800037fc:	06e52c23          	sw	a4,120(a0)
    80003800:	00071c63          	bnez	a4,80003818 <release+0x90>
    80003804:	07c52783          	lw	a5,124(a0)
    80003808:	00078863          	beqz	a5,80003818 <release+0x90>
    8000380c:	100027f3          	csrr	a5,sstatus
    80003810:	0027e793          	ori	a5,a5,2
    80003814:	10079073          	csrw	sstatus,a5
    80003818:	01813083          	ld	ra,24(sp)
    8000381c:	01013403          	ld	s0,16(sp)
    80003820:	00813483          	ld	s1,8(sp)
    80003824:	00013903          	ld	s2,0(sp)
    80003828:	02010113          	addi	sp,sp,32
    8000382c:	00008067          	ret
    80003830:	00001517          	auipc	a0,0x1
    80003834:	a3850513          	addi	a0,a0,-1480 # 80004268 <digits+0x48>
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	154080e7          	jalr	340(ra) # 8000298c <panic>
    80003840:	00001517          	auipc	a0,0x1
    80003844:	a1050513          	addi	a0,a0,-1520 # 80004250 <digits+0x30>
    80003848:	fffff097          	auipc	ra,0xfffff
    8000384c:	144080e7          	jalr	324(ra) # 8000298c <panic>

0000000080003850 <holding>:
    80003850:	00052783          	lw	a5,0(a0)
    80003854:	00079663          	bnez	a5,80003860 <holding+0x10>
    80003858:	00000513          	li	a0,0
    8000385c:	00008067          	ret
    80003860:	fe010113          	addi	sp,sp,-32
    80003864:	00813823          	sd	s0,16(sp)
    80003868:	00913423          	sd	s1,8(sp)
    8000386c:	00113c23          	sd	ra,24(sp)
    80003870:	02010413          	addi	s0,sp,32
    80003874:	01053483          	ld	s1,16(a0)
    80003878:	ffffe097          	auipc	ra,0xffffe
    8000387c:	750080e7          	jalr	1872(ra) # 80001fc8 <mycpu>
    80003880:	01813083          	ld	ra,24(sp)
    80003884:	01013403          	ld	s0,16(sp)
    80003888:	40a48533          	sub	a0,s1,a0
    8000388c:	00153513          	seqz	a0,a0
    80003890:	00813483          	ld	s1,8(sp)
    80003894:	02010113          	addi	sp,sp,32
    80003898:	00008067          	ret

000000008000389c <push_off>:
    8000389c:	fe010113          	addi	sp,sp,-32
    800038a0:	00813823          	sd	s0,16(sp)
    800038a4:	00113c23          	sd	ra,24(sp)
    800038a8:	00913423          	sd	s1,8(sp)
    800038ac:	02010413          	addi	s0,sp,32
    800038b0:	100024f3          	csrr	s1,sstatus
    800038b4:	100027f3          	csrr	a5,sstatus
    800038b8:	ffd7f793          	andi	a5,a5,-3
    800038bc:	10079073          	csrw	sstatus,a5
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	708080e7          	jalr	1800(ra) # 80001fc8 <mycpu>
    800038c8:	07852783          	lw	a5,120(a0)
    800038cc:	02078663          	beqz	a5,800038f8 <push_off+0x5c>
    800038d0:	ffffe097          	auipc	ra,0xffffe
    800038d4:	6f8080e7          	jalr	1784(ra) # 80001fc8 <mycpu>
    800038d8:	07852783          	lw	a5,120(a0)
    800038dc:	01813083          	ld	ra,24(sp)
    800038e0:	01013403          	ld	s0,16(sp)
    800038e4:	0017879b          	addiw	a5,a5,1
    800038e8:	06f52c23          	sw	a5,120(a0)
    800038ec:	00813483          	ld	s1,8(sp)
    800038f0:	02010113          	addi	sp,sp,32
    800038f4:	00008067          	ret
    800038f8:	0014d493          	srli	s1,s1,0x1
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	6cc080e7          	jalr	1740(ra) # 80001fc8 <mycpu>
    80003904:	0014f493          	andi	s1,s1,1
    80003908:	06952e23          	sw	s1,124(a0)
    8000390c:	fc5ff06f          	j	800038d0 <push_off+0x34>

0000000080003910 <pop_off>:
    80003910:	ff010113          	addi	sp,sp,-16
    80003914:	00813023          	sd	s0,0(sp)
    80003918:	00113423          	sd	ra,8(sp)
    8000391c:	01010413          	addi	s0,sp,16
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	6a8080e7          	jalr	1704(ra) # 80001fc8 <mycpu>
    80003928:	100027f3          	csrr	a5,sstatus
    8000392c:	0027f793          	andi	a5,a5,2
    80003930:	04079663          	bnez	a5,8000397c <pop_off+0x6c>
    80003934:	07852783          	lw	a5,120(a0)
    80003938:	02f05a63          	blez	a5,8000396c <pop_off+0x5c>
    8000393c:	fff7871b          	addiw	a4,a5,-1
    80003940:	06e52c23          	sw	a4,120(a0)
    80003944:	00071c63          	bnez	a4,8000395c <pop_off+0x4c>
    80003948:	07c52783          	lw	a5,124(a0)
    8000394c:	00078863          	beqz	a5,8000395c <pop_off+0x4c>
    80003950:	100027f3          	csrr	a5,sstatus
    80003954:	0027e793          	ori	a5,a5,2
    80003958:	10079073          	csrw	sstatus,a5
    8000395c:	00813083          	ld	ra,8(sp)
    80003960:	00013403          	ld	s0,0(sp)
    80003964:	01010113          	addi	sp,sp,16
    80003968:	00008067          	ret
    8000396c:	00001517          	auipc	a0,0x1
    80003970:	8fc50513          	addi	a0,a0,-1796 # 80004268 <digits+0x48>
    80003974:	fffff097          	auipc	ra,0xfffff
    80003978:	018080e7          	jalr	24(ra) # 8000298c <panic>
    8000397c:	00001517          	auipc	a0,0x1
    80003980:	8d450513          	addi	a0,a0,-1836 # 80004250 <digits+0x30>
    80003984:	fffff097          	auipc	ra,0xfffff
    80003988:	008080e7          	jalr	8(ra) # 8000298c <panic>

000000008000398c <push_on>:
    8000398c:	fe010113          	addi	sp,sp,-32
    80003990:	00813823          	sd	s0,16(sp)
    80003994:	00113c23          	sd	ra,24(sp)
    80003998:	00913423          	sd	s1,8(sp)
    8000399c:	02010413          	addi	s0,sp,32
    800039a0:	100024f3          	csrr	s1,sstatus
    800039a4:	100027f3          	csrr	a5,sstatus
    800039a8:	0027e793          	ori	a5,a5,2
    800039ac:	10079073          	csrw	sstatus,a5
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	618080e7          	jalr	1560(ra) # 80001fc8 <mycpu>
    800039b8:	07852783          	lw	a5,120(a0)
    800039bc:	02078663          	beqz	a5,800039e8 <push_on+0x5c>
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	608080e7          	jalr	1544(ra) # 80001fc8 <mycpu>
    800039c8:	07852783          	lw	a5,120(a0)
    800039cc:	01813083          	ld	ra,24(sp)
    800039d0:	01013403          	ld	s0,16(sp)
    800039d4:	0017879b          	addiw	a5,a5,1
    800039d8:	06f52c23          	sw	a5,120(a0)
    800039dc:	00813483          	ld	s1,8(sp)
    800039e0:	02010113          	addi	sp,sp,32
    800039e4:	00008067          	ret
    800039e8:	0014d493          	srli	s1,s1,0x1
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	5dc080e7          	jalr	1500(ra) # 80001fc8 <mycpu>
    800039f4:	0014f493          	andi	s1,s1,1
    800039f8:	06952e23          	sw	s1,124(a0)
    800039fc:	fc5ff06f          	j	800039c0 <push_on+0x34>

0000000080003a00 <pop_on>:
    80003a00:	ff010113          	addi	sp,sp,-16
    80003a04:	00813023          	sd	s0,0(sp)
    80003a08:	00113423          	sd	ra,8(sp)
    80003a0c:	01010413          	addi	s0,sp,16
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	5b8080e7          	jalr	1464(ra) # 80001fc8 <mycpu>
    80003a18:	100027f3          	csrr	a5,sstatus
    80003a1c:	0027f793          	andi	a5,a5,2
    80003a20:	04078463          	beqz	a5,80003a68 <pop_on+0x68>
    80003a24:	07852783          	lw	a5,120(a0)
    80003a28:	02f05863          	blez	a5,80003a58 <pop_on+0x58>
    80003a2c:	fff7879b          	addiw	a5,a5,-1
    80003a30:	06f52c23          	sw	a5,120(a0)
    80003a34:	07853783          	ld	a5,120(a0)
    80003a38:	00079863          	bnez	a5,80003a48 <pop_on+0x48>
    80003a3c:	100027f3          	csrr	a5,sstatus
    80003a40:	ffd7f793          	andi	a5,a5,-3
    80003a44:	10079073          	csrw	sstatus,a5
    80003a48:	00813083          	ld	ra,8(sp)
    80003a4c:	00013403          	ld	s0,0(sp)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret
    80003a58:	00001517          	auipc	a0,0x1
    80003a5c:	83850513          	addi	a0,a0,-1992 # 80004290 <digits+0x70>
    80003a60:	fffff097          	auipc	ra,0xfffff
    80003a64:	f2c080e7          	jalr	-212(ra) # 8000298c <panic>
    80003a68:	00001517          	auipc	a0,0x1
    80003a6c:	80850513          	addi	a0,a0,-2040 # 80004270 <digits+0x50>
    80003a70:	fffff097          	auipc	ra,0xfffff
    80003a74:	f1c080e7          	jalr	-228(ra) # 8000298c <panic>

0000000080003a78 <__memset>:
    80003a78:	ff010113          	addi	sp,sp,-16
    80003a7c:	00813423          	sd	s0,8(sp)
    80003a80:	01010413          	addi	s0,sp,16
    80003a84:	1a060e63          	beqz	a2,80003c40 <__memset+0x1c8>
    80003a88:	40a007b3          	neg	a5,a0
    80003a8c:	0077f793          	andi	a5,a5,7
    80003a90:	00778693          	addi	a3,a5,7
    80003a94:	00b00813          	li	a6,11
    80003a98:	0ff5f593          	andi	a1,a1,255
    80003a9c:	fff6071b          	addiw	a4,a2,-1
    80003aa0:	1b06e663          	bltu	a3,a6,80003c4c <__memset+0x1d4>
    80003aa4:	1cd76463          	bltu	a4,a3,80003c6c <__memset+0x1f4>
    80003aa8:	1a078e63          	beqz	a5,80003c64 <__memset+0x1ec>
    80003aac:	00b50023          	sb	a1,0(a0)
    80003ab0:	00100713          	li	a4,1
    80003ab4:	1ae78463          	beq	a5,a4,80003c5c <__memset+0x1e4>
    80003ab8:	00b500a3          	sb	a1,1(a0)
    80003abc:	00200713          	li	a4,2
    80003ac0:	1ae78a63          	beq	a5,a4,80003c74 <__memset+0x1fc>
    80003ac4:	00b50123          	sb	a1,2(a0)
    80003ac8:	00300713          	li	a4,3
    80003acc:	18e78463          	beq	a5,a4,80003c54 <__memset+0x1dc>
    80003ad0:	00b501a3          	sb	a1,3(a0)
    80003ad4:	00400713          	li	a4,4
    80003ad8:	1ae78263          	beq	a5,a4,80003c7c <__memset+0x204>
    80003adc:	00b50223          	sb	a1,4(a0)
    80003ae0:	00500713          	li	a4,5
    80003ae4:	1ae78063          	beq	a5,a4,80003c84 <__memset+0x20c>
    80003ae8:	00b502a3          	sb	a1,5(a0)
    80003aec:	00700713          	li	a4,7
    80003af0:	18e79e63          	bne	a5,a4,80003c8c <__memset+0x214>
    80003af4:	00b50323          	sb	a1,6(a0)
    80003af8:	00700e93          	li	t4,7
    80003afc:	00859713          	slli	a4,a1,0x8
    80003b00:	00e5e733          	or	a4,a1,a4
    80003b04:	01059e13          	slli	t3,a1,0x10
    80003b08:	01c76e33          	or	t3,a4,t3
    80003b0c:	01859313          	slli	t1,a1,0x18
    80003b10:	006e6333          	or	t1,t3,t1
    80003b14:	02059893          	slli	a7,a1,0x20
    80003b18:	40f60e3b          	subw	t3,a2,a5
    80003b1c:	011368b3          	or	a7,t1,a7
    80003b20:	02859813          	slli	a6,a1,0x28
    80003b24:	0108e833          	or	a6,a7,a6
    80003b28:	03059693          	slli	a3,a1,0x30
    80003b2c:	003e589b          	srliw	a7,t3,0x3
    80003b30:	00d866b3          	or	a3,a6,a3
    80003b34:	03859713          	slli	a4,a1,0x38
    80003b38:	00389813          	slli	a6,a7,0x3
    80003b3c:	00f507b3          	add	a5,a0,a5
    80003b40:	00e6e733          	or	a4,a3,a4
    80003b44:	000e089b          	sext.w	a7,t3
    80003b48:	00f806b3          	add	a3,a6,a5
    80003b4c:	00e7b023          	sd	a4,0(a5)
    80003b50:	00878793          	addi	a5,a5,8
    80003b54:	fed79ce3          	bne	a5,a3,80003b4c <__memset+0xd4>
    80003b58:	ff8e7793          	andi	a5,t3,-8
    80003b5c:	0007871b          	sext.w	a4,a5
    80003b60:	01d787bb          	addw	a5,a5,t4
    80003b64:	0ce88e63          	beq	a7,a4,80003c40 <__memset+0x1c8>
    80003b68:	00f50733          	add	a4,a0,a5
    80003b6c:	00b70023          	sb	a1,0(a4)
    80003b70:	0017871b          	addiw	a4,a5,1
    80003b74:	0cc77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003b78:	00e50733          	add	a4,a0,a4
    80003b7c:	00b70023          	sb	a1,0(a4)
    80003b80:	0027871b          	addiw	a4,a5,2
    80003b84:	0ac77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003b88:	00e50733          	add	a4,a0,a4
    80003b8c:	00b70023          	sb	a1,0(a4)
    80003b90:	0037871b          	addiw	a4,a5,3
    80003b94:	0ac77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003b98:	00e50733          	add	a4,a0,a4
    80003b9c:	00b70023          	sb	a1,0(a4)
    80003ba0:	0047871b          	addiw	a4,a5,4
    80003ba4:	08c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003ba8:	00e50733          	add	a4,a0,a4
    80003bac:	00b70023          	sb	a1,0(a4)
    80003bb0:	0057871b          	addiw	a4,a5,5
    80003bb4:	08c77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003bb8:	00e50733          	add	a4,a0,a4
    80003bbc:	00b70023          	sb	a1,0(a4)
    80003bc0:	0067871b          	addiw	a4,a5,6
    80003bc4:	06c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003bc8:	00e50733          	add	a4,a0,a4
    80003bcc:	00b70023          	sb	a1,0(a4)
    80003bd0:	0077871b          	addiw	a4,a5,7
    80003bd4:	06c77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003bd8:	00e50733          	add	a4,a0,a4
    80003bdc:	00b70023          	sb	a1,0(a4)
    80003be0:	0087871b          	addiw	a4,a5,8
    80003be4:	04c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003be8:	00e50733          	add	a4,a0,a4
    80003bec:	00b70023          	sb	a1,0(a4)
    80003bf0:	0097871b          	addiw	a4,a5,9
    80003bf4:	04c77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003bf8:	00e50733          	add	a4,a0,a4
    80003bfc:	00b70023          	sb	a1,0(a4)
    80003c00:	00a7871b          	addiw	a4,a5,10
    80003c04:	02c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003c08:	00e50733          	add	a4,a0,a4
    80003c0c:	00b70023          	sb	a1,0(a4)
    80003c10:	00b7871b          	addiw	a4,a5,11
    80003c14:	02c77663          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003c18:	00e50733          	add	a4,a0,a4
    80003c1c:	00b70023          	sb	a1,0(a4)
    80003c20:	00c7871b          	addiw	a4,a5,12
    80003c24:	00c77e63          	bgeu	a4,a2,80003c40 <__memset+0x1c8>
    80003c28:	00e50733          	add	a4,a0,a4
    80003c2c:	00b70023          	sb	a1,0(a4)
    80003c30:	00d7879b          	addiw	a5,a5,13
    80003c34:	00c7f663          	bgeu	a5,a2,80003c40 <__memset+0x1c8>
    80003c38:	00f507b3          	add	a5,a0,a5
    80003c3c:	00b78023          	sb	a1,0(a5)
    80003c40:	00813403          	ld	s0,8(sp)
    80003c44:	01010113          	addi	sp,sp,16
    80003c48:	00008067          	ret
    80003c4c:	00b00693          	li	a3,11
    80003c50:	e55ff06f          	j	80003aa4 <__memset+0x2c>
    80003c54:	00300e93          	li	t4,3
    80003c58:	ea5ff06f          	j	80003afc <__memset+0x84>
    80003c5c:	00100e93          	li	t4,1
    80003c60:	e9dff06f          	j	80003afc <__memset+0x84>
    80003c64:	00000e93          	li	t4,0
    80003c68:	e95ff06f          	j	80003afc <__memset+0x84>
    80003c6c:	00000793          	li	a5,0
    80003c70:	ef9ff06f          	j	80003b68 <__memset+0xf0>
    80003c74:	00200e93          	li	t4,2
    80003c78:	e85ff06f          	j	80003afc <__memset+0x84>
    80003c7c:	00400e93          	li	t4,4
    80003c80:	e7dff06f          	j	80003afc <__memset+0x84>
    80003c84:	00500e93          	li	t4,5
    80003c88:	e75ff06f          	j	80003afc <__memset+0x84>
    80003c8c:	00600e93          	li	t4,6
    80003c90:	e6dff06f          	j	80003afc <__memset+0x84>

0000000080003c94 <__memmove>:
    80003c94:	ff010113          	addi	sp,sp,-16
    80003c98:	00813423          	sd	s0,8(sp)
    80003c9c:	01010413          	addi	s0,sp,16
    80003ca0:	0e060863          	beqz	a2,80003d90 <__memmove+0xfc>
    80003ca4:	fff6069b          	addiw	a3,a2,-1
    80003ca8:	0006881b          	sext.w	a6,a3
    80003cac:	0ea5e863          	bltu	a1,a0,80003d9c <__memmove+0x108>
    80003cb0:	00758713          	addi	a4,a1,7
    80003cb4:	00a5e7b3          	or	a5,a1,a0
    80003cb8:	40a70733          	sub	a4,a4,a0
    80003cbc:	0077f793          	andi	a5,a5,7
    80003cc0:	00f73713          	sltiu	a4,a4,15
    80003cc4:	00174713          	xori	a4,a4,1
    80003cc8:	0017b793          	seqz	a5,a5
    80003ccc:	00e7f7b3          	and	a5,a5,a4
    80003cd0:	10078863          	beqz	a5,80003de0 <__memmove+0x14c>
    80003cd4:	00900793          	li	a5,9
    80003cd8:	1107f463          	bgeu	a5,a6,80003de0 <__memmove+0x14c>
    80003cdc:	0036581b          	srliw	a6,a2,0x3
    80003ce0:	fff8081b          	addiw	a6,a6,-1
    80003ce4:	02081813          	slli	a6,a6,0x20
    80003ce8:	01d85893          	srli	a7,a6,0x1d
    80003cec:	00858813          	addi	a6,a1,8
    80003cf0:	00058793          	mv	a5,a1
    80003cf4:	00050713          	mv	a4,a0
    80003cf8:	01088833          	add	a6,a7,a6
    80003cfc:	0007b883          	ld	a7,0(a5)
    80003d00:	00878793          	addi	a5,a5,8
    80003d04:	00870713          	addi	a4,a4,8
    80003d08:	ff173c23          	sd	a7,-8(a4)
    80003d0c:	ff0798e3          	bne	a5,a6,80003cfc <__memmove+0x68>
    80003d10:	ff867713          	andi	a4,a2,-8
    80003d14:	02071793          	slli	a5,a4,0x20
    80003d18:	0207d793          	srli	a5,a5,0x20
    80003d1c:	00f585b3          	add	a1,a1,a5
    80003d20:	40e686bb          	subw	a3,a3,a4
    80003d24:	00f507b3          	add	a5,a0,a5
    80003d28:	06e60463          	beq	a2,a4,80003d90 <__memmove+0xfc>
    80003d2c:	0005c703          	lbu	a4,0(a1)
    80003d30:	00e78023          	sb	a4,0(a5)
    80003d34:	04068e63          	beqz	a3,80003d90 <__memmove+0xfc>
    80003d38:	0015c603          	lbu	a2,1(a1)
    80003d3c:	00100713          	li	a4,1
    80003d40:	00c780a3          	sb	a2,1(a5)
    80003d44:	04e68663          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d48:	0025c603          	lbu	a2,2(a1)
    80003d4c:	00200713          	li	a4,2
    80003d50:	00c78123          	sb	a2,2(a5)
    80003d54:	02e68e63          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d58:	0035c603          	lbu	a2,3(a1)
    80003d5c:	00300713          	li	a4,3
    80003d60:	00c781a3          	sb	a2,3(a5)
    80003d64:	02e68663          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d68:	0045c603          	lbu	a2,4(a1)
    80003d6c:	00400713          	li	a4,4
    80003d70:	00c78223          	sb	a2,4(a5)
    80003d74:	00e68e63          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d78:	0055c603          	lbu	a2,5(a1)
    80003d7c:	00500713          	li	a4,5
    80003d80:	00c782a3          	sb	a2,5(a5)
    80003d84:	00e68663          	beq	a3,a4,80003d90 <__memmove+0xfc>
    80003d88:	0065c703          	lbu	a4,6(a1)
    80003d8c:	00e78323          	sb	a4,6(a5)
    80003d90:	00813403          	ld	s0,8(sp)
    80003d94:	01010113          	addi	sp,sp,16
    80003d98:	00008067          	ret
    80003d9c:	02061713          	slli	a4,a2,0x20
    80003da0:	02075713          	srli	a4,a4,0x20
    80003da4:	00e587b3          	add	a5,a1,a4
    80003da8:	f0f574e3          	bgeu	a0,a5,80003cb0 <__memmove+0x1c>
    80003dac:	02069613          	slli	a2,a3,0x20
    80003db0:	02065613          	srli	a2,a2,0x20
    80003db4:	fff64613          	not	a2,a2
    80003db8:	00e50733          	add	a4,a0,a4
    80003dbc:	00c78633          	add	a2,a5,a2
    80003dc0:	fff7c683          	lbu	a3,-1(a5)
    80003dc4:	fff78793          	addi	a5,a5,-1
    80003dc8:	fff70713          	addi	a4,a4,-1
    80003dcc:	00d70023          	sb	a3,0(a4)
    80003dd0:	fec798e3          	bne	a5,a2,80003dc0 <__memmove+0x12c>
    80003dd4:	00813403          	ld	s0,8(sp)
    80003dd8:	01010113          	addi	sp,sp,16
    80003ddc:	00008067          	ret
    80003de0:	02069713          	slli	a4,a3,0x20
    80003de4:	02075713          	srli	a4,a4,0x20
    80003de8:	00170713          	addi	a4,a4,1
    80003dec:	00e50733          	add	a4,a0,a4
    80003df0:	00050793          	mv	a5,a0
    80003df4:	0005c683          	lbu	a3,0(a1)
    80003df8:	00178793          	addi	a5,a5,1
    80003dfc:	00158593          	addi	a1,a1,1
    80003e00:	fed78fa3          	sb	a3,-1(a5)
    80003e04:	fee798e3          	bne	a5,a4,80003df4 <__memmove+0x160>
    80003e08:	f89ff06f          	j	80003d90 <__memmove+0xfc>

0000000080003e0c <__putc>:
    80003e0c:	fe010113          	addi	sp,sp,-32
    80003e10:	00813823          	sd	s0,16(sp)
    80003e14:	00113c23          	sd	ra,24(sp)
    80003e18:	02010413          	addi	s0,sp,32
    80003e1c:	00050793          	mv	a5,a0
    80003e20:	fef40593          	addi	a1,s0,-17
    80003e24:	00100613          	li	a2,1
    80003e28:	00000513          	li	a0,0
    80003e2c:	fef407a3          	sb	a5,-17(s0)
    80003e30:	fffff097          	auipc	ra,0xfffff
    80003e34:	b3c080e7          	jalr	-1220(ra) # 8000296c <console_write>
    80003e38:	01813083          	ld	ra,24(sp)
    80003e3c:	01013403          	ld	s0,16(sp)
    80003e40:	02010113          	addi	sp,sp,32
    80003e44:	00008067          	ret

0000000080003e48 <__getc>:
    80003e48:	fe010113          	addi	sp,sp,-32
    80003e4c:	00813823          	sd	s0,16(sp)
    80003e50:	00113c23          	sd	ra,24(sp)
    80003e54:	02010413          	addi	s0,sp,32
    80003e58:	fe840593          	addi	a1,s0,-24
    80003e5c:	00100613          	li	a2,1
    80003e60:	00000513          	li	a0,0
    80003e64:	fffff097          	auipc	ra,0xfffff
    80003e68:	ae8080e7          	jalr	-1304(ra) # 8000294c <console_read>
    80003e6c:	fe844503          	lbu	a0,-24(s0)
    80003e70:	01813083          	ld	ra,24(sp)
    80003e74:	01013403          	ld	s0,16(sp)
    80003e78:	02010113          	addi	sp,sp,32
    80003e7c:	00008067          	ret

0000000080003e80 <console_handler>:
    80003e80:	fe010113          	addi	sp,sp,-32
    80003e84:	00813823          	sd	s0,16(sp)
    80003e88:	00113c23          	sd	ra,24(sp)
    80003e8c:	00913423          	sd	s1,8(sp)
    80003e90:	02010413          	addi	s0,sp,32
    80003e94:	14202773          	csrr	a4,scause
    80003e98:	100027f3          	csrr	a5,sstatus
    80003e9c:	0027f793          	andi	a5,a5,2
    80003ea0:	06079e63          	bnez	a5,80003f1c <console_handler+0x9c>
    80003ea4:	00074c63          	bltz	a4,80003ebc <console_handler+0x3c>
    80003ea8:	01813083          	ld	ra,24(sp)
    80003eac:	01013403          	ld	s0,16(sp)
    80003eb0:	00813483          	ld	s1,8(sp)
    80003eb4:	02010113          	addi	sp,sp,32
    80003eb8:	00008067          	ret
    80003ebc:	0ff77713          	andi	a4,a4,255
    80003ec0:	00900793          	li	a5,9
    80003ec4:	fef712e3          	bne	a4,a5,80003ea8 <console_handler+0x28>
    80003ec8:	ffffe097          	auipc	ra,0xffffe
    80003ecc:	6dc080e7          	jalr	1756(ra) # 800025a4 <plic_claim>
    80003ed0:	00a00793          	li	a5,10
    80003ed4:	00050493          	mv	s1,a0
    80003ed8:	02f50c63          	beq	a0,a5,80003f10 <console_handler+0x90>
    80003edc:	fc0506e3          	beqz	a0,80003ea8 <console_handler+0x28>
    80003ee0:	00050593          	mv	a1,a0
    80003ee4:	00000517          	auipc	a0,0x0
    80003ee8:	2b450513          	addi	a0,a0,692 # 80004198 <CONSOLE_STATUS+0x188>
    80003eec:	fffff097          	auipc	ra,0xfffff
    80003ef0:	afc080e7          	jalr	-1284(ra) # 800029e8 <__printf>
    80003ef4:	01013403          	ld	s0,16(sp)
    80003ef8:	01813083          	ld	ra,24(sp)
    80003efc:	00048513          	mv	a0,s1
    80003f00:	00813483          	ld	s1,8(sp)
    80003f04:	02010113          	addi	sp,sp,32
    80003f08:	ffffe317          	auipc	t1,0xffffe
    80003f0c:	6d430067          	jr	1748(t1) # 800025dc <plic_complete>
    80003f10:	fffff097          	auipc	ra,0xfffff
    80003f14:	3e0080e7          	jalr	992(ra) # 800032f0 <uartintr>
    80003f18:	fddff06f          	j	80003ef4 <console_handler+0x74>
    80003f1c:	00000517          	auipc	a0,0x0
    80003f20:	37c50513          	addi	a0,a0,892 # 80004298 <digits+0x78>
    80003f24:	fffff097          	auipc	ra,0xfffff
    80003f28:	a68080e7          	jalr	-1432(ra) # 8000298c <panic>
	...
