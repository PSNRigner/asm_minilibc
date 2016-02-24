##
## Makefile for  in /home/frasse_l/Projets/asm_minilibc
## 
## Made by loic frasse-mathon
## Login   <frasse_l@epitech.net>
## 
## Started on  Wed Feb 24 00:55:28 2016 loic frasse-mathon
## Last update Wed Feb 24 18:18:08 2016 loic frasse-mathon
##

RM		= rm -f

NASM		= nasm -f elf64

CC		= ld

SRC		= src/strlen.S \
		src/strchr.S \
		src/memset.S \
		src/memcpy.S

OBJ		= $(SRC:.S=.o)

NAME		= libasm.so

TEST		= main.c

all:		$(NAME)

$(NAME):	$(OBJ)
		$(CC) -shared -fPIC -o $(NAME) $(OBJ)

%.o:		%.S
		$(NASM) -o $@ $<

clean:
		$(RM) $(OBJ)

fclean:		clean
		$(RM) $(NAME)

re:		fclean all

test:
		@$(NASM) -o test.o test.S
		@gcc -c -o main.o main.c
		@gcc -o a.out main.o test.o
		@rm -f main.o
		@rm -f test.o
		@./a.out
		@rm -f a.out
