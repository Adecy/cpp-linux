#ifndef _LIBPARSER_H_
#define _LIBPARSER_H_

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

/* Quert arg parser */

struct query_arg
{
	char *key;
	char *value;
};

int query_args_parse(char *url, struct query_arg qargs[], size_t alen);

char *query_args_parse_find(char *url, const char *key);

char *query_arg_get(struct query_arg qargs[], size_t alen, const char *key);

static inline bool query_arg_is_set(const char *key, struct query_arg qargs[], size_t alen)
{
	return query_arg_get(qargs, alen, key) != NULL;
}

/* Route parse */

#endif /* _LIBPARSER_H_ */