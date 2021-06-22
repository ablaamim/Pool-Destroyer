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
	int	user=ft_str_is_uppercase(av[1]);
	printf("%d", user);
	return (0);
}
