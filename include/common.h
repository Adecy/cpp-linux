#ifndef _LINUX_DEV_COMMON_H_
#define _LINUX_DEV_COMMON_H_

#define ARG_UNUSED(arg) ((void) arg)

#define MIN(a, b) ((a) < (b) ? (a) : (b))
#define MAX(a, b) ((a) > (b) ? (a) : (b))

#define ARRAY_SIZE(array )((size_t) (sizeof(array) / sizeof((array)[0])))
#define CONTAINER_OF(ptr, type, field) ((type *)(((char *)(ptr)) - offsetof(type, field)))

#endif