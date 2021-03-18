#include "Code.h"

namespace rn {
    /**
     * @brief compile dest symbol to binary code
     * 
     * @param symbol - symbol for compile
     * @return std::string - binary code
     */
    std::string Code::dest(std::string symbol) {
        std::string bin = "000";
        for (auto& it : symbol) {
            if (it == 'A') bin[0] = '1';
            else if (it == 'D') bin[1] = '1';
            else if (it == 'M') bin[2] = '1';
            else {
                std::cerr << "Assembler: Compilation Error!\n";
                exit(0);
            }
        }
        return bin;
    }

    /**
     * @brief compile comp symbol to binary code
     * 
     * @param symbol - symbol for compile
     * @return std::string - binary code
     */
    std::string Code::comp(std::string symbol) {
        if (symbol == "0") return "0101010";
        else if (symbol == "1") return "0111111";
        else if (symbol == "-1") return "0111010";
        else if (symbol == "D") return "0001100";
        else if (symbol == "A") return "0110000";
        else if (symbol == "!D") return "0001101";
        else if (symbol == "!A") return "0110001";
        else if (symbol == "-D") return "0001111";
        else if (symbol == "-A") return "0110011";
        else if (symbol == "D+1") return "0011111";
        else if (symbol == "A+1") return "0110111";
        else if (symbol == "D-1") return "0001110";
        else if (symbol == "A-1") return "0110010";
        else if (symbol == "D+A") return "0000010";
        else if (symbol == "D-A") return "0010011";
        else if (symbol == "A-D") return "0000111";
        else if (symbol == "D&A") return "0000000";
        else if (symbol == "D|A") return "0010101";
        else if (symbol == "M") return "1110000";
        else if (symbol == "!M") return "1110001";
        else if (symbol == "-M") return "1110011";
        else if (symbol == "M+1") return "1110111";
        else if (symbol == "M-1") return "1110010";
        else if (symbol == "D+M") return "1000010";
        else if (symbol == "D-M") return "1010011";
        else if (symbol == "M-D") return "1000111";
        else if (symbol == "D&M") return "1000000";
        else if (symbol == "D|M") return "1010101";
        else {
            std::cerr << "Assembler: Compilation Error!\n";
            exit(0);
        }
    }

    /**
     * @brief compile jump symbol to binary code
     * 
     * @param symbol - symbol for compile
     * @return std::string - binary code
     */
    std::string Code::jump(std::string symbol) {
        if (symbol == "") return "000";
        else if (symbol == "JGT") return "001";
        else if (symbol == "JEQ") return "010";
        else if (symbol == "JGE") return "011";
        else if (symbol == "JLT") return "100";
        else if (symbol == "JNE") return "101";
        else if (symbol == "JLE") return "110";
        else if (symbol == "JMP") return "111";
        else {
            std::cerr << "Assembler: Compilation Error!\n";
            exit(0);
        }
    }
}