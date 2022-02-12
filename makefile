OBJECTS = build/main.o build/foo.o

INCLUDES = include

FLAGS = -Wall

build/final : $(OBJECTS)
	g++ $(OBJECTS) $(FLAGS) -o $@

build/main.o : src/main.cpp include/foo.hpp
	g++ -I$(INCLUDES) $(FLAGS) -c $< -o $@

build/foo.o : src/foo.cpp include/foo.hpp
	g++ -I$(INCLUDES) $(FLAGS) -c $< -o $@

clean: 
	rm build/final $(OBJECTS)