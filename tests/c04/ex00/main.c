

#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	int		user = ft_strlen(av[1]);
	int		res = strlen(av[1]);
	if (user == res)
		printf("ok");
	else
		printf("%d", user);
	return (0);
}
