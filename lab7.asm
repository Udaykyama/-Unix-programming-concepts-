#UDAY KYAMA
# CSC 35-05
# LAB 7 

.intel_syntax noprefix
.data 

knutsQuantity: 
         .ascii "How much, in knuts,was the bill?\n\0"

numPeople:
         .ascii "How many people are splitting the bill?\n\0"

eachCostP2P1:
       .ascii "okay,witches and wizards,give \0"
eachCostP2:
       .ascii "knuts each\n\0"



.text
.global _start

_start:
        lea rdx, knutsQuantity
        call PrintZString
        call ScanInt
        mov rax,rdx                   #money due into rax

loop:
        lea rdx,numPeople
        call PrintZstring
        call ScanInt                  #number of people
        cmp rdx, 1
        jl loop
        jmp End

End:

       mov rbx, rdx             #rbx= number of people 
       cqo
       idiv rbx


       mov rsi, rax             #Print eachCostP2P1s
       lea rdx, eachCostP2P1          #move eachCostP2P1s into rsi
       call PrintZstring
       mov rdx, rsi            #move eachCostP2P1s back into edx
       call PrintInt
       lea rdx, eachCostP2
       call PrintZString

      call Exit
