# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ylamkhan <ylamkhan@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/12 17:10:33 by ylamkhan          #+#    #+#              #
#    Updated: 2022/11/14 09:07:37 by ylamkhan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

FILEO =ft_printf.o\
ft_putchar.o\
ft_putstr.o\
ft_putnumbre.o\
ft_putnumber_non_s.o\
ft_putnumber_HEX.o\
ft_putnumber_hex2.o\
ft_putadresse.o

CFLAGS =-Wall -Werror -Wextra

all: $(NAME)


$(NAME):	$(FILEO)
		ar rc $(NAME) $(FILEO)

clean:
		$(RM) $(FILEO)

fclean:	clean
		$(RM) $(NAME)

re:	fclean all

.PHONY: all clean fclean re

