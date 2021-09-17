/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_comb.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/08/02 01:28:18 by alaamimi          #+#    #+#             */
/*   Updated: 2021/08/02 01:33:16 by alaamimi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_print_comb(void)
{
	char	comb[3];

	comb[0] = '0' - 1;
	while (comb[0]++ < '7')
	{
		comb[1] = comb[0];
		while (comb[1]++ < '8')
		{
			comb[2] = comb[1];
			while (comb[2]++ < '9')
			{
				write(1, &comb[0], 1);
				write(1, &comb[1], 1);
				write(1, &comb[2], 1);
				if (comb[0] != '7')
				{
					write(1, ",", 1);
					write(1, " ", 1);
				}
			}
		}
	}
}
