
#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	int	nb = atoi(av[1]);
	int	power = atoi(av[2]);
	int	user = ft_iterative_power(nb, power);
	printf("%d", user);
	return (0);
}
