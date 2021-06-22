

#include "../../header/user_functions.h"

int		main(void)
{
	int	tab[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
	ft_rev_int_tab(tab, 10);
	for (int i = 0; i < 10; i++)
		printf("%d", tab[i]);
	return (0);
}
