#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>
#include <sys/types.h>

/**
 * infinite_while - Run an infinite while loop.
 *
 * Return: 0 success
*/

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - Entry prgrm five zombie process
 *
 * Return: 0 program run successufly
*/

int main(void)
{
	char counter = 0;
	pid_t PiDD;

	while (counter < 5)
	{
		PiDD = fork();
		if (PiDD > 0)
		{
			printf("Zombie process created, PID: %d\n", PiDD);
			sleep(1);
			counter++;
		}
		else
			exit(0);
	}

	infinite_while();

	return (EXIT_SUCCESS);
}
