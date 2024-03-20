.intel_syntax noprefix
.data


Chump:

        .ascii "How much did those chumps pay for the delivery ?\n\0"
Yoke:

        .ascii "How many Planet Express yokels are getting paid ?\n\0"
Get:

        .ascii "Okay, everyone here gets\0"
Buck:

        .ascii " space bucks\n\0"
Recieve:

        .ascii "and...........I get\0"
More:

        .ascii "extra..........(HAHAHAHAHA)\n\0"


.text
.global _start
_start:


          lea rdi,Chump
          call WriteString
          call ReadInt
          mov rax, rdi
          mov rbx, rdi

          lea rdi,Yoke
          call WriteString
          call ReadInt
          mov rcx, rdi
          add rdi, 1
          cqo
          idiv rdi


          lea rdi,Get
          call WriteString
          mov rdi,rax
          call WriteInt
          lea rdi,Buck
          call WriteString


          lea rdi,Recieve
          call WriteString
          imul rax, rcx
          sub rbx, rax
          mov rdi,rbx
          call WriteInt
          lea rdi,More
          call WriteString

          call Exit


