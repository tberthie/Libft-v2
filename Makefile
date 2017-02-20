OBJ=$(addprefix ft_,$(addsuffix .o,\
	atoi atoip itoa abs\
	freeret freeswap memalloc memcpy m ptrswap\
	gnl rfc gdc\
	isdir\
	putchar putnchar putnbr putstr\
	strchr strrchr strstr strcmp strncmp stricmp strcpy strdup strjoin strcjoin strsjoin\
		strlen strrem strfrmchr\
	strnew strpush strspush strins strsins strrem\
	strarrdup strarrstr strarrstrn strarrrem strarrstrlen strarrstrstrr\
	parrnew parrfree parrelmfree parrpush parrprem parrrem parrlen parrdup parrndup parrjoin))
NAME=libft.a

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

%.o: %.c
	gcc -c $< -o $@ -Weverything

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean $(NAME)
