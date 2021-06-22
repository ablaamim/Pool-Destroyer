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
	// C'est degueu mais ca marche
	int		n = 13;
	int		*p = &n;
	int		**pp = &p;
	int		***ppp = &pp;
	int		****pppp = &ppp;
	int		*****ppppp = &pppp;
	int		******pppppp = &ppppp;
	int		*******ppppppp = &pppppp;
	int		********pppppppp = &ppppppp;
	int		*********nbr = &pppppppp;
	ft_ultimate_ft(nbr);
	printf("%d", *********nbr);
	return (0);
}
