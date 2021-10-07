/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/08/26 21:18:43 by alaamimi          #+#    #+#             */
/*   Updated: 2021/10/07 14:34:49 by root             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../header/user_functions.h"
#include <stdio.h>

int	main(void)
{
	char	str[] = "Hello!";

	printf("%s", ft_strdup(str));
	return (EXIT_SUCCESS);
}
