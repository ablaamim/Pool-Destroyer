

#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	int	user=ft_str_is_uppercase(av[1]);
	printf("%d", user);
	return (0);
}
