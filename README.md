# Libft++, my ever evolving libft

Libft++ is my updated version of libft, building on what I learned from the original 42 project. It includes new features and improvements that I’m working on over time. This is not the same as the [Rank 00 libft](https://github.com/schardot/42_core/tree/main/rank00/libft), but rather a personal project that continues to grow and evolve.
Libft is a custom C library that provides a collection of utility functions to facilitate various operations in C programming, including string manipulation, memory management, character checking, linked list manipulation, and more.

## Table of Contents

1. [Installation](#installation)
2. [Usage](#usage)
3. [Functions](#functions)
    - [Character Checking Functions](#character-checking-functions)
    - [String Manipulation Functions](#string-manipulation-functions)
    - [Memory Manipulation Functions](#memory-manipulation-functions)
    - [Conversion Functions](#conversion-functions)
    - [Output Functions](#output-functions)
    - [Linked List Manipulation Functions](#linked-list-manipulation-functions)
    - [Matrix Manipulation Functions](#matrix-manipulation-functions)

## Installation

To use Libft in your project, clone the repository and include the `libft.h` header in your source files. Ensure to compile the provided source files along with your project files.

```bash
git clone <git@github.com:schardot/libftpp.git>
cd libft
make
```

## Usage
To use the functions in this library, include the libft.h header in your C source files:

```C
#include <libft.h>
```

# Functions

## Character Checking Functions

- `int ft_isalpha(int c);`
- `int ft_isdigit(int c);`
- `int ft_isalnum(int c);`
- `int ft_isascii(int c);`
- `int ft_isprint(int c);`
- `int ft_isspace(int c);`
- `int ft_tolower(int c);`
- `int ft_toupper(int c);`

## String Manipulation Functions

- `size_t ft_strlen(const char *s);`
- `size_t ft_strlcpy(char *dst, const char *src, size_t dstsize);`
- `size_t ft_strlcat(char *dst, const char *src, size_t size);`
- `char *ft_strnstr(const char *big, const char *little, size_t len);`
- `char *ft_strrchr(const char *s, int c);`
- `char *ft_strchr(const char *s, int c);`
- `int ft_strncmp(const char *str1, const char *str2, size_t n);`
- `char *ft_strdup(const char *str);`
- `char *ft_substr(char const *s, unsigned int start, size_t len);`
- `char *ft_strjoin(char const *s1, char const *s2);`
- `char *ft_strtrim(char const *s1, char const *set);`
- `char **ft_split(char const *s, char c);`
- `char *ft_strmapi(char const *s, char (*f)(unsigned int, char));`
- `void ft_striteri(char *s, void (*f)(unsigned int, char *));`

## Memory Manipulation Functions

- `void *ft_memset(void *b, int c, size_t len);`
- `void *ft_memcpy(void *dest, const void *src, size_t n);`
- `void *ft_memmove(void *dst, const void *src, size_t len);`
- `void *ft_memchr(const void *s, int c, size_t n);`
- `int ft_memcmp(const void *s1, const void *s2, size_t n);`
- `void ft_bzero(void *s, size_t n);`
- `void *ft_calloc(size_t count, size_t size);`

## Conversion Functions

- `int ft_atoi(const char *nptr);`
- `char *ft_itoa(int n);`
- `void	ft_putnbr_base(int nbr, char *base);`

## Output Functions

- `void ft_putchar_fd(char c, int fd);`
- `void ft_putstr_fd(char *s, int fd);`
- `void ft_putendl_fd(char *s, int fd);`
- `void ft_putnbr_fd(int n, int fd);`

## Linked List Manipulation Functions

- `t_list *ft_lstnew(void *content);`
- `void ft_lstadd_front(t_list **lst, t_list *new);`
- `int ft_lstsize(t_list *lst);`
- `t_list *ft_lstlast(t_list *lst);`
- `void ft_lstadd_back(t_list **lst, t_list *new);`
- `void ft_lstdelone(t_list *lst, void (*del)(void *));`
- `void ft_lstclear(t_list **lst, void (*del)(void *));`
- `void ft_lstiter(t_list *lst, void (*f)(void *));`
- `t_list *ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));`

## Matrix Manipulation Functions

- `void ft_free_matrix(char **matrix);`
- `char **ft_matrixdup(char **matrix, int height);`

