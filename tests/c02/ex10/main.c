

#include "../../header/user_functions.h"
#include <bsd/string.h> // linux only

int		main(void)
{
	char	u_dest[27];
//	char	t_dest[27];
	char	*src = "marvin the bot";
	ft_strlcpy(u_dest, src, 7);
//	strlcpy(t_dest, src, 13);
	
	printf("%s", u_dest);
	return (0);
}
