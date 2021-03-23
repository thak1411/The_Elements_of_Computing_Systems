#include <filesystem>
#include <iostream>
#include <vector>

#include "CodeWriter.h"
#include "Parser.h"
#include "RnType.h"

namespace fs = std::filesystem;

VOID run(rn::Parser&, rn::CodeWriter&);

int main(int argv, char** args) {
    if (argv != 2) {
        std::cout << "usage: VMtranslator [<file-path>] [<dir-path>]\n"
                  << '\n'
                  << "Please input <file-path> or <dir-path> to translate\n";
        return 0;
    }
    
    fs::path p(args[1]);
    if (!fs::exists(p)) {
        std::cerr << "VMtranslator: Error: input (file|dir) not exists\n";
        return 0;
    }

    if (fs::is_regular_file(p)) {
        auto file = std::string(fs::canonical(p));
        if (file.substr(file.size() - 3) == ".vm") {
            rn::CodeWriter codeWriter(file.substr(0, file.size() - 2) + "asm");
            rn::Parser parser(file);
            codeWriter.writerInit();
            codeWriter.setFileName(file.substr(0, file.size() - 3));
            run(parser, codeWriter);
            parser.close();
            codeWriter.close();
        } else {
            std::cerr << "VMtranslator: Error: input file is not vm file\n";
            exit(0);
        }
    } else if (fs::is_directory(p)) {
        auto path = std::string(fs::canonical(p));
        rn::CodeWriter codeWriter(path + path.substr(path.rfind('/')) + ".asm");
        codeWriter.writerInit();
        for (auto& entry : fs::directory_iterator(p)) {
            auto file = std::string(fs::canonical(entry.path()));
            if (file.substr(file.size() - 3) == ".vm") {
                rn::Parser parser(file);
                codeWriter.setFileName(file);
                run(parser, codeWriter);
                parser.close();
            }
        }
        codeWriter.close();
    } else {
        std::cerr << "VMtranslator: Error: input (file|dir) not exists\n";
        return 0;
    }
    return 0;
}

/**
 * @brief Run translate tasks
 * 
 * @param parser - Code parser
 * @param codeWriter - Code writer
 * @return VOID 
 */
VOID run(rn::Parser& parser, rn::CodeWriter& codeWriter) {
    for (; parser.hasMoreCommands(); ) {
        parser.advance();
        COMMAND_T type = parser.commandType();
        if (type == COMMAND_T::C_ARITHMETIC) {
            codeWriter.writeArithmetic(parser.arg1());
        } else if (type == COMMAND_T::C_PUSH || type == COMMAND_T::C_POP) {
            codeWriter.writePushPop(type, parser.arg1(), parser.arg2());
        } else if (type == COMMAND_T::C_LABEL) {
            codeWriter.writeLabel(parser.arg1());
        } else if (type == COMMAND_T::C_GOTO) {
            codeWriter.writeGoto(parser.arg1());
        } else if (type == COMMAND_T::C_IF) {
            codeWriter.writeIf(parser.arg1());
        } else if (type == COMMAND_T::C_FUNCTION) {
            codeWriter.writeFunction(parser.arg1(), parser.arg2());
        } else if (type == COMMAND_T::C_RETURN) {
            codeWriter.writeReturn();
        } else if (type == COMMAND_T::C_CALL) {
            codeWriter.writeCall(parser.arg1(), parser.arg2());
        }
    }
}