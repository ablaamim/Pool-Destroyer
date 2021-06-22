
#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	int	a = atoi(av[1]);
	int	b = atoi(av[2]);
	ft_ultimate_div_mod(&a, &b);
	printf("div=%d, mod=%d", a, b);
	return (0);
}
