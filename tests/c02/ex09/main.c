

#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	size_t	len=strlen(av[1]);
	char	user[len+1];
	strcpy(user, av[1]);
//	ft_strupcase(user);
	printf("%s", ft_strcapitalize(user));
	return (0);
}
