##
## Makefile for  in /home/frasse_l/Projets/asm_minilibc
## 
## Made by loic frasse-mathon
## Login   <frasse_l@epitech.net>
## 
## Started on  Wed Feb 24 00:55:28 2016 loic frasse-mathon
## Last update Thu Mar 17 19:58:42 2016 loic frasse-mathon
##

RM		= rm -f

NASM		= nasm -f elf64

CC		= ld

BONUS		= bonus/memccpy.S \
		bonus/strcat.S \
		bonus/strdup.S \
		bonus/fabs.S \
		bonus/atoi.S

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
		src/memmove.S

SRC		+= $(BONUS)

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
