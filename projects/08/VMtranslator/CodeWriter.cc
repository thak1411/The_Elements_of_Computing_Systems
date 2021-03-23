#include "CodeWriter.h"

namespace rn {
    /**
     * @brief Construct of Code Writer Make output stream
     * 
     * @param path - Path of ouput file
     */
    CodeWriter::CodeWriter(std::string path) {
        out.open(path);
    }

    /**
     * @brief Set FileName for check segment
     * 
     * @param fileName - vm file name
     * @return VOID 
     */
    VOID CodeWriter::setFileName(std::string fileName) {
        this->fileName = fileName.substr(fileName.rfind('/') + 1);
    }

    /**
     * @brief Write initialize bootstrap asm code
     * 
     * @return VOID 
     */
    VOID CodeWriter::writerInit() {
        out << "@256\n"
            << "D = A\n"
            << "@SP\n"
            << "M = D\n";
        writeCall("Sys.init", 0);
    }

    /**
     * @brief Write label vm code to asm code
     * 
     * @param label - label name
     * @return VOID 
     */
    VOID CodeWriter::writeLabel(std::string label) {
        out << "(" << functionName + "." + label << ")\n";
    }

    /**
     * @brief Write goto vm code to asm code
     * 
     * @param label - label name to jump
     * @return VOID 
     */
    VOID CodeWriter::writeGoto(std::string label) {
        out << "@" << functionName + "." + label << '\n'
            << "0;JMP\n";
    }

    /**
     * @brief Write if vm code to asm code
     * 
     * @param label - label name to jump
     * @return VOID 
     */
    VOID CodeWriter::writeIf(std::string label) {
        out << "@SP\n"
            << "AM = M - 1\n"
            << "D = M\n"
            << "@" << functionName + "." + label << '\n'
            << "D;JNE\n";
    }

    /**
     * @brief Write function call vm code to asm code
     * 
     * @param functionName - function name to call
     * @param numArgs - function argument count
     * @return VOID 
     */
    VOID CodeWriter::writeCall(std::string functionName, INT numArgs) {
        static INT index = 1;
        std::string uniqueKey = this->functionName + ".return-address." + std::to_string(index++);

        auto makePush = [](std::string segment, BOOL isPointer) {
            std::string query =
                "@" + segment + "\n"
                "D = " + (isPointer ? "M\n" : "A\n") + 
                "@SP\n"
                "M = M + 1\n"
                "A = M - 1\n"
                "M = D\n";
            return query;
        };
        out << makePush(uniqueKey, FALSE)
            << makePush("LCL", TRUE)
            << makePush("ARG", TRUE)
            << makePush("THIS", TRUE)
            << makePush("THAT", TRUE)
            << "@SP\n"
            << "D = M\n"
            << "@5\n"
            << "D = D - A\n"
            << "@" << numArgs << '\n'
            << "D = D - A\n"
            << "@ARG\n"
            << "M = D\n"
            << "@SP\n"
            << "D = M\n"
            << "@LCL\n"
            << "M = D\n"
            << "@" + functionName << '\n'
            << "0;JMP\n"
            << "(" + uniqueKey + ")\n";
    }

    /**
     * @brief Write function return vm code to asm code
     * 
     * @return VOID 
     */
    VOID CodeWriter::writeReturn() {
        auto makeMinusIndexing = [](std::string var, INT index) {
            std::string query = 
                "@" + std::to_string(index) + "\n"
                "D = A\n"
                "@" + var + "\n"
                "A = M - D\n"
                "D = M\n";
            return query;
        };
        out << "@LCL\n"
            << "D = M\n"
            << "@" + fileName + ".FRAME\n"
            << "M = D\n"
            << makeMinusIndexing(fileName + ".FRAME", 5)
            << "@" + fileName + ".RET\n"
            << "M = D\n"
            << "@SP\n"
            << "A = M - 1\n"
            << "D = M\n"
            << "@ARG\n"
            << "A = M\n"
            << "M = D\n"
            << "@ARG\n"
            << "D = M + 1\n"
            << "@SP\n"
            << "M = D\n"
            << makeMinusIndexing(fileName + ".FRAME", 1)
            << "@THAT\n"
            << "M = D\n"
            << makeMinusIndexing(fileName + ".FRAME", 2)
            << "@THIS\n"
            << "M = D\n"
            << makeMinusIndexing(fileName + ".FRAME", 3)
            << "@ARG\n"
            << "M = D\n"
            << makeMinusIndexing(fileName + ".FRAME", 4)
            << "@LCL\n"
            << "M = D\n"
            << "@" + fileName + ".RET\n"
            << "A = M\n"
            << "0;JMP\n";
    }

