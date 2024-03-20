.intel_syntax noprefix
.data

Menu1: 
       .ascii "Krabby Patty (4 rupee) \n\0"
Menu2: 
       .ascii "Pretty Patty (5 rupee)\n\0"
Menu3: 
       .ascii "Kelp Fries    (3 rupee )\n\0"
Menu4: 
       .ascii "chocolate shake (2 rupee) \n\0"

Rupees: 
       .quad 4
       .quad 5
       .quad 3
       .quad 2

First: 
         .ascii "First Selection: \0"


Second: 
        .ascii "Second Selection: \0"


Money:

        .ascii "That's normally  \0"

Money2:  

        .ascii "Rupee \n\0"

Currency:
           .ascii "(ewwwwwwwwwwwwwwwwwwwwwwwwww) I scammed them for \0"

Currency2: 
           .ascii "Rupee\n\0"



.text
.global _start


_start:
           lea rdi, Menu1
           call WriteString     

           lea rdi, Menu2
           call WriteString
   
           lea rdi, Menu3
           call WriteString

 	   lea rdi, Menu4
           call WriteString



          lea rdi, First
          call WriteString
          call ReadInt
          sub rdi, 1
          mov rax, [Rupees + 8*rdi]

          lea rdi, Second
          call WriteString
          call ReadInt
          sub rdi, 1
          add rax, [Rupees + 8*rdi]

          lea rdi, Money
          call WriteString
          mov rdi, rax
          call WriteInt
          lea rdi, Money2
          call WriteString

      
          mov rbx, 10
          sub rbx, rax
          lea rdi, Currency
          call WriteString
          mov rdi, rbx
          call WriteInt
          lea rdi, Currency2
          call WriteString

          call Exit
          
     
