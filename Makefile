LDFLAGS=$(shell pkg-config ply-splash-core --libs)
CFLAGS=$(shell pkg-config ply-splash-core --cflags) -fPIC

sabily-text.so: sabily-text.o
	$(CC) -shared -o $@ $(LDFLAGS) $<

clean:
	-rm sabily-text.o sabily-text.so
