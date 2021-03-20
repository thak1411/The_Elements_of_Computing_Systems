#ifndef __PARSER_H__
#define __PARSER_H__

#include <filesystem>
#include <iostream>
#include <sstream>
#include <fstream>
#include <vector>
#include <string>

#include "RnType.h"

namespace rn {
    class Parser {
    private:
        std::ifstream in;
        std::vector < std::string > code;
    public:
        Parser(std::string);
        BOOL hasMoreCommands();
        VOID advance();
        COMMAND_T commandType();
        std::string arg1();
        INT arg2();
        VOID close();
    };
    std::vector < std::string > tokenizeCode(std::string);
    std::string deleteComment(std::string);
}

#endif // __PARSER_H__ //