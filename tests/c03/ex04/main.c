

#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	char	*user = ft_strstr(av[1], av[2]);
	char	*libc = strstr(av[1], av[2]);
	if (strcmp(user, libc) == 0)
		printf("ok");
	else
		printf("%s %s\n", user, libc);
	return (0);
}
