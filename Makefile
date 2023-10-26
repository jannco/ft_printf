# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yadereve <yadereve@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/24 20:41:02 by yadereve          #+#    #+#              #
#    Updated: 2023/10/26 12:46:58 by yadereve         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc

RM = rm -f

CFLAGS = -Wall -Wextra -Werror

MAKE = make

SRCS = ft_printf.c \
		libft/ft_putchar.c \
		libft/ft_bzero.c \
		libft/ft_calloc.c \
		libft/ft_strlen.c \
		libft/ft_itoa.c \
		libft/ft_putstr.c \
		libft/ft_putdec.c \

OBJS = ${SRCS:.c=.o}

all: ${NAME}

$(NAME): ${OBJS}
		@ar -rcs ${NAME} ${OBJS}

clean:
		@${RM} ${OBJS}


fclean:	clean
		@${RM} ${NAME}
		@${RM} libft.a

re:		fclean all

.PHONY: all clean fclean re
