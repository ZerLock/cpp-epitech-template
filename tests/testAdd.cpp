/*
** EPITECH PROJECT, 2023
** cpp-epitech-template
** File description:
** testAdd
*/

#include <criterion/criterion.h>
#include "Add.hpp"

Test (add_two_numbers, compute)
{
    Add add;

    auto result = add.compute(1, 1);
    cr_assert_eq(result, 2);
}
