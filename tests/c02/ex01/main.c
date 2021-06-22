
#include "../../header/user_functions.h"

int		main(void)
{
	char	u_dest[50];
	char	t_dest[50];
	char	*src = "is heisenberg the kingpin?";
	ft_strncpy(u_dest, src, 50);
	strncpy(t_dest, src, 50);
	printf("%s %s %ld %ld", u_dest, t_dest, strlen(u_dest), strlen(t_dest));
	return (0);
}
