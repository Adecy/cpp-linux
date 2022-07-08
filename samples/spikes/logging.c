#include <stdio.h>

#include "logging.h"
#define LOG_LEVEL LOG_LEVEL_ALL

const char string[] = "Hello, World!";

int main(void)
{
	LOG_INF("Info");
	LOG_DBG("DBG");
	LOG_WRN("Warning :!:::!!!");
	LOG_ERR("Error no code");
	LOG_ERR("Error: %x", 0x23);

	LOG_WRN_RAW("string=");
	LOG_HEXDUMP_WRN(string, sizeof(string));
}