edit : main.o common.o window_main.o window_test.o
	gcc -o edit main.o common.o window_main.o window_test.o \
	`pkg-config --cflags --libs gtk+-2.0`


main.o : main.c common_func.h window_main.h window_test.h
	gcc -c main.c `pkg-config --cflags --libs gtk+-2.0`

window_main.o : window_main.c common_func.h window_main.h
	gcc -c window_main.c `pkg-config --cflags --libs gtk+-2.0`

common.o : common.c common_func.h
	gcc -c common.c `pkg-config --cflags --libs gtk+-2.0`

window_test.o : window_test.c window_test.h
	gcc -c window_test.c `pkg-config --cflags --libs gtk+-2.0`

clean :
	-rm edit main.o window_main.o common.o window_test.o
