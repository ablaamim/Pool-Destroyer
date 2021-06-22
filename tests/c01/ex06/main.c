

#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	int	len = ft_strlen(av[1]);
	printf("%d", len+1);
	return (0);
}
