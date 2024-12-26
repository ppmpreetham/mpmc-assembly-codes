; AIM: To perform basic arithmetic operations using the 8086 kit. 

; 8-BIT ADDITION

; Label   Mnemonic          Comments
1000:     MOV AL,08H        ; Load the value 08H into AL
1004:     MOV BL,05H        ; Load the value 05H into BL
1008:     ADD AL, BL        ; Add the values in AL and BL, and store the result in AL
100B:     MOV [2000], AL    ; Store the result at memory location 2000H
100F:     HLT               ; End of program

; OUTPUT:
; 2000H: 0D


; 16-BIT ADDITION

; Label   Mnemonic          Comments
1000:     MOV AX,4433H      ; Load value 4433H into AX
1004:     MOV BX,2211H      ; Load value 2211H into BX
1008:     ADD AX, BX        ; Add the values in AX and BX, and store the result in AX
100B:     MOV [2000], AX    ; Store the result at memory location 2000H
100F:     HLT               ; End of program

; OUTPUT:
; 2000H: 6644H


; 8-BIT SUBTRACTION

; Label   Mnemonic          Comments
1000:     MOV AL,08H        ; Load the value 08H into AL
1004:     MOV BL,05H        ; Load the value 05H into BL
1008:     SUB AL, BL        ; Subtract the value in BL from AL, and store the result in AL
100B:     MOV [2000], AL    ; Store the result at memory location 2000H
100F:     HLT               ; End of program

; OUTPUT:
; 2000H: 03


; 16-BIT SUBTRACTION

; Label   Mnemonic          Comments
1000:     MOV AX,4433H      ; Load the value 4433H into AX
1004:     MOV BX,2211H      ; Load the value 2211H into BX
1008:     SUB AX, BX        ; Subtract the value in BX from AX, and store the result in AX
100B:     MOV [2000], AX    ; Store the result at memory location 2000H
100F:     HLT               ; End of program

; OUTPUT:
; 2000H: 2222H


; 8-BIT MULTIPLICATION

; Label   Mnemonic          Comments
1000:     MOV AL,08H        ; Load the value 08H into AL
1004:     MOV BL,05H        ; Load the value 05H into BL
1008:     MUL BL            ; Multiply the value in AL by the value in BL, and store the result in AX (AL will contain the lower byte)
100B:     MOV [2000], AL    ; Store the result at memory location 2000H
100F:     HLT               ; End of program

; OUTPUT:
; 2000H: 28H


; 16-BIT MULTIPLICATION

; Label   Mnemonic          Comments
1000:     MOV AX,4433H      ; Load the value 4433H into AX
1004:     MOV BX,2211H      ; Load the value 2211H into BX
1008:     MUL BX            ; Multiply the value in AX by the value in BX, storing the result in DX:AX
100A:     MOV [2000], AX    ; Store the lower 16 bits of the result at memory location 2000H
100E:     MOV [2002], DX    ; Store the higher 16 bits of the result at memory location 2002H
1012:     HLT               ; End of program

; OUTPUT:
; 2000H: 4D63H
; 2002H: 0913H


; 8-bit Division

; Label   Mnemonic          Comments
1000:     MOV AL,08H        ; Load the value 08H into AL
1004:     MOV BL,05H        ; Load the value 05H into BL
1008:     DIV BL            ; Divide the value in AL by BL, storing the quotient in AL and the remainder in AH
100A:     MOV [2000], AL    ; Store the quotient (AL) at memory location 2000H
100E:     MOV [2001], AH    ; Store the remainder (AH) at memory location 2001H
1012:     HLT               ; End of program

; OUTPUT:
; 2000H: 01H
; 2001H: 03H

; 16-bit Division

; Label   Mnemonic          Comments
1000:     MOV AX,4433H      ; Load the value 4433H into AX
1004:     MOV BX,2211H      ; Load the value 2211H into BX
1008:     DIV BX            ; Divide the value in AX by BX, storing the quotient in AX and the remainder in DX
100A:     MOV [2000], AX    ; Store the quotient (AX) at memory location 2000H
100E:     MOV [2002], DX    ; Store the remainder (DX) at memory location 2002H
1012:     HLT               ; End of program

; OUTPUT:
; 2000H: 0002H
; 2002H: 0011H