# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpuscedd <gpuscedd@student.42roma.it>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/11 12:27:35 by gpuscedd          #+#    #+#              #
#    Updated: 2024/01/19 19:52:56 by gpuscedd         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
HEADER = libft.h
CC = gcc
CFLAGS = -Wall -Wextra -Werror

SRCS			=	ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_memcmp.c ft_atoi.c \
					ft_isdigit.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isprint.c \
					ft_toupper.c ft_tolower.c ft_strncmp.c ft_memset.c ft_bzero.c \
					ft_memcpy.c ft_memmove.c ft_memchr.c ft_calloc.c ft_strchr.c \
					ft_strnstr.c ft_strdup.c ft_substr.c ft_strrchr.c ft_strjoin.c \
					ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c \
					ft_strtrim.c ft_striteri.c ft_strmapi.c ft_split.c ft_itoa.c

B_SRCS			=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
					ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS = $(SRCS:.c=.o)
B_OBJS = $(B_SRCS:.c=.o)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

%.o : %.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@ 

all : $(NAME)

clean :
	rm -f $(OBJS) $(B_OBJS)

fclean : clean
	rm -f $(NAME)

re: fclean all

bonus: $(NAME) $(OBJS) $(B_OBJS)
	ar rc $(NAME) $(OBJS) $(B_OBJS)

.PHONY: all, clean, fclean, re, bonus