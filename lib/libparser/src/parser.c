#include <libparser/libparser.h>

#include <errno.h>
#include <stdbool.h>
#include <string.h>
#include <stdio.h>

#include <common.h>

int query_args_parse(char *url, struct query_arg qargs[], size_t alen)
{
	if (!url || (!qargs && alen))
		return -EINVAL;

	/* Temporary query argument.
	 * To keep track of current state */
	struct query_arg zarg;

	struct query_arg *arg = NULL;
	size_t count = 0u;

	char *chr = url;

	do {
		switch (*chr) {
		case '?':
			if (count)
				/* If argument already found, return error */
				return -EINVAL;
		case '&':
			*chr = '\0';
			/* If previous argument is not valid, ignore it */
			if (!arg || *arg->key != '\0') {
				arg = (count < alen) ? &qargs[count] : &zarg;
				arg->value = NULL; /* In case no value is found */
				count++;
			}
			arg->key = chr + 1u;
			break;
		case '=':
			*chr = '\0';
			if (arg) {
				arg->value = chr + 1u;
			}
			break;
		default:
			break;
		}

		chr++;
	} while (*chr != '\0');

	/* If last argument is empty, skip it */
	if (arg && *arg->key == '\0') {
		count--;
	}

	return (int)count;
}

/* TODO improve this: don't directly use query_args_parse
 * but try to parse the string with the same method
 * but trying to find the key
 */
char *query_args_parse_find(char *url, const char *key)
{
	struct query_arg qargs[10u];
	char *value = NULL;

	int count = query_args_parse(url, qargs, ARRAY_SIZE(qargs));
	if (count > 0) {
		value = query_arg_get(qargs, MIN((uint32_t)count, ARRAY_SIZE(qargs)), key);
	}

	return value;
}

char *query_arg_get(struct query_arg qargs[], size_t alen, const char *key)
{
	if (!qargs || !key)
		return NULL;

	for (size_t i = 0u; i < alen; i++) {
		struct query_arg *const arg = &qargs[i];
		if (arg->key && strcmp(arg->key, key) == 0) {
			return arg->value;
		}
	}

	return NULL;
}
