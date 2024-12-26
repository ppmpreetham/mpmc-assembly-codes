; AIM: To perform Addition with Carry and find Sum of Array Elements.


; Addition with Carry

; Label   Mnemonic          Comments
1000:     MOV CX, 0000H     ; Load 0000H into CX
1004:     MOV AX, [3000]    ; Load the value from memory location 3000H into AX
1008:     MOV BX, [3002]    ; Load the value from memory location 3002H into BX
100B:     ADD AX, BX        ; Add AX and BX, and store the result in AX
100E:     JNC 1011          ; If no carry is generated, jump to line 1011
1010:     INC CX            ; Increment the value of CX
1011:     MOV [2500], AX    ; Store the AX value (sum) in memory location 2500H
1015:     MOV [2502], CX    ; Store the CX value (carry) in memory location 2502H
1019:     HLT               ; End of program

; INPUT:
; 3000H: 1234H
; 3002H: 1111H

; OUTPUT:
; 2500H: 2345H
; 2502H: 0000H


; Sum of Corresponding Elements of Array

; Label   Mnemonic          Comments
1000:     MOV CX, 0005H     ; Load the count value of 0005 into CX
1003:     MOV AX, 0000H     ; Load 0000H into AX
1006:     MOV BX, 0000H     ; Load 0000H into BX
1009:     MOV SI, 1500H     ; Load the start location of the array into SI
1010:     MOV BL, [SI]      ; Load BX with the current array element
1012:     ADD AX, BX        ; Add AX and BX, and store the result in AX
1014:     INC SI            ; Increment the Source Index Register (SI)
1015:     DEC CX            ; Decrement CX
1016:     JNZ 1010          ; If CX is not 0, jump to line 1010
1018:     MOV DI, 2000H     ; Load the address into the Destination Index Register (DI)
101B:     MOV [DI], AX      ; Store the result into the memory address pointed to by DI
101E:     HLT               ; End of program

; INPUT:
; 1500H: 01H
; 1501H: 02H
; 1502H: 03H
; 1503H: 04H
; 1504H: 05H

; OUTPUT:
; 2000H: 0FH