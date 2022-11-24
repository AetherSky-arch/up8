#include <stdlib.h>
#include <stdio.h>

int     moyenne(int *numbers)
{
        int     res;
        int     i;

        res = 0;
        i = 0;
        while(numbers[i])
        {
                res = res + numbers[i];
                i++;
        }
        res = res / i;
        return(res);
}

int	main(int ac, char **av)
{
	(void)ac;
	int	numbers[] = {0,0,0,0,0,0,0,0,0,0};
	int	i;
	int	avcounter;

	avcounter = 1;
	i = 0;
	while((i < 10) && (av[avcounter]))
	{
		numbers[i] = atoi(av[avcounter]);
		i++;
		avcounter++;
	}
	printf("%d\n",moyenne(numbers));
	return(0);
}
