/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abettini <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/04 08:34:03 by abettini          #+#    #+#             */
/*   Updated: 2022/10/07 15:02:26 by abettini         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_isalnum(int arg)
{
	if ((arg >= 'a' && arg <= 'z')
		|| (arg >= 'A' && arg <= 'Z')
		|| (arg >= '0' && arg <= '9'))
		return (1);
	return (0);
}
