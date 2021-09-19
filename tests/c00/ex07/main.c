/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/06/21 19:19:04 by alaamimi          #+#    #+#             */
/*   Updated: 2021/06/21 19:19:07 by alaamimi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../header/user_functions.h"
#include <stdlib.h>

int		main(int ac, char **av)
{
	(void)ac;
	int	nb = atoi(av[1]);
	ft_putnbr(nb);
	return (0);
}
