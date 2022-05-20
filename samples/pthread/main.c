#include <stdio.h>

#include <unistd.h>
#include <pthread.h>

pthread_t t1;

static void *thread(void *_a)
{
	(void) _a;

	for(unsigned int i = 0; i < 3; i++) {
		printf("Hello from thread : %u\n", i);
		sleep(1);
	}

	pthread_exit(NULL);
}

int main(void)
{
	int ret;

	ret = pthread_create(&t1, NULL, thread, NULL);
	printf("pthread_create() ret = %d\n", ret);

	pthread_join(t1, NULL);

	return 0U;
}