global _st

section .text
_st:
	db 0xb8, 1, 0, 0, 0  ; B8(mov) + 0(RAX)
	db 0xbf, 1, 0, 0, 0  ; B8(mov) + 7(RDI)
	db 0x48, 0xbe, 0, 0, 0, 0, 0, 0, 0, 0 ; 0b0100W000 B8(mov) + 6(RSI)
	db 0xba, 13, 0, 0, 0 ; B8(mov) + 2(RDX)
	db 0x0f, 0x05        ; syscall opcode

	db 0xb8, 60, 0, 0, 0; B8(mov) + 0(RAX)
	db 0xbf, 0, 0, 0, 0 ; B8(mov) + 7(RDI)
	db 0x0f, 0x05       ; syscall opcode

section .rodata
hw: db "Hello, World!"
