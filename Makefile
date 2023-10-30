# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yadereve <yadereve@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/24 20:41:02 by yadereve          #+#    #+#              #
#    Updated: 2023/10/30 17:57:56 by yadereve         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc

RM = rm -f

CFLAGS = -Wall -Wextra -Werror

MAKE = make

SRCS = ft_printf.c \
		libft/ft_putchar.c \
		libft/ft_putuncig.c \
		libft/ft_putstr.c \
		libft/ft_putnbr.c \
		libft/ft_strlen.c \
		libft/ft_puthex.c \
		libft/ft_putpoint.c \

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
