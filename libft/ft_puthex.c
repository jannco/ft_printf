/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_puthex.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yadereve <yadereve@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/30 17:48:41 by yadereve          #+#    #+#             */
/*   Updated: 2023/10/30 18:09:56 by yadereve         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../ft_printf.h"

int	ft_puthex(unsigned int nb, char c)
{
	int	i;

	i = 0;
	if (nb <= 16)
	{
		if (c == 'x')
			i += putchar("0123456789absdef"[nb]);
		if (c == 'X')
			i += putchar("0123456789ABCDEF"[nb]);
	}
	else
		i += ft_puthex(nb / 16, c) + ft_puthex(nb % 16, c);
	return (i);
}
