##
## Makefile for  in /home/frasse_l/Projets/asm_minilibc
## 
## Made by loic frasse-mathon
## Login   <frasse_l@epitech.net>
## 
## Started on  Wed Feb 24 00:55:28 2016 loic frasse-mathon
## Last update Tue Mar  1 01:12:27 2016 loic frasse-mathon
##

RM		= rm -f

NASM		= nasm -f elf64

CC		= ld

BONUS		= src/memccpy.S \
		src/strcat.S \
		src/strdup.S

SRC		= src/strlen.S \
		src/strchr.S \
		src/strcmp.S \
		src/strncmp.S \
		src/strcasecmp.S \
		src/rindex.S \
		src/strstr.S \
		src/strpbrk.S \
		src/strcspn.S \
		src/memcpy.S \
		src/memset.S \
		src/memmove.S \
		$(BONUS)

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
#		@rm -f a.out
