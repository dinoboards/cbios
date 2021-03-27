                include "systemvars.asm"
                include "hardware.asm"

                org     $8000
;
logo_ident:     db      "C-BIOS Logo ROM",$FF

logo_show:
	xor	a
	ld	(0F3E9h),a	; Hide cursor
	ld	(0F3EAh),a	; Back color = 0
	ld	(0F3EBh),a	; Border color = 0

	ld	a,2
	ld	(0FCAFH),a
	call	005Fh		; SCREEN 2 mode


	ld	hl,image+7
	ld	de,0
	ld	bc,03800h
	call	5Ch

	ld	b, 100
wait_a_sec:
	halt
	djnz	wait_a_sec
	ret



image:
	incbin	"rc2014_logo.sc2"

	ret
