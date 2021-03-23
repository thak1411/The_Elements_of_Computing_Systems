#include "Parser.h"

namespace rn {
    /**
     * @brief Tokenize Code
     * 
     * @param line - a line of code for tokenize
     * @return std::vector < std::string > - tokenized code
     */
    std::vector < std::string > tokenizeCode(std::string line) {
        std::vector < std::string > tokens;
        std::string token;
        for (std::stringstream tok(line); tok >> token; ) tokens.push_back(token);
        return tokens;
    }

    /**
     * @brief Delete code from line
     * 
     * @param line - a line of code for delete comment
     * @return std::string - code without comment
     */
    std::string deleteComment(std::string line) {
        std::string::size_type it;
        if ((it = line.find("//")) != std::string::npos) return line.substr(0, it);
        return line;
    }

    /**
     * @brief Construct of Parser - read file for translate
     * 
     * @param path - file path for translate
     */
    Parser::Parser(std::string path) {
        in.open(path);
    }

    /**
     * @brief Check exists next command
     * 
     * @return BOOL - if has next command then 1 else 0
     */
    BOOL Parser::hasMoreCommands() {
        return in.peek() != EOF;
    }

    /**
     * @brief Move to next command
     * 
     * @return VOID 
     */
    VOID Parser::advance() {
        std::string line;
        std::getline(in, line);
        code = tokenizeCode(deleteComment(line));
    }

    /**
     * @brief Check command type
     * 
     * @return COMMAND_T - command type
     */
    COMMAND_T Parser::commandType() {
        if (code.size() < 1) return COMMAND_T::NONE;
        if (code[0] == "push") return COMMAND_T::C_PUSH;
        if (code[0] == "pop") return COMMAND_T::C_POP;
        if (code[0] == "label") return COMMAND_T::C_LABEL;
        if (code[0] == "if-goto") return COMMAND_T::C_IF;
        if (code[0] == "goto") return COMMAND_T::C_GOTO;
        if (code[0] == "function") return COMMAND_T::C_FUNCTION;
        if (code[0] == "return") return COMMAND_T::C_RETURN;
        if (code[0] == "call") return COMMAND_T::C_CALL;
        for (auto& it : { "add", "sub", "neg", "eq", "gt", "lt", "and", "or", "not" }) if (code[0] == it) return COMMAND_T::C_ARITHMETIC;
        std::cerr << "VMtranslator: Translation Error!\n";
        exit(0);
    }

    /**
     * @brief Get first argument
     * 
     * @return std::string - first argument
     */
    std::string Parser::arg1() {
        if (commandType() == COMMAND_T::C_ARITHMETIC) return code[0];
        return code[1];
    }

    /**
     * @brief Get second argument
     * 
     * @return INT - second argument
     */
    INT Parser::arg2() {
        return std::stoi(code[2]);
    }

    /**
     * @brief Close input stream
     * 
     * @return VOID 
     */
    VOID Parser::close() {
        in.close();
    }
}