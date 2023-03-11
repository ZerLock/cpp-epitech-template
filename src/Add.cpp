/*
** EPITECH PROJECT, 2023
** cpp-epitech-template
** File description:
** Add
*/

#include "Add.hpp"

Add::Add()
{
    std::cout << "Add class constructor" << std::endl;
}

Add::~Add()
{
    std::cout << "Add class deconstructor" << std::endl;
}

std::size_t Add::compute(std::size_t a, std::size_t b) const
{
    return a + b;
}
