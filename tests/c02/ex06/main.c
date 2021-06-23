

#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	char unprintable[33];
	for (int i = 1; i <= 31; i++) {
		unprintable[i-1] = i;
	}
	int user_unp=ft_str_is_printable(unprintable);
	int	user=ft_str_is_printable(av[1]);
	int user_empty = ft_str_is_printable("");
	printf("%d", user_unp);
	printf("%d", user);
	printf("%d", user_empty);
	return (0);
}
