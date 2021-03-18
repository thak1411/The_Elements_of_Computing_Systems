#ifndef __PARSER_H__
#define __PARSER_H__

#include <iostream>
#include <fstream>
#include <vector>
#include <string>

#include "RnType.h"

namespace rn {
    class Parser {
    private:
        INT pc;
        std::vector < std::string > code;
    public:
        Parser(LPCSTR);
        BOOL hasMoreCommands();
        VOID advance();
        COMMAND_T commandType();
        std::string symbol();
        std::string dest();
        std::string comp();
        std::string jump();
    };
    
    std::string deleteWS(std::string);
}

#endif // __PARSER_H__ //