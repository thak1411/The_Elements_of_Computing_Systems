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
        std::string fileName, functionName;
    public:
        CodeWriter(std::string);
        VOID setFileName(std::string);
        VOID writerInit();
        VOID writeLabel(std::string);
        VOID writeGoto(std::string);
        VOID writeIf(std::string);
        VOID writeCall(std::string, INT);
        VOID writeReturn();
        VOID writeFunction(std::string, INT);
        VOID writeArithmetic(std::string);
        VOID writePushPop(COMMAND_T, std::string, INT);
        VOID close();
    };
}

#endif //__CODE_WRITER_H__ //