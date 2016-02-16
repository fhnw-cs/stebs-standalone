; -------------------------------------------------------------------------
;  SWAP NIBBLES IN A BYTE.
; -------------------------------------------------------------------------
;  Entry  BL = byte_with_nibbles_to_be_swapped
;  Exit   BL = byte_with_swapped_nibbles
; -------------------------------------------------------------------------

	ORG	00

	MOV	BL,59
	CALL	20
	HALT

; -------------------------------------------------------------------------
	ORG	20

	PUSH    AL
	PUSH	DL
	PUSHF

	MOV	DL,10
	PUSH	BL
	POP	AL
	MUL	AL,DL	; time consuming
	DIV	BL,DL	; even more
	ADD	BL,AL

	POPF
	POP	DL
	POP	AL
	RET

; -------------------------------------------------------------------------
	END

; -------------------------------------------------------------------------
