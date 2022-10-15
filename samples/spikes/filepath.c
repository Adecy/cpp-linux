#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

#include <errno.h>

int app_fs_filepath_normalize(const char *path, char *out_path, size_t out_size)
{
	if (!path || !out_path || !out_size) {
		return -EINVAL;
	}

	const int add_slash = path[0] == '/' ? 0 : 1;
	const size_t len = strlen(path) + add_slash;

	if (len >= out_size) {
		return -ENOMEM;
	}

	strncpy(out_path + add_slash, path, out_size - add_slash);
	out_path[0] = '/';

	return len;
}

const char *filepath = "/files";
char out[7];

int main(void)
{
	int ret = app_fs_filepath_normalize(filepath, out, sizeof(out));
	printf("app_fs_filepath_normalize(%s, %p, %zu) = %d\n", filepath, out, sizeof(out), ret);
	out[sizeof(out) - 1] = '\0';
	printf("out: %s\n", out);
}