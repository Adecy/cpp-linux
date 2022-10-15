#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

static bool url_match_noarg(const char *route,
			    size_t route_len,
			    const char *url,
			    size_t url_len,
			    bool exact)
{
	if (exact && (route_len != url_len))
		return false;

	return strncmp(route, url, route_len) == 0;
}

const char *route = "/files";
const char *url = "/files/RAM:/lua/match.lua";	

int main(void)
{
	const bool exact = false;
	bool res = url_match_noarg(route, strlen(route), url, strlen(url), exact);
	printf("url_match_noarg(%s, %lu, %s, %lu, %d) = %d\n", 
	       route, strlen(route), url, strlen(url), exact, res);
}