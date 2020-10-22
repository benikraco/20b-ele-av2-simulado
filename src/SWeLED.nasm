; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = SW9 OFF ON ON ON OFF !SW3 !SW2 ON OFF

leaw $21185, %A
movw (%A), %D
notw %D
leaw $12, %A
andw %A, %D, %D

leaw $0, %A
movw %D, (%A)

leaw $512, %A
movw %A, %D
leaw $21185, %A
andw (%A), %D, %D

leaw $0, %A
orw (%A), %D, %D

leaw $226, %A
orw %A, %D, %D

leaw $21184, %A
movw %D, (%A)
