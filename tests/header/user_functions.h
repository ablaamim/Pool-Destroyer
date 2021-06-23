/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   user_functions.h                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alaamimi <alaamimi@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/06/21 19:20:31 by alaamimi          #+#    #+#             */
/*   Updated: 2021/06/23 17:03:08 by alaamimi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef _USER_FUNCTIONS_H_
# define _USER_FUNCTIONS_H_

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>

// c00 functions
void			ft_putchar(char c);
void			ft_print_alphabet(void);
void			ft_print_reverse_alphabet(void);
void			ft_print_numbers(void);
void			ft_is_negative(int n);
void			ft_print_comb(void);
void			ft_print_comb2(void);
void			ft_putnbr(int nb);
void			ft_print_combn(int n);

// c01
void			ft_ft(int *nbr);
void			ft_ultimate_ft(int *********nbr);
void			ft_swap(int *a, int *b);
void			ft_div_mod(int a, int b, int *div, int *mod);
void			ft_ultimate_div_mod(int *a, int *b);
void			ft_putstr(char *str);
int				ft_strlen(char *str);
void			ft_rev_int_tab(int *tab, int size);
void			ft_sort_int_tab(int *tab, int size);

// c02
char			*ft_strcpy(char *dest, char *src);
char			*ft_strncpy(char *dest, char *src, unsigned int n);
int				ft_str_is_alpha(char *str);
int				ft_str_is_numeric(char *str);
int				ft_str_is_lowercase(char *str);
int				ft_str_is_uppercase(char *str);
int				ft_str_is_printable(char *str);
char			*ft_strupcase(char *str);
char			*ft_strlowcase(char *str);
char			*ft_strcapitalize(char *str);
unsigned int	ft_strlcpy(char *dest, char *src, unsigned int size);
void			ft_putstr_non_printable(char *str);

// c03
int				ft_strcmp(char *s1, char *s2);
int				ft_strncmp(char *s1, char *s2, unsigned int n);
char			*ft_strcat(char *dest, char *src);
char			*ft_strncat(char *dest, char *src, unsigned int nb);
char			*ft_strstr(char *src, char *to_find);
int				ft_strlcat(char *dest, char *src, unsigned int size);

// c04
int				ft_strlen(char *str);
void			ft_putstr(char *str);
void			ft_putnbr(int nb);
int				ft_atoi(char *str);

// c05
int				ft_iterative_factorial(int nb);
int				ft_recursive_factorial(int nb);
int				ft_iterative_power(int nb, int power);
int				ft_recursive_power(int nb, int power);
int				ft_fibonacci(int index);
int				ft_sqrt(int nb);
int				ft_is_prime(int nb);
int				ft_find_next_prime(int nb);

#endif
