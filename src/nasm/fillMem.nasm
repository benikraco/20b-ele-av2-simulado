; Preenche a memória RAM
; com um contador progresssivo. O valor
; da RAM[2] tem o tamanho total do vetor.
; O vetor deve começar em RAM[3]
;
; RAM[0] e RAM[1] podem ser usados livremente
;
; ------------------------------------
; antes       | depois
;             |
; RAM[0]:     | RAM[0]:  
; RAM[1]:     | RAM[1]:  
; RAM[2]:  4  | RAM[2]:  4
; RAM[3]:  0  | RAM[3]:  0 -
; RAM[4]:  0  | RAM[4]:  1 | vetor
; RAM[5]:  0  | RAM[5]:  2 | 
; RAM[6]:  0  | RAM[6]:  3 -
; RAM[7]:  0  | RAM[7]:  0

leaw $0, %A
movw $0, (%A)

LOOP:

  leaw $2, %A
  movw (%A), %D
  decw %D
  leaw $0, %A
  subw %D, (%A), %D
  leaw $END, %A
  jl
  nop

  leaw $0, %A
  movw (%A), %D
  leaw $3, %A
  addw %D, %A ,%A
  movw %D, (%A)

  incw %D
  leaw $0, %A
  movw %D, (%A)

  leaw $LOOP, %A
  jmp
  nop

END:
  
























