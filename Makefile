# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marvin <marvin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/07 14:36:43 by abettini          #+#    #+#              #
#    Updated: 2023/03/12 14:14:19 by marvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#----------------------------------------------

NOCOL = \e[0m
GREEN = \e[1;92m
RED = \e[1;31m
CYAN = \e[1;36m
TCOL = $(CYAN)
RMD = $(GREEN)successfully $(RED)removed$(NOCOL)
CMP = $(GREEN)successfully compiled$(NOCOL)

#----------------------------------------------

CC = cc

NAME = libft.a

PT1 :=	ft_atoi.c \
	ft_bzero.c \
	ft_calloc.c \
	ft_isalnum.c \
	ft_isalpha.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_memset.c \
	ft_strchr.c \
	ft_strdup.c \
	ft_strlcat.c \
	ft_strlcpy.c \
	ft_strlen.c \
	ft_strncmp.c \
	ft_strnstr.c \
	ft_strrchr.c \
	ft_tolower.c \
	ft_toupper.c

PT2 :=	ft_itoa.c \
	ft_putchar_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_putstr_fd.c \
	ft_split.c \
	ft_striteri.c \
	ft_strjoin.c \
	ft_strmapi.c \
	ft_strtrim.c \
	ft_substr.c

BNS :=	ft_lstadd_back.c \
	ft_lstadd_front.c \
	ft_lstclear.c \
	ft_lstdelone.c \
	ft_lstiter.c \
	ft_lstlast.c \
	ft_lstmap.c \
	ft_lstnew.c \
	ft_lstsize.c

OBJ_S = $(PT1:.c=.o) $(PT2:.c=.o)

OBJ_B = $(BNS:.c=.o)

CFLAG = -Wall -Werror -Wextra -g

all: $(NAME)

$(NAME): $(OBJ_S)
	ar -rcs $(NAME) $^
	echo "$(TCOL)$(NAME) $(CMP)"

%.o:%.c
	$(CC) -c $(CFLAG) -I. $< -o $@

clean:
	if [ `find . -name "*.o" | wc -l` != 0 ]; then\
		/bin/rm -f *.o;\
		if [ `find . -name "*.o" | wc -l` = 0 ]; then\
			echo "$(TCOL)object files ($(NAME)) $(RMD)";\
		fi;\
	fi

fclean: clean
	if [ -f $(NAME) ]; then\
		/bin/rm -f $(NAME);\
		echo "$(TCOL)$(NAME) $(RMD)";\
	fi

re: fclean all

bonus: $(OBJ_S) $(OBJ_B)
	ar -rcs $(NAME) $^
	echo "$(TCOL)$(NAME) w/ bonus $(CMP)"

.PHONY: all clean fclean re bonus

.SILENT: