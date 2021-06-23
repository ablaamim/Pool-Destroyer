

#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	int	nb = atoi(av[1]);
	int	user = ft_fibonacci(nb);
	printf("%d", user);
	return (0);
}
