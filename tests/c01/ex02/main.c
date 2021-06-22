
#include "../../header/user_functions.h"

int		main(void)
{
	int	s = 13;
	int	t = 42;
	int	*a = &s;
	int	*b = &t;
	ft_swap(a, b);
	printf("a=%d, b=%d", *a, *b);
	return (0);
}
