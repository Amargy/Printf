# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: edestiny <edestiny@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/30 09:56:55 by edestiny          #+#    #+#              #
#    Updated: 2019/12/30 09:56:56 by edestiny         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =	libftprintf.a

SRCS = 	ft_printf.c \
		parser.c \
		ft_strcpy.c \
		ft_strjoin.c \
		ft_strlen.c \
		ft_isdigit.c \
		f_divf.c \
		f_double.c \
		f_format_float.c \
		f_long.c \
		f_multf.c \
		f_round.c \
		f_ten_pow.c \
		f_write_flo.c \
		preparation.c \
		flags_sp_s_o_p_cl.c \
		flags_unk_c_h_sh_po.c \
		flags_x_u_i_l.c \
		width_prec.c \
		plus_minus_zero_space_sharp.c \
		cast.c \
		buffer_print.c \
		dioux.c \
		preprint_processing.c \

OBJS = 	ft_printf.o \
		parser.o \
		ft_strcpy.o \
		ft_strjoin.o \
		ft_strlen.o \
		ft_isdigit.o \
		f_divf.o \
		f_double.o \
		f_format_float.o \
		f_long.o \
		f_multf.o \
		f_round.o \
		f_ten_pow.o \
		f_write_flo.o \
		preparation.o \
		flags_sp_s_o_p_cl.o \
		flags_unk_c_h_sh_po.o \
		flags_x_u_i_l.o \
		width_prec.o \
		plus_minus_zero_space_sharp.o \
		cast.o \
		buffer_print.o \
		dioux.o \
		preprint_processing.o \


HEADER = ft_printf.h

FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME):
	gcc -c $(SRCS) $(HEADER) $(FLAGS)
	$(AR) -rcs $(NAME) $(OBJS) $?

clean:
	rm -f $(OBJS)

fclean:
	rm -f $(NAME)
	rm -f $(OBJS)

re: fclean all