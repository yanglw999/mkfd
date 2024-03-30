# annotation is allowed in makefile
objects = main.o input.o calcu.o
main : $(objects)
	gcc -o main $(objects)

image = mkfd


.PHONY : clean 
.PHONY : build
.PHONY : run
%.o : %.c
	gcc -c $<

clean: 
	rm *.o
	rm main
	docker rmi $(image)

build:
	docker build -t $(image) .

run: 
	docker run -it $(image)