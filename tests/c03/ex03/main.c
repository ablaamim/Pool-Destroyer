

#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	int		len = atoi(av[2]);
	char	dest[1024];
	char	*user = ft_strncat(dest, av[1], len);
	printf("%s %s\n", user, dest);
	return (0);
}
