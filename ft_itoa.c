/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: marvin <marvin@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/05 13:41:23 by abettini          #+#    #+#             */
/*   Updated: 2023/03/12 11:16:55 by marvin           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static void	ft_putnbr_in_str(int nbr, char *str, int len)
{
	int			end;

	str[len] = '\0';
	end = 0;
	if (nbr == INT_MIN)
	{
		len--;
		str[len] = (-(INT_MIN % 10)) + '0';
		nbr = nbr / 10;
	}
	if (nbr < 0)
	{
		str[0] = '-';
		nbr = -nbr;
		end++;
	}
	while (len > end)
	{
		len--;
		str[len] = (nbr % 10) + '0';
		nbr = nbr / 10;
	}
}

static int	ft_len(int nbr)
{
	int	len;

	len = 1;
	if (nbr == INT_MIN)
	{
		len++;
		nbr = nbr / 10;
	}
	if (nbr < 0)
	{
		nbr = -nbr;
		len++;
	}
	while (nbr >= 10)
	{
		nbr = nbr / 10;
		len++;
	}
	return (len);
}

char	*ft_itoa(int n)
{
	char		*str;
	int			len;

	len = ft_len(n);
	str = malloc(sizeof(char) * (len + 1));
	if (!str)
		return (NULL);
	ft_putnbr_in_str(n, str, len);
	return (str);
}

/*
#include <stdio.h>

int	main()
{
	printf("%s\n", ft_itoa(0));
	printf("%s\n", ft_itoa(9));
	printf("%s\n", ft_itoa(-9));
	printf("%s\n", ft_itoa(10));
	printf("%s\n", ft_itoa(-10));
	printf("%s\n", ft_itoa(8124));
	printf("%s\n", ft_itoa(-9874));
	printf("%s\n", ft_itoa(543000));
	printf("%s\n", ft_itoa(-2147483648LL));
	printf("%s\n", ft_itoa(2147483647));
}
*/
