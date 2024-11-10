global long_mode_start
extern kernel_main

section .text
BITS 64

long_mode_start:
  ; load null into all the data segment registers
  mov ax, 0
  mov ss, ax
  mov ds, ax
  mov es, ax
  mov fs, ax
  mov gs, ax

  ;call kernel_main
  mov dword [0xb8000], 0x024b024f
  hlt
