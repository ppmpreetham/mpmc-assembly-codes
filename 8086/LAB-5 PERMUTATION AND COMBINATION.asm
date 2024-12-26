; AIM: To find factorial of a number and find its Permutation and
Combination


; Factorial of Number

; Label   Mnemonic          Comments
1000:     MOV AX, 01H       ; Load the value 01H into AX
1003:     MOV CX, [2000]    ; Load the number into CX
1007:     MUL CX            ; Multiply CX by AX and store the result in AX
1009:     LOOP 1007         ; Decrement CX; if it’s not 0, jump to 1007
100B:     MOV [2002], AX    ; Store the factorial in memory location 2002H
100F:     HLT               ; End of program

; INPUT:
; 2000H: 05H

; OUTPUT:
; 2002H: 78H


; Permutation nPr

; Label   Mnemonic          Comments
1000:     MOV DX, 0006H     ; Load the value of ‘n’ (06) into DX
1003:     MOV CX, 0004H     ; Load the value of ‘r’ (04) into CX
1006:     SUB DX, CX        ; Subtract the value of CX from DX
1008:     MOV CX, DX        ; Move the difference to CX
100A:     MOV AX, 0001H     ; Load the value 01H into AX
100D:     MUL CX            ; Multiply AX by CX and store the result in AX
100F:     DEC CX            ; Decrement CX
1010:     JNZ 100D          ; If CX is not 0, jump to 100D
1012:     MOV BX, AX        ; Move the value in AX to BX
1014:     MOV CX, 0006H     ; Load the value of ‘n’ (06) into CX
1017:     MOV AX, 0001H     ; Load the value 01H into AX
101A:     MUL CX            ; Multiply AX by CX and store the result in AX
101C:     DEC CX            ; Decrement CX
101D:     JNZ 101A          ; If CX is not 0, jump to 101A
101F:     DIV BX            ; Divide AX by BX
1021:     MOV [2000], AX    ; Store the quotient (nPr) value in memory location 2000H
1025:     HLT               ; End of program

; OUTPUT:
; 2000H: 0168H


; Combination nCr

; Label   Mnemonic          Comments
1000:     MOV DX, 0006H     ; Load the value of ‘n’ (06) into DX
1003:     MOV CX, 0004H     ; Load the value of ‘r’ (04) into CX
1006:     SUB DX, CX        ; Subtract the value of CX from DX
1008:     MOV CX, DX        ; Move the difference to CX
100A:     MOV AX, 0001H     ; Load the value 01H into AX
100D:     MUL CX            ; Multiply AX by CX and store the result in AX
100F:     DEC CX            ; Decrement CX
1010:     JNZ 100D          ; If CX is not 0, jump to 100D
1012:     MOV BX, AX        ; Move the value in AX to BX
1014:     MOV CX, 0006H     ; Load the value of ‘n’ (06) into CX
1017:     MOV AX, 0001H     ; Load the value 01H into AX
101A:     MUL CX            ; Multiply AX by CX and store the result in AX
101C:     DEC CX            ; Decrement CX
101D:     JNZ 101A          ; If CX is not 0, jump to 101A
101F:     DIV BX            ; Divide AX by BX
1021:     MOV BX, AX        ; Move the value in AX to BX
1023:     MOV CX, 0004H     ; Load the value of ‘r’ (04) into CX
1026:     MOV AX, 0001H     ; Load the value 01H into AX
1029:     MUL CX            ; Multiply AX by CX and store the result in AX
102B:     DEC CX            ; Decrement CX
102C:     JNZ 1029          ; If CX is not 0, jump to 1029
102E:     MOV CX, AX        ; Move the value in AX to CX
1030:     MOV AX, BX        ; Move the value in BX to AX
1032:     DIV CX            ; Divide AX by CX
1034:     MOV [2002], AX    ; Store the quotient (nCr) value in memory location 2002H
1038:     HLT               ; End of program

; OUTPUT:
; 2002H: 000FH