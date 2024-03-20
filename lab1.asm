# lab1.asm
# UDAY KYAMA
#
# 1. Assemble : as -o lab1.o lab1.asm
# 2. link     : ld -o a.out lab1.o csc35.o
# 3. Execute  : ./a,out


.intel_syntax noprefix         #Use Intel formatting
.data                           #Start the data section
 Greeting:                      #Message is an address
      .ascii "hello society"   #Create a buffer of ASCII

text:                             #Start the text section
       .ascii "CAN HUMANITY CHANGE?"    #Create a buffer of ASCII

.global _start                    #Make the _start lablel public


_start:                           #UNIX starts here
    lea  rdx, Greeting              #Put address into rax
     call PrintZString            #Execute the csc35.o subroutine
     
     lea rdx, text                  
    call PrintZString


     call  Exit                    #Execute the csc35.o subroutine
