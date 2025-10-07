
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	54013103          	ld	sp,1344(sp) # 80004540 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	025010ef          	jal	ra,80001840 <start>

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
    80001084:	4e8000ef          	jal	ra,8000156c <_ZN5Riscv11trapHandlerEv>

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
    80001148:	7b8080e7          	jalr	1976(ra) # 800038fc <__putc>
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
    80001184:	77c080e7          	jalr	1916(ra) # 800038fc <__putc>
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
    800011ec:	714080e7          	jalr	1812(ra) # 800038fc <__putc>
    800011f0:	0240006f          	j	80001214 <_Z11printNumberm+0x74>
    while(i--) __putc(buf[i]);
    800011f4:	fe040793          	addi	a5,s0,-32
    800011f8:	009787b3          	add	a5,a5,s1
    800011fc:	fe87c503          	lbu	a0,-24(a5)
    80001200:	00002097          	auipc	ra,0x2
    80001204:	6fc080e7          	jalr	1788(ra) # 800038fc <__putc>
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
    8000126c:	34c080e7          	jalr	844(ra) # 800015b4 <_ZN15MemoryAllocator8initHeapEv>
    Riscv::setupTrapHandler();
    80001270:	00000097          	auipc	ra,0x0
    80001274:	2d8080e7          	jalr	728(ra) # 80001548 <_ZN5Riscv16setupTrapHandlerEv>

    BlockHeader* curr = MemoryAllocator::freeListHead;
    80001278:	00003797          	auipc	a5,0x3
    8000127c:	2d87b783          	ld	a5,728(a5) # 80004550 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    800012e0:	328080e7          	jalr	808(ra) # 80001604 <_ZN15MemoryAllocator9mem_allocEm>
    800012e4:	00050493          	mv	s1,a0
    void* p2 = MemoryAllocator::mem_alloc(20);
    800012e8:	01400513          	li	a0,20
    800012ec:	00000097          	auipc	ra,0x0
    800012f0:	318080e7          	jalr	792(ra) # 80001604 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001358:	3b0080e7          	jalr	944(ra) # 80001704 <_ZN15MemoryAllocator8mem_freeEPv>
    printString("Freed p1\n");
    8000135c:	00003517          	auipc	a0,0x3
    80001360:	cec50513          	addi	a0,a0,-788 # 80004048 <CONSOLE_STATUS+0x38>
    80001364:	00000097          	auipc	ra,0x0
    80001368:	df8080e7          	jalr	-520(ra) # 8000115c <_Z11printStringPKc>

    curr = MemoryAllocator::freeListHead;
    8000136c:	00003797          	auipc	a5,0x3
    80001370:	1e47b783          	ld	a5,484(a5) # 80004550 <_GLOBAL_OFFSET_TABLE_+0x20>
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

    printString("Total free space: ");
    800013cc:	00003517          	auipc	a0,0x3
    800013d0:	c8c50513          	addi	a0,a0,-884 # 80004058 <CONSOLE_STATUS+0x48>
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	d88080e7          	jalr	-632(ra) # 8000115c <_Z11printStringPKc>
    printNumber(MemoryAllocator::mem_get_free_space());
    800013dc:	00000097          	auipc	ra,0x0
    800013e0:	3cc080e7          	jalr	972(ra) # 800017a8 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
    800013e4:	00000097          	auipc	ra,0x0
    800013e8:	dbc080e7          	jalr	-580(ra) # 800011a0 <_Z11printNumberm>
    printString("\n");
    800013ec:	00003517          	auipc	a0,0x3
    800013f0:	c6450513          	addi	a0,a0,-924 # 80004050 <CONSOLE_STATUS+0x40>
    800013f4:	00000097          	auipc	ra,0x0
    800013f8:	d68080e7          	jalr	-664(ra) # 8000115c <_Z11printStringPKc>

    printString("Largest free block: ");
    800013fc:	00003517          	auipc	a0,0x3
    80001400:	c7450513          	addi	a0,a0,-908 # 80004070 <CONSOLE_STATUS+0x60>
    80001404:	00000097          	auipc	ra,0x0
    80001408:	d58080e7          	jalr	-680(ra) # 8000115c <_Z11printStringPKc>
    printNumber(MemoryAllocator::mem_get_largest_free_block());
    8000140c:	00000097          	auipc	ra,0x0
    80001410:	3e4080e7          	jalr	996(ra) # 800017f0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
    80001414:	00000097          	auipc	ra,0x0
    80001418:	d8c080e7          	jalr	-628(ra) # 800011a0 <_Z11printNumberm>
    printString("\n");
    8000141c:	00003517          	auipc	a0,0x3
    80001420:	c3450513          	addi	a0,a0,-972 # 80004050 <CONSOLE_STATUS+0x40>
    80001424:	00000097          	auipc	ra,0x0
    80001428:	d38080e7          	jalr	-712(ra) # 8000115c <_Z11printStringPKc>

    MemoryAllocator::mem_free(p2);
    8000142c:	00090513          	mv	a0,s2
    80001430:	00000097          	auipc	ra,0x0
    80001434:	2d4080e7          	jalr	724(ra) # 80001704 <_ZN15MemoryAllocator8mem_freeEPv>
    printString("Freed p2\n");
    80001438:	00003517          	auipc	a0,0x3
    8000143c:	c5050513          	addi	a0,a0,-944 # 80004088 <CONSOLE_STATUS+0x78>
    80001440:	00000097          	auipc	ra,0x0
    80001444:	d1c080e7          	jalr	-740(ra) # 8000115c <_Z11printStringPKc>

    curr = MemoryAllocator::freeListHead;
    80001448:	00003797          	auipc	a5,0x3
    8000144c:	1087b783          	ld	a5,264(a5) # 80004550 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001450:	0007b483          	ld	s1,0(a5)
    while(curr) {
    80001454:	04048a63          	beqz	s1,800014a8 <main+0x258>
        printString("Free block at "); printPointer(curr);
    80001458:	00003517          	auipc	a0,0x3
    8000145c:	bc850513          	addi	a0,a0,-1080 # 80004020 <CONSOLE_STATUS+0x10>
    80001460:	00000097          	auipc	ra,0x0
    80001464:	cfc080e7          	jalr	-772(ra) # 8000115c <_Z11printStringPKc>
    80001468:	00048513          	mv	a0,s1
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	dbc080e7          	jalr	-580(ra) # 80001228 <_Z12printPointerPv>
        printString(" size "); printNumber(curr->size); printString("\n");
    80001474:	00003517          	auipc	a0,0x3
    80001478:	bbc50513          	addi	a0,a0,-1092 # 80004030 <CONSOLE_STATUS+0x20>
    8000147c:	00000097          	auipc	ra,0x0
    80001480:	ce0080e7          	jalr	-800(ra) # 8000115c <_Z11printStringPKc>
    80001484:	0084b503          	ld	a0,8(s1)
    80001488:	00000097          	auipc	ra,0x0
    8000148c:	d18080e7          	jalr	-744(ra) # 800011a0 <_Z11printNumberm>
    80001490:	00003517          	auipc	a0,0x3
    80001494:	bc050513          	addi	a0,a0,-1088 # 80004050 <CONSOLE_STATUS+0x40>
    80001498:	00000097          	auipc	ra,0x0
    8000149c:	cc4080e7          	jalr	-828(ra) # 8000115c <_Z11printStringPKc>
        curr = curr->next;
    800014a0:	0004b483          	ld	s1,0(s1)
    while(curr) {
    800014a4:	fb1ff06f          	j	80001454 <main+0x204>
    }

    printString("Total free space: ");
    800014a8:	00003517          	auipc	a0,0x3
    800014ac:	bb050513          	addi	a0,a0,-1104 # 80004058 <CONSOLE_STATUS+0x48>
    800014b0:	00000097          	auipc	ra,0x0
    800014b4:	cac080e7          	jalr	-852(ra) # 8000115c <_Z11printStringPKc>
    printNumber(MemoryAllocator::mem_get_free_space());
    800014b8:	00000097          	auipc	ra,0x0
    800014bc:	2f0080e7          	jalr	752(ra) # 800017a8 <_ZN15MemoryAllocator18mem_get_free_spaceEv>
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	ce0080e7          	jalr	-800(ra) # 800011a0 <_Z11printNumberm>
    printString("\n");
    800014c8:	00003517          	auipc	a0,0x3
    800014cc:	b8850513          	addi	a0,a0,-1144 # 80004050 <CONSOLE_STATUS+0x40>
    800014d0:	00000097          	auipc	ra,0x0
    800014d4:	c8c080e7          	jalr	-884(ra) # 8000115c <_Z11printStringPKc>

    printString("Largest free block: ");
    800014d8:	00003517          	auipc	a0,0x3
    800014dc:	b9850513          	addi	a0,a0,-1128 # 80004070 <CONSOLE_STATUS+0x60>
    800014e0:	00000097          	auipc	ra,0x0
    800014e4:	c7c080e7          	jalr	-900(ra) # 8000115c <_Z11printStringPKc>
    printNumber(MemoryAllocator::mem_get_largest_free_block());
    800014e8:	00000097          	auipc	ra,0x0
    800014ec:	308080e7          	jalr	776(ra) # 800017f0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	cb0080e7          	jalr	-848(ra) # 800011a0 <_Z11printNumberm>
    printString("\n");
    800014f8:	00003517          	auipc	a0,0x3
    800014fc:	b5850513          	addi	a0,a0,-1192 # 80004050 <CONSOLE_STATUS+0x40>
    80001500:	00000097          	auipc	ra,0x0
    80001504:	c5c080e7          	jalr	-932(ra) # 8000115c <_Z11printStringPKc>

    printString("Pre ecall\n");
    80001508:	00003517          	auipc	a0,0x3
    8000150c:	b9050513          	addi	a0,a0,-1136 # 80004098 <CONSOLE_STATUS+0x88>
    80001510:	00000097          	auipc	ra,0x0
    80001514:	c4c080e7          	jalr	-948(ra) # 8000115c <_Z11printStringPKc>

    test_ecall();
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	bf8080e7          	jalr	-1032(ra) # 80001110 <_Z10test_ecallv>

    printString("After ecall\n");
    80001520:	00003517          	auipc	a0,0x3
    80001524:	b8850513          	addi	a0,a0,-1144 # 800040a8 <CONSOLE_STATUS+0x98>
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	c34080e7          	jalr	-972(ra) # 8000115c <_Z11printStringPKc>
    80001530:	01813083          	ld	ra,24(sp)
    80001534:	01013403          	ld	s0,16(sp)
    80001538:	00813483          	ld	s1,8(sp)
    8000153c:	00013903          	ld	s2,0(sp)
    80001540:	02010113          	addi	sp,sp,32
    80001544:	00008067          	ret

0000000080001548 <_ZN5Riscv16setupTrapHandlerEv>:
constexpr uint64 MEM_ALLOC = 0x01;
constexpr uint64 MEM_FREE = 0x02;
constexpr uint64 MEM_GET_FREE_SPACE = 0x03;
constexpr uint64 MEM_GET_LARGEST_FREE_BLOCK = 0x04;

void Riscv::setupTrapHandler() {
    80001548:	ff010113          	addi	sp,sp,-16
    8000154c:	00813423          	sd	s0,8(sp)
    80001550:	01010413          	addi	s0,sp,16
    unsigned long addr = (unsigned long)&trap_handler;
    80001554:	00003797          	auipc	a5,0x3
    80001558:	ff47b783          	ld	a5,-12(a5) # 80004548 <_GLOBAL_OFFSET_TABLE_+0x18>
    asm volatile("csrw stvec, %0" :: "r"(addr));
    8000155c:	10579073          	csrw	stvec,a5
}
    80001560:	00813403          	ld	s0,8(sp)
    80001564:	01010113          	addi	sp,sp,16
    80001568:	00008067          	ret

000000008000156c <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    8000156c:	ff010113          	addi	sp,sp,-16
    80001570:	00813423          	sd	s0,8(sp)
    80001574:	01010413          	addi	s0,sp,16
    uint64 scause = 0, sepc = 0;
    asm volatile("csrr %0, scause" : "=r"(scause));
    80001578:	14202773          	csrr	a4,scause
    asm volatile("csrr %0, sepc" : "=r"(sepc));
    8000157c:	141026f3          	csrr	a3,sepc

    uint64 interrupt = scause >> 63;
    uint64 cause = scause & 0x7FFFFFFFFFFFFFFF;
    80001580:	fff00793          	li	a5,-1
    80001584:	0017d793          	srli	a5,a5,0x1
    80001588:	00f777b3          	and	a5,a4,a5

    if (interrupt == 0 && cause == 9) {
    8000158c:	00074663          	bltz	a4,80001598 <_ZN5Riscv11trapHandlerEv+0x2c>
    80001590:	00900713          	li	a4,9
    80001594:	00e78863          	beq	a5,a4,800015a4 <_ZN5Riscv11trapHandlerEv+0x38>
        }

        sepc += 4;
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    }
}
    80001598:	00813403          	ld	s0,8(sp)
    8000159c:	01010113          	addi	sp,sp,16
    800015a0:	00008067          	ret
        asm volatile("mv %0, a0" : "=r"(code));
    800015a4:	00050793          	mv	a5,a0
        sepc += 4;
    800015a8:	00468693          	addi	a3,a3,4
        asm volatile("csrw sepc, %0" :: "r"(sepc));
    800015ac:	14169073          	csrw	sepc,a3
}
    800015b0:	fe9ff06f          	j	80001598 <_ZN5Riscv11trapHandlerEv+0x2c>

00000000800015b4 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    800015b4:	ff010113          	addi	sp,sp,-16
    800015b8:	00813423          	sd	s0,8(sp)
    800015bc:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    800015c0:	00003697          	auipc	a3,0x3
    800015c4:	f786b683          	ld	a3,-136(a3) # 80004538 <_GLOBAL_OFFSET_TABLE_+0x8>
    800015c8:	0006b783          	ld	a5,0(a3)
    800015cc:	00003717          	auipc	a4,0x3
    800015d0:	fd470713          	addi	a4,a4,-44 # 800045a0 <_ZN15MemoryAllocator12freeListHeadE>
    800015d4:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    800015d8:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    800015dc:	00003797          	auipc	a5,0x3
    800015e0:	f7c7b783          	ld	a5,-132(a5) # 80004558 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015e4:	0007b783          	ld	a5,0(a5)
    800015e8:	0006b683          	ld	a3,0(a3)
    800015ec:	00073703          	ld	a4,0(a4)
    800015f0:	40d787b3          	sub	a5,a5,a3
    800015f4:	00f73423          	sd	a5,8(a4)
}
    800015f8:	00813403          	ld	s0,8(sp)
    800015fc:	01010113          	addi	sp,sp,16
    80001600:	00008067          	ret

0000000080001604 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    80001604:	ff010113          	addi	sp,sp,-16
    80001608:	00813423          	sd	s0,8(sp)
    8000160c:	01010413          	addi	s0,sp,16
    80001610:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    80001614:	00003517          	auipc	a0,0x3
    80001618:	f8c53503          	ld	a0,-116(a0) # 800045a0 <_ZN15MemoryAllocator12freeListHeadE>
    8000161c:	06050063          	beqz	a0,8000167c <_ZN15MemoryAllocator9mem_allocEm+0x78>
    80001620:	08078a63          	beqz	a5,800016b4 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    80001624:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    80001628:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    8000162c:	00000613          	li	a2,0
    80001630:	00c0006f          	j	8000163c <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    80001634:	00050613          	mv	a2,a0
        curr = curr->next;
    80001638:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    8000163c:	00050663          	beqz	a0,80001648 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    80001640:	00853783          	ld	a5,8(a0)
    80001644:	fee7e8e3          	bltu	a5,a4,80001634 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    80001648:	02050a63          	beqz	a0,8000167c <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    8000164c:	00853583          	ld	a1,8(a0)
    80001650:	02068793          	addi	a5,a3,32
    80001654:	04f5e063          	bltu	a1,a5,80001694 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    80001658:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    8000165c:	40e585b3          	sub	a1,a1,a4
    80001660:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    80001664:	00053683          	ld	a3,0(a0)
    80001668:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    8000166c:	00060e63          	beqz	a2,80001688 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80001670:	00f63023          	sd	a5,0(a2)
        else freeListHead = newBlock;

        curr->size = totalSize;
    80001674:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (void*)((char*)curr + sizeof(BlockHeader));
    80001678:	01050513          	addi	a0,a0,16
}
    8000167c:	00813403          	ld	s0,8(sp)
    80001680:	01010113          	addi	sp,sp,16
    80001684:	00008067          	ret
        else freeListHead = newBlock;
    80001688:	00003697          	auipc	a3,0x3
    8000168c:	f0f6bc23          	sd	a5,-232(a3) # 800045a0 <_ZN15MemoryAllocator12freeListHeadE>
    80001690:	fe5ff06f          	j	80001674 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    80001694:	00060863          	beqz	a2,800016a4 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80001698:	00053783          	ld	a5,0(a0)
    8000169c:	00f63023          	sd	a5,0(a2)
    800016a0:	fd9ff06f          	j	80001678 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    800016a4:	00053783          	ld	a5,0(a0)
    800016a8:	00003717          	auipc	a4,0x3
    800016ac:	eef73c23          	sd	a5,-264(a4) # 800045a0 <_ZN15MemoryAllocator12freeListHeadE>
    800016b0:	fc9ff06f          	j	80001678 <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    800016b4:	00000513          	li	a0,0
    800016b8:	fc5ff06f          	j	8000167c <_ZN15MemoryAllocator9mem_allocEm+0x78>

00000000800016bc <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    800016bc:	ff010113          	addi	sp,sp,-16
    800016c0:	00813423          	sd	s0,8(sp)
    800016c4:	01010413          	addi	s0,sp,16
    if (!curr) return;
    800016c8:	00050c63          	beqz	a0,800016e0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    800016cc:	00053783          	ld	a5,0(a0)
    800016d0:	00078863          	beqz	a5,800016e0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    800016d4:	00853703          	ld	a4,8(a0)
    800016d8:	00e506b3          	add	a3,a0,a4
    800016dc:	00d78863          	beq	a5,a3,800016ec <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
}
    800016e0:	00813403          	ld	s0,8(sp)
    800016e4:	01010113          	addi	sp,sp,16
    800016e8:	00008067          	ret
        curr->size += curr->next->size;
    800016ec:	0087b683          	ld	a3,8(a5)
    800016f0:	00d70733          	add	a4,a4,a3
    800016f4:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    800016f8:	0007b783          	ld	a5,0(a5)
    800016fc:	00f53023          	sd	a5,0(a0)
    80001700:	fe1ff06f          	j	800016e0 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

0000000080001704 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    80001704:	08050e63          	beqz	a0,800017a0 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80001708:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    8000170c:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    80001710:	00003797          	auipc	a5,0x3
    80001714:	e907b783          	ld	a5,-368(a5) # 800045a0 <_ZN15MemoryAllocator12freeListHeadE>
    80001718:	02078863          	beqz	a5,80001748 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    8000171c:	fe010113          	addi	sp,sp,-32
    80001720:	00113c23          	sd	ra,24(sp)
    80001724:	00813823          	sd	s0,16(sp)
    80001728:	00913423          	sd	s1,8(sp)
    8000172c:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    80001730:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    80001734:	02078463          	beqz	a5,8000175c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80001738:	02a7f263          	bgeu	a5,a0,8000175c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    8000173c:	00078493          	mv	s1,a5
        curr = curr->next;
    80001740:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    80001744:	ff1ff06f          	j	80001734 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    80001748:	00003797          	auipc	a5,0x3
    8000174c:	e4a7bc23          	sd	a0,-424(a5) # 800045a0 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    80001750:	fe073823          	sd	zero,-16(a4)
        return 0;
    80001754:	00000513          	li	a0,0
    80001758:	00008067          	ret
    blockToFree->next = curr;
    8000175c:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    80001760:	02048a63          	beqz	s1,80001794 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80001764:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	f54080e7          	jalr	-172(ra) # 800016bc <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    80001770:	00048513          	mv	a0,s1
    80001774:	00000097          	auipc	ra,0x0
    80001778:	f48080e7          	jalr	-184(ra) # 800016bc <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    8000177c:	00000513          	li	a0,0
}
    80001780:	01813083          	ld	ra,24(sp)
    80001784:	01013403          	ld	s0,16(sp)
    80001788:	00813483          	ld	s1,8(sp)
    8000178c:	02010113          	addi	sp,sp,32
    80001790:	00008067          	ret
    else freeListHead = blockToFree;
    80001794:	00003797          	auipc	a5,0x3
    80001798:	e0a7b623          	sd	a0,-500(a5) # 800045a0 <_ZN15MemoryAllocator12freeListHeadE>
    8000179c:	fcdff06f          	j	80001768 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    800017a0:	fff00513          	li	a0,-1
}
    800017a4:	00008067          	ret

