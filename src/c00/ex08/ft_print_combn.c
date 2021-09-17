/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_combn.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/08/02 13:57:05 by alaamimi          #+#    #+#             */
/*   Updated: 2021/08/09 22:55:49 by alaamimi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_print_combn(int n)
{
	char	num[9];
	char	max[9];
	int		counter;

	counter = -1;
	while (++counter < n)
	{
		max[counter] = '9' - (n - 1) + counter;
		num[counter] = '0' + counter;
	}
	write(1, num, --counter + 1);
	while (counter >= 0)
	{
		if (num[counter] == max[counter])
			--counter;
		else if (++counter != n)
			num[counter] = num[counter - 1];
		else
			--counter;
		if (++num[counter] == max[counter] || counter == n - 1)
		{
			write(1, ", ", 2);
			write(1, num, n);
		}
	}
}
