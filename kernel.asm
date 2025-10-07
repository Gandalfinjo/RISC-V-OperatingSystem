
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	43013103          	ld	sp,1072(sp) # 80004430 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4fc010ef          	jal	ra,80001518 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_Z9printCharc>:
#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"
#include "../lib/hw.h"

void printChar(char c) { __putc(c); }
    80001000:	ff010113          	addi	sp,sp,-16
    80001004:	00113423          	sd	ra,8(sp)
    80001008:	00813023          	sd	s0,0(sp)
    8000100c:	01010413          	addi	s0,sp,16
    80001010:	00002097          	auipc	ra,0x2
    80001014:	5cc080e7          	jalr	1484(ra) # 800035dc <__putc>
    80001018:	00813083          	ld	ra,8(sp)
    8000101c:	00013403          	ld	s0,0(sp)
    80001020:	01010113          	addi	sp,sp,16
    80001024:	00008067          	ret

0000000080001028 <_Z11printStringPKc>:
void printString(const char* s) { while(*s) __putc(*s++); }
    80001028:	fe010113          	addi	sp,sp,-32
    8000102c:	00113c23          	sd	ra,24(sp)
    80001030:	00813823          	sd	s0,16(sp)
    80001034:	00913423          	sd	s1,8(sp)
    80001038:	02010413          	addi	s0,sp,32
    8000103c:	00050493          	mv	s1,a0
    80001040:	0004c503          	lbu	a0,0(s1)
    80001044:	00050a63          	beqz	a0,80001058 <_Z11printStringPKc+0x30>
    80001048:	00148493          	addi	s1,s1,1
    8000104c:	00002097          	auipc	ra,0x2
    80001050:	590080e7          	jalr	1424(ra) # 800035dc <__putc>
    80001054:	fedff06f          	j	80001040 <_Z11printStringPKc+0x18>
    80001058:	01813083          	ld	ra,24(sp)
    8000105c:	01013403          	ld	s0,16(sp)
    80001060:	00813483          	ld	s1,8(sp)
    80001064:	02010113          	addi	sp,sp,32
    80001068:	00008067          	ret

000000008000106c <_Z11printNumberm>:
void printNumber(size_t num) {
    8000106c:	fc010113          	addi	sp,sp,-64
    80001070:	02113c23          	sd	ra,56(sp)
    80001074:	02813823          	sd	s0,48(sp)
    80001078:	02913423          	sd	s1,40(sp)
    8000107c:	04010413          	addi	s0,sp,64
    if (num == 0) { __putc('0'); return; }
    80001080:	02050863          	beqz	a0,800010b0 <_Z11printNumberm+0x44>
    char buf[20];
    int i = 0;
    80001084:	00000793          	li	a5,0
    while(num) { buf[i++] = '0' + (num % 10); num /= 10; }
    80001088:	04050863          	beqz	a0,800010d8 <_Z11printNumberm+0x6c>
    8000108c:	00a00693          	li	a3,10
    80001090:	02d57733          	remu	a4,a0,a3
    80001094:	03070713          	addi	a4,a4,48
    80001098:	fe040613          	addi	a2,s0,-32
    8000109c:	00f60633          	add	a2,a2,a5
    800010a0:	fee60423          	sb	a4,-24(a2)
    800010a4:	02d55533          	divu	a0,a0,a3
    800010a8:	0017879b          	addiw	a5,a5,1
    800010ac:	fddff06f          	j	80001088 <_Z11printNumberm+0x1c>
    if (num == 0) { __putc('0'); return; }
    800010b0:	03000513          	li	a0,48
    800010b4:	00002097          	auipc	ra,0x2
    800010b8:	528080e7          	jalr	1320(ra) # 800035dc <__putc>
    800010bc:	0240006f          	j	800010e0 <_Z11printNumberm+0x74>
    while(i--) __putc(buf[i]);
    800010c0:	fe040793          	addi	a5,s0,-32
    800010c4:	009787b3          	add	a5,a5,s1
    800010c8:	fe87c503          	lbu	a0,-24(a5)
    800010cc:	00002097          	auipc	ra,0x2
    800010d0:	510080e7          	jalr	1296(ra) # 800035dc <__putc>
    800010d4:	00048793          	mv	a5,s1
    800010d8:	fff7849b          	addiw	s1,a5,-1
    800010dc:	fe0792e3          	bnez	a5,800010c0 <_Z11printNumberm+0x54>
}
    800010e0:	03813083          	ld	ra,56(sp)
    800010e4:	03013403          	ld	s0,48(sp)
    800010e8:	02813483          	ld	s1,40(sp)
    800010ec:	04010113          	addi	sp,sp,64
    800010f0:	00008067          	ret

00000000800010f4 <_Z12printPointerPv>:

void printPointer(void* ptr) {
    800010f4:	ff010113          	addi	sp,sp,-16
    800010f8:	00113423          	sd	ra,8(sp)
    800010fc:	00813023          	sd	s0,0(sp)
    80001100:	01010413          	addi	s0,sp,16
    printNumber((size_t)ptr);
    80001104:	00000097          	auipc	ra,0x0
    80001108:	f68080e7          	jalr	-152(ra) # 8000106c <_Z11printNumberm>
}
    8000110c:	00813083          	ld	ra,8(sp)
    80001110:	00013403          	ld	s0,0(sp)
    80001114:	01010113          	addi	sp,sp,16
    80001118:	00008067          	ret

000000008000111c <main>:

