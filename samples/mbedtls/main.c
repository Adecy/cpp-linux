#include <stdio.h>

#include <mbedtls/x509_crt.h>

/*
Expected output:
Certificate info:
  cert. version     : 1
  serial number     : 3F:9C:84:BB:4C:EE:05:EA:C5:57:C8:D2:2D:66:61:D3:B7:9C:5A:F8
  issuer name       : C=FR, ST=Alsace, L=Strasbourg, CN=lucas.crt
  subject name      : C=FR, ST=Alsace, L=Strasbourg, CN=lucas.crt
  issued  on        : 2023-01-04 23:22:47
  expires on        : 2033-01-01 23:22:47
  signed using      : ECDSA with SHA256
  EC key size       : 256 bits
*/


static int read_crt(char *buf, size_t len)
{
	FILE *fp = fopen("samples/mbedtls/crt.der", "rb");
	if (!fp)
		return -1;

	size_t n = fread(buf, 1, len, fp);
	if (n <= 0)
		return -1;
	
	fclose(fp);

	return n;
}

int main(void)
{
	char buf[2048u];
	int ret = read_crt(buf, sizeof(buf));

	if (ret < 0)
		return ret;

	struct mbedtls_x509_crt crt;

	mbedtls_x509_crt_init(&crt);

	ret = mbedtls_x509_crt_parse_der_nocopy(&crt, (const unsigned char *)buf,
						(size_t)ret);
	if (ret < 0) {
		printf("mbedtls_x509_crt_parse_der_nocopy: %x", -ret);
		return ret;
	}

	char str[0x800u];

	ret = mbedtls_x509_crt_info(str, sizeof(str), "  ", &crt);
	if (ret < 0) {
		printf("mbedtls_x509_crt_info: %x", -ret);
		return ret;
	}

	mbedtls_x509_crt_free(&crt);

	printf("Certificate info:\n%s", str);

	return 0;
}