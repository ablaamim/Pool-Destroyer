

#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	int	user = ft_strcmp(av[1], av[2]);
	printf("%d", user);
	return (0);
}
