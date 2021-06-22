

#include "../../header/user_functions.h"

int		main(void)
{
	char	u_dest[27];
	char	t_dest[27];
	char	*src = "is heisenberg the kingpin?";
	ft_strcpy(u_dest, src);
	strcpy(t_dest, src);
	
	printf("%s %s", u_dest, t_dest);
	return (0);
}
