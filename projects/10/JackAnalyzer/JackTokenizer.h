#ifndef __JACK_TOKENIZER_H__
#define __JACK_TOKENIZER_H__

#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <regex>

#include "RnType.h"

namespace rn {
    class JackTokenizer {
    private:
        std::ifstream in;
        std::string token;
    public:
        JackTokenizer(std::string);
        BOOL hasMoreTokens();
        VOID advance();
        TOKEN_T tokenType();
        KEYWORD_T keyword();
        CHAR symbol();
        std::string identifier();
        INT intVal();
        std::string stringVal();
    };
}

#endif // __JACK_TOKENIZER_H__ //