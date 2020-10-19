;Calcule a série de fibonacci, sendo
; RAM[0] o valor que define o tamanho da
; série e RAM[5] o seu inicio
;
; RAM[0]:  5     <--- Tamanho da série (sempre > 2)
; RAM[1]:        ---- livre para uso!     
; RAM[2]:        ---- livre para uso!
; ....
; RAM[5]:  1       -- inicio
; RAM[6]:  1       |
; RAM[7]:  2       |
; RAM[8]:  3       |
; RAM[9]:  5       v série (N=5)


leaw $7, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)      ; RAM[1] = 7 (ponteiro)
leaw $5, %A        ; Preparando série
movw $1, (%A)      ; RAM[5] = 1
incw %A
movw $1, (%A)      ; RAM[6] = 1

LOOP:
  leaw $1, %A      ; verifica se i < N
  movw (%A), %D
  leaw $5, %A
  subw %D, %A, %D
  leaw $0, %A
  subw (%A), %D, %D  
  leaw $END, %A
  jle
  nop

  leaw $1, %A
  movw (%A), %A
  decw %A
  movw (%A), %D       ; %D = RAM[n-1]
  decw %A
  addw (%A), %D, %D   ; %D = RAM[n-1] + RAM[n-2]
  incw %A
  incw %A
  movw %D, (%A)       ; RAM[n] = %D

  incw %A             ; RAM[1] = n+1
  movw %A, %D 
  leaw $1, %A
  movw %D, (%A)      
  leaw $LOOP, %A
  jmp
  nop
END:


























































































