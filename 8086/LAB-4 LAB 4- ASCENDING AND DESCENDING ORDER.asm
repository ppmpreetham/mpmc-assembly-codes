; AIM: To sort an array in ascending order.


; Ascending Order

; Label   Mnemonic          Comments
1000:     MOV CL, 04H       ; Load the count of 04 into CL
1002:     MOV CH, 04H       ; Load the count of 04 into CH
1004:     MOV SI, 2000H     ; Load the start location of the array into SI
1007:     MOV AL, [SI]      ; Load an element from the array into AL
1009:     MOV BL, [SI+1]    ; Load the next element from the array into BL
100C:     CMP AL, BL        ; Compare AL and BL
100E:     JC 101B           ; Jump to 101B if the carry flag is set
1010:     MOV DL, [SI+1]    ; Use DL as a temporary register for shifting
1013:     XCHG [SI], DL     ; Exchange the value pointed to by SI with the value in DL
1016:     MOV [SI+1], DL    ; Load the value in DL into memory at [SI+1]
1019:     INC SI            ; Increment the SI
101A:     DEC CL            ; Decrement CL
101B:     JNZ 1007          ; If CL is not 0, jump to 1007
101D:     DEC CH            ; Decrement CH
101E:     JNZ 1007          ; If CH is not 0, jump to 1007
1020:     HLT               ; End of program

; INPUT:
; 2000H: 30H
; 2001H: 30H
; 2002H: 10H
; 2003H: 50H
; 2004H: 45H

; OUTPUT:
; 2000H: 10H
; 2001H: 20H
; 2002H: 30H
; 2003H: 45H
; 2004H: 50H


; Descending Order

; Label   Mnemonic          Comments
1000:     MOV CL, 04H       ; Load count of 04 into CL
1002:     MOV CH, 04H       ; Load count of 04 into CH
1004:     MOV SI, 2000H     ; Load start location of array into SI
1007:     MOV AL, [SI]      ; Load element to AL
1009:     MOV BL, [SI+1]    ; Load next element to BL
100C:     CMP AL, BL        ; Compare AL and BL
100E:     JNC 101B          ; Jump to 101B if carry flag is not set
1010:     MOV DL, [SI+1]    ; Use DL as temporary register for shifting
1013:     XCHG [SI], DL     ; Exchange value pointed by SI and DL value
1016:     MOV [SI+1], DL    ; Load value in DL to [SI+1]
1019:     INC SI            ; Increment SI
101A:     DEC CL            ; Decrement CL
101B:     JNZ 1007          ; If CL is not 0 then jump to 1007
101D:     DEC CH            ; Decrement CH
101E:     JNZ 1007          ; If CH is not 0 then jump to 1007
1020:     HLT               ; End of program

; INPUT:
; 2000H: 30H
; 2001H: 30H
; 2002H: 10H
; 2003H: 50H
; 2004H: 45H

; OUTPUT:
; 2000H: 50H
; 2001H: 45H
; 2002H: 30H
; 2003H: 20H
; 2004H: 10H