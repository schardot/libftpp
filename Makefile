CC = cc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror

SRCS = .

MX_DIR = matrix
MATRIX = $(MX_DIR)/ft_free_matrix.c $(MX_DIR)/ft_matrixdup.c $(MX_DIR)/ft_split.c

CH_DIR = char_checks
CHAR_CH = $(CH_DIR)/ft_isalpha.c $(CH_DIR)/ft_isdigit.c $(CH_DIR)/ft_isalnum.c $(CH_DIR)/ft_isascii.c $(CH_DIR)/ft_isprint.c $(CH_DIR)/ft_toupper.c $(CH_DIR)/ft_tolower.c \
	$(CH_DIR)/ft_isspace.c

S_DIR = string
STRING = $(S_DIR)/ft_strlen.c $(S_DIR)/ft_strlcpy.c $(S_DIR)/ft_strlcat.c $(S_DIR)/ft_strrchr.c $(S_DIR)/ft_strchr.c $(S_DIR)/ft_strncmp.c $(S_DIR)/ft_strnstr.c \
	$(S_DIR)/ft_strdup.c $(S_DIR)/ft_substr.c $(S_DIR)/ft_strjoin.c $(S_DIR)/ft_strtrim.c $(S_DIR)/ft_strmapi.c $(S_DIR)/ft_striteri.c $(S_DIR)/ $(S_DIR)/

MEM_DIR = memory
MEM = $(MEM_DIR)/ft_memset.c $(MEM_DIR)/ft_bzero.c $(MEM_DIR)/ft_memcpy.c $(MEM_DIR)/ft_memmove.c $(MEM_DIR)/ft_memchr.c $(MEM_DIR)/ft_calloc.c $(MEM_DIR)/ $(MEM_DIR)/ $(MEM_DIR)/

CV_DIR = conversion
CONV = $(CV_DIR)/ft_atoi.c $(CV_DIR)/ft_itoa.c $(CV_DIR)/ $(CV_DIR)/ $(CV_DIR)/ $(CV_DIR)/ $(CV_DIR)/ $(CV_DIR)/ $(CV_DIR)/ $(CV_DIR)/ $(CV_DIR)/

FD_DIR = fd_io
FDIO = $(FD_DIR)/ft_putchar_fd.c $(FD_DIR)/ft_putendl_fd.c $(FD_DIR)/ft_putnbr_fd.c $(FD_DIR)/ft_putstr_fd.c

LS_DIR = list
LIST = $(LS_DIR)/ft_lstnew.c $(LS_DIR)/ft_lstadd_front.c $(LS_DIR)/ft_lstsize.c $(LS_DIR)/ft_lstlast.c $(LS_DIR)/ft_lstadd_back.c $(LS_DIR)/ft_lstdelone.c $(LS_DIR)/ft_lstclear.c \
	$(LS_DIR)/ft_lstiter.c $(LS_DIR)/ft_lstmap.c

# Combine all source files
SRCS = $(MATRIX) $(CHAR_CH) $(STRING) $(MEM) $(CONV) $(FDIO) $(LIST)
OBJS = $(SRCS:%.c=$(OBJDIR)/%.o)

GNL_DIR = get_next_line
GNL_SRCS = $(GNL_DIR)/get_next_line.c $(GNL_DIR)/get_next_line_utils.c
GNL_OBJS = $(GNL_SRCS:$(GNL_DIR)/%.c=$(OBJDIR)/%.o)

PRINTF_DIR = ./ft_printf
PRINTF_LIB = $(PRINTF_DIR)/libftprintf.a

NAME = libft.a
OBJDIR = obj

all: $(NAME)

$(NAME): $(OBJS) $(GNL_OBJS) $(PRINTF_LIB)
	ar r $(NAME) $(OBJS) $(GNL_OBJS)

$(PRINTF_LIB):
	$(MAKE) -C $(PRINTF_DIR)

# Create object directories if they do not exist
$(OBJDIR):
	mkdir -p $(OBJDIR)

# Compile source files to object files
$(OBJDIR)/%.o: %.c libft.h | $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJDIR)/%.o: $(GNL_DIR)/%.c | $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) -rf $(OBJDIR)/*.o
	$(MAKE) -C $(PRINTF_DIR) fclean

# Full clean
fclean: clean
	$(RM) -f $(NAME)
	$(MAKE) -C $(PRINTF_DIR) fclean

re: fclean all

.PHONY: all bonus clean fclean re
