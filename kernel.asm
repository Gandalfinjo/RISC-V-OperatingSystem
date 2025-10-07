
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	4c013103          	ld	sp,1216(sp) # 800044c0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6cc010ef          	jal	ra,800016e8 <start>

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

    call _ZN5Riscv11trapHandlerEv
    80001084:	428000ef          	jal	ra,800014ac <_ZN5Riscv11trapHandlerEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256
    8000110c:	10200073          	sret

0000000080001110 <_Z10test_ecallv>:
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"
#include "../lib/hw.h"

void test_ecall() {
    80001110:	ff010113          	addi	sp,sp,-16
    80001114:	00813423          	sd	s0,8(sp)
    80001118:	01010413          	addi	s0,sp,16
    asm volatile (
        "li a0, 0\n"
        "li a7, 0xDE\n"
        "ecall\n"
    );
    8000111c:	00000513          	li	a0,0
    80001120:	0de00893          	li	a7,222
    80001124:	00000073          	ecall
}
    80001128:	00813403          	ld	s0,8(sp)
    8000112c:	01010113          	addi	sp,sp,16
    80001130:	00008067          	ret

0000000080001134 <_Z9printCharc>:

void printChar(char c) { __putc(c); }
    80001134:	ff010113          	addi	sp,sp,-16
    80001138:	00113423          	sd	ra,8(sp)
    8000113c:	00813023          	sd	s0,0(sp)
    80001140:	01010413          	addi	s0,sp,16
    80001144:	00002097          	auipc	ra,0x2
    80001148:	668080e7          	jalr	1640(ra) # 800037ac <__putc>
    8000114c:	00813083          	ld	ra,8(sp)
    80001150:	00013403          	ld	s0,0(sp)
    80001154:	01010113          	addi	sp,sp,16
    80001158:	00008067          	ret

000000008000115c <_Z11printStringPKc>:
void printString(const char* s) { while(*s) __putc(*s++); }
    8000115c:	fe010113          	addi	sp,sp,-32
    80001160:	00113c23          	sd	ra,24(sp)
    80001164:	00813823          	sd	s0,16(sp)
    80001168:	00913423          	sd	s1,8(sp)
    8000116c:	02010413          	addi	s0,sp,32
    80001170:	00050493          	mv	s1,a0
    80001174:	0004c503          	lbu	a0,0(s1)
    80001178:	00050a63          	beqz	a0,8000118c <_Z11printStringPKc+0x30>
    8000117c:	00148493          	addi	s1,s1,1
    80001180:	00002097          	auipc	ra,0x2
    80001184:	62c080e7          	jalr	1580(ra) # 800037ac <__putc>
    80001188:	fedff06f          	j	80001174 <_Z11printStringPKc+0x18>
    8000118c:	01813083          	ld	ra,24(sp)
    80001190:	01013403          	ld	s0,16(sp)
    80001194:	00813483          	ld	s1,8(sp)
    80001198:	02010113          	addi	sp,sp,32
    8000119c:	00008067          	ret

00000000800011a0 <_Z11printNumberm>:
void printNumber(size_t num) {
    800011a0:	fc010113          	addi	sp,sp,-64
    800011a4:	02113c23          	sd	ra,56(sp)
    800011a8:	02813823          	sd	s0,48(sp)
    800011ac:	02913423          	sd	s1,40(sp)
    800011b0:	04010413          	addi	s0,sp,64
    if (num == 0) { __putc('0'); return; }
    800011b4:	02050863          	beqz	a0,800011e4 <_Z11printNumberm+0x44>
    char buf[20];
    int i = 0;
    800011b8:	00000793          	li	a5,0
    while(num) { buf[i++] = '0' + (num % 10); num /= 10; }
    800011bc:	04050863          	beqz	a0,8000120c <_Z11printNumberm+0x6c>
    800011c0:	00a00693          	li	a3,10
    800011c4:	02d57733          	remu	a4,a0,a3
    800011c8:	03070713          	addi	a4,a4,48
    800011cc:	fe040613          	addi	a2,s0,-32
    800011d0:	00f60633          	add	a2,a2,a5
    800011d4:	fee60423          	sb	a4,-24(a2)
    800011d8:	02d55533          	divu	a0,a0,a3
    800011dc:	0017879b          	addiw	a5,a5,1
    800011e0:	fddff06f          	j	800011bc <_Z11printNumberm+0x1c>
    if (num == 0) { __putc('0'); return; }
    800011e4:	03000513          	li	a0,48
    800011e8:	00002097          	auipc	ra,0x2
    800011ec:	5c4080e7          	jalr	1476(ra) # 800037ac <__putc>
    800011f0:	0240006f          	j	80001214 <_Z11printNumberm+0x74>
    while(i--) __putc(buf[i]);
    800011f4:	fe040793          	addi	a5,s0,-32
    800011f8:	009787b3          	add	a5,a5,s1
    800011fc:	fe87c503          	lbu	a0,-24(a5)
    80001200:	00002097          	auipc	ra,0x2
    80001204:	5ac080e7          	jalr	1452(ra) # 800037ac <__putc>
    80001208:	00048793          	mv	a5,s1
    8000120c:	fff7849b          	addiw	s1,a5,-1
    80001210:	fe0792e3          	bnez	a5,800011f4 <_Z11printNumberm+0x54>
}
    80001214:	03813083          	ld	ra,56(sp)
    80001218:	03013403          	ld	s0,48(sp)
    8000121c:	02813483          	ld	s1,40(sp)
    80001220:	04010113          	addi	sp,sp,64
    80001224:	00008067          	ret

0000000080001228 <_Z12printPointerPv>:

void printPointer(void* ptr) {
    80001228:	ff010113          	addi	sp,sp,-16
    8000122c:	00113423          	sd	ra,8(sp)
    80001230:	00813023          	sd	s0,0(sp)
    80001234:	01010413          	addi	s0,sp,16
    printNumber((size_t)ptr);
    80001238:	00000097          	auipc	ra,0x0
    8000123c:	f68080e7          	jalr	-152(ra) # 800011a0 <_Z11printNumberm>
}
    80001240:	00813083          	ld	ra,8(sp)
    80001244:	00013403          	ld	s0,0(sp)
    80001248:	01010113          	addi	sp,sp,16
    8000124c:	00008067          	ret

0000000080001250 <main>:

void main() {
    80001250:	fe010113          	addi	sp,sp,-32
    80001254:	00113c23          	sd	ra,24(sp)
    80001258:	00813823          	sd	s0,16(sp)
    8000125c:	00913423          	sd	s1,8(sp)
    80001260:	01213023          	sd	s2,0(sp)
    80001264:	02010413          	addi	s0,sp,32
    MemoryAllocator::initHeap();
    80001268:	00000097          	auipc	ra,0x0
    8000126c:	28c080e7          	jalr	652(ra) # 800014f4 <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    80001270:	00000097          	auipc	ra,0x0
    80001274:	218080e7          	jalr	536(ra) # 80001488 <_ZN5Riscv16setupTrapHandlerEv>

    BlockHeader* curr = MemoryAllocator::freeListHead;
    80001278:	00003797          	auipc	a5,0x3
    8000127c:	2587b783          	ld	a5,600(a5) # 800044d0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001280:	0007b483          	ld	s1,0(a5)
    while(curr) {
    80001284:	04048a63          	beqz	s1,800012d8 <main+0x88>
        printString("Free block at "); printPointer(curr);
    80001288:	00003517          	auipc	a0,0x3
    8000128c:	d9850513          	addi	a0,a0,-616 # 80004020 <CONSOLE_STATUS+0x10>
    80001290:	00000097          	auipc	ra,0x0
    80001294:	ecc080e7          	jalr	-308(ra) # 8000115c <_Z11printStringPKc>
    80001298:	00048513          	mv	a0,s1
    8000129c:	00000097          	auipc	ra,0x0
    800012a0:	f8c080e7          	jalr	-116(ra) # 80001228 <_Z12printPointerPv>
        printString(" size "); printNumber(curr->size); printString("\n");
    800012a4:	00003517          	auipc	a0,0x3
    800012a8:	d8c50513          	addi	a0,a0,-628 # 80004030 <CONSOLE_STATUS+0x20>
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	eb0080e7          	jalr	-336(ra) # 8000115c <_Z11printStringPKc>
    800012b4:	0084b503          	ld	a0,8(s1)
    800012b8:	00000097          	auipc	ra,0x0
    800012bc:	ee8080e7          	jalr	-280(ra) # 800011a0 <_Z11printNumberm>
    800012c0:	00003517          	auipc	a0,0x3
    800012c4:	d9050513          	addi	a0,a0,-624 # 80004050 <CONSOLE_STATUS+0x40>
    800012c8:	00000097          	auipc	ra,0x0
    800012cc:	e94080e7          	jalr	-364(ra) # 8000115c <_Z11printStringPKc>
        curr = curr->next;
    800012d0:	0004b483          	ld	s1,0(s1)
    while(curr) {
    800012d4:	fb1ff06f          	j	80001284 <main+0x34>
    }

    void* p1 = MemoryAllocator::mem_alloc(10);
    800012d8:	00a00513          	li	a0,10
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	268080e7          	jalr	616(ra) # 80001544 <_ZN15MemoryAllocator9mem_allocEm>
    800012e4:	00050493          	mv	s1,a0
    void* p2 = MemoryAllocator::mem_alloc(20);
    800012e8:	01400513          	li	a0,20
    800012ec:	00000097          	auipc	ra,0x0
    800012f0:	258080e7          	jalr	600(ra) # 80001544 <_ZN15MemoryAllocator9mem_allocEm>
    800012f4:	00050913          	mv	s2,a0

    printString("p1: "); printPointer(p1); printString("\n");
    800012f8:	00003517          	auipc	a0,0x3
    800012fc:	d4050513          	addi	a0,a0,-704 # 80004038 <CONSOLE_STATUS+0x28>
    80001300:	00000097          	auipc	ra,0x0
    80001304:	e5c080e7          	jalr	-420(ra) # 8000115c <_Z11printStringPKc>
    80001308:	00048513          	mv	a0,s1
    8000130c:	00000097          	auipc	ra,0x0
    80001310:	f1c080e7          	jalr	-228(ra) # 80001228 <_Z12printPointerPv>
    80001314:	00003517          	auipc	a0,0x3
    80001318:	d3c50513          	addi	a0,a0,-708 # 80004050 <CONSOLE_STATUS+0x40>
    8000131c:	00000097          	auipc	ra,0x0
    80001320:	e40080e7          	jalr	-448(ra) # 8000115c <_Z11printStringPKc>
    printString("p2: "); printPointer(p2); printString("\n");
    80001324:	00003517          	auipc	a0,0x3
    80001328:	d1c50513          	addi	a0,a0,-740 # 80004040 <CONSOLE_STATUS+0x30>
    8000132c:	00000097          	auipc	ra,0x0
    80001330:	e30080e7          	jalr	-464(ra) # 8000115c <_Z11printStringPKc>
    80001334:	00090513          	mv	a0,s2
    80001338:	00000097          	auipc	ra,0x0
    8000133c:	ef0080e7          	jalr	-272(ra) # 80001228 <_Z12printPointerPv>
    80001340:	00003517          	auipc	a0,0x3
    80001344:	d1050513          	addi	a0,a0,-752 # 80004050 <CONSOLE_STATUS+0x40>
    80001348:	00000097          	auipc	ra,0x0
    8000134c:	e14080e7          	jalr	-492(ra) # 8000115c <_Z11printStringPKc>

    MemoryAllocator::mem_free(p1);
    80001350:	00048513          	mv	a0,s1
    80001354:	00000097          	auipc	ra,0x0
    80001358:	2f0080e7          	jalr	752(ra) # 80001644 <_ZN15MemoryAllocator8mem_freeEPv>
    printString("Freed p1\n");
    8000135c:	00003517          	auipc	a0,0x3
    80001360:	cec50513          	addi	a0,a0,-788 # 80004048 <CONSOLE_STATUS+0x38>
    80001364:	00000097          	auipc	ra,0x0
    80001368:	df8080e7          	jalr	-520(ra) # 8000115c <_Z11printStringPKc>

    curr = MemoryAllocator::freeListHead;
    8000136c:	00003797          	auipc	a5,0x3
    80001370:	1647b783          	ld	a5,356(a5) # 800044d0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001374:	0007b483          	ld	s1,0(a5)
    while(curr) {
    80001378:	04048a63          	beqz	s1,800013cc <main+0x17c>
        printString("Free block at "); printPointer(curr);
    8000137c:	00003517          	auipc	a0,0x3
    80001380:	ca450513          	addi	a0,a0,-860 # 80004020 <CONSOLE_STATUS+0x10>
    80001384:	00000097          	auipc	ra,0x0
    80001388:	dd8080e7          	jalr	-552(ra) # 8000115c <_Z11printStringPKc>
    8000138c:	00048513          	mv	a0,s1
    80001390:	00000097          	auipc	ra,0x0
    80001394:	e98080e7          	jalr	-360(ra) # 80001228 <_Z12printPointerPv>
        printString(" size "); printNumber(curr->size); printString("\n");
    80001398:	00003517          	auipc	a0,0x3
    8000139c:	c9850513          	addi	a0,a0,-872 # 80004030 <CONSOLE_STATUS+0x20>
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	dbc080e7          	jalr	-580(ra) # 8000115c <_Z11printStringPKc>
    800013a8:	0084b503          	ld	a0,8(s1)
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	df4080e7          	jalr	-524(ra) # 800011a0 <_Z11printNumberm>
    800013b4:	00003517          	auipc	a0,0x3
    800013b8:	c9c50513          	addi	a0,a0,-868 # 80004050 <CONSOLE_STATUS+0x40>
    800013bc:	00000097          	auipc	ra,0x0
    800013c0:	da0080e7          	jalr	-608(ra) # 8000115c <_Z11printStringPKc>
        curr = curr->next;
    800013c4:	0004b483          	ld	s1,0(s1)
    while(curr) {
    800013c8:	fb1ff06f          	j	80001378 <main+0x128>
    }

    MemoryAllocator::mem_free(p2);
    800013cc:	00090513          	mv	a0,s2
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	274080e7          	jalr	628(ra) # 80001644 <_ZN15MemoryAllocator8mem_freeEPv>
    printString("Freed p2\n");
    800013d8:	00003517          	auipc	a0,0x3
    800013dc:	c8050513          	addi	a0,a0,-896 # 80004058 <CONSOLE_STATUS+0x48>
    800013e0:	00000097          	auipc	ra,0x0
    800013e4:	d7c080e7          	jalr	-644(ra) # 8000115c <_Z11printStringPKc>

    curr = MemoryAllocator::freeListHead;
    800013e8:	00003797          	auipc	a5,0x3
    800013ec:	0e87b783          	ld	a5,232(a5) # 800044d0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800013f0:	0007b483          	ld	s1,0(a5)
    while(curr) {
    800013f4:	04048a63          	beqz	s1,80001448 <main+0x1f8>
        printString("Free block at "); printPointer(curr);
    800013f8:	00003517          	auipc	a0,0x3
    800013fc:	c2850513          	addi	a0,a0,-984 # 80004020 <CONSOLE_STATUS+0x10>
    80001400:	00000097          	auipc	ra,0x0
    80001404:	d5c080e7          	jalr	-676(ra) # 8000115c <_Z11printStringPKc>
    80001408:	00048513          	mv	a0,s1
    8000140c:	00000097          	auipc	ra,0x0
    80001410:	e1c080e7          	jalr	-484(ra) # 80001228 <_Z12printPointerPv>
        printString(" size "); printNumber(curr->size); printString("\n");
    80001414:	00003517          	auipc	a0,0x3
    80001418:	c1c50513          	addi	a0,a0,-996 # 80004030 <CONSOLE_STATUS+0x20>
    8000141c:	00000097          	auipc	ra,0x0
    80001420:	d40080e7          	jalr	-704(ra) # 8000115c <_Z11printStringPKc>
    80001424:	0084b503          	ld	a0,8(s1)
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	d78080e7          	jalr	-648(ra) # 800011a0 <_Z11printNumberm>
    80001430:	00003517          	auipc	a0,0x3
    80001434:	c2050513          	addi	a0,a0,-992 # 80004050 <CONSOLE_STATUS+0x40>
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	d24080e7          	jalr	-732(ra) # 8000115c <_Z11printStringPKc>
        curr = curr->next;
    80001440:	0004b483          	ld	s1,0(s1)
    while(curr) {
    80001444:	fb1ff06f          	j	800013f4 <main+0x1a4>
    }

    printString("Pre ecall\n");
    80001448:	00003517          	auipc	a0,0x3
    8000144c:	c2050513          	addi	a0,a0,-992 # 80004068 <CONSOLE_STATUS+0x58>
    80001450:	00000097          	auipc	ra,0x0
    80001454:	d0c080e7          	jalr	-756(ra) # 8000115c <_Z11printStringPKc>

    test_ecall();
    80001458:	00000097          	auipc	ra,0x0
    8000145c:	cb8080e7          	jalr	-840(ra) # 80001110 <_Z10test_ecallv>

    printString("After ecall\n");
    80001460:	00003517          	auipc	a0,0x3
    80001464:	c1850513          	addi	a0,a0,-1000 # 80004078 <CONSOLE_STATUS+0x68>
    80001468:	00000097          	auipc	ra,0x0
    8000146c:	cf4080e7          	jalr	-780(ra) # 8000115c <_Z11printStringPKc>
    80001470:	01813083          	ld	ra,24(sp)
    80001474:	01013403          	ld	s0,16(sp)
    80001478:	00813483          	ld	s1,8(sp)
    8000147c:	00013903          	ld	s2,0(sp)
    80001480:	02010113          	addi	sp,sp,32
    80001484:	00008067          	ret

0000000080001488 <_ZN5Riscv16setupTrapHandlerEv>:
//

#include "../h/Riscv.hpp"
#include "../lib/hw.h"

void Riscv::setupTrapHandler() {
    80001488:	ff010113          	addi	sp,sp,-16
    8000148c:	00813423          	sd	s0,8(sp)
    80001490:	01010413          	addi	s0,sp,16
    unsigned long addr = (unsigned long)&trap_handler;
    80001494:	00003797          	auipc	a5,0x3
    80001498:	0347b783          	ld	a5,52(a5) # 800044c8 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(addr));
    8000149c:	10579073          	csrw	stvec,a5
}
    800014a0:	00813403          	ld	s0,8(sp)
    800014a4:	01010113          	addi	sp,sp,16
    800014a8:	00008067          	ret

00000000800014ac <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    800014ac:	ff010113          	addi	sp,sp,-16
    800014b0:	00813423          	sd	s0,8(sp)
    800014b4:	01010413          	addi	s0,sp,16
    uint64 scause = 0, sepc = 0;
    asm volatile("csrr %0, scause" : "=r"(scause));
    800014b8:	14202773          	csrr	a4,scause
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    800014bc:	141026f3          	csrr	a3,sepc

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    800014c0:	fff00793          	li	a5,-1
    800014c4:	0017d793          	srli	a5,a5,0x1
    800014c8:	00f777b3          	and	a5,a4,a5

    if (interrupt == 0 && cause == 9) {
    800014cc:	00074663          	bltz	a4,800014d8 <_ZN5Riscv11trapHandlerEv+0x2c>
    800014d0:	00900713          	li	a4,9
    800014d4:	00e78863          	beq	a5,a4,800014e4 <_ZN5Riscv11trapHandlerEv+0x38>
        }

        sepc += 4;
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    }
}
    800014d8:	00813403          	ld	s0,8(sp)
    800014dc:	01010113          	addi	sp,sp,16
    800014e0:	00008067          	ret
        asm volatile("mv %0, a0" : "=r"(code));
    800014e4:	00050793          	mv	a5,a0
        sepc += 4;
    800014e8:	00468693          	addi	a3,a3,4
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    800014ec:	14169073          	csrw	sepc,a3
}
    800014f0:	fe9ff06f          	j	800014d8 <_ZN5Riscv11trapHandlerEv+0x2c>

00000000800014f4 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    800014f4:	ff010113          	addi	sp,sp,-16
    800014f8:	00813423          	sd	s0,8(sp)
    800014fc:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80001500:	00003697          	auipc	a3,0x3
    80001504:	fb86b683          	ld	a3,-72(a3) # 800044b8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001508:	0006b783          	ld	a5,0(a3)
    8000150c:	00003717          	auipc	a4,0x3
    80001510:	01470713          	addi	a4,a4,20 # 80004520 <_ZN15MemoryAllocator12freeListHeadE>
    80001514:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    80001518:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    8000151c:	00003797          	auipc	a5,0x3
    80001520:	fbc7b783          	ld	a5,-68(a5) # 800044d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001524:	0007b783          	ld	a5,0(a5)
    80001528:	0006b683          	ld	a3,0(a3)
    8000152c:	00073703          	ld	a4,0(a4)
    80001530:	40d787b3          	sub	a5,a5,a3
    80001534:	00f73423          	sd	a5,8(a4)
}
    80001538:	00813403          	ld	s0,8(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret

0000000080001544 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    80001544:	ff010113          	addi	sp,sp,-16
    80001548:	00813423          	sd	s0,8(sp)
    8000154c:	01010413          	addi	s0,sp,16
    80001550:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    80001554:	00003517          	auipc	a0,0x3
    80001558:	fcc53503          	ld	a0,-52(a0) # 80004520 <_ZN15MemoryAllocator12freeListHeadE>
    8000155c:	06050063          	beqz	a0,800015bc <_ZN15MemoryAllocator9mem_allocEm+0x78>
    80001560:	08078a63          	beqz	a5,800015f4 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    80001564:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    80001568:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    8000156c:	00000613          	li	a2,0
    80001570:	00c0006f          	j	8000157c <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    80001574:	00050613          	mv	a2,a0
        curr = curr->next;
    80001578:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    8000157c:	00050663          	beqz	a0,80001588 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    80001580:	00853783          	ld	a5,8(a0)
    80001584:	fee7e8e3          	bltu	a5,a4,80001574 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    80001588:	02050a63          	beqz	a0,800015bc <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    8000158c:	00853583          	ld	a1,8(a0)
    80001590:	02068793          	addi	a5,a3,32
    80001594:	04f5e063          	bltu	a1,a5,800015d4 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    80001598:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    8000159c:	40e585b3          	sub	a1,a1,a4
    800015a0:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    800015a4:	00053683          	ld	a3,0(a0)
    800015a8:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    800015ac:	00060e63          	beqz	a2,800015c8 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    800015b0:	00f63023          	sd	a5,0(a2)
        else freeListHead = newBlock;

        curr->size = totalSize;
    800015b4:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (void*)((char*)curr + sizeof(BlockHeader));
    800015b8:	01050513          	addi	a0,a0,16
}
    800015bc:	00813403          	ld	s0,8(sp)
    800015c0:	01010113          	addi	sp,sp,16
    800015c4:	00008067          	ret
        else freeListHead = newBlock;
    800015c8:	00003697          	auipc	a3,0x3
    800015cc:	f4f6bc23          	sd	a5,-168(a3) # 80004520 <_ZN15MemoryAllocator12freeListHeadE>
    800015d0:	fe5ff06f          	j	800015b4 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    800015d4:	00060863          	beqz	a2,800015e4 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    800015d8:	00053783          	ld	a5,0(a0)
    800015dc:	00f63023          	sd	a5,0(a2)
    800015e0:	fd9ff06f          	j	800015b8 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    800015e4:	00053783          	ld	a5,0(a0)
    800015e8:	00003717          	auipc	a4,0x3
    800015ec:	f2f73c23          	sd	a5,-200(a4) # 80004520 <_ZN15MemoryAllocator12freeListHeadE>
    800015f0:	fc9ff06f          	j	800015b8 <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    800015f4:	00000513          	li	a0,0
    800015f8:	fc5ff06f          	j	800015bc <_ZN15MemoryAllocator9mem_allocEm+0x78>

