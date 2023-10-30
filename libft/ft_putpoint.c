/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putpoint.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yadereve <yadereve@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/30 17:50:24 by yadereve          #+#    #+#             */
/*   Updated: 2023/10/30 18:14:40 by yadereve         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../ft_printf.h"

int	ft_putpoint(unsigned long int nb, int flag)
{
	int	i;

	i = 0;
	if (flag)
		ft_putstr("0x");
	if (nb >= 16)
		i += ft_putpoint(nb / 16, 0);
	i += putchar("0123456789abcdef"[nb % 16]);
	return (i);
}
