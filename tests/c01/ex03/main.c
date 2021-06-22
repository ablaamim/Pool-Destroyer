
#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	int	a = atoi(av[1]);
	int	b = atoi(av[2]);
	int	div, mod;
	ft_div_mod(a, b, &div, &mod);
	printf("div=%d, mod=%d", div, mod);
	return (0);
}