00000000800015fc <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    800015fc:	ff010113          	addi	sp,sp,-16
    80001600:	00813423          	sd	s0,8(sp)
    80001604:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80001608:	00050c63          	beqz	a0,80001620 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    8000160c:	00053783          	ld	a5,0(a0)
    80001610:	00078863          	beqz	a5,80001620 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    80001614:	00853703          	ld	a4,8(a0)
    80001618:	00e506b3          	add	a3,a0,a4
    8000161c:	00d78863          	beq	a5,a3,8000162c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
    80001620:	00813403          	ld	s0,8(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret
        curr->size += curr->next->size;
    8000162c:	0087b683          	ld	a3,8(a5)
    80001630:	00d70733          	add	a4,a4,a3
    80001634:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    80001638:	0007b783          	ld	a5,0(a5)
    8000163c:	00f53023          	sd	a5,0(a0)
    80001640:	fe1ff06f          	j	80001620 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

0000000080001644 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    80001644:	08050e63          	beqz	a0,800016e0 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80001648:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    8000164c:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    80001650:	00003797          	auipc	a5,0x3
    80001654:	ed07b783          	ld	a5,-304(a5) # 80004520 <_ZN15MemoryAllocator12freeListHeadE>
    80001658:	02078863          	beqz	a5,80001688 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    8000165c:	fe010113          	addi	sp,sp,-32
    80001660:	00113c23          	sd	ra,24(sp)
    80001664:	00813823          	sd	s0,16(sp)
    80001668:	00913423          	sd	s1,8(sp)
    8000166c:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    80001670:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    80001674:	02078463          	beqz	a5,8000169c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001678:	02a7f263          	bgeu	a5,a0,8000169c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    8000167c:	00078493          	mv	s1,a5
        curr = curr->next;
    80001680:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    80001684:	ff1ff06f          	j	80001674 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    80001688:	00003797          	auipc	a5,0x3
    8000168c:	e8a7bc23          	sd	a0,-360(a5) # 80004520 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    80001690:	fe073823          	sd	zero,-16(a4)
        return 0;
    80001694:	00000513          	li	a0,0
    80001698:	00008067          	ret
    blockToFree->next = curr;
    8000169c:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    800016a0:	02048a63          	beqz	s1,800016d4 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    800016a4:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	f54080e7          	jalr	-172(ra) # 800015fc <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    800016b0:	00048513          	mv	a0,s1
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	f48080e7          	jalr	-184(ra) # 800015fc <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    800016bc:	00000513          	li	a0,0
}
    800016c0:	01813083          	ld	ra,24(sp)
    800016c4:	01013403          	ld	s0,16(sp)
    800016c8:	00813483          	ld	s1,8(sp)
    800016cc:	02010113          	addi	sp,sp,32
    800016d0:	00008067          	ret
    else freeListHead = blockToFree;
    800016d4:	00003797          	auipc	a5,0x3
    800016d8:	e4a7b623          	sd	a0,-436(a5) # 80004520 <_ZN15MemoryAllocator12freeListHeadE>
    800016dc:	fcdff06f          	j	800016a8 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    800016e0:	fff00513          	li	a0,-1
}
    800016e4:	00008067          	ret

00000000800016e8 <start>:
    800016e8:	ff010113          	addi	sp,sp,-16
    800016ec:	00813423          	sd	s0,8(sp)
    800016f0:	01010413          	addi	s0,sp,16
    800016f4:	300027f3          	csrr	a5,mstatus
    800016f8:	ffffe737          	lui	a4,0xffffe
    800016fc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff907f>
    80001700:	00e7f7b3          	and	a5,a5,a4
    80001704:	00001737          	lui	a4,0x1
    80001708:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000170c:	00e7e7b3          	or	a5,a5,a4
    80001710:	30079073          	csrw	mstatus,a5
    80001714:	00000797          	auipc	a5,0x0
    80001718:	16078793          	addi	a5,a5,352 # 80001874 <system_main>
    8000171c:	34179073          	csrw	mepc,a5
    80001720:	00000793          	li	a5,0
    80001724:	18079073          	csrw	satp,a5
    80001728:	000107b7          	lui	a5,0x10
    8000172c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001730:	30279073          	csrw	medeleg,a5
    80001734:	30379073          	csrw	mideleg,a5
    80001738:	104027f3          	csrr	a5,sie
    8000173c:	2227e793          	ori	a5,a5,546
    80001740:	10479073          	csrw	sie,a5
    80001744:	fff00793          	li	a5,-1
    80001748:	00a7d793          	srli	a5,a5,0xa
    8000174c:	3b079073          	csrw	pmpaddr0,a5
    80001750:	00f00793          	li	a5,15
    80001754:	3a079073          	csrw	pmpcfg0,a5
    80001758:	f14027f3          	csrr	a5,mhartid
    8000175c:	0200c737          	lui	a4,0x200c
    80001760:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001764:	0007869b          	sext.w	a3,a5
    80001768:	00269713          	slli	a4,a3,0x2
    8000176c:	000f4637          	lui	a2,0xf4
    80001770:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001774:	00d70733          	add	a4,a4,a3
    80001778:	0037979b          	slliw	a5,a5,0x3
    8000177c:	020046b7          	lui	a3,0x2004
    80001780:	00d787b3          	add	a5,a5,a3
    80001784:	00c585b3          	add	a1,a1,a2
    80001788:	00371693          	slli	a3,a4,0x3
    8000178c:	00003717          	auipc	a4,0x3
    80001790:	da470713          	addi	a4,a4,-604 # 80004530 <timer_scratch>
    80001794:	00b7b023          	sd	a1,0(a5)
    80001798:	00d70733          	add	a4,a4,a3
    8000179c:	00f73c23          	sd	a5,24(a4)
    800017a0:	02c73023          	sd	a2,32(a4)
    800017a4:	34071073          	csrw	mscratch,a4
    800017a8:	00000797          	auipc	a5,0x0
    800017ac:	6e878793          	addi	a5,a5,1768 # 80001e90 <timervec>
    800017b0:	30579073          	csrw	mtvec,a5
    800017b4:	300027f3          	csrr	a5,mstatus
    800017b8:	0087e793          	ori	a5,a5,8
    800017bc:	30079073          	csrw	mstatus,a5
    800017c0:	304027f3          	csrr	a5,mie
    800017c4:	0807e793          	ori	a5,a5,128
    800017c8:	30479073          	csrw	mie,a5
    800017cc:	f14027f3          	csrr	a5,mhartid
    800017d0:	0007879b          	sext.w	a5,a5
    800017d4:	00078213          	mv	tp,a5
    800017d8:	30200073          	mret
    800017dc:	00813403          	ld	s0,8(sp)
    800017e0:	01010113          	addi	sp,sp,16
    800017e4:	00008067          	ret

00000000800017e8 <timerinit>:
    800017e8:	ff010113          	addi	sp,sp,-16
    800017ec:	00813423          	sd	s0,8(sp)
    800017f0:	01010413          	addi	s0,sp,16
    800017f4:	f14027f3          	csrr	a5,mhartid
    800017f8:	0200c737          	lui	a4,0x200c
    800017fc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001800:	0007869b          	sext.w	a3,a5
    80001804:	00269713          	slli	a4,a3,0x2
    80001808:	000f4637          	lui	a2,0xf4
    8000180c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001810:	00d70733          	add	a4,a4,a3
    80001814:	0037979b          	slliw	a5,a5,0x3
    80001818:	020046b7          	lui	a3,0x2004
    8000181c:	00d787b3          	add	a5,a5,a3
    80001820:	00c585b3          	add	a1,a1,a2
    80001824:	00371693          	slli	a3,a4,0x3
    80001828:	00003717          	auipc	a4,0x3
    8000182c:	d0870713          	addi	a4,a4,-760 # 80004530 <timer_scratch>
    80001830:	00b7b023          	sd	a1,0(a5)
    80001834:	00d70733          	add	a4,a4,a3
    80001838:	00f73c23          	sd	a5,24(a4)
    8000183c:	02c73023          	sd	a2,32(a4)
    80001840:	34071073          	csrw	mscratch,a4
    80001844:	00000797          	auipc	a5,0x0
    80001848:	64c78793          	addi	a5,a5,1612 # 80001e90 <timervec>
    8000184c:	30579073          	csrw	mtvec,a5
    80001850:	300027f3          	csrr	a5,mstatus
    80001854:	0087e793          	ori	a5,a5,8
    80001858:	30079073          	csrw	mstatus,a5
    8000185c:	304027f3          	csrr	a5,mie
    80001860:	0807e793          	ori	a5,a5,128
    80001864:	30479073          	csrw	mie,a5
    80001868:	00813403          	ld	s0,8(sp)
    8000186c:	01010113          	addi	sp,sp,16
    80001870:	00008067          	ret

0000000080001874 <system_main>:
    80001874:	fe010113          	addi	sp,sp,-32
    80001878:	00813823          	sd	s0,16(sp)
    8000187c:	00913423          	sd	s1,8(sp)
    80001880:	00113c23          	sd	ra,24(sp)
    80001884:	02010413          	addi	s0,sp,32
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	0c4080e7          	jalr	196(ra) # 8000194c <cpuid>
    80001890:	00003497          	auipc	s1,0x3
    80001894:	c6048493          	addi	s1,s1,-928 # 800044f0 <started>
    80001898:	02050263          	beqz	a0,800018bc <system_main+0x48>
    8000189c:	0004a783          	lw	a5,0(s1)
    800018a0:	0007879b          	sext.w	a5,a5
    800018a4:	fe078ce3          	beqz	a5,8000189c <system_main+0x28>
    800018a8:	0ff0000f          	fence
    800018ac:	00003517          	auipc	a0,0x3
    800018b0:	80c50513          	addi	a0,a0,-2036 # 800040b8 <CONSOLE_STATUS+0xa8>
    800018b4:	00001097          	auipc	ra,0x1
    800018b8:	a78080e7          	jalr	-1416(ra) # 8000232c <panic>
    800018bc:	00001097          	auipc	ra,0x1
    800018c0:	9cc080e7          	jalr	-1588(ra) # 80002288 <consoleinit>
    800018c4:	00001097          	auipc	ra,0x1
    800018c8:	158080e7          	jalr	344(ra) # 80002a1c <printfinit>
    800018cc:	00002517          	auipc	a0,0x2
    800018d0:	78450513          	addi	a0,a0,1924 # 80004050 <CONSOLE_STATUS+0x40>
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	ab4080e7          	jalr	-1356(ra) # 80002388 <__printf>
    800018dc:	00002517          	auipc	a0,0x2
    800018e0:	7ac50513          	addi	a0,a0,1964 # 80004088 <CONSOLE_STATUS+0x78>
    800018e4:	00001097          	auipc	ra,0x1
    800018e8:	aa4080e7          	jalr	-1372(ra) # 80002388 <__printf>
    800018ec:	00002517          	auipc	a0,0x2
    800018f0:	76450513          	addi	a0,a0,1892 # 80004050 <CONSOLE_STATUS+0x40>
    800018f4:	00001097          	auipc	ra,0x1
    800018f8:	a94080e7          	jalr	-1388(ra) # 80002388 <__printf>
    800018fc:	00001097          	auipc	ra,0x1
    80001900:	4ac080e7          	jalr	1196(ra) # 80002da8 <kinit>
    80001904:	00000097          	auipc	ra,0x0
    80001908:	148080e7          	jalr	328(ra) # 80001a4c <trapinit>
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	16c080e7          	jalr	364(ra) # 80001a78 <trapinithart>
    80001914:	00000097          	auipc	ra,0x0
    80001918:	5bc080e7          	jalr	1468(ra) # 80001ed0 <plicinit>
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	5dc080e7          	jalr	1500(ra) # 80001ef8 <plicinithart>
    80001924:	00000097          	auipc	ra,0x0
    80001928:	078080e7          	jalr	120(ra) # 8000199c <userinit>
    8000192c:	0ff0000f          	fence
    80001930:	00100793          	li	a5,1
    80001934:	00002517          	auipc	a0,0x2
    80001938:	76c50513          	addi	a0,a0,1900 # 800040a0 <CONSOLE_STATUS+0x90>
    8000193c:	00f4a023          	sw	a5,0(s1)
    80001940:	00001097          	auipc	ra,0x1
    80001944:	a48080e7          	jalr	-1464(ra) # 80002388 <__printf>
    80001948:	0000006f          	j	80001948 <system_main+0xd4>

000000008000194c <cpuid>:
    8000194c:	ff010113          	addi	sp,sp,-16
    80001950:	00813423          	sd	s0,8(sp)
    80001954:	01010413          	addi	s0,sp,16
    80001958:	00020513          	mv	a0,tp
    8000195c:	00813403          	ld	s0,8(sp)
    80001960:	0005051b          	sext.w	a0,a0
    80001964:	01010113          	addi	sp,sp,16
    80001968:	00008067          	ret

000000008000196c <mycpu>:
    8000196c:	ff010113          	addi	sp,sp,-16
    80001970:	00813423          	sd	s0,8(sp)
    80001974:	01010413          	addi	s0,sp,16
    80001978:	00020793          	mv	a5,tp
    8000197c:	00813403          	ld	s0,8(sp)
    80001980:	0007879b          	sext.w	a5,a5
    80001984:	00779793          	slli	a5,a5,0x7
    80001988:	00004517          	auipc	a0,0x4
    8000198c:	bd850513          	addi	a0,a0,-1064 # 80005560 <cpus>
    80001990:	00f50533          	add	a0,a0,a5
    80001994:	01010113          	addi	sp,sp,16
    80001998:	00008067          	ret

000000008000199c <userinit>:
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00813423          	sd	s0,8(sp)
    800019a4:	01010413          	addi	s0,sp,16
    800019a8:	00813403          	ld	s0,8(sp)
    800019ac:	01010113          	addi	sp,sp,16
    800019b0:	00000317          	auipc	t1,0x0
    800019b4:	8a030067          	jr	-1888(t1) # 80001250 <main>

00000000800019b8 <either_copyout>:
    800019b8:	ff010113          	addi	sp,sp,-16
    800019bc:	00813023          	sd	s0,0(sp)
    800019c0:	00113423          	sd	ra,8(sp)
    800019c4:	01010413          	addi	s0,sp,16
    800019c8:	02051663          	bnez	a0,800019f4 <either_copyout+0x3c>
    800019cc:	00058513          	mv	a0,a1
    800019d0:	00060593          	mv	a1,a2
    800019d4:	0006861b          	sext.w	a2,a3
    800019d8:	00002097          	auipc	ra,0x2
    800019dc:	c5c080e7          	jalr	-932(ra) # 80003634 <__memmove>
    800019e0:	00813083          	ld	ra,8(sp)
    800019e4:	00013403          	ld	s0,0(sp)
    800019e8:	00000513          	li	a0,0
    800019ec:	01010113          	addi	sp,sp,16
    800019f0:	00008067          	ret
    800019f4:	00002517          	auipc	a0,0x2
    800019f8:	6ec50513          	addi	a0,a0,1772 # 800040e0 <CONSOLE_STATUS+0xd0>
    800019fc:	00001097          	auipc	ra,0x1
    80001a00:	930080e7          	jalr	-1744(ra) # 8000232c <panic>

0000000080001a04 <either_copyin>:
    80001a04:	ff010113          	addi	sp,sp,-16
    80001a08:	00813023          	sd	s0,0(sp)
    80001a0c:	00113423          	sd	ra,8(sp)
    80001a10:	01010413          	addi	s0,sp,16
    80001a14:	02059463          	bnez	a1,80001a3c <either_copyin+0x38>
    80001a18:	00060593          	mv	a1,a2
    80001a1c:	0006861b          	sext.w	a2,a3
    80001a20:	00002097          	auipc	ra,0x2
    80001a24:	c14080e7          	jalr	-1004(ra) # 80003634 <__memmove>
    80001a28:	00813083          	ld	ra,8(sp)
    80001a2c:	00013403          	ld	s0,0(sp)
    80001a30:	00000513          	li	a0,0
    80001a34:	01010113          	addi	sp,sp,16
    80001a38:	00008067          	ret
    80001a3c:	00002517          	auipc	a0,0x2
    80001a40:	6cc50513          	addi	a0,a0,1740 # 80004108 <CONSOLE_STATUS+0xf8>
    80001a44:	00001097          	auipc	ra,0x1
    80001a48:	8e8080e7          	jalr	-1816(ra) # 8000232c <panic>

0000000080001a4c <trapinit>:
    80001a4c:	ff010113          	addi	sp,sp,-16
    80001a50:	00813423          	sd	s0,8(sp)
    80001a54:	01010413          	addi	s0,sp,16
    80001a58:	00813403          	ld	s0,8(sp)
    80001a5c:	00002597          	auipc	a1,0x2
    80001a60:	6d458593          	addi	a1,a1,1748 # 80004130 <CONSOLE_STATUS+0x120>
    80001a64:	00004517          	auipc	a0,0x4
    80001a68:	b7c50513          	addi	a0,a0,-1156 # 800055e0 <tickslock>
    80001a6c:	01010113          	addi	sp,sp,16
    80001a70:	00001317          	auipc	t1,0x1
    80001a74:	5c830067          	jr	1480(t1) # 80003038 <initlock>

