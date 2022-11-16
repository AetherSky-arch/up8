#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

int	main(int ac, char **av)
{
	int	i;
	char	res[] = "000000000000000";
	int	num;

	(void)ac;

	num = atoi(av[1]);

	if(num == 0)
	{
		printf("%d\n",0);
		return(0);
	}

	i = 14;
	while(num != 0)
	{
		res[i] = num % 2 + 48;
		num = num / 2;
		i--;
	}
	i = 0;
	while(res[i] == 48)
		i++;
	while(res[i])
	{
		if(res[i] == 48)
			ft_putchar('0');
		if(res[i] == 49)
			ft_putchar('1');
		i++;
	}
	ft_putchar('\n');
}
