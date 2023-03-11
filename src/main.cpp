/*
** EPITECH PROJECT, 2023
** cpp-epitech-template
** File description:
** main
*/

#include "Add.hpp"

int main(void)
{
    Add add;

    auto result = add.compute(1, 2);
    std::cout << result << std::endl;

    return 0;
}
