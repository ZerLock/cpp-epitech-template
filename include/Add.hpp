/*
** EPITECH PROJECT, 2023
** cpp-epitech-template
** File description:
** Add
*/

#ifndef ADD_HPP_
#define ADD_HPP_

#include <iostream>

class Add {
    public:
        Add();
        ~Add();

        /**
         * @brief Add two numbers (a & b)
         *
         * @param a
         * @param b
         * @return std::size_t
         */
        std::size_t compute(std::size_t a, std::size_t b) const;

    protected:
    private:
};

#endif /* !ADD_HPP_ */
