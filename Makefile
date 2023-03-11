##
## EPITECH PROJECT, 2023
## cpp-epitech-template
## File description:
## Makefile
##

CC			=	g++

SRC			=	$(wildcard src/*.cpp)	\
				$(wildcard src/**/*.cpp)

TESTS 		=	$(filter-out src/main.cpp , $(SRC))	\
				$(wildcard tests/*.cpp)

OBJ			=	$(SRC:%.cpp=%.o)

NAME		=	a.out

CXXFLAGS	= -std=c++20 -Wall -Wextra -g3 -I./include

.PHONY: all
all:	$(NAME)

$(NAME):	$(OBJ)
	$(CC) -o $(NAME) $(OBJ) $(CXXFLAGS)
	make clean

.PHONY: clean
clean:
	rm -f $(OBJ)
	rm -f tests/*.o
	rm -rf *.gc*

.PHONY: fclean
fclean:	clean
	rm -f $(NAME)
	rm -f unit_tests

.PHONY:	re
re:	fclean all

###
# Tests
###
.PHONY: unit_tests
unit_tests:	fclean $(NAME)
	$(CC) -o unit_tests $(TESTS) $(CXXFLAGS) --coverage -lcriterion

.PHONY: tests_run
tests_run:	unit_tests
	./unit_tests

.PHONY: coverage
coverage:	tests_run
	gcovr --exclude tests

###
# Documentation
###
.PHONY: documentation
documentation:
	doxygen

.PHONY: clean_documentation
clean_documentation:
	rm -rf out/
