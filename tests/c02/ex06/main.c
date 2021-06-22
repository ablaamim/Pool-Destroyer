/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gpatingr <gpatingr@sudent.42.fr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/18 23:57:27 by gpatingr          #+#    #+#             */
/*   Updated: 2021/02/19 15:59:09 by gpatingr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../header/user_functions.h"

int		main(int ac, char **av)
{
	(void)ac;
	char unprintable[33];
	for (int i = 1; i <= 31; i++) {
		unprintable[i-1] = i;
	}
	int user_unp=ft_str_is_printable(unprintable);
	int	user=ft_str_is_printable(av[1]);
	int user_empty = ft_str_is_printable("");
	printf("%d", user_unp);
	printf("%d", user);
	printf("%d", user_empty);
	return (0);
}
