/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_comb2.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/08/02 01:34:38 by alaamimi          #+#    #+#             */
/*   Updated: 2021/08/02 01:39:49 by alaamimi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

void	ft_print_comb2(void)
{
	int	comb[2];

	comb[0] = -1;
	while (comb[0]++ < 98)
	{
		comb[1] = comb[0];
		while (comb[1]++ < 99)
		{
			ft_putchar(comb[0] / 10 + 48);
			ft_putchar(comb[0] % 10 + 48);
			ft_putchar(' ');
			ft_putchar(comb[1] / 10 + 48);
			ft_putchar(comb[1] % 10 + 48);
			if (comb[0] != 98)
			{
				ft_putchar(',');
				ft_putchar(' ');
			}
		}
	}
}
