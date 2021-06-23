

#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	int	test = atoi(av[1]);
	int	user = ft_recursive_factorial(test);
	printf("%d", user);
	return (0);
}
