

#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	char	dest[1024];
	char	*user = ft_strcat(dest, av[1]);
	printf("%s%s", user, dest);
	return (0);
}
