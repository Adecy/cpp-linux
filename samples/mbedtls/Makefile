all: crt.der

key.der:
	openssl ecparam -name prime256v1 -genkey -noout -outform DER -out $@

crt.der: key.der
	openssl req -new -x509 -key $< -outform DER -out $@ -days 3650 -config=crt.conf
	openssl x509 -in crt.der -inform DER -text -noout

clean:
	rm -f key.der crt.der