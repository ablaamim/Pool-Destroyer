

#include "../../header/user_functions.h"

int		main(void)
{
	int	tab[10] = {8, 6, 3, 1, 5, 4, 7, 2, 9, 0};
	ft_sort_int_tab(tab, 10);
	for (int i = 0; i < 10; i++)
		printf("%d", tab[i]);
	return (0);
}
