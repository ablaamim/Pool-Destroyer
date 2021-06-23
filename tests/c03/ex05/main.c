

#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	char	dest[1024];
	int		size = atoi(av[2]);
	int		user = ft_strlcat(dest, av[1], size);
	printf("%d %s\n", user, dest);
	return (0);
}
