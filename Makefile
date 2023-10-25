# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yadereve <yadereve@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/24 20:41:02 by yadereve          #+#    #+#              #
#    Updated: 2023/10/24 20:45:38 by yadereve         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc

RM = rm -f

CFLAGS = -Wall -Wextra -Werror

SRCS = ft_printf.c \

OBJS = ${SRCS:.c=.o}

all: ${NAME} ${OBJS}

$(NAME): ${OBJS}
		ar rcs ${NAME} ${OBJS}

clean:
		${RM} ${OBJS}

fclean:	clean
		${RM} ${NAME}

re:		fclean all

.PHONY: all clean fclean re
