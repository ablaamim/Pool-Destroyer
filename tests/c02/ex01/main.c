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

int		main(void)
{
	char	u_dest[50];
	char	t_dest[50];
	char	*src = "is heisenberg the kingpin?";
	ft_strncpy(u_dest, src, 50);
	strncpy(t_dest, src, 50);
	printf("%s %s %ld %ld", u_dest, t_dest, strlen(u_dest), strlen(t_dest));
	return (0);
}