    /**
     * @brief Write function vm code to asm code
     * 
     * @param functionName - name of function
     * @param numLocals - local variable count of function
     * @return VOID 
     */
    VOID CodeWriter::writeFunction(std::string functionName, INT numLocals) {
        this->functionName = functionName;
        out << "(" + functionName + ")\n";
        for (INT i = numLocals; i--; ) {
            out << "@0\n"
                << "D = A\n"
                << "@SP\n"
                << "M = M + 1\n"
                << "A = M - 1\n"
                << "M = D\n";
        }

    }

    /**
     * @brief Write arithmetic vm code to asm code
     * 
     * @param command - command to translate
     * @return VOID 
     */
    VOID CodeWriter::writeArithmetic(std::string command) {
        static INT index = 1;
        std::string binary =
            "@SP\n"
            "AM = M - 1\n"
            "D = M\n"
            "A = A - 1\n";

        std::string unary = 
            "@SP\n"
            "A = M - 1\n";

        auto makeJMP = [&](std::string jmp, INT index) {
            std::string uniqueKey = "." + std::to_string(index);
            std::string query =
                "@" + functionName + ".TRUE" + uniqueKey + "\n"
                "D;" + jmp + "\n"
                "@" + functionName + ".END" + uniqueKey + "\n"
                "D = 0;JMP\n"
                "(" + functionName + ".TRUE" + uniqueKey + ")\n"
                "D = -1\n"
                "(" + functionName + ".END" + uniqueKey + ")\n";
            return query;
        };

        if (command == "add") {
            out << binary
                << "M = D + M\n";
        } else if (command == "sub") {
            out << binary
                << "M = M - D\n";
        } else if (command == "neg") {
            out << unary
                << "M = -M\n";
        } else if (command == "eq") {
            out << binary
                << "D = M - D\n"
                << makeJMP("JEQ", index++)
                << unary
                << "M = D\n";
        } else if (command == "gt") {
            out << binary
                << "D = M - D\n"
                << makeJMP("JGT", index++)
                << unary
                << "M = D\n";
        } else if (command == "lt") {
            out << binary
                << "D = M - D\n"
                << makeJMP("JLT", index++)
                << unary
                << "M = D\n";
        } else if (command == "and") {
            out << binary
                << "M = M & D\n";
        } else if (command == "or") {
            out << binary
                << "M = M | D\n";
        } else if (command == "not") {
            out << unary
                << "M = !M\n";
        } else {
            std::cerr << "VMtranslator: Translation Error!\n";
            exit(0);
        }
    }

    /**
     * @brief Write push & pop code to asm code
     * 
     * @param command - C_PUSH or C_POP
     * @param segment - data segment
     * @param index - segment index
     * @return VOID 
     */
    VOID CodeWriter::writePushPop(COMMAND_T command, std::string segment, INT index) {
        BOOL isPointer = FALSE;
        auto oldSegment = segment;
        if (segment == "local") segment = "LCL", isPointer = TRUE;
        else if (segment == "argument") segment = "ARG", isPointer = TRUE;
        else if (segment == "this") segment = "THIS", isPointer = TRUE;
        else if (segment == "that") segment = "THAT", isPointer = TRUE;
        else if (segment == "pointer") segment = "3", isPointer = FALSE;
        else if (segment == "temp") segment = "5", isPointer = FALSE;
        else if (segment == "constant") segment = "0", isPointer = FALSE;
        else if (segment == "static") {
            segment = fileName + "." + std::to_string(index);
            isPointer = FALSE;
            index = 0;
        }
        else {
            std::cerr << "VMtranslator: Translation Error!\n";
            exit(0);
        }
        if (command == COMMAND_T::C_PUSH) {
            out << "@" << segment << '\n'
                << "D = " << (isPointer ? "M\n" : "A\n")
                << "@" << index << '\n'
                << "A = D + A\n"
                << "D = " << (oldSegment == "constant" ? "A" : "M") << "\n"
                << "@SP\n"
                << "A = M\n"
                << "M = D\n"
                << "@SP\n"
                << "M = M + 1\n";
        } else if (command == COMMAND_T::C_POP) {
            out << "@SP\n"
                << "AM = M - 1\n"
                << "D = M\n"
                << "@" << segment << '\n';
            if (isPointer) out << "A = M\n";
            for (INT i = index; i--; ) out << "A = A + 1\n";
            out << "M = D\n";
        }
    }

    /**
     * @brief Close output file stream
     * 
     * @return VOID 
     */
    VOID CodeWriter::close() {
        out.close();
    }
}