00000000800017a8 <_ZN15MemoryAllocator18mem_get_free_spaceEv>:

size_t MemoryAllocator::mem_get_free_space() {
    800017a8:	ff010113          	addi	sp,sp,-16
    800017ac:	00813423          	sd	s0,8(sp)
    800017b0:	01010413          	addi	s0,sp,16
    size_t total = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    800017b4:	00003797          	auipc	a5,0x3
    800017b8:	dec7b783          	ld	a5,-532(a5) # 800045a0 <_ZN15MemoryAllocator12freeListHeadE>
    size_t total = 0;
    800017bc:	00000513          	li	a0,0
    800017c0:	0080006f          	j	800017c8 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    800017c4:	0007b783          	ld	a5,0(a5)
    800017c8:	00078e63          	beqz	a5,800017e4 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x3c>
        if (curr->size > sizeof(BlockHeader)) {
    800017cc:	0087b703          	ld	a4,8(a5)
    800017d0:	01000693          	li	a3,16
    800017d4:	fee6f8e3          	bgeu	a3,a4,800017c4 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
            total += curr->size - sizeof(BlockHeader);
    800017d8:	00a70533          	add	a0,a4,a0
    800017dc:	ff050513          	addi	a0,a0,-16
    800017e0:	fe5ff06f          	j	800017c4 <_ZN15MemoryAllocator18mem_get_free_spaceEv+0x1c>
        }
    }

    return total;
}
    800017e4:	00813403          	ld	s0,8(sp)
    800017e8:	01010113          	addi	sp,sp,16
    800017ec:	00008067          	ret

00000000800017f0 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv>:

