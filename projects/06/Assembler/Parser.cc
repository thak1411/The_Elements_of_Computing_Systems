#include "Parser.h"

namespace rn {
    /**
     * @brief delete all white space & comment in str
     * 
     * @param str - target string
     * @return std::string - string not contained whitespace & comment
     */
    std::string deleteWS(std::string str) {
        std::string ns;
        for (auto& it : str) {
            if (it == '\n' || it == '\r' || it == '\t' || it == ' ') continue;
            ns += it;
        }
        std::string::size_type it;
        if ((it = ns.find("//")) != std::string::npos) return ns.substr(0, it);
        return ns;
    }

    /**
     * @brief Construct of Parser - read file for compile
     * 
     * @param fileName - file path for compile
     */
    Parser::Parser(LPCSTR fileName) {
        std::ifstream in(fileName);
        if (!in) {
            std::cerr << "Assembler: Error: input file not exists\n";
            exit(0);
        }
        pc = -1;
        for (std::string line; in.peek() != EOF; ) {
            std::getline(in, line);
            code.push_back(deleteWS(line));
        }
    }

    /**
     * @brief check exists next command
     * 
     * @return BOOL - if has next command then 1 else 0
     */
    BOOL Parser::hasMoreCommands() {
        return pc + 1 < code.size();
    }

    /**
     * @brief move to next command
     * 
     * @return VOID 
     */
    VOID Parser::advance() {
        ++pc;
    }

    /**
     * @brief Check command type
     * 
     * @return COMMAND_T - cammand type
     */
    COMMAND_T Parser::commandType() {
        if (code[pc] == "") return COMMAND_T::NONE;
        else if (code[pc][0] == '@') return COMMAND_T::A_COMMAND;
        else if (code[pc][0] == '(') return COMMAND_T::L_COMMAND;
        return COMMAND_T::C_COMMAND;
    }

    /**
     * @brief Parse A, L Command
     * 
     * @return std::string - @Xxx, (Xxx) -> return Xxx
     */
    std::string Parser::symbol() {
        return code[pc].substr(1, code[pc].size() - (code[pc].back() == ')' ? 2 : 1));
    }

    /**
     * @brief Parse C Command
     * 
     * @return std::string - return dest from C Command
     */
    std::string Parser::dest() {
        std::string::size_type it;
        if ((it = code[pc].find('=')) != std::string::npos) return code[pc].substr(0, it);
        return "";
    }

    /**
     * @brief Parse C Command
     * 
     * @return std::string - return comp from C Command
     */
    std::string Parser::comp() {
        std::string::size_type it1, it2;
        if ((it1 = code[pc].find('=')) != std::string::npos) {
            if ((it2 = code[pc].find(';', it1)) != std::string::npos) return code[pc].substr(it1 + 1, it2 - it1 - 1);
            return code[pc].substr(it1 + 1);
        }
        if ((it1 = code[pc].find(';')) != std::string::npos) return code[pc].substr(0, it1);
        return code[pc];
    }

    /**
     * @brief Parse C Command
     * 
     * @return std::string - return jump from C Command
     */
    std::string Parser::jump() {
        std::string::size_type it;
        if ((it = code[pc].find(';')) != std::string::npos) return code[pc].substr(it + 1);
        return "";
    }
}