#ifndef __CODE_WRITER_H__
#define __CODE_WRITER_H__

#include <iostream>
#include <fstream>
#include <string>

#include "RnType.h"

namespace rn {
    class CodeWriter {
    private:
        std::ofstream out;
        std::string fileName;
    public:
        CodeWriter(std::string);
        VOID setFileName(std::string);
        VOID writeArithmetic(std::string);
        VOID writePushPop(COMMAND_T, std::string, INT);
        VOID close();
    };
}

#endif //__CODE_WRITER_H__ //