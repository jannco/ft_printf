# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yadereve <yadereve@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/24 20:41:02 by yadereve          #+#    #+#              #
#    Updated: 2023/10/26 12:02:24 by yadereve         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc

RM = rm -f

CFLAGS = -Wall -Wextra -Werror

MAKE = make

SRCS = ft_printf.c ft_putchar.c ft_putstr.c ft_putdec.c \

OBJS = ${SRCS:.c=.o}

all: ${NAME}

$(NAME): ${OBJS}
		@${MAKE} -C ./libft
		@cp libft/libft.a ${NAME}
		@ar -rcs ${NAME} ${OBJS}

clean:
		@${RM} ${OBJS}
		@${MAKE} clean -C ./libft


fclean:	clean
		@${RM} ${NAME}
		@${RM} libft.a
		@${MAKE} fclean -C ./libft

re:		fclean all

.PHONY: all clean fclean re
