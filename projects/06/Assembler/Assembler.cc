#include <iostream>

#include "Parser.h"
#include "Code.h"

int main(int argv, char** args) {
    if (argv != 2) {
        std::cout << "usage: Assembler [<file-path>]\n"
                  << '\n'
                  << "Please input <file-path> to compile\n";
        return 0;
    }

    rn::Parser parser(args[1]);
    rn::Code code;

    for (; parser.hasMoreCommands(); ) {
        parser.advance();
        COMMAND_T type = parser.commandType();
        if (type == COMMAND_T::A_COMMAND) std::cout << "@" + parser.symbol() << '\n';
        else if (type == COMMAND_T::L_COMMAND) std::cout << "(" + parser.symbol() << ")\n";
        else if (type == COMMAND_T::C_COMMAND) {
            std::cout << "111" + code.comp(parser.comp()) + code.dest(parser.dest()) + code.jump(parser.jump()) << '\n';
        }
    }
    return 0;
}