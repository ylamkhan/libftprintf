/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnumbre.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ylamkhan <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/05 22:55:37 by ylamkhan          #+#    #+#             */
/*   Updated: 2022/11/05 22:57:00 by ylamkhan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putnumbre(int c)
{
	long	i;
	int		j;
	char	s;

	j = 0;
	i = (long)c;
	if (i < 0)
	{
		write(1, "-", 1);
		i = (-1) * i;
		j++;
	}
	if (i >= 10)
	{
		j += ft_putnumbre(i / 10);
		s = i % 10 + 48;
		write(1, &s, 1);
		j++;
	}
	else
	{
		s = i % 10 + 48;
		write(1, &s, 1);
		j++;
	}
	return (j);
}
