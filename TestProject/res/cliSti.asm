; -------------------------------------------------------------------------
;  HARDWARE INTERRUPT 02.
; -------------------------------------------------------------------------
;  Use  CLI  and  STI  to clear and set the interrupt flag.
; -------------------------------------------------------------------------

	JMP	Start
	DB	40	; Interrupt vector at address 02.

; -------------------------------------------------------------------------
Start:
	NOP
	NOP
	NOP
	CLI
	NOP
	NOP
	NOP
	STI
	JMP	Start

; -------------------------------------------------------------------------
	ORG	40
	NOP
	NOP
	NOP
	NOP
	NOP
	IRET

; -------------------------------------------------------------------------
	END

; -------------------------------------------------------------------------