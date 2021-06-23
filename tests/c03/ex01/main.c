
#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	int	n = atoi(av[3]);
	int	user = strncmp(av[1], av[2], n);
	printf("%d", user);
//	printf("%s\n%s\n%d", av[1], av[2], n);
	return (0);
}
