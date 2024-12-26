; AIM: To find Average of 3 numbers and find sum of elements of 2
arrays.


; Average of 3 Numbers

; Label   Mnemonic          Comments
1000:     MOV BX, 3H        ; Load the count of numbers into BX
1004:     MOV AX, 2H        ; Load the 1st number to calculate the average into AX
1008:     ADD AX, 2H        ; Add the 2nd number to AX for the average calculation
100C:     ADD AX, 2H        ; Add the 3rd number to AX for the average calculation
1010:     DIV BX            ; Divide AX by BX to find the average
1012:     MOV [2000], AX    ; Store the result in memory location 2000H
1016:     HLT               ; End of program

; OUTPUT:
; 2000H: 02H


; Sum of Elements of 2 Arrays

; Label   Mnemonic          Comments
1000:     MOV SI, 1500H     ; Load the start address of the 1st array into SI
1003:     MOV CL, [SI]      ; Load the count into CL
1005:     MOV CH, 00H       ; Load 00H into CH
1007:     INC SI            ; Increment the SI
1008:     MOV DI, 2000H     ; Load the start address of the 2nd array into DI
100B:     MOV AL, [SI]      ; Load an element from the 1st array into AL
100D:     ADD AL, [DI]      ; Add the corresponding element from the 2nd array to AL
100F:     MOV [SI], AL      ; Store the sum back in the 1st array
1011:     INC SI            ; Increment the Source Index Register (SI)
1012:     INC DI            ; Increment the Destination Index Register (DI)
1013:     LOOP 100B         ; Decrement CX; if CX is not 0, jump to line 100B
1015:     HLT               ; End of program

; INPUT:
; 1500H: 03H
; 1501H: 01H
; 1502H: 02H
; 1503H: 03H
; 2000H: 01H
; 2001H: 02H
; 2002H: 03H

; OUTPUT:
; 1501H: 02H
; 1502H: 04H
; 1503H: 06H