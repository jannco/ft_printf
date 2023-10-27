/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yadereve <yadereve@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/26 11:13:27 by yadereve          #+#    #+#             */
/*   Updated: 2023/10/27 19:41:40 by yadereve         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int ft_puthex(unsigned nb, char c)
{
	int	x;

	x = 0;
	if (nb <= 16)
	{
		if (c == 'x')
			x += putchar("0123456789absdef"[nb]);
		if (c == 'X')
			x += putchar("0123456789ABCDEF"[nb]);
	}
	else
		x += ft_puthex(nb / 16, c) + ft_puthex(nb % 16, c);
	return (x);
}

int ft_putpoint(unsigned long nb, int flag)
{
	int	x;

	x = 0;
	if (flag)
			puts("0x");
	if (nb >= 16)
		x += ft_putpoint(nb / 16, 0);
	x += putchar("0123456789abcdef"[nb % 16]);
	return (x);
}

int	main()
{
	int	d;
	int *a;

	d = 42;
	a = &d;
	printf("x:%12x\n", d);
	printf("p:%12p\n", a);
	printf("&p:%11p\n", &d);

	printf("\nmy x: ");
	ft_puthex(d, 'x');

	unsigned long n;
	// const char *base;

	n = (unsigned long)a;
	// base = "0123456789abcdef";

	printf("\nmy p: ");
	ft_putpoint(n, 1);

    // char character = 'A';
    // char string[] = "Hello, World!";
    // int integer = 42;
    // unsigned int unsignedInteger = 12345;
    // void *pointer = (void*)0x12345678;
    // int hexNumber = 0xABCD;

    // printf("Character: %c\n", character);
    // ft_printf("my_Character: %c\n", character);
    // printf("String: %s\n", string);
    // ft_printf("my_String: %s\n", string);
    // printf("Pointer: %p\n", pointer);
    // ft_printf("my_Pointer: %p\n", pointer);
    // printf("Integer: %i\n", integer);
    // ft_printf("Imy_nteger: %i\n", integer);
    // printf("Unsigned Integer: %u\n", unsignedInteger);
    // ft_printf("my_Unsigned Integer: %u\n", unsignedInteger);
    // printf("Hex Lowercase: %x\n", hexNumber);
    // ft_printf("my_Hex Lowercase: %x\n", hexNumber);
    // printf("Hex Uppercase: %X\n", hexNumber);
    // ft_printf("my_Hex Uppercase: %X\n", hexNumber);
    // printf("Percent Sign: %%\n");
    // ft_printf("my_Percent Sign: %%\n");
    return 0;
}
