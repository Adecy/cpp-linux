#include <stdio.h>
#include <caniot/caniot.h>
#include <caniot/datatype.h>
#include <caniot/classes/class1.h>

int main(void)
{
	struct caniot_blc1_command cmd;

	caniot_cmd_blc1_init(&cmd);

	for (size_t i = 0; i < CANIOT_CLASS1_IO_COUNT; i++) {
		caniot_cmd_blc1_set_xps(&cmd, i, 7);

		/* Print cmd */
		for (uint8_t i = 0; i < sizeof(cmd); i++) {
			printf("%02X ", ((uint8_t *)&cmd)[i]);
		}
		printf("\n");
	}

	/* Print cmd */
	for (uint8_t i = 0; i < sizeof(cmd); i++) {
		printf("%02X ", ((uint8_t *)&cmd)[i]);
	}
	printf("\n");

	for (size_t i = 0; i < CANIOT_CLASS1_IO_COUNT; i++) {
		caniot_complex_digital_cmd_t xps = caniot_cmd_blc1_parse_xps(&cmd, i);
		printf("XPS[%zu] = %d\n", i, xps);
	}

	return 0;
}