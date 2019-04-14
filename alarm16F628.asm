
_main:

;alarm16F628.mpas,5 :: 		begin
;alarm16F628.mpas,7 :: 		TRISB := 1;
	MOVLW      1
	MOVWF      TRISB+0
;alarm16F628.mpas,8 :: 		TRISA := 0;
	CLRF       TRISA+0
;alarm16F628.mpas,9 :: 		PORTB := 0;
	CLRF       PORTB+0
;alarm16F628.mpas,10 :: 		PORTA := 0;
	CLRF       PORTA+0
;alarm16F628.mpas,11 :: 		repeat
L__main1:
;alarm16F628.mpas,12 :: 		if PORTB.4 = 1 then // glavni prekidac
	BTFSS      PORTB+0, 4
	GOTO       L__main7
;alarm16F628.mpas,14 :: 		if PORTB.3 = 0 then // otvorena vrata
	BTFSC      PORTB+0, 3
	GOTO       L__main10
;alarm16F628.mpas,16 :: 		delay_ms(5000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L__main12:
	DECFSZ     R13+0, 1
	GOTO       L__main12
	DECFSZ     R12+0, 1
	GOTO       L__main12
	DECFSZ     R11+0, 1
	GOTO       L__main12
	NOP
;alarm16F628.mpas,17 :: 		PORTA.2 := 1;
	BSF        PORTA+0, 2
;alarm16F628.mpas,18 :: 		end;
L__main10:
;alarm16F628.mpas,19 :: 		end
	GOTO       L__main8
;alarm16F628.mpas,20 :: 		else
L__main7:
;alarm16F628.mpas,22 :: 		PORTA := 0;
	CLRF       PORTA+0
;alarm16F628.mpas,23 :: 		end;
L__main8:
;alarm16F628.mpas,24 :: 		until 1=2
	GOTO       L__main1
;alarm16F628.mpas,25 :: 		end.
L_end_main:
	GOTO       $+0
; end of _main
