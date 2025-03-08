NAME = push_swap

SRCS = main.c \
       input_validation.c \
       push_swap.c \
       position.c \
       stack_init.c \
       stack_utils.c \
       operations_swap_push.c \
       operations_rotate.c \
       operations_reverse_rotate.c

OBJS = $(SRCS:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror

RM = rm -f

.c.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