size_t MemoryAllocator::mem_get_largest_free_block() {
    800017f0:	ff010113          	addi	sp,sp,-16
    800017f4:	00813423          	sd	s0,8(sp)
    800017f8:	01010413          	addi	s0,sp,16
    size_t largest = 0;

    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    800017fc:	00003717          	auipc	a4,0x3
    80001800:	da473703          	ld	a4,-604(a4) # 800045a0 <_ZN15MemoryAllocator12freeListHeadE>
    size_t largest = 0;
    80001804:	00000513          	li	a0,0
    80001808:	0080006f          	j	80001810 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x20>
    for (BlockHeader* curr = freeListHead; curr; curr = curr->next) {
    8000180c:	00073703          	ld	a4,0(a4)
    80001810:	02070263          	beqz	a4,80001834 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x44>
        size_t usable = (curr->size > sizeof(BlockHeader)) ? curr->size - sizeof(BlockHeader) : 0;
    80001814:	00873783          	ld	a5,8(a4)
    80001818:	01000693          	li	a3,16
    8000181c:	00d7f463          	bgeu	a5,a3,80001824 <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x34>
    80001820:	01000793          	li	a5,16
    80001824:	ff078793          	addi	a5,a5,-16
        if (usable > largest) largest = usable;
    80001828:	fef572e3          	bgeu	a0,a5,8000180c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    8000182c:	00078513          	mv	a0,a5
    80001830:	fddff06f          	j	8000180c <_ZN15MemoryAllocator26mem_get_largest_free_blockEv+0x1c>
    }

    return largest;
    80001834:	00813403          	ld	s0,8(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <start>:
    80001840:	ff010113          	addi	sp,sp,-16
    80001844:	00813423          	sd	s0,8(sp)
    80001848:	01010413          	addi	s0,sp,16
    8000184c:	300027f3          	csrr	a5,mstatus
    80001850:	ffffe737          	lui	a4,0xffffe
    80001854:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8fff>
    80001858:	00e7f7b3          	and	a5,a5,a4
    8000185c:	00001737          	lui	a4,0x1
    80001860:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001864:	00e7e7b3          	or	a5,a5,a4
    80001868:	30079073          	csrw	mstatus,a5
    8000186c:	00000797          	auipc	a5,0x0
    80001870:	16078793          	addi	a5,a5,352 # 800019cc <system_main>
    80001874:	34179073          	csrw	mepc,a5
    80001878:	00000793          	li	a5,0
    8000187c:	18079073          	csrw	satp,a5
    80001880:	000107b7          	lui	a5,0x10
    80001884:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001888:	30279073          	csrw	medeleg,a5
    8000188c:	30379073          	csrw	mideleg,a5
    80001890:	104027f3          	csrr	a5,sie
    80001894:	2227e793          	ori	a5,a5,546
    80001898:	10479073          	csrw	sie,a5
    8000189c:	fff00793          	li	a5,-1
    800018a0:	00a7d793          	srli	a5,a5,0xa
    800018a4:	3b079073          	csrw	pmpaddr0,a5
    800018a8:	00f00793          	li	a5,15
    800018ac:	3a079073          	csrw	pmpcfg0,a5
    800018b0:	f14027f3          	csrr	a5,mhartid
    800018b4:	0200c737          	lui	a4,0x200c
    800018b8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800018bc:	0007869b          	sext.w	a3,a5
    800018c0:	00269713          	slli	a4,a3,0x2
    800018c4:	000f4637          	lui	a2,0xf4
    800018c8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800018cc:	00d70733          	add	a4,a4,a3
    800018d0:	0037979b          	slliw	a5,a5,0x3
    800018d4:	020046b7          	lui	a3,0x2004
    800018d8:	00d787b3          	add	a5,a5,a3
    800018dc:	00c585b3          	add	a1,a1,a2
    800018e0:	00371693          	slli	a3,a4,0x3
    800018e4:	00003717          	auipc	a4,0x3
    800018e8:	ccc70713          	addi	a4,a4,-820 # 800045b0 <timer_scratch>
    800018ec:	00b7b023          	sd	a1,0(a5)
    800018f0:	00d70733          	add	a4,a4,a3
    800018f4:	00f73c23          	sd	a5,24(a4)
    800018f8:	02c73023          	sd	a2,32(a4)
    800018fc:	34071073          	csrw	mscratch,a4
    80001900:	00000797          	auipc	a5,0x0
    80001904:	6e078793          	addi	a5,a5,1760 # 80001fe0 <timervec>
    80001908:	30579073          	csrw	mtvec,a5
    8000190c:	300027f3          	csrr	a5,mstatus
    80001910:	0087e793          	ori	a5,a5,8
    80001914:	30079073          	csrw	mstatus,a5
    80001918:	304027f3          	csrr	a5,mie
    8000191c:	0807e793          	ori	a5,a5,128
    80001920:	30479073          	csrw	mie,a5
    80001924:	f14027f3          	csrr	a5,mhartid
    80001928:	0007879b          	sext.w	a5,a5
    8000192c:	00078213          	mv	tp,a5
    80001930:	30200073          	mret
    80001934:	00813403          	ld	s0,8(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret

0000000080001940 <timerinit>:
    80001940:	ff010113          	addi	sp,sp,-16
    80001944:	00813423          	sd	s0,8(sp)
    80001948:	01010413          	addi	s0,sp,16
    8000194c:	f14027f3          	csrr	a5,mhartid
    80001950:	0200c737          	lui	a4,0x200c
    80001954:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001958:	0007869b          	sext.w	a3,a5
    8000195c:	00269713          	slli	a4,a3,0x2
    80001960:	000f4637          	lui	a2,0xf4
    80001964:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001968:	00d70733          	add	a4,a4,a3
    8000196c:	0037979b          	slliw	a5,a5,0x3
    80001970:	020046b7          	lui	a3,0x2004
    80001974:	00d787b3          	add	a5,a5,a3
    80001978:	00c585b3          	add	a1,a1,a2
    8000197c:	00371693          	slli	a3,a4,0x3
    80001980:	00003717          	auipc	a4,0x3
    80001984:	c3070713          	addi	a4,a4,-976 # 800045b0 <timer_scratch>
    80001988:	00b7b023          	sd	a1,0(a5)
    8000198c:	00d70733          	add	a4,a4,a3
    80001990:	00f73c23          	sd	a5,24(a4)
    80001994:	02c73023          	sd	a2,32(a4)
    80001998:	34071073          	csrw	mscratch,a4
    8000199c:	00000797          	auipc	a5,0x0
    800019a0:	64478793          	addi	a5,a5,1604 # 80001fe0 <timervec>
    800019a4:	30579073          	csrw	mtvec,a5
    800019a8:	300027f3          	csrr	a5,mstatus
    800019ac:	0087e793          	ori	a5,a5,8
    800019b0:	30079073          	csrw	mstatus,a5
    800019b4:	304027f3          	csrr	a5,mie
    800019b8:	0807e793          	ori	a5,a5,128
    800019bc:	30479073          	csrw	mie,a5
    800019c0:	00813403          	ld	s0,8(sp)
    800019c4:	01010113          	addi	sp,sp,16
    800019c8:	00008067          	ret

00000000800019cc <system_main>:
    800019cc:	fe010113          	addi	sp,sp,-32
    800019d0:	00813823          	sd	s0,16(sp)
    800019d4:	00913423          	sd	s1,8(sp)
    800019d8:	00113c23          	sd	ra,24(sp)
    800019dc:	02010413          	addi	s0,sp,32
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	0c4080e7          	jalr	196(ra) # 80001aa4 <cpuid>
    800019e8:	00003497          	auipc	s1,0x3
    800019ec:	b8848493          	addi	s1,s1,-1144 # 80004570 <started>
    800019f0:	02050263          	beqz	a0,80001a14 <system_main+0x48>
    800019f4:	0004a783          	lw	a5,0(s1)
    800019f8:	0007879b          	sext.w	a5,a5
    800019fc:	fe078ce3          	beqz	a5,800019f4 <system_main+0x28>
    80001a00:	0ff0000f          	fence
    80001a04:	00002517          	auipc	a0,0x2
    80001a08:	6e450513          	addi	a0,a0,1764 # 800040e8 <CONSOLE_STATUS+0xd8>
    80001a0c:	00001097          	auipc	ra,0x1
    80001a10:	a70080e7          	jalr	-1424(ra) # 8000247c <panic>
    80001a14:	00001097          	auipc	ra,0x1
    80001a18:	9c4080e7          	jalr	-1596(ra) # 800023d8 <consoleinit>
    80001a1c:	00001097          	auipc	ra,0x1
    80001a20:	150080e7          	jalr	336(ra) # 80002b6c <printfinit>
    80001a24:	00002517          	auipc	a0,0x2
    80001a28:	62c50513          	addi	a0,a0,1580 # 80004050 <CONSOLE_STATUS+0x40>
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	aac080e7          	jalr	-1364(ra) # 800024d8 <__printf>
    80001a34:	00002517          	auipc	a0,0x2
    80001a38:	68450513          	addi	a0,a0,1668 # 800040b8 <CONSOLE_STATUS+0xa8>
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	a9c080e7          	jalr	-1380(ra) # 800024d8 <__printf>
    80001a44:	00002517          	auipc	a0,0x2
    80001a48:	60c50513          	addi	a0,a0,1548 # 80004050 <CONSOLE_STATUS+0x40>
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	a8c080e7          	jalr	-1396(ra) # 800024d8 <__printf>
    80001a54:	00001097          	auipc	ra,0x1
    80001a58:	4a4080e7          	jalr	1188(ra) # 80002ef8 <kinit>
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	148080e7          	jalr	328(ra) # 80001ba4 <trapinit>
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	16c080e7          	jalr	364(ra) # 80001bd0 <trapinithart>
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	5b4080e7          	jalr	1460(ra) # 80002020 <plicinit>
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	5d4080e7          	jalr	1492(ra) # 80002048 <plicinithart>
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	078080e7          	jalr	120(ra) # 80001af4 <userinit>
    80001a84:	0ff0000f          	fence
    80001a88:	00100793          	li	a5,1
    80001a8c:	00002517          	auipc	a0,0x2
    80001a90:	64450513          	addi	a0,a0,1604 # 800040d0 <CONSOLE_STATUS+0xc0>
    80001a94:	00f4a023          	sw	a5,0(s1)
    80001a98:	00001097          	auipc	ra,0x1
    80001a9c:	a40080e7          	jalr	-1472(ra) # 800024d8 <__printf>
    80001aa0:	0000006f          	j	80001aa0 <system_main+0xd4>

0000000080001aa4 <cpuid>:
    80001aa4:	ff010113          	addi	sp,sp,-16
    80001aa8:	00813423          	sd	s0,8(sp)
    80001aac:	01010413          	addi	s0,sp,16
    80001ab0:	00020513          	mv	a0,tp
    80001ab4:	00813403          	ld	s0,8(sp)
    80001ab8:	0005051b          	sext.w	a0,a0
    80001abc:	01010113          	addi	sp,sp,16
    80001ac0:	00008067          	ret

0000000080001ac4 <mycpu>:
    80001ac4:	ff010113          	addi	sp,sp,-16
    80001ac8:	00813423          	sd	s0,8(sp)
    80001acc:	01010413          	addi	s0,sp,16
    80001ad0:	00020793          	mv	a5,tp
    80001ad4:	00813403          	ld	s0,8(sp)
    80001ad8:	0007879b          	sext.w	a5,a5
    80001adc:	00779793          	slli	a5,a5,0x7
    80001ae0:	00004517          	auipc	a0,0x4
    80001ae4:	b0050513          	addi	a0,a0,-1280 # 800055e0 <cpus>
    80001ae8:	00f50533          	add	a0,a0,a5
    80001aec:	01010113          	addi	sp,sp,16
    80001af0:	00008067          	ret

0000000080001af4 <userinit>:
    80001af4:	ff010113          	addi	sp,sp,-16
    80001af8:	00813423          	sd	s0,8(sp)
    80001afc:	01010413          	addi	s0,sp,16
    80001b00:	00813403          	ld	s0,8(sp)
    80001b04:	01010113          	addi	sp,sp,16
    80001b08:	fffff317          	auipc	t1,0xfffff
    80001b0c:	74830067          	jr	1864(t1) # 80001250 <main>

0000000080001b10 <either_copyout>:
    80001b10:	ff010113          	addi	sp,sp,-16
    80001b14:	00813023          	sd	s0,0(sp)
    80001b18:	00113423          	sd	ra,8(sp)
    80001b1c:	01010413          	addi	s0,sp,16
    80001b20:	02051663          	bnez	a0,80001b4c <either_copyout+0x3c>
    80001b24:	00058513          	mv	a0,a1
    80001b28:	00060593          	mv	a1,a2
    80001b2c:	0006861b          	sext.w	a2,a3
    80001b30:	00002097          	auipc	ra,0x2
    80001b34:	c54080e7          	jalr	-940(ra) # 80003784 <__memmove>
    80001b38:	00813083          	ld	ra,8(sp)
    80001b3c:	00013403          	ld	s0,0(sp)
    80001b40:	00000513          	li	a0,0
    80001b44:	01010113          	addi	sp,sp,16
    80001b48:	00008067          	ret
    80001b4c:	00002517          	auipc	a0,0x2
    80001b50:	5c450513          	addi	a0,a0,1476 # 80004110 <CONSOLE_STATUS+0x100>
    80001b54:	00001097          	auipc	ra,0x1
    80001b58:	928080e7          	jalr	-1752(ra) # 8000247c <panic>

0000000080001b5c <either_copyin>:
    80001b5c:	ff010113          	addi	sp,sp,-16
    80001b60:	00813023          	sd	s0,0(sp)
    80001b64:	00113423          	sd	ra,8(sp)
    80001b68:	01010413          	addi	s0,sp,16
    80001b6c:	02059463          	bnez	a1,80001b94 <either_copyin+0x38>
    80001b70:	00060593          	mv	a1,a2
    80001b74:	0006861b          	sext.w	a2,a3
    80001b78:	00002097          	auipc	ra,0x2
    80001b7c:	c0c080e7          	jalr	-1012(ra) # 80003784 <__memmove>
    80001b80:	00813083          	ld	ra,8(sp)
    80001b84:	00013403          	ld	s0,0(sp)
    80001b88:	00000513          	li	a0,0
    80001b8c:	01010113          	addi	sp,sp,16
    80001b90:	00008067          	ret
    80001b94:	00002517          	auipc	a0,0x2
    80001b98:	5a450513          	addi	a0,a0,1444 # 80004138 <CONSOLE_STATUS+0x128>
    80001b9c:	00001097          	auipc	ra,0x1
    80001ba0:	8e0080e7          	jalr	-1824(ra) # 8000247c <panic>

0000000080001ba4 <trapinit>:
    80001ba4:	ff010113          	addi	sp,sp,-16
    80001ba8:	00813423          	sd	s0,8(sp)
    80001bac:	01010413          	addi	s0,sp,16
    80001bb0:	00813403          	ld	s0,8(sp)
    80001bb4:	00002597          	auipc	a1,0x2
    80001bb8:	5ac58593          	addi	a1,a1,1452 # 80004160 <CONSOLE_STATUS+0x150>
    80001bbc:	00004517          	auipc	a0,0x4
    80001bc0:	aa450513          	addi	a0,a0,-1372 # 80005660 <tickslock>
    80001bc4:	01010113          	addi	sp,sp,16
    80001bc8:	00001317          	auipc	t1,0x1
    80001bcc:	5c030067          	jr	1472(t1) # 80003188 <initlock>

0000000080001bd0 <trapinithart>:
    80001bd0:	ff010113          	addi	sp,sp,-16
    80001bd4:	00813423          	sd	s0,8(sp)
    80001bd8:	01010413          	addi	s0,sp,16
    80001bdc:	00000797          	auipc	a5,0x0
    80001be0:	2f478793          	addi	a5,a5,756 # 80001ed0 <kernelvec>
    80001be4:	10579073          	csrw	stvec,a5
    80001be8:	00813403          	ld	s0,8(sp)
    80001bec:	01010113          	addi	sp,sp,16
    80001bf0:	00008067          	ret

0000000080001bf4 <usertrap>:
    80001bf4:	ff010113          	addi	sp,sp,-16
    80001bf8:	00813423          	sd	s0,8(sp)
    80001bfc:	01010413          	addi	s0,sp,16
    80001c00:	00813403          	ld	s0,8(sp)
    80001c04:	01010113          	addi	sp,sp,16
    80001c08:	00008067          	ret

0000000080001c0c <usertrapret>:
    80001c0c:	ff010113          	addi	sp,sp,-16
    80001c10:	00813423          	sd	s0,8(sp)
    80001c14:	01010413          	addi	s0,sp,16
    80001c18:	00813403          	ld	s0,8(sp)
    80001c1c:	01010113          	addi	sp,sp,16
    80001c20:	00008067          	ret

0000000080001c24 <kerneltrap>:
    80001c24:	fe010113          	addi	sp,sp,-32
    80001c28:	00813823          	sd	s0,16(sp)
    80001c2c:	00113c23          	sd	ra,24(sp)
    80001c30:	00913423          	sd	s1,8(sp)
    80001c34:	02010413          	addi	s0,sp,32
    80001c38:	142025f3          	csrr	a1,scause
    80001c3c:	100027f3          	csrr	a5,sstatus
    80001c40:	0027f793          	andi	a5,a5,2
    80001c44:	10079c63          	bnez	a5,80001d5c <kerneltrap+0x138>
    80001c48:	142027f3          	csrr	a5,scause
    80001c4c:	0207ce63          	bltz	a5,80001c88 <kerneltrap+0x64>
    80001c50:	00002517          	auipc	a0,0x2
    80001c54:	55850513          	addi	a0,a0,1368 # 800041a8 <CONSOLE_STATUS+0x198>
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	880080e7          	jalr	-1920(ra) # 800024d8 <__printf>
    80001c60:	141025f3          	csrr	a1,sepc
    80001c64:	14302673          	csrr	a2,stval
    80001c68:	00002517          	auipc	a0,0x2
    80001c6c:	55050513          	addi	a0,a0,1360 # 800041b8 <CONSOLE_STATUS+0x1a8>
    80001c70:	00001097          	auipc	ra,0x1
    80001c74:	868080e7          	jalr	-1944(ra) # 800024d8 <__printf>
    80001c78:	00002517          	auipc	a0,0x2
    80001c7c:	55850513          	addi	a0,a0,1368 # 800041d0 <CONSOLE_STATUS+0x1c0>
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	7fc080e7          	jalr	2044(ra) # 8000247c <panic>
    80001c88:	0ff7f713          	andi	a4,a5,255
    80001c8c:	00900693          	li	a3,9
    80001c90:	04d70063          	beq	a4,a3,80001cd0 <kerneltrap+0xac>
    80001c94:	fff00713          	li	a4,-1
    80001c98:	03f71713          	slli	a4,a4,0x3f
    80001c9c:	00170713          	addi	a4,a4,1
    80001ca0:	fae798e3          	bne	a5,a4,80001c50 <kerneltrap+0x2c>
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	e00080e7          	jalr	-512(ra) # 80001aa4 <cpuid>
    80001cac:	06050663          	beqz	a0,80001d18 <kerneltrap+0xf4>
    80001cb0:	144027f3          	csrr	a5,sip
    80001cb4:	ffd7f793          	andi	a5,a5,-3
    80001cb8:	14479073          	csrw	sip,a5
    80001cbc:	01813083          	ld	ra,24(sp)
    80001cc0:	01013403          	ld	s0,16(sp)
    80001cc4:	00813483          	ld	s1,8(sp)
    80001cc8:	02010113          	addi	sp,sp,32
    80001ccc:	00008067          	ret
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	3c4080e7          	jalr	964(ra) # 80002094 <plic_claim>
    80001cd8:	00a00793          	li	a5,10
    80001cdc:	00050493          	mv	s1,a0
    80001ce0:	06f50863          	beq	a0,a5,80001d50 <kerneltrap+0x12c>
    80001ce4:	fc050ce3          	beqz	a0,80001cbc <kerneltrap+0x98>
    80001ce8:	00050593          	mv	a1,a0
    80001cec:	00002517          	auipc	a0,0x2
    80001cf0:	49c50513          	addi	a0,a0,1180 # 80004188 <CONSOLE_STATUS+0x178>
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	7e4080e7          	jalr	2020(ra) # 800024d8 <__printf>
    80001cfc:	01013403          	ld	s0,16(sp)
    80001d00:	01813083          	ld	ra,24(sp)
    80001d04:	00048513          	mv	a0,s1
    80001d08:	00813483          	ld	s1,8(sp)
    80001d0c:	02010113          	addi	sp,sp,32
    80001d10:	00000317          	auipc	t1,0x0
    80001d14:	3bc30067          	jr	956(t1) # 800020cc <plic_complete>
    80001d18:	00004517          	auipc	a0,0x4
    80001d1c:	94850513          	addi	a0,a0,-1720 # 80005660 <tickslock>
    80001d20:	00001097          	auipc	ra,0x1
    80001d24:	48c080e7          	jalr	1164(ra) # 800031ac <acquire>
    80001d28:	00003717          	auipc	a4,0x3
    80001d2c:	84c70713          	addi	a4,a4,-1972 # 80004574 <ticks>
    80001d30:	00072783          	lw	a5,0(a4)
    80001d34:	00004517          	auipc	a0,0x4
    80001d38:	92c50513          	addi	a0,a0,-1748 # 80005660 <tickslock>
    80001d3c:	0017879b          	addiw	a5,a5,1
    80001d40:	00f72023          	sw	a5,0(a4)
    80001d44:	00001097          	auipc	ra,0x1
    80001d48:	534080e7          	jalr	1332(ra) # 80003278 <release>
    80001d4c:	f65ff06f          	j	80001cb0 <kerneltrap+0x8c>
    80001d50:	00001097          	auipc	ra,0x1
    80001d54:	090080e7          	jalr	144(ra) # 80002de0 <uartintr>
    80001d58:	fa5ff06f          	j	80001cfc <kerneltrap+0xd8>
    80001d5c:	00002517          	auipc	a0,0x2
    80001d60:	40c50513          	addi	a0,a0,1036 # 80004168 <CONSOLE_STATUS+0x158>
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	718080e7          	jalr	1816(ra) # 8000247c <panic>

0000000080001d6c <clockintr>:
    80001d6c:	fe010113          	addi	sp,sp,-32
    80001d70:	00813823          	sd	s0,16(sp)
    80001d74:	00913423          	sd	s1,8(sp)
    80001d78:	00113c23          	sd	ra,24(sp)
    80001d7c:	02010413          	addi	s0,sp,32
    80001d80:	00004497          	auipc	s1,0x4
    80001d84:	8e048493          	addi	s1,s1,-1824 # 80005660 <tickslock>
    80001d88:	00048513          	mv	a0,s1
    80001d8c:	00001097          	auipc	ra,0x1
    80001d90:	420080e7          	jalr	1056(ra) # 800031ac <acquire>
    80001d94:	00002717          	auipc	a4,0x2
    80001d98:	7e070713          	addi	a4,a4,2016 # 80004574 <ticks>
    80001d9c:	00072783          	lw	a5,0(a4)
    80001da0:	01013403          	ld	s0,16(sp)
    80001da4:	01813083          	ld	ra,24(sp)
    80001da8:	00048513          	mv	a0,s1
    80001dac:	0017879b          	addiw	a5,a5,1
    80001db0:	00813483          	ld	s1,8(sp)
    80001db4:	00f72023          	sw	a5,0(a4)
    80001db8:	02010113          	addi	sp,sp,32
    80001dbc:	00001317          	auipc	t1,0x1
    80001dc0:	4bc30067          	jr	1212(t1) # 80003278 <release>

0000000080001dc4 <devintr>:
    80001dc4:	142027f3          	csrr	a5,scause
    80001dc8:	00000513          	li	a0,0
    80001dcc:	0007c463          	bltz	a5,80001dd4 <devintr+0x10>
    80001dd0:	00008067          	ret
    80001dd4:	fe010113          	addi	sp,sp,-32
    80001dd8:	00813823          	sd	s0,16(sp)
    80001ddc:	00113c23          	sd	ra,24(sp)
    80001de0:	00913423          	sd	s1,8(sp)
    80001de4:	02010413          	addi	s0,sp,32
    80001de8:	0ff7f713          	andi	a4,a5,255
    80001dec:	00900693          	li	a3,9
    80001df0:	04d70c63          	beq	a4,a3,80001e48 <devintr+0x84>
    80001df4:	fff00713          	li	a4,-1
    80001df8:	03f71713          	slli	a4,a4,0x3f
    80001dfc:	00170713          	addi	a4,a4,1
    80001e00:	00e78c63          	beq	a5,a4,80001e18 <devintr+0x54>
    80001e04:	01813083          	ld	ra,24(sp)
    80001e08:	01013403          	ld	s0,16(sp)
    80001e0c:	00813483          	ld	s1,8(sp)
    80001e10:	02010113          	addi	sp,sp,32
    80001e14:	00008067          	ret
    80001e18:	00000097          	auipc	ra,0x0
    80001e1c:	c8c080e7          	jalr	-884(ra) # 80001aa4 <cpuid>
    80001e20:	06050663          	beqz	a0,80001e8c <devintr+0xc8>
    80001e24:	144027f3          	csrr	a5,sip
    80001e28:	ffd7f793          	andi	a5,a5,-3
    80001e2c:	14479073          	csrw	sip,a5
    80001e30:	01813083          	ld	ra,24(sp)
    80001e34:	01013403          	ld	s0,16(sp)
    80001e38:	00813483          	ld	s1,8(sp)
    80001e3c:	00200513          	li	a0,2
    80001e40:	02010113          	addi	sp,sp,32
    80001e44:	00008067          	ret
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	24c080e7          	jalr	588(ra) # 80002094 <plic_claim>
    80001e50:	00a00793          	li	a5,10
    80001e54:	00050493          	mv	s1,a0
    80001e58:	06f50663          	beq	a0,a5,80001ec4 <devintr+0x100>
    80001e5c:	00100513          	li	a0,1
    80001e60:	fa0482e3          	beqz	s1,80001e04 <devintr+0x40>
    80001e64:	00048593          	mv	a1,s1
    80001e68:	00002517          	auipc	a0,0x2
    80001e6c:	32050513          	addi	a0,a0,800 # 80004188 <CONSOLE_STATUS+0x178>
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	668080e7          	jalr	1640(ra) # 800024d8 <__printf>
    80001e78:	00048513          	mv	a0,s1
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	250080e7          	jalr	592(ra) # 800020cc <plic_complete>
    80001e84:	00100513          	li	a0,1
    80001e88:	f7dff06f          	j	80001e04 <devintr+0x40>
    80001e8c:	00003517          	auipc	a0,0x3
    80001e90:	7d450513          	addi	a0,a0,2004 # 80005660 <tickslock>
    80001e94:	00001097          	auipc	ra,0x1
    80001e98:	318080e7          	jalr	792(ra) # 800031ac <acquire>
    80001e9c:	00002717          	auipc	a4,0x2
    80001ea0:	6d870713          	addi	a4,a4,1752 # 80004574 <ticks>
    80001ea4:	00072783          	lw	a5,0(a4)
    80001ea8:	00003517          	auipc	a0,0x3
    80001eac:	7b850513          	addi	a0,a0,1976 # 80005660 <tickslock>
    80001eb0:	0017879b          	addiw	a5,a5,1
    80001eb4:	00f72023          	sw	a5,0(a4)
    80001eb8:	00001097          	auipc	ra,0x1
    80001ebc:	3c0080e7          	jalr	960(ra) # 80003278 <release>
    80001ec0:	f65ff06f          	j	80001e24 <devintr+0x60>
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	f1c080e7          	jalr	-228(ra) # 80002de0 <uartintr>
    80001ecc:	fadff06f          	j	80001e78 <devintr+0xb4>

0000000080001ed0 <kernelvec>:
    80001ed0:	f0010113          	addi	sp,sp,-256
    80001ed4:	00113023          	sd	ra,0(sp)
    80001ed8:	00213423          	sd	sp,8(sp)
    80001edc:	00313823          	sd	gp,16(sp)
    80001ee0:	00413c23          	sd	tp,24(sp)
    80001ee4:	02513023          	sd	t0,32(sp)
    80001ee8:	02613423          	sd	t1,40(sp)
    80001eec:	02713823          	sd	t2,48(sp)
    80001ef0:	02813c23          	sd	s0,56(sp)
    80001ef4:	04913023          	sd	s1,64(sp)
    80001ef8:	04a13423          	sd	a0,72(sp)
    80001efc:	04b13823          	sd	a1,80(sp)
    80001f00:	04c13c23          	sd	a2,88(sp)
    80001f04:	06d13023          	sd	a3,96(sp)
    80001f08:	06e13423          	sd	a4,104(sp)
    80001f0c:	06f13823          	sd	a5,112(sp)
    80001f10:	07013c23          	sd	a6,120(sp)
    80001f14:	09113023          	sd	a7,128(sp)
    80001f18:	09213423          	sd	s2,136(sp)
    80001f1c:	09313823          	sd	s3,144(sp)
    80001f20:	09413c23          	sd	s4,152(sp)
    80001f24:	0b513023          	sd	s5,160(sp)
    80001f28:	0b613423          	sd	s6,168(sp)
    80001f2c:	0b713823          	sd	s7,176(sp)
    80001f30:	0b813c23          	sd	s8,184(sp)
    80001f34:	0d913023          	sd	s9,192(sp)
    80001f38:	0da13423          	sd	s10,200(sp)
    80001f3c:	0db13823          	sd	s11,208(sp)
    80001f40:	0dc13c23          	sd	t3,216(sp)
    80001f44:	0fd13023          	sd	t4,224(sp)
    80001f48:	0fe13423          	sd	t5,232(sp)
    80001f4c:	0ff13823          	sd	t6,240(sp)
    80001f50:	cd5ff0ef          	jal	ra,80001c24 <kerneltrap>
    80001f54:	00013083          	ld	ra,0(sp)
    80001f58:	00813103          	ld	sp,8(sp)
    80001f5c:	01013183          	ld	gp,16(sp)
    80001f60:	02013283          	ld	t0,32(sp)
    80001f64:	02813303          	ld	t1,40(sp)
    80001f68:	03013383          	ld	t2,48(sp)
    80001f6c:	03813403          	ld	s0,56(sp)
    80001f70:	04013483          	ld	s1,64(sp)
    80001f74:	04813503          	ld	a0,72(sp)
    80001f78:	05013583          	ld	a1,80(sp)
    80001f7c:	05813603          	ld	a2,88(sp)
    80001f80:	06013683          	ld	a3,96(sp)
    80001f84:	06813703          	ld	a4,104(sp)
    80001f88:	07013783          	ld	a5,112(sp)
    80001f8c:	07813803          	ld	a6,120(sp)
    80001f90:	08013883          	ld	a7,128(sp)
    80001f94:	08813903          	ld	s2,136(sp)
    80001f98:	09013983          	ld	s3,144(sp)
    80001f9c:	09813a03          	ld	s4,152(sp)
    80001fa0:	0a013a83          	ld	s5,160(sp)
    80001fa4:	0a813b03          	ld	s6,168(sp)
    80001fa8:	0b013b83          	ld	s7,176(sp)
    80001fac:	0b813c03          	ld	s8,184(sp)
    80001fb0:	0c013c83          	ld	s9,192(sp)
    80001fb4:	0c813d03          	ld	s10,200(sp)
    80001fb8:	0d013d83          	ld	s11,208(sp)
    80001fbc:	0d813e03          	ld	t3,216(sp)
    80001fc0:	0e013e83          	ld	t4,224(sp)
    80001fc4:	0e813f03          	ld	t5,232(sp)
    80001fc8:	0f013f83          	ld	t6,240(sp)
    80001fcc:	10010113          	addi	sp,sp,256
    80001fd0:	10200073          	sret
    80001fd4:	00000013          	nop
    80001fd8:	00000013          	nop
    80001fdc:	00000013          	nop

0000000080001fe0 <timervec>:
    80001fe0:	34051573          	csrrw	a0,mscratch,a0
    80001fe4:	00b53023          	sd	a1,0(a0)
    80001fe8:	00c53423          	sd	a2,8(a0)
    80001fec:	00d53823          	sd	a3,16(a0)
    80001ff0:	01853583          	ld	a1,24(a0)
    80001ff4:	02053603          	ld	a2,32(a0)
    80001ff8:	0005b683          	ld	a3,0(a1)
    80001ffc:	00c686b3          	add	a3,a3,a2
    80002000:	00d5b023          	sd	a3,0(a1)
    80002004:	00200593          	li	a1,2
    80002008:	14459073          	csrw	sip,a1
    8000200c:	01053683          	ld	a3,16(a0)
    80002010:	00853603          	ld	a2,8(a0)
    80002014:	00053583          	ld	a1,0(a0)
    80002018:	34051573          	csrrw	a0,mscratch,a0
    8000201c:	30200073          	mret

0000000080002020 <plicinit>:
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00813423          	sd	s0,8(sp)
    80002028:	01010413          	addi	s0,sp,16
    8000202c:	00813403          	ld	s0,8(sp)
    80002030:	0c0007b7          	lui	a5,0xc000
    80002034:	00100713          	li	a4,1
    80002038:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000203c:	00e7a223          	sw	a4,4(a5)
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret

0000000080002048 <plicinithart>:
    80002048:	ff010113          	addi	sp,sp,-16
    8000204c:	00813023          	sd	s0,0(sp)
    80002050:	00113423          	sd	ra,8(sp)
    80002054:	01010413          	addi	s0,sp,16
    80002058:	00000097          	auipc	ra,0x0
    8000205c:	a4c080e7          	jalr	-1460(ra) # 80001aa4 <cpuid>
    80002060:	0085171b          	slliw	a4,a0,0x8
    80002064:	0c0027b7          	lui	a5,0xc002
    80002068:	00e787b3          	add	a5,a5,a4
    8000206c:	40200713          	li	a4,1026
    80002070:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002074:	00813083          	ld	ra,8(sp)
    80002078:	00013403          	ld	s0,0(sp)
    8000207c:	00d5151b          	slliw	a0,a0,0xd
    80002080:	0c2017b7          	lui	a5,0xc201
    80002084:	00a78533          	add	a0,a5,a0
    80002088:	00052023          	sw	zero,0(a0)
    8000208c:	01010113          	addi	sp,sp,16
    80002090:	00008067          	ret

0000000080002094 <plic_claim>:
    80002094:	ff010113          	addi	sp,sp,-16
    80002098:	00813023          	sd	s0,0(sp)
    8000209c:	00113423          	sd	ra,8(sp)
    800020a0:	01010413          	addi	s0,sp,16
    800020a4:	00000097          	auipc	ra,0x0
    800020a8:	a00080e7          	jalr	-1536(ra) # 80001aa4 <cpuid>
    800020ac:	00813083          	ld	ra,8(sp)
    800020b0:	00013403          	ld	s0,0(sp)
    800020b4:	00d5151b          	slliw	a0,a0,0xd
    800020b8:	0c2017b7          	lui	a5,0xc201
    800020bc:	00a78533          	add	a0,a5,a0
    800020c0:	00452503          	lw	a0,4(a0)
    800020c4:	01010113          	addi	sp,sp,16
    800020c8:	00008067          	ret

00000000800020cc <plic_complete>:
    800020cc:	fe010113          	addi	sp,sp,-32
    800020d0:	00813823          	sd	s0,16(sp)
    800020d4:	00913423          	sd	s1,8(sp)
    800020d8:	00113c23          	sd	ra,24(sp)
    800020dc:	02010413          	addi	s0,sp,32
    800020e0:	00050493          	mv	s1,a0
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	9c0080e7          	jalr	-1600(ra) # 80001aa4 <cpuid>
    800020ec:	01813083          	ld	ra,24(sp)
    800020f0:	01013403          	ld	s0,16(sp)
    800020f4:	00d5179b          	slliw	a5,a0,0xd
    800020f8:	0c201737          	lui	a4,0xc201
    800020fc:	00f707b3          	add	a5,a4,a5
    80002100:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002104:	00813483          	ld	s1,8(sp)
    80002108:	02010113          	addi	sp,sp,32
    8000210c:	00008067          	ret

0000000080002110 <consolewrite>:
    80002110:	fb010113          	addi	sp,sp,-80
    80002114:	04813023          	sd	s0,64(sp)
    80002118:	04113423          	sd	ra,72(sp)
    8000211c:	02913c23          	sd	s1,56(sp)
    80002120:	03213823          	sd	s2,48(sp)
    80002124:	03313423          	sd	s3,40(sp)
    80002128:	03413023          	sd	s4,32(sp)
    8000212c:	01513c23          	sd	s5,24(sp)
    80002130:	05010413          	addi	s0,sp,80
    80002134:	06c05c63          	blez	a2,800021ac <consolewrite+0x9c>
    80002138:	00060993          	mv	s3,a2
    8000213c:	00050a13          	mv	s4,a0
    80002140:	00058493          	mv	s1,a1
    80002144:	00000913          	li	s2,0
    80002148:	fff00a93          	li	s5,-1
    8000214c:	01c0006f          	j	80002168 <consolewrite+0x58>
    80002150:	fbf44503          	lbu	a0,-65(s0)
    80002154:	0019091b          	addiw	s2,s2,1
    80002158:	00148493          	addi	s1,s1,1
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	a9c080e7          	jalr	-1380(ra) # 80002bf8 <uartputc>
    80002164:	03298063          	beq	s3,s2,80002184 <consolewrite+0x74>
    80002168:	00048613          	mv	a2,s1
    8000216c:	00100693          	li	a3,1
    80002170:	000a0593          	mv	a1,s4
    80002174:	fbf40513          	addi	a0,s0,-65
    80002178:	00000097          	auipc	ra,0x0
    8000217c:	9e4080e7          	jalr	-1564(ra) # 80001b5c <either_copyin>
    80002180:	fd5518e3          	bne	a0,s5,80002150 <consolewrite+0x40>
    80002184:	04813083          	ld	ra,72(sp)
    80002188:	04013403          	ld	s0,64(sp)
    8000218c:	03813483          	ld	s1,56(sp)
    80002190:	02813983          	ld	s3,40(sp)
    80002194:	02013a03          	ld	s4,32(sp)
    80002198:	01813a83          	ld	s5,24(sp)
    8000219c:	00090513          	mv	a0,s2
    800021a0:	03013903          	ld	s2,48(sp)
    800021a4:	05010113          	addi	sp,sp,80
    800021a8:	00008067          	ret
    800021ac:	00000913          	li	s2,0
    800021b0:	fd5ff06f          	j	80002184 <consolewrite+0x74>

00000000800021b4 <consoleread>:
    800021b4:	f9010113          	addi	sp,sp,-112
    800021b8:	06813023          	sd	s0,96(sp)
    800021bc:	04913c23          	sd	s1,88(sp)
    800021c0:	05213823          	sd	s2,80(sp)
    800021c4:	05313423          	sd	s3,72(sp)
    800021c8:	05413023          	sd	s4,64(sp)
    800021cc:	03513c23          	sd	s5,56(sp)
    800021d0:	03613823          	sd	s6,48(sp)
    800021d4:	03713423          	sd	s7,40(sp)
    800021d8:	03813023          	sd	s8,32(sp)
    800021dc:	06113423          	sd	ra,104(sp)
    800021e0:	01913c23          	sd	s9,24(sp)
    800021e4:	07010413          	addi	s0,sp,112
    800021e8:	00060b93          	mv	s7,a2
    800021ec:	00050913          	mv	s2,a0
    800021f0:	00058c13          	mv	s8,a1
    800021f4:	00060b1b          	sext.w	s6,a2
    800021f8:	00003497          	auipc	s1,0x3
    800021fc:	48048493          	addi	s1,s1,1152 # 80005678 <cons>
    80002200:	00400993          	li	s3,4
    80002204:	fff00a13          	li	s4,-1
    80002208:	00a00a93          	li	s5,10
    8000220c:	05705e63          	blez	s7,80002268 <consoleread+0xb4>
    80002210:	09c4a703          	lw	a4,156(s1)
    80002214:	0984a783          	lw	a5,152(s1)
    80002218:	0007071b          	sext.w	a4,a4
    8000221c:	08e78463          	beq	a5,a4,800022a4 <consoleread+0xf0>
    80002220:	07f7f713          	andi	a4,a5,127
    80002224:	00e48733          	add	a4,s1,a4
    80002228:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000222c:	0017869b          	addiw	a3,a5,1
    80002230:	08d4ac23          	sw	a3,152(s1)
    80002234:	00070c9b          	sext.w	s9,a4
    80002238:	0b370663          	beq	a4,s3,800022e4 <consoleread+0x130>
    8000223c:	00100693          	li	a3,1
    80002240:	f9f40613          	addi	a2,s0,-97
    80002244:	000c0593          	mv	a1,s8
    80002248:	00090513          	mv	a0,s2
    8000224c:	f8e40fa3          	sb	a4,-97(s0)
    80002250:	00000097          	auipc	ra,0x0
    80002254:	8c0080e7          	jalr	-1856(ra) # 80001b10 <either_copyout>
    80002258:	01450863          	beq	a0,s4,80002268 <consoleread+0xb4>
    8000225c:	001c0c13          	addi	s8,s8,1
    80002260:	fffb8b9b          	addiw	s7,s7,-1
    80002264:	fb5c94e3          	bne	s9,s5,8000220c <consoleread+0x58>
    80002268:	000b851b          	sext.w	a0,s7
    8000226c:	06813083          	ld	ra,104(sp)
    80002270:	06013403          	ld	s0,96(sp)
    80002274:	05813483          	ld	s1,88(sp)
    80002278:	05013903          	ld	s2,80(sp)
    8000227c:	04813983          	ld	s3,72(sp)
    80002280:	04013a03          	ld	s4,64(sp)
    80002284:	03813a83          	ld	s5,56(sp)
    80002288:	02813b83          	ld	s7,40(sp)
    8000228c:	02013c03          	ld	s8,32(sp)
    80002290:	01813c83          	ld	s9,24(sp)
    80002294:	40ab053b          	subw	a0,s6,a0
    80002298:	03013b03          	ld	s6,48(sp)
    8000229c:	07010113          	addi	sp,sp,112
    800022a0:	00008067          	ret
    800022a4:	00001097          	auipc	ra,0x1
    800022a8:	1d8080e7          	jalr	472(ra) # 8000347c <push_on>
    800022ac:	0984a703          	lw	a4,152(s1)
    800022b0:	09c4a783          	lw	a5,156(s1)
    800022b4:	0007879b          	sext.w	a5,a5
    800022b8:	fef70ce3          	beq	a4,a5,800022b0 <consoleread+0xfc>
    800022bc:	00001097          	auipc	ra,0x1
    800022c0:	234080e7          	jalr	564(ra) # 800034f0 <pop_on>
    800022c4:	0984a783          	lw	a5,152(s1)
    800022c8:	07f7f713          	andi	a4,a5,127
    800022cc:	00e48733          	add	a4,s1,a4
    800022d0:	01874703          	lbu	a4,24(a4)
    800022d4:	0017869b          	addiw	a3,a5,1
    800022d8:	08d4ac23          	sw	a3,152(s1)
    800022dc:	00070c9b          	sext.w	s9,a4
    800022e0:	f5371ee3          	bne	a4,s3,8000223c <consoleread+0x88>
    800022e4:	000b851b          	sext.w	a0,s7
    800022e8:	f96bf2e3          	bgeu	s7,s6,8000226c <consoleread+0xb8>
    800022ec:	08f4ac23          	sw	a5,152(s1)
    800022f0:	f7dff06f          	j	8000226c <consoleread+0xb8>

00000000800022f4 <consputc>:
    800022f4:	10000793          	li	a5,256
    800022f8:	00f50663          	beq	a0,a5,80002304 <consputc+0x10>
    800022fc:	00001317          	auipc	t1,0x1
    80002300:	9f430067          	jr	-1548(t1) # 80002cf0 <uartputc_sync>
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00113423          	sd	ra,8(sp)
    8000230c:	00813023          	sd	s0,0(sp)
    80002310:	01010413          	addi	s0,sp,16
    80002314:	00800513          	li	a0,8
    80002318:	00001097          	auipc	ra,0x1
    8000231c:	9d8080e7          	jalr	-1576(ra) # 80002cf0 <uartputc_sync>
    80002320:	02000513          	li	a0,32
    80002324:	00001097          	auipc	ra,0x1
    80002328:	9cc080e7          	jalr	-1588(ra) # 80002cf0 <uartputc_sync>
    8000232c:	00013403          	ld	s0,0(sp)
    80002330:	00813083          	ld	ra,8(sp)
    80002334:	00800513          	li	a0,8
    80002338:	01010113          	addi	sp,sp,16
    8000233c:	00001317          	auipc	t1,0x1
    80002340:	9b430067          	jr	-1612(t1) # 80002cf0 <uartputc_sync>

0000000080002344 <consoleintr>:
    80002344:	fe010113          	addi	sp,sp,-32
    80002348:	00813823          	sd	s0,16(sp)
    8000234c:	00913423          	sd	s1,8(sp)
    80002350:	01213023          	sd	s2,0(sp)
    80002354:	00113c23          	sd	ra,24(sp)
    80002358:	02010413          	addi	s0,sp,32
    8000235c:	00003917          	auipc	s2,0x3
    80002360:	31c90913          	addi	s2,s2,796 # 80005678 <cons>
    80002364:	00050493          	mv	s1,a0
    80002368:	00090513          	mv	a0,s2
    8000236c:	00001097          	auipc	ra,0x1
    80002370:	e40080e7          	jalr	-448(ra) # 800031ac <acquire>
    80002374:	02048c63          	beqz	s1,800023ac <consoleintr+0x68>
    80002378:	0a092783          	lw	a5,160(s2)
    8000237c:	09892703          	lw	a4,152(s2)
    80002380:	07f00693          	li	a3,127
    80002384:	40e7873b          	subw	a4,a5,a4
    80002388:	02e6e263          	bltu	a3,a4,800023ac <consoleintr+0x68>
    8000238c:	00d00713          	li	a4,13
    80002390:	04e48063          	beq	s1,a4,800023d0 <consoleintr+0x8c>
    80002394:	07f7f713          	andi	a4,a5,127
    80002398:	00e90733          	add	a4,s2,a4
    8000239c:	0017879b          	addiw	a5,a5,1
    800023a0:	0af92023          	sw	a5,160(s2)
    800023a4:	00970c23          	sb	s1,24(a4)
    800023a8:	08f92e23          	sw	a5,156(s2)
    800023ac:	01013403          	ld	s0,16(sp)
    800023b0:	01813083          	ld	ra,24(sp)
    800023b4:	00813483          	ld	s1,8(sp)
    800023b8:	00013903          	ld	s2,0(sp)
    800023bc:	00003517          	auipc	a0,0x3
    800023c0:	2bc50513          	addi	a0,a0,700 # 80005678 <cons>
    800023c4:	02010113          	addi	sp,sp,32
    800023c8:	00001317          	auipc	t1,0x1
    800023cc:	eb030067          	jr	-336(t1) # 80003278 <release>
    800023d0:	00a00493          	li	s1,10
    800023d4:	fc1ff06f          	j	80002394 <consoleintr+0x50>

00000000800023d8 <consoleinit>:
    800023d8:	fe010113          	addi	sp,sp,-32
    800023dc:	00113c23          	sd	ra,24(sp)
    800023e0:	00813823          	sd	s0,16(sp)
    800023e4:	00913423          	sd	s1,8(sp)
    800023e8:	02010413          	addi	s0,sp,32
    800023ec:	00003497          	auipc	s1,0x3
    800023f0:	28c48493          	addi	s1,s1,652 # 80005678 <cons>
    800023f4:	00048513          	mv	a0,s1
    800023f8:	00002597          	auipc	a1,0x2
    800023fc:	de858593          	addi	a1,a1,-536 # 800041e0 <CONSOLE_STATUS+0x1d0>
    80002400:	00001097          	auipc	ra,0x1
    80002404:	d88080e7          	jalr	-632(ra) # 80003188 <initlock>
    80002408:	00000097          	auipc	ra,0x0
    8000240c:	7ac080e7          	jalr	1964(ra) # 80002bb4 <uartinit>
    80002410:	01813083          	ld	ra,24(sp)
    80002414:	01013403          	ld	s0,16(sp)
    80002418:	00000797          	auipc	a5,0x0
    8000241c:	d9c78793          	addi	a5,a5,-612 # 800021b4 <consoleread>
    80002420:	0af4bc23          	sd	a5,184(s1)
    80002424:	00000797          	auipc	a5,0x0
    80002428:	cec78793          	addi	a5,a5,-788 # 80002110 <consolewrite>
    8000242c:	0cf4b023          	sd	a5,192(s1)
    80002430:	00813483          	ld	s1,8(sp)
    80002434:	02010113          	addi	sp,sp,32
    80002438:	00008067          	ret

000000008000243c <console_read>:
    8000243c:	ff010113          	addi	sp,sp,-16
    80002440:	00813423          	sd	s0,8(sp)
    80002444:	01010413          	addi	s0,sp,16
    80002448:	00813403          	ld	s0,8(sp)
    8000244c:	00003317          	auipc	t1,0x3
    80002450:	2e433303          	ld	t1,740(t1) # 80005730 <devsw+0x10>
    80002454:	01010113          	addi	sp,sp,16
    80002458:	00030067          	jr	t1

000000008000245c <console_write>:
    8000245c:	ff010113          	addi	sp,sp,-16
    80002460:	00813423          	sd	s0,8(sp)
    80002464:	01010413          	addi	s0,sp,16
    80002468:	00813403          	ld	s0,8(sp)
    8000246c:	00003317          	auipc	t1,0x3
    80002470:	2cc33303          	ld	t1,716(t1) # 80005738 <devsw+0x18>
    80002474:	01010113          	addi	sp,sp,16
    80002478:	00030067          	jr	t1

000000008000247c <panic>:
    8000247c:	fe010113          	addi	sp,sp,-32
    80002480:	00113c23          	sd	ra,24(sp)
    80002484:	00813823          	sd	s0,16(sp)
    80002488:	00913423          	sd	s1,8(sp)
    8000248c:	02010413          	addi	s0,sp,32
    80002490:	00050493          	mv	s1,a0
    80002494:	00002517          	auipc	a0,0x2
    80002498:	d5450513          	addi	a0,a0,-684 # 800041e8 <CONSOLE_STATUS+0x1d8>
    8000249c:	00003797          	auipc	a5,0x3
    800024a0:	3207ae23          	sw	zero,828(a5) # 800057d8 <pr+0x18>
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	034080e7          	jalr	52(ra) # 800024d8 <__printf>
    800024ac:	00048513          	mv	a0,s1
    800024b0:	00000097          	auipc	ra,0x0
    800024b4:	028080e7          	jalr	40(ra) # 800024d8 <__printf>
    800024b8:	00002517          	auipc	a0,0x2
    800024bc:	b9850513          	addi	a0,a0,-1128 # 80004050 <CONSOLE_STATUS+0x40>
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	018080e7          	jalr	24(ra) # 800024d8 <__printf>
    800024c8:	00100793          	li	a5,1
    800024cc:	00002717          	auipc	a4,0x2
    800024d0:	0af72623          	sw	a5,172(a4) # 80004578 <panicked>
    800024d4:	0000006f          	j	800024d4 <panic+0x58>

00000000800024d8 <__printf>:
    800024d8:	f3010113          	addi	sp,sp,-208
    800024dc:	08813023          	sd	s0,128(sp)
    800024e0:	07313423          	sd	s3,104(sp)
    800024e4:	09010413          	addi	s0,sp,144
    800024e8:	05813023          	sd	s8,64(sp)
    800024ec:	08113423          	sd	ra,136(sp)
    800024f0:	06913c23          	sd	s1,120(sp)
    800024f4:	07213823          	sd	s2,112(sp)
    800024f8:	07413023          	sd	s4,96(sp)
    800024fc:	05513c23          	sd	s5,88(sp)
    80002500:	05613823          	sd	s6,80(sp)
    80002504:	05713423          	sd	s7,72(sp)
    80002508:	03913c23          	sd	s9,56(sp)
    8000250c:	03a13823          	sd	s10,48(sp)
    80002510:	03b13423          	sd	s11,40(sp)
    80002514:	00003317          	auipc	t1,0x3
    80002518:	2ac30313          	addi	t1,t1,684 # 800057c0 <pr>
    8000251c:	01832c03          	lw	s8,24(t1)
    80002520:	00b43423          	sd	a1,8(s0)
    80002524:	00c43823          	sd	a2,16(s0)
    80002528:	00d43c23          	sd	a3,24(s0)
    8000252c:	02e43023          	sd	a4,32(s0)
    80002530:	02f43423          	sd	a5,40(s0)
    80002534:	03043823          	sd	a6,48(s0)
    80002538:	03143c23          	sd	a7,56(s0)
    8000253c:	00050993          	mv	s3,a0
    80002540:	4a0c1663          	bnez	s8,800029ec <__printf+0x514>
    80002544:	60098c63          	beqz	s3,80002b5c <__printf+0x684>
    80002548:	0009c503          	lbu	a0,0(s3)
    8000254c:	00840793          	addi	a5,s0,8
    80002550:	f6f43c23          	sd	a5,-136(s0)
    80002554:	00000493          	li	s1,0
    80002558:	22050063          	beqz	a0,80002778 <__printf+0x2a0>
    8000255c:	00002a37          	lui	s4,0x2
    80002560:	00018ab7          	lui	s5,0x18
    80002564:	000f4b37          	lui	s6,0xf4
    80002568:	00989bb7          	lui	s7,0x989
    8000256c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002570:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002574:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002578:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000257c:	00148c9b          	addiw	s9,s1,1
    80002580:	02500793          	li	a5,37
    80002584:	01998933          	add	s2,s3,s9
    80002588:	38f51263          	bne	a0,a5,8000290c <__printf+0x434>
    8000258c:	00094783          	lbu	a5,0(s2)
    80002590:	00078c9b          	sext.w	s9,a5
    80002594:	1e078263          	beqz	a5,80002778 <__printf+0x2a0>
    80002598:	0024849b          	addiw	s1,s1,2
    8000259c:	07000713          	li	a4,112
    800025a0:	00998933          	add	s2,s3,s1
    800025a4:	38e78a63          	beq	a5,a4,80002938 <__printf+0x460>
    800025a8:	20f76863          	bltu	a4,a5,800027b8 <__printf+0x2e0>
    800025ac:	42a78863          	beq	a5,a0,800029dc <__printf+0x504>
    800025b0:	06400713          	li	a4,100
    800025b4:	40e79663          	bne	a5,a4,800029c0 <__printf+0x4e8>
    800025b8:	f7843783          	ld	a5,-136(s0)
    800025bc:	0007a603          	lw	a2,0(a5)
    800025c0:	00878793          	addi	a5,a5,8
    800025c4:	f6f43c23          	sd	a5,-136(s0)
    800025c8:	42064a63          	bltz	a2,800029fc <__printf+0x524>
    800025cc:	00a00713          	li	a4,10
    800025d0:	02e677bb          	remuw	a5,a2,a4
    800025d4:	00002d97          	auipc	s11,0x2
    800025d8:	c3cd8d93          	addi	s11,s11,-964 # 80004210 <digits>
    800025dc:	00900593          	li	a1,9
    800025e0:	0006051b          	sext.w	a0,a2
    800025e4:	00000c93          	li	s9,0
    800025e8:	02079793          	slli	a5,a5,0x20
    800025ec:	0207d793          	srli	a5,a5,0x20
    800025f0:	00fd87b3          	add	a5,s11,a5
    800025f4:	0007c783          	lbu	a5,0(a5)
    800025f8:	02e656bb          	divuw	a3,a2,a4
    800025fc:	f8f40023          	sb	a5,-128(s0)
    80002600:	14c5d863          	bge	a1,a2,80002750 <__printf+0x278>
    80002604:	06300593          	li	a1,99
    80002608:	00100c93          	li	s9,1
    8000260c:	02e6f7bb          	remuw	a5,a3,a4
    80002610:	02079793          	slli	a5,a5,0x20
    80002614:	0207d793          	srli	a5,a5,0x20
    80002618:	00fd87b3          	add	a5,s11,a5
    8000261c:	0007c783          	lbu	a5,0(a5)
    80002620:	02e6d73b          	divuw	a4,a3,a4
    80002624:	f8f400a3          	sb	a5,-127(s0)
    80002628:	12a5f463          	bgeu	a1,a0,80002750 <__printf+0x278>
    8000262c:	00a00693          	li	a3,10
    80002630:	00900593          	li	a1,9
    80002634:	02d777bb          	remuw	a5,a4,a3
    80002638:	02079793          	slli	a5,a5,0x20
    8000263c:	0207d793          	srli	a5,a5,0x20
    80002640:	00fd87b3          	add	a5,s11,a5
    80002644:	0007c503          	lbu	a0,0(a5)
    80002648:	02d757bb          	divuw	a5,a4,a3
    8000264c:	f8a40123          	sb	a0,-126(s0)
    80002650:	48e5f263          	bgeu	a1,a4,80002ad4 <__printf+0x5fc>
    80002654:	06300513          	li	a0,99
    80002658:	02d7f5bb          	remuw	a1,a5,a3
    8000265c:	02059593          	slli	a1,a1,0x20
    80002660:	0205d593          	srli	a1,a1,0x20
    80002664:	00bd85b3          	add	a1,s11,a1
    80002668:	0005c583          	lbu	a1,0(a1)
    8000266c:	02d7d7bb          	divuw	a5,a5,a3
    80002670:	f8b401a3          	sb	a1,-125(s0)
    80002674:	48e57263          	bgeu	a0,a4,80002af8 <__printf+0x620>
    80002678:	3e700513          	li	a0,999
    8000267c:	02d7f5bb          	remuw	a1,a5,a3
    80002680:	02059593          	slli	a1,a1,0x20
    80002684:	0205d593          	srli	a1,a1,0x20
    80002688:	00bd85b3          	add	a1,s11,a1
    8000268c:	0005c583          	lbu	a1,0(a1)
    80002690:	02d7d7bb          	divuw	a5,a5,a3
    80002694:	f8b40223          	sb	a1,-124(s0)
    80002698:	46e57663          	bgeu	a0,a4,80002b04 <__printf+0x62c>
    8000269c:	02d7f5bb          	remuw	a1,a5,a3
    800026a0:	02059593          	slli	a1,a1,0x20
    800026a4:	0205d593          	srli	a1,a1,0x20
    800026a8:	00bd85b3          	add	a1,s11,a1
    800026ac:	0005c583          	lbu	a1,0(a1)
    800026b0:	02d7d7bb          	divuw	a5,a5,a3
    800026b4:	f8b402a3          	sb	a1,-123(s0)
    800026b8:	46ea7863          	bgeu	s4,a4,80002b28 <__printf+0x650>
    800026bc:	02d7f5bb          	remuw	a1,a5,a3
    800026c0:	02059593          	slli	a1,a1,0x20
    800026c4:	0205d593          	srli	a1,a1,0x20
    800026c8:	00bd85b3          	add	a1,s11,a1
    800026cc:	0005c583          	lbu	a1,0(a1)
    800026d0:	02d7d7bb          	divuw	a5,a5,a3
    800026d4:	f8b40323          	sb	a1,-122(s0)
    800026d8:	3eeaf863          	bgeu	s5,a4,80002ac8 <__printf+0x5f0>
    800026dc:	02d7f5bb          	remuw	a1,a5,a3
    800026e0:	02059593          	slli	a1,a1,0x20
    800026e4:	0205d593          	srli	a1,a1,0x20
    800026e8:	00bd85b3          	add	a1,s11,a1
    800026ec:	0005c583          	lbu	a1,0(a1)
    800026f0:	02d7d7bb          	divuw	a5,a5,a3
    800026f4:	f8b403a3          	sb	a1,-121(s0)
    800026f8:	42eb7e63          	bgeu	s6,a4,80002b34 <__printf+0x65c>
    800026fc:	02d7f5bb          	remuw	a1,a5,a3
    80002700:	02059593          	slli	a1,a1,0x20
    80002704:	0205d593          	srli	a1,a1,0x20
    80002708:	00bd85b3          	add	a1,s11,a1
    8000270c:	0005c583          	lbu	a1,0(a1)
    80002710:	02d7d7bb          	divuw	a5,a5,a3
    80002714:	f8b40423          	sb	a1,-120(s0)
    80002718:	42ebfc63          	bgeu	s7,a4,80002b50 <__printf+0x678>
    8000271c:	02079793          	slli	a5,a5,0x20
    80002720:	0207d793          	srli	a5,a5,0x20
    80002724:	00fd8db3          	add	s11,s11,a5
    80002728:	000dc703          	lbu	a4,0(s11)
    8000272c:	00a00793          	li	a5,10
    80002730:	00900c93          	li	s9,9
    80002734:	f8e404a3          	sb	a4,-119(s0)
    80002738:	00065c63          	bgez	a2,80002750 <__printf+0x278>
    8000273c:	f9040713          	addi	a4,s0,-112
    80002740:	00f70733          	add	a4,a4,a5
    80002744:	02d00693          	li	a3,45
    80002748:	fed70823          	sb	a3,-16(a4)
    8000274c:	00078c93          	mv	s9,a5
    80002750:	f8040793          	addi	a5,s0,-128
    80002754:	01978cb3          	add	s9,a5,s9
    80002758:	f7f40d13          	addi	s10,s0,-129
    8000275c:	000cc503          	lbu	a0,0(s9)
    80002760:	fffc8c93          	addi	s9,s9,-1
    80002764:	00000097          	auipc	ra,0x0
    80002768:	b90080e7          	jalr	-1136(ra) # 800022f4 <consputc>
    8000276c:	ffac98e3          	bne	s9,s10,8000275c <__printf+0x284>
    80002770:	00094503          	lbu	a0,0(s2)
    80002774:	e00514e3          	bnez	a0,8000257c <__printf+0xa4>
    80002778:	1a0c1663          	bnez	s8,80002924 <__printf+0x44c>
    8000277c:	08813083          	ld	ra,136(sp)
    80002780:	08013403          	ld	s0,128(sp)
    80002784:	07813483          	ld	s1,120(sp)
    80002788:	07013903          	ld	s2,112(sp)
    8000278c:	06813983          	ld	s3,104(sp)
    80002790:	06013a03          	ld	s4,96(sp)
    80002794:	05813a83          	ld	s5,88(sp)
    80002798:	05013b03          	ld	s6,80(sp)
    8000279c:	04813b83          	ld	s7,72(sp)
    800027a0:	04013c03          	ld	s8,64(sp)
    800027a4:	03813c83          	ld	s9,56(sp)
    800027a8:	03013d03          	ld	s10,48(sp)
    800027ac:	02813d83          	ld	s11,40(sp)
    800027b0:	0d010113          	addi	sp,sp,208
    800027b4:	00008067          	ret
    800027b8:	07300713          	li	a4,115
    800027bc:	1ce78a63          	beq	a5,a4,80002990 <__printf+0x4b8>
    800027c0:	07800713          	li	a4,120
    800027c4:	1ee79e63          	bne	a5,a4,800029c0 <__printf+0x4e8>
    800027c8:	f7843783          	ld	a5,-136(s0)
    800027cc:	0007a703          	lw	a4,0(a5)
    800027d0:	00878793          	addi	a5,a5,8
    800027d4:	f6f43c23          	sd	a5,-136(s0)
    800027d8:	28074263          	bltz	a4,80002a5c <__printf+0x584>
    800027dc:	00002d97          	auipc	s11,0x2
    800027e0:	a34d8d93          	addi	s11,s11,-1484 # 80004210 <digits>
    800027e4:	00f77793          	andi	a5,a4,15
    800027e8:	00fd87b3          	add	a5,s11,a5
    800027ec:	0007c683          	lbu	a3,0(a5)
    800027f0:	00f00613          	li	a2,15
    800027f4:	0007079b          	sext.w	a5,a4
    800027f8:	f8d40023          	sb	a3,-128(s0)
    800027fc:	0047559b          	srliw	a1,a4,0x4
    80002800:	0047569b          	srliw	a3,a4,0x4
    80002804:	00000c93          	li	s9,0
    80002808:	0ee65063          	bge	a2,a4,800028e8 <__printf+0x410>
    8000280c:	00f6f693          	andi	a3,a3,15
    80002810:	00dd86b3          	add	a3,s11,a3
    80002814:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002818:	0087d79b          	srliw	a5,a5,0x8
    8000281c:	00100c93          	li	s9,1
    80002820:	f8d400a3          	sb	a3,-127(s0)
    80002824:	0cb67263          	bgeu	a2,a1,800028e8 <__printf+0x410>
    80002828:	00f7f693          	andi	a3,a5,15
    8000282c:	00dd86b3          	add	a3,s11,a3
    80002830:	0006c583          	lbu	a1,0(a3)
    80002834:	00f00613          	li	a2,15
    80002838:	0047d69b          	srliw	a3,a5,0x4
    8000283c:	f8b40123          	sb	a1,-126(s0)
    80002840:	0047d593          	srli	a1,a5,0x4
    80002844:	28f67e63          	bgeu	a2,a5,80002ae0 <__printf+0x608>
    80002848:	00f6f693          	andi	a3,a3,15
    8000284c:	00dd86b3          	add	a3,s11,a3
    80002850:	0006c503          	lbu	a0,0(a3)
    80002854:	0087d813          	srli	a6,a5,0x8
    80002858:	0087d69b          	srliw	a3,a5,0x8
    8000285c:	f8a401a3          	sb	a0,-125(s0)
    80002860:	28b67663          	bgeu	a2,a1,80002aec <__printf+0x614>
    80002864:	00f6f693          	andi	a3,a3,15
    80002868:	00dd86b3          	add	a3,s11,a3
    8000286c:	0006c583          	lbu	a1,0(a3)
    80002870:	00c7d513          	srli	a0,a5,0xc
    80002874:	00c7d69b          	srliw	a3,a5,0xc
    80002878:	f8b40223          	sb	a1,-124(s0)
    8000287c:	29067a63          	bgeu	a2,a6,80002b10 <__printf+0x638>
    80002880:	00f6f693          	andi	a3,a3,15
    80002884:	00dd86b3          	add	a3,s11,a3
    80002888:	0006c583          	lbu	a1,0(a3)
    8000288c:	0107d813          	srli	a6,a5,0x10
    80002890:	0107d69b          	srliw	a3,a5,0x10
    80002894:	f8b402a3          	sb	a1,-123(s0)
    80002898:	28a67263          	bgeu	a2,a0,80002b1c <__printf+0x644>
    8000289c:	00f6f693          	andi	a3,a3,15
    800028a0:	00dd86b3          	add	a3,s11,a3
    800028a4:	0006c683          	lbu	a3,0(a3)
    800028a8:	0147d79b          	srliw	a5,a5,0x14
    800028ac:	f8d40323          	sb	a3,-122(s0)
    800028b0:	21067663          	bgeu	a2,a6,80002abc <__printf+0x5e4>
    800028b4:	02079793          	slli	a5,a5,0x20
    800028b8:	0207d793          	srli	a5,a5,0x20
    800028bc:	00fd8db3          	add	s11,s11,a5
    800028c0:	000dc683          	lbu	a3,0(s11)
    800028c4:	00800793          	li	a5,8
    800028c8:	00700c93          	li	s9,7
    800028cc:	f8d403a3          	sb	a3,-121(s0)
    800028d0:	00075c63          	bgez	a4,800028e8 <__printf+0x410>
    800028d4:	f9040713          	addi	a4,s0,-112
    800028d8:	00f70733          	add	a4,a4,a5
    800028dc:	02d00693          	li	a3,45
    800028e0:	fed70823          	sb	a3,-16(a4)
    800028e4:	00078c93          	mv	s9,a5
    800028e8:	f8040793          	addi	a5,s0,-128
    800028ec:	01978cb3          	add	s9,a5,s9
    800028f0:	f7f40d13          	addi	s10,s0,-129
    800028f4:	000cc503          	lbu	a0,0(s9)
    800028f8:	fffc8c93          	addi	s9,s9,-1
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	9f8080e7          	jalr	-1544(ra) # 800022f4 <consputc>
    80002904:	ff9d18e3          	bne	s10,s9,800028f4 <__printf+0x41c>
    80002908:	0100006f          	j	80002918 <__printf+0x440>
    8000290c:	00000097          	auipc	ra,0x0
    80002910:	9e8080e7          	jalr	-1560(ra) # 800022f4 <consputc>
    80002914:	000c8493          	mv	s1,s9
    80002918:	00094503          	lbu	a0,0(s2)
    8000291c:	c60510e3          	bnez	a0,8000257c <__printf+0xa4>
    80002920:	e40c0ee3          	beqz	s8,8000277c <__printf+0x2a4>
    80002924:	00003517          	auipc	a0,0x3
    80002928:	e9c50513          	addi	a0,a0,-356 # 800057c0 <pr>
    8000292c:	00001097          	auipc	ra,0x1
    80002930:	94c080e7          	jalr	-1716(ra) # 80003278 <release>
    80002934:	e49ff06f          	j	8000277c <__printf+0x2a4>
    80002938:	f7843783          	ld	a5,-136(s0)
    8000293c:	03000513          	li	a0,48
    80002940:	01000d13          	li	s10,16
    80002944:	00878713          	addi	a4,a5,8
    80002948:	0007bc83          	ld	s9,0(a5)
    8000294c:	f6e43c23          	sd	a4,-136(s0)
    80002950:	00000097          	auipc	ra,0x0
    80002954:	9a4080e7          	jalr	-1628(ra) # 800022f4 <consputc>
    80002958:	07800513          	li	a0,120
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	998080e7          	jalr	-1640(ra) # 800022f4 <consputc>
    80002964:	00002d97          	auipc	s11,0x2
    80002968:	8acd8d93          	addi	s11,s11,-1876 # 80004210 <digits>
    8000296c:	03ccd793          	srli	a5,s9,0x3c
    80002970:	00fd87b3          	add	a5,s11,a5
    80002974:	0007c503          	lbu	a0,0(a5)
    80002978:	fffd0d1b          	addiw	s10,s10,-1
    8000297c:	004c9c93          	slli	s9,s9,0x4
    80002980:	00000097          	auipc	ra,0x0
    80002984:	974080e7          	jalr	-1676(ra) # 800022f4 <consputc>
    80002988:	fe0d12e3          	bnez	s10,8000296c <__printf+0x494>
    8000298c:	f8dff06f          	j	80002918 <__printf+0x440>
    80002990:	f7843783          	ld	a5,-136(s0)
    80002994:	0007bc83          	ld	s9,0(a5)
    80002998:	00878793          	addi	a5,a5,8
    8000299c:	f6f43c23          	sd	a5,-136(s0)
    800029a0:	000c9a63          	bnez	s9,800029b4 <__printf+0x4dc>
    800029a4:	1080006f          	j	80002aac <__printf+0x5d4>
    800029a8:	001c8c93          	addi	s9,s9,1
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	948080e7          	jalr	-1720(ra) # 800022f4 <consputc>
    800029b4:	000cc503          	lbu	a0,0(s9)
    800029b8:	fe0518e3          	bnez	a0,800029a8 <__printf+0x4d0>
    800029bc:	f5dff06f          	j	80002918 <__printf+0x440>
    800029c0:	02500513          	li	a0,37
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	930080e7          	jalr	-1744(ra) # 800022f4 <consputc>
    800029cc:	000c8513          	mv	a0,s9
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	924080e7          	jalr	-1756(ra) # 800022f4 <consputc>
    800029d8:	f41ff06f          	j	80002918 <__printf+0x440>
    800029dc:	02500513          	li	a0,37
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	914080e7          	jalr	-1772(ra) # 800022f4 <consputc>
    800029e8:	f31ff06f          	j	80002918 <__printf+0x440>
    800029ec:	00030513          	mv	a0,t1
    800029f0:	00000097          	auipc	ra,0x0
    800029f4:	7bc080e7          	jalr	1980(ra) # 800031ac <acquire>
    800029f8:	b4dff06f          	j	80002544 <__printf+0x6c>
    800029fc:	40c0053b          	negw	a0,a2
    80002a00:	00a00713          	li	a4,10
    80002a04:	02e576bb          	remuw	a3,a0,a4
    80002a08:	00002d97          	auipc	s11,0x2
    80002a0c:	808d8d93          	addi	s11,s11,-2040 # 80004210 <digits>
    80002a10:	ff700593          	li	a1,-9
    80002a14:	02069693          	slli	a3,a3,0x20
    80002a18:	0206d693          	srli	a3,a3,0x20
    80002a1c:	00dd86b3          	add	a3,s11,a3
    80002a20:	0006c683          	lbu	a3,0(a3)
    80002a24:	02e557bb          	divuw	a5,a0,a4
    80002a28:	f8d40023          	sb	a3,-128(s0)
    80002a2c:	10b65e63          	bge	a2,a1,80002b48 <__printf+0x670>
    80002a30:	06300593          	li	a1,99
    80002a34:	02e7f6bb          	remuw	a3,a5,a4
    80002a38:	02069693          	slli	a3,a3,0x20
    80002a3c:	0206d693          	srli	a3,a3,0x20
    80002a40:	00dd86b3          	add	a3,s11,a3
    80002a44:	0006c683          	lbu	a3,0(a3)
    80002a48:	02e7d73b          	divuw	a4,a5,a4
    80002a4c:	00200793          	li	a5,2
    80002a50:	f8d400a3          	sb	a3,-127(s0)
    80002a54:	bca5ece3          	bltu	a1,a0,8000262c <__printf+0x154>
    80002a58:	ce5ff06f          	j	8000273c <__printf+0x264>
    80002a5c:	40e007bb          	negw	a5,a4
    80002a60:	00001d97          	auipc	s11,0x1
    80002a64:	7b0d8d93          	addi	s11,s11,1968 # 80004210 <digits>
    80002a68:	00f7f693          	andi	a3,a5,15
    80002a6c:	00dd86b3          	add	a3,s11,a3
    80002a70:	0006c583          	lbu	a1,0(a3)
    80002a74:	ff100613          	li	a2,-15
    80002a78:	0047d69b          	srliw	a3,a5,0x4
    80002a7c:	f8b40023          	sb	a1,-128(s0)
    80002a80:	0047d59b          	srliw	a1,a5,0x4
    80002a84:	0ac75e63          	bge	a4,a2,80002b40 <__printf+0x668>
    80002a88:	00f6f693          	andi	a3,a3,15
    80002a8c:	00dd86b3          	add	a3,s11,a3
    80002a90:	0006c603          	lbu	a2,0(a3)
    80002a94:	00f00693          	li	a3,15
    80002a98:	0087d79b          	srliw	a5,a5,0x8
    80002a9c:	f8c400a3          	sb	a2,-127(s0)
    80002aa0:	d8b6e4e3          	bltu	a3,a1,80002828 <__printf+0x350>
    80002aa4:	00200793          	li	a5,2
    80002aa8:	e2dff06f          	j	800028d4 <__printf+0x3fc>
    80002aac:	00001c97          	auipc	s9,0x1
    80002ab0:	744c8c93          	addi	s9,s9,1860 # 800041f0 <CONSOLE_STATUS+0x1e0>
    80002ab4:	02800513          	li	a0,40
    80002ab8:	ef1ff06f          	j	800029a8 <__printf+0x4d0>
    80002abc:	00700793          	li	a5,7
    80002ac0:	00600c93          	li	s9,6
    80002ac4:	e0dff06f          	j	800028d0 <__printf+0x3f8>
    80002ac8:	00700793          	li	a5,7
    80002acc:	00600c93          	li	s9,6
    80002ad0:	c69ff06f          	j	80002738 <__printf+0x260>
    80002ad4:	00300793          	li	a5,3
    80002ad8:	00200c93          	li	s9,2
    80002adc:	c5dff06f          	j	80002738 <__printf+0x260>
    80002ae0:	00300793          	li	a5,3
    80002ae4:	00200c93          	li	s9,2
    80002ae8:	de9ff06f          	j	800028d0 <__printf+0x3f8>
    80002aec:	00400793          	li	a5,4
    80002af0:	00300c93          	li	s9,3
    80002af4:	dddff06f          	j	800028d0 <__printf+0x3f8>
    80002af8:	00400793          	li	a5,4
    80002afc:	00300c93          	li	s9,3
    80002b00:	c39ff06f          	j	80002738 <__printf+0x260>
    80002b04:	00500793          	li	a5,5
    80002b08:	00400c93          	li	s9,4
    80002b0c:	c2dff06f          	j	80002738 <__printf+0x260>
    80002b10:	00500793          	li	a5,5
    80002b14:	00400c93          	li	s9,4
    80002b18:	db9ff06f          	j	800028d0 <__printf+0x3f8>
    80002b1c:	00600793          	li	a5,6
    80002b20:	00500c93          	li	s9,5
    80002b24:	dadff06f          	j	800028d0 <__printf+0x3f8>
    80002b28:	00600793          	li	a5,6
    80002b2c:	00500c93          	li	s9,5
    80002b30:	c09ff06f          	j	80002738 <__printf+0x260>
    80002b34:	00800793          	li	a5,8
    80002b38:	00700c93          	li	s9,7
    80002b3c:	bfdff06f          	j	80002738 <__printf+0x260>
    80002b40:	00100793          	li	a5,1
    80002b44:	d91ff06f          	j	800028d4 <__printf+0x3fc>
    80002b48:	00100793          	li	a5,1
    80002b4c:	bf1ff06f          	j	8000273c <__printf+0x264>
    80002b50:	00900793          	li	a5,9
    80002b54:	00800c93          	li	s9,8
    80002b58:	be1ff06f          	j	80002738 <__printf+0x260>
    80002b5c:	00001517          	auipc	a0,0x1
    80002b60:	69c50513          	addi	a0,a0,1692 # 800041f8 <CONSOLE_STATUS+0x1e8>
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	918080e7          	jalr	-1768(ra) # 8000247c <panic>

0000000080002b6c <printfinit>:
    80002b6c:	fe010113          	addi	sp,sp,-32
    80002b70:	00813823          	sd	s0,16(sp)
    80002b74:	00913423          	sd	s1,8(sp)
    80002b78:	00113c23          	sd	ra,24(sp)
    80002b7c:	02010413          	addi	s0,sp,32
    80002b80:	00003497          	auipc	s1,0x3
    80002b84:	c4048493          	addi	s1,s1,-960 # 800057c0 <pr>
    80002b88:	00048513          	mv	a0,s1
    80002b8c:	00001597          	auipc	a1,0x1
    80002b90:	67c58593          	addi	a1,a1,1660 # 80004208 <CONSOLE_STATUS+0x1f8>
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	5f4080e7          	jalr	1524(ra) # 80003188 <initlock>
    80002b9c:	01813083          	ld	ra,24(sp)
    80002ba0:	01013403          	ld	s0,16(sp)
    80002ba4:	0004ac23          	sw	zero,24(s1)
    80002ba8:	00813483          	ld	s1,8(sp)
    80002bac:	02010113          	addi	sp,sp,32
    80002bb0:	00008067          	ret

0000000080002bb4 <uartinit>:
    80002bb4:	ff010113          	addi	sp,sp,-16
    80002bb8:	00813423          	sd	s0,8(sp)
    80002bbc:	01010413          	addi	s0,sp,16
    80002bc0:	100007b7          	lui	a5,0x10000
    80002bc4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002bc8:	f8000713          	li	a4,-128
    80002bcc:	00e781a3          	sb	a4,3(a5)
    80002bd0:	00300713          	li	a4,3
    80002bd4:	00e78023          	sb	a4,0(a5)
    80002bd8:	000780a3          	sb	zero,1(a5)
    80002bdc:	00e781a3          	sb	a4,3(a5)
    80002be0:	00700693          	li	a3,7
    80002be4:	00d78123          	sb	a3,2(a5)
    80002be8:	00e780a3          	sb	a4,1(a5)
    80002bec:	00813403          	ld	s0,8(sp)
    80002bf0:	01010113          	addi	sp,sp,16
    80002bf4:	00008067          	ret

0000000080002bf8 <uartputc>:
    80002bf8:	00002797          	auipc	a5,0x2
    80002bfc:	9807a783          	lw	a5,-1664(a5) # 80004578 <panicked>
    80002c00:	00078463          	beqz	a5,80002c08 <uartputc+0x10>
    80002c04:	0000006f          	j	80002c04 <uartputc+0xc>
    80002c08:	fd010113          	addi	sp,sp,-48
    80002c0c:	02813023          	sd	s0,32(sp)
    80002c10:	00913c23          	sd	s1,24(sp)
    80002c14:	01213823          	sd	s2,16(sp)
    80002c18:	01313423          	sd	s3,8(sp)
    80002c1c:	02113423          	sd	ra,40(sp)
    80002c20:	03010413          	addi	s0,sp,48
    80002c24:	00002917          	auipc	s2,0x2
    80002c28:	95c90913          	addi	s2,s2,-1700 # 80004580 <uart_tx_r>
    80002c2c:	00093783          	ld	a5,0(s2)
    80002c30:	00002497          	auipc	s1,0x2
    80002c34:	95848493          	addi	s1,s1,-1704 # 80004588 <uart_tx_w>
    80002c38:	0004b703          	ld	a4,0(s1)
    80002c3c:	02078693          	addi	a3,a5,32
    80002c40:	00050993          	mv	s3,a0
    80002c44:	02e69c63          	bne	a3,a4,80002c7c <uartputc+0x84>
    80002c48:	00001097          	auipc	ra,0x1
    80002c4c:	834080e7          	jalr	-1996(ra) # 8000347c <push_on>
    80002c50:	00093783          	ld	a5,0(s2)
    80002c54:	0004b703          	ld	a4,0(s1)
    80002c58:	02078793          	addi	a5,a5,32
    80002c5c:	00e79463          	bne	a5,a4,80002c64 <uartputc+0x6c>
    80002c60:	0000006f          	j	80002c60 <uartputc+0x68>
    80002c64:	00001097          	auipc	ra,0x1
    80002c68:	88c080e7          	jalr	-1908(ra) # 800034f0 <pop_on>
    80002c6c:	00093783          	ld	a5,0(s2)
    80002c70:	0004b703          	ld	a4,0(s1)
    80002c74:	02078693          	addi	a3,a5,32
    80002c78:	fce688e3          	beq	a3,a4,80002c48 <uartputc+0x50>
    80002c7c:	01f77693          	andi	a3,a4,31
    80002c80:	00003597          	auipc	a1,0x3
    80002c84:	b6058593          	addi	a1,a1,-1184 # 800057e0 <uart_tx_buf>
    80002c88:	00d586b3          	add	a3,a1,a3
    80002c8c:	00170713          	addi	a4,a4,1
    80002c90:	01368023          	sb	s3,0(a3)
    80002c94:	00e4b023          	sd	a4,0(s1)
    80002c98:	10000637          	lui	a2,0x10000
    80002c9c:	02f71063          	bne	a4,a5,80002cbc <uartputc+0xc4>
    80002ca0:	0340006f          	j	80002cd4 <uartputc+0xdc>
    80002ca4:	00074703          	lbu	a4,0(a4)
    80002ca8:	00f93023          	sd	a5,0(s2)
    80002cac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002cb0:	00093783          	ld	a5,0(s2)
    80002cb4:	0004b703          	ld	a4,0(s1)
    80002cb8:	00f70e63          	beq	a4,a5,80002cd4 <uartputc+0xdc>
    80002cbc:	00564683          	lbu	a3,5(a2)
    80002cc0:	01f7f713          	andi	a4,a5,31
    80002cc4:	00e58733          	add	a4,a1,a4
    80002cc8:	0206f693          	andi	a3,a3,32
    80002ccc:	00178793          	addi	a5,a5,1
    80002cd0:	fc069ae3          	bnez	a3,80002ca4 <uartputc+0xac>
    80002cd4:	02813083          	ld	ra,40(sp)
    80002cd8:	02013403          	ld	s0,32(sp)
    80002cdc:	01813483          	ld	s1,24(sp)
    80002ce0:	01013903          	ld	s2,16(sp)
    80002ce4:	00813983          	ld	s3,8(sp)
    80002ce8:	03010113          	addi	sp,sp,48
    80002cec:	00008067          	ret

0000000080002cf0 <uartputc_sync>:
    80002cf0:	ff010113          	addi	sp,sp,-16
    80002cf4:	00813423          	sd	s0,8(sp)
    80002cf8:	01010413          	addi	s0,sp,16
    80002cfc:	00002717          	auipc	a4,0x2
    80002d00:	87c72703          	lw	a4,-1924(a4) # 80004578 <panicked>
    80002d04:	02071663          	bnez	a4,80002d30 <uartputc_sync+0x40>
    80002d08:	00050793          	mv	a5,a0
    80002d0c:	100006b7          	lui	a3,0x10000
    80002d10:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002d14:	02077713          	andi	a4,a4,32
    80002d18:	fe070ce3          	beqz	a4,80002d10 <uartputc_sync+0x20>
    80002d1c:	0ff7f793          	andi	a5,a5,255
    80002d20:	00f68023          	sb	a5,0(a3)
    80002d24:	00813403          	ld	s0,8(sp)
    80002d28:	01010113          	addi	sp,sp,16
    80002d2c:	00008067          	ret
    80002d30:	0000006f          	j	80002d30 <uartputc_sync+0x40>

0000000080002d34 <uartstart>:
    80002d34:	ff010113          	addi	sp,sp,-16
    80002d38:	00813423          	sd	s0,8(sp)
    80002d3c:	01010413          	addi	s0,sp,16
    80002d40:	00002617          	auipc	a2,0x2
    80002d44:	84060613          	addi	a2,a2,-1984 # 80004580 <uart_tx_r>
    80002d48:	00002517          	auipc	a0,0x2
    80002d4c:	84050513          	addi	a0,a0,-1984 # 80004588 <uart_tx_w>
    80002d50:	00063783          	ld	a5,0(a2)
    80002d54:	00053703          	ld	a4,0(a0)
    80002d58:	04f70263          	beq	a4,a5,80002d9c <uartstart+0x68>
    80002d5c:	100005b7          	lui	a1,0x10000
    80002d60:	00003817          	auipc	a6,0x3
    80002d64:	a8080813          	addi	a6,a6,-1408 # 800057e0 <uart_tx_buf>
    80002d68:	01c0006f          	j	80002d84 <uartstart+0x50>
    80002d6c:	0006c703          	lbu	a4,0(a3)
    80002d70:	00f63023          	sd	a5,0(a2)
    80002d74:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002d78:	00063783          	ld	a5,0(a2)
    80002d7c:	00053703          	ld	a4,0(a0)
    80002d80:	00f70e63          	beq	a4,a5,80002d9c <uartstart+0x68>
    80002d84:	01f7f713          	andi	a4,a5,31
    80002d88:	00e806b3          	add	a3,a6,a4
    80002d8c:	0055c703          	lbu	a4,5(a1)
    80002d90:	00178793          	addi	a5,a5,1
    80002d94:	02077713          	andi	a4,a4,32
    80002d98:	fc071ae3          	bnez	a4,80002d6c <uartstart+0x38>
    80002d9c:	00813403          	ld	s0,8(sp)
    80002da0:	01010113          	addi	sp,sp,16
    80002da4:	00008067          	ret

0000000080002da8 <uartgetc>:
    80002da8:	ff010113          	addi	sp,sp,-16
    80002dac:	00813423          	sd	s0,8(sp)
    80002db0:	01010413          	addi	s0,sp,16
    80002db4:	10000737          	lui	a4,0x10000
    80002db8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002dbc:	0017f793          	andi	a5,a5,1
    80002dc0:	00078c63          	beqz	a5,80002dd8 <uartgetc+0x30>
    80002dc4:	00074503          	lbu	a0,0(a4)
    80002dc8:	0ff57513          	andi	a0,a0,255
    80002dcc:	00813403          	ld	s0,8(sp)
    80002dd0:	01010113          	addi	sp,sp,16
    80002dd4:	00008067          	ret
    80002dd8:	fff00513          	li	a0,-1
    80002ddc:	ff1ff06f          	j	80002dcc <uartgetc+0x24>

0000000080002de0 <uartintr>:
    80002de0:	100007b7          	lui	a5,0x10000
    80002de4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002de8:	0017f793          	andi	a5,a5,1
    80002dec:	0a078463          	beqz	a5,80002e94 <uartintr+0xb4>
    80002df0:	fe010113          	addi	sp,sp,-32
    80002df4:	00813823          	sd	s0,16(sp)
    80002df8:	00913423          	sd	s1,8(sp)
    80002dfc:	00113c23          	sd	ra,24(sp)
    80002e00:	02010413          	addi	s0,sp,32
    80002e04:	100004b7          	lui	s1,0x10000
    80002e08:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002e0c:	0ff57513          	andi	a0,a0,255
    80002e10:	fffff097          	auipc	ra,0xfffff
    80002e14:	534080e7          	jalr	1332(ra) # 80002344 <consoleintr>
    80002e18:	0054c783          	lbu	a5,5(s1)
    80002e1c:	0017f793          	andi	a5,a5,1
    80002e20:	fe0794e3          	bnez	a5,80002e08 <uartintr+0x28>
    80002e24:	00001617          	auipc	a2,0x1
    80002e28:	75c60613          	addi	a2,a2,1884 # 80004580 <uart_tx_r>
    80002e2c:	00001517          	auipc	a0,0x1
    80002e30:	75c50513          	addi	a0,a0,1884 # 80004588 <uart_tx_w>
    80002e34:	00063783          	ld	a5,0(a2)
    80002e38:	00053703          	ld	a4,0(a0)
    80002e3c:	04f70263          	beq	a4,a5,80002e80 <uartintr+0xa0>
    80002e40:	100005b7          	lui	a1,0x10000
    80002e44:	00003817          	auipc	a6,0x3
    80002e48:	99c80813          	addi	a6,a6,-1636 # 800057e0 <uart_tx_buf>
    80002e4c:	01c0006f          	j	80002e68 <uartintr+0x88>
    80002e50:	0006c703          	lbu	a4,0(a3)
    80002e54:	00f63023          	sd	a5,0(a2)
    80002e58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002e5c:	00063783          	ld	a5,0(a2)
    80002e60:	00053703          	ld	a4,0(a0)
    80002e64:	00f70e63          	beq	a4,a5,80002e80 <uartintr+0xa0>
    80002e68:	01f7f713          	andi	a4,a5,31
    80002e6c:	00e806b3          	add	a3,a6,a4
    80002e70:	0055c703          	lbu	a4,5(a1)
    80002e74:	00178793          	addi	a5,a5,1
    80002e78:	02077713          	andi	a4,a4,32
    80002e7c:	fc071ae3          	bnez	a4,80002e50 <uartintr+0x70>
    80002e80:	01813083          	ld	ra,24(sp)
    80002e84:	01013403          	ld	s0,16(sp)
    80002e88:	00813483          	ld	s1,8(sp)
    80002e8c:	02010113          	addi	sp,sp,32
    80002e90:	00008067          	ret
    80002e94:	00001617          	auipc	a2,0x1
    80002e98:	6ec60613          	addi	a2,a2,1772 # 80004580 <uart_tx_r>
    80002e9c:	00001517          	auipc	a0,0x1
    80002ea0:	6ec50513          	addi	a0,a0,1772 # 80004588 <uart_tx_w>
    80002ea4:	00063783          	ld	a5,0(a2)
    80002ea8:	00053703          	ld	a4,0(a0)
    80002eac:	04f70263          	beq	a4,a5,80002ef0 <uartintr+0x110>
    80002eb0:	100005b7          	lui	a1,0x10000
    80002eb4:	00003817          	auipc	a6,0x3
    80002eb8:	92c80813          	addi	a6,a6,-1748 # 800057e0 <uart_tx_buf>
    80002ebc:	01c0006f          	j	80002ed8 <uartintr+0xf8>
    80002ec0:	0006c703          	lbu	a4,0(a3)
    80002ec4:	00f63023          	sd	a5,0(a2)
    80002ec8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002ecc:	00063783          	ld	a5,0(a2)
    80002ed0:	00053703          	ld	a4,0(a0)
    80002ed4:	02f70063          	beq	a4,a5,80002ef4 <uartintr+0x114>
    80002ed8:	01f7f713          	andi	a4,a5,31
    80002edc:	00e806b3          	add	a3,a6,a4
    80002ee0:	0055c703          	lbu	a4,5(a1)
    80002ee4:	00178793          	addi	a5,a5,1
    80002ee8:	02077713          	andi	a4,a4,32
    80002eec:	fc071ae3          	bnez	a4,80002ec0 <uartintr+0xe0>
    80002ef0:	00008067          	ret
    80002ef4:	00008067          	ret

0000000080002ef8 <kinit>:
    80002ef8:	fc010113          	addi	sp,sp,-64
    80002efc:	02913423          	sd	s1,40(sp)
    80002f00:	fffff7b7          	lui	a5,0xfffff
    80002f04:	00004497          	auipc	s1,0x4
    80002f08:	8fb48493          	addi	s1,s1,-1797 # 800067ff <end+0xfff>
    80002f0c:	02813823          	sd	s0,48(sp)
    80002f10:	01313c23          	sd	s3,24(sp)
    80002f14:	00f4f4b3          	and	s1,s1,a5
    80002f18:	02113c23          	sd	ra,56(sp)
    80002f1c:	03213023          	sd	s2,32(sp)
    80002f20:	01413823          	sd	s4,16(sp)
    80002f24:	01513423          	sd	s5,8(sp)
    80002f28:	04010413          	addi	s0,sp,64
    80002f2c:	000017b7          	lui	a5,0x1
    80002f30:	01100993          	li	s3,17
    80002f34:	00f487b3          	add	a5,s1,a5
    80002f38:	01b99993          	slli	s3,s3,0x1b
    80002f3c:	06f9e063          	bltu	s3,a5,80002f9c <kinit+0xa4>
    80002f40:	00003a97          	auipc	s5,0x3
    80002f44:	8c0a8a93          	addi	s5,s5,-1856 # 80005800 <end>
    80002f48:	0754ec63          	bltu	s1,s5,80002fc0 <kinit+0xc8>
    80002f4c:	0734fa63          	bgeu	s1,s3,80002fc0 <kinit+0xc8>
    80002f50:	00088a37          	lui	s4,0x88
    80002f54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002f58:	00001917          	auipc	s2,0x1
    80002f5c:	63890913          	addi	s2,s2,1592 # 80004590 <kmem>
    80002f60:	00ca1a13          	slli	s4,s4,0xc
    80002f64:	0140006f          	j	80002f78 <kinit+0x80>
    80002f68:	000017b7          	lui	a5,0x1
    80002f6c:	00f484b3          	add	s1,s1,a5
    80002f70:	0554e863          	bltu	s1,s5,80002fc0 <kinit+0xc8>
    80002f74:	0534f663          	bgeu	s1,s3,80002fc0 <kinit+0xc8>
    80002f78:	00001637          	lui	a2,0x1
    80002f7c:	00100593          	li	a1,1
    80002f80:	00048513          	mv	a0,s1
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	5e4080e7          	jalr	1508(ra) # 80003568 <__memset>
    80002f8c:	00093783          	ld	a5,0(s2)
    80002f90:	00f4b023          	sd	a5,0(s1)
    80002f94:	00993023          	sd	s1,0(s2)
    80002f98:	fd4498e3          	bne	s1,s4,80002f68 <kinit+0x70>
    80002f9c:	03813083          	ld	ra,56(sp)
    80002fa0:	03013403          	ld	s0,48(sp)
    80002fa4:	02813483          	ld	s1,40(sp)
    80002fa8:	02013903          	ld	s2,32(sp)
    80002fac:	01813983          	ld	s3,24(sp)
    80002fb0:	01013a03          	ld	s4,16(sp)
    80002fb4:	00813a83          	ld	s5,8(sp)
    80002fb8:	04010113          	addi	sp,sp,64
    80002fbc:	00008067          	ret
    80002fc0:	00001517          	auipc	a0,0x1
    80002fc4:	26850513          	addi	a0,a0,616 # 80004228 <digits+0x18>
    80002fc8:	fffff097          	auipc	ra,0xfffff
    80002fcc:	4b4080e7          	jalr	1204(ra) # 8000247c <panic>

0000000080002fd0 <freerange>:
    80002fd0:	fc010113          	addi	sp,sp,-64
    80002fd4:	000017b7          	lui	a5,0x1
    80002fd8:	02913423          	sd	s1,40(sp)
    80002fdc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002fe0:	009504b3          	add	s1,a0,s1
    80002fe4:	fffff537          	lui	a0,0xfffff
    80002fe8:	02813823          	sd	s0,48(sp)
    80002fec:	02113c23          	sd	ra,56(sp)
    80002ff0:	03213023          	sd	s2,32(sp)
    80002ff4:	01313c23          	sd	s3,24(sp)
    80002ff8:	01413823          	sd	s4,16(sp)
    80002ffc:	01513423          	sd	s5,8(sp)
    80003000:	01613023          	sd	s6,0(sp)
    80003004:	04010413          	addi	s0,sp,64
    80003008:	00a4f4b3          	and	s1,s1,a0
    8000300c:	00f487b3          	add	a5,s1,a5
    80003010:	06f5e463          	bltu	a1,a5,80003078 <freerange+0xa8>
    80003014:	00002a97          	auipc	s5,0x2
    80003018:	7eca8a93          	addi	s5,s5,2028 # 80005800 <end>
    8000301c:	0954e263          	bltu	s1,s5,800030a0 <freerange+0xd0>
    80003020:	01100993          	li	s3,17
    80003024:	01b99993          	slli	s3,s3,0x1b
    80003028:	0734fc63          	bgeu	s1,s3,800030a0 <freerange+0xd0>
    8000302c:	00058a13          	mv	s4,a1
    80003030:	00001917          	auipc	s2,0x1
    80003034:	56090913          	addi	s2,s2,1376 # 80004590 <kmem>
    80003038:	00002b37          	lui	s6,0x2
    8000303c:	0140006f          	j	80003050 <freerange+0x80>
    80003040:	000017b7          	lui	a5,0x1
    80003044:	00f484b3          	add	s1,s1,a5
    80003048:	0554ec63          	bltu	s1,s5,800030a0 <freerange+0xd0>
    8000304c:	0534fa63          	bgeu	s1,s3,800030a0 <freerange+0xd0>
    80003050:	00001637          	lui	a2,0x1
    80003054:	00100593          	li	a1,1
    80003058:	00048513          	mv	a0,s1
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	50c080e7          	jalr	1292(ra) # 80003568 <__memset>
    80003064:	00093703          	ld	a4,0(s2)
    80003068:	016487b3          	add	a5,s1,s6
    8000306c:	00e4b023          	sd	a4,0(s1)
    80003070:	00993023          	sd	s1,0(s2)
    80003074:	fcfa76e3          	bgeu	s4,a5,80003040 <freerange+0x70>
    80003078:	03813083          	ld	ra,56(sp)
    8000307c:	03013403          	ld	s0,48(sp)
    80003080:	02813483          	ld	s1,40(sp)
    80003084:	02013903          	ld	s2,32(sp)
    80003088:	01813983          	ld	s3,24(sp)
    8000308c:	01013a03          	ld	s4,16(sp)
    80003090:	00813a83          	ld	s5,8(sp)
    80003094:	00013b03          	ld	s6,0(sp)
    80003098:	04010113          	addi	sp,sp,64
    8000309c:	00008067          	ret
    800030a0:	00001517          	auipc	a0,0x1
    800030a4:	18850513          	addi	a0,a0,392 # 80004228 <digits+0x18>
    800030a8:	fffff097          	auipc	ra,0xfffff
    800030ac:	3d4080e7          	jalr	980(ra) # 8000247c <panic>

00000000800030b0 <kfree>:
    800030b0:	fe010113          	addi	sp,sp,-32
    800030b4:	00813823          	sd	s0,16(sp)
    800030b8:	00113c23          	sd	ra,24(sp)
    800030bc:	00913423          	sd	s1,8(sp)
    800030c0:	02010413          	addi	s0,sp,32
    800030c4:	03451793          	slli	a5,a0,0x34
    800030c8:	04079c63          	bnez	a5,80003120 <kfree+0x70>
    800030cc:	00002797          	auipc	a5,0x2
    800030d0:	73478793          	addi	a5,a5,1844 # 80005800 <end>
    800030d4:	00050493          	mv	s1,a0
    800030d8:	04f56463          	bltu	a0,a5,80003120 <kfree+0x70>
    800030dc:	01100793          	li	a5,17
    800030e0:	01b79793          	slli	a5,a5,0x1b
    800030e4:	02f57e63          	bgeu	a0,a5,80003120 <kfree+0x70>
    800030e8:	00001637          	lui	a2,0x1
    800030ec:	00100593          	li	a1,1
    800030f0:	00000097          	auipc	ra,0x0
    800030f4:	478080e7          	jalr	1144(ra) # 80003568 <__memset>
    800030f8:	00001797          	auipc	a5,0x1
    800030fc:	49878793          	addi	a5,a5,1176 # 80004590 <kmem>
    80003100:	0007b703          	ld	a4,0(a5)
    80003104:	01813083          	ld	ra,24(sp)
    80003108:	01013403          	ld	s0,16(sp)
    8000310c:	00e4b023          	sd	a4,0(s1)
    80003110:	0097b023          	sd	s1,0(a5)
    80003114:	00813483          	ld	s1,8(sp)
    80003118:	02010113          	addi	sp,sp,32
    8000311c:	00008067          	ret
    80003120:	00001517          	auipc	a0,0x1
    80003124:	10850513          	addi	a0,a0,264 # 80004228 <digits+0x18>
    80003128:	fffff097          	auipc	ra,0xfffff
    8000312c:	354080e7          	jalr	852(ra) # 8000247c <panic>

0000000080003130 <kalloc>:
    80003130:	fe010113          	addi	sp,sp,-32
    80003134:	00813823          	sd	s0,16(sp)
    80003138:	00913423          	sd	s1,8(sp)
    8000313c:	00113c23          	sd	ra,24(sp)
    80003140:	02010413          	addi	s0,sp,32
    80003144:	00001797          	auipc	a5,0x1
    80003148:	44c78793          	addi	a5,a5,1100 # 80004590 <kmem>
    8000314c:	0007b483          	ld	s1,0(a5)
    80003150:	02048063          	beqz	s1,80003170 <kalloc+0x40>
    80003154:	0004b703          	ld	a4,0(s1)
    80003158:	00001637          	lui	a2,0x1
    8000315c:	00500593          	li	a1,5
    80003160:	00048513          	mv	a0,s1
    80003164:	00e7b023          	sd	a4,0(a5)
    80003168:	00000097          	auipc	ra,0x0
    8000316c:	400080e7          	jalr	1024(ra) # 80003568 <__memset>
    80003170:	01813083          	ld	ra,24(sp)
    80003174:	01013403          	ld	s0,16(sp)
    80003178:	00048513          	mv	a0,s1
    8000317c:	00813483          	ld	s1,8(sp)
    80003180:	02010113          	addi	sp,sp,32
    80003184:	00008067          	ret

0000000080003188 <initlock>:
    80003188:	ff010113          	addi	sp,sp,-16
    8000318c:	00813423          	sd	s0,8(sp)
    80003190:	01010413          	addi	s0,sp,16
    80003194:	00813403          	ld	s0,8(sp)
    80003198:	00b53423          	sd	a1,8(a0)
    8000319c:	00052023          	sw	zero,0(a0)
    800031a0:	00053823          	sd	zero,16(a0)
    800031a4:	01010113          	addi	sp,sp,16
    800031a8:	00008067          	ret

00000000800031ac <acquire>:
    800031ac:	fe010113          	addi	sp,sp,-32
    800031b0:	00813823          	sd	s0,16(sp)
    800031b4:	00913423          	sd	s1,8(sp)
    800031b8:	00113c23          	sd	ra,24(sp)
    800031bc:	01213023          	sd	s2,0(sp)
    800031c0:	02010413          	addi	s0,sp,32
    800031c4:	00050493          	mv	s1,a0
    800031c8:	10002973          	csrr	s2,sstatus
    800031cc:	100027f3          	csrr	a5,sstatus
    800031d0:	ffd7f793          	andi	a5,a5,-3
    800031d4:	10079073          	csrw	sstatus,a5
    800031d8:	fffff097          	auipc	ra,0xfffff
    800031dc:	8ec080e7          	jalr	-1812(ra) # 80001ac4 <mycpu>
    800031e0:	07852783          	lw	a5,120(a0)
    800031e4:	06078e63          	beqz	a5,80003260 <acquire+0xb4>
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	8dc080e7          	jalr	-1828(ra) # 80001ac4 <mycpu>
    800031f0:	07852783          	lw	a5,120(a0)
    800031f4:	0004a703          	lw	a4,0(s1)
    800031f8:	0017879b          	addiw	a5,a5,1
    800031fc:	06f52c23          	sw	a5,120(a0)
    80003200:	04071063          	bnez	a4,80003240 <acquire+0x94>
    80003204:	00100713          	li	a4,1
    80003208:	00070793          	mv	a5,a4
    8000320c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003210:	0007879b          	sext.w	a5,a5
    80003214:	fe079ae3          	bnez	a5,80003208 <acquire+0x5c>
    80003218:	0ff0000f          	fence
    8000321c:	fffff097          	auipc	ra,0xfffff
    80003220:	8a8080e7          	jalr	-1880(ra) # 80001ac4 <mycpu>
    80003224:	01813083          	ld	ra,24(sp)
    80003228:	01013403          	ld	s0,16(sp)
    8000322c:	00a4b823          	sd	a0,16(s1)
    80003230:	00013903          	ld	s2,0(sp)
    80003234:	00813483          	ld	s1,8(sp)
    80003238:	02010113          	addi	sp,sp,32
    8000323c:	00008067          	ret
    80003240:	0104b903          	ld	s2,16(s1)
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	880080e7          	jalr	-1920(ra) # 80001ac4 <mycpu>
    8000324c:	faa91ce3          	bne	s2,a0,80003204 <acquire+0x58>
    80003250:	00001517          	auipc	a0,0x1
    80003254:	fe050513          	addi	a0,a0,-32 # 80004230 <digits+0x20>
    80003258:	fffff097          	auipc	ra,0xfffff
    8000325c:	224080e7          	jalr	548(ra) # 8000247c <panic>
    80003260:	00195913          	srli	s2,s2,0x1
    80003264:	fffff097          	auipc	ra,0xfffff
    80003268:	860080e7          	jalr	-1952(ra) # 80001ac4 <mycpu>
    8000326c:	00197913          	andi	s2,s2,1
    80003270:	07252e23          	sw	s2,124(a0)
    80003274:	f75ff06f          	j	800031e8 <acquire+0x3c>

0000000080003278 <release>:
    80003278:	fe010113          	addi	sp,sp,-32
    8000327c:	00813823          	sd	s0,16(sp)
    80003280:	00113c23          	sd	ra,24(sp)
    80003284:	00913423          	sd	s1,8(sp)
    80003288:	01213023          	sd	s2,0(sp)
    8000328c:	02010413          	addi	s0,sp,32
    80003290:	00052783          	lw	a5,0(a0)
    80003294:	00079a63          	bnez	a5,800032a8 <release+0x30>
    80003298:	00001517          	auipc	a0,0x1
    8000329c:	fa050513          	addi	a0,a0,-96 # 80004238 <digits+0x28>
    800032a0:	fffff097          	auipc	ra,0xfffff
    800032a4:	1dc080e7          	jalr	476(ra) # 8000247c <panic>
    800032a8:	01053903          	ld	s2,16(a0)
    800032ac:	00050493          	mv	s1,a0
    800032b0:	fffff097          	auipc	ra,0xfffff
    800032b4:	814080e7          	jalr	-2028(ra) # 80001ac4 <mycpu>
    800032b8:	fea910e3          	bne	s2,a0,80003298 <release+0x20>
    800032bc:	0004b823          	sd	zero,16(s1)
    800032c0:	0ff0000f          	fence
    800032c4:	0f50000f          	fence	iorw,ow
    800032c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800032cc:	ffffe097          	auipc	ra,0xffffe
    800032d0:	7f8080e7          	jalr	2040(ra) # 80001ac4 <mycpu>
    800032d4:	100027f3          	csrr	a5,sstatus
    800032d8:	0027f793          	andi	a5,a5,2
    800032dc:	04079a63          	bnez	a5,80003330 <release+0xb8>
    800032e0:	07852783          	lw	a5,120(a0)
    800032e4:	02f05e63          	blez	a5,80003320 <release+0xa8>
    800032e8:	fff7871b          	addiw	a4,a5,-1
    800032ec:	06e52c23          	sw	a4,120(a0)
    800032f0:	00071c63          	bnez	a4,80003308 <release+0x90>
    800032f4:	07c52783          	lw	a5,124(a0)
    800032f8:	00078863          	beqz	a5,80003308 <release+0x90>
    800032fc:	100027f3          	csrr	a5,sstatus
    80003300:	0027e793          	ori	a5,a5,2
    80003304:	10079073          	csrw	sstatus,a5
    80003308:	01813083          	ld	ra,24(sp)
    8000330c:	01013403          	ld	s0,16(sp)
    80003310:	00813483          	ld	s1,8(sp)
    80003314:	00013903          	ld	s2,0(sp)
    80003318:	02010113          	addi	sp,sp,32
    8000331c:	00008067          	ret
    80003320:	00001517          	auipc	a0,0x1
    80003324:	f3850513          	addi	a0,a0,-200 # 80004258 <digits+0x48>
    80003328:	fffff097          	auipc	ra,0xfffff
    8000332c:	154080e7          	jalr	340(ra) # 8000247c <panic>
    80003330:	00001517          	auipc	a0,0x1
    80003334:	f1050513          	addi	a0,a0,-240 # 80004240 <digits+0x30>
    80003338:	fffff097          	auipc	ra,0xfffff
    8000333c:	144080e7          	jalr	324(ra) # 8000247c <panic>

0000000080003340 <holding>:
    80003340:	00052783          	lw	a5,0(a0)
    80003344:	00079663          	bnez	a5,80003350 <holding+0x10>
    80003348:	00000513          	li	a0,0
    8000334c:	00008067          	ret
    80003350:	fe010113          	addi	sp,sp,-32
    80003354:	00813823          	sd	s0,16(sp)
    80003358:	00913423          	sd	s1,8(sp)
    8000335c:	00113c23          	sd	ra,24(sp)
    80003360:	02010413          	addi	s0,sp,32
    80003364:	01053483          	ld	s1,16(a0)
    80003368:	ffffe097          	auipc	ra,0xffffe
    8000336c:	75c080e7          	jalr	1884(ra) # 80001ac4 <mycpu>
    80003370:	01813083          	ld	ra,24(sp)
    80003374:	01013403          	ld	s0,16(sp)
    80003378:	40a48533          	sub	a0,s1,a0
    8000337c:	00153513          	seqz	a0,a0
    80003380:	00813483          	ld	s1,8(sp)
    80003384:	02010113          	addi	sp,sp,32
    80003388:	00008067          	ret

000000008000338c <push_off>:
    8000338c:	fe010113          	addi	sp,sp,-32
    80003390:	00813823          	sd	s0,16(sp)
    80003394:	00113c23          	sd	ra,24(sp)
    80003398:	00913423          	sd	s1,8(sp)
    8000339c:	02010413          	addi	s0,sp,32
    800033a0:	100024f3          	csrr	s1,sstatus
    800033a4:	100027f3          	csrr	a5,sstatus
    800033a8:	ffd7f793          	andi	a5,a5,-3
    800033ac:	10079073          	csrw	sstatus,a5
    800033b0:	ffffe097          	auipc	ra,0xffffe
    800033b4:	714080e7          	jalr	1812(ra) # 80001ac4 <mycpu>
    800033b8:	07852783          	lw	a5,120(a0)
    800033bc:	02078663          	beqz	a5,800033e8 <push_off+0x5c>
    800033c0:	ffffe097          	auipc	ra,0xffffe
    800033c4:	704080e7          	jalr	1796(ra) # 80001ac4 <mycpu>
    800033c8:	07852783          	lw	a5,120(a0)
    800033cc:	01813083          	ld	ra,24(sp)
    800033d0:	01013403          	ld	s0,16(sp)
    800033d4:	0017879b          	addiw	a5,a5,1
    800033d8:	06f52c23          	sw	a5,120(a0)
    800033dc:	00813483          	ld	s1,8(sp)
    800033e0:	02010113          	addi	sp,sp,32
    800033e4:	00008067          	ret
    800033e8:	0014d493          	srli	s1,s1,0x1
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	6d8080e7          	jalr	1752(ra) # 80001ac4 <mycpu>
    800033f4:	0014f493          	andi	s1,s1,1
    800033f8:	06952e23          	sw	s1,124(a0)
    800033fc:	fc5ff06f          	j	800033c0 <push_off+0x34>

0000000080003400 <pop_off>:
    80003400:	ff010113          	addi	sp,sp,-16
    80003404:	00813023          	sd	s0,0(sp)
    80003408:	00113423          	sd	ra,8(sp)
    8000340c:	01010413          	addi	s0,sp,16
    80003410:	ffffe097          	auipc	ra,0xffffe
    80003414:	6b4080e7          	jalr	1716(ra) # 80001ac4 <mycpu>
    80003418:	100027f3          	csrr	a5,sstatus
    8000341c:	0027f793          	andi	a5,a5,2
    80003420:	04079663          	bnez	a5,8000346c <pop_off+0x6c>
    80003424:	07852783          	lw	a5,120(a0)
    80003428:	02f05a63          	blez	a5,8000345c <pop_off+0x5c>
    8000342c:	fff7871b          	addiw	a4,a5,-1
    80003430:	06e52c23          	sw	a4,120(a0)
    80003434:	00071c63          	bnez	a4,8000344c <pop_off+0x4c>
    80003438:	07c52783          	lw	a5,124(a0)
    8000343c:	00078863          	beqz	a5,8000344c <pop_off+0x4c>
    80003440:	100027f3          	csrr	a5,sstatus
    80003444:	0027e793          	ori	a5,a5,2
    80003448:	10079073          	csrw	sstatus,a5
    8000344c:	00813083          	ld	ra,8(sp)
    80003450:	00013403          	ld	s0,0(sp)
    80003454:	01010113          	addi	sp,sp,16
    80003458:	00008067          	ret
    8000345c:	00001517          	auipc	a0,0x1
    80003460:	dfc50513          	addi	a0,a0,-516 # 80004258 <digits+0x48>
    80003464:	fffff097          	auipc	ra,0xfffff
    80003468:	018080e7          	jalr	24(ra) # 8000247c <panic>
    8000346c:	00001517          	auipc	a0,0x1
    80003470:	dd450513          	addi	a0,a0,-556 # 80004240 <digits+0x30>
    80003474:	fffff097          	auipc	ra,0xfffff
    80003478:	008080e7          	jalr	8(ra) # 8000247c <panic>

000000008000347c <push_on>:
    8000347c:	fe010113          	addi	sp,sp,-32
    80003480:	00813823          	sd	s0,16(sp)
    80003484:	00113c23          	sd	ra,24(sp)
    80003488:	00913423          	sd	s1,8(sp)
    8000348c:	02010413          	addi	s0,sp,32
    80003490:	100024f3          	csrr	s1,sstatus
    80003494:	100027f3          	csrr	a5,sstatus
    80003498:	0027e793          	ori	a5,a5,2
    8000349c:	10079073          	csrw	sstatus,a5
    800034a0:	ffffe097          	auipc	ra,0xffffe
    800034a4:	624080e7          	jalr	1572(ra) # 80001ac4 <mycpu>
    800034a8:	07852783          	lw	a5,120(a0)
    800034ac:	02078663          	beqz	a5,800034d8 <push_on+0x5c>
    800034b0:	ffffe097          	auipc	ra,0xffffe
    800034b4:	614080e7          	jalr	1556(ra) # 80001ac4 <mycpu>
    800034b8:	07852783          	lw	a5,120(a0)
    800034bc:	01813083          	ld	ra,24(sp)
    800034c0:	01013403          	ld	s0,16(sp)
    800034c4:	0017879b          	addiw	a5,a5,1
    800034c8:	06f52c23          	sw	a5,120(a0)
    800034cc:	00813483          	ld	s1,8(sp)
    800034d0:	02010113          	addi	sp,sp,32
    800034d4:	00008067          	ret
    800034d8:	0014d493          	srli	s1,s1,0x1
    800034dc:	ffffe097          	auipc	ra,0xffffe
    800034e0:	5e8080e7          	jalr	1512(ra) # 80001ac4 <mycpu>
    800034e4:	0014f493          	andi	s1,s1,1
    800034e8:	06952e23          	sw	s1,124(a0)
    800034ec:	fc5ff06f          	j	800034b0 <push_on+0x34>

00000000800034f0 <pop_on>:
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00813023          	sd	s0,0(sp)
    800034f8:	00113423          	sd	ra,8(sp)
    800034fc:	01010413          	addi	s0,sp,16
    80003500:	ffffe097          	auipc	ra,0xffffe
    80003504:	5c4080e7          	jalr	1476(ra) # 80001ac4 <mycpu>
    80003508:	100027f3          	csrr	a5,sstatus
    8000350c:	0027f793          	andi	a5,a5,2
    80003510:	04078463          	beqz	a5,80003558 <pop_on+0x68>
    80003514:	07852783          	lw	a5,120(a0)
    80003518:	02f05863          	blez	a5,80003548 <pop_on+0x58>
    8000351c:	fff7879b          	addiw	a5,a5,-1
    80003520:	06f52c23          	sw	a5,120(a0)
    80003524:	07853783          	ld	a5,120(a0)
    80003528:	00079863          	bnez	a5,80003538 <pop_on+0x48>
    8000352c:	100027f3          	csrr	a5,sstatus
    80003530:	ffd7f793          	andi	a5,a5,-3
    80003534:	10079073          	csrw	sstatus,a5
    80003538:	00813083          	ld	ra,8(sp)
    8000353c:	00013403          	ld	s0,0(sp)
    80003540:	01010113          	addi	sp,sp,16
    80003544:	00008067          	ret
    80003548:	00001517          	auipc	a0,0x1
    8000354c:	d3850513          	addi	a0,a0,-712 # 80004280 <digits+0x70>
    80003550:	fffff097          	auipc	ra,0xfffff
    80003554:	f2c080e7          	jalr	-212(ra) # 8000247c <panic>
    80003558:	00001517          	auipc	a0,0x1
    8000355c:	d0850513          	addi	a0,a0,-760 # 80004260 <digits+0x50>
    80003560:	fffff097          	auipc	ra,0xfffff
    80003564:	f1c080e7          	jalr	-228(ra) # 8000247c <panic>

0000000080003568 <__memset>:
    80003568:	ff010113          	addi	sp,sp,-16
    8000356c:	00813423          	sd	s0,8(sp)
    80003570:	01010413          	addi	s0,sp,16
    80003574:	1a060e63          	beqz	a2,80003730 <__memset+0x1c8>
    80003578:	40a007b3          	neg	a5,a0
    8000357c:	0077f793          	andi	a5,a5,7
    80003580:	00778693          	addi	a3,a5,7
    80003584:	00b00813          	li	a6,11
    80003588:	0ff5f593          	andi	a1,a1,255
    8000358c:	fff6071b          	addiw	a4,a2,-1
    80003590:	1b06e663          	bltu	a3,a6,8000373c <__memset+0x1d4>
    80003594:	1cd76463          	bltu	a4,a3,8000375c <__memset+0x1f4>
    80003598:	1a078e63          	beqz	a5,80003754 <__memset+0x1ec>
    8000359c:	00b50023          	sb	a1,0(a0)
    800035a0:	00100713          	li	a4,1
    800035a4:	1ae78463          	beq	a5,a4,8000374c <__memset+0x1e4>
    800035a8:	00b500a3          	sb	a1,1(a0)
    800035ac:	00200713          	li	a4,2
    800035b0:	1ae78a63          	beq	a5,a4,80003764 <__memset+0x1fc>
    800035b4:	00b50123          	sb	a1,2(a0)
    800035b8:	00300713          	li	a4,3
    800035bc:	18e78463          	beq	a5,a4,80003744 <__memset+0x1dc>
    800035c0:	00b501a3          	sb	a1,3(a0)
    800035c4:	00400713          	li	a4,4
    800035c8:	1ae78263          	beq	a5,a4,8000376c <__memset+0x204>
    800035cc:	00b50223          	sb	a1,4(a0)
    800035d0:	00500713          	li	a4,5
    800035d4:	1ae78063          	beq	a5,a4,80003774 <__memset+0x20c>
    800035d8:	00b502a3          	sb	a1,5(a0)
    800035dc:	00700713          	li	a4,7
    800035e0:	18e79e63          	bne	a5,a4,8000377c <__memset+0x214>
    800035e4:	00b50323          	sb	a1,6(a0)
    800035e8:	00700e93          	li	t4,7
    800035ec:	00859713          	slli	a4,a1,0x8
    800035f0:	00e5e733          	or	a4,a1,a4
    800035f4:	01059e13          	slli	t3,a1,0x10
    800035f8:	01c76e33          	or	t3,a4,t3
    800035fc:	01859313          	slli	t1,a1,0x18
    80003600:	006e6333          	or	t1,t3,t1
    80003604:	02059893          	slli	a7,a1,0x20
    80003608:	40f60e3b          	subw	t3,a2,a5
    8000360c:	011368b3          	or	a7,t1,a7
    80003610:	02859813          	slli	a6,a1,0x28
    80003614:	0108e833          	or	a6,a7,a6
    80003618:	03059693          	slli	a3,a1,0x30
    8000361c:	003e589b          	srliw	a7,t3,0x3
    80003620:	00d866b3          	or	a3,a6,a3
    80003624:	03859713          	slli	a4,a1,0x38
    80003628:	00389813          	slli	a6,a7,0x3
    8000362c:	00f507b3          	add	a5,a0,a5
    80003630:	00e6e733          	or	a4,a3,a4
    80003634:	000e089b          	sext.w	a7,t3
    80003638:	00f806b3          	add	a3,a6,a5
    8000363c:	00e7b023          	sd	a4,0(a5)
    80003640:	00878793          	addi	a5,a5,8
    80003644:	fed79ce3          	bne	a5,a3,8000363c <__memset+0xd4>
    80003648:	ff8e7793          	andi	a5,t3,-8
    8000364c:	0007871b          	sext.w	a4,a5
    80003650:	01d787bb          	addw	a5,a5,t4
    80003654:	0ce88e63          	beq	a7,a4,80003730 <__memset+0x1c8>
    80003658:	00f50733          	add	a4,a0,a5
    8000365c:	00b70023          	sb	a1,0(a4)
    80003660:	0017871b          	addiw	a4,a5,1
    80003664:	0cc77663          	bgeu	a4,a2,80003730 <__memset+0x1c8>
    80003668:	00e50733          	add	a4,a0,a4
    8000366c:	00b70023          	sb	a1,0(a4)
    80003670:	0027871b          	addiw	a4,a5,2
    80003674:	0ac77e63          	bgeu	a4,a2,80003730 <__memset+0x1c8>
    80003678:	00e50733          	add	a4,a0,a4
    8000367c:	00b70023          	sb	a1,0(a4)
    80003680:	0037871b          	addiw	a4,a5,3
    80003684:	0ac77663          	bgeu	a4,a2,80003730 <__memset+0x1c8>
    80003688:	00e50733          	add	a4,a0,a4
    8000368c:	00b70023          	sb	a1,0(a4)
    80003690:	0047871b          	addiw	a4,a5,4
    80003694:	08c77e63          	bgeu	a4,a2,80003730 <__memset+0x1c8>
    80003698:	00e50733          	add	a4,a0,a4
    8000369c:	00b70023          	sb	a1,0(a4)
    800036a0:	0057871b          	addiw	a4,a5,5
    800036a4:	08c77663          	bgeu	a4,a2,80003730 <__memset+0x1c8>
    800036a8:	00e50733          	add	a4,a0,a4
    800036ac:	00b70023          	sb	a1,0(a4)
    800036b0:	0067871b          	addiw	a4,a5,6
    800036b4:	06c77e63          	bgeu	a4,a2,80003730 <__memset+0x1c8>
    800036b8:	00e50733          	add	a4,a0,a4
    800036bc:	00b70023          	sb	a1,0(a4)
    800036c0:	0077871b          	addiw	a4,a5,7
    800036c4:	06c77663          	bgeu	a4,a2,80003730 <__memset+0x1c8>
    800036c8:	00e50733          	add	a4,a0,a4
    800036cc:	00b70023          	sb	a1,0(a4)
    800036d0:	0087871b          	addiw	a4,a5,8
    800036d4:	04c77e63          	bgeu	a4,a2,80003730 <__memset+0x1c8>
    800036d8:	00e50733          	add	a4,a0,a4
    800036dc:	00b70023          	sb	a1,0(a4)
    800036e0:	0097871b          	addiw	a4,a5,9
    800036e4:	04c77663          	bgeu	a4,a2,80003730 <__memset+0x1c8>
    800036e8:	00e50733          	add	a4,a0,a4
    800036ec:	00b70023          	sb	a1,0(a4)
    800036f0:	00a7871b          	addiw	a4,a5,10
    800036f4:	02c77e63          	bgeu	a4,a2,80003730 <__memset+0x1c8>
    800036f8:	00e50733          	add	a4,a0,a4
    800036fc:	00b70023          	sb	a1,0(a4)
    80003700:	00b7871b          	addiw	a4,a5,11
    80003704:	02c77663          	bgeu	a4,a2,80003730 <__memset+0x1c8>
    80003708:	00e50733          	add	a4,a0,a4
    8000370c:	00b70023          	sb	a1,0(a4)
    80003710:	00c7871b          	addiw	a4,a5,12
    80003714:	00c77e63          	bgeu	a4,a2,80003730 <__memset+0x1c8>
    80003718:	00e50733          	add	a4,a0,a4
    8000371c:	00b70023          	sb	a1,0(a4)
    80003720:	00d7879b          	addiw	a5,a5,13
    80003724:	00c7f663          	bgeu	a5,a2,80003730 <__memset+0x1c8>
    80003728:	00f507b3          	add	a5,a0,a5
    8000372c:	00b78023          	sb	a1,0(a5)
    80003730:	00813403          	ld	s0,8(sp)
    80003734:	01010113          	addi	sp,sp,16
    80003738:	00008067          	ret
    8000373c:	00b00693          	li	a3,11
    80003740:	e55ff06f          	j	80003594 <__memset+0x2c>
    80003744:	00300e93          	li	t4,3
    80003748:	ea5ff06f          	j	800035ec <__memset+0x84>
    8000374c:	00100e93          	li	t4,1
    80003750:	e9dff06f          	j	800035ec <__memset+0x84>
    80003754:	00000e93          	li	t4,0
    80003758:	e95ff06f          	j	800035ec <__memset+0x84>
    8000375c:	00000793          	li	a5,0
    80003760:	ef9ff06f          	j	80003658 <__memset+0xf0>
    80003764:	00200e93          	li	t4,2
    80003768:	e85ff06f          	j	800035ec <__memset+0x84>
    8000376c:	00400e93          	li	t4,4
    80003770:	e7dff06f          	j	800035ec <__memset+0x84>
    80003774:	00500e93          	li	t4,5
    80003778:	e75ff06f          	j	800035ec <__memset+0x84>
    8000377c:	00600e93          	li	t4,6
    80003780:	e6dff06f          	j	800035ec <__memset+0x84>

0000000080003784 <__memmove>:
    80003784:	ff010113          	addi	sp,sp,-16
    80003788:	00813423          	sd	s0,8(sp)
    8000378c:	01010413          	addi	s0,sp,16
    80003790:	0e060863          	beqz	a2,80003880 <__memmove+0xfc>
    80003794:	fff6069b          	addiw	a3,a2,-1
    80003798:	0006881b          	sext.w	a6,a3
    8000379c:	0ea5e863          	bltu	a1,a0,8000388c <__memmove+0x108>
    800037a0:	00758713          	addi	a4,a1,7
    800037a4:	00a5e7b3          	or	a5,a1,a0
    800037a8:	40a70733          	sub	a4,a4,a0
    800037ac:	0077f793          	andi	a5,a5,7
    800037b0:	00f73713          	sltiu	a4,a4,15
    800037b4:	00174713          	xori	a4,a4,1
    800037b8:	0017b793          	seqz	a5,a5
    800037bc:	00e7f7b3          	and	a5,a5,a4
    800037c0:	10078863          	beqz	a5,800038d0 <__memmove+0x14c>
    800037c4:	00900793          	li	a5,9
    800037c8:	1107f463          	bgeu	a5,a6,800038d0 <__memmove+0x14c>
    800037cc:	0036581b          	srliw	a6,a2,0x3
    800037d0:	fff8081b          	addiw	a6,a6,-1
    800037d4:	02081813          	slli	a6,a6,0x20
    800037d8:	01d85893          	srli	a7,a6,0x1d
    800037dc:	00858813          	addi	a6,a1,8
    800037e0:	00058793          	mv	a5,a1
    800037e4:	00050713          	mv	a4,a0
    800037e8:	01088833          	add	a6,a7,a6
    800037ec:	0007b883          	ld	a7,0(a5)
    800037f0:	00878793          	addi	a5,a5,8
    800037f4:	00870713          	addi	a4,a4,8
    800037f8:	ff173c23          	sd	a7,-8(a4)
    800037fc:	ff0798e3          	bne	a5,a6,800037ec <__memmove+0x68>
    80003800:	ff867713          	andi	a4,a2,-8
    80003804:	02071793          	slli	a5,a4,0x20
    80003808:	0207d793          	srli	a5,a5,0x20
    8000380c:	00f585b3          	add	a1,a1,a5
    80003810:	40e686bb          	subw	a3,a3,a4
    80003814:	00f507b3          	add	a5,a0,a5
    80003818:	06e60463          	beq	a2,a4,80003880 <__memmove+0xfc>
    8000381c:	0005c703          	lbu	a4,0(a1)
    80003820:	00e78023          	sb	a4,0(a5)
    80003824:	04068e63          	beqz	a3,80003880 <__memmove+0xfc>
    80003828:	0015c603          	lbu	a2,1(a1)
    8000382c:	00100713          	li	a4,1
    80003830:	00c780a3          	sb	a2,1(a5)
    80003834:	04e68663          	beq	a3,a4,80003880 <__memmove+0xfc>
    80003838:	0025c603          	lbu	a2,2(a1)
    8000383c:	00200713          	li	a4,2
    80003840:	00c78123          	sb	a2,2(a5)
    80003844:	02e68e63          	beq	a3,a4,80003880 <__memmove+0xfc>
    80003848:	0035c603          	lbu	a2,3(a1)
    8000384c:	00300713          	li	a4,3
    80003850:	00c781a3          	sb	a2,3(a5)
    80003854:	02e68663          	beq	a3,a4,80003880 <__memmove+0xfc>
    80003858:	0045c603          	lbu	a2,4(a1)
    8000385c:	00400713          	li	a4,4
    80003860:	00c78223          	sb	a2,4(a5)
    80003864:	00e68e63          	beq	a3,a4,80003880 <__memmove+0xfc>
    80003868:	0055c603          	lbu	a2,5(a1)
    8000386c:	00500713          	li	a4,5
    80003870:	00c782a3          	sb	a2,5(a5)
    80003874:	00e68663          	beq	a3,a4,80003880 <__memmove+0xfc>
    80003878:	0065c703          	lbu	a4,6(a1)
    8000387c:	00e78323          	sb	a4,6(a5)
    80003880:	00813403          	ld	s0,8(sp)
    80003884:	01010113          	addi	sp,sp,16
    80003888:	00008067          	ret
    8000388c:	02061713          	slli	a4,a2,0x20
    80003890:	02075713          	srli	a4,a4,0x20
    80003894:	00e587b3          	add	a5,a1,a4
    80003898:	f0f574e3          	bgeu	a0,a5,800037a0 <__memmove+0x1c>
    8000389c:	02069613          	slli	a2,a3,0x20
    800038a0:	02065613          	srli	a2,a2,0x20
    800038a4:	fff64613          	not	a2,a2
    800038a8:	00e50733          	add	a4,a0,a4
    800038ac:	00c78633          	add	a2,a5,a2
    800038b0:	fff7c683          	lbu	a3,-1(a5)
    800038b4:	fff78793          	addi	a5,a5,-1
    800038b8:	fff70713          	addi	a4,a4,-1
    800038bc:	00d70023          	sb	a3,0(a4)
    800038c0:	fec798e3          	bne	a5,a2,800038b0 <__memmove+0x12c>
    800038c4:	00813403          	ld	s0,8(sp)
    800038c8:	01010113          	addi	sp,sp,16
    800038cc:	00008067          	ret
    800038d0:	02069713          	slli	a4,a3,0x20
    800038d4:	02075713          	srli	a4,a4,0x20
    800038d8:	00170713          	addi	a4,a4,1
    800038dc:	00e50733          	add	a4,a0,a4
    800038e0:	00050793          	mv	a5,a0
    800038e4:	0005c683          	lbu	a3,0(a1)
    800038e8:	00178793          	addi	a5,a5,1
    800038ec:	00158593          	addi	a1,a1,1
    800038f0:	fed78fa3          	sb	a3,-1(a5)
    800038f4:	fee798e3          	bne	a5,a4,800038e4 <__memmove+0x160>
    800038f8:	f89ff06f          	j	80003880 <__memmove+0xfc>

00000000800038fc <__putc>:
    800038fc:	fe010113          	addi	sp,sp,-32
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00113c23          	sd	ra,24(sp)
    80003908:	02010413          	addi	s0,sp,32
    8000390c:	00050793          	mv	a5,a0
    80003910:	fef40593          	addi	a1,s0,-17
    80003914:	00100613          	li	a2,1
    80003918:	00000513          	li	a0,0
    8000391c:	fef407a3          	sb	a5,-17(s0)
    80003920:	fffff097          	auipc	ra,0xfffff
    80003924:	b3c080e7          	jalr	-1220(ra) # 8000245c <console_write>
    80003928:	01813083          	ld	ra,24(sp)
    8000392c:	01013403          	ld	s0,16(sp)
    80003930:	02010113          	addi	sp,sp,32
    80003934:	00008067          	ret

0000000080003938 <__getc>:
    80003938:	fe010113          	addi	sp,sp,-32
    8000393c:	00813823          	sd	s0,16(sp)
    80003940:	00113c23          	sd	ra,24(sp)
    80003944:	02010413          	addi	s0,sp,32
    80003948:	fe840593          	addi	a1,s0,-24
    8000394c:	00100613          	li	a2,1
    80003950:	00000513          	li	a0,0
    80003954:	fffff097          	auipc	ra,0xfffff
    80003958:	ae8080e7          	jalr	-1304(ra) # 8000243c <console_read>
    8000395c:	fe844503          	lbu	a0,-24(s0)
    80003960:	01813083          	ld	ra,24(sp)
    80003964:	01013403          	ld	s0,16(sp)
    80003968:	02010113          	addi	sp,sp,32
    8000396c:	00008067          	ret

0000000080003970 <console_handler>:
    80003970:	fe010113          	addi	sp,sp,-32
    80003974:	00813823          	sd	s0,16(sp)
    80003978:	00113c23          	sd	ra,24(sp)
    8000397c:	00913423          	sd	s1,8(sp)
    80003980:	02010413          	addi	s0,sp,32
    80003984:	14202773          	csrr	a4,scause
    80003988:	100027f3          	csrr	a5,sstatus
    8000398c:	0027f793          	andi	a5,a5,2
    80003990:	06079e63          	bnez	a5,80003a0c <console_handler+0x9c>
    80003994:	00074c63          	bltz	a4,800039ac <console_handler+0x3c>
    80003998:	01813083          	ld	ra,24(sp)
    8000399c:	01013403          	ld	s0,16(sp)
    800039a0:	00813483          	ld	s1,8(sp)
    800039a4:	02010113          	addi	sp,sp,32
    800039a8:	00008067          	ret
    800039ac:	0ff77713          	andi	a4,a4,255
    800039b0:	00900793          	li	a5,9
    800039b4:	fef712e3          	bne	a4,a5,80003998 <console_handler+0x28>
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	6dc080e7          	jalr	1756(ra) # 80002094 <plic_claim>
    800039c0:	00a00793          	li	a5,10
    800039c4:	00050493          	mv	s1,a0
    800039c8:	02f50c63          	beq	a0,a5,80003a00 <console_handler+0x90>
    800039cc:	fc0506e3          	beqz	a0,80003998 <console_handler+0x28>
    800039d0:	00050593          	mv	a1,a0
    800039d4:	00000517          	auipc	a0,0x0
    800039d8:	7b450513          	addi	a0,a0,1972 # 80004188 <CONSOLE_STATUS+0x178>
    800039dc:	fffff097          	auipc	ra,0xfffff
    800039e0:	afc080e7          	jalr	-1284(ra) # 800024d8 <__printf>
    800039e4:	01013403          	ld	s0,16(sp)
    800039e8:	01813083          	ld	ra,24(sp)
    800039ec:	00048513          	mv	a0,s1
    800039f0:	00813483          	ld	s1,8(sp)
    800039f4:	02010113          	addi	sp,sp,32
    800039f8:	ffffe317          	auipc	t1,0xffffe
    800039fc:	6d430067          	jr	1748(t1) # 800020cc <plic_complete>
    80003a00:	fffff097          	auipc	ra,0xfffff
    80003a04:	3e0080e7          	jalr	992(ra) # 80002de0 <uartintr>
    80003a08:	fddff06f          	j	800039e4 <console_handler+0x74>
    80003a0c:	00001517          	auipc	a0,0x1
    80003a10:	87c50513          	addi	a0,a0,-1924 # 80004288 <digits+0x78>
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	a68080e7          	jalr	-1432(ra) # 8000247c <panic>
	...