void main() {
    8000111c:	fe010113          	addi	sp,sp,-32
    80001120:	00113c23          	sd	ra,24(sp)
    80001124:	00813823          	sd	s0,16(sp)
    80001128:	00913423          	sd	s1,8(sp)
    8000112c:	01213023          	sd	s2,0(sp)
    80001130:	02010413          	addi	s0,sp,32
    MemoryAllocator::initHeap();
    80001134:	00000097          	auipc	ra,0x0
    80001138:	1f0080e7          	jalr	496(ra) # 80001324 <_ZN15MemoryAllocator8initHeapEv>

    BlockHeader* curr = MemoryAllocator::freeListHead;
    8000113c:	00003797          	auipc	a5,0x3
    80001140:	2fc7b783          	ld	a5,764(a5) # 80004438 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001144:	0007b483          	ld	s1,0(a5)
    while(curr) {
    80001148:	04048a63          	beqz	s1,8000119c <main+0x80>
        printString("Free block at "); printPointer(curr);
    8000114c:	00003517          	auipc	a0,0x3
    80001150:	ed450513          	addi	a0,a0,-300 # 80004020 <CONSOLE_STATUS+0x10>
    80001154:	00000097          	auipc	ra,0x0
    80001158:	ed4080e7          	jalr	-300(ra) # 80001028 <_Z11printStringPKc>
    8000115c:	00048513          	mv	a0,s1
    80001160:	00000097          	auipc	ra,0x0
    80001164:	f94080e7          	jalr	-108(ra) # 800010f4 <_Z12printPointerPv>
        printString(" size "); printNumber(curr->size); printString("\n");
    80001168:	00003517          	auipc	a0,0x3
    8000116c:	ec850513          	addi	a0,a0,-312 # 80004030 <CONSOLE_STATUS+0x20>
    80001170:	00000097          	auipc	ra,0x0
    80001174:	eb8080e7          	jalr	-328(ra) # 80001028 <_Z11printStringPKc>
    80001178:	0084b503          	ld	a0,8(s1)
    8000117c:	00000097          	auipc	ra,0x0
    80001180:	ef0080e7          	jalr	-272(ra) # 8000106c <_Z11printNumberm>
    80001184:	00003517          	auipc	a0,0x3
    80001188:	ecc50513          	addi	a0,a0,-308 # 80004050 <CONSOLE_STATUS+0x40>
    8000118c:	00000097          	auipc	ra,0x0
    80001190:	e9c080e7          	jalr	-356(ra) # 80001028 <_Z11printStringPKc>
        curr = curr->next;
    80001194:	0004b483          	ld	s1,0(s1)
    while(curr) {
    80001198:	fb1ff06f          	j	80001148 <main+0x2c>
    }

    void* p1 = MemoryAllocator::mem_alloc(10);
    8000119c:	00a00513          	li	a0,10
    800011a0:	00000097          	auipc	ra,0x0
    800011a4:	1d4080e7          	jalr	468(ra) # 80001374 <_ZN15MemoryAllocator9mem_allocEm>
    800011a8:	00050493          	mv	s1,a0
    void* p2 = MemoryAllocator::mem_alloc(20);
    800011ac:	01400513          	li	a0,20
    800011b0:	00000097          	auipc	ra,0x0
    800011b4:	1c4080e7          	jalr	452(ra) # 80001374 <_ZN15MemoryAllocator9mem_allocEm>
    800011b8:	00050913          	mv	s2,a0

    printString("p1: "); printPointer(p1); printString("\n");
    800011bc:	00003517          	auipc	a0,0x3
    800011c0:	e7c50513          	addi	a0,a0,-388 # 80004038 <CONSOLE_STATUS+0x28>
    800011c4:	00000097          	auipc	ra,0x0
    800011c8:	e64080e7          	jalr	-412(ra) # 80001028 <_Z11printStringPKc>
    800011cc:	00048513          	mv	a0,s1
    800011d0:	00000097          	auipc	ra,0x0
    800011d4:	f24080e7          	jalr	-220(ra) # 800010f4 <_Z12printPointerPv>
    800011d8:	00003517          	auipc	a0,0x3
    800011dc:	e7850513          	addi	a0,a0,-392 # 80004050 <CONSOLE_STATUS+0x40>
    800011e0:	00000097          	auipc	ra,0x0
    800011e4:	e48080e7          	jalr	-440(ra) # 80001028 <_Z11printStringPKc>
    printString("p2: "); printPointer(p2); printString("\n");
    800011e8:	00003517          	auipc	a0,0x3
    800011ec:	e5850513          	addi	a0,a0,-424 # 80004040 <CONSOLE_STATUS+0x30>
    800011f0:	00000097          	auipc	ra,0x0
    800011f4:	e38080e7          	jalr	-456(ra) # 80001028 <_Z11printStringPKc>
    800011f8:	00090513          	mv	a0,s2
    800011fc:	00000097          	auipc	ra,0x0
    80001200:	ef8080e7          	jalr	-264(ra) # 800010f4 <_Z12printPointerPv>
    80001204:	00003517          	auipc	a0,0x3
    80001208:	e4c50513          	addi	a0,a0,-436 # 80004050 <CONSOLE_STATUS+0x40>
    8000120c:	00000097          	auipc	ra,0x0
    80001210:	e1c080e7          	jalr	-484(ra) # 80001028 <_Z11printStringPKc>

    MemoryAllocator::mem_free(p1);
    80001214:	00048513          	mv	a0,s1
    80001218:	00000097          	auipc	ra,0x0
    8000121c:	25c080e7          	jalr	604(ra) # 80001474 <_ZN15MemoryAllocator8mem_freeEPv>
    printString("Freed p1\n");
    80001220:	00003517          	auipc	a0,0x3
    80001224:	e2850513          	addi	a0,a0,-472 # 80004048 <CONSOLE_STATUS+0x38>
    80001228:	00000097          	auipc	ra,0x0
    8000122c:	e00080e7          	jalr	-512(ra) # 80001028 <_Z11printStringPKc>

    curr = MemoryAllocator::freeListHead;
    80001230:	00003797          	auipc	a5,0x3
    80001234:	2087b783          	ld	a5,520(a5) # 80004438 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001238:	0007b483          	ld	s1,0(a5)
    while(curr) {
    8000123c:	04048a63          	beqz	s1,80001290 <main+0x174>
        printString("Free block at "); printPointer(curr);
    80001240:	00003517          	auipc	a0,0x3
    80001244:	de050513          	addi	a0,a0,-544 # 80004020 <CONSOLE_STATUS+0x10>
    80001248:	00000097          	auipc	ra,0x0
    8000124c:	de0080e7          	jalr	-544(ra) # 80001028 <_Z11printStringPKc>
    80001250:	00048513          	mv	a0,s1
    80001254:	00000097          	auipc	ra,0x0
    80001258:	ea0080e7          	jalr	-352(ra) # 800010f4 <_Z12printPointerPv>
        printString(" size "); printNumber(curr->size); printString("\n");
    8000125c:	00003517          	auipc	a0,0x3
    80001260:	dd450513          	addi	a0,a0,-556 # 80004030 <CONSOLE_STATUS+0x20>
    80001264:	00000097          	auipc	ra,0x0
    80001268:	dc4080e7          	jalr	-572(ra) # 80001028 <_Z11printStringPKc>
    8000126c:	0084b503          	ld	a0,8(s1)
    80001270:	00000097          	auipc	ra,0x0
    80001274:	dfc080e7          	jalr	-516(ra) # 8000106c <_Z11printNumberm>
    80001278:	00003517          	auipc	a0,0x3
    8000127c:	dd850513          	addi	a0,a0,-552 # 80004050 <CONSOLE_STATUS+0x40>
    80001280:	00000097          	auipc	ra,0x0
    80001284:	da8080e7          	jalr	-600(ra) # 80001028 <_Z11printStringPKc>
        curr = curr->next;
    80001288:	0004b483          	ld	s1,0(s1)
    while(curr) {
    8000128c:	fb1ff06f          	j	8000123c <main+0x120>
    }

    MemoryAllocator::mem_free(p2);
    80001290:	00090513          	mv	a0,s2
    80001294:	00000097          	auipc	ra,0x0
    80001298:	1e0080e7          	jalr	480(ra) # 80001474 <_ZN15MemoryAllocator8mem_freeEPv>
    printString("Freed p2\n");
    8000129c:	00003517          	auipc	a0,0x3
    800012a0:	dbc50513          	addi	a0,a0,-580 # 80004058 <CONSOLE_STATUS+0x48>
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	d84080e7          	jalr	-636(ra) # 80001028 <_Z11printStringPKc>

    curr = MemoryAllocator::freeListHead;
    800012ac:	00003797          	auipc	a5,0x3
    800012b0:	18c7b783          	ld	a5,396(a5) # 80004438 <_GLOBAL_OFFSET_TABLE_+0x18>
    800012b4:	0007b483          	ld	s1,0(a5)
    while(curr) {
    800012b8:	04048a63          	beqz	s1,8000130c <main+0x1f0>
        printString("Free block at "); printPointer(curr);
    800012bc:	00003517          	auipc	a0,0x3
    800012c0:	d6450513          	addi	a0,a0,-668 # 80004020 <CONSOLE_STATUS+0x10>
    800012c4:	00000097          	auipc	ra,0x0
    800012c8:	d64080e7          	jalr	-668(ra) # 80001028 <_Z11printStringPKc>
    800012cc:	00048513          	mv	a0,s1
    800012d0:	00000097          	auipc	ra,0x0
    800012d4:	e24080e7          	jalr	-476(ra) # 800010f4 <_Z12printPointerPv>
        printString(" size "); printNumber(curr->size); printString("\n");
    800012d8:	00003517          	auipc	a0,0x3
    800012dc:	d5850513          	addi	a0,a0,-680 # 80004030 <CONSOLE_STATUS+0x20>
    800012e0:	00000097          	auipc	ra,0x0
    800012e4:	d48080e7          	jalr	-696(ra) # 80001028 <_Z11printStringPKc>
    800012e8:	0084b503          	ld	a0,8(s1)
    800012ec:	00000097          	auipc	ra,0x0
    800012f0:	d80080e7          	jalr	-640(ra) # 8000106c <_Z11printNumberm>
    800012f4:	00003517          	auipc	a0,0x3
    800012f8:	d5c50513          	addi	a0,a0,-676 # 80004050 <CONSOLE_STATUS+0x40>
    800012fc:	00000097          	auipc	ra,0x0
    80001300:	d2c080e7          	jalr	-724(ra) # 80001028 <_Z11printStringPKc>
        curr = curr->next;
    80001304:	0004b483          	ld	s1,0(s1)
    while(curr) {
    80001308:	fb1ff06f          	j	800012b8 <main+0x19c>
    }
    8000130c:	01813083          	ld	ra,24(sp)
    80001310:	01013403          	ld	s0,16(sp)
    80001314:	00813483          	ld	s1,8(sp)
    80001318:	00013903          	ld	s2,0(sp)
    8000131c:	02010113          	addi	sp,sp,32
    80001320:	00008067          	ret

0000000080001324 <_ZN15MemoryAllocator8initHeapEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeListHead = nullptr;

void MemoryAllocator::initHeap() {
    80001324:	ff010113          	addi	sp,sp,-16
    80001328:	00813423          	sd	s0,8(sp)
    8000132c:	01010413          	addi	s0,sp,16
    freeListHead = (BlockHeader*)HEAP_START_ADDR;
    80001330:	00003697          	auipc	a3,0x3
    80001334:	0f86b683          	ld	a3,248(a3) # 80004428 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001338:	0006b783          	ld	a5,0(a3)
    8000133c:	00003717          	auipc	a4,0x3
    80001340:	15470713          	addi	a4,a4,340 # 80004490 <_ZN15MemoryAllocator12freeListHeadE>
    80001344:	00f73023          	sd	a5,0(a4)
    freeListHead->next = nullptr;
    80001348:	0007b023          	sd	zero,0(a5)
    freeListHead->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR;
    8000134c:	00003797          	auipc	a5,0x3
    80001350:	0f47b783          	ld	a5,244(a5) # 80004440 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001354:	0007b783          	ld	a5,0(a5)
    80001358:	0006b683          	ld	a3,0(a3)
    8000135c:	00073703          	ld	a4,0(a4)
    80001360:	40d787b3          	sub	a5,a5,a3
    80001364:	00f73423          	sd	a5,8(a4)
}
    80001368:	00813403          	ld	s0,8(sp)
    8000136c:	01010113          	addi	sp,sp,16
    80001370:	00008067          	ret

0000000080001374 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t blocks) {
    80001374:	ff010113          	addi	sp,sp,-16
    80001378:	00813423          	sd	s0,8(sp)
    8000137c:	01010413          	addi	s0,sp,16
    80001380:	00050793          	mv	a5,a0
    if (!freeListHead || blocks == 0) return nullptr;
    80001384:	00003517          	auipc	a0,0x3
    80001388:	10c53503          	ld	a0,268(a0) # 80004490 <_ZN15MemoryAllocator12freeListHeadE>
    8000138c:	06050063          	beqz	a0,800013ec <_ZN15MemoryAllocator9mem_allocEm+0x78>
    80001390:	08078a63          	beqz	a5,80001424 <_ZN15MemoryAllocator9mem_allocEm+0xb0>

    size_t sizeInBytes = blocks * MEM_BLOCK_SIZE;
    80001394:	00679693          	slli	a3,a5,0x6
    size_t totalSize = sizeInBytes + sizeof(BlockHeader);
    80001398:	01068713          	addi	a4,a3,16

    BlockHeader* prev = nullptr;
    8000139c:	00000613          	li	a2,0
    800013a0:	00c0006f          	j	800013ac <_ZN15MemoryAllocator9mem_allocEm+0x38>
    BlockHeader* curr = freeListHead;

    while (curr && curr->size < totalSize) {
        prev = curr;
    800013a4:	00050613          	mv	a2,a0
        curr = curr->next;
    800013a8:	00053503          	ld	a0,0(a0)
    while (curr && curr->size < totalSize) {
    800013ac:	00050663          	beqz	a0,800013b8 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    800013b0:	00853783          	ld	a5,8(a0)
    800013b4:	fee7e8e3          	bltu	a5,a4,800013a4 <_ZN15MemoryAllocator9mem_allocEm+0x30>
    }

    if (!curr) return nullptr;
    800013b8:	02050a63          	beqz	a0,800013ec <_ZN15MemoryAllocator9mem_allocEm+0x78>

    if (curr->size >= totalSize + sizeof(BlockHeader)) {
    800013bc:	00853583          	ld	a1,8(a0)
    800013c0:	02068793          	addi	a5,a3,32
    800013c4:	04f5e063          	bltu	a1,a5,80001404 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        BlockHeader* newBlock = (BlockHeader*)((char*)curr + totalSize);
    800013c8:	00e507b3          	add	a5,a0,a4
        newBlock->size = curr->size - totalSize;
    800013cc:	40e585b3          	sub	a1,a1,a4
    800013d0:	00b7b423          	sd	a1,8(a5)
        newBlock->next = curr->next;
    800013d4:	00053683          	ld	a3,0(a0)
    800013d8:	00d7b023          	sd	a3,0(a5)

        if (prev) prev->next = newBlock;
    800013dc:	00060e63          	beqz	a2,800013f8 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    800013e0:	00f63023          	sd	a5,0(a2)
        else freeListHead = newBlock;

        curr->size = totalSize;
    800013e4:	00e53423          	sd	a4,8(a0)
    else {
        if (prev) prev->next = curr->next;
        else freeListHead = curr->next;
    }

    return (void*)((char*)curr + sizeof(BlockHeader));
    800013e8:	01050513          	addi	a0,a0,16
}
    800013ec:	00813403          	ld	s0,8(sp)
    800013f0:	01010113          	addi	sp,sp,16
    800013f4:	00008067          	ret
        else freeListHead = newBlock;
    800013f8:	00003697          	auipc	a3,0x3
    800013fc:	08f6bc23          	sd	a5,152(a3) # 80004490 <_ZN15MemoryAllocator12freeListHeadE>
    80001400:	fe5ff06f          	j	800013e4 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        if (prev) prev->next = curr->next;
    80001404:	00060863          	beqz	a2,80001414 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80001408:	00053783          	ld	a5,0(a0)
    8000140c:	00f63023          	sd	a5,0(a2)
    80001410:	fd9ff06f          	j	800013e8 <_ZN15MemoryAllocator9mem_allocEm+0x74>
        else freeListHead = curr->next;
    80001414:	00053783          	ld	a5,0(a0)
    80001418:	00003717          	auipc	a4,0x3
    8000141c:	06f73c23          	sd	a5,120(a4) # 80004490 <_ZN15MemoryAllocator12freeListHeadE>
    80001420:	fc9ff06f          	j	800013e8 <_ZN15MemoryAllocator9mem_allocEm+0x74>
    if (!freeListHead || blocks == 0) return nullptr;
    80001424:	00000513          	li	a0,0
    80001428:	fc5ff06f          	j	800013ec <_ZN15MemoryAllocator9mem_allocEm+0x78>

000000008000142c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(prev);

    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader* curr) {
    8000142c:	ff010113          	addi	sp,sp,-16
    80001430:	00813423          	sd	s0,8(sp)
    80001434:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80001438:	00050c63          	beqz	a0,80001450 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

    if (curr->next && (char*)curr + curr->size == (char*)(curr->next)) {
    8000143c:	00053783          	ld	a5,0(a0)
    80001440:	00078863          	beqz	a5,80001450 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>
    80001444:	00853703          	ld	a4,8(a0)
    80001448:	00e506b3          	add	a3,a0,a4
    8000144c:	00d78863          	beq	a5,a3,8000145c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x30>
        curr->size += curr->next->size;
        curr->next = curr->next->next;
    }
    80001450:	00813403          	ld	s0,8(sp)
    80001454:	01010113          	addi	sp,sp,16
    80001458:	00008067          	ret
        curr->size += curr->next->size;
    8000145c:	0087b683          	ld	a3,8(a5)
    80001460:	00d70733          	add	a4,a4,a3
    80001464:	00e53423          	sd	a4,8(a0)
        curr->next = curr->next->next;
    80001468:	0007b783          	ld	a5,0(a5)
    8000146c:	00f53023          	sd	a5,0(a0)
    80001470:	fe1ff06f          	j	80001450 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x24>

0000000080001474 <_ZN15MemoryAllocator8mem_freeEPv>:
    if (!addr) return -1;
    80001474:	08050e63          	beqz	a0,80001510 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80001478:	00050713          	mv	a4,a0
    BlockHeader* blockToFree = (BlockHeader*)((char*)addr - sizeof(BlockHeader));
    8000147c:	ff050513          	addi	a0,a0,-16
    if (!freeListHead) {
    80001480:	00003797          	auipc	a5,0x3
    80001484:	0107b783          	ld	a5,16(a5) # 80004490 <_ZN15MemoryAllocator12freeListHeadE>
    80001488:	02078863          	beqz	a5,800014b8 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
int MemoryAllocator::mem_free(void* addr) {
    8000148c:	fe010113          	addi	sp,sp,-32
    80001490:	00113c23          	sd	ra,24(sp)
    80001494:	00813823          	sd	s0,16(sp)
    80001498:	00913423          	sd	s1,8(sp)
    8000149c:	02010413          	addi	s0,sp,32
    BlockHeader* prev = nullptr;
    800014a0:	00000493          	li	s1,0
    while (curr && curr < blockToFree) {
    800014a4:	02078463          	beqz	a5,800014cc <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800014a8:	02a7f263          	bgeu	a5,a0,800014cc <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        prev = curr;
    800014ac:	00078493          	mv	s1,a5
        curr = curr->next;
    800014b0:	0007b783          	ld	a5,0(a5)
    while (curr && curr < blockToFree) {
    800014b4:	ff1ff06f          	j	800014a4 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
        freeListHead = blockToFree;
    800014b8:	00003797          	auipc	a5,0x3
    800014bc:	fca7bc23          	sd	a0,-40(a5) # 80004490 <_ZN15MemoryAllocator12freeListHeadE>
        freeListHead->next = nullptr;
    800014c0:	fe073823          	sd	zero,-16(a4)
        return 0;
    800014c4:	00000513          	li	a0,0
    800014c8:	00008067          	ret
    blockToFree->next = curr;
    800014cc:	fef73823          	sd	a5,-16(a4)
    if (prev) prev->next = blockToFree;
    800014d0:	02048a63          	beqz	s1,80001504 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    800014d4:	00a4b023          	sd	a0,0(s1)
    tryToJoin(blockToFree);
    800014d8:	00000097          	auipc	ra,0x0
    800014dc:	f54080e7          	jalr	-172(ra) # 8000142c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(prev);
    800014e0:	00048513          	mv	a0,s1
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	f48080e7          	jalr	-184(ra) # 8000142c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    800014ec:	00000513          	li	a0,0
}
    800014f0:	01813083          	ld	ra,24(sp)
    800014f4:	01013403          	ld	s0,16(sp)
    800014f8:	00813483          	ld	s1,8(sp)
    800014fc:	02010113          	addi	sp,sp,32
    80001500:	00008067          	ret
    else freeListHead = blockToFree;
    80001504:	00003797          	auipc	a5,0x3
    80001508:	f8a7b623          	sd	a0,-116(a5) # 80004490 <_ZN15MemoryAllocator12freeListHeadE>
    8000150c:	fcdff06f          	j	800014d8 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
    if (!addr) return -1;
    80001510:	fff00513          	li	a0,-1
}
    80001514:	00008067          	ret

0000000080001518 <start>:
    80001518:	ff010113          	addi	sp,sp,-16
    8000151c:	00813423          	sd	s0,8(sp)
    80001520:	01010413          	addi	s0,sp,16
    80001524:	300027f3          	csrr	a5,mstatus
    80001528:	ffffe737          	lui	a4,0xffffe
    8000152c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff910f>
    80001530:	00e7f7b3          	and	a5,a5,a4
    80001534:	00001737          	lui	a4,0x1
    80001538:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000153c:	00e7e7b3          	or	a5,a5,a4
    80001540:	30079073          	csrw	mstatus,a5
    80001544:	00000797          	auipc	a5,0x0
    80001548:	16078793          	addi	a5,a5,352 # 800016a4 <system_main>
    8000154c:	34179073          	csrw	mepc,a5
    80001550:	00000793          	li	a5,0
    80001554:	18079073          	csrw	satp,a5
    80001558:	000107b7          	lui	a5,0x10
    8000155c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001560:	30279073          	csrw	medeleg,a5
    80001564:	30379073          	csrw	mideleg,a5
    80001568:	104027f3          	csrr	a5,sie
    8000156c:	2227e793          	ori	a5,a5,546
    80001570:	10479073          	csrw	sie,a5
    80001574:	fff00793          	li	a5,-1
    80001578:	00a7d793          	srli	a5,a5,0xa
    8000157c:	3b079073          	csrw	pmpaddr0,a5
    80001580:	00f00793          	li	a5,15
    80001584:	3a079073          	csrw	pmpcfg0,a5
    80001588:	f14027f3          	csrr	a5,mhartid
    8000158c:	0200c737          	lui	a4,0x200c
    80001590:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001594:	0007869b          	sext.w	a3,a5
    80001598:	00269713          	slli	a4,a3,0x2
    8000159c:	000f4637          	lui	a2,0xf4
    800015a0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800015a4:	00d70733          	add	a4,a4,a3
    800015a8:	0037979b          	slliw	a5,a5,0x3
    800015ac:	020046b7          	lui	a3,0x2004
    800015b0:	00d787b3          	add	a5,a5,a3
    800015b4:	00c585b3          	add	a1,a1,a2
    800015b8:	00371693          	slli	a3,a4,0x3
    800015bc:	00003717          	auipc	a4,0x3
    800015c0:	ee470713          	addi	a4,a4,-284 # 800044a0 <timer_scratch>
    800015c4:	00b7b023          	sd	a1,0(a5)
    800015c8:	00d70733          	add	a4,a4,a3
    800015cc:	00f73c23          	sd	a5,24(a4)
    800015d0:	02c73023          	sd	a2,32(a4)
    800015d4:	34071073          	csrw	mscratch,a4
    800015d8:	00000797          	auipc	a5,0x0
    800015dc:	6e878793          	addi	a5,a5,1768 # 80001cc0 <timervec>
    800015e0:	30579073          	csrw	mtvec,a5
    800015e4:	300027f3          	csrr	a5,mstatus
    800015e8:	0087e793          	ori	a5,a5,8
    800015ec:	30079073          	csrw	mstatus,a5
    800015f0:	304027f3          	csrr	a5,mie
    800015f4:	0807e793          	ori	a5,a5,128
    800015f8:	30479073          	csrw	mie,a5
    800015fc:	f14027f3          	csrr	a5,mhartid
    80001600:	0007879b          	sext.w	a5,a5
    80001604:	00078213          	mv	tp,a5
    80001608:	30200073          	mret
    8000160c:	00813403          	ld	s0,8(sp)
    80001610:	01010113          	addi	sp,sp,16
    80001614:	00008067          	ret

0000000080001618 <timerinit>:
    80001618:	ff010113          	addi	sp,sp,-16
    8000161c:	00813423          	sd	s0,8(sp)
    80001620:	01010413          	addi	s0,sp,16
    80001624:	f14027f3          	csrr	a5,mhartid
    80001628:	0200c737          	lui	a4,0x200c
    8000162c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001630:	0007869b          	sext.w	a3,a5
    80001634:	00269713          	slli	a4,a3,0x2
    80001638:	000f4637          	lui	a2,0xf4
    8000163c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001640:	00d70733          	add	a4,a4,a3
    80001644:	0037979b          	slliw	a5,a5,0x3
    80001648:	020046b7          	lui	a3,0x2004
    8000164c:	00d787b3          	add	a5,a5,a3
    80001650:	00c585b3          	add	a1,a1,a2
    80001654:	00371693          	slli	a3,a4,0x3
    80001658:	00003717          	auipc	a4,0x3
    8000165c:	e4870713          	addi	a4,a4,-440 # 800044a0 <timer_scratch>
    80001660:	00b7b023          	sd	a1,0(a5)
    80001664:	00d70733          	add	a4,a4,a3
    80001668:	00f73c23          	sd	a5,24(a4)
    8000166c:	02c73023          	sd	a2,32(a4)
    80001670:	34071073          	csrw	mscratch,a4
    80001674:	00000797          	auipc	a5,0x0
    80001678:	64c78793          	addi	a5,a5,1612 # 80001cc0 <timervec>
    8000167c:	30579073          	csrw	mtvec,a5
    80001680:	300027f3          	csrr	a5,mstatus
    80001684:	0087e793          	ori	a5,a5,8
    80001688:	30079073          	csrw	mstatus,a5
    8000168c:	304027f3          	csrr	a5,mie
    80001690:	0807e793          	ori	a5,a5,128
    80001694:	30479073          	csrw	mie,a5
    80001698:	00813403          	ld	s0,8(sp)
    8000169c:	01010113          	addi	sp,sp,16
    800016a0:	00008067          	ret

00000000800016a4 <system_main>:
    800016a4:	fe010113          	addi	sp,sp,-32
    800016a8:	00813823          	sd	s0,16(sp)
    800016ac:	00913423          	sd	s1,8(sp)
    800016b0:	00113c23          	sd	ra,24(sp)
    800016b4:	02010413          	addi	s0,sp,32
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	0c4080e7          	jalr	196(ra) # 8000177c <cpuid>
    800016c0:	00003497          	auipc	s1,0x3
    800016c4:	da048493          	addi	s1,s1,-608 # 80004460 <started>
    800016c8:	02050263          	beqz	a0,800016ec <system_main+0x48>
    800016cc:	0004a783          	lw	a5,0(s1)
    800016d0:	0007879b          	sext.w	a5,a5
    800016d4:	fe078ce3          	beqz	a5,800016cc <system_main+0x28>
    800016d8:	0ff0000f          	fence
    800016dc:	00003517          	auipc	a0,0x3
    800016e0:	9bc50513          	addi	a0,a0,-1604 # 80004098 <CONSOLE_STATUS+0x88>
    800016e4:	00001097          	auipc	ra,0x1
    800016e8:	a78080e7          	jalr	-1416(ra) # 8000215c <panic>
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	9cc080e7          	jalr	-1588(ra) # 800020b8 <consoleinit>
    800016f4:	00001097          	auipc	ra,0x1
    800016f8:	158080e7          	jalr	344(ra) # 8000284c <printfinit>
    800016fc:	00003517          	auipc	a0,0x3
    80001700:	95450513          	addi	a0,a0,-1708 # 80004050 <CONSOLE_STATUS+0x40>
    80001704:	00001097          	auipc	ra,0x1
    80001708:	ab4080e7          	jalr	-1356(ra) # 800021b8 <__printf>
    8000170c:	00003517          	auipc	a0,0x3
    80001710:	95c50513          	addi	a0,a0,-1700 # 80004068 <CONSOLE_STATUS+0x58>
    80001714:	00001097          	auipc	ra,0x1
    80001718:	aa4080e7          	jalr	-1372(ra) # 800021b8 <__printf>
    8000171c:	00003517          	auipc	a0,0x3
    80001720:	93450513          	addi	a0,a0,-1740 # 80004050 <CONSOLE_STATUS+0x40>
    80001724:	00001097          	auipc	ra,0x1
    80001728:	a94080e7          	jalr	-1388(ra) # 800021b8 <__printf>
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	4ac080e7          	jalr	1196(ra) # 80002bd8 <kinit>
    80001734:	00000097          	auipc	ra,0x0
    80001738:	148080e7          	jalr	328(ra) # 8000187c <trapinit>
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	16c080e7          	jalr	364(ra) # 800018a8 <trapinithart>
    80001744:	00000097          	auipc	ra,0x0
    80001748:	5bc080e7          	jalr	1468(ra) # 80001d00 <plicinit>
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	5dc080e7          	jalr	1500(ra) # 80001d28 <plicinithart>
    80001754:	00000097          	auipc	ra,0x0
    80001758:	078080e7          	jalr	120(ra) # 800017cc <userinit>
    8000175c:	0ff0000f          	fence
    80001760:	00100793          	li	a5,1
    80001764:	00003517          	auipc	a0,0x3
    80001768:	91c50513          	addi	a0,a0,-1764 # 80004080 <CONSOLE_STATUS+0x70>
    8000176c:	00f4a023          	sw	a5,0(s1)
    80001770:	00001097          	auipc	ra,0x1
    80001774:	a48080e7          	jalr	-1464(ra) # 800021b8 <__printf>
    80001778:	0000006f          	j	80001778 <system_main+0xd4>

000000008000177c <cpuid>:
    8000177c:	ff010113          	addi	sp,sp,-16
    80001780:	00813423          	sd	s0,8(sp)
    80001784:	01010413          	addi	s0,sp,16
    80001788:	00020513          	mv	a0,tp
    8000178c:	00813403          	ld	s0,8(sp)
    80001790:	0005051b          	sext.w	a0,a0
    80001794:	01010113          	addi	sp,sp,16
    80001798:	00008067          	ret

000000008000179c <mycpu>:
    8000179c:	ff010113          	addi	sp,sp,-16
    800017a0:	00813423          	sd	s0,8(sp)
    800017a4:	01010413          	addi	s0,sp,16
    800017a8:	00020793          	mv	a5,tp
    800017ac:	00813403          	ld	s0,8(sp)
    800017b0:	0007879b          	sext.w	a5,a5
    800017b4:	00779793          	slli	a5,a5,0x7
    800017b8:	00004517          	auipc	a0,0x4
    800017bc:	d1850513          	addi	a0,a0,-744 # 800054d0 <cpus>
    800017c0:	00f50533          	add	a0,a0,a5
    800017c4:	01010113          	addi	sp,sp,16
    800017c8:	00008067          	ret

00000000800017cc <userinit>:
    800017cc:	ff010113          	addi	sp,sp,-16
    800017d0:	00813423          	sd	s0,8(sp)
    800017d4:	01010413          	addi	s0,sp,16
    800017d8:	00813403          	ld	s0,8(sp)
    800017dc:	01010113          	addi	sp,sp,16
    800017e0:	00000317          	auipc	t1,0x0
    800017e4:	93c30067          	jr	-1732(t1) # 8000111c <main>

00000000800017e8 <either_copyout>:
    800017e8:	ff010113          	addi	sp,sp,-16
    800017ec:	00813023          	sd	s0,0(sp)
    800017f0:	00113423          	sd	ra,8(sp)
    800017f4:	01010413          	addi	s0,sp,16
    800017f8:	02051663          	bnez	a0,80001824 <either_copyout+0x3c>
    800017fc:	00058513          	mv	a0,a1
    80001800:	00060593          	mv	a1,a2
    80001804:	0006861b          	sext.w	a2,a3
    80001808:	00002097          	auipc	ra,0x2
    8000180c:	c5c080e7          	jalr	-932(ra) # 80003464 <__memmove>
    80001810:	00813083          	ld	ra,8(sp)
    80001814:	00013403          	ld	s0,0(sp)
    80001818:	00000513          	li	a0,0
    8000181c:	01010113          	addi	sp,sp,16
    80001820:	00008067          	ret
    80001824:	00003517          	auipc	a0,0x3
    80001828:	89c50513          	addi	a0,a0,-1892 # 800040c0 <CONSOLE_STATUS+0xb0>
    8000182c:	00001097          	auipc	ra,0x1
    80001830:	930080e7          	jalr	-1744(ra) # 8000215c <panic>

0000000080001834 <either_copyin>:
    80001834:	ff010113          	addi	sp,sp,-16
    80001838:	00813023          	sd	s0,0(sp)
    8000183c:	00113423          	sd	ra,8(sp)
    80001840:	01010413          	addi	s0,sp,16
    80001844:	02059463          	bnez	a1,8000186c <either_copyin+0x38>
    80001848:	00060593          	mv	a1,a2
    8000184c:	0006861b          	sext.w	a2,a3
    80001850:	00002097          	auipc	ra,0x2
    80001854:	c14080e7          	jalr	-1004(ra) # 80003464 <__memmove>
    80001858:	00813083          	ld	ra,8(sp)
    8000185c:	00013403          	ld	s0,0(sp)
    80001860:	00000513          	li	a0,0
    80001864:	01010113          	addi	sp,sp,16
    80001868:	00008067          	ret
    8000186c:	00003517          	auipc	a0,0x3
    80001870:	87c50513          	addi	a0,a0,-1924 # 800040e8 <CONSOLE_STATUS+0xd8>
    80001874:	00001097          	auipc	ra,0x1
    80001878:	8e8080e7          	jalr	-1816(ra) # 8000215c <panic>

000000008000187c <trapinit>:
    8000187c:	ff010113          	addi	sp,sp,-16
    80001880:	00813423          	sd	s0,8(sp)
    80001884:	01010413          	addi	s0,sp,16
    80001888:	00813403          	ld	s0,8(sp)
    8000188c:	00003597          	auipc	a1,0x3
    80001890:	88458593          	addi	a1,a1,-1916 # 80004110 <CONSOLE_STATUS+0x100>
    80001894:	00004517          	auipc	a0,0x4
    80001898:	cbc50513          	addi	a0,a0,-836 # 80005550 <tickslock>
    8000189c:	01010113          	addi	sp,sp,16
    800018a0:	00001317          	auipc	t1,0x1
    800018a4:	5c830067          	jr	1480(t1) # 80002e68 <initlock>

00000000800018a8 <trapinithart>:
    800018a8:	ff010113          	addi	sp,sp,-16
    800018ac:	00813423          	sd	s0,8(sp)
    800018b0:	01010413          	addi	s0,sp,16
    800018b4:	00000797          	auipc	a5,0x0
    800018b8:	2fc78793          	addi	a5,a5,764 # 80001bb0 <kernelvec>
    800018bc:	10579073          	csrw	stvec,a5
    800018c0:	00813403          	ld	s0,8(sp)
    800018c4:	01010113          	addi	sp,sp,16
    800018c8:	00008067          	ret

00000000800018cc <usertrap>:
    800018cc:	ff010113          	addi	sp,sp,-16
    800018d0:	00813423          	sd	s0,8(sp)
    800018d4:	01010413          	addi	s0,sp,16
    800018d8:	00813403          	ld	s0,8(sp)
    800018dc:	01010113          	addi	sp,sp,16
    800018e0:	00008067          	ret

00000000800018e4 <usertrapret>:
    800018e4:	ff010113          	addi	sp,sp,-16
    800018e8:	00813423          	sd	s0,8(sp)
    800018ec:	01010413          	addi	s0,sp,16
    800018f0:	00813403          	ld	s0,8(sp)
    800018f4:	01010113          	addi	sp,sp,16
    800018f8:	00008067          	ret

00000000800018fc <kerneltrap>:
    800018fc:	fe010113          	addi	sp,sp,-32
    80001900:	00813823          	sd	s0,16(sp)
    80001904:	00113c23          	sd	ra,24(sp)
    80001908:	00913423          	sd	s1,8(sp)
    8000190c:	02010413          	addi	s0,sp,32
    80001910:	142025f3          	csrr	a1,scause
    80001914:	100027f3          	csrr	a5,sstatus
    80001918:	0027f793          	andi	a5,a5,2
    8000191c:	10079c63          	bnez	a5,80001a34 <kerneltrap+0x138>
    80001920:	142027f3          	csrr	a5,scause
    80001924:	0207ce63          	bltz	a5,80001960 <kerneltrap+0x64>
    80001928:	00003517          	auipc	a0,0x3
    8000192c:	83050513          	addi	a0,a0,-2000 # 80004158 <CONSOLE_STATUS+0x148>
    80001930:	00001097          	auipc	ra,0x1
    80001934:	888080e7          	jalr	-1912(ra) # 800021b8 <__printf>
    80001938:	141025f3          	csrr	a1,sepc
    8000193c:	14302673          	csrr	a2,stval
    80001940:	00003517          	auipc	a0,0x3
    80001944:	82850513          	addi	a0,a0,-2008 # 80004168 <CONSOLE_STATUS+0x158>
    80001948:	00001097          	auipc	ra,0x1
    8000194c:	870080e7          	jalr	-1936(ra) # 800021b8 <__printf>
    80001950:	00003517          	auipc	a0,0x3
    80001954:	83050513          	addi	a0,a0,-2000 # 80004180 <CONSOLE_STATUS+0x170>
    80001958:	00001097          	auipc	ra,0x1
    8000195c:	804080e7          	jalr	-2044(ra) # 8000215c <panic>
    80001960:	0ff7f713          	andi	a4,a5,255
    80001964:	00900693          	li	a3,9
    80001968:	04d70063          	beq	a4,a3,800019a8 <kerneltrap+0xac>
    8000196c:	fff00713          	li	a4,-1
    80001970:	03f71713          	slli	a4,a4,0x3f
    80001974:	00170713          	addi	a4,a4,1
    80001978:	fae798e3          	bne	a5,a4,80001928 <kerneltrap+0x2c>
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	e00080e7          	jalr	-512(ra) # 8000177c <cpuid>
    80001984:	06050663          	beqz	a0,800019f0 <kerneltrap+0xf4>
    80001988:	144027f3          	csrr	a5,sip
    8000198c:	ffd7f793          	andi	a5,a5,-3
    80001990:	14479073          	csrw	sip,a5
    80001994:	01813083          	ld	ra,24(sp)
    80001998:	01013403          	ld	s0,16(sp)
    8000199c:	00813483          	ld	s1,8(sp)
    800019a0:	02010113          	addi	sp,sp,32
    800019a4:	00008067          	ret
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	3cc080e7          	jalr	972(ra) # 80001d74 <plic_claim>
    800019b0:	00a00793          	li	a5,10
    800019b4:	00050493          	mv	s1,a0
    800019b8:	06f50863          	beq	a0,a5,80001a28 <kerneltrap+0x12c>
    800019bc:	fc050ce3          	beqz	a0,80001994 <kerneltrap+0x98>
    800019c0:	00050593          	mv	a1,a0
    800019c4:	00002517          	auipc	a0,0x2
    800019c8:	77450513          	addi	a0,a0,1908 # 80004138 <CONSOLE_STATUS+0x128>
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	7ec080e7          	jalr	2028(ra) # 800021b8 <__printf>
    800019d4:	01013403          	ld	s0,16(sp)
    800019d8:	01813083          	ld	ra,24(sp)
    800019dc:	00048513          	mv	a0,s1
    800019e0:	00813483          	ld	s1,8(sp)
    800019e4:	02010113          	addi	sp,sp,32
    800019e8:	00000317          	auipc	t1,0x0
    800019ec:	3c430067          	jr	964(t1) # 80001dac <plic_complete>
    800019f0:	00004517          	auipc	a0,0x4
    800019f4:	b6050513          	addi	a0,a0,-1184 # 80005550 <tickslock>
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	494080e7          	jalr	1172(ra) # 80002e8c <acquire>
    80001a00:	00003717          	auipc	a4,0x3
    80001a04:	a6470713          	addi	a4,a4,-1436 # 80004464 <ticks>
    80001a08:	00072783          	lw	a5,0(a4)
    80001a0c:	00004517          	auipc	a0,0x4
    80001a10:	b4450513          	addi	a0,a0,-1212 # 80005550 <tickslock>
    80001a14:	0017879b          	addiw	a5,a5,1
    80001a18:	00f72023          	sw	a5,0(a4)
    80001a1c:	00001097          	auipc	ra,0x1
    80001a20:	53c080e7          	jalr	1340(ra) # 80002f58 <release>
    80001a24:	f65ff06f          	j	80001988 <kerneltrap+0x8c>
    80001a28:	00001097          	auipc	ra,0x1
    80001a2c:	098080e7          	jalr	152(ra) # 80002ac0 <uartintr>
    80001a30:	fa5ff06f          	j	800019d4 <kerneltrap+0xd8>
    80001a34:	00002517          	auipc	a0,0x2
    80001a38:	6e450513          	addi	a0,a0,1764 # 80004118 <CONSOLE_STATUS+0x108>
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	720080e7          	jalr	1824(ra) # 8000215c <panic>

0000000080001a44 <clockintr>:
    80001a44:	fe010113          	addi	sp,sp,-32
    80001a48:	00813823          	sd	s0,16(sp)
    80001a4c:	00913423          	sd	s1,8(sp)
    80001a50:	00113c23          	sd	ra,24(sp)
    80001a54:	02010413          	addi	s0,sp,32
    80001a58:	00004497          	auipc	s1,0x4
    80001a5c:	af848493          	addi	s1,s1,-1288 # 80005550 <tickslock>
    80001a60:	00048513          	mv	a0,s1
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	428080e7          	jalr	1064(ra) # 80002e8c <acquire>
    80001a6c:	00003717          	auipc	a4,0x3
    80001a70:	9f870713          	addi	a4,a4,-1544 # 80004464 <ticks>
    80001a74:	00072783          	lw	a5,0(a4)
    80001a78:	01013403          	ld	s0,16(sp)
    80001a7c:	01813083          	ld	ra,24(sp)
    80001a80:	00048513          	mv	a0,s1
    80001a84:	0017879b          	addiw	a5,a5,1
    80001a88:	00813483          	ld	s1,8(sp)
    80001a8c:	00f72023          	sw	a5,0(a4)
    80001a90:	02010113          	addi	sp,sp,32
    80001a94:	00001317          	auipc	t1,0x1
    80001a98:	4c430067          	jr	1220(t1) # 80002f58 <release>

0000000080001a9c <devintr>:
    80001a9c:	142027f3          	csrr	a5,scause
    80001aa0:	00000513          	li	a0,0
    80001aa4:	0007c463          	bltz	a5,80001aac <devintr+0x10>
    80001aa8:	00008067          	ret
    80001aac:	fe010113          	addi	sp,sp,-32
    80001ab0:	00813823          	sd	s0,16(sp)
    80001ab4:	00113c23          	sd	ra,24(sp)
    80001ab8:	00913423          	sd	s1,8(sp)
    80001abc:	02010413          	addi	s0,sp,32
    80001ac0:	0ff7f713          	andi	a4,a5,255
    80001ac4:	00900693          	li	a3,9
    80001ac8:	04d70c63          	beq	a4,a3,80001b20 <devintr+0x84>
    80001acc:	fff00713          	li	a4,-1
    80001ad0:	03f71713          	slli	a4,a4,0x3f
    80001ad4:	00170713          	addi	a4,a4,1
    80001ad8:	00e78c63          	beq	a5,a4,80001af0 <devintr+0x54>
    80001adc:	01813083          	ld	ra,24(sp)
    80001ae0:	01013403          	ld	s0,16(sp)
    80001ae4:	00813483          	ld	s1,8(sp)
    80001ae8:	02010113          	addi	sp,sp,32
    80001aec:	00008067          	ret
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	c8c080e7          	jalr	-884(ra) # 8000177c <cpuid>
    80001af8:	06050663          	beqz	a0,80001b64 <devintr+0xc8>
    80001afc:	144027f3          	csrr	a5,sip
    80001b00:	ffd7f793          	andi	a5,a5,-3
    80001b04:	14479073          	csrw	sip,a5
    80001b08:	01813083          	ld	ra,24(sp)
    80001b0c:	01013403          	ld	s0,16(sp)
    80001b10:	00813483          	ld	s1,8(sp)
    80001b14:	00200513          	li	a0,2
    80001b18:	02010113          	addi	sp,sp,32
    80001b1c:	00008067          	ret
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	254080e7          	jalr	596(ra) # 80001d74 <plic_claim>
    80001b28:	00a00793          	li	a5,10
    80001b2c:	00050493          	mv	s1,a0
    80001b30:	06f50663          	beq	a0,a5,80001b9c <devintr+0x100>
    80001b34:	00100513          	li	a0,1
    80001b38:	fa0482e3          	beqz	s1,80001adc <devintr+0x40>
    80001b3c:	00048593          	mv	a1,s1
    80001b40:	00002517          	auipc	a0,0x2
    80001b44:	5f850513          	addi	a0,a0,1528 # 80004138 <CONSOLE_STATUS+0x128>
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	670080e7          	jalr	1648(ra) # 800021b8 <__printf>
    80001b50:	00048513          	mv	a0,s1
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	258080e7          	jalr	600(ra) # 80001dac <plic_complete>
    80001b5c:	00100513          	li	a0,1
    80001b60:	f7dff06f          	j	80001adc <devintr+0x40>
    80001b64:	00004517          	auipc	a0,0x4
    80001b68:	9ec50513          	addi	a0,a0,-1556 # 80005550 <tickslock>
    80001b6c:	00001097          	auipc	ra,0x1
    80001b70:	320080e7          	jalr	800(ra) # 80002e8c <acquire>
    80001b74:	00003717          	auipc	a4,0x3
    80001b78:	8f070713          	addi	a4,a4,-1808 # 80004464 <ticks>
    80001b7c:	00072783          	lw	a5,0(a4)
    80001b80:	00004517          	auipc	a0,0x4
    80001b84:	9d050513          	addi	a0,a0,-1584 # 80005550 <tickslock>
    80001b88:	0017879b          	addiw	a5,a5,1
    80001b8c:	00f72023          	sw	a5,0(a4)
    80001b90:	00001097          	auipc	ra,0x1
    80001b94:	3c8080e7          	jalr	968(ra) # 80002f58 <release>
    80001b98:	f65ff06f          	j	80001afc <devintr+0x60>
    80001b9c:	00001097          	auipc	ra,0x1
    80001ba0:	f24080e7          	jalr	-220(ra) # 80002ac0 <uartintr>
    80001ba4:	fadff06f          	j	80001b50 <devintr+0xb4>
	...

0000000080001bb0 <kernelvec>:
    80001bb0:	f0010113          	addi	sp,sp,-256
    80001bb4:	00113023          	sd	ra,0(sp)
    80001bb8:	00213423          	sd	sp,8(sp)
    80001bbc:	00313823          	sd	gp,16(sp)
    80001bc0:	00413c23          	sd	tp,24(sp)
    80001bc4:	02513023          	sd	t0,32(sp)
    80001bc8:	02613423          	sd	t1,40(sp)
    80001bcc:	02713823          	sd	t2,48(sp)
    80001bd0:	02813c23          	sd	s0,56(sp)
    80001bd4:	04913023          	sd	s1,64(sp)
    80001bd8:	04a13423          	sd	a0,72(sp)
    80001bdc:	04b13823          	sd	a1,80(sp)
    80001be0:	04c13c23          	sd	a2,88(sp)
    80001be4:	06d13023          	sd	a3,96(sp)
    80001be8:	06e13423          	sd	a4,104(sp)
    80001bec:	06f13823          	sd	a5,112(sp)
    80001bf0:	07013c23          	sd	a6,120(sp)
    80001bf4:	09113023          	sd	a7,128(sp)
    80001bf8:	09213423          	sd	s2,136(sp)
    80001bfc:	09313823          	sd	s3,144(sp)
    80001c00:	09413c23          	sd	s4,152(sp)
    80001c04:	0b513023          	sd	s5,160(sp)
    80001c08:	0b613423          	sd	s6,168(sp)
    80001c0c:	0b713823          	sd	s7,176(sp)
    80001c10:	0b813c23          	sd	s8,184(sp)
    80001c14:	0d913023          	sd	s9,192(sp)
    80001c18:	0da13423          	sd	s10,200(sp)
    80001c1c:	0db13823          	sd	s11,208(sp)
    80001c20:	0dc13c23          	sd	t3,216(sp)
    80001c24:	0fd13023          	sd	t4,224(sp)
    80001c28:	0fe13423          	sd	t5,232(sp)
    80001c2c:	0ff13823          	sd	t6,240(sp)
    80001c30:	ccdff0ef          	jal	ra,800018fc <kerneltrap>
    80001c34:	00013083          	ld	ra,0(sp)
    80001c38:	00813103          	ld	sp,8(sp)
    80001c3c:	01013183          	ld	gp,16(sp)
    80001c40:	02013283          	ld	t0,32(sp)
    80001c44:	02813303          	ld	t1,40(sp)
    80001c48:	03013383          	ld	t2,48(sp)
    80001c4c:	03813403          	ld	s0,56(sp)
    80001c50:	04013483          	ld	s1,64(sp)
    80001c54:	04813503          	ld	a0,72(sp)
    80001c58:	05013583          	ld	a1,80(sp)
    80001c5c:	05813603          	ld	a2,88(sp)
    80001c60:	06013683          	ld	a3,96(sp)
    80001c64:	06813703          	ld	a4,104(sp)
    80001c68:	07013783          	ld	a5,112(sp)
    80001c6c:	07813803          	ld	a6,120(sp)
    80001c70:	08013883          	ld	a7,128(sp)
    80001c74:	08813903          	ld	s2,136(sp)
    80001c78:	09013983          	ld	s3,144(sp)
    80001c7c:	09813a03          	ld	s4,152(sp)
    80001c80:	0a013a83          	ld	s5,160(sp)
    80001c84:	0a813b03          	ld	s6,168(sp)
    80001c88:	0b013b83          	ld	s7,176(sp)
    80001c8c:	0b813c03          	ld	s8,184(sp)
    80001c90:	0c013c83          	ld	s9,192(sp)
    80001c94:	0c813d03          	ld	s10,200(sp)
    80001c98:	0d013d83          	ld	s11,208(sp)
    80001c9c:	0d813e03          	ld	t3,216(sp)
    80001ca0:	0e013e83          	ld	t4,224(sp)
    80001ca4:	0e813f03          	ld	t5,232(sp)
    80001ca8:	0f013f83          	ld	t6,240(sp)
    80001cac:	10010113          	addi	sp,sp,256
    80001cb0:	10200073          	sret
    80001cb4:	00000013          	nop
    80001cb8:	00000013          	nop
    80001cbc:	00000013          	nop

0000000080001cc0 <timervec>:
    80001cc0:	34051573          	csrrw	a0,mscratch,a0
    80001cc4:	00b53023          	sd	a1,0(a0)
    80001cc8:	00c53423          	sd	a2,8(a0)
    80001ccc:	00d53823          	sd	a3,16(a0)
    80001cd0:	01853583          	ld	a1,24(a0)
    80001cd4:	02053603          	ld	a2,32(a0)
    80001cd8:	0005b683          	ld	a3,0(a1)
    80001cdc:	00c686b3          	add	a3,a3,a2
    80001ce0:	00d5b023          	sd	a3,0(a1)
    80001ce4:	00200593          	li	a1,2
    80001ce8:	14459073          	csrw	sip,a1
    80001cec:	01053683          	ld	a3,16(a0)
    80001cf0:	00853603          	ld	a2,8(a0)
    80001cf4:	00053583          	ld	a1,0(a0)
    80001cf8:	34051573          	csrrw	a0,mscratch,a0
    80001cfc:	30200073          	mret

0000000080001d00 <plicinit>:
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00813423          	sd	s0,8(sp)
    80001d08:	01010413          	addi	s0,sp,16
    80001d0c:	00813403          	ld	s0,8(sp)
    80001d10:	0c0007b7          	lui	a5,0xc000
    80001d14:	00100713          	li	a4,1
    80001d18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001d1c:	00e7a223          	sw	a4,4(a5)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <plicinithart>:
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00813023          	sd	s0,0(sp)
    80001d30:	00113423          	sd	ra,8(sp)
    80001d34:	01010413          	addi	s0,sp,16
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	a44080e7          	jalr	-1468(ra) # 8000177c <cpuid>
    80001d40:	0085171b          	slliw	a4,a0,0x8
    80001d44:	0c0027b7          	lui	a5,0xc002
    80001d48:	00e787b3          	add	a5,a5,a4
    80001d4c:	40200713          	li	a4,1026
    80001d50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001d54:	00813083          	ld	ra,8(sp)
    80001d58:	00013403          	ld	s0,0(sp)
    80001d5c:	00d5151b          	slliw	a0,a0,0xd
    80001d60:	0c2017b7          	lui	a5,0xc201
    80001d64:	00a78533          	add	a0,a5,a0
    80001d68:	00052023          	sw	zero,0(a0)
    80001d6c:	01010113          	addi	sp,sp,16
    80001d70:	00008067          	ret

0000000080001d74 <plic_claim>:
    80001d74:	ff010113          	addi	sp,sp,-16
    80001d78:	00813023          	sd	s0,0(sp)
    80001d7c:	00113423          	sd	ra,8(sp)
    80001d80:	01010413          	addi	s0,sp,16
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	9f8080e7          	jalr	-1544(ra) # 8000177c <cpuid>
    80001d8c:	00813083          	ld	ra,8(sp)
    80001d90:	00013403          	ld	s0,0(sp)
    80001d94:	00d5151b          	slliw	a0,a0,0xd
    80001d98:	0c2017b7          	lui	a5,0xc201
    80001d9c:	00a78533          	add	a0,a5,a0
    80001da0:	00452503          	lw	a0,4(a0)
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00008067          	ret

0000000080001dac <plic_complete>:
    80001dac:	fe010113          	addi	sp,sp,-32
    80001db0:	00813823          	sd	s0,16(sp)
    80001db4:	00913423          	sd	s1,8(sp)
    80001db8:	00113c23          	sd	ra,24(sp)
    80001dbc:	02010413          	addi	s0,sp,32
    80001dc0:	00050493          	mv	s1,a0
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	9b8080e7          	jalr	-1608(ra) # 8000177c <cpuid>
    80001dcc:	01813083          	ld	ra,24(sp)
    80001dd0:	01013403          	ld	s0,16(sp)
    80001dd4:	00d5179b          	slliw	a5,a0,0xd
    80001dd8:	0c201737          	lui	a4,0xc201
    80001ddc:	00f707b3          	add	a5,a4,a5
    80001de0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001de4:	00813483          	ld	s1,8(sp)
    80001de8:	02010113          	addi	sp,sp,32
    80001dec:	00008067          	ret

0000000080001df0 <consolewrite>:
    80001df0:	fb010113          	addi	sp,sp,-80
    80001df4:	04813023          	sd	s0,64(sp)
    80001df8:	04113423          	sd	ra,72(sp)
    80001dfc:	02913c23          	sd	s1,56(sp)
    80001e00:	03213823          	sd	s2,48(sp)
    80001e04:	03313423          	sd	s3,40(sp)
    80001e08:	03413023          	sd	s4,32(sp)
    80001e0c:	01513c23          	sd	s5,24(sp)
    80001e10:	05010413          	addi	s0,sp,80
    80001e14:	06c05c63          	blez	a2,80001e8c <consolewrite+0x9c>
    80001e18:	00060993          	mv	s3,a2
    80001e1c:	00050a13          	mv	s4,a0
    80001e20:	00058493          	mv	s1,a1
    80001e24:	00000913          	li	s2,0
    80001e28:	fff00a93          	li	s5,-1
    80001e2c:	01c0006f          	j	80001e48 <consolewrite+0x58>
    80001e30:	fbf44503          	lbu	a0,-65(s0)
    80001e34:	0019091b          	addiw	s2,s2,1
    80001e38:	00148493          	addi	s1,s1,1
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	a9c080e7          	jalr	-1380(ra) # 800028d8 <uartputc>
    80001e44:	03298063          	beq	s3,s2,80001e64 <consolewrite+0x74>
    80001e48:	00048613          	mv	a2,s1
    80001e4c:	00100693          	li	a3,1
    80001e50:	000a0593          	mv	a1,s4
    80001e54:	fbf40513          	addi	a0,s0,-65
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	9dc080e7          	jalr	-1572(ra) # 80001834 <either_copyin>
    80001e60:	fd5518e3          	bne	a0,s5,80001e30 <consolewrite+0x40>
    80001e64:	04813083          	ld	ra,72(sp)
    80001e68:	04013403          	ld	s0,64(sp)
    80001e6c:	03813483          	ld	s1,56(sp)
    80001e70:	02813983          	ld	s3,40(sp)
    80001e74:	02013a03          	ld	s4,32(sp)
    80001e78:	01813a83          	ld	s5,24(sp)
    80001e7c:	00090513          	mv	a0,s2
    80001e80:	03013903          	ld	s2,48(sp)
    80001e84:	05010113          	addi	sp,sp,80
    80001e88:	00008067          	ret
    80001e8c:	00000913          	li	s2,0
    80001e90:	fd5ff06f          	j	80001e64 <consolewrite+0x74>

0000000080001e94 <consoleread>:
    80001e94:	f9010113          	addi	sp,sp,-112
    80001e98:	06813023          	sd	s0,96(sp)
    80001e9c:	04913c23          	sd	s1,88(sp)
    80001ea0:	05213823          	sd	s2,80(sp)
    80001ea4:	05313423          	sd	s3,72(sp)
    80001ea8:	05413023          	sd	s4,64(sp)
    80001eac:	03513c23          	sd	s5,56(sp)
    80001eb0:	03613823          	sd	s6,48(sp)
    80001eb4:	03713423          	sd	s7,40(sp)
    80001eb8:	03813023          	sd	s8,32(sp)
    80001ebc:	06113423          	sd	ra,104(sp)
    80001ec0:	01913c23          	sd	s9,24(sp)
    80001ec4:	07010413          	addi	s0,sp,112
    80001ec8:	00060b93          	mv	s7,a2
    80001ecc:	00050913          	mv	s2,a0
    80001ed0:	00058c13          	mv	s8,a1
    80001ed4:	00060b1b          	sext.w	s6,a2
    80001ed8:	00003497          	auipc	s1,0x3
    80001edc:	69048493          	addi	s1,s1,1680 # 80005568 <cons>
    80001ee0:	00400993          	li	s3,4
    80001ee4:	fff00a13          	li	s4,-1
    80001ee8:	00a00a93          	li	s5,10
    80001eec:	05705e63          	blez	s7,80001f48 <consoleread+0xb4>
    80001ef0:	09c4a703          	lw	a4,156(s1)
    80001ef4:	0984a783          	lw	a5,152(s1)
    80001ef8:	0007071b          	sext.w	a4,a4
    80001efc:	08e78463          	beq	a5,a4,80001f84 <consoleread+0xf0>
    80001f00:	07f7f713          	andi	a4,a5,127
    80001f04:	00e48733          	add	a4,s1,a4
    80001f08:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80001f0c:	0017869b          	addiw	a3,a5,1
    80001f10:	08d4ac23          	sw	a3,152(s1)
    80001f14:	00070c9b          	sext.w	s9,a4
    80001f18:	0b370663          	beq	a4,s3,80001fc4 <consoleread+0x130>
    80001f1c:	00100693          	li	a3,1
    80001f20:	f9f40613          	addi	a2,s0,-97
    80001f24:	000c0593          	mv	a1,s8
    80001f28:	00090513          	mv	a0,s2
    80001f2c:	f8e40fa3          	sb	a4,-97(s0)
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	8b8080e7          	jalr	-1864(ra) # 800017e8 <either_copyout>
    80001f38:	01450863          	beq	a0,s4,80001f48 <consoleread+0xb4>
    80001f3c:	001c0c13          	addi	s8,s8,1
    80001f40:	fffb8b9b          	addiw	s7,s7,-1
    80001f44:	fb5c94e3          	bne	s9,s5,80001eec <consoleread+0x58>
    80001f48:	000b851b          	sext.w	a0,s7
    80001f4c:	06813083          	ld	ra,104(sp)
    80001f50:	06013403          	ld	s0,96(sp)
    80001f54:	05813483          	ld	s1,88(sp)
    80001f58:	05013903          	ld	s2,80(sp)
    80001f5c:	04813983          	ld	s3,72(sp)
    80001f60:	04013a03          	ld	s4,64(sp)
    80001f64:	03813a83          	ld	s5,56(sp)
    80001f68:	02813b83          	ld	s7,40(sp)
    80001f6c:	02013c03          	ld	s8,32(sp)
    80001f70:	01813c83          	ld	s9,24(sp)
    80001f74:	40ab053b          	subw	a0,s6,a0
    80001f78:	03013b03          	ld	s6,48(sp)
    80001f7c:	07010113          	addi	sp,sp,112
    80001f80:	00008067          	ret
    80001f84:	00001097          	auipc	ra,0x1
    80001f88:	1d8080e7          	jalr	472(ra) # 8000315c <push_on>
    80001f8c:	0984a703          	lw	a4,152(s1)
    80001f90:	09c4a783          	lw	a5,156(s1)
    80001f94:	0007879b          	sext.w	a5,a5
    80001f98:	fef70ce3          	beq	a4,a5,80001f90 <consoleread+0xfc>
    80001f9c:	00001097          	auipc	ra,0x1
    80001fa0:	234080e7          	jalr	564(ra) # 800031d0 <pop_on>
    80001fa4:	0984a783          	lw	a5,152(s1)
    80001fa8:	07f7f713          	andi	a4,a5,127
    80001fac:	00e48733          	add	a4,s1,a4
    80001fb0:	01874703          	lbu	a4,24(a4)
    80001fb4:	0017869b          	addiw	a3,a5,1
    80001fb8:	08d4ac23          	sw	a3,152(s1)
    80001fbc:	00070c9b          	sext.w	s9,a4
    80001fc0:	f5371ee3          	bne	a4,s3,80001f1c <consoleread+0x88>
    80001fc4:	000b851b          	sext.w	a0,s7
    80001fc8:	f96bf2e3          	bgeu	s7,s6,80001f4c <consoleread+0xb8>
    80001fcc:	08f4ac23          	sw	a5,152(s1)
    80001fd0:	f7dff06f          	j	80001f4c <consoleread+0xb8>

0000000080001fd4 <consputc>:
    80001fd4:	10000793          	li	a5,256
    80001fd8:	00f50663          	beq	a0,a5,80001fe4 <consputc+0x10>
    80001fdc:	00001317          	auipc	t1,0x1
    80001fe0:	9f430067          	jr	-1548(t1) # 800029d0 <uartputc_sync>
    80001fe4:	ff010113          	addi	sp,sp,-16
    80001fe8:	00113423          	sd	ra,8(sp)
    80001fec:	00813023          	sd	s0,0(sp)
    80001ff0:	01010413          	addi	s0,sp,16
    80001ff4:	00800513          	li	a0,8
    80001ff8:	00001097          	auipc	ra,0x1
    80001ffc:	9d8080e7          	jalr	-1576(ra) # 800029d0 <uartputc_sync>
    80002000:	02000513          	li	a0,32
    80002004:	00001097          	auipc	ra,0x1
    80002008:	9cc080e7          	jalr	-1588(ra) # 800029d0 <uartputc_sync>
    8000200c:	00013403          	ld	s0,0(sp)
    80002010:	00813083          	ld	ra,8(sp)
    80002014:	00800513          	li	a0,8
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00001317          	auipc	t1,0x1
    80002020:	9b430067          	jr	-1612(t1) # 800029d0 <uartputc_sync>

0000000080002024 <consoleintr>:
    80002024:	fe010113          	addi	sp,sp,-32
    80002028:	00813823          	sd	s0,16(sp)
    8000202c:	00913423          	sd	s1,8(sp)
    80002030:	01213023          	sd	s2,0(sp)
    80002034:	00113c23          	sd	ra,24(sp)
    80002038:	02010413          	addi	s0,sp,32
    8000203c:	00003917          	auipc	s2,0x3
    80002040:	52c90913          	addi	s2,s2,1324 # 80005568 <cons>
    80002044:	00050493          	mv	s1,a0
    80002048:	00090513          	mv	a0,s2
    8000204c:	00001097          	auipc	ra,0x1
    80002050:	e40080e7          	jalr	-448(ra) # 80002e8c <acquire>
    80002054:	02048c63          	beqz	s1,8000208c <consoleintr+0x68>
    80002058:	0a092783          	lw	a5,160(s2)
    8000205c:	09892703          	lw	a4,152(s2)
    80002060:	07f00693          	li	a3,127
    80002064:	40e7873b          	subw	a4,a5,a4
    80002068:	02e6e263          	bltu	a3,a4,8000208c <consoleintr+0x68>
    8000206c:	00d00713          	li	a4,13
    80002070:	04e48063          	beq	s1,a4,800020b0 <consoleintr+0x8c>
    80002074:	07f7f713          	andi	a4,a5,127
    80002078:	00e90733          	add	a4,s2,a4
    8000207c:	0017879b          	addiw	a5,a5,1
    80002080:	0af92023          	sw	a5,160(s2)
    80002084:	00970c23          	sb	s1,24(a4)
    80002088:	08f92e23          	sw	a5,156(s2)
    8000208c:	01013403          	ld	s0,16(sp)
    80002090:	01813083          	ld	ra,24(sp)
    80002094:	00813483          	ld	s1,8(sp)
    80002098:	00013903          	ld	s2,0(sp)
    8000209c:	00003517          	auipc	a0,0x3
    800020a0:	4cc50513          	addi	a0,a0,1228 # 80005568 <cons>
    800020a4:	02010113          	addi	sp,sp,32
    800020a8:	00001317          	auipc	t1,0x1
    800020ac:	eb030067          	jr	-336(t1) # 80002f58 <release>
    800020b0:	00a00493          	li	s1,10
    800020b4:	fc1ff06f          	j	80002074 <consoleintr+0x50>

00000000800020b8 <consoleinit>:
    800020b8:	fe010113          	addi	sp,sp,-32
    800020bc:	00113c23          	sd	ra,24(sp)
    800020c0:	00813823          	sd	s0,16(sp)
    800020c4:	00913423          	sd	s1,8(sp)
    800020c8:	02010413          	addi	s0,sp,32
    800020cc:	00003497          	auipc	s1,0x3
    800020d0:	49c48493          	addi	s1,s1,1180 # 80005568 <cons>
    800020d4:	00048513          	mv	a0,s1
    800020d8:	00002597          	auipc	a1,0x2
    800020dc:	0b858593          	addi	a1,a1,184 # 80004190 <CONSOLE_STATUS+0x180>
    800020e0:	00001097          	auipc	ra,0x1
    800020e4:	d88080e7          	jalr	-632(ra) # 80002e68 <initlock>
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	7ac080e7          	jalr	1964(ra) # 80002894 <uartinit>
    800020f0:	01813083          	ld	ra,24(sp)
    800020f4:	01013403          	ld	s0,16(sp)
    800020f8:	00000797          	auipc	a5,0x0
    800020fc:	d9c78793          	addi	a5,a5,-612 # 80001e94 <consoleread>
    80002100:	0af4bc23          	sd	a5,184(s1)
    80002104:	00000797          	auipc	a5,0x0
    80002108:	cec78793          	addi	a5,a5,-788 # 80001df0 <consolewrite>
    8000210c:	0cf4b023          	sd	a5,192(s1)
    80002110:	00813483          	ld	s1,8(sp)
    80002114:	02010113          	addi	sp,sp,32
    80002118:	00008067          	ret

000000008000211c <console_read>:
    8000211c:	ff010113          	addi	sp,sp,-16
    80002120:	00813423          	sd	s0,8(sp)
    80002124:	01010413          	addi	s0,sp,16
    80002128:	00813403          	ld	s0,8(sp)
    8000212c:	00003317          	auipc	t1,0x3
    80002130:	4f433303          	ld	t1,1268(t1) # 80005620 <devsw+0x10>
    80002134:	01010113          	addi	sp,sp,16
    80002138:	00030067          	jr	t1

000000008000213c <console_write>:
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00813423          	sd	s0,8(sp)
    80002144:	01010413          	addi	s0,sp,16
    80002148:	00813403          	ld	s0,8(sp)
    8000214c:	00003317          	auipc	t1,0x3
    80002150:	4dc33303          	ld	t1,1244(t1) # 80005628 <devsw+0x18>
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00030067          	jr	t1

000000008000215c <panic>:
    8000215c:	fe010113          	addi	sp,sp,-32
    80002160:	00113c23          	sd	ra,24(sp)
    80002164:	00813823          	sd	s0,16(sp)
    80002168:	00913423          	sd	s1,8(sp)
    8000216c:	02010413          	addi	s0,sp,32
    80002170:	00050493          	mv	s1,a0
    80002174:	00002517          	auipc	a0,0x2
    80002178:	02450513          	addi	a0,a0,36 # 80004198 <CONSOLE_STATUS+0x188>
    8000217c:	00003797          	auipc	a5,0x3
    80002180:	5407a623          	sw	zero,1356(a5) # 800056c8 <pr+0x18>
    80002184:	00000097          	auipc	ra,0x0
    80002188:	034080e7          	jalr	52(ra) # 800021b8 <__printf>
    8000218c:	00048513          	mv	a0,s1
    80002190:	00000097          	auipc	ra,0x0
    80002194:	028080e7          	jalr	40(ra) # 800021b8 <__printf>
    80002198:	00002517          	auipc	a0,0x2
    8000219c:	eb850513          	addi	a0,a0,-328 # 80004050 <CONSOLE_STATUS+0x40>
    800021a0:	00000097          	auipc	ra,0x0
    800021a4:	018080e7          	jalr	24(ra) # 800021b8 <__printf>
    800021a8:	00100793          	li	a5,1
    800021ac:	00002717          	auipc	a4,0x2
    800021b0:	2af72e23          	sw	a5,700(a4) # 80004468 <panicked>
    800021b4:	0000006f          	j	800021b4 <panic+0x58>

00000000800021b8 <__printf>:
    800021b8:	f3010113          	addi	sp,sp,-208
    800021bc:	08813023          	sd	s0,128(sp)
    800021c0:	07313423          	sd	s3,104(sp)
    800021c4:	09010413          	addi	s0,sp,144
    800021c8:	05813023          	sd	s8,64(sp)
    800021cc:	08113423          	sd	ra,136(sp)
    800021d0:	06913c23          	sd	s1,120(sp)
    800021d4:	07213823          	sd	s2,112(sp)
    800021d8:	07413023          	sd	s4,96(sp)
    800021dc:	05513c23          	sd	s5,88(sp)
    800021e0:	05613823          	sd	s6,80(sp)
    800021e4:	05713423          	sd	s7,72(sp)
    800021e8:	03913c23          	sd	s9,56(sp)
    800021ec:	03a13823          	sd	s10,48(sp)
    800021f0:	03b13423          	sd	s11,40(sp)
    800021f4:	00003317          	auipc	t1,0x3
    800021f8:	4bc30313          	addi	t1,t1,1212 # 800056b0 <pr>
    800021fc:	01832c03          	lw	s8,24(t1)
    80002200:	00b43423          	sd	a1,8(s0)
    80002204:	00c43823          	sd	a2,16(s0)
    80002208:	00d43c23          	sd	a3,24(s0)
    8000220c:	02e43023          	sd	a4,32(s0)
    80002210:	02f43423          	sd	a5,40(s0)
    80002214:	03043823          	sd	a6,48(s0)
    80002218:	03143c23          	sd	a7,56(s0)
    8000221c:	00050993          	mv	s3,a0
    80002220:	4a0c1663          	bnez	s8,800026cc <__printf+0x514>
    80002224:	60098c63          	beqz	s3,8000283c <__printf+0x684>
    80002228:	0009c503          	lbu	a0,0(s3)
    8000222c:	00840793          	addi	a5,s0,8
    80002230:	f6f43c23          	sd	a5,-136(s0)
    80002234:	00000493          	li	s1,0
    80002238:	22050063          	beqz	a0,80002458 <__printf+0x2a0>
    8000223c:	00002a37          	lui	s4,0x2
    80002240:	00018ab7          	lui	s5,0x18
    80002244:	000f4b37          	lui	s6,0xf4
    80002248:	00989bb7          	lui	s7,0x989
    8000224c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002250:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002254:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002258:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000225c:	00148c9b          	addiw	s9,s1,1
    80002260:	02500793          	li	a5,37
    80002264:	01998933          	add	s2,s3,s9
    80002268:	38f51263          	bne	a0,a5,800025ec <__printf+0x434>
    8000226c:	00094783          	lbu	a5,0(s2)
    80002270:	00078c9b          	sext.w	s9,a5
    80002274:	1e078263          	beqz	a5,80002458 <__printf+0x2a0>
    80002278:	0024849b          	addiw	s1,s1,2
    8000227c:	07000713          	li	a4,112
    80002280:	00998933          	add	s2,s3,s1
    80002284:	38e78a63          	beq	a5,a4,80002618 <__printf+0x460>
    80002288:	20f76863          	bltu	a4,a5,80002498 <__printf+0x2e0>
    8000228c:	42a78863          	beq	a5,a0,800026bc <__printf+0x504>
    80002290:	06400713          	li	a4,100
    80002294:	40e79663          	bne	a5,a4,800026a0 <__printf+0x4e8>
    80002298:	f7843783          	ld	a5,-136(s0)
    8000229c:	0007a603          	lw	a2,0(a5)
    800022a0:	00878793          	addi	a5,a5,8
    800022a4:	f6f43c23          	sd	a5,-136(s0)
    800022a8:	42064a63          	bltz	a2,800026dc <__printf+0x524>
    800022ac:	00a00713          	li	a4,10
    800022b0:	02e677bb          	remuw	a5,a2,a4
    800022b4:	00002d97          	auipc	s11,0x2
    800022b8:	f0cd8d93          	addi	s11,s11,-244 # 800041c0 <digits>
    800022bc:	00900593          	li	a1,9
    800022c0:	0006051b          	sext.w	a0,a2
    800022c4:	00000c93          	li	s9,0
    800022c8:	02079793          	slli	a5,a5,0x20
    800022cc:	0207d793          	srli	a5,a5,0x20
    800022d0:	00fd87b3          	add	a5,s11,a5
    800022d4:	0007c783          	lbu	a5,0(a5)
    800022d8:	02e656bb          	divuw	a3,a2,a4
    800022dc:	f8f40023          	sb	a5,-128(s0)
    800022e0:	14c5d863          	bge	a1,a2,80002430 <__printf+0x278>
    800022e4:	06300593          	li	a1,99
    800022e8:	00100c93          	li	s9,1
    800022ec:	02e6f7bb          	remuw	a5,a3,a4
    800022f0:	02079793          	slli	a5,a5,0x20
    800022f4:	0207d793          	srli	a5,a5,0x20
    800022f8:	00fd87b3          	add	a5,s11,a5
    800022fc:	0007c783          	lbu	a5,0(a5)
    80002300:	02e6d73b          	divuw	a4,a3,a4
    80002304:	f8f400a3          	sb	a5,-127(s0)
    80002308:	12a5f463          	bgeu	a1,a0,80002430 <__printf+0x278>
    8000230c:	00a00693          	li	a3,10
    80002310:	00900593          	li	a1,9
    80002314:	02d777bb          	remuw	a5,a4,a3
    80002318:	02079793          	slli	a5,a5,0x20
    8000231c:	0207d793          	srli	a5,a5,0x20
    80002320:	00fd87b3          	add	a5,s11,a5
    80002324:	0007c503          	lbu	a0,0(a5)
    80002328:	02d757bb          	divuw	a5,a4,a3
    8000232c:	f8a40123          	sb	a0,-126(s0)
    80002330:	48e5f263          	bgeu	a1,a4,800027b4 <__printf+0x5fc>
    80002334:	06300513          	li	a0,99
    80002338:	02d7f5bb          	remuw	a1,a5,a3
    8000233c:	02059593          	slli	a1,a1,0x20
    80002340:	0205d593          	srli	a1,a1,0x20
    80002344:	00bd85b3          	add	a1,s11,a1
    80002348:	0005c583          	lbu	a1,0(a1)
    8000234c:	02d7d7bb          	divuw	a5,a5,a3
    80002350:	f8b401a3          	sb	a1,-125(s0)
    80002354:	48e57263          	bgeu	a0,a4,800027d8 <__printf+0x620>
    80002358:	3e700513          	li	a0,999
    8000235c:	02d7f5bb          	remuw	a1,a5,a3
    80002360:	02059593          	slli	a1,a1,0x20
    80002364:	0205d593          	srli	a1,a1,0x20
    80002368:	00bd85b3          	add	a1,s11,a1
    8000236c:	0005c583          	lbu	a1,0(a1)
    80002370:	02d7d7bb          	divuw	a5,a5,a3
    80002374:	f8b40223          	sb	a1,-124(s0)
    80002378:	46e57663          	bgeu	a0,a4,800027e4 <__printf+0x62c>
    8000237c:	02d7f5bb          	remuw	a1,a5,a3
    80002380:	02059593          	slli	a1,a1,0x20
    80002384:	0205d593          	srli	a1,a1,0x20
    80002388:	00bd85b3          	add	a1,s11,a1
    8000238c:	0005c583          	lbu	a1,0(a1)
    80002390:	02d7d7bb          	divuw	a5,a5,a3
    80002394:	f8b402a3          	sb	a1,-123(s0)
    80002398:	46ea7863          	bgeu	s4,a4,80002808 <__printf+0x650>
    8000239c:	02d7f5bb          	remuw	a1,a5,a3
    800023a0:	02059593          	slli	a1,a1,0x20
    800023a4:	0205d593          	srli	a1,a1,0x20
    800023a8:	00bd85b3          	add	a1,s11,a1
    800023ac:	0005c583          	lbu	a1,0(a1)
    800023b0:	02d7d7bb          	divuw	a5,a5,a3
    800023b4:	f8b40323          	sb	a1,-122(s0)
    800023b8:	3eeaf863          	bgeu	s5,a4,800027a8 <__printf+0x5f0>
    800023bc:	02d7f5bb          	remuw	a1,a5,a3
    800023c0:	02059593          	slli	a1,a1,0x20
    800023c4:	0205d593          	srli	a1,a1,0x20
    800023c8:	00bd85b3          	add	a1,s11,a1
    800023cc:	0005c583          	lbu	a1,0(a1)
    800023d0:	02d7d7bb          	divuw	a5,a5,a3
    800023d4:	f8b403a3          	sb	a1,-121(s0)
    800023d8:	42eb7e63          	bgeu	s6,a4,80002814 <__printf+0x65c>
    800023dc:	02d7f5bb          	remuw	a1,a5,a3
    800023e0:	02059593          	slli	a1,a1,0x20
    800023e4:	0205d593          	srli	a1,a1,0x20
    800023e8:	00bd85b3          	add	a1,s11,a1
    800023ec:	0005c583          	lbu	a1,0(a1)
    800023f0:	02d7d7bb          	divuw	a5,a5,a3
    800023f4:	f8b40423          	sb	a1,-120(s0)
    800023f8:	42ebfc63          	bgeu	s7,a4,80002830 <__printf+0x678>
    800023fc:	02079793          	slli	a5,a5,0x20
    80002400:	0207d793          	srli	a5,a5,0x20
    80002404:	00fd8db3          	add	s11,s11,a5
    80002408:	000dc703          	lbu	a4,0(s11)
    8000240c:	00a00793          	li	a5,10
    80002410:	00900c93          	li	s9,9
    80002414:	f8e404a3          	sb	a4,-119(s0)
    80002418:	00065c63          	bgez	a2,80002430 <__printf+0x278>
    8000241c:	f9040713          	addi	a4,s0,-112
    80002420:	00f70733          	add	a4,a4,a5
    80002424:	02d00693          	li	a3,45
    80002428:	fed70823          	sb	a3,-16(a4)
    8000242c:	00078c93          	mv	s9,a5
    80002430:	f8040793          	addi	a5,s0,-128
    80002434:	01978cb3          	add	s9,a5,s9
    80002438:	f7f40d13          	addi	s10,s0,-129
    8000243c:	000cc503          	lbu	a0,0(s9)
    80002440:	fffc8c93          	addi	s9,s9,-1
    80002444:	00000097          	auipc	ra,0x0
    80002448:	b90080e7          	jalr	-1136(ra) # 80001fd4 <consputc>
    8000244c:	ffac98e3          	bne	s9,s10,8000243c <__printf+0x284>
    80002450:	00094503          	lbu	a0,0(s2)
    80002454:	e00514e3          	bnez	a0,8000225c <__printf+0xa4>
    80002458:	1a0c1663          	bnez	s8,80002604 <__printf+0x44c>
    8000245c:	08813083          	ld	ra,136(sp)
    80002460:	08013403          	ld	s0,128(sp)
    80002464:	07813483          	ld	s1,120(sp)
    80002468:	07013903          	ld	s2,112(sp)
    8000246c:	06813983          	ld	s3,104(sp)
    80002470:	06013a03          	ld	s4,96(sp)
    80002474:	05813a83          	ld	s5,88(sp)
    80002478:	05013b03          	ld	s6,80(sp)
    8000247c:	04813b83          	ld	s7,72(sp)
    80002480:	04013c03          	ld	s8,64(sp)
    80002484:	03813c83          	ld	s9,56(sp)
    80002488:	03013d03          	ld	s10,48(sp)
    8000248c:	02813d83          	ld	s11,40(sp)
    80002490:	0d010113          	addi	sp,sp,208
    80002494:	00008067          	ret
    80002498:	07300713          	li	a4,115
    8000249c:	1ce78a63          	beq	a5,a4,80002670 <__printf+0x4b8>
    800024a0:	07800713          	li	a4,120
    800024a4:	1ee79e63          	bne	a5,a4,800026a0 <__printf+0x4e8>
    800024a8:	f7843783          	ld	a5,-136(s0)
    800024ac:	0007a703          	lw	a4,0(a5)
    800024b0:	00878793          	addi	a5,a5,8
    800024b4:	f6f43c23          	sd	a5,-136(s0)
    800024b8:	28074263          	bltz	a4,8000273c <__printf+0x584>
    800024bc:	00002d97          	auipc	s11,0x2
    800024c0:	d04d8d93          	addi	s11,s11,-764 # 800041c0 <digits>
    800024c4:	00f77793          	andi	a5,a4,15
    800024c8:	00fd87b3          	add	a5,s11,a5
    800024cc:	0007c683          	lbu	a3,0(a5)
    800024d0:	00f00613          	li	a2,15
    800024d4:	0007079b          	sext.w	a5,a4
    800024d8:	f8d40023          	sb	a3,-128(s0)
    800024dc:	0047559b          	srliw	a1,a4,0x4
    800024e0:	0047569b          	srliw	a3,a4,0x4
    800024e4:	00000c93          	li	s9,0
    800024e8:	0ee65063          	bge	a2,a4,800025c8 <__printf+0x410>
    800024ec:	00f6f693          	andi	a3,a3,15
    800024f0:	00dd86b3          	add	a3,s11,a3
    800024f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800024f8:	0087d79b          	srliw	a5,a5,0x8
    800024fc:	00100c93          	li	s9,1
    80002500:	f8d400a3          	sb	a3,-127(s0)
    80002504:	0cb67263          	bgeu	a2,a1,800025c8 <__printf+0x410>
    80002508:	00f7f693          	andi	a3,a5,15
    8000250c:	00dd86b3          	add	a3,s11,a3
    80002510:	0006c583          	lbu	a1,0(a3)
    80002514:	00f00613          	li	a2,15
    80002518:	0047d69b          	srliw	a3,a5,0x4
    8000251c:	f8b40123          	sb	a1,-126(s0)
    80002520:	0047d593          	srli	a1,a5,0x4
    80002524:	28f67e63          	bgeu	a2,a5,800027c0 <__printf+0x608>
    80002528:	00f6f693          	andi	a3,a3,15
    8000252c:	00dd86b3          	add	a3,s11,a3
    80002530:	0006c503          	lbu	a0,0(a3)
    80002534:	0087d813          	srli	a6,a5,0x8
    80002538:	0087d69b          	srliw	a3,a5,0x8
    8000253c:	f8a401a3          	sb	a0,-125(s0)
    80002540:	28b67663          	bgeu	a2,a1,800027cc <__printf+0x614>
    80002544:	00f6f693          	andi	a3,a3,15
    80002548:	00dd86b3          	add	a3,s11,a3
    8000254c:	0006c583          	lbu	a1,0(a3)
    80002550:	00c7d513          	srli	a0,a5,0xc
    80002554:	00c7d69b          	srliw	a3,a5,0xc
    80002558:	f8b40223          	sb	a1,-124(s0)
    8000255c:	29067a63          	bgeu	a2,a6,800027f0 <__printf+0x638>
    80002560:	00f6f693          	andi	a3,a3,15
    80002564:	00dd86b3          	add	a3,s11,a3
    80002568:	0006c583          	lbu	a1,0(a3)
    8000256c:	0107d813          	srli	a6,a5,0x10
    80002570:	0107d69b          	srliw	a3,a5,0x10
    80002574:	f8b402a3          	sb	a1,-123(s0)
    80002578:	28a67263          	bgeu	a2,a0,800027fc <__printf+0x644>
    8000257c:	00f6f693          	andi	a3,a3,15
    80002580:	00dd86b3          	add	a3,s11,a3
    80002584:	0006c683          	lbu	a3,0(a3)
    80002588:	0147d79b          	srliw	a5,a5,0x14
    8000258c:	f8d40323          	sb	a3,-122(s0)
    80002590:	21067663          	bgeu	a2,a6,8000279c <__printf+0x5e4>
    80002594:	02079793          	slli	a5,a5,0x20
    80002598:	0207d793          	srli	a5,a5,0x20
    8000259c:	00fd8db3          	add	s11,s11,a5
    800025a0:	000dc683          	lbu	a3,0(s11)
    800025a4:	00800793          	li	a5,8
    800025a8:	00700c93          	li	s9,7
    800025ac:	f8d403a3          	sb	a3,-121(s0)
    800025b0:	00075c63          	bgez	a4,800025c8 <__printf+0x410>
    800025b4:	f9040713          	addi	a4,s0,-112
    800025b8:	00f70733          	add	a4,a4,a5
    800025bc:	02d00693          	li	a3,45
    800025c0:	fed70823          	sb	a3,-16(a4)
    800025c4:	00078c93          	mv	s9,a5
    800025c8:	f8040793          	addi	a5,s0,-128
    800025cc:	01978cb3          	add	s9,a5,s9
    800025d0:	f7f40d13          	addi	s10,s0,-129
    800025d4:	000cc503          	lbu	a0,0(s9)
    800025d8:	fffc8c93          	addi	s9,s9,-1
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	9f8080e7          	jalr	-1544(ra) # 80001fd4 <consputc>
    800025e4:	ff9d18e3          	bne	s10,s9,800025d4 <__printf+0x41c>
    800025e8:	0100006f          	j	800025f8 <__printf+0x440>
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	9e8080e7          	jalr	-1560(ra) # 80001fd4 <consputc>
    800025f4:	000c8493          	mv	s1,s9
    800025f8:	00094503          	lbu	a0,0(s2)
    800025fc:	c60510e3          	bnez	a0,8000225c <__printf+0xa4>
    80002600:	e40c0ee3          	beqz	s8,8000245c <__printf+0x2a4>
    80002604:	00003517          	auipc	a0,0x3
    80002608:	0ac50513          	addi	a0,a0,172 # 800056b0 <pr>
    8000260c:	00001097          	auipc	ra,0x1
    80002610:	94c080e7          	jalr	-1716(ra) # 80002f58 <release>
    80002614:	e49ff06f          	j	8000245c <__printf+0x2a4>
    80002618:	f7843783          	ld	a5,-136(s0)
    8000261c:	03000513          	li	a0,48
    80002620:	01000d13          	li	s10,16
    80002624:	00878713          	addi	a4,a5,8
    80002628:	0007bc83          	ld	s9,0(a5)
    8000262c:	f6e43c23          	sd	a4,-136(s0)
    80002630:	00000097          	auipc	ra,0x0
    80002634:	9a4080e7          	jalr	-1628(ra) # 80001fd4 <consputc>
    80002638:	07800513          	li	a0,120
    8000263c:	00000097          	auipc	ra,0x0
    80002640:	998080e7          	jalr	-1640(ra) # 80001fd4 <consputc>
    80002644:	00002d97          	auipc	s11,0x2
    80002648:	b7cd8d93          	addi	s11,s11,-1156 # 800041c0 <digits>
    8000264c:	03ccd793          	srli	a5,s9,0x3c
    80002650:	00fd87b3          	add	a5,s11,a5
    80002654:	0007c503          	lbu	a0,0(a5)
    80002658:	fffd0d1b          	addiw	s10,s10,-1
    8000265c:	004c9c93          	slli	s9,s9,0x4
    80002660:	00000097          	auipc	ra,0x0
    80002664:	974080e7          	jalr	-1676(ra) # 80001fd4 <consputc>
    80002668:	fe0d12e3          	bnez	s10,8000264c <__printf+0x494>
    8000266c:	f8dff06f          	j	800025f8 <__printf+0x440>
    80002670:	f7843783          	ld	a5,-136(s0)
    80002674:	0007bc83          	ld	s9,0(a5)
    80002678:	00878793          	addi	a5,a5,8
    8000267c:	f6f43c23          	sd	a5,-136(s0)
    80002680:	000c9a63          	bnez	s9,80002694 <__printf+0x4dc>
    80002684:	1080006f          	j	8000278c <__printf+0x5d4>
    80002688:	001c8c93          	addi	s9,s9,1
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	948080e7          	jalr	-1720(ra) # 80001fd4 <consputc>
    80002694:	000cc503          	lbu	a0,0(s9)
    80002698:	fe0518e3          	bnez	a0,80002688 <__printf+0x4d0>
    8000269c:	f5dff06f          	j	800025f8 <__printf+0x440>
    800026a0:	02500513          	li	a0,37
    800026a4:	00000097          	auipc	ra,0x0
    800026a8:	930080e7          	jalr	-1744(ra) # 80001fd4 <consputc>
    800026ac:	000c8513          	mv	a0,s9
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	924080e7          	jalr	-1756(ra) # 80001fd4 <consputc>
    800026b8:	f41ff06f          	j	800025f8 <__printf+0x440>
    800026bc:	02500513          	li	a0,37
    800026c0:	00000097          	auipc	ra,0x0
    800026c4:	914080e7          	jalr	-1772(ra) # 80001fd4 <consputc>
    800026c8:	f31ff06f          	j	800025f8 <__printf+0x440>
    800026cc:	00030513          	mv	a0,t1
    800026d0:	00000097          	auipc	ra,0x0
    800026d4:	7bc080e7          	jalr	1980(ra) # 80002e8c <acquire>
    800026d8:	b4dff06f          	j	80002224 <__printf+0x6c>
    800026dc:	40c0053b          	negw	a0,a2
    800026e0:	00a00713          	li	a4,10
    800026e4:	02e576bb          	remuw	a3,a0,a4
    800026e8:	00002d97          	auipc	s11,0x2
    800026ec:	ad8d8d93          	addi	s11,s11,-1320 # 800041c0 <digits>
    800026f0:	ff700593          	li	a1,-9
    800026f4:	02069693          	slli	a3,a3,0x20
    800026f8:	0206d693          	srli	a3,a3,0x20
    800026fc:	00dd86b3          	add	a3,s11,a3
    80002700:	0006c683          	lbu	a3,0(a3)
    80002704:	02e557bb          	divuw	a5,a0,a4
    80002708:	f8d40023          	sb	a3,-128(s0)
    8000270c:	10b65e63          	bge	a2,a1,80002828 <__printf+0x670>
    80002710:	06300593          	li	a1,99
    80002714:	02e7f6bb          	remuw	a3,a5,a4
    80002718:	02069693          	slli	a3,a3,0x20
    8000271c:	0206d693          	srli	a3,a3,0x20
    80002720:	00dd86b3          	add	a3,s11,a3
    80002724:	0006c683          	lbu	a3,0(a3)
    80002728:	02e7d73b          	divuw	a4,a5,a4
    8000272c:	00200793          	li	a5,2
    80002730:	f8d400a3          	sb	a3,-127(s0)
    80002734:	bca5ece3          	bltu	a1,a0,8000230c <__printf+0x154>
    80002738:	ce5ff06f          	j	8000241c <__printf+0x264>
    8000273c:	40e007bb          	negw	a5,a4
    80002740:	00002d97          	auipc	s11,0x2
    80002744:	a80d8d93          	addi	s11,s11,-1408 # 800041c0 <digits>
    80002748:	00f7f693          	andi	a3,a5,15
    8000274c:	00dd86b3          	add	a3,s11,a3
    80002750:	0006c583          	lbu	a1,0(a3)
    80002754:	ff100613          	li	a2,-15
    80002758:	0047d69b          	srliw	a3,a5,0x4
    8000275c:	f8b40023          	sb	a1,-128(s0)
    80002760:	0047d59b          	srliw	a1,a5,0x4
    80002764:	0ac75e63          	bge	a4,a2,80002820 <__printf+0x668>
    80002768:	00f6f693          	andi	a3,a3,15
    8000276c:	00dd86b3          	add	a3,s11,a3
    80002770:	0006c603          	lbu	a2,0(a3)
    80002774:	00f00693          	li	a3,15
    80002778:	0087d79b          	srliw	a5,a5,0x8
    8000277c:	f8c400a3          	sb	a2,-127(s0)
    80002780:	d8b6e4e3          	bltu	a3,a1,80002508 <__printf+0x350>
    80002784:	00200793          	li	a5,2
    80002788:	e2dff06f          	j	800025b4 <__printf+0x3fc>
    8000278c:	00002c97          	auipc	s9,0x2
    80002790:	a14c8c93          	addi	s9,s9,-1516 # 800041a0 <CONSOLE_STATUS+0x190>
    80002794:	02800513          	li	a0,40
    80002798:	ef1ff06f          	j	80002688 <__printf+0x4d0>
    8000279c:	00700793          	li	a5,7
    800027a0:	00600c93          	li	s9,6
    800027a4:	e0dff06f          	j	800025b0 <__printf+0x3f8>
    800027a8:	00700793          	li	a5,7
    800027ac:	00600c93          	li	s9,6
    800027b0:	c69ff06f          	j	80002418 <__printf+0x260>
    800027b4:	00300793          	li	a5,3
    800027b8:	00200c93          	li	s9,2
    800027bc:	c5dff06f          	j	80002418 <__printf+0x260>
    800027c0:	00300793          	li	a5,3
    800027c4:	00200c93          	li	s9,2
    800027c8:	de9ff06f          	j	800025b0 <__printf+0x3f8>
    800027cc:	00400793          	li	a5,4
    800027d0:	00300c93          	li	s9,3
    800027d4:	dddff06f          	j	800025b0 <__printf+0x3f8>
    800027d8:	00400793          	li	a5,4
    800027dc:	00300c93          	li	s9,3
    800027e0:	c39ff06f          	j	80002418 <__printf+0x260>
    800027e4:	00500793          	li	a5,5
    800027e8:	00400c93          	li	s9,4
    800027ec:	c2dff06f          	j	80002418 <__printf+0x260>
    800027f0:	00500793          	li	a5,5
    800027f4:	00400c93          	li	s9,4
    800027f8:	db9ff06f          	j	800025b0 <__printf+0x3f8>
    800027fc:	00600793          	li	a5,6
    80002800:	00500c93          	li	s9,5
    80002804:	dadff06f          	j	800025b0 <__printf+0x3f8>
    80002808:	00600793          	li	a5,6
    8000280c:	00500c93          	li	s9,5
    80002810:	c09ff06f          	j	80002418 <__printf+0x260>
    80002814:	00800793          	li	a5,8
    80002818:	00700c93          	li	s9,7
    8000281c:	bfdff06f          	j	80002418 <__printf+0x260>
    80002820:	00100793          	li	a5,1
    80002824:	d91ff06f          	j	800025b4 <__printf+0x3fc>
    80002828:	00100793          	li	a5,1
    8000282c:	bf1ff06f          	j	8000241c <__printf+0x264>
    80002830:	00900793          	li	a5,9
    80002834:	00800c93          	li	s9,8
    80002838:	be1ff06f          	j	80002418 <__printf+0x260>
    8000283c:	00002517          	auipc	a0,0x2
    80002840:	96c50513          	addi	a0,a0,-1684 # 800041a8 <CONSOLE_STATUS+0x198>
    80002844:	00000097          	auipc	ra,0x0
    80002848:	918080e7          	jalr	-1768(ra) # 8000215c <panic>

000000008000284c <printfinit>:
    8000284c:	fe010113          	addi	sp,sp,-32
    80002850:	00813823          	sd	s0,16(sp)
    80002854:	00913423          	sd	s1,8(sp)
    80002858:	00113c23          	sd	ra,24(sp)
    8000285c:	02010413          	addi	s0,sp,32
    80002860:	00003497          	auipc	s1,0x3
    80002864:	e5048493          	addi	s1,s1,-432 # 800056b0 <pr>
    80002868:	00048513          	mv	a0,s1
    8000286c:	00002597          	auipc	a1,0x2
    80002870:	94c58593          	addi	a1,a1,-1716 # 800041b8 <CONSOLE_STATUS+0x1a8>
    80002874:	00000097          	auipc	ra,0x0
    80002878:	5f4080e7          	jalr	1524(ra) # 80002e68 <initlock>
    8000287c:	01813083          	ld	ra,24(sp)
    80002880:	01013403          	ld	s0,16(sp)
    80002884:	0004ac23          	sw	zero,24(s1)
    80002888:	00813483          	ld	s1,8(sp)
    8000288c:	02010113          	addi	sp,sp,32
    80002890:	00008067          	ret

0000000080002894 <uartinit>:
    80002894:	ff010113          	addi	sp,sp,-16
    80002898:	00813423          	sd	s0,8(sp)
    8000289c:	01010413          	addi	s0,sp,16
    800028a0:	100007b7          	lui	a5,0x10000
    800028a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800028a8:	f8000713          	li	a4,-128
    800028ac:	00e781a3          	sb	a4,3(a5)
    800028b0:	00300713          	li	a4,3
    800028b4:	00e78023          	sb	a4,0(a5)
    800028b8:	000780a3          	sb	zero,1(a5)
    800028bc:	00e781a3          	sb	a4,3(a5)
    800028c0:	00700693          	li	a3,7
    800028c4:	00d78123          	sb	a3,2(a5)
    800028c8:	00e780a3          	sb	a4,1(a5)
    800028cc:	00813403          	ld	s0,8(sp)
    800028d0:	01010113          	addi	sp,sp,16
    800028d4:	00008067          	ret

00000000800028d8 <uartputc>:
    800028d8:	00002797          	auipc	a5,0x2
    800028dc:	b907a783          	lw	a5,-1136(a5) # 80004468 <panicked>
    800028e0:	00078463          	beqz	a5,800028e8 <uartputc+0x10>
    800028e4:	0000006f          	j	800028e4 <uartputc+0xc>
    800028e8:	fd010113          	addi	sp,sp,-48
    800028ec:	02813023          	sd	s0,32(sp)
    800028f0:	00913c23          	sd	s1,24(sp)
    800028f4:	01213823          	sd	s2,16(sp)
    800028f8:	01313423          	sd	s3,8(sp)
    800028fc:	02113423          	sd	ra,40(sp)
    80002900:	03010413          	addi	s0,sp,48
    80002904:	00002917          	auipc	s2,0x2
    80002908:	b6c90913          	addi	s2,s2,-1172 # 80004470 <uart_tx_r>
    8000290c:	00093783          	ld	a5,0(s2)
    80002910:	00002497          	auipc	s1,0x2
    80002914:	b6848493          	addi	s1,s1,-1176 # 80004478 <uart_tx_w>
    80002918:	0004b703          	ld	a4,0(s1)
    8000291c:	02078693          	addi	a3,a5,32
    80002920:	00050993          	mv	s3,a0
    80002924:	02e69c63          	bne	a3,a4,8000295c <uartputc+0x84>
    80002928:	00001097          	auipc	ra,0x1
    8000292c:	834080e7          	jalr	-1996(ra) # 8000315c <push_on>
    80002930:	00093783          	ld	a5,0(s2)
    80002934:	0004b703          	ld	a4,0(s1)
    80002938:	02078793          	addi	a5,a5,32
    8000293c:	00e79463          	bne	a5,a4,80002944 <uartputc+0x6c>
    80002940:	0000006f          	j	80002940 <uartputc+0x68>
    80002944:	00001097          	auipc	ra,0x1
    80002948:	88c080e7          	jalr	-1908(ra) # 800031d0 <pop_on>
    8000294c:	00093783          	ld	a5,0(s2)
    80002950:	0004b703          	ld	a4,0(s1)
    80002954:	02078693          	addi	a3,a5,32
    80002958:	fce688e3          	beq	a3,a4,80002928 <uartputc+0x50>
    8000295c:	01f77693          	andi	a3,a4,31
    80002960:	00003597          	auipc	a1,0x3
    80002964:	d7058593          	addi	a1,a1,-656 # 800056d0 <uart_tx_buf>
    80002968:	00d586b3          	add	a3,a1,a3
    8000296c:	00170713          	addi	a4,a4,1
    80002970:	01368023          	sb	s3,0(a3)
    80002974:	00e4b023          	sd	a4,0(s1)
    80002978:	10000637          	lui	a2,0x10000
    8000297c:	02f71063          	bne	a4,a5,8000299c <uartputc+0xc4>
    80002980:	0340006f          	j	800029b4 <uartputc+0xdc>
    80002984:	00074703          	lbu	a4,0(a4)
    80002988:	00f93023          	sd	a5,0(s2)
    8000298c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002990:	00093783          	ld	a5,0(s2)
    80002994:	0004b703          	ld	a4,0(s1)
    80002998:	00f70e63          	beq	a4,a5,800029b4 <uartputc+0xdc>
    8000299c:	00564683          	lbu	a3,5(a2)
    800029a0:	01f7f713          	andi	a4,a5,31
    800029a4:	00e58733          	add	a4,a1,a4
    800029a8:	0206f693          	andi	a3,a3,32
    800029ac:	00178793          	addi	a5,a5,1
    800029b0:	fc069ae3          	bnez	a3,80002984 <uartputc+0xac>
    800029b4:	02813083          	ld	ra,40(sp)
    800029b8:	02013403          	ld	s0,32(sp)
    800029bc:	01813483          	ld	s1,24(sp)
    800029c0:	01013903          	ld	s2,16(sp)
    800029c4:	00813983          	ld	s3,8(sp)
    800029c8:	03010113          	addi	sp,sp,48
    800029cc:	00008067          	ret

00000000800029d0 <uartputc_sync>:
    800029d0:	ff010113          	addi	sp,sp,-16
    800029d4:	00813423          	sd	s0,8(sp)
    800029d8:	01010413          	addi	s0,sp,16
    800029dc:	00002717          	auipc	a4,0x2
    800029e0:	a8c72703          	lw	a4,-1396(a4) # 80004468 <panicked>
    800029e4:	02071663          	bnez	a4,80002a10 <uartputc_sync+0x40>
    800029e8:	00050793          	mv	a5,a0
    800029ec:	100006b7          	lui	a3,0x10000
    800029f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800029f4:	02077713          	andi	a4,a4,32
    800029f8:	fe070ce3          	beqz	a4,800029f0 <uartputc_sync+0x20>
    800029fc:	0ff7f793          	andi	a5,a5,255
    80002a00:	00f68023          	sb	a5,0(a3)
    80002a04:	00813403          	ld	s0,8(sp)
    80002a08:	01010113          	addi	sp,sp,16
    80002a0c:	00008067          	ret
    80002a10:	0000006f          	j	80002a10 <uartputc_sync+0x40>

0000000080002a14 <uartstart>:
    80002a14:	ff010113          	addi	sp,sp,-16
    80002a18:	00813423          	sd	s0,8(sp)
    80002a1c:	01010413          	addi	s0,sp,16
    80002a20:	00002617          	auipc	a2,0x2
    80002a24:	a5060613          	addi	a2,a2,-1456 # 80004470 <uart_tx_r>
    80002a28:	00002517          	auipc	a0,0x2
    80002a2c:	a5050513          	addi	a0,a0,-1456 # 80004478 <uart_tx_w>
    80002a30:	00063783          	ld	a5,0(a2)
    80002a34:	00053703          	ld	a4,0(a0)
    80002a38:	04f70263          	beq	a4,a5,80002a7c <uartstart+0x68>
    80002a3c:	100005b7          	lui	a1,0x10000
    80002a40:	00003817          	auipc	a6,0x3
    80002a44:	c9080813          	addi	a6,a6,-880 # 800056d0 <uart_tx_buf>
    80002a48:	01c0006f          	j	80002a64 <uartstart+0x50>
    80002a4c:	0006c703          	lbu	a4,0(a3)
    80002a50:	00f63023          	sd	a5,0(a2)
    80002a54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002a58:	00063783          	ld	a5,0(a2)
    80002a5c:	00053703          	ld	a4,0(a0)
    80002a60:	00f70e63          	beq	a4,a5,80002a7c <uartstart+0x68>
    80002a64:	01f7f713          	andi	a4,a5,31
    80002a68:	00e806b3          	add	a3,a6,a4
    80002a6c:	0055c703          	lbu	a4,5(a1)
    80002a70:	00178793          	addi	a5,a5,1
    80002a74:	02077713          	andi	a4,a4,32
    80002a78:	fc071ae3          	bnez	a4,80002a4c <uartstart+0x38>
    80002a7c:	00813403          	ld	s0,8(sp)
    80002a80:	01010113          	addi	sp,sp,16
    80002a84:	00008067          	ret

0000000080002a88 <uartgetc>:
    80002a88:	ff010113          	addi	sp,sp,-16
    80002a8c:	00813423          	sd	s0,8(sp)
    80002a90:	01010413          	addi	s0,sp,16
    80002a94:	10000737          	lui	a4,0x10000
    80002a98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002a9c:	0017f793          	andi	a5,a5,1
    80002aa0:	00078c63          	beqz	a5,80002ab8 <uartgetc+0x30>
    80002aa4:	00074503          	lbu	a0,0(a4)
    80002aa8:	0ff57513          	andi	a0,a0,255
    80002aac:	00813403          	ld	s0,8(sp)
    80002ab0:	01010113          	addi	sp,sp,16
    80002ab4:	00008067          	ret
    80002ab8:	fff00513          	li	a0,-1
    80002abc:	ff1ff06f          	j	80002aac <uartgetc+0x24>

0000000080002ac0 <uartintr>:
    80002ac0:	100007b7          	lui	a5,0x10000
    80002ac4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002ac8:	0017f793          	andi	a5,a5,1
    80002acc:	0a078463          	beqz	a5,80002b74 <uartintr+0xb4>
    80002ad0:	fe010113          	addi	sp,sp,-32
    80002ad4:	00813823          	sd	s0,16(sp)
    80002ad8:	00913423          	sd	s1,8(sp)
    80002adc:	00113c23          	sd	ra,24(sp)
    80002ae0:	02010413          	addi	s0,sp,32
    80002ae4:	100004b7          	lui	s1,0x10000
    80002ae8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002aec:	0ff57513          	andi	a0,a0,255
    80002af0:	fffff097          	auipc	ra,0xfffff
    80002af4:	534080e7          	jalr	1332(ra) # 80002024 <consoleintr>
    80002af8:	0054c783          	lbu	a5,5(s1)
    80002afc:	0017f793          	andi	a5,a5,1
    80002b00:	fe0794e3          	bnez	a5,80002ae8 <uartintr+0x28>
    80002b04:	00002617          	auipc	a2,0x2
    80002b08:	96c60613          	addi	a2,a2,-1684 # 80004470 <uart_tx_r>
    80002b0c:	00002517          	auipc	a0,0x2
    80002b10:	96c50513          	addi	a0,a0,-1684 # 80004478 <uart_tx_w>
    80002b14:	00063783          	ld	a5,0(a2)
    80002b18:	00053703          	ld	a4,0(a0)
    80002b1c:	04f70263          	beq	a4,a5,80002b60 <uartintr+0xa0>
    80002b20:	100005b7          	lui	a1,0x10000
    80002b24:	00003817          	auipc	a6,0x3
    80002b28:	bac80813          	addi	a6,a6,-1108 # 800056d0 <uart_tx_buf>
    80002b2c:	01c0006f          	j	80002b48 <uartintr+0x88>
    80002b30:	0006c703          	lbu	a4,0(a3)
    80002b34:	00f63023          	sd	a5,0(a2)
    80002b38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002b3c:	00063783          	ld	a5,0(a2)
    80002b40:	00053703          	ld	a4,0(a0)
    80002b44:	00f70e63          	beq	a4,a5,80002b60 <uartintr+0xa0>
    80002b48:	01f7f713          	andi	a4,a5,31
    80002b4c:	00e806b3          	add	a3,a6,a4
    80002b50:	0055c703          	lbu	a4,5(a1)
    80002b54:	00178793          	addi	a5,a5,1
    80002b58:	02077713          	andi	a4,a4,32
    80002b5c:	fc071ae3          	bnez	a4,80002b30 <uartintr+0x70>
    80002b60:	01813083          	ld	ra,24(sp)
    80002b64:	01013403          	ld	s0,16(sp)
    80002b68:	00813483          	ld	s1,8(sp)
    80002b6c:	02010113          	addi	sp,sp,32
    80002b70:	00008067          	ret
    80002b74:	00002617          	auipc	a2,0x2
    80002b78:	8fc60613          	addi	a2,a2,-1796 # 80004470 <uart_tx_r>
    80002b7c:	00002517          	auipc	a0,0x2
    80002b80:	8fc50513          	addi	a0,a0,-1796 # 80004478 <uart_tx_w>
    80002b84:	00063783          	ld	a5,0(a2)
    80002b88:	00053703          	ld	a4,0(a0)
    80002b8c:	04f70263          	beq	a4,a5,80002bd0 <uartintr+0x110>
    80002b90:	100005b7          	lui	a1,0x10000
    80002b94:	00003817          	auipc	a6,0x3
    80002b98:	b3c80813          	addi	a6,a6,-1220 # 800056d0 <uart_tx_buf>
    80002b9c:	01c0006f          	j	80002bb8 <uartintr+0xf8>
    80002ba0:	0006c703          	lbu	a4,0(a3)
    80002ba4:	00f63023          	sd	a5,0(a2)
    80002ba8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002bac:	00063783          	ld	a5,0(a2)
    80002bb0:	00053703          	ld	a4,0(a0)
    80002bb4:	02f70063          	beq	a4,a5,80002bd4 <uartintr+0x114>
    80002bb8:	01f7f713          	andi	a4,a5,31
    80002bbc:	00e806b3          	add	a3,a6,a4
    80002bc0:	0055c703          	lbu	a4,5(a1)
    80002bc4:	00178793          	addi	a5,a5,1
    80002bc8:	02077713          	andi	a4,a4,32
    80002bcc:	fc071ae3          	bnez	a4,80002ba0 <uartintr+0xe0>
    80002bd0:	00008067          	ret
    80002bd4:	00008067          	ret

0000000080002bd8 <kinit>:
    80002bd8:	fc010113          	addi	sp,sp,-64
    80002bdc:	02913423          	sd	s1,40(sp)
    80002be0:	fffff7b7          	lui	a5,0xfffff
    80002be4:	00004497          	auipc	s1,0x4
    80002be8:	b0b48493          	addi	s1,s1,-1269 # 800066ef <end+0xfff>
    80002bec:	02813823          	sd	s0,48(sp)
    80002bf0:	01313c23          	sd	s3,24(sp)
    80002bf4:	00f4f4b3          	and	s1,s1,a5
    80002bf8:	02113c23          	sd	ra,56(sp)
    80002bfc:	03213023          	sd	s2,32(sp)
    80002c00:	01413823          	sd	s4,16(sp)
    80002c04:	01513423          	sd	s5,8(sp)
    80002c08:	04010413          	addi	s0,sp,64
    80002c0c:	000017b7          	lui	a5,0x1
    80002c10:	01100993          	li	s3,17
    80002c14:	00f487b3          	add	a5,s1,a5
    80002c18:	01b99993          	slli	s3,s3,0x1b
    80002c1c:	06f9e063          	bltu	s3,a5,80002c7c <kinit+0xa4>
    80002c20:	00003a97          	auipc	s5,0x3
    80002c24:	ad0a8a93          	addi	s5,s5,-1328 # 800056f0 <end>
    80002c28:	0754ec63          	bltu	s1,s5,80002ca0 <kinit+0xc8>
    80002c2c:	0734fa63          	bgeu	s1,s3,80002ca0 <kinit+0xc8>
    80002c30:	00088a37          	lui	s4,0x88
    80002c34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002c38:	00002917          	auipc	s2,0x2
    80002c3c:	84890913          	addi	s2,s2,-1976 # 80004480 <kmem>
    80002c40:	00ca1a13          	slli	s4,s4,0xc
    80002c44:	0140006f          	j	80002c58 <kinit+0x80>
    80002c48:	000017b7          	lui	a5,0x1
    80002c4c:	00f484b3          	add	s1,s1,a5
    80002c50:	0554e863          	bltu	s1,s5,80002ca0 <kinit+0xc8>
    80002c54:	0534f663          	bgeu	s1,s3,80002ca0 <kinit+0xc8>
    80002c58:	00001637          	lui	a2,0x1
    80002c5c:	00100593          	li	a1,1
    80002c60:	00048513          	mv	a0,s1
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	5e4080e7          	jalr	1508(ra) # 80003248 <__memset>
    80002c6c:	00093783          	ld	a5,0(s2)
    80002c70:	00f4b023          	sd	a5,0(s1)
    80002c74:	00993023          	sd	s1,0(s2)
    80002c78:	fd4498e3          	bne	s1,s4,80002c48 <kinit+0x70>
    80002c7c:	03813083          	ld	ra,56(sp)
    80002c80:	03013403          	ld	s0,48(sp)
    80002c84:	02813483          	ld	s1,40(sp)
    80002c88:	02013903          	ld	s2,32(sp)
    80002c8c:	01813983          	ld	s3,24(sp)
    80002c90:	01013a03          	ld	s4,16(sp)
    80002c94:	00813a83          	ld	s5,8(sp)
    80002c98:	04010113          	addi	sp,sp,64
    80002c9c:	00008067          	ret
    80002ca0:	00001517          	auipc	a0,0x1
    80002ca4:	53850513          	addi	a0,a0,1336 # 800041d8 <digits+0x18>
    80002ca8:	fffff097          	auipc	ra,0xfffff
    80002cac:	4b4080e7          	jalr	1204(ra) # 8000215c <panic>

0000000080002cb0 <freerange>:
    80002cb0:	fc010113          	addi	sp,sp,-64
    80002cb4:	000017b7          	lui	a5,0x1
    80002cb8:	02913423          	sd	s1,40(sp)
    80002cbc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002cc0:	009504b3          	add	s1,a0,s1
    80002cc4:	fffff537          	lui	a0,0xfffff
    80002cc8:	02813823          	sd	s0,48(sp)
    80002ccc:	02113c23          	sd	ra,56(sp)
    80002cd0:	03213023          	sd	s2,32(sp)
    80002cd4:	01313c23          	sd	s3,24(sp)
    80002cd8:	01413823          	sd	s4,16(sp)
    80002cdc:	01513423          	sd	s5,8(sp)
    80002ce0:	01613023          	sd	s6,0(sp)
    80002ce4:	04010413          	addi	s0,sp,64
    80002ce8:	00a4f4b3          	and	s1,s1,a0
    80002cec:	00f487b3          	add	a5,s1,a5
    80002cf0:	06f5e463          	bltu	a1,a5,80002d58 <freerange+0xa8>
    80002cf4:	00003a97          	auipc	s5,0x3
    80002cf8:	9fca8a93          	addi	s5,s5,-1540 # 800056f0 <end>
    80002cfc:	0954e263          	bltu	s1,s5,80002d80 <freerange+0xd0>
    80002d00:	01100993          	li	s3,17
    80002d04:	01b99993          	slli	s3,s3,0x1b
    80002d08:	0734fc63          	bgeu	s1,s3,80002d80 <freerange+0xd0>
    80002d0c:	00058a13          	mv	s4,a1
    80002d10:	00001917          	auipc	s2,0x1
    80002d14:	77090913          	addi	s2,s2,1904 # 80004480 <kmem>
    80002d18:	00002b37          	lui	s6,0x2
    80002d1c:	0140006f          	j	80002d30 <freerange+0x80>
    80002d20:	000017b7          	lui	a5,0x1
    80002d24:	00f484b3          	add	s1,s1,a5
    80002d28:	0554ec63          	bltu	s1,s5,80002d80 <freerange+0xd0>
    80002d2c:	0534fa63          	bgeu	s1,s3,80002d80 <freerange+0xd0>
    80002d30:	00001637          	lui	a2,0x1
    80002d34:	00100593          	li	a1,1
    80002d38:	00048513          	mv	a0,s1
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	50c080e7          	jalr	1292(ra) # 80003248 <__memset>
    80002d44:	00093703          	ld	a4,0(s2)
    80002d48:	016487b3          	add	a5,s1,s6
    80002d4c:	00e4b023          	sd	a4,0(s1)
    80002d50:	00993023          	sd	s1,0(s2)
    80002d54:	fcfa76e3          	bgeu	s4,a5,80002d20 <freerange+0x70>
    80002d58:	03813083          	ld	ra,56(sp)
    80002d5c:	03013403          	ld	s0,48(sp)
    80002d60:	02813483          	ld	s1,40(sp)
    80002d64:	02013903          	ld	s2,32(sp)
    80002d68:	01813983          	ld	s3,24(sp)
    80002d6c:	01013a03          	ld	s4,16(sp)
    80002d70:	00813a83          	ld	s5,8(sp)
    80002d74:	00013b03          	ld	s6,0(sp)
    80002d78:	04010113          	addi	sp,sp,64
    80002d7c:	00008067          	ret
    80002d80:	00001517          	auipc	a0,0x1
    80002d84:	45850513          	addi	a0,a0,1112 # 800041d8 <digits+0x18>
    80002d88:	fffff097          	auipc	ra,0xfffff
    80002d8c:	3d4080e7          	jalr	980(ra) # 8000215c <panic>

0000000080002d90 <kfree>:
    80002d90:	fe010113          	addi	sp,sp,-32
    80002d94:	00813823          	sd	s0,16(sp)
    80002d98:	00113c23          	sd	ra,24(sp)
    80002d9c:	00913423          	sd	s1,8(sp)
    80002da0:	02010413          	addi	s0,sp,32
    80002da4:	03451793          	slli	a5,a0,0x34
    80002da8:	04079c63          	bnez	a5,80002e00 <kfree+0x70>
    80002dac:	00003797          	auipc	a5,0x3
    80002db0:	94478793          	addi	a5,a5,-1724 # 800056f0 <end>
    80002db4:	00050493          	mv	s1,a0
    80002db8:	04f56463          	bltu	a0,a5,80002e00 <kfree+0x70>
    80002dbc:	01100793          	li	a5,17
    80002dc0:	01b79793          	slli	a5,a5,0x1b
    80002dc4:	02f57e63          	bgeu	a0,a5,80002e00 <kfree+0x70>
    80002dc8:	00001637          	lui	a2,0x1
    80002dcc:	00100593          	li	a1,1
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	478080e7          	jalr	1144(ra) # 80003248 <__memset>
    80002dd8:	00001797          	auipc	a5,0x1
    80002ddc:	6a878793          	addi	a5,a5,1704 # 80004480 <kmem>
    80002de0:	0007b703          	ld	a4,0(a5)
    80002de4:	01813083          	ld	ra,24(sp)
    80002de8:	01013403          	ld	s0,16(sp)
    80002dec:	00e4b023          	sd	a4,0(s1)
    80002df0:	0097b023          	sd	s1,0(a5)
    80002df4:	00813483          	ld	s1,8(sp)
    80002df8:	02010113          	addi	sp,sp,32
    80002dfc:	00008067          	ret
    80002e00:	00001517          	auipc	a0,0x1
    80002e04:	3d850513          	addi	a0,a0,984 # 800041d8 <digits+0x18>
    80002e08:	fffff097          	auipc	ra,0xfffff
    80002e0c:	354080e7          	jalr	852(ra) # 8000215c <panic>

0000000080002e10 <kalloc>:
    80002e10:	fe010113          	addi	sp,sp,-32
    80002e14:	00813823          	sd	s0,16(sp)
    80002e18:	00913423          	sd	s1,8(sp)
    80002e1c:	00113c23          	sd	ra,24(sp)
    80002e20:	02010413          	addi	s0,sp,32
    80002e24:	00001797          	auipc	a5,0x1
    80002e28:	65c78793          	addi	a5,a5,1628 # 80004480 <kmem>
    80002e2c:	0007b483          	ld	s1,0(a5)
    80002e30:	02048063          	beqz	s1,80002e50 <kalloc+0x40>
    80002e34:	0004b703          	ld	a4,0(s1)
    80002e38:	00001637          	lui	a2,0x1
    80002e3c:	00500593          	li	a1,5
    80002e40:	00048513          	mv	a0,s1
    80002e44:	00e7b023          	sd	a4,0(a5)
    80002e48:	00000097          	auipc	ra,0x0
    80002e4c:	400080e7          	jalr	1024(ra) # 80003248 <__memset>
    80002e50:	01813083          	ld	ra,24(sp)
    80002e54:	01013403          	ld	s0,16(sp)
    80002e58:	00048513          	mv	a0,s1
    80002e5c:	00813483          	ld	s1,8(sp)
    80002e60:	02010113          	addi	sp,sp,32
    80002e64:	00008067          	ret

0000000080002e68 <initlock>:
    80002e68:	ff010113          	addi	sp,sp,-16
    80002e6c:	00813423          	sd	s0,8(sp)
    80002e70:	01010413          	addi	s0,sp,16
    80002e74:	00813403          	ld	s0,8(sp)
    80002e78:	00b53423          	sd	a1,8(a0)
    80002e7c:	00052023          	sw	zero,0(a0)
    80002e80:	00053823          	sd	zero,16(a0)
    80002e84:	01010113          	addi	sp,sp,16
    80002e88:	00008067          	ret

0000000080002e8c <acquire>:
    80002e8c:	fe010113          	addi	sp,sp,-32
    80002e90:	00813823          	sd	s0,16(sp)
    80002e94:	00913423          	sd	s1,8(sp)
    80002e98:	00113c23          	sd	ra,24(sp)
    80002e9c:	01213023          	sd	s2,0(sp)
    80002ea0:	02010413          	addi	s0,sp,32
    80002ea4:	00050493          	mv	s1,a0
    80002ea8:	10002973          	csrr	s2,sstatus
    80002eac:	100027f3          	csrr	a5,sstatus
    80002eb0:	ffd7f793          	andi	a5,a5,-3
    80002eb4:	10079073          	csrw	sstatus,a5
    80002eb8:	fffff097          	auipc	ra,0xfffff
    80002ebc:	8e4080e7          	jalr	-1820(ra) # 8000179c <mycpu>
    80002ec0:	07852783          	lw	a5,120(a0)
    80002ec4:	06078e63          	beqz	a5,80002f40 <acquire+0xb4>
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	8d4080e7          	jalr	-1836(ra) # 8000179c <mycpu>
    80002ed0:	07852783          	lw	a5,120(a0)
    80002ed4:	0004a703          	lw	a4,0(s1)
    80002ed8:	0017879b          	addiw	a5,a5,1
    80002edc:	06f52c23          	sw	a5,120(a0)
    80002ee0:	04071063          	bnez	a4,80002f20 <acquire+0x94>
    80002ee4:	00100713          	li	a4,1
    80002ee8:	00070793          	mv	a5,a4
    80002eec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002ef0:	0007879b          	sext.w	a5,a5
    80002ef4:	fe079ae3          	bnez	a5,80002ee8 <acquire+0x5c>
    80002ef8:	0ff0000f          	fence
    80002efc:	fffff097          	auipc	ra,0xfffff
    80002f00:	8a0080e7          	jalr	-1888(ra) # 8000179c <mycpu>
    80002f04:	01813083          	ld	ra,24(sp)
    80002f08:	01013403          	ld	s0,16(sp)
    80002f0c:	00a4b823          	sd	a0,16(s1)
    80002f10:	00013903          	ld	s2,0(sp)
    80002f14:	00813483          	ld	s1,8(sp)
    80002f18:	02010113          	addi	sp,sp,32
    80002f1c:	00008067          	ret
    80002f20:	0104b903          	ld	s2,16(s1)
    80002f24:	fffff097          	auipc	ra,0xfffff
    80002f28:	878080e7          	jalr	-1928(ra) # 8000179c <mycpu>
    80002f2c:	faa91ce3          	bne	s2,a0,80002ee4 <acquire+0x58>
    80002f30:	00001517          	auipc	a0,0x1
    80002f34:	2b050513          	addi	a0,a0,688 # 800041e0 <digits+0x20>
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	224080e7          	jalr	548(ra) # 8000215c <panic>
    80002f40:	00195913          	srli	s2,s2,0x1
    80002f44:	fffff097          	auipc	ra,0xfffff
    80002f48:	858080e7          	jalr	-1960(ra) # 8000179c <mycpu>
    80002f4c:	00197913          	andi	s2,s2,1
    80002f50:	07252e23          	sw	s2,124(a0)
    80002f54:	f75ff06f          	j	80002ec8 <acquire+0x3c>

0000000080002f58 <release>:
    80002f58:	fe010113          	addi	sp,sp,-32
    80002f5c:	00813823          	sd	s0,16(sp)
    80002f60:	00113c23          	sd	ra,24(sp)
    80002f64:	00913423          	sd	s1,8(sp)
    80002f68:	01213023          	sd	s2,0(sp)
    80002f6c:	02010413          	addi	s0,sp,32
    80002f70:	00052783          	lw	a5,0(a0)
    80002f74:	00079a63          	bnez	a5,80002f88 <release+0x30>
    80002f78:	00001517          	auipc	a0,0x1
    80002f7c:	27050513          	addi	a0,a0,624 # 800041e8 <digits+0x28>
    80002f80:	fffff097          	auipc	ra,0xfffff
    80002f84:	1dc080e7          	jalr	476(ra) # 8000215c <panic>
    80002f88:	01053903          	ld	s2,16(a0)
    80002f8c:	00050493          	mv	s1,a0
    80002f90:	fffff097          	auipc	ra,0xfffff
    80002f94:	80c080e7          	jalr	-2036(ra) # 8000179c <mycpu>
    80002f98:	fea910e3          	bne	s2,a0,80002f78 <release+0x20>
    80002f9c:	0004b823          	sd	zero,16(s1)
    80002fa0:	0ff0000f          	fence
    80002fa4:	0f50000f          	fence	iorw,ow
    80002fa8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80002fac:	ffffe097          	auipc	ra,0xffffe
    80002fb0:	7f0080e7          	jalr	2032(ra) # 8000179c <mycpu>
    80002fb4:	100027f3          	csrr	a5,sstatus
    80002fb8:	0027f793          	andi	a5,a5,2
    80002fbc:	04079a63          	bnez	a5,80003010 <release+0xb8>
    80002fc0:	07852783          	lw	a5,120(a0)
    80002fc4:	02f05e63          	blez	a5,80003000 <release+0xa8>
    80002fc8:	fff7871b          	addiw	a4,a5,-1
    80002fcc:	06e52c23          	sw	a4,120(a0)
    80002fd0:	00071c63          	bnez	a4,80002fe8 <release+0x90>
    80002fd4:	07c52783          	lw	a5,124(a0)
    80002fd8:	00078863          	beqz	a5,80002fe8 <release+0x90>
    80002fdc:	100027f3          	csrr	a5,sstatus
    80002fe0:	0027e793          	ori	a5,a5,2
    80002fe4:	10079073          	csrw	sstatus,a5
    80002fe8:	01813083          	ld	ra,24(sp)
    80002fec:	01013403          	ld	s0,16(sp)
    80002ff0:	00813483          	ld	s1,8(sp)
    80002ff4:	00013903          	ld	s2,0(sp)
    80002ff8:	02010113          	addi	sp,sp,32
    80002ffc:	00008067          	ret
    80003000:	00001517          	auipc	a0,0x1
    80003004:	20850513          	addi	a0,a0,520 # 80004208 <digits+0x48>
    80003008:	fffff097          	auipc	ra,0xfffff
    8000300c:	154080e7          	jalr	340(ra) # 8000215c <panic>
    80003010:	00001517          	auipc	a0,0x1
    80003014:	1e050513          	addi	a0,a0,480 # 800041f0 <digits+0x30>
    80003018:	fffff097          	auipc	ra,0xfffff
    8000301c:	144080e7          	jalr	324(ra) # 8000215c <panic>

0000000080003020 <holding>:
    80003020:	00052783          	lw	a5,0(a0)
    80003024:	00079663          	bnez	a5,80003030 <holding+0x10>
    80003028:	00000513          	li	a0,0
    8000302c:	00008067          	ret
    80003030:	fe010113          	addi	sp,sp,-32
    80003034:	00813823          	sd	s0,16(sp)
    80003038:	00913423          	sd	s1,8(sp)
    8000303c:	00113c23          	sd	ra,24(sp)
    80003040:	02010413          	addi	s0,sp,32
    80003044:	01053483          	ld	s1,16(a0)
    80003048:	ffffe097          	auipc	ra,0xffffe
    8000304c:	754080e7          	jalr	1876(ra) # 8000179c <mycpu>
    80003050:	01813083          	ld	ra,24(sp)
    80003054:	01013403          	ld	s0,16(sp)
    80003058:	40a48533          	sub	a0,s1,a0
    8000305c:	00153513          	seqz	a0,a0
    80003060:	00813483          	ld	s1,8(sp)
    80003064:	02010113          	addi	sp,sp,32
    80003068:	00008067          	ret

000000008000306c <push_off>:
    8000306c:	fe010113          	addi	sp,sp,-32
    80003070:	00813823          	sd	s0,16(sp)
    80003074:	00113c23          	sd	ra,24(sp)
    80003078:	00913423          	sd	s1,8(sp)
    8000307c:	02010413          	addi	s0,sp,32
    80003080:	100024f3          	csrr	s1,sstatus
    80003084:	100027f3          	csrr	a5,sstatus
    80003088:	ffd7f793          	andi	a5,a5,-3
    8000308c:	10079073          	csrw	sstatus,a5
    80003090:	ffffe097          	auipc	ra,0xffffe
    80003094:	70c080e7          	jalr	1804(ra) # 8000179c <mycpu>
    80003098:	07852783          	lw	a5,120(a0)
    8000309c:	02078663          	beqz	a5,800030c8 <push_off+0x5c>
    800030a0:	ffffe097          	auipc	ra,0xffffe
    800030a4:	6fc080e7          	jalr	1788(ra) # 8000179c <mycpu>
    800030a8:	07852783          	lw	a5,120(a0)
    800030ac:	01813083          	ld	ra,24(sp)
    800030b0:	01013403          	ld	s0,16(sp)
    800030b4:	0017879b          	addiw	a5,a5,1
    800030b8:	06f52c23          	sw	a5,120(a0)
    800030bc:	00813483          	ld	s1,8(sp)
    800030c0:	02010113          	addi	sp,sp,32
    800030c4:	00008067          	ret
    800030c8:	0014d493          	srli	s1,s1,0x1
    800030cc:	ffffe097          	auipc	ra,0xffffe
    800030d0:	6d0080e7          	jalr	1744(ra) # 8000179c <mycpu>
    800030d4:	0014f493          	andi	s1,s1,1
    800030d8:	06952e23          	sw	s1,124(a0)
    800030dc:	fc5ff06f          	j	800030a0 <push_off+0x34>

00000000800030e0 <pop_off>:
    800030e0:	ff010113          	addi	sp,sp,-16
    800030e4:	00813023          	sd	s0,0(sp)
    800030e8:	00113423          	sd	ra,8(sp)
    800030ec:	01010413          	addi	s0,sp,16
    800030f0:	ffffe097          	auipc	ra,0xffffe
    800030f4:	6ac080e7          	jalr	1708(ra) # 8000179c <mycpu>
    800030f8:	100027f3          	csrr	a5,sstatus
    800030fc:	0027f793          	andi	a5,a5,2
    80003100:	04079663          	bnez	a5,8000314c <pop_off+0x6c>
    80003104:	07852783          	lw	a5,120(a0)
    80003108:	02f05a63          	blez	a5,8000313c <pop_off+0x5c>
    8000310c:	fff7871b          	addiw	a4,a5,-1
    80003110:	06e52c23          	sw	a4,120(a0)
    80003114:	00071c63          	bnez	a4,8000312c <pop_off+0x4c>
    80003118:	07c52783          	lw	a5,124(a0)
    8000311c:	00078863          	beqz	a5,8000312c <pop_off+0x4c>
    80003120:	100027f3          	csrr	a5,sstatus
    80003124:	0027e793          	ori	a5,a5,2
    80003128:	10079073          	csrw	sstatus,a5
    8000312c:	00813083          	ld	ra,8(sp)
    80003130:	00013403          	ld	s0,0(sp)
    80003134:	01010113          	addi	sp,sp,16
    80003138:	00008067          	ret
    8000313c:	00001517          	auipc	a0,0x1
    80003140:	0cc50513          	addi	a0,a0,204 # 80004208 <digits+0x48>
    80003144:	fffff097          	auipc	ra,0xfffff
    80003148:	018080e7          	jalr	24(ra) # 8000215c <panic>
    8000314c:	00001517          	auipc	a0,0x1
    80003150:	0a450513          	addi	a0,a0,164 # 800041f0 <digits+0x30>
    80003154:	fffff097          	auipc	ra,0xfffff
    80003158:	008080e7          	jalr	8(ra) # 8000215c <panic>

000000008000315c <push_on>:
    8000315c:	fe010113          	addi	sp,sp,-32
    80003160:	00813823          	sd	s0,16(sp)
    80003164:	00113c23          	sd	ra,24(sp)
    80003168:	00913423          	sd	s1,8(sp)
    8000316c:	02010413          	addi	s0,sp,32
    80003170:	100024f3          	csrr	s1,sstatus
    80003174:	100027f3          	csrr	a5,sstatus
    80003178:	0027e793          	ori	a5,a5,2
    8000317c:	10079073          	csrw	sstatus,a5
    80003180:	ffffe097          	auipc	ra,0xffffe
    80003184:	61c080e7          	jalr	1564(ra) # 8000179c <mycpu>
    80003188:	07852783          	lw	a5,120(a0)
    8000318c:	02078663          	beqz	a5,800031b8 <push_on+0x5c>
    80003190:	ffffe097          	auipc	ra,0xffffe
    80003194:	60c080e7          	jalr	1548(ra) # 8000179c <mycpu>
    80003198:	07852783          	lw	a5,120(a0)
    8000319c:	01813083          	ld	ra,24(sp)
    800031a0:	01013403          	ld	s0,16(sp)
    800031a4:	0017879b          	addiw	a5,a5,1
    800031a8:	06f52c23          	sw	a5,120(a0)
    800031ac:	00813483          	ld	s1,8(sp)
    800031b0:	02010113          	addi	sp,sp,32
    800031b4:	00008067          	ret
    800031b8:	0014d493          	srli	s1,s1,0x1
    800031bc:	ffffe097          	auipc	ra,0xffffe
    800031c0:	5e0080e7          	jalr	1504(ra) # 8000179c <mycpu>
    800031c4:	0014f493          	andi	s1,s1,1
    800031c8:	06952e23          	sw	s1,124(a0)
    800031cc:	fc5ff06f          	j	80003190 <push_on+0x34>

00000000800031d0 <pop_on>:
    800031d0:	ff010113          	addi	sp,sp,-16
    800031d4:	00813023          	sd	s0,0(sp)
    800031d8:	00113423          	sd	ra,8(sp)
    800031dc:	01010413          	addi	s0,sp,16
    800031e0:	ffffe097          	auipc	ra,0xffffe
    800031e4:	5bc080e7          	jalr	1468(ra) # 8000179c <mycpu>
    800031e8:	100027f3          	csrr	a5,sstatus
    800031ec:	0027f793          	andi	a5,a5,2
    800031f0:	04078463          	beqz	a5,80003238 <pop_on+0x68>
    800031f4:	07852783          	lw	a5,120(a0)
    800031f8:	02f05863          	blez	a5,80003228 <pop_on+0x58>
    800031fc:	fff7879b          	addiw	a5,a5,-1
    80003200:	06f52c23          	sw	a5,120(a0)
    80003204:	07853783          	ld	a5,120(a0)
    80003208:	00079863          	bnez	a5,80003218 <pop_on+0x48>
    8000320c:	100027f3          	csrr	a5,sstatus
    80003210:	ffd7f793          	andi	a5,a5,-3
    80003214:	10079073          	csrw	sstatus,a5
    80003218:	00813083          	ld	ra,8(sp)
    8000321c:	00013403          	ld	s0,0(sp)
    80003220:	01010113          	addi	sp,sp,16
    80003224:	00008067          	ret
    80003228:	00001517          	auipc	a0,0x1
    8000322c:	00850513          	addi	a0,a0,8 # 80004230 <digits+0x70>
    80003230:	fffff097          	auipc	ra,0xfffff
    80003234:	f2c080e7          	jalr	-212(ra) # 8000215c <panic>
    80003238:	00001517          	auipc	a0,0x1
    8000323c:	fd850513          	addi	a0,a0,-40 # 80004210 <digits+0x50>
    80003240:	fffff097          	auipc	ra,0xfffff
    80003244:	f1c080e7          	jalr	-228(ra) # 8000215c <panic>

0000000080003248 <__memset>:
    80003248:	ff010113          	addi	sp,sp,-16
    8000324c:	00813423          	sd	s0,8(sp)
    80003250:	01010413          	addi	s0,sp,16
    80003254:	1a060e63          	beqz	a2,80003410 <__memset+0x1c8>
    80003258:	40a007b3          	neg	a5,a0
    8000325c:	0077f793          	andi	a5,a5,7
    80003260:	00778693          	addi	a3,a5,7
    80003264:	00b00813          	li	a6,11
    80003268:	0ff5f593          	andi	a1,a1,255
    8000326c:	fff6071b          	addiw	a4,a2,-1
    80003270:	1b06e663          	bltu	a3,a6,8000341c <__memset+0x1d4>
    80003274:	1cd76463          	bltu	a4,a3,8000343c <__memset+0x1f4>
    80003278:	1a078e63          	beqz	a5,80003434 <__memset+0x1ec>
    8000327c:	00b50023          	sb	a1,0(a0)
    80003280:	00100713          	li	a4,1
    80003284:	1ae78463          	beq	a5,a4,8000342c <__memset+0x1e4>
    80003288:	00b500a3          	sb	a1,1(a0)
    8000328c:	00200713          	li	a4,2
    80003290:	1ae78a63          	beq	a5,a4,80003444 <__memset+0x1fc>
    80003294:	00b50123          	sb	a1,2(a0)
    80003298:	00300713          	li	a4,3
    8000329c:	18e78463          	beq	a5,a4,80003424 <__memset+0x1dc>
    800032a0:	00b501a3          	sb	a1,3(a0)
    800032a4:	00400713          	li	a4,4
    800032a8:	1ae78263          	beq	a5,a4,8000344c <__memset+0x204>
    800032ac:	00b50223          	sb	a1,4(a0)
    800032b0:	00500713          	li	a4,5
    800032b4:	1ae78063          	beq	a5,a4,80003454 <__memset+0x20c>
    800032b8:	00b502a3          	sb	a1,5(a0)
    800032bc:	00700713          	li	a4,7
    800032c0:	18e79e63          	bne	a5,a4,8000345c <__memset+0x214>
    800032c4:	00b50323          	sb	a1,6(a0)
    800032c8:	00700e93          	li	t4,7
    800032cc:	00859713          	slli	a4,a1,0x8
    800032d0:	00e5e733          	or	a4,a1,a4
    800032d4:	01059e13          	slli	t3,a1,0x10
    800032d8:	01c76e33          	or	t3,a4,t3
    800032dc:	01859313          	slli	t1,a1,0x18
    800032e0:	006e6333          	or	t1,t3,t1
    800032e4:	02059893          	slli	a7,a1,0x20
    800032e8:	40f60e3b          	subw	t3,a2,a5
    800032ec:	011368b3          	or	a7,t1,a7
    800032f0:	02859813          	slli	a6,a1,0x28
    800032f4:	0108e833          	or	a6,a7,a6
    800032f8:	03059693          	slli	a3,a1,0x30
    800032fc:	003e589b          	srliw	a7,t3,0x3
    80003300:	00d866b3          	or	a3,a6,a3
    80003304:	03859713          	slli	a4,a1,0x38
    80003308:	00389813          	slli	a6,a7,0x3
    8000330c:	00f507b3          	add	a5,a0,a5
    80003310:	00e6e733          	or	a4,a3,a4
    80003314:	000e089b          	sext.w	a7,t3
    80003318:	00f806b3          	add	a3,a6,a5
    8000331c:	00e7b023          	sd	a4,0(a5)
    80003320:	00878793          	addi	a5,a5,8
    80003324:	fed79ce3          	bne	a5,a3,8000331c <__memset+0xd4>
    80003328:	ff8e7793          	andi	a5,t3,-8
    8000332c:	0007871b          	sext.w	a4,a5
    80003330:	01d787bb          	addw	a5,a5,t4
    80003334:	0ce88e63          	beq	a7,a4,80003410 <__memset+0x1c8>
    80003338:	00f50733          	add	a4,a0,a5
    8000333c:	00b70023          	sb	a1,0(a4)
    80003340:	0017871b          	addiw	a4,a5,1
    80003344:	0cc77663          	bgeu	a4,a2,80003410 <__memset+0x1c8>
    80003348:	00e50733          	add	a4,a0,a4
    8000334c:	00b70023          	sb	a1,0(a4)
    80003350:	0027871b          	addiw	a4,a5,2
    80003354:	0ac77e63          	bgeu	a4,a2,80003410 <__memset+0x1c8>
    80003358:	00e50733          	add	a4,a0,a4
    8000335c:	00b70023          	sb	a1,0(a4)
    80003360:	0037871b          	addiw	a4,a5,3
    80003364:	0ac77663          	bgeu	a4,a2,80003410 <__memset+0x1c8>
    80003368:	00e50733          	add	a4,a0,a4
    8000336c:	00b70023          	sb	a1,0(a4)
    80003370:	0047871b          	addiw	a4,a5,4
    80003374:	08c77e63          	bgeu	a4,a2,80003410 <__memset+0x1c8>
    80003378:	00e50733          	add	a4,a0,a4
    8000337c:	00b70023          	sb	a1,0(a4)
    80003380:	0057871b          	addiw	a4,a5,5
    80003384:	08c77663          	bgeu	a4,a2,80003410 <__memset+0x1c8>
    80003388:	00e50733          	add	a4,a0,a4
    8000338c:	00b70023          	sb	a1,0(a4)
    80003390:	0067871b          	addiw	a4,a5,6
    80003394:	06c77e63          	bgeu	a4,a2,80003410 <__memset+0x1c8>
    80003398:	00e50733          	add	a4,a0,a4
    8000339c:	00b70023          	sb	a1,0(a4)
    800033a0:	0077871b          	addiw	a4,a5,7
    800033a4:	06c77663          	bgeu	a4,a2,80003410 <__memset+0x1c8>
    800033a8:	00e50733          	add	a4,a0,a4
    800033ac:	00b70023          	sb	a1,0(a4)
    800033b0:	0087871b          	addiw	a4,a5,8
    800033b4:	04c77e63          	bgeu	a4,a2,80003410 <__memset+0x1c8>
    800033b8:	00e50733          	add	a4,a0,a4
    800033bc:	00b70023          	sb	a1,0(a4)
    800033c0:	0097871b          	addiw	a4,a5,9
    800033c4:	04c77663          	bgeu	a4,a2,80003410 <__memset+0x1c8>
    800033c8:	00e50733          	add	a4,a0,a4
    800033cc:	00b70023          	sb	a1,0(a4)
    800033d0:	00a7871b          	addiw	a4,a5,10
    800033d4:	02c77e63          	bgeu	a4,a2,80003410 <__memset+0x1c8>
    800033d8:	00e50733          	add	a4,a0,a4
    800033dc:	00b70023          	sb	a1,0(a4)
    800033e0:	00b7871b          	addiw	a4,a5,11
    800033e4:	02c77663          	bgeu	a4,a2,80003410 <__memset+0x1c8>
    800033e8:	00e50733          	add	a4,a0,a4
    800033ec:	00b70023          	sb	a1,0(a4)
    800033f0:	00c7871b          	addiw	a4,a5,12
    800033f4:	00c77e63          	bgeu	a4,a2,80003410 <__memset+0x1c8>
    800033f8:	00e50733          	add	a4,a0,a4
    800033fc:	00b70023          	sb	a1,0(a4)
    80003400:	00d7879b          	addiw	a5,a5,13
    80003404:	00c7f663          	bgeu	a5,a2,80003410 <__memset+0x1c8>
    80003408:	00f507b3          	add	a5,a0,a5
    8000340c:	00b78023          	sb	a1,0(a5)
    80003410:	00813403          	ld	s0,8(sp)
    80003414:	01010113          	addi	sp,sp,16
    80003418:	00008067          	ret
    8000341c:	00b00693          	li	a3,11
    80003420:	e55ff06f          	j	80003274 <__memset+0x2c>
    80003424:	00300e93          	li	t4,3
    80003428:	ea5ff06f          	j	800032cc <__memset+0x84>
    8000342c:	00100e93          	li	t4,1
    80003430:	e9dff06f          	j	800032cc <__memset+0x84>
    80003434:	00000e93          	li	t4,0
    80003438:	e95ff06f          	j	800032cc <__memset+0x84>
    8000343c:	00000793          	li	a5,0
    80003440:	ef9ff06f          	j	80003338 <__memset+0xf0>
    80003444:	00200e93          	li	t4,2
    80003448:	e85ff06f          	j	800032cc <__memset+0x84>
    8000344c:	00400e93          	li	t4,4
    80003450:	e7dff06f          	j	800032cc <__memset+0x84>
    80003454:	00500e93          	li	t4,5
    80003458:	e75ff06f          	j	800032cc <__memset+0x84>
    8000345c:	00600e93          	li	t4,6
    80003460:	e6dff06f          	j	800032cc <__memset+0x84>

0000000080003464 <__memmove>:
    80003464:	ff010113          	addi	sp,sp,-16
    80003468:	00813423          	sd	s0,8(sp)
    8000346c:	01010413          	addi	s0,sp,16
    80003470:	0e060863          	beqz	a2,80003560 <__memmove+0xfc>
    80003474:	fff6069b          	addiw	a3,a2,-1
    80003478:	0006881b          	sext.w	a6,a3
    8000347c:	0ea5e863          	bltu	a1,a0,8000356c <__memmove+0x108>
    80003480:	00758713          	addi	a4,a1,7
    80003484:	00a5e7b3          	or	a5,a1,a0
    80003488:	40a70733          	sub	a4,a4,a0
    8000348c:	0077f793          	andi	a5,a5,7
    80003490:	00f73713          	sltiu	a4,a4,15
    80003494:	00174713          	xori	a4,a4,1
    80003498:	0017b793          	seqz	a5,a5
    8000349c:	00e7f7b3          	and	a5,a5,a4
    800034a0:	10078863          	beqz	a5,800035b0 <__memmove+0x14c>
    800034a4:	00900793          	li	a5,9
    800034a8:	1107f463          	bgeu	a5,a6,800035b0 <__memmove+0x14c>
    800034ac:	0036581b          	srliw	a6,a2,0x3
    800034b0:	fff8081b          	addiw	a6,a6,-1
    800034b4:	02081813          	slli	a6,a6,0x20
    800034b8:	01d85893          	srli	a7,a6,0x1d
    800034bc:	00858813          	addi	a6,a1,8
    800034c0:	00058793          	mv	a5,a1
    800034c4:	00050713          	mv	a4,a0
    800034c8:	01088833          	add	a6,a7,a6
    800034cc:	0007b883          	ld	a7,0(a5)
    800034d0:	00878793          	addi	a5,a5,8
    800034d4:	00870713          	addi	a4,a4,8
    800034d8:	ff173c23          	sd	a7,-8(a4)
    800034dc:	ff0798e3          	bne	a5,a6,800034cc <__memmove+0x68>
    800034e0:	ff867713          	andi	a4,a2,-8
    800034e4:	02071793          	slli	a5,a4,0x20
    800034e8:	0207d793          	srli	a5,a5,0x20
    800034ec:	00f585b3          	add	a1,a1,a5
    800034f0:	40e686bb          	subw	a3,a3,a4
    800034f4:	00f507b3          	add	a5,a0,a5
    800034f8:	06e60463          	beq	a2,a4,80003560 <__memmove+0xfc>
    800034fc:	0005c703          	lbu	a4,0(a1)
    80003500:	00e78023          	sb	a4,0(a5)
    80003504:	04068e63          	beqz	a3,80003560 <__memmove+0xfc>
    80003508:	0015c603          	lbu	a2,1(a1)
    8000350c:	00100713          	li	a4,1
    80003510:	00c780a3          	sb	a2,1(a5)
    80003514:	04e68663          	beq	a3,a4,80003560 <__memmove+0xfc>
    80003518:	0025c603          	lbu	a2,2(a1)
    8000351c:	00200713          	li	a4,2
    80003520:	00c78123          	sb	a2,2(a5)
    80003524:	02e68e63          	beq	a3,a4,80003560 <__memmove+0xfc>
    80003528:	0035c603          	lbu	a2,3(a1)
    8000352c:	00300713          	li	a4,3
    80003530:	00c781a3          	sb	a2,3(a5)
    80003534:	02e68663          	beq	a3,a4,80003560 <__memmove+0xfc>
    80003538:	0045c603          	lbu	a2,4(a1)
    8000353c:	00400713          	li	a4,4
    80003540:	00c78223          	sb	a2,4(a5)
    80003544:	00e68e63          	beq	a3,a4,80003560 <__memmove+0xfc>
    80003548:	0055c603          	lbu	a2,5(a1)
    8000354c:	00500713          	li	a4,5
    80003550:	00c782a3          	sb	a2,5(a5)
    80003554:	00e68663          	beq	a3,a4,80003560 <__memmove+0xfc>
    80003558:	0065c703          	lbu	a4,6(a1)
    8000355c:	00e78323          	sb	a4,6(a5)
    80003560:	00813403          	ld	s0,8(sp)
    80003564:	01010113          	addi	sp,sp,16
    80003568:	00008067          	ret
    8000356c:	02061713          	slli	a4,a2,0x20
    80003570:	02075713          	srli	a4,a4,0x20
    80003574:	00e587b3          	add	a5,a1,a4
    80003578:	f0f574e3          	bgeu	a0,a5,80003480 <__memmove+0x1c>
    8000357c:	02069613          	slli	a2,a3,0x20
    80003580:	02065613          	srli	a2,a2,0x20
    80003584:	fff64613          	not	a2,a2
    80003588:	00e50733          	add	a4,a0,a4
    8000358c:	00c78633          	add	a2,a5,a2
    80003590:	fff7c683          	lbu	a3,-1(a5)
    80003594:	fff78793          	addi	a5,a5,-1
    80003598:	fff70713          	addi	a4,a4,-1
    8000359c:	00d70023          	sb	a3,0(a4)
    800035a0:	fec798e3          	bne	a5,a2,80003590 <__memmove+0x12c>
    800035a4:	00813403          	ld	s0,8(sp)
    800035a8:	01010113          	addi	sp,sp,16
    800035ac:	00008067          	ret
    800035b0:	02069713          	slli	a4,a3,0x20
    800035b4:	02075713          	srli	a4,a4,0x20
    800035b8:	00170713          	addi	a4,a4,1
    800035bc:	00e50733          	add	a4,a0,a4
    800035c0:	00050793          	mv	a5,a0
    800035c4:	0005c683          	lbu	a3,0(a1)
    800035c8:	00178793          	addi	a5,a5,1
    800035cc:	00158593          	addi	a1,a1,1
    800035d0:	fed78fa3          	sb	a3,-1(a5)
    800035d4:	fee798e3          	bne	a5,a4,800035c4 <__memmove+0x160>
    800035d8:	f89ff06f          	j	80003560 <__memmove+0xfc>

00000000800035dc <__putc>:
    800035dc:	fe010113          	addi	sp,sp,-32
    800035e0:	00813823          	sd	s0,16(sp)
    800035e4:	00113c23          	sd	ra,24(sp)
    800035e8:	02010413          	addi	s0,sp,32
    800035ec:	00050793          	mv	a5,a0
    800035f0:	fef40593          	addi	a1,s0,-17
    800035f4:	00100613          	li	a2,1
    800035f8:	00000513          	li	a0,0
    800035fc:	fef407a3          	sb	a5,-17(s0)
    80003600:	fffff097          	auipc	ra,0xfffff
    80003604:	b3c080e7          	jalr	-1220(ra) # 8000213c <console_write>
    80003608:	01813083          	ld	ra,24(sp)
    8000360c:	01013403          	ld	s0,16(sp)
    80003610:	02010113          	addi	sp,sp,32
    80003614:	00008067          	ret

0000000080003618 <__getc>:
    80003618:	fe010113          	addi	sp,sp,-32
    8000361c:	00813823          	sd	s0,16(sp)
    80003620:	00113c23          	sd	ra,24(sp)
    80003624:	02010413          	addi	s0,sp,32
    80003628:	fe840593          	addi	a1,s0,-24
    8000362c:	00100613          	li	a2,1
    80003630:	00000513          	li	a0,0
    80003634:	fffff097          	auipc	ra,0xfffff
    80003638:	ae8080e7          	jalr	-1304(ra) # 8000211c <console_read>
    8000363c:	fe844503          	lbu	a0,-24(s0)
    80003640:	01813083          	ld	ra,24(sp)
    80003644:	01013403          	ld	s0,16(sp)
    80003648:	02010113          	addi	sp,sp,32
    8000364c:	00008067          	ret

0000000080003650 <console_handler>:
    80003650:	fe010113          	addi	sp,sp,-32
    80003654:	00813823          	sd	s0,16(sp)
    80003658:	00113c23          	sd	ra,24(sp)
    8000365c:	00913423          	sd	s1,8(sp)
    80003660:	02010413          	addi	s0,sp,32
    80003664:	14202773          	csrr	a4,scause
    80003668:	100027f3          	csrr	a5,sstatus
    8000366c:	0027f793          	andi	a5,a5,2
    80003670:	06079e63          	bnez	a5,800036ec <console_handler+0x9c>
    80003674:	00074c63          	bltz	a4,8000368c <console_handler+0x3c>
    80003678:	01813083          	ld	ra,24(sp)
    8000367c:	01013403          	ld	s0,16(sp)
    80003680:	00813483          	ld	s1,8(sp)
    80003684:	02010113          	addi	sp,sp,32
    80003688:	00008067          	ret
    8000368c:	0ff77713          	andi	a4,a4,255
    80003690:	00900793          	li	a5,9
    80003694:	fef712e3          	bne	a4,a5,80003678 <console_handler+0x28>
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	6dc080e7          	jalr	1756(ra) # 80001d74 <plic_claim>
    800036a0:	00a00793          	li	a5,10
    800036a4:	00050493          	mv	s1,a0
    800036a8:	02f50c63          	beq	a0,a5,800036e0 <console_handler+0x90>
    800036ac:	fc0506e3          	beqz	a0,80003678 <console_handler+0x28>
    800036b0:	00050593          	mv	a1,a0
    800036b4:	00001517          	auipc	a0,0x1
    800036b8:	a8450513          	addi	a0,a0,-1404 # 80004138 <CONSOLE_STATUS+0x128>
    800036bc:	fffff097          	auipc	ra,0xfffff
    800036c0:	afc080e7          	jalr	-1284(ra) # 800021b8 <__printf>
    800036c4:	01013403          	ld	s0,16(sp)
    800036c8:	01813083          	ld	ra,24(sp)
    800036cc:	00048513          	mv	a0,s1
    800036d0:	00813483          	ld	s1,8(sp)
    800036d4:	02010113          	addi	sp,sp,32
    800036d8:	ffffe317          	auipc	t1,0xffffe
    800036dc:	6d430067          	jr	1748(t1) # 80001dac <plic_complete>
    800036e0:	fffff097          	auipc	ra,0xfffff
    800036e4:	3e0080e7          	jalr	992(ra) # 80002ac0 <uartintr>
    800036e8:	fddff06f          	j	800036c4 <console_handler+0x74>
    800036ec:	00001517          	auipc	a0,0x1
    800036f0:	b4c50513          	addi	a0,a0,-1204 # 80004238 <digits+0x78>
    800036f4:	fffff097          	auipc	ra,0xfffff
    800036f8:	a68080e7          	jalr	-1432(ra) # 8000215c <panic>
	...
