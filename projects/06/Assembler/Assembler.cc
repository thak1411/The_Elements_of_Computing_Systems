#include <iostream>
#include <string>
#include <bitset>

#include "SymbolTable.h"
#include "Parser.h"
#include "Code.h"

int main(int argv, char** args) {
    if (argv != 2) {
        std::cout << "usage: Assembler [<file-path>]\n"
                  << '\n'
                  << "Please input <file-path> to compile\n";
        return 0;
    }

    rn::Parser parser(args[1]), sparser(args[1]);
    rn::SymbolTable symbolTable;
    rn::Code code;

    INT pre = 0;
    for (auto& it : { "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "R13", "R14", "R15" }) symbolTable.addEntry(it, pre++);
    pre = 0;
    for (auto& it : { "SP", "LCL", "ARG", "THIS", "THAT" }) symbolTable.addEntry(it, pre++);
    symbolTable.addEntry("SCREEN", 0x4000);
    symbolTable.addEntry("KBD", 0x6000);

    for (INT pc = 0; sparser.hasMoreCommands(); ) {
        sparser.advance();
        COMMAND_T type = sparser.commandType();
        if (type == COMMAND_T::A_COMMAND) ++pc; 
        else if (type == COMMAND_T::L_COMMAND) {
            auto symbol = sparser.symbol();
            if (!(symbol[0] >= '0' && symbol[0] <= '9') && !symbolTable.contains(symbol)) symbolTable.addEntry(symbol, pc);
        }
        else if (type == COMMAND_T::C_COMMAND) ++pc;
    }

    std::ofstream out(std::string(args[1]).substr(0, std::string(args[1]).find(".asm")) + ".hack");

    for (INT ram = 16; parser.hasMoreCommands(); ) {
        parser.advance();
        COMMAND_T type = parser.commandType();
        if (type == COMMAND_T::A_COMMAND) {
            auto symbol = parser.symbol();
            if (!(symbol[0] >= '0' && symbol[0] <= '9')) {
                if (!symbolTable.contains(symbol)) symbolTable.addEntry(symbol, ram++);
                out << std::bitset < 16 >(symbolTable.getAddress(symbol)).to_string() << '\n';
            } else out << std::bitset < 16 >(std::stoi(symbol)).to_string() << '\n';
        }
        else if (type == COMMAND_T::C_COMMAND) {
            out << "111" + code.comp(parser.comp()) + code.dest(parser.dest()) + code.jump(parser.jump()) << '\n';
        }
    }
    out.close();
    return 0;
}