0000000080001a78 <trapinithart>:
    80001a78:	ff010113          	addi	sp,sp,-16
    80001a7c:	00813423          	sd	s0,8(sp)
    80001a80:	01010413          	addi	s0,sp,16
    80001a84:	00000797          	auipc	a5,0x0
    80001a88:	2fc78793          	addi	a5,a5,764 # 80001d80 <kernelvec>
    80001a8c:	10579073          	csrw	stvec,a5
    80001a90:	00813403          	ld	s0,8(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <usertrap>:
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00813423          	sd	s0,8(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    80001aa8:	00813403          	ld	s0,8(sp)
    80001aac:	01010113          	addi	sp,sp,16
    80001ab0:	00008067          	ret

0000000080001ab4 <usertrapret>:
    80001ab4:	ff010113          	addi	sp,sp,-16
    80001ab8:	00813423          	sd	s0,8(sp)
    80001abc:	01010413          	addi	s0,sp,16
    80001ac0:	00813403          	ld	s0,8(sp)
    80001ac4:	01010113          	addi	sp,sp,16
    80001ac8:	00008067          	ret

0000000080001acc <kerneltrap>:
    80001acc:	fe010113          	addi	sp,sp,-32
    80001ad0:	00813823          	sd	s0,16(sp)
    80001ad4:	00113c23          	sd	ra,24(sp)
    80001ad8:	00913423          	sd	s1,8(sp)
    80001adc:	02010413          	addi	s0,sp,32
    80001ae0:	142025f3          	csrr	a1,scause
    80001ae4:	100027f3          	csrr	a5,sstatus
    80001ae8:	0027f793          	andi	a5,a5,2
    80001aec:	10079c63          	bnez	a5,80001c04 <kerneltrap+0x138>
    80001af0:	142027f3          	csrr	a5,scause
    80001af4:	0207ce63          	bltz	a5,80001b30 <kerneltrap+0x64>
    80001af8:	00002517          	auipc	a0,0x2
    80001afc:	68050513          	addi	a0,a0,1664 # 80004178 <CONSOLE_STATUS+0x168>
    80001b00:	00001097          	auipc	ra,0x1
    80001b04:	888080e7          	jalr	-1912(ra) # 80002388 <__printf>
    80001b08:	141025f3          	csrr	a1,sepc
    80001b0c:	14302673          	csrr	a2,stval
    80001b10:	00002517          	auipc	a0,0x2
    80001b14:	67850513          	addi	a0,a0,1656 # 80004188 <CONSOLE_STATUS+0x178>
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	870080e7          	jalr	-1936(ra) # 80002388 <__printf>
    80001b20:	00002517          	auipc	a0,0x2
    80001b24:	68050513          	addi	a0,a0,1664 # 800041a0 <CONSOLE_STATUS+0x190>
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	804080e7          	jalr	-2044(ra) # 8000232c <panic>
    80001b30:	0ff7f713          	andi	a4,a5,255
    80001b34:	00900693          	li	a3,9
    80001b38:	04d70063          	beq	a4,a3,80001b78 <kerneltrap+0xac>
    80001b3c:	fff00713          	li	a4,-1
    80001b40:	03f71713          	slli	a4,a4,0x3f
    80001b44:	00170713          	addi	a4,a4,1
    80001b48:	fae798e3          	bne	a5,a4,80001af8 <kerneltrap+0x2c>
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	e00080e7          	jalr	-512(ra) # 8000194c <cpuid>
    80001b54:	06050663          	beqz	a0,80001bc0 <kerneltrap+0xf4>
    80001b58:	144027f3          	csrr	a5,sip
    80001b5c:	ffd7f793          	andi	a5,a5,-3
    80001b60:	14479073          	csrw	sip,a5
    80001b64:	01813083          	ld	ra,24(sp)
    80001b68:	01013403          	ld	s0,16(sp)
    80001b6c:	00813483          	ld	s1,8(sp)
    80001b70:	02010113          	addi	sp,sp,32
    80001b74:	00008067          	ret
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	3cc080e7          	jalr	972(ra) # 80001f44 <plic_claim>
    80001b80:	00a00793          	li	a5,10
    80001b84:	00050493          	mv	s1,a0
    80001b88:	06f50863          	beq	a0,a5,80001bf8 <kerneltrap+0x12c>
    80001b8c:	fc050ce3          	beqz	a0,80001b64 <kerneltrap+0x98>
    80001b90:	00050593          	mv	a1,a0
    80001b94:	00002517          	auipc	a0,0x2
    80001b98:	5c450513          	addi	a0,a0,1476 # 80004158 <CONSOLE_STATUS+0x148>
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	7ec080e7          	jalr	2028(ra) # 80002388 <__printf>
    80001ba4:	01013403          	ld	s0,16(sp)
    80001ba8:	01813083          	ld	ra,24(sp)
    80001bac:	00048513          	mv	a0,s1
    80001bb0:	00813483          	ld	s1,8(sp)
    80001bb4:	02010113          	addi	sp,sp,32
    80001bb8:	00000317          	auipc	t1,0x0
    80001bbc:	3c430067          	jr	964(t1) # 80001f7c <plic_complete>
    80001bc0:	00004517          	auipc	a0,0x4
    80001bc4:	a2050513          	addi	a0,a0,-1504 # 800055e0 <tickslock>
    80001bc8:	00001097          	auipc	ra,0x1
    80001bcc:	494080e7          	jalr	1172(ra) # 8000305c <acquire>
    80001bd0:	00003717          	auipc	a4,0x3
    80001bd4:	92470713          	addi	a4,a4,-1756 # 800044f4 <ticks>
    80001bd8:	00072783          	lw	a5,0(a4)
    80001bdc:	00004517          	auipc	a0,0x4
    80001be0:	a0450513          	addi	a0,a0,-1532 # 800055e0 <tickslock>
    80001be4:	0017879b          	addiw	a5,a5,1
    80001be8:	00f72023          	sw	a5,0(a4)
    80001bec:	00001097          	auipc	ra,0x1
    80001bf0:	53c080e7          	jalr	1340(ra) # 80003128 <release>
    80001bf4:	f65ff06f          	j	80001b58 <kerneltrap+0x8c>
    80001bf8:	00001097          	auipc	ra,0x1
    80001bfc:	098080e7          	jalr	152(ra) # 80002c90 <uartintr>
    80001c00:	fa5ff06f          	j	80001ba4 <kerneltrap+0xd8>
    80001c04:	00002517          	auipc	a0,0x2
    80001c08:	53450513          	addi	a0,a0,1332 # 80004138 <CONSOLE_STATUS+0x128>
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	720080e7          	jalr	1824(ra) # 8000232c <panic>

0000000080001c14 <clockintr>:
    80001c14:	fe010113          	addi	sp,sp,-32
    80001c18:	00813823          	sd	s0,16(sp)
    80001c1c:	00913423          	sd	s1,8(sp)
    80001c20:	00113c23          	sd	ra,24(sp)
    80001c24:	02010413          	addi	s0,sp,32
    80001c28:	00004497          	auipc	s1,0x4
    80001c2c:	9b848493          	addi	s1,s1,-1608 # 800055e0 <tickslock>
    80001c30:	00048513          	mv	a0,s1
    80001c34:	00001097          	auipc	ra,0x1
    80001c38:	428080e7          	jalr	1064(ra) # 8000305c <acquire>
    80001c3c:	00003717          	auipc	a4,0x3
    80001c40:	8b870713          	addi	a4,a4,-1864 # 800044f4 <ticks>
    80001c44:	00072783          	lw	a5,0(a4)
    80001c48:	01013403          	ld	s0,16(sp)
    80001c4c:	01813083          	ld	ra,24(sp)
    80001c50:	00048513          	mv	a0,s1
    80001c54:	0017879b          	addiw	a5,a5,1
    80001c58:	00813483          	ld	s1,8(sp)
    80001c5c:	00f72023          	sw	a5,0(a4)
    80001c60:	02010113          	addi	sp,sp,32
    80001c64:	00001317          	auipc	t1,0x1
    80001c68:	4c430067          	jr	1220(t1) # 80003128 <release>

0000000080001c6c <devintr>:
    80001c6c:	142027f3          	csrr	a5,scause
    80001c70:	00000513          	li	a0,0
    80001c74:	0007c463          	bltz	a5,80001c7c <devintr+0x10>
    80001c78:	00008067          	ret
    80001c7c:	fe010113          	addi	sp,sp,-32
    80001c80:	00813823          	sd	s0,16(sp)
    80001c84:	00113c23          	sd	ra,24(sp)
    80001c88:	00913423          	sd	s1,8(sp)
    80001c8c:	02010413          	addi	s0,sp,32
    80001c90:	0ff7f713          	andi	a4,a5,255
    80001c94:	00900693          	li	a3,9
    80001c98:	04d70c63          	beq	a4,a3,80001cf0 <devintr+0x84>
    80001c9c:	fff00713          	li	a4,-1
    80001ca0:	03f71713          	slli	a4,a4,0x3f
    80001ca4:	00170713          	addi	a4,a4,1
    80001ca8:	00e78c63          	beq	a5,a4,80001cc0 <devintr+0x54>
    80001cac:	01813083          	ld	ra,24(sp)
    80001cb0:	01013403          	ld	s0,16(sp)
    80001cb4:	00813483          	ld	s1,8(sp)
    80001cb8:	02010113          	addi	sp,sp,32
    80001cbc:	00008067          	ret
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	c8c080e7          	jalr	-884(ra) # 8000194c <cpuid>
    80001cc8:	06050663          	beqz	a0,80001d34 <devintr+0xc8>
    80001ccc:	144027f3          	csrr	a5,sip
    80001cd0:	ffd7f793          	andi	a5,a5,-3
    80001cd4:	14479073          	csrw	sip,a5
    80001cd8:	01813083          	ld	ra,24(sp)
    80001cdc:	01013403          	ld	s0,16(sp)
    80001ce0:	00813483          	ld	s1,8(sp)
    80001ce4:	00200513          	li	a0,2
    80001ce8:	02010113          	addi	sp,sp,32
    80001cec:	00008067          	ret
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	254080e7          	jalr	596(ra) # 80001f44 <plic_claim>
    80001cf8:	00a00793          	li	a5,10
    80001cfc:	00050493          	mv	s1,a0
    80001d00:	06f50663          	beq	a0,a5,80001d6c <devintr+0x100>
    80001d04:	00100513          	li	a0,1
    80001d08:	fa0482e3          	beqz	s1,80001cac <devintr+0x40>
    80001d0c:	00048593          	mv	a1,s1
    80001d10:	00002517          	auipc	a0,0x2
    80001d14:	44850513          	addi	a0,a0,1096 # 80004158 <CONSOLE_STATUS+0x148>
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	670080e7          	jalr	1648(ra) # 80002388 <__printf>
    80001d20:	00048513          	mv	a0,s1
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	258080e7          	jalr	600(ra) # 80001f7c <plic_complete>
    80001d2c:	00100513          	li	a0,1
    80001d30:	f7dff06f          	j	80001cac <devintr+0x40>
    80001d34:	00004517          	auipc	a0,0x4
    80001d38:	8ac50513          	addi	a0,a0,-1876 # 800055e0 <tickslock>
    80001d3c:	00001097          	auipc	ra,0x1
    80001d40:	320080e7          	jalr	800(ra) # 8000305c <acquire>
    80001d44:	00002717          	auipc	a4,0x2
    80001d48:	7b070713          	addi	a4,a4,1968 # 800044f4 <ticks>
    80001d4c:	00072783          	lw	a5,0(a4)
    80001d50:	00004517          	auipc	a0,0x4
    80001d54:	89050513          	addi	a0,a0,-1904 # 800055e0 <tickslock>
    80001d58:	0017879b          	addiw	a5,a5,1
    80001d5c:	00f72023          	sw	a5,0(a4)
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	3c8080e7          	jalr	968(ra) # 80003128 <release>
    80001d68:	f65ff06f          	j	80001ccc <devintr+0x60>
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	f24080e7          	jalr	-220(ra) # 80002c90 <uartintr>
    80001d74:	fadff06f          	j	80001d20 <devintr+0xb4>
	...

0000000080001d80 <kernelvec>:
    80001d80:	f0010113          	addi	sp,sp,-256
    80001d84:	00113023          	sd	ra,0(sp)
    80001d88:	00213423          	sd	sp,8(sp)
    80001d8c:	00313823          	sd	gp,16(sp)
    80001d90:	00413c23          	sd	tp,24(sp)
    80001d94:	02513023          	sd	t0,32(sp)
    80001d98:	02613423          	sd	t1,40(sp)
    80001d9c:	02713823          	sd	t2,48(sp)
    80001da0:	02813c23          	sd	s0,56(sp)
    80001da4:	04913023          	sd	s1,64(sp)
    80001da8:	04a13423          	sd	a0,72(sp)
    80001dac:	04b13823          	sd	a1,80(sp)
    80001db0:	04c13c23          	sd	a2,88(sp)
    80001db4:	06d13023          	sd	a3,96(sp)
    80001db8:	06e13423          	sd	a4,104(sp)
    80001dbc:	06f13823          	sd	a5,112(sp)
    80001dc0:	07013c23          	sd	a6,120(sp)
    80001dc4:	09113023          	sd	a7,128(sp)
    80001dc8:	09213423          	sd	s2,136(sp)
    80001dcc:	09313823          	sd	s3,144(sp)
    80001dd0:	09413c23          	sd	s4,152(sp)
    80001dd4:	0b513023          	sd	s5,160(sp)
    80001dd8:	0b613423          	sd	s6,168(sp)
    80001ddc:	0b713823          	sd	s7,176(sp)
    80001de0:	0b813c23          	sd	s8,184(sp)
    80001de4:	0d913023          	sd	s9,192(sp)
    80001de8:	0da13423          	sd	s10,200(sp)
    80001dec:	0db13823          	sd	s11,208(sp)
    80001df0:	0dc13c23          	sd	t3,216(sp)
    80001df4:	0fd13023          	sd	t4,224(sp)
    80001df8:	0fe13423          	sd	t5,232(sp)
    80001dfc:	0ff13823          	sd	t6,240(sp)
    80001e00:	ccdff0ef          	jal	ra,80001acc <kerneltrap>
    80001e04:	00013083          	ld	ra,0(sp)
    80001e08:	00813103          	ld	sp,8(sp)
    80001e0c:	01013183          	ld	gp,16(sp)
    80001e10:	02013283          	ld	t0,32(sp)
    80001e14:	02813303          	ld	t1,40(sp)
    80001e18:	03013383          	ld	t2,48(sp)
    80001e1c:	03813403          	ld	s0,56(sp)
    80001e20:	04013483          	ld	s1,64(sp)
    80001e24:	04813503          	ld	a0,72(sp)
    80001e28:	05013583          	ld	a1,80(sp)
    80001e2c:	05813603          	ld	a2,88(sp)
    80001e30:	06013683          	ld	a3,96(sp)
    80001e34:	06813703          	ld	a4,104(sp)
    80001e38:	07013783          	ld	a5,112(sp)
    80001e3c:	07813803          	ld	a6,120(sp)
    80001e40:	08013883          	ld	a7,128(sp)
    80001e44:	08813903          	ld	s2,136(sp)
    80001e48:	09013983          	ld	s3,144(sp)
    80001e4c:	09813a03          	ld	s4,152(sp)
    80001e50:	0a013a83          	ld	s5,160(sp)
    80001e54:	0a813b03          	ld	s6,168(sp)
    80001e58:	0b013b83          	ld	s7,176(sp)
    80001e5c:	0b813c03          	ld	s8,184(sp)
    80001e60:	0c013c83          	ld	s9,192(sp)
    80001e64:	0c813d03          	ld	s10,200(sp)
    80001e68:	0d013d83          	ld	s11,208(sp)
    80001e6c:	0d813e03          	ld	t3,216(sp)
    80001e70:	0e013e83          	ld	t4,224(sp)
    80001e74:	0e813f03          	ld	t5,232(sp)
    80001e78:	0f013f83          	ld	t6,240(sp)
    80001e7c:	10010113          	addi	sp,sp,256
    80001e80:	10200073          	sret
    80001e84:	00000013          	nop
    80001e88:	00000013          	nop
    80001e8c:	00000013          	nop

0000000080001e90 <timervec>:
    80001e90:	34051573          	csrrw	a0,mscratch,a0
    80001e94:	00b53023          	sd	a1,0(a0)
    80001e98:	00c53423          	sd	a2,8(a0)
    80001e9c:	00d53823          	sd	a3,16(a0)
    80001ea0:	01853583          	ld	a1,24(a0)
    80001ea4:	02053603          	ld	a2,32(a0)
    80001ea8:	0005b683          	ld	a3,0(a1)
    80001eac:	00c686b3          	add	a3,a3,a2
    80001eb0:	00d5b023          	sd	a3,0(a1)
    80001eb4:	00200593          	li	a1,2
    80001eb8:	14459073          	csrw	sip,a1
    80001ebc:	01053683          	ld	a3,16(a0)
    80001ec0:	00853603          	ld	a2,8(a0)
    80001ec4:	00053583          	ld	a1,0(a0)
    80001ec8:	34051573          	csrrw	a0,mscratch,a0
    80001ecc:	30200073          	mret

0000000080001ed0 <plicinit>:
    80001ed0:	ff010113          	addi	sp,sp,-16
    80001ed4:	00813423          	sd	s0,8(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    80001edc:	00813403          	ld	s0,8(sp)
    80001ee0:	0c0007b7          	lui	a5,0xc000
    80001ee4:	00100713          	li	a4,1
    80001ee8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001eec:	00e7a223          	sw	a4,4(a5)
    80001ef0:	01010113          	addi	sp,sp,16
    80001ef4:	00008067          	ret

0000000080001ef8 <plicinithart>:
    80001ef8:	ff010113          	addi	sp,sp,-16
    80001efc:	00813023          	sd	s0,0(sp)
    80001f00:	00113423          	sd	ra,8(sp)
    80001f04:	01010413          	addi	s0,sp,16
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	a44080e7          	jalr	-1468(ra) # 8000194c <cpuid>
    80001f10:	0085171b          	slliw	a4,a0,0x8
    80001f14:	0c0027b7          	lui	a5,0xc002
    80001f18:	00e787b3          	add	a5,a5,a4
    80001f1c:	40200713          	li	a4,1026
    80001f20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001f24:	00813083          	ld	ra,8(sp)
    80001f28:	00013403          	ld	s0,0(sp)
    80001f2c:	00d5151b          	slliw	a0,a0,0xd
    80001f30:	0c2017b7          	lui	a5,0xc201
    80001f34:	00a78533          	add	a0,a5,a0
    80001f38:	00052023          	sw	zero,0(a0)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret

0000000080001f44 <plic_claim>:
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00813023          	sd	s0,0(sp)
    80001f4c:	00113423          	sd	ra,8(sp)
    80001f50:	01010413          	addi	s0,sp,16
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	9f8080e7          	jalr	-1544(ra) # 8000194c <cpuid>
    80001f5c:	00813083          	ld	ra,8(sp)
    80001f60:	00013403          	ld	s0,0(sp)
    80001f64:	00d5151b          	slliw	a0,a0,0xd
    80001f68:	0c2017b7          	lui	a5,0xc201
    80001f6c:	00a78533          	add	a0,a5,a0
    80001f70:	00452503          	lw	a0,4(a0)
    80001f74:	01010113          	addi	sp,sp,16
    80001f78:	00008067          	ret

0000000080001f7c <plic_complete>:
    80001f7c:	fe010113          	addi	sp,sp,-32
    80001f80:	00813823          	sd	s0,16(sp)
    80001f84:	00913423          	sd	s1,8(sp)
    80001f88:	00113c23          	sd	ra,24(sp)
    80001f8c:	02010413          	addi	s0,sp,32
    80001f90:	00050493          	mv	s1,a0
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	9b8080e7          	jalr	-1608(ra) # 8000194c <cpuid>
    80001f9c:	01813083          	ld	ra,24(sp)
    80001fa0:	01013403          	ld	s0,16(sp)
    80001fa4:	00d5179b          	slliw	a5,a0,0xd
    80001fa8:	0c201737          	lui	a4,0xc201
    80001fac:	00f707b3          	add	a5,a4,a5
    80001fb0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001fb4:	00813483          	ld	s1,8(sp)
    80001fb8:	02010113          	addi	sp,sp,32
    80001fbc:	00008067          	ret

0000000080001fc0 <consolewrite>:
    80001fc0:	fb010113          	addi	sp,sp,-80
    80001fc4:	04813023          	sd	s0,64(sp)
    80001fc8:	04113423          	sd	ra,72(sp)
    80001fcc:	02913c23          	sd	s1,56(sp)
    80001fd0:	03213823          	sd	s2,48(sp)
    80001fd4:	03313423          	sd	s3,40(sp)
    80001fd8:	03413023          	sd	s4,32(sp)
    80001fdc:	01513c23          	sd	s5,24(sp)
    80001fe0:	05010413          	addi	s0,sp,80
    80001fe4:	06c05c63          	blez	a2,8000205c <consolewrite+0x9c>
    80001fe8:	00060993          	mv	s3,a2
    80001fec:	00050a13          	mv	s4,a0
    80001ff0:	00058493          	mv	s1,a1
    80001ff4:	00000913          	li	s2,0
    80001ff8:	fff00a93          	li	s5,-1
    80001ffc:	01c0006f          	j	80002018 <consolewrite+0x58>
    80002000:	fbf44503          	lbu	a0,-65(s0)
    80002004:	0019091b          	addiw	s2,s2,1
    80002008:	00148493          	addi	s1,s1,1
    8000200c:	00001097          	auipc	ra,0x1
    80002010:	a9c080e7          	jalr	-1380(ra) # 80002aa8 <uartputc>
    80002014:	03298063          	beq	s3,s2,80002034 <consolewrite+0x74>
    80002018:	00048613          	mv	a2,s1
    8000201c:	00100693          	li	a3,1
    80002020:	000a0593          	mv	a1,s4
    80002024:	fbf40513          	addi	a0,s0,-65
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	9dc080e7          	jalr	-1572(ra) # 80001a04 <either_copyin>
    80002030:	fd5518e3          	bne	a0,s5,80002000 <consolewrite+0x40>
    80002034:	04813083          	ld	ra,72(sp)
    80002038:	04013403          	ld	s0,64(sp)
    8000203c:	03813483          	ld	s1,56(sp)
    80002040:	02813983          	ld	s3,40(sp)
    80002044:	02013a03          	ld	s4,32(sp)
    80002048:	01813a83          	ld	s5,24(sp)
    8000204c:	00090513          	mv	a0,s2
    80002050:	03013903          	ld	s2,48(sp)
    80002054:	05010113          	addi	sp,sp,80
    80002058:	00008067          	ret
    8000205c:	00000913          	li	s2,0
    80002060:	fd5ff06f          	j	80002034 <consolewrite+0x74>

0000000080002064 <consoleread>:
    80002064:	f9010113          	addi	sp,sp,-112
    80002068:	06813023          	sd	s0,96(sp)
    8000206c:	04913c23          	sd	s1,88(sp)
    80002070:	05213823          	sd	s2,80(sp)
    80002074:	05313423          	sd	s3,72(sp)
    80002078:	05413023          	sd	s4,64(sp)
    8000207c:	03513c23          	sd	s5,56(sp)
    80002080:	03613823          	sd	s6,48(sp)
    80002084:	03713423          	sd	s7,40(sp)
    80002088:	03813023          	sd	s8,32(sp)
    8000208c:	06113423          	sd	ra,104(sp)
    80002090:	01913c23          	sd	s9,24(sp)
    80002094:	07010413          	addi	s0,sp,112
    80002098:	00060b93          	mv	s7,a2
    8000209c:	00050913          	mv	s2,a0
    800020a0:	00058c13          	mv	s8,a1
    800020a4:	00060b1b          	sext.w	s6,a2
    800020a8:	00003497          	auipc	s1,0x3
    800020ac:	55048493          	addi	s1,s1,1360 # 800055f8 <cons>
    800020b0:	00400993          	li	s3,4
    800020b4:	fff00a13          	li	s4,-1
    800020b8:	00a00a93          	li	s5,10
    800020bc:	05705e63          	blez	s7,80002118 <consoleread+0xb4>
    800020c0:	09c4a703          	lw	a4,156(s1)
    800020c4:	0984a783          	lw	a5,152(s1)
    800020c8:	0007071b          	sext.w	a4,a4
    800020cc:	08e78463          	beq	a5,a4,80002154 <consoleread+0xf0>
    800020d0:	07f7f713          	andi	a4,a5,127
    800020d4:	00e48733          	add	a4,s1,a4
    800020d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800020dc:	0017869b          	addiw	a3,a5,1
    800020e0:	08d4ac23          	sw	a3,152(s1)
    800020e4:	00070c9b          	sext.w	s9,a4
    800020e8:	0b370663          	beq	a4,s3,80002194 <consoleread+0x130>
    800020ec:	00100693          	li	a3,1
    800020f0:	f9f40613          	addi	a2,s0,-97
    800020f4:	000c0593          	mv	a1,s8
    800020f8:	00090513          	mv	a0,s2
    800020fc:	f8e40fa3          	sb	a4,-97(s0)
    80002100:	00000097          	auipc	ra,0x0
    80002104:	8b8080e7          	jalr	-1864(ra) # 800019b8 <either_copyout>
    80002108:	01450863          	beq	a0,s4,80002118 <consoleread+0xb4>
    8000210c:	001c0c13          	addi	s8,s8,1
    80002110:	fffb8b9b          	addiw	s7,s7,-1
    80002114:	fb5c94e3          	bne	s9,s5,800020bc <consoleread+0x58>
    80002118:	000b851b          	sext.w	a0,s7
    8000211c:	06813083          	ld	ra,104(sp)
    80002120:	06013403          	ld	s0,96(sp)
    80002124:	05813483          	ld	s1,88(sp)
    80002128:	05013903          	ld	s2,80(sp)
    8000212c:	04813983          	ld	s3,72(sp)
    80002130:	04013a03          	ld	s4,64(sp)
    80002134:	03813a83          	ld	s5,56(sp)
    80002138:	02813b83          	ld	s7,40(sp)
    8000213c:	02013c03          	ld	s8,32(sp)
    80002140:	01813c83          	ld	s9,24(sp)
    80002144:	40ab053b          	subw	a0,s6,a0
    80002148:	03013b03          	ld	s6,48(sp)
    8000214c:	07010113          	addi	sp,sp,112
    80002150:	00008067          	ret
    80002154:	00001097          	auipc	ra,0x1
    80002158:	1d8080e7          	jalr	472(ra) # 8000332c <push_on>
    8000215c:	0984a703          	lw	a4,152(s1)
    80002160:	09c4a783          	lw	a5,156(s1)
    80002164:	0007879b          	sext.w	a5,a5
    80002168:	fef70ce3          	beq	a4,a5,80002160 <consoleread+0xfc>
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	234080e7          	jalr	564(ra) # 800033a0 <pop_on>
    80002174:	0984a783          	lw	a5,152(s1)
    80002178:	07f7f713          	andi	a4,a5,127
    8000217c:	00e48733          	add	a4,s1,a4
    80002180:	01874703          	lbu	a4,24(a4)
    80002184:	0017869b          	addiw	a3,a5,1
    80002188:	08d4ac23          	sw	a3,152(s1)
    8000218c:	00070c9b          	sext.w	s9,a4
    80002190:	f5371ee3          	bne	a4,s3,800020ec <consoleread+0x88>
    80002194:	000b851b          	sext.w	a0,s7
    80002198:	f96bf2e3          	bgeu	s7,s6,8000211c <consoleread+0xb8>
    8000219c:	08f4ac23          	sw	a5,152(s1)
    800021a0:	f7dff06f          	j	8000211c <consoleread+0xb8>

00000000800021a4 <consputc>:
    800021a4:	10000793          	li	a5,256
    800021a8:	00f50663          	beq	a0,a5,800021b4 <consputc+0x10>
    800021ac:	00001317          	auipc	t1,0x1
    800021b0:	9f430067          	jr	-1548(t1) # 80002ba0 <uartputc_sync>
    800021b4:	ff010113          	addi	sp,sp,-16
    800021b8:	00113423          	sd	ra,8(sp)
    800021bc:	00813023          	sd	s0,0(sp)
    800021c0:	01010413          	addi	s0,sp,16
    800021c4:	00800513          	li	a0,8
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	9d8080e7          	jalr	-1576(ra) # 80002ba0 <uartputc_sync>
    800021d0:	02000513          	li	a0,32
    800021d4:	00001097          	auipc	ra,0x1
    800021d8:	9cc080e7          	jalr	-1588(ra) # 80002ba0 <uartputc_sync>
    800021dc:	00013403          	ld	s0,0(sp)
    800021e0:	00813083          	ld	ra,8(sp)
    800021e4:	00800513          	li	a0,8
    800021e8:	01010113          	addi	sp,sp,16
    800021ec:	00001317          	auipc	t1,0x1
    800021f0:	9b430067          	jr	-1612(t1) # 80002ba0 <uartputc_sync>

00000000800021f4 <consoleintr>:
    800021f4:	fe010113          	addi	sp,sp,-32
    800021f8:	00813823          	sd	s0,16(sp)
    800021fc:	00913423          	sd	s1,8(sp)
    80002200:	01213023          	sd	s2,0(sp)
    80002204:	00113c23          	sd	ra,24(sp)
    80002208:	02010413          	addi	s0,sp,32
    8000220c:	00003917          	auipc	s2,0x3
    80002210:	3ec90913          	addi	s2,s2,1004 # 800055f8 <cons>
    80002214:	00050493          	mv	s1,a0
    80002218:	00090513          	mv	a0,s2
    8000221c:	00001097          	auipc	ra,0x1
    80002220:	e40080e7          	jalr	-448(ra) # 8000305c <acquire>
    80002224:	02048c63          	beqz	s1,8000225c <consoleintr+0x68>
    80002228:	0a092783          	lw	a5,160(s2)
    8000222c:	09892703          	lw	a4,152(s2)
    80002230:	07f00693          	li	a3,127
    80002234:	40e7873b          	subw	a4,a5,a4
    80002238:	02e6e263          	bltu	a3,a4,8000225c <consoleintr+0x68>
    8000223c:	00d00713          	li	a4,13
    80002240:	04e48063          	beq	s1,a4,80002280 <consoleintr+0x8c>
    80002244:	07f7f713          	andi	a4,a5,127
    80002248:	00e90733          	add	a4,s2,a4
    8000224c:	0017879b          	addiw	a5,a5,1
    80002250:	0af92023          	sw	a5,160(s2)
    80002254:	00970c23          	sb	s1,24(a4)
    80002258:	08f92e23          	sw	a5,156(s2)
    8000225c:	01013403          	ld	s0,16(sp)
    80002260:	01813083          	ld	ra,24(sp)
    80002264:	00813483          	ld	s1,8(sp)
    80002268:	00013903          	ld	s2,0(sp)
    8000226c:	00003517          	auipc	a0,0x3
    80002270:	38c50513          	addi	a0,a0,908 # 800055f8 <cons>
    80002274:	02010113          	addi	sp,sp,32
    80002278:	00001317          	auipc	t1,0x1
    8000227c:	eb030067          	jr	-336(t1) # 80003128 <release>
    80002280:	00a00493          	li	s1,10
    80002284:	fc1ff06f          	j	80002244 <consoleintr+0x50>

0000000080002288 <consoleinit>:
    80002288:	fe010113          	addi	sp,sp,-32
    8000228c:	00113c23          	sd	ra,24(sp)
    80002290:	00813823          	sd	s0,16(sp)
    80002294:	00913423          	sd	s1,8(sp)
    80002298:	02010413          	addi	s0,sp,32
    8000229c:	00003497          	auipc	s1,0x3
    800022a0:	35c48493          	addi	s1,s1,860 # 800055f8 <cons>
    800022a4:	00048513          	mv	a0,s1
    800022a8:	00002597          	auipc	a1,0x2
    800022ac:	f0858593          	addi	a1,a1,-248 # 800041b0 <CONSOLE_STATUS+0x1a0>
    800022b0:	00001097          	auipc	ra,0x1
    800022b4:	d88080e7          	jalr	-632(ra) # 80003038 <initlock>
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	7ac080e7          	jalr	1964(ra) # 80002a64 <uartinit>
    800022c0:	01813083          	ld	ra,24(sp)
    800022c4:	01013403          	ld	s0,16(sp)
    800022c8:	00000797          	auipc	a5,0x0
    800022cc:	d9c78793          	addi	a5,a5,-612 # 80002064 <consoleread>
    800022d0:	0af4bc23          	sd	a5,184(s1)
    800022d4:	00000797          	auipc	a5,0x0
    800022d8:	cec78793          	addi	a5,a5,-788 # 80001fc0 <consolewrite>
    800022dc:	0cf4b023          	sd	a5,192(s1)
    800022e0:	00813483          	ld	s1,8(sp)
    800022e4:	02010113          	addi	sp,sp,32
    800022e8:	00008067          	ret

00000000800022ec <console_read>:
    800022ec:	ff010113          	addi	sp,sp,-16
    800022f0:	00813423          	sd	s0,8(sp)
    800022f4:	01010413          	addi	s0,sp,16
    800022f8:	00813403          	ld	s0,8(sp)
    800022fc:	00003317          	auipc	t1,0x3
    80002300:	3b433303          	ld	t1,948(t1) # 800056b0 <devsw+0x10>
    80002304:	01010113          	addi	sp,sp,16
    80002308:	00030067          	jr	t1

000000008000230c <console_write>:
    8000230c:	ff010113          	addi	sp,sp,-16
    80002310:	00813423          	sd	s0,8(sp)
    80002314:	01010413          	addi	s0,sp,16
    80002318:	00813403          	ld	s0,8(sp)
    8000231c:	00003317          	auipc	t1,0x3
    80002320:	39c33303          	ld	t1,924(t1) # 800056b8 <devsw+0x18>
    80002324:	01010113          	addi	sp,sp,16
    80002328:	00030067          	jr	t1

000000008000232c <panic>:
    8000232c:	fe010113          	addi	sp,sp,-32
    80002330:	00113c23          	sd	ra,24(sp)
    80002334:	00813823          	sd	s0,16(sp)
    80002338:	00913423          	sd	s1,8(sp)
    8000233c:	02010413          	addi	s0,sp,32
    80002340:	00050493          	mv	s1,a0
    80002344:	00002517          	auipc	a0,0x2
    80002348:	e7450513          	addi	a0,a0,-396 # 800041b8 <CONSOLE_STATUS+0x1a8>
    8000234c:	00003797          	auipc	a5,0x3
    80002350:	4007a623          	sw	zero,1036(a5) # 80005758 <pr+0x18>
    80002354:	00000097          	auipc	ra,0x0
    80002358:	034080e7          	jalr	52(ra) # 80002388 <__printf>
    8000235c:	00048513          	mv	a0,s1
    80002360:	00000097          	auipc	ra,0x0
    80002364:	028080e7          	jalr	40(ra) # 80002388 <__printf>
    80002368:	00002517          	auipc	a0,0x2
    8000236c:	ce850513          	addi	a0,a0,-792 # 80004050 <CONSOLE_STATUS+0x40>
    80002370:	00000097          	auipc	ra,0x0
    80002374:	018080e7          	jalr	24(ra) # 80002388 <__printf>
    80002378:	00100793          	li	a5,1
    8000237c:	00002717          	auipc	a4,0x2
    80002380:	16f72e23          	sw	a5,380(a4) # 800044f8 <panicked>
    80002384:	0000006f          	j	80002384 <panic+0x58>

0000000080002388 <__printf>:
    80002388:	f3010113          	addi	sp,sp,-208
    8000238c:	08813023          	sd	s0,128(sp)
    80002390:	07313423          	sd	s3,104(sp)
    80002394:	09010413          	addi	s0,sp,144
    80002398:	05813023          	sd	s8,64(sp)
    8000239c:	08113423          	sd	ra,136(sp)
    800023a0:	06913c23          	sd	s1,120(sp)
    800023a4:	07213823          	sd	s2,112(sp)
    800023a8:	07413023          	sd	s4,96(sp)
    800023ac:	05513c23          	sd	s5,88(sp)
    800023b0:	05613823          	sd	s6,80(sp)
    800023b4:	05713423          	sd	s7,72(sp)
    800023b8:	03913c23          	sd	s9,56(sp)
    800023bc:	03a13823          	sd	s10,48(sp)
    800023c0:	03b13423          	sd	s11,40(sp)
    800023c4:	00003317          	auipc	t1,0x3
    800023c8:	37c30313          	addi	t1,t1,892 # 80005740 <pr>
    800023cc:	01832c03          	lw	s8,24(t1)
    800023d0:	00b43423          	sd	a1,8(s0)
    800023d4:	00c43823          	sd	a2,16(s0)
    800023d8:	00d43c23          	sd	a3,24(s0)
    800023dc:	02e43023          	sd	a4,32(s0)
    800023e0:	02f43423          	sd	a5,40(s0)
    800023e4:	03043823          	sd	a6,48(s0)
    800023e8:	03143c23          	sd	a7,56(s0)
    800023ec:	00050993          	mv	s3,a0
    800023f0:	4a0c1663          	bnez	s8,8000289c <__printf+0x514>
    800023f4:	60098c63          	beqz	s3,80002a0c <__printf+0x684>
    800023f8:	0009c503          	lbu	a0,0(s3)
    800023fc:	00840793          	addi	a5,s0,8
    80002400:	f6f43c23          	sd	a5,-136(s0)
    80002404:	00000493          	li	s1,0
    80002408:	22050063          	beqz	a0,80002628 <__printf+0x2a0>
    8000240c:	00002a37          	lui	s4,0x2
    80002410:	00018ab7          	lui	s5,0x18
    80002414:	000f4b37          	lui	s6,0xf4
    80002418:	00989bb7          	lui	s7,0x989
    8000241c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002420:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002424:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002428:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000242c:	00148c9b          	addiw	s9,s1,1
    80002430:	02500793          	li	a5,37
    80002434:	01998933          	add	s2,s3,s9
    80002438:	38f51263          	bne	a0,a5,800027bc <__printf+0x434>
    8000243c:	00094783          	lbu	a5,0(s2)
    80002440:	00078c9b          	sext.w	s9,a5
    80002444:	1e078263          	beqz	a5,80002628 <__printf+0x2a0>
    80002448:	0024849b          	addiw	s1,s1,2
    8000244c:	07000713          	li	a4,112
    80002450:	00998933          	add	s2,s3,s1
    80002454:	38e78a63          	beq	a5,a4,800027e8 <__printf+0x460>
    80002458:	20f76863          	bltu	a4,a5,80002668 <__printf+0x2e0>
    8000245c:	42a78863          	beq	a5,a0,8000288c <__printf+0x504>
    80002460:	06400713          	li	a4,100
    80002464:	40e79663          	bne	a5,a4,80002870 <__printf+0x4e8>
    80002468:	f7843783          	ld	a5,-136(s0)
    8000246c:	0007a603          	lw	a2,0(a5)
    80002470:	00878793          	addi	a5,a5,8
    80002474:	f6f43c23          	sd	a5,-136(s0)
    80002478:	42064a63          	bltz	a2,800028ac <__printf+0x524>
    8000247c:	00a00713          	li	a4,10
    80002480:	02e677bb          	remuw	a5,a2,a4
    80002484:	00002d97          	auipc	s11,0x2
    80002488:	d5cd8d93          	addi	s11,s11,-676 # 800041e0 <digits>
    8000248c:	00900593          	li	a1,9
    80002490:	0006051b          	sext.w	a0,a2
    80002494:	00000c93          	li	s9,0
    80002498:	02079793          	slli	a5,a5,0x20
    8000249c:	0207d793          	srli	a5,a5,0x20
    800024a0:	00fd87b3          	add	a5,s11,a5
    800024a4:	0007c783          	lbu	a5,0(a5)
    800024a8:	02e656bb          	divuw	a3,a2,a4
    800024ac:	f8f40023          	sb	a5,-128(s0)
    800024b0:	14c5d863          	bge	a1,a2,80002600 <__printf+0x278>
    800024b4:	06300593          	li	a1,99
    800024b8:	00100c93          	li	s9,1
    800024bc:	02e6f7bb          	remuw	a5,a3,a4
    800024c0:	02079793          	slli	a5,a5,0x20
    800024c4:	0207d793          	srli	a5,a5,0x20
    800024c8:	00fd87b3          	add	a5,s11,a5
    800024cc:	0007c783          	lbu	a5,0(a5)
    800024d0:	02e6d73b          	divuw	a4,a3,a4
    800024d4:	f8f400a3          	sb	a5,-127(s0)
    800024d8:	12a5f463          	bgeu	a1,a0,80002600 <__printf+0x278>
    800024dc:	00a00693          	li	a3,10
    800024e0:	00900593          	li	a1,9
    800024e4:	02d777bb          	remuw	a5,a4,a3
    800024e8:	02079793          	slli	a5,a5,0x20
    800024ec:	0207d793          	srli	a5,a5,0x20
    800024f0:	00fd87b3          	add	a5,s11,a5
    800024f4:	0007c503          	lbu	a0,0(a5)
    800024f8:	02d757bb          	divuw	a5,a4,a3
    800024fc:	f8a40123          	sb	a0,-126(s0)
    80002500:	48e5f263          	bgeu	a1,a4,80002984 <__printf+0x5fc>
    80002504:	06300513          	li	a0,99
    80002508:	02d7f5bb          	remuw	a1,a5,a3
    8000250c:	02059593          	slli	a1,a1,0x20
    80002510:	0205d593          	srli	a1,a1,0x20
    80002514:	00bd85b3          	add	a1,s11,a1
    80002518:	0005c583          	lbu	a1,0(a1)
    8000251c:	02d7d7bb          	divuw	a5,a5,a3
    80002520:	f8b401a3          	sb	a1,-125(s0)
    80002524:	48e57263          	bgeu	a0,a4,800029a8 <__printf+0x620>
    80002528:	3e700513          	li	a0,999
    8000252c:	02d7f5bb          	remuw	a1,a5,a3
    80002530:	02059593          	slli	a1,a1,0x20
    80002534:	0205d593          	srli	a1,a1,0x20
    80002538:	00bd85b3          	add	a1,s11,a1
    8000253c:	0005c583          	lbu	a1,0(a1)
    80002540:	02d7d7bb          	divuw	a5,a5,a3
    80002544:	f8b40223          	sb	a1,-124(s0)
    80002548:	46e57663          	bgeu	a0,a4,800029b4 <__printf+0x62c>
    8000254c:	02d7f5bb          	remuw	a1,a5,a3
    80002550:	02059593          	slli	a1,a1,0x20
    80002554:	0205d593          	srli	a1,a1,0x20
    80002558:	00bd85b3          	add	a1,s11,a1
    8000255c:	0005c583          	lbu	a1,0(a1)
    80002560:	02d7d7bb          	divuw	a5,a5,a3
    80002564:	f8b402a3          	sb	a1,-123(s0)
    80002568:	46ea7863          	bgeu	s4,a4,800029d8 <__printf+0x650>
    8000256c:	02d7f5bb          	remuw	a1,a5,a3
    80002570:	02059593          	slli	a1,a1,0x20
    80002574:	0205d593          	srli	a1,a1,0x20
    80002578:	00bd85b3          	add	a1,s11,a1
    8000257c:	0005c583          	lbu	a1,0(a1)
    80002580:	02d7d7bb          	divuw	a5,a5,a3
    80002584:	f8b40323          	sb	a1,-122(s0)
    80002588:	3eeaf863          	bgeu	s5,a4,80002978 <__printf+0x5f0>
    8000258c:	02d7f5bb          	remuw	a1,a5,a3
    80002590:	02059593          	slli	a1,a1,0x20
    80002594:	0205d593          	srli	a1,a1,0x20
    80002598:	00bd85b3          	add	a1,s11,a1
    8000259c:	0005c583          	lbu	a1,0(a1)
    800025a0:	02d7d7bb          	divuw	a5,a5,a3
    800025a4:	f8b403a3          	sb	a1,-121(s0)
    800025a8:	42eb7e63          	bgeu	s6,a4,800029e4 <__printf+0x65c>
    800025ac:	02d7f5bb          	remuw	a1,a5,a3
    800025b0:	02059593          	slli	a1,a1,0x20
    800025b4:	0205d593          	srli	a1,a1,0x20
    800025b8:	00bd85b3          	add	a1,s11,a1
    800025bc:	0005c583          	lbu	a1,0(a1)
    800025c0:	02d7d7bb          	divuw	a5,a5,a3
    800025c4:	f8b40423          	sb	a1,-120(s0)
    800025c8:	42ebfc63          	bgeu	s7,a4,80002a00 <__printf+0x678>
    800025cc:	02079793          	slli	a5,a5,0x20
    800025d0:	0207d793          	srli	a5,a5,0x20
    800025d4:	00fd8db3          	add	s11,s11,a5
    800025d8:	000dc703          	lbu	a4,0(s11)
    800025dc:	00a00793          	li	a5,10
    800025e0:	00900c93          	li	s9,9
    800025e4:	f8e404a3          	sb	a4,-119(s0)
    800025e8:	00065c63          	bgez	a2,80002600 <__printf+0x278>
    800025ec:	f9040713          	addi	a4,s0,-112
    800025f0:	00f70733          	add	a4,a4,a5
    800025f4:	02d00693          	li	a3,45
    800025f8:	fed70823          	sb	a3,-16(a4)
    800025fc:	00078c93          	mv	s9,a5
    80002600:	f8040793          	addi	a5,s0,-128
    80002604:	01978cb3          	add	s9,a5,s9
    80002608:	f7f40d13          	addi	s10,s0,-129
    8000260c:	000cc503          	lbu	a0,0(s9)
    80002610:	fffc8c93          	addi	s9,s9,-1
    80002614:	00000097          	auipc	ra,0x0
    80002618:	b90080e7          	jalr	-1136(ra) # 800021a4 <consputc>
    8000261c:	ffac98e3          	bne	s9,s10,8000260c <__printf+0x284>
    80002620:	00094503          	lbu	a0,0(s2)
    80002624:	e00514e3          	bnez	a0,8000242c <__printf+0xa4>
    80002628:	1a0c1663          	bnez	s8,800027d4 <__printf+0x44c>
    8000262c:	08813083          	ld	ra,136(sp)
    80002630:	08013403          	ld	s0,128(sp)
    80002634:	07813483          	ld	s1,120(sp)
    80002638:	07013903          	ld	s2,112(sp)
    8000263c:	06813983          	ld	s3,104(sp)
    80002640:	06013a03          	ld	s4,96(sp)
    80002644:	05813a83          	ld	s5,88(sp)
    80002648:	05013b03          	ld	s6,80(sp)
    8000264c:	04813b83          	ld	s7,72(sp)
    80002650:	04013c03          	ld	s8,64(sp)
    80002654:	03813c83          	ld	s9,56(sp)
    80002658:	03013d03          	ld	s10,48(sp)
    8000265c:	02813d83          	ld	s11,40(sp)
    80002660:	0d010113          	addi	sp,sp,208
    80002664:	00008067          	ret
    80002668:	07300713          	li	a4,115
    8000266c:	1ce78a63          	beq	a5,a4,80002840 <__printf+0x4b8>
    80002670:	07800713          	li	a4,120
    80002674:	1ee79e63          	bne	a5,a4,80002870 <__printf+0x4e8>
    80002678:	f7843783          	ld	a5,-136(s0)
    8000267c:	0007a703          	lw	a4,0(a5)
    80002680:	00878793          	addi	a5,a5,8
    80002684:	f6f43c23          	sd	a5,-136(s0)
    80002688:	28074263          	bltz	a4,8000290c <__printf+0x584>
    8000268c:	00002d97          	auipc	s11,0x2
    80002690:	b54d8d93          	addi	s11,s11,-1196 # 800041e0 <digits>
    80002694:	00f77793          	andi	a5,a4,15
    80002698:	00fd87b3          	add	a5,s11,a5
    8000269c:	0007c683          	lbu	a3,0(a5)
    800026a0:	00f00613          	li	a2,15
    800026a4:	0007079b          	sext.w	a5,a4
    800026a8:	f8d40023          	sb	a3,-128(s0)
    800026ac:	0047559b          	srliw	a1,a4,0x4
    800026b0:	0047569b          	srliw	a3,a4,0x4
    800026b4:	00000c93          	li	s9,0
    800026b8:	0ee65063          	bge	a2,a4,80002798 <__printf+0x410>
    800026bc:	00f6f693          	andi	a3,a3,15
    800026c0:	00dd86b3          	add	a3,s11,a3
    800026c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800026c8:	0087d79b          	srliw	a5,a5,0x8
    800026cc:	00100c93          	li	s9,1
    800026d0:	f8d400a3          	sb	a3,-127(s0)
    800026d4:	0cb67263          	bgeu	a2,a1,80002798 <__printf+0x410>
    800026d8:	00f7f693          	andi	a3,a5,15
    800026dc:	00dd86b3          	add	a3,s11,a3
    800026e0:	0006c583          	lbu	a1,0(a3)
    800026e4:	00f00613          	li	a2,15
    800026e8:	0047d69b          	srliw	a3,a5,0x4
    800026ec:	f8b40123          	sb	a1,-126(s0)
    800026f0:	0047d593          	srli	a1,a5,0x4
    800026f4:	28f67e63          	bgeu	a2,a5,80002990 <__printf+0x608>
    800026f8:	00f6f693          	andi	a3,a3,15
    800026fc:	00dd86b3          	add	a3,s11,a3
    80002700:	0006c503          	lbu	a0,0(a3)
    80002704:	0087d813          	srli	a6,a5,0x8
    80002708:	0087d69b          	srliw	a3,a5,0x8
    8000270c:	f8a401a3          	sb	a0,-125(s0)
    80002710:	28b67663          	bgeu	a2,a1,8000299c <__printf+0x614>
    80002714:	00f6f693          	andi	a3,a3,15
    80002718:	00dd86b3          	add	a3,s11,a3
    8000271c:	0006c583          	lbu	a1,0(a3)
    80002720:	00c7d513          	srli	a0,a5,0xc
    80002724:	00c7d69b          	srliw	a3,a5,0xc
    80002728:	f8b40223          	sb	a1,-124(s0)
    8000272c:	29067a63          	bgeu	a2,a6,800029c0 <__printf+0x638>
    80002730:	00f6f693          	andi	a3,a3,15
    80002734:	00dd86b3          	add	a3,s11,a3
    80002738:	0006c583          	lbu	a1,0(a3)
    8000273c:	0107d813          	srli	a6,a5,0x10
    80002740:	0107d69b          	srliw	a3,a5,0x10
    80002744:	f8b402a3          	sb	a1,-123(s0)
    80002748:	28a67263          	bgeu	a2,a0,800029cc <__printf+0x644>
    8000274c:	00f6f693          	andi	a3,a3,15
    80002750:	00dd86b3          	add	a3,s11,a3
    80002754:	0006c683          	lbu	a3,0(a3)
    80002758:	0147d79b          	srliw	a5,a5,0x14
    8000275c:	f8d40323          	sb	a3,-122(s0)
    80002760:	21067663          	bgeu	a2,a6,8000296c <__printf+0x5e4>
    80002764:	02079793          	slli	a5,a5,0x20
    80002768:	0207d793          	srli	a5,a5,0x20
    8000276c:	00fd8db3          	add	s11,s11,a5
    80002770:	000dc683          	lbu	a3,0(s11)
    80002774:	00800793          	li	a5,8
    80002778:	00700c93          	li	s9,7
    8000277c:	f8d403a3          	sb	a3,-121(s0)
    80002780:	00075c63          	bgez	a4,80002798 <__printf+0x410>
    80002784:	f9040713          	addi	a4,s0,-112
    80002788:	00f70733          	add	a4,a4,a5
    8000278c:	02d00693          	li	a3,45
    80002790:	fed70823          	sb	a3,-16(a4)
    80002794:	00078c93          	mv	s9,a5
    80002798:	f8040793          	addi	a5,s0,-128
    8000279c:	01978cb3          	add	s9,a5,s9
    800027a0:	f7f40d13          	addi	s10,s0,-129
    800027a4:	000cc503          	lbu	a0,0(s9)
    800027a8:	fffc8c93          	addi	s9,s9,-1
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	9f8080e7          	jalr	-1544(ra) # 800021a4 <consputc>
    800027b4:	ff9d18e3          	bne	s10,s9,800027a4 <__printf+0x41c>
    800027b8:	0100006f          	j	800027c8 <__printf+0x440>
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	9e8080e7          	jalr	-1560(ra) # 800021a4 <consputc>
    800027c4:	000c8493          	mv	s1,s9
    800027c8:	00094503          	lbu	a0,0(s2)
    800027cc:	c60510e3          	bnez	a0,8000242c <__printf+0xa4>
    800027d0:	e40c0ee3          	beqz	s8,8000262c <__printf+0x2a4>
    800027d4:	00003517          	auipc	a0,0x3
    800027d8:	f6c50513          	addi	a0,a0,-148 # 80005740 <pr>
    800027dc:	00001097          	auipc	ra,0x1
    800027e0:	94c080e7          	jalr	-1716(ra) # 80003128 <release>
    800027e4:	e49ff06f          	j	8000262c <__printf+0x2a4>
    800027e8:	f7843783          	ld	a5,-136(s0)
    800027ec:	03000513          	li	a0,48
    800027f0:	01000d13          	li	s10,16
    800027f4:	00878713          	addi	a4,a5,8
    800027f8:	0007bc83          	ld	s9,0(a5)
    800027fc:	f6e43c23          	sd	a4,-136(s0)
    80002800:	00000097          	auipc	ra,0x0
    80002804:	9a4080e7          	jalr	-1628(ra) # 800021a4 <consputc>
    80002808:	07800513          	li	a0,120
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	998080e7          	jalr	-1640(ra) # 800021a4 <consputc>
    80002814:	00002d97          	auipc	s11,0x2
    80002818:	9ccd8d93          	addi	s11,s11,-1588 # 800041e0 <digits>
    8000281c:	03ccd793          	srli	a5,s9,0x3c
    80002820:	00fd87b3          	add	a5,s11,a5
    80002824:	0007c503          	lbu	a0,0(a5)
    80002828:	fffd0d1b          	addiw	s10,s10,-1
    8000282c:	004c9c93          	slli	s9,s9,0x4
    80002830:	00000097          	auipc	ra,0x0
    80002834:	974080e7          	jalr	-1676(ra) # 800021a4 <consputc>
    80002838:	fe0d12e3          	bnez	s10,8000281c <__printf+0x494>
    8000283c:	f8dff06f          	j	800027c8 <__printf+0x440>
    80002840:	f7843783          	ld	a5,-136(s0)
    80002844:	0007bc83          	ld	s9,0(a5)
    80002848:	00878793          	addi	a5,a5,8
    8000284c:	f6f43c23          	sd	a5,-136(s0)
    80002850:	000c9a63          	bnez	s9,80002864 <__printf+0x4dc>
    80002854:	1080006f          	j	8000295c <__printf+0x5d4>
    80002858:	001c8c93          	addi	s9,s9,1
    8000285c:	00000097          	auipc	ra,0x0
    80002860:	948080e7          	jalr	-1720(ra) # 800021a4 <consputc>
    80002864:	000cc503          	lbu	a0,0(s9)
    80002868:	fe0518e3          	bnez	a0,80002858 <__printf+0x4d0>
    8000286c:	f5dff06f          	j	800027c8 <__printf+0x440>
    80002870:	02500513          	li	a0,37
    80002874:	00000097          	auipc	ra,0x0
    80002878:	930080e7          	jalr	-1744(ra) # 800021a4 <consputc>
    8000287c:	000c8513          	mv	a0,s9
    80002880:	00000097          	auipc	ra,0x0
    80002884:	924080e7          	jalr	-1756(ra) # 800021a4 <consputc>
    80002888:	f41ff06f          	j	800027c8 <__printf+0x440>
    8000288c:	02500513          	li	a0,37
    80002890:	00000097          	auipc	ra,0x0
    80002894:	914080e7          	jalr	-1772(ra) # 800021a4 <consputc>
    80002898:	f31ff06f          	j	800027c8 <__printf+0x440>
    8000289c:	00030513          	mv	a0,t1
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	7bc080e7          	jalr	1980(ra) # 8000305c <acquire>
    800028a8:	b4dff06f          	j	800023f4 <__printf+0x6c>
    800028ac:	40c0053b          	negw	a0,a2
    800028b0:	00a00713          	li	a4,10
    800028b4:	02e576bb          	remuw	a3,a0,a4
    800028b8:	00002d97          	auipc	s11,0x2
    800028bc:	928d8d93          	addi	s11,s11,-1752 # 800041e0 <digits>
    800028c0:	ff700593          	li	a1,-9
    800028c4:	02069693          	slli	a3,a3,0x20
    800028c8:	0206d693          	srli	a3,a3,0x20
    800028cc:	00dd86b3          	add	a3,s11,a3
    800028d0:	0006c683          	lbu	a3,0(a3)
    800028d4:	02e557bb          	divuw	a5,a0,a4
    800028d8:	f8d40023          	sb	a3,-128(s0)
    800028dc:	10b65e63          	bge	a2,a1,800029f8 <__printf+0x670>
    800028e0:	06300593          	li	a1,99
    800028e4:	02e7f6bb          	remuw	a3,a5,a4
    800028e8:	02069693          	slli	a3,a3,0x20
    800028ec:	0206d693          	srli	a3,a3,0x20
    800028f0:	00dd86b3          	add	a3,s11,a3
    800028f4:	0006c683          	lbu	a3,0(a3)
    800028f8:	02e7d73b          	divuw	a4,a5,a4
    800028fc:	00200793          	li	a5,2
    80002900:	f8d400a3          	sb	a3,-127(s0)
    80002904:	bca5ece3          	bltu	a1,a0,800024dc <__printf+0x154>
    80002908:	ce5ff06f          	j	800025ec <__printf+0x264>
    8000290c:	40e007bb          	negw	a5,a4
    80002910:	00002d97          	auipc	s11,0x2
    80002914:	8d0d8d93          	addi	s11,s11,-1840 # 800041e0 <digits>
    80002918:	00f7f693          	andi	a3,a5,15
    8000291c:	00dd86b3          	add	a3,s11,a3
    80002920:	0006c583          	lbu	a1,0(a3)
    80002924:	ff100613          	li	a2,-15
    80002928:	0047d69b          	srliw	a3,a5,0x4
    8000292c:	f8b40023          	sb	a1,-128(s0)
    80002930:	0047d59b          	srliw	a1,a5,0x4
    80002934:	0ac75e63          	bge	a4,a2,800029f0 <__printf+0x668>
    80002938:	00f6f693          	andi	a3,a3,15
    8000293c:	00dd86b3          	add	a3,s11,a3
    80002940:	0006c603          	lbu	a2,0(a3)
    80002944:	00f00693          	li	a3,15
    80002948:	0087d79b          	srliw	a5,a5,0x8
    8000294c:	f8c400a3          	sb	a2,-127(s0)
    80002950:	d8b6e4e3          	bltu	a3,a1,800026d8 <__printf+0x350>
    80002954:	00200793          	li	a5,2
    80002958:	e2dff06f          	j	80002784 <__printf+0x3fc>
    8000295c:	00002c97          	auipc	s9,0x2
    80002960:	864c8c93          	addi	s9,s9,-1948 # 800041c0 <CONSOLE_STATUS+0x1b0>
    80002964:	02800513          	li	a0,40
    80002968:	ef1ff06f          	j	80002858 <__printf+0x4d0>
    8000296c:	00700793          	li	a5,7
    80002970:	00600c93          	li	s9,6
    80002974:	e0dff06f          	j	80002780 <__printf+0x3f8>
    80002978:	00700793          	li	a5,7
    8000297c:	00600c93          	li	s9,6
    80002980:	c69ff06f          	j	800025e8 <__printf+0x260>
    80002984:	00300793          	li	a5,3
    80002988:	00200c93          	li	s9,2
    8000298c:	c5dff06f          	j	800025e8 <__printf+0x260>
    80002990:	00300793          	li	a5,3
    80002994:	00200c93          	li	s9,2
    80002998:	de9ff06f          	j	80002780 <__printf+0x3f8>
    8000299c:	00400793          	li	a5,4
    800029a0:	00300c93          	li	s9,3
    800029a4:	dddff06f          	j	80002780 <__printf+0x3f8>
    800029a8:	00400793          	li	a5,4
    800029ac:	00300c93          	li	s9,3
    800029b0:	c39ff06f          	j	800025e8 <__printf+0x260>
    800029b4:	00500793          	li	a5,5
    800029b8:	00400c93          	li	s9,4
    800029bc:	c2dff06f          	j	800025e8 <__printf+0x260>
    800029c0:	00500793          	li	a5,5
    800029c4:	00400c93          	li	s9,4
    800029c8:	db9ff06f          	j	80002780 <__printf+0x3f8>
    800029cc:	00600793          	li	a5,6
    800029d0:	00500c93          	li	s9,5
    800029d4:	dadff06f          	j	80002780 <__printf+0x3f8>
    800029d8:	00600793          	li	a5,6
    800029dc:	00500c93          	li	s9,5
    800029e0:	c09ff06f          	j	800025e8 <__printf+0x260>
    800029e4:	00800793          	li	a5,8
    800029e8:	00700c93          	li	s9,7
    800029ec:	bfdff06f          	j	800025e8 <__printf+0x260>
    800029f0:	00100793          	li	a5,1
    800029f4:	d91ff06f          	j	80002784 <__printf+0x3fc>
    800029f8:	00100793          	li	a5,1
    800029fc:	bf1ff06f          	j	800025ec <__printf+0x264>
    80002a00:	00900793          	li	a5,9
    80002a04:	00800c93          	li	s9,8
    80002a08:	be1ff06f          	j	800025e8 <__printf+0x260>
    80002a0c:	00001517          	auipc	a0,0x1
    80002a10:	7bc50513          	addi	a0,a0,1980 # 800041c8 <CONSOLE_STATUS+0x1b8>
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	918080e7          	jalr	-1768(ra) # 8000232c <panic>

0000000080002a1c <printfinit>:
    80002a1c:	fe010113          	addi	sp,sp,-32
    80002a20:	00813823          	sd	s0,16(sp)
    80002a24:	00913423          	sd	s1,8(sp)
    80002a28:	00113c23          	sd	ra,24(sp)
    80002a2c:	02010413          	addi	s0,sp,32
    80002a30:	00003497          	auipc	s1,0x3
    80002a34:	d1048493          	addi	s1,s1,-752 # 80005740 <pr>
    80002a38:	00048513          	mv	a0,s1
    80002a3c:	00001597          	auipc	a1,0x1
    80002a40:	79c58593          	addi	a1,a1,1948 # 800041d8 <CONSOLE_STATUS+0x1c8>
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	5f4080e7          	jalr	1524(ra) # 80003038 <initlock>
    80002a4c:	01813083          	ld	ra,24(sp)
    80002a50:	01013403          	ld	s0,16(sp)
    80002a54:	0004ac23          	sw	zero,24(s1)
    80002a58:	00813483          	ld	s1,8(sp)
    80002a5c:	02010113          	addi	sp,sp,32
    80002a60:	00008067          	ret

0000000080002a64 <uartinit>:
    80002a64:	ff010113          	addi	sp,sp,-16
    80002a68:	00813423          	sd	s0,8(sp)
    80002a6c:	01010413          	addi	s0,sp,16
    80002a70:	100007b7          	lui	a5,0x10000
    80002a74:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002a78:	f8000713          	li	a4,-128
    80002a7c:	00e781a3          	sb	a4,3(a5)
    80002a80:	00300713          	li	a4,3
    80002a84:	00e78023          	sb	a4,0(a5)
    80002a88:	000780a3          	sb	zero,1(a5)
    80002a8c:	00e781a3          	sb	a4,3(a5)
    80002a90:	00700693          	li	a3,7
    80002a94:	00d78123          	sb	a3,2(a5)
    80002a98:	00e780a3          	sb	a4,1(a5)
    80002a9c:	00813403          	ld	s0,8(sp)
    80002aa0:	01010113          	addi	sp,sp,16
    80002aa4:	00008067          	ret

0000000080002aa8 <uartputc>:
    80002aa8:	00002797          	auipc	a5,0x2
    80002aac:	a507a783          	lw	a5,-1456(a5) # 800044f8 <panicked>
    80002ab0:	00078463          	beqz	a5,80002ab8 <uartputc+0x10>
    80002ab4:	0000006f          	j	80002ab4 <uartputc+0xc>
    80002ab8:	fd010113          	addi	sp,sp,-48
    80002abc:	02813023          	sd	s0,32(sp)
    80002ac0:	00913c23          	sd	s1,24(sp)
    80002ac4:	01213823          	sd	s2,16(sp)
    80002ac8:	01313423          	sd	s3,8(sp)
    80002acc:	02113423          	sd	ra,40(sp)
    80002ad0:	03010413          	addi	s0,sp,48
    80002ad4:	00002917          	auipc	s2,0x2
    80002ad8:	a2c90913          	addi	s2,s2,-1492 # 80004500 <uart_tx_r>
    80002adc:	00093783          	ld	a5,0(s2)
    80002ae0:	00002497          	auipc	s1,0x2
    80002ae4:	a2848493          	addi	s1,s1,-1496 # 80004508 <uart_tx_w>
    80002ae8:	0004b703          	ld	a4,0(s1)
    80002aec:	02078693          	addi	a3,a5,32
    80002af0:	00050993          	mv	s3,a0
    80002af4:	02e69c63          	bne	a3,a4,80002b2c <uartputc+0x84>
    80002af8:	00001097          	auipc	ra,0x1
    80002afc:	834080e7          	jalr	-1996(ra) # 8000332c <push_on>
    80002b00:	00093783          	ld	a5,0(s2)
    80002b04:	0004b703          	ld	a4,0(s1)
    80002b08:	02078793          	addi	a5,a5,32
    80002b0c:	00e79463          	bne	a5,a4,80002b14 <uartputc+0x6c>
    80002b10:	0000006f          	j	80002b10 <uartputc+0x68>
    80002b14:	00001097          	auipc	ra,0x1
    80002b18:	88c080e7          	jalr	-1908(ra) # 800033a0 <pop_on>
    80002b1c:	00093783          	ld	a5,0(s2)
    80002b20:	0004b703          	ld	a4,0(s1)
    80002b24:	02078693          	addi	a3,a5,32
    80002b28:	fce688e3          	beq	a3,a4,80002af8 <uartputc+0x50>
    80002b2c:	01f77693          	andi	a3,a4,31
    80002b30:	00003597          	auipc	a1,0x3
    80002b34:	c3058593          	addi	a1,a1,-976 # 80005760 <uart_tx_buf>
    80002b38:	00d586b3          	add	a3,a1,a3
    80002b3c:	00170713          	addi	a4,a4,1
    80002b40:	01368023          	sb	s3,0(a3)
    80002b44:	00e4b023          	sd	a4,0(s1)
    80002b48:	10000637          	lui	a2,0x10000
    80002b4c:	02f71063          	bne	a4,a5,80002b6c <uartputc+0xc4>
    80002b50:	0340006f          	j	80002b84 <uartputc+0xdc>
    80002b54:	00074703          	lbu	a4,0(a4)
    80002b58:	00f93023          	sd	a5,0(s2)
    80002b5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002b60:	00093783          	ld	a5,0(s2)
    80002b64:	0004b703          	ld	a4,0(s1)
    80002b68:	00f70e63          	beq	a4,a5,80002b84 <uartputc+0xdc>
    80002b6c:	00564683          	lbu	a3,5(a2)
    80002b70:	01f7f713          	andi	a4,a5,31
    80002b74:	00e58733          	add	a4,a1,a4
    80002b78:	0206f693          	andi	a3,a3,32
    80002b7c:	00178793          	addi	a5,a5,1
    80002b80:	fc069ae3          	bnez	a3,80002b54 <uartputc+0xac>
    80002b84:	02813083          	ld	ra,40(sp)
    80002b88:	02013403          	ld	s0,32(sp)
    80002b8c:	01813483          	ld	s1,24(sp)
    80002b90:	01013903          	ld	s2,16(sp)
    80002b94:	00813983          	ld	s3,8(sp)
    80002b98:	03010113          	addi	sp,sp,48
    80002b9c:	00008067          	ret

0000000080002ba0 <uartputc_sync>:
    80002ba0:	ff010113          	addi	sp,sp,-16
    80002ba4:	00813423          	sd	s0,8(sp)
    80002ba8:	01010413          	addi	s0,sp,16
    80002bac:	00002717          	auipc	a4,0x2
    80002bb0:	94c72703          	lw	a4,-1716(a4) # 800044f8 <panicked>
    80002bb4:	02071663          	bnez	a4,80002be0 <uartputc_sync+0x40>
    80002bb8:	00050793          	mv	a5,a0
    80002bbc:	100006b7          	lui	a3,0x10000
    80002bc0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002bc4:	02077713          	andi	a4,a4,32
    80002bc8:	fe070ce3          	beqz	a4,80002bc0 <uartputc_sync+0x20>
    80002bcc:	0ff7f793          	andi	a5,a5,255
    80002bd0:	00f68023          	sb	a5,0(a3)
    80002bd4:	00813403          	ld	s0,8(sp)
    80002bd8:	01010113          	addi	sp,sp,16
    80002bdc:	00008067          	ret
    80002be0:	0000006f          	j	80002be0 <uartputc_sync+0x40>

0000000080002be4 <uartstart>:
    80002be4:	ff010113          	addi	sp,sp,-16
    80002be8:	00813423          	sd	s0,8(sp)
    80002bec:	01010413          	addi	s0,sp,16
    80002bf0:	00002617          	auipc	a2,0x2
    80002bf4:	91060613          	addi	a2,a2,-1776 # 80004500 <uart_tx_r>
    80002bf8:	00002517          	auipc	a0,0x2
    80002bfc:	91050513          	addi	a0,a0,-1776 # 80004508 <uart_tx_w>
    80002c00:	00063783          	ld	a5,0(a2)
    80002c04:	00053703          	ld	a4,0(a0)
    80002c08:	04f70263          	beq	a4,a5,80002c4c <uartstart+0x68>
    80002c0c:	100005b7          	lui	a1,0x10000
    80002c10:	00003817          	auipc	a6,0x3
    80002c14:	b5080813          	addi	a6,a6,-1200 # 80005760 <uart_tx_buf>
    80002c18:	01c0006f          	j	80002c34 <uartstart+0x50>
    80002c1c:	0006c703          	lbu	a4,0(a3)
    80002c20:	00f63023          	sd	a5,0(a2)
    80002c24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002c28:	00063783          	ld	a5,0(a2)
    80002c2c:	00053703          	ld	a4,0(a0)
    80002c30:	00f70e63          	beq	a4,a5,80002c4c <uartstart+0x68>
    80002c34:	01f7f713          	andi	a4,a5,31
    80002c38:	00e806b3          	add	a3,a6,a4
    80002c3c:	0055c703          	lbu	a4,5(a1)
    80002c40:	00178793          	addi	a5,a5,1
    80002c44:	02077713          	andi	a4,a4,32
    80002c48:	fc071ae3          	bnez	a4,80002c1c <uartstart+0x38>
    80002c4c:	00813403          	ld	s0,8(sp)
    80002c50:	01010113          	addi	sp,sp,16
    80002c54:	00008067          	ret

0000000080002c58 <uartgetc>:
    80002c58:	ff010113          	addi	sp,sp,-16
    80002c5c:	00813423          	sd	s0,8(sp)
    80002c60:	01010413          	addi	s0,sp,16
    80002c64:	10000737          	lui	a4,0x10000
    80002c68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002c6c:	0017f793          	andi	a5,a5,1
    80002c70:	00078c63          	beqz	a5,80002c88 <uartgetc+0x30>
    80002c74:	00074503          	lbu	a0,0(a4)
    80002c78:	0ff57513          	andi	a0,a0,255
    80002c7c:	00813403          	ld	s0,8(sp)
    80002c80:	01010113          	addi	sp,sp,16
    80002c84:	00008067          	ret
    80002c88:	fff00513          	li	a0,-1
    80002c8c:	ff1ff06f          	j	80002c7c <uartgetc+0x24>

0000000080002c90 <uartintr>:
    80002c90:	100007b7          	lui	a5,0x10000
    80002c94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002c98:	0017f793          	andi	a5,a5,1
    80002c9c:	0a078463          	beqz	a5,80002d44 <uartintr+0xb4>
    80002ca0:	fe010113          	addi	sp,sp,-32
    80002ca4:	00813823          	sd	s0,16(sp)
    80002ca8:	00913423          	sd	s1,8(sp)
    80002cac:	00113c23          	sd	ra,24(sp)
    80002cb0:	02010413          	addi	s0,sp,32
    80002cb4:	100004b7          	lui	s1,0x10000
    80002cb8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002cbc:	0ff57513          	andi	a0,a0,255
    80002cc0:	fffff097          	auipc	ra,0xfffff
    80002cc4:	534080e7          	jalr	1332(ra) # 800021f4 <consoleintr>
    80002cc8:	0054c783          	lbu	a5,5(s1)
    80002ccc:	0017f793          	andi	a5,a5,1
    80002cd0:	fe0794e3          	bnez	a5,80002cb8 <uartintr+0x28>
    80002cd4:	00002617          	auipc	a2,0x2
    80002cd8:	82c60613          	addi	a2,a2,-2004 # 80004500 <uart_tx_r>
    80002cdc:	00002517          	auipc	a0,0x2
    80002ce0:	82c50513          	addi	a0,a0,-2004 # 80004508 <uart_tx_w>
    80002ce4:	00063783          	ld	a5,0(a2)
    80002ce8:	00053703          	ld	a4,0(a0)
    80002cec:	04f70263          	beq	a4,a5,80002d30 <uartintr+0xa0>
    80002cf0:	100005b7          	lui	a1,0x10000
    80002cf4:	00003817          	auipc	a6,0x3
    80002cf8:	a6c80813          	addi	a6,a6,-1428 # 80005760 <uart_tx_buf>
    80002cfc:	01c0006f          	j	80002d18 <uartintr+0x88>
    80002d00:	0006c703          	lbu	a4,0(a3)
    80002d04:	00f63023          	sd	a5,0(a2)
    80002d08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002d0c:	00063783          	ld	a5,0(a2)
    80002d10:	00053703          	ld	a4,0(a0)
    80002d14:	00f70e63          	beq	a4,a5,80002d30 <uartintr+0xa0>
    80002d18:	01f7f713          	andi	a4,a5,31
    80002d1c:	00e806b3          	add	a3,a6,a4
    80002d20:	0055c703          	lbu	a4,5(a1)
    80002d24:	00178793          	addi	a5,a5,1
    80002d28:	02077713          	andi	a4,a4,32
    80002d2c:	fc071ae3          	bnez	a4,80002d00 <uartintr+0x70>
    80002d30:	01813083          	ld	ra,24(sp)
    80002d34:	01013403          	ld	s0,16(sp)
    80002d38:	00813483          	ld	s1,8(sp)
    80002d3c:	02010113          	addi	sp,sp,32
    80002d40:	00008067          	ret
    80002d44:	00001617          	auipc	a2,0x1
    80002d48:	7bc60613          	addi	a2,a2,1980 # 80004500 <uart_tx_r>
    80002d4c:	00001517          	auipc	a0,0x1
    80002d50:	7bc50513          	addi	a0,a0,1980 # 80004508 <uart_tx_w>
    80002d54:	00063783          	ld	a5,0(a2)
    80002d58:	00053703          	ld	a4,0(a0)
    80002d5c:	04f70263          	beq	a4,a5,80002da0 <uartintr+0x110>
    80002d60:	100005b7          	lui	a1,0x10000
    80002d64:	00003817          	auipc	a6,0x3
    80002d68:	9fc80813          	addi	a6,a6,-1540 # 80005760 <uart_tx_buf>
    80002d6c:	01c0006f          	j	80002d88 <uartintr+0xf8>
    80002d70:	0006c703          	lbu	a4,0(a3)
    80002d74:	00f63023          	sd	a5,0(a2)
    80002d78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002d7c:	00063783          	ld	a5,0(a2)
    80002d80:	00053703          	ld	a4,0(a0)
    80002d84:	02f70063          	beq	a4,a5,80002da4 <uartintr+0x114>
    80002d88:	01f7f713          	andi	a4,a5,31
    80002d8c:	00e806b3          	add	a3,a6,a4
    80002d90:	0055c703          	lbu	a4,5(a1)
    80002d94:	00178793          	addi	a5,a5,1
    80002d98:	02077713          	andi	a4,a4,32
    80002d9c:	fc071ae3          	bnez	a4,80002d70 <uartintr+0xe0>
    80002da0:	00008067          	ret
    80002da4:	00008067          	ret

0000000080002da8 <kinit>:
    80002da8:	fc010113          	addi	sp,sp,-64
    80002dac:	02913423          	sd	s1,40(sp)
    80002db0:	fffff7b7          	lui	a5,0xfffff
    80002db4:	00004497          	auipc	s1,0x4
    80002db8:	9cb48493          	addi	s1,s1,-1589 # 8000677f <end+0xfff>
    80002dbc:	02813823          	sd	s0,48(sp)
    80002dc0:	01313c23          	sd	s3,24(sp)
    80002dc4:	00f4f4b3          	and	s1,s1,a5
    80002dc8:	02113c23          	sd	ra,56(sp)
    80002dcc:	03213023          	sd	s2,32(sp)
    80002dd0:	01413823          	sd	s4,16(sp)
    80002dd4:	01513423          	sd	s5,8(sp)
    80002dd8:	04010413          	addi	s0,sp,64
    80002ddc:	000017b7          	lui	a5,0x1
    80002de0:	01100993          	li	s3,17
    80002de4:	00f487b3          	add	a5,s1,a5
    80002de8:	01b99993          	slli	s3,s3,0x1b
    80002dec:	06f9e063          	bltu	s3,a5,80002e4c <kinit+0xa4>
    80002df0:	00003a97          	auipc	s5,0x3
    80002df4:	990a8a93          	addi	s5,s5,-1648 # 80005780 <end>
    80002df8:	0754ec63          	bltu	s1,s5,80002e70 <kinit+0xc8>
    80002dfc:	0734fa63          	bgeu	s1,s3,80002e70 <kinit+0xc8>
    80002e00:	00088a37          	lui	s4,0x88
    80002e04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002e08:	00001917          	auipc	s2,0x1
    80002e0c:	70890913          	addi	s2,s2,1800 # 80004510 <kmem>
    80002e10:	00ca1a13          	slli	s4,s4,0xc
    80002e14:	0140006f          	j	80002e28 <kinit+0x80>
    80002e18:	000017b7          	lui	a5,0x1
    80002e1c:	00f484b3          	add	s1,s1,a5
    80002e20:	0554e863          	bltu	s1,s5,80002e70 <kinit+0xc8>
    80002e24:	0534f663          	bgeu	s1,s3,80002e70 <kinit+0xc8>
    80002e28:	00001637          	lui	a2,0x1
    80002e2c:	00100593          	li	a1,1
    80002e30:	00048513          	mv	a0,s1
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	5e4080e7          	jalr	1508(ra) # 80003418 <__memset>
    80002e3c:	00093783          	ld	a5,0(s2)
    80002e40:	00f4b023          	sd	a5,0(s1)
    80002e44:	00993023          	sd	s1,0(s2)
    80002e48:	fd4498e3          	bne	s1,s4,80002e18 <kinit+0x70>
    80002e4c:	03813083          	ld	ra,56(sp)
    80002e50:	03013403          	ld	s0,48(sp)
    80002e54:	02813483          	ld	s1,40(sp)
    80002e58:	02013903          	ld	s2,32(sp)
    80002e5c:	01813983          	ld	s3,24(sp)
    80002e60:	01013a03          	ld	s4,16(sp)
    80002e64:	00813a83          	ld	s5,8(sp)
    80002e68:	04010113          	addi	sp,sp,64
    80002e6c:	00008067          	ret
    80002e70:	00001517          	auipc	a0,0x1
    80002e74:	38850513          	addi	a0,a0,904 # 800041f8 <digits+0x18>
    80002e78:	fffff097          	auipc	ra,0xfffff
    80002e7c:	4b4080e7          	jalr	1204(ra) # 8000232c <panic>

0000000080002e80 <freerange>:
    80002e80:	fc010113          	addi	sp,sp,-64
    80002e84:	000017b7          	lui	a5,0x1
    80002e88:	02913423          	sd	s1,40(sp)
    80002e8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002e90:	009504b3          	add	s1,a0,s1
    80002e94:	fffff537          	lui	a0,0xfffff
    80002e98:	02813823          	sd	s0,48(sp)
    80002e9c:	02113c23          	sd	ra,56(sp)
    80002ea0:	03213023          	sd	s2,32(sp)
    80002ea4:	01313c23          	sd	s3,24(sp)
    80002ea8:	01413823          	sd	s4,16(sp)
    80002eac:	01513423          	sd	s5,8(sp)
    80002eb0:	01613023          	sd	s6,0(sp)
    80002eb4:	04010413          	addi	s0,sp,64
    80002eb8:	00a4f4b3          	and	s1,s1,a0
    80002ebc:	00f487b3          	add	a5,s1,a5
    80002ec0:	06f5e463          	bltu	a1,a5,80002f28 <freerange+0xa8>
    80002ec4:	00003a97          	auipc	s5,0x3
    80002ec8:	8bca8a93          	addi	s5,s5,-1860 # 80005780 <end>
    80002ecc:	0954e263          	bltu	s1,s5,80002f50 <freerange+0xd0>
    80002ed0:	01100993          	li	s3,17
    80002ed4:	01b99993          	slli	s3,s3,0x1b
    80002ed8:	0734fc63          	bgeu	s1,s3,80002f50 <freerange+0xd0>
    80002edc:	00058a13          	mv	s4,a1
    80002ee0:	00001917          	auipc	s2,0x1
    80002ee4:	63090913          	addi	s2,s2,1584 # 80004510 <kmem>
    80002ee8:	00002b37          	lui	s6,0x2
    80002eec:	0140006f          	j	80002f00 <freerange+0x80>
    80002ef0:	000017b7          	lui	a5,0x1
    80002ef4:	00f484b3          	add	s1,s1,a5
    80002ef8:	0554ec63          	bltu	s1,s5,80002f50 <freerange+0xd0>
    80002efc:	0534fa63          	bgeu	s1,s3,80002f50 <freerange+0xd0>
    80002f00:	00001637          	lui	a2,0x1
    80002f04:	00100593          	li	a1,1
    80002f08:	00048513          	mv	a0,s1
    80002f0c:	00000097          	auipc	ra,0x0
    80002f10:	50c080e7          	jalr	1292(ra) # 80003418 <__memset>
    80002f14:	00093703          	ld	a4,0(s2)
    80002f18:	016487b3          	add	a5,s1,s6
    80002f1c:	00e4b023          	sd	a4,0(s1)
    80002f20:	00993023          	sd	s1,0(s2)
    80002f24:	fcfa76e3          	bgeu	s4,a5,80002ef0 <freerange+0x70>
    80002f28:	03813083          	ld	ra,56(sp)
    80002f2c:	03013403          	ld	s0,48(sp)
    80002f30:	02813483          	ld	s1,40(sp)
    80002f34:	02013903          	ld	s2,32(sp)
    80002f38:	01813983          	ld	s3,24(sp)
    80002f3c:	01013a03          	ld	s4,16(sp)
    80002f40:	00813a83          	ld	s5,8(sp)
    80002f44:	00013b03          	ld	s6,0(sp)
    80002f48:	04010113          	addi	sp,sp,64
    80002f4c:	00008067          	ret
    80002f50:	00001517          	auipc	a0,0x1
    80002f54:	2a850513          	addi	a0,a0,680 # 800041f8 <digits+0x18>
    80002f58:	fffff097          	auipc	ra,0xfffff
    80002f5c:	3d4080e7          	jalr	980(ra) # 8000232c <panic>

0000000080002f60 <kfree>:
    80002f60:	fe010113          	addi	sp,sp,-32
    80002f64:	00813823          	sd	s0,16(sp)
    80002f68:	00113c23          	sd	ra,24(sp)
    80002f6c:	00913423          	sd	s1,8(sp)
    80002f70:	02010413          	addi	s0,sp,32
    80002f74:	03451793          	slli	a5,a0,0x34
    80002f78:	04079c63          	bnez	a5,80002fd0 <kfree+0x70>
    80002f7c:	00003797          	auipc	a5,0x3
    80002f80:	80478793          	addi	a5,a5,-2044 # 80005780 <end>
    80002f84:	00050493          	mv	s1,a0
    80002f88:	04f56463          	bltu	a0,a5,80002fd0 <kfree+0x70>
    80002f8c:	01100793          	li	a5,17
    80002f90:	01b79793          	slli	a5,a5,0x1b
    80002f94:	02f57e63          	bgeu	a0,a5,80002fd0 <kfree+0x70>
    80002f98:	00001637          	lui	a2,0x1
    80002f9c:	00100593          	li	a1,1
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	478080e7          	jalr	1144(ra) # 80003418 <__memset>
    80002fa8:	00001797          	auipc	a5,0x1
    80002fac:	56878793          	addi	a5,a5,1384 # 80004510 <kmem>
    80002fb0:	0007b703          	ld	a4,0(a5)
    80002fb4:	01813083          	ld	ra,24(sp)
    80002fb8:	01013403          	ld	s0,16(sp)
    80002fbc:	00e4b023          	sd	a4,0(s1)
    80002fc0:	0097b023          	sd	s1,0(a5)
    80002fc4:	00813483          	ld	s1,8(sp)
    80002fc8:	02010113          	addi	sp,sp,32
    80002fcc:	00008067          	ret
    80002fd0:	00001517          	auipc	a0,0x1
    80002fd4:	22850513          	addi	a0,a0,552 # 800041f8 <digits+0x18>
    80002fd8:	fffff097          	auipc	ra,0xfffff
    80002fdc:	354080e7          	jalr	852(ra) # 8000232c <panic>

0000000080002fe0 <kalloc>:
    80002fe0:	fe010113          	addi	sp,sp,-32
    80002fe4:	00813823          	sd	s0,16(sp)
    80002fe8:	00913423          	sd	s1,8(sp)
    80002fec:	00113c23          	sd	ra,24(sp)
    80002ff0:	02010413          	addi	s0,sp,32
    80002ff4:	00001797          	auipc	a5,0x1
    80002ff8:	51c78793          	addi	a5,a5,1308 # 80004510 <kmem>
    80002ffc:	0007b483          	ld	s1,0(a5)
    80003000:	02048063          	beqz	s1,80003020 <kalloc+0x40>
    80003004:	0004b703          	ld	a4,0(s1)
    80003008:	00001637          	lui	a2,0x1
    8000300c:	00500593          	li	a1,5
    80003010:	00048513          	mv	a0,s1
    80003014:	00e7b023          	sd	a4,0(a5)
    80003018:	00000097          	auipc	ra,0x0
    8000301c:	400080e7          	jalr	1024(ra) # 80003418 <__memset>
    80003020:	01813083          	ld	ra,24(sp)
    80003024:	01013403          	ld	s0,16(sp)
    80003028:	00048513          	mv	a0,s1
    8000302c:	00813483          	ld	s1,8(sp)
    80003030:	02010113          	addi	sp,sp,32
    80003034:	00008067          	ret

0000000080003038 <initlock>:
    80003038:	ff010113          	addi	sp,sp,-16
    8000303c:	00813423          	sd	s0,8(sp)
    80003040:	01010413          	addi	s0,sp,16
    80003044:	00813403          	ld	s0,8(sp)
    80003048:	00b53423          	sd	a1,8(a0)
    8000304c:	00052023          	sw	zero,0(a0)
    80003050:	00053823          	sd	zero,16(a0)
    80003054:	01010113          	addi	sp,sp,16
    80003058:	00008067          	ret

000000008000305c <acquire>:
    8000305c:	fe010113          	addi	sp,sp,-32
    80003060:	00813823          	sd	s0,16(sp)
    80003064:	00913423          	sd	s1,8(sp)
    80003068:	00113c23          	sd	ra,24(sp)
    8000306c:	01213023          	sd	s2,0(sp)
    80003070:	02010413          	addi	s0,sp,32
    80003074:	00050493          	mv	s1,a0
    80003078:	10002973          	csrr	s2,sstatus
    8000307c:	100027f3          	csrr	a5,sstatus
    80003080:	ffd7f793          	andi	a5,a5,-3
    80003084:	10079073          	csrw	sstatus,a5
    80003088:	fffff097          	auipc	ra,0xfffff
    8000308c:	8e4080e7          	jalr	-1820(ra) # 8000196c <mycpu>
    80003090:	07852783          	lw	a5,120(a0)
    80003094:	06078e63          	beqz	a5,80003110 <acquire+0xb4>
    80003098:	fffff097          	auipc	ra,0xfffff
    8000309c:	8d4080e7          	jalr	-1836(ra) # 8000196c <mycpu>
    800030a0:	07852783          	lw	a5,120(a0)
    800030a4:	0004a703          	lw	a4,0(s1)
    800030a8:	0017879b          	addiw	a5,a5,1
    800030ac:	06f52c23          	sw	a5,120(a0)
    800030b0:	04071063          	bnez	a4,800030f0 <acquire+0x94>
    800030b4:	00100713          	li	a4,1
    800030b8:	00070793          	mv	a5,a4
    800030bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800030c0:	0007879b          	sext.w	a5,a5
    800030c4:	fe079ae3          	bnez	a5,800030b8 <acquire+0x5c>
    800030c8:	0ff0000f          	fence
    800030cc:	fffff097          	auipc	ra,0xfffff
    800030d0:	8a0080e7          	jalr	-1888(ra) # 8000196c <mycpu>
    800030d4:	01813083          	ld	ra,24(sp)
    800030d8:	01013403          	ld	s0,16(sp)
    800030dc:	00a4b823          	sd	a0,16(s1)
    800030e0:	00013903          	ld	s2,0(sp)
    800030e4:	00813483          	ld	s1,8(sp)
    800030e8:	02010113          	addi	sp,sp,32
    800030ec:	00008067          	ret
    800030f0:	0104b903          	ld	s2,16(s1)
    800030f4:	fffff097          	auipc	ra,0xfffff
    800030f8:	878080e7          	jalr	-1928(ra) # 8000196c <mycpu>
    800030fc:	faa91ce3          	bne	s2,a0,800030b4 <acquire+0x58>
    80003100:	00001517          	auipc	a0,0x1
    80003104:	10050513          	addi	a0,a0,256 # 80004200 <digits+0x20>
    80003108:	fffff097          	auipc	ra,0xfffff
    8000310c:	224080e7          	jalr	548(ra) # 8000232c <panic>
    80003110:	00195913          	srli	s2,s2,0x1
    80003114:	fffff097          	auipc	ra,0xfffff
    80003118:	858080e7          	jalr	-1960(ra) # 8000196c <mycpu>
    8000311c:	00197913          	andi	s2,s2,1
    80003120:	07252e23          	sw	s2,124(a0)
    80003124:	f75ff06f          	j	80003098 <acquire+0x3c>

0000000080003128 <release>:
    80003128:	fe010113          	addi	sp,sp,-32
    8000312c:	00813823          	sd	s0,16(sp)
    80003130:	00113c23          	sd	ra,24(sp)
    80003134:	00913423          	sd	s1,8(sp)
    80003138:	01213023          	sd	s2,0(sp)
    8000313c:	02010413          	addi	s0,sp,32
    80003140:	00052783          	lw	a5,0(a0)
    80003144:	00079a63          	bnez	a5,80003158 <release+0x30>
    80003148:	00001517          	auipc	a0,0x1
    8000314c:	0c050513          	addi	a0,a0,192 # 80004208 <digits+0x28>
    80003150:	fffff097          	auipc	ra,0xfffff
    80003154:	1dc080e7          	jalr	476(ra) # 8000232c <panic>
    80003158:	01053903          	ld	s2,16(a0)
    8000315c:	00050493          	mv	s1,a0
    80003160:	fffff097          	auipc	ra,0xfffff
    80003164:	80c080e7          	jalr	-2036(ra) # 8000196c <mycpu>
    80003168:	fea910e3          	bne	s2,a0,80003148 <release+0x20>
    8000316c:	0004b823          	sd	zero,16(s1)
    80003170:	0ff0000f          	fence
    80003174:	0f50000f          	fence	iorw,ow
    80003178:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000317c:	ffffe097          	auipc	ra,0xffffe
    80003180:	7f0080e7          	jalr	2032(ra) # 8000196c <mycpu>
    80003184:	100027f3          	csrr	a5,sstatus
    80003188:	0027f793          	andi	a5,a5,2
    8000318c:	04079a63          	bnez	a5,800031e0 <release+0xb8>
    80003190:	07852783          	lw	a5,120(a0)
    80003194:	02f05e63          	blez	a5,800031d0 <release+0xa8>
    80003198:	fff7871b          	addiw	a4,a5,-1
    8000319c:	06e52c23          	sw	a4,120(a0)
    800031a0:	00071c63          	bnez	a4,800031b8 <release+0x90>
    800031a4:	07c52783          	lw	a5,124(a0)
    800031a8:	00078863          	beqz	a5,800031b8 <release+0x90>
    800031ac:	100027f3          	csrr	a5,sstatus
    800031b0:	0027e793          	ori	a5,a5,2
    800031b4:	10079073          	csrw	sstatus,a5
    800031b8:	01813083          	ld	ra,24(sp)
    800031bc:	01013403          	ld	s0,16(sp)
    800031c0:	00813483          	ld	s1,8(sp)
    800031c4:	00013903          	ld	s2,0(sp)
    800031c8:	02010113          	addi	sp,sp,32
    800031cc:	00008067          	ret
    800031d0:	00001517          	auipc	a0,0x1
    800031d4:	05850513          	addi	a0,a0,88 # 80004228 <digits+0x48>
    800031d8:	fffff097          	auipc	ra,0xfffff
    800031dc:	154080e7          	jalr	340(ra) # 8000232c <panic>
    800031e0:	00001517          	auipc	a0,0x1
    800031e4:	03050513          	addi	a0,a0,48 # 80004210 <digits+0x30>
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	144080e7          	jalr	324(ra) # 8000232c <panic>

00000000800031f0 <holding>:
    800031f0:	00052783          	lw	a5,0(a0)
    800031f4:	00079663          	bnez	a5,80003200 <holding+0x10>
    800031f8:	00000513          	li	a0,0
    800031fc:	00008067          	ret
    80003200:	fe010113          	addi	sp,sp,-32
    80003204:	00813823          	sd	s0,16(sp)
    80003208:	00913423          	sd	s1,8(sp)
    8000320c:	00113c23          	sd	ra,24(sp)
    80003210:	02010413          	addi	s0,sp,32
    80003214:	01053483          	ld	s1,16(a0)
    80003218:	ffffe097          	auipc	ra,0xffffe
    8000321c:	754080e7          	jalr	1876(ra) # 8000196c <mycpu>
    80003220:	01813083          	ld	ra,24(sp)
    80003224:	01013403          	ld	s0,16(sp)
    80003228:	40a48533          	sub	a0,s1,a0
    8000322c:	00153513          	seqz	a0,a0
    80003230:	00813483          	ld	s1,8(sp)
    80003234:	02010113          	addi	sp,sp,32
    80003238:	00008067          	ret

000000008000323c <push_off>:
    8000323c:	fe010113          	addi	sp,sp,-32
    80003240:	00813823          	sd	s0,16(sp)
    80003244:	00113c23          	sd	ra,24(sp)
    80003248:	00913423          	sd	s1,8(sp)
    8000324c:	02010413          	addi	s0,sp,32
    80003250:	100024f3          	csrr	s1,sstatus
    80003254:	100027f3          	csrr	a5,sstatus
    80003258:	ffd7f793          	andi	a5,a5,-3
    8000325c:	10079073          	csrw	sstatus,a5
    80003260:	ffffe097          	auipc	ra,0xffffe
    80003264:	70c080e7          	jalr	1804(ra) # 8000196c <mycpu>
    80003268:	07852783          	lw	a5,120(a0)
    8000326c:	02078663          	beqz	a5,80003298 <push_off+0x5c>
    80003270:	ffffe097          	auipc	ra,0xffffe
    80003274:	6fc080e7          	jalr	1788(ra) # 8000196c <mycpu>
    80003278:	07852783          	lw	a5,120(a0)
    8000327c:	01813083          	ld	ra,24(sp)
    80003280:	01013403          	ld	s0,16(sp)
    80003284:	0017879b          	addiw	a5,a5,1
    80003288:	06f52c23          	sw	a5,120(a0)
    8000328c:	00813483          	ld	s1,8(sp)
    80003290:	02010113          	addi	sp,sp,32
    80003294:	00008067          	ret
    80003298:	0014d493          	srli	s1,s1,0x1
    8000329c:	ffffe097          	auipc	ra,0xffffe
    800032a0:	6d0080e7          	jalr	1744(ra) # 8000196c <mycpu>
    800032a4:	0014f493          	andi	s1,s1,1
    800032a8:	06952e23          	sw	s1,124(a0)
    800032ac:	fc5ff06f          	j	80003270 <push_off+0x34>

00000000800032b0 <pop_off>:
    800032b0:	ff010113          	addi	sp,sp,-16
    800032b4:	00813023          	sd	s0,0(sp)
    800032b8:	00113423          	sd	ra,8(sp)
    800032bc:	01010413          	addi	s0,sp,16
    800032c0:	ffffe097          	auipc	ra,0xffffe
    800032c4:	6ac080e7          	jalr	1708(ra) # 8000196c <mycpu>
    800032c8:	100027f3          	csrr	a5,sstatus
    800032cc:	0027f793          	andi	a5,a5,2
    800032d0:	04079663          	bnez	a5,8000331c <pop_off+0x6c>
    800032d4:	07852783          	lw	a5,120(a0)
    800032d8:	02f05a63          	blez	a5,8000330c <pop_off+0x5c>
    800032dc:	fff7871b          	addiw	a4,a5,-1
    800032e0:	06e52c23          	sw	a4,120(a0)
    800032e4:	00071c63          	bnez	a4,800032fc <pop_off+0x4c>
    800032e8:	07c52783          	lw	a5,124(a0)
    800032ec:	00078863          	beqz	a5,800032fc <pop_off+0x4c>
    800032f0:	100027f3          	csrr	a5,sstatus
    800032f4:	0027e793          	ori	a5,a5,2
    800032f8:	10079073          	csrw	sstatus,a5
    800032fc:	00813083          	ld	ra,8(sp)
    80003300:	00013403          	ld	s0,0(sp)
    80003304:	01010113          	addi	sp,sp,16
    80003308:	00008067          	ret
    8000330c:	00001517          	auipc	a0,0x1
    80003310:	f1c50513          	addi	a0,a0,-228 # 80004228 <digits+0x48>
    80003314:	fffff097          	auipc	ra,0xfffff
    80003318:	018080e7          	jalr	24(ra) # 8000232c <panic>
    8000331c:	00001517          	auipc	a0,0x1
    80003320:	ef450513          	addi	a0,a0,-268 # 80004210 <digits+0x30>
    80003324:	fffff097          	auipc	ra,0xfffff
    80003328:	008080e7          	jalr	8(ra) # 8000232c <panic>

000000008000332c <push_on>:
    8000332c:	fe010113          	addi	sp,sp,-32
    80003330:	00813823          	sd	s0,16(sp)
    80003334:	00113c23          	sd	ra,24(sp)
    80003338:	00913423          	sd	s1,8(sp)
    8000333c:	02010413          	addi	s0,sp,32
    80003340:	100024f3          	csrr	s1,sstatus
    80003344:	100027f3          	csrr	a5,sstatus
    80003348:	0027e793          	ori	a5,a5,2
    8000334c:	10079073          	csrw	sstatus,a5
    80003350:	ffffe097          	auipc	ra,0xffffe
    80003354:	61c080e7          	jalr	1564(ra) # 8000196c <mycpu>
    80003358:	07852783          	lw	a5,120(a0)
    8000335c:	02078663          	beqz	a5,80003388 <push_on+0x5c>
    80003360:	ffffe097          	auipc	ra,0xffffe
    80003364:	60c080e7          	jalr	1548(ra) # 8000196c <mycpu>
    80003368:	07852783          	lw	a5,120(a0)
    8000336c:	01813083          	ld	ra,24(sp)
    80003370:	01013403          	ld	s0,16(sp)
    80003374:	0017879b          	addiw	a5,a5,1
    80003378:	06f52c23          	sw	a5,120(a0)
    8000337c:	00813483          	ld	s1,8(sp)
    80003380:	02010113          	addi	sp,sp,32
    80003384:	00008067          	ret
    80003388:	0014d493          	srli	s1,s1,0x1
    8000338c:	ffffe097          	auipc	ra,0xffffe
    80003390:	5e0080e7          	jalr	1504(ra) # 8000196c <mycpu>
    80003394:	0014f493          	andi	s1,s1,1
    80003398:	06952e23          	sw	s1,124(a0)
    8000339c:	fc5ff06f          	j	80003360 <push_on+0x34>

00000000800033a0 <pop_on>:
    800033a0:	ff010113          	addi	sp,sp,-16
    800033a4:	00813023          	sd	s0,0(sp)
    800033a8:	00113423          	sd	ra,8(sp)
    800033ac:	01010413          	addi	s0,sp,16
    800033b0:	ffffe097          	auipc	ra,0xffffe
    800033b4:	5bc080e7          	jalr	1468(ra) # 8000196c <mycpu>
    800033b8:	100027f3          	csrr	a5,sstatus
    800033bc:	0027f793          	andi	a5,a5,2
    800033c0:	04078463          	beqz	a5,80003408 <pop_on+0x68>
    800033c4:	07852783          	lw	a5,120(a0)
    800033c8:	02f05863          	blez	a5,800033f8 <pop_on+0x58>
    800033cc:	fff7879b          	addiw	a5,a5,-1
    800033d0:	06f52c23          	sw	a5,120(a0)
    800033d4:	07853783          	ld	a5,120(a0)
    800033d8:	00079863          	bnez	a5,800033e8 <pop_on+0x48>
    800033dc:	100027f3          	csrr	a5,sstatus
    800033e0:	ffd7f793          	andi	a5,a5,-3
    800033e4:	10079073          	csrw	sstatus,a5
    800033e8:	00813083          	ld	ra,8(sp)
    800033ec:	00013403          	ld	s0,0(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret
    800033f8:	00001517          	auipc	a0,0x1
    800033fc:	e5850513          	addi	a0,a0,-424 # 80004250 <digits+0x70>
    80003400:	fffff097          	auipc	ra,0xfffff
    80003404:	f2c080e7          	jalr	-212(ra) # 8000232c <panic>
    80003408:	00001517          	auipc	a0,0x1
    8000340c:	e2850513          	addi	a0,a0,-472 # 80004230 <digits+0x50>
    80003410:	fffff097          	auipc	ra,0xfffff
    80003414:	f1c080e7          	jalr	-228(ra) # 8000232c <panic>

0000000080003418 <__memset>:
    80003418:	ff010113          	addi	sp,sp,-16
    8000341c:	00813423          	sd	s0,8(sp)
    80003420:	01010413          	addi	s0,sp,16
    80003424:	1a060e63          	beqz	a2,800035e0 <__memset+0x1c8>
    80003428:	40a007b3          	neg	a5,a0
    8000342c:	0077f793          	andi	a5,a5,7
    80003430:	00778693          	addi	a3,a5,7
    80003434:	00b00813          	li	a6,11
    80003438:	0ff5f593          	andi	a1,a1,255
    8000343c:	fff6071b          	addiw	a4,a2,-1
    80003440:	1b06e663          	bltu	a3,a6,800035ec <__memset+0x1d4>
    80003444:	1cd76463          	bltu	a4,a3,8000360c <__memset+0x1f4>
    80003448:	1a078e63          	beqz	a5,80003604 <__memset+0x1ec>
    8000344c:	00b50023          	sb	a1,0(a0)
    80003450:	00100713          	li	a4,1
    80003454:	1ae78463          	beq	a5,a4,800035fc <__memset+0x1e4>
    80003458:	00b500a3          	sb	a1,1(a0)
    8000345c:	00200713          	li	a4,2
    80003460:	1ae78a63          	beq	a5,a4,80003614 <__memset+0x1fc>
    80003464:	00b50123          	sb	a1,2(a0)
    80003468:	00300713          	li	a4,3
    8000346c:	18e78463          	beq	a5,a4,800035f4 <__memset+0x1dc>
    80003470:	00b501a3          	sb	a1,3(a0)
    80003474:	00400713          	li	a4,4
    80003478:	1ae78263          	beq	a5,a4,8000361c <__memset+0x204>
    8000347c:	00b50223          	sb	a1,4(a0)
    80003480:	00500713          	li	a4,5
    80003484:	1ae78063          	beq	a5,a4,80003624 <__memset+0x20c>
    80003488:	00b502a3          	sb	a1,5(a0)
    8000348c:	00700713          	li	a4,7
    80003490:	18e79e63          	bne	a5,a4,8000362c <__memset+0x214>
    80003494:	00b50323          	sb	a1,6(a0)
    80003498:	00700e93          	li	t4,7
    8000349c:	00859713          	slli	a4,a1,0x8
    800034a0:	00e5e733          	or	a4,a1,a4
    800034a4:	01059e13          	slli	t3,a1,0x10
    800034a8:	01c76e33          	or	t3,a4,t3
    800034ac:	01859313          	slli	t1,a1,0x18
    800034b0:	006e6333          	or	t1,t3,t1
    800034b4:	02059893          	slli	a7,a1,0x20
    800034b8:	40f60e3b          	subw	t3,a2,a5
    800034bc:	011368b3          	or	a7,t1,a7
    800034c0:	02859813          	slli	a6,a1,0x28
    800034c4:	0108e833          	or	a6,a7,a6
    800034c8:	03059693          	slli	a3,a1,0x30
    800034cc:	003e589b          	srliw	a7,t3,0x3
    800034d0:	00d866b3          	or	a3,a6,a3
    800034d4:	03859713          	slli	a4,a1,0x38
    800034d8:	00389813          	slli	a6,a7,0x3
    800034dc:	00f507b3          	add	a5,a0,a5
    800034e0:	00e6e733          	or	a4,a3,a4
    800034e4:	000e089b          	sext.w	a7,t3
    800034e8:	00f806b3          	add	a3,a6,a5
    800034ec:	00e7b023          	sd	a4,0(a5)
    800034f0:	00878793          	addi	a5,a5,8
    800034f4:	fed79ce3          	bne	a5,a3,800034ec <__memset+0xd4>
    800034f8:	ff8e7793          	andi	a5,t3,-8
    800034fc:	0007871b          	sext.w	a4,a5
    80003500:	01d787bb          	addw	a5,a5,t4
    80003504:	0ce88e63          	beq	a7,a4,800035e0 <__memset+0x1c8>
    80003508:	00f50733          	add	a4,a0,a5
    8000350c:	00b70023          	sb	a1,0(a4)
    80003510:	0017871b          	addiw	a4,a5,1
    80003514:	0cc77663          	bgeu	a4,a2,800035e0 <__memset+0x1c8>
    80003518:	00e50733          	add	a4,a0,a4
    8000351c:	00b70023          	sb	a1,0(a4)
    80003520:	0027871b          	addiw	a4,a5,2
    80003524:	0ac77e63          	bgeu	a4,a2,800035e0 <__memset+0x1c8>
    80003528:	00e50733          	add	a4,a0,a4
    8000352c:	00b70023          	sb	a1,0(a4)
    80003530:	0037871b          	addiw	a4,a5,3
    80003534:	0ac77663          	bgeu	a4,a2,800035e0 <__memset+0x1c8>
    80003538:	00e50733          	add	a4,a0,a4
    8000353c:	00b70023          	sb	a1,0(a4)
    80003540:	0047871b          	addiw	a4,a5,4
    80003544:	08c77e63          	bgeu	a4,a2,800035e0 <__memset+0x1c8>
    80003548:	00e50733          	add	a4,a0,a4
    8000354c:	00b70023          	sb	a1,0(a4)
    80003550:	0057871b          	addiw	a4,a5,5
    80003554:	08c77663          	bgeu	a4,a2,800035e0 <__memset+0x1c8>
    80003558:	00e50733          	add	a4,a0,a4
    8000355c:	00b70023          	sb	a1,0(a4)
    80003560:	0067871b          	addiw	a4,a5,6
    80003564:	06c77e63          	bgeu	a4,a2,800035e0 <__memset+0x1c8>
    80003568:	00e50733          	add	a4,a0,a4
    8000356c:	00b70023          	sb	a1,0(a4)
    80003570:	0077871b          	addiw	a4,a5,7
    80003574:	06c77663          	bgeu	a4,a2,800035e0 <__memset+0x1c8>
    80003578:	00e50733          	add	a4,a0,a4
    8000357c:	00b70023          	sb	a1,0(a4)
    80003580:	0087871b          	addiw	a4,a5,8
    80003584:	04c77e63          	bgeu	a4,a2,800035e0 <__memset+0x1c8>
    80003588:	00e50733          	add	a4,a0,a4
    8000358c:	00b70023          	sb	a1,0(a4)
    80003590:	0097871b          	addiw	a4,a5,9
    80003594:	04c77663          	bgeu	a4,a2,800035e0 <__memset+0x1c8>
    80003598:	00e50733          	add	a4,a0,a4
    8000359c:	00b70023          	sb	a1,0(a4)
    800035a0:	00a7871b          	addiw	a4,a5,10
    800035a4:	02c77e63          	bgeu	a4,a2,800035e0 <__memset+0x1c8>
    800035a8:	00e50733          	add	a4,a0,a4
    800035ac:	00b70023          	sb	a1,0(a4)
    800035b0:	00b7871b          	addiw	a4,a5,11
    800035b4:	02c77663          	bgeu	a4,a2,800035e0 <__memset+0x1c8>
    800035b8:	00e50733          	add	a4,a0,a4
    800035bc:	00b70023          	sb	a1,0(a4)
    800035c0:	00c7871b          	addiw	a4,a5,12
    800035c4:	00c77e63          	bgeu	a4,a2,800035e0 <__memset+0x1c8>
    800035c8:	00e50733          	add	a4,a0,a4
    800035cc:	00b70023          	sb	a1,0(a4)
    800035d0:	00d7879b          	addiw	a5,a5,13
    800035d4:	00c7f663          	bgeu	a5,a2,800035e0 <__memset+0x1c8>
    800035d8:	00f507b3          	add	a5,a0,a5
    800035dc:	00b78023          	sb	a1,0(a5)
    800035e0:	00813403          	ld	s0,8(sp)
    800035e4:	01010113          	addi	sp,sp,16
    800035e8:	00008067          	ret
    800035ec:	00b00693          	li	a3,11
    800035f0:	e55ff06f          	j	80003444 <__memset+0x2c>
    800035f4:	00300e93          	li	t4,3
    800035f8:	ea5ff06f          	j	8000349c <__memset+0x84>
    800035fc:	00100e93          	li	t4,1
    80003600:	e9dff06f          	j	8000349c <__memset+0x84>
    80003604:	00000e93          	li	t4,0
    80003608:	e95ff06f          	j	8000349c <__memset+0x84>
    8000360c:	00000793          	li	a5,0
    80003610:	ef9ff06f          	j	80003508 <__memset+0xf0>
    80003614:	00200e93          	li	t4,2
    80003618:	e85ff06f          	j	8000349c <__memset+0x84>
    8000361c:	00400e93          	li	t4,4
    80003620:	e7dff06f          	j	8000349c <__memset+0x84>
    80003624:	00500e93          	li	t4,5
    80003628:	e75ff06f          	j	8000349c <__memset+0x84>
    8000362c:	00600e93          	li	t4,6
    80003630:	e6dff06f          	j	8000349c <__memset+0x84>

0000000080003634 <__memmove>:
    80003634:	ff010113          	addi	sp,sp,-16
    80003638:	00813423          	sd	s0,8(sp)
    8000363c:	01010413          	addi	s0,sp,16
    80003640:	0e060863          	beqz	a2,80003730 <__memmove+0xfc>
    80003644:	fff6069b          	addiw	a3,a2,-1
    80003648:	0006881b          	sext.w	a6,a3
    8000364c:	0ea5e863          	bltu	a1,a0,8000373c <__memmove+0x108>
    80003650:	00758713          	addi	a4,a1,7
    80003654:	00a5e7b3          	or	a5,a1,a0
    80003658:	40a70733          	sub	a4,a4,a0
    8000365c:	0077f793          	andi	a5,a5,7
    80003660:	00f73713          	sltiu	a4,a4,15
    80003664:	00174713          	xori	a4,a4,1
    80003668:	0017b793          	seqz	a5,a5
    8000366c:	00e7f7b3          	and	a5,a5,a4
    80003670:	10078863          	beqz	a5,80003780 <__memmove+0x14c>
    80003674:	00900793          	li	a5,9
    80003678:	1107f463          	bgeu	a5,a6,80003780 <__memmove+0x14c>
    8000367c:	0036581b          	srliw	a6,a2,0x3
    80003680:	fff8081b          	addiw	a6,a6,-1
    80003684:	02081813          	slli	a6,a6,0x20
    80003688:	01d85893          	srli	a7,a6,0x1d
    8000368c:	00858813          	addi	a6,a1,8
    80003690:	00058793          	mv	a5,a1
    80003694:	00050713          	mv	a4,a0
    80003698:	01088833          	add	a6,a7,a6
    8000369c:	0007b883          	ld	a7,0(a5)
    800036a0:	00878793          	addi	a5,a5,8
    800036a4:	00870713          	addi	a4,a4,8
    800036a8:	ff173c23          	sd	a7,-8(a4)
    800036ac:	ff0798e3          	bne	a5,a6,8000369c <__memmove+0x68>
    800036b0:	ff867713          	andi	a4,a2,-8
    800036b4:	02071793          	slli	a5,a4,0x20
    800036b8:	0207d793          	srli	a5,a5,0x20
    800036bc:	00f585b3          	add	a1,a1,a5
    800036c0:	40e686bb          	subw	a3,a3,a4
    800036c4:	00f507b3          	add	a5,a0,a5
    800036c8:	06e60463          	beq	a2,a4,80003730 <__memmove+0xfc>
    800036cc:	0005c703          	lbu	a4,0(a1)
    800036d0:	00e78023          	sb	a4,0(a5)
    800036d4:	04068e63          	beqz	a3,80003730 <__memmove+0xfc>
    800036d8:	0015c603          	lbu	a2,1(a1)
    800036dc:	00100713          	li	a4,1
    800036e0:	00c780a3          	sb	a2,1(a5)
    800036e4:	04e68663          	beq	a3,a4,80003730 <__memmove+0xfc>
    800036e8:	0025c603          	lbu	a2,2(a1)
    800036ec:	00200713          	li	a4,2
    800036f0:	00c78123          	sb	a2,2(a5)
    800036f4:	02e68e63          	beq	a3,a4,80003730 <__memmove+0xfc>
    800036f8:	0035c603          	lbu	a2,3(a1)
    800036fc:	00300713          	li	a4,3
    80003700:	00c781a3          	sb	a2,3(a5)
    80003704:	02e68663          	beq	a3,a4,80003730 <__memmove+0xfc>
    80003708:	0045c603          	lbu	a2,4(a1)
    8000370c:	00400713          	li	a4,4
    80003710:	00c78223          	sb	a2,4(a5)
    80003714:	00e68e63          	beq	a3,a4,80003730 <__memmove+0xfc>
    80003718:	0055c603          	lbu	a2,5(a1)
    8000371c:	00500713          	li	a4,5
    80003720:	00c782a3          	sb	a2,5(a5)
    80003724:	00e68663          	beq	a3,a4,80003730 <__memmove+0xfc>
    80003728:	0065c703          	lbu	a4,6(a1)
    8000372c:	00e78323          	sb	a4,6(a5)
    80003730:	00813403          	ld	s0,8(sp)
    80003734:	01010113          	addi	sp,sp,16
    80003738:	00008067          	ret
    8000373c:	02061713          	slli	a4,a2,0x20
    80003740:	02075713          	srli	a4,a4,0x20
    80003744:	00e587b3          	add	a5,a1,a4
    80003748:	f0f574e3          	bgeu	a0,a5,80003650 <__memmove+0x1c>
    8000374c:	02069613          	slli	a2,a3,0x20
    80003750:	02065613          	srli	a2,a2,0x20
    80003754:	fff64613          	not	a2,a2
    80003758:	00e50733          	add	a4,a0,a4
    8000375c:	00c78633          	add	a2,a5,a2
    80003760:	fff7c683          	lbu	a3,-1(a5)
    80003764:	fff78793          	addi	a5,a5,-1
    80003768:	fff70713          	addi	a4,a4,-1
    8000376c:	00d70023          	sb	a3,0(a4)
    80003770:	fec798e3          	bne	a5,a2,80003760 <__memmove+0x12c>
    80003774:	00813403          	ld	s0,8(sp)
    80003778:	01010113          	addi	sp,sp,16
    8000377c:	00008067          	ret
    80003780:	02069713          	slli	a4,a3,0x20
    80003784:	02075713          	srli	a4,a4,0x20
    80003788:	00170713          	addi	a4,a4,1
    8000378c:	00e50733          	add	a4,a0,a4
    80003790:	00050793          	mv	a5,a0
    80003794:	0005c683          	lbu	a3,0(a1)
    80003798:	00178793          	addi	a5,a5,1
    8000379c:	00158593          	addi	a1,a1,1
    800037a0:	fed78fa3          	sb	a3,-1(a5)
    800037a4:	fee798e3          	bne	a5,a4,80003794 <__memmove+0x160>
    800037a8:	f89ff06f          	j	80003730 <__memmove+0xfc>

00000000800037ac <__putc>:
    800037ac:	fe010113          	addi	sp,sp,-32
    800037b0:	00813823          	sd	s0,16(sp)
    800037b4:	00113c23          	sd	ra,24(sp)
    800037b8:	02010413          	addi	s0,sp,32
    800037bc:	00050793          	mv	a5,a0
    800037c0:	fef40593          	addi	a1,s0,-17
    800037c4:	00100613          	li	a2,1
    800037c8:	00000513          	li	a0,0
    800037cc:	fef407a3          	sb	a5,-17(s0)
    800037d0:	fffff097          	auipc	ra,0xfffff
    800037d4:	b3c080e7          	jalr	-1220(ra) # 8000230c <console_write>
    800037d8:	01813083          	ld	ra,24(sp)
    800037dc:	01013403          	ld	s0,16(sp)
    800037e0:	02010113          	addi	sp,sp,32
    800037e4:	00008067          	ret

00000000800037e8 <__getc>:
    800037e8:	fe010113          	addi	sp,sp,-32
    800037ec:	00813823          	sd	s0,16(sp)
    800037f0:	00113c23          	sd	ra,24(sp)
    800037f4:	02010413          	addi	s0,sp,32
    800037f8:	fe840593          	addi	a1,s0,-24
    800037fc:	00100613          	li	a2,1
    80003800:	00000513          	li	a0,0
    80003804:	fffff097          	auipc	ra,0xfffff
    80003808:	ae8080e7          	jalr	-1304(ra) # 800022ec <console_read>
    8000380c:	fe844503          	lbu	a0,-24(s0)
    80003810:	01813083          	ld	ra,24(sp)
    80003814:	01013403          	ld	s0,16(sp)
    80003818:	02010113          	addi	sp,sp,32
    8000381c:	00008067          	ret

0000000080003820 <console_handler>:
    80003820:	fe010113          	addi	sp,sp,-32
    80003824:	00813823          	sd	s0,16(sp)
    80003828:	00113c23          	sd	ra,24(sp)
    8000382c:	00913423          	sd	s1,8(sp)
    80003830:	02010413          	addi	s0,sp,32
    80003834:	14202773          	csrr	a4,scause
    80003838:	100027f3          	csrr	a5,sstatus
    8000383c:	0027f793          	andi	a5,a5,2
    80003840:	06079e63          	bnez	a5,800038bc <console_handler+0x9c>
    80003844:	00074c63          	bltz	a4,8000385c <console_handler+0x3c>
    80003848:	01813083          	ld	ra,24(sp)
    8000384c:	01013403          	ld	s0,16(sp)
    80003850:	00813483          	ld	s1,8(sp)
    80003854:	02010113          	addi	sp,sp,32
    80003858:	00008067          	ret
    8000385c:	0ff77713          	andi	a4,a4,255
    80003860:	00900793          	li	a5,9
    80003864:	fef712e3          	bne	a4,a5,80003848 <console_handler+0x28>
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	6dc080e7          	jalr	1756(ra) # 80001f44 <plic_claim>
    80003870:	00a00793          	li	a5,10
    80003874:	00050493          	mv	s1,a0
    80003878:	02f50c63          	beq	a0,a5,800038b0 <console_handler+0x90>
    8000387c:	fc0506e3          	beqz	a0,80003848 <console_handler+0x28>
    80003880:	00050593          	mv	a1,a0
    80003884:	00001517          	auipc	a0,0x1
    80003888:	8d450513          	addi	a0,a0,-1836 # 80004158 <CONSOLE_STATUS+0x148>
    8000388c:	fffff097          	auipc	ra,0xfffff
    80003890:	afc080e7          	jalr	-1284(ra) # 80002388 <__printf>
    80003894:	01013403          	ld	s0,16(sp)
    80003898:	01813083          	ld	ra,24(sp)
    8000389c:	00048513          	mv	a0,s1
    800038a0:	00813483          	ld	s1,8(sp)
    800038a4:	02010113          	addi	sp,sp,32
    800038a8:	ffffe317          	auipc	t1,0xffffe
    800038ac:	6d430067          	jr	1748(t1) # 80001f7c <plic_complete>
    800038b0:	fffff097          	auipc	ra,0xfffff
    800038b4:	3e0080e7          	jalr	992(ra) # 80002c90 <uartintr>
    800038b8:	fddff06f          	j	80003894 <console_handler+0x74>
    800038bc:	00001517          	auipc	a0,0x1
    800038c0:	99c50513          	addi	a0,a0,-1636 # 80004258 <digits+0x78>
    800038c4:	fffff097          	auipc	ra,0xfffff
    800038c8:	a68080e7          	jalr	-1432(ra) # 8000232c <panic>
	...
