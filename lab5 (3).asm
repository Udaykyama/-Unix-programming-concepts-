.intel_syntax noprefix
.data 

introduction:

              .ascii "\n Wassup Jimmy ! So I'm giving you 100 wish points . Make sure you use it orelse you'll be fined \n\n1. Chicken Biryani spicy    :20 points\n2. $3000                     :50 points\n3.  Workingout whole day  :30 points\n4.  CEO of twitter          : 90 Points\n\0"

have:
              .ascii "you have \0"

left:
              .ascii "wish points left.\n\0"

wish:
              .ascii "what is your wish?\n\0"


firstchoice:
               .ascii "Poof! there you go the spicy biryani and watch out your tummy!\n\0"
 
secondchoice:
               .ascii "Poof! you get 3000$ for titanic trip\n\0"

thirdchoice:
               .ascii "Poof! you gonna be fit and get more chicks \n\0"

fourthchoice:
                .ascii "Poof! you got the freedom of speech \n\0"

sorry:
        .ascii "Sorry , you don't have enough points.\n\0"


nopoints:
  
             .ascii "Not enough points.\n\0"

.text
.global _start
_start:



          lea rdi,introduction
          call WriteString
          mov rcx,100


do:
 
            lea rdi,wish
            call WriteString
            call ReadInt
   

            cmp rdi,1
            je One
            cmp rdi,2
            je Two
            cmp rdi,3
            je Three
            cmp rdi,4
            je Four
            

            jmp do
          
one:
          cmp rax,20
          jge one
          lea rdi, nopoints
          call WriteString
          jmp do

One:
 
          sub rax,20
          lea rdi,firstchoice
          call WriteString
   
          lea rdi,have
          call WriteString
          mov rdi,rax
          call WriteInt
          lea rdi,left
          call WriteString
    
          cmp rax,20
          jl last

          jmp do



two:

       cmp rax,50
       jge Two
       lea rdi,nopoints
       call WriteString
       jmp do


Two:
       sub rax,50
       lea rdi,secondchoice
       call WriteString
      

      lea rdi,have
      call WriteString
      mov rdi,rax
      call WriteInt
      lea rdi,left
      call WriteString

      cmp rax,20
      jl last


     jmp do


three:


       cmp rax,30
       jge three
       lea rdi,nopoints
       call WriteString
       jmp do


Three:


       sub rax,30
       lea rdi,thirdchoice
       call WriteString
 
       lea rdi,have
       call WriteString
       mov rdi,rax
       call WriteInt
       lea rdi,left
       call WriteString


       cmp rax,20
       jl last


       jmp do


Four:

       cmp rax,90
       lea rdi,fourthchoice
       call WriteString

       lea rdi,have
       call WriteString
       mov rdi,rax
       call WriteInt
       lea rdi,left
       call WriteString

       cmp rax,20
       jl last

       jmp do

  
last:

      lea rdi,sorry
      call WriteString
 

      call Exit

          

