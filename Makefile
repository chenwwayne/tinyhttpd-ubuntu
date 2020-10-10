all: httpd client
LIBS = -lpthread #-lsocket
httpd: httpd.c
	#gcc -g -W -Wall $(LIBS) -o $@ $<
	gcc  -W -Wall  -o httpd httpd.c -lpthread 

client: simpleclient.c
	gcc -W -Wall -o $@ $<
clean:
	rm httpd
