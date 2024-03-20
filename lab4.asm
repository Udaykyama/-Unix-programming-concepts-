.intel_syntax noprefix
.data


Girls:
      .ascii "POWER PUFF GIRLS GAME if you have done it enter( 1= yes, id you didn't enter 2=no)\n\0"

teeth:
       .ascii "Did you brush your teeth this morning ? (1 = yes , 2= no)\n\0"
Exams:
       .ascii "Did you cheat on your exams? (1= yes , 2= no)\n\0"
Naughty: 
       .ascii "Did you say a naughty word? (1= yes , 2=no)\n\0"
Fight:
       .ascii "Did you get into a fight ? (1=yes, 2=no)\n\0"
Help:
       .ascii "Did you help an old lady/man across the street? (1=yes, 2= no)\n\0"

Points:
        .ascii "you have\0"

Points1:  
         .ascii "nice points and \0"

Points2:
          .ascii "naughty points\0"

Good:
         .ascii "YAY ! YOU'RE AWESOME :)\n\n\0"

Bad:
        .ascii "Okay. you go to your room NOW and think about what you did\n\0"

.text
.global _start
_start:

    lea rdi, Girls
    call WriteString


Teethq:

     lea rdi,teeth
     call WriteString
     call ReadInt
     cmp rdi, 1
     jne Examsq

     add rax,50
       
 
Examsq:

     lea rdi,Exams
     call WriteString
     call ReadInt
     cmp rdi, 1
     jne Naughtyq

     add rbx,50

Naughtyq:

     lea rdi,Naughty
     call WriteString
     call ReadInt
     cmp rdi, 1
     jne Fightq

     add rbx,50

Fightq:
     lea rdi,Fight
     call WriteString
     call ReadInt
     cmp rdi, 1
     jne Helpq

     add rax,50 

Helpq:

      lea rdi,Help
      call WriteString
      call ReadInt
      cmp rdi,1

     add rax,50
  

      lea rdi,Points
      call WriteString

      mov rdi,rax
     call WriteInt

     lea rdi, Points1
     call WriteString

     mov rdi, rbx
     call WriteInt

     lea rdi,Points2
     call WriteString

    
     cmp rax,rbx
     jge Goodlabel
     lea rdi,Bad
     call WriteString
     
     jmp Finished    
    

Goodlabel:
          lea rdi,Good
          call WriteString
      


Finished:
          call Exit
