#include <filesystem>
#include <iostream>
#include <vector>

#include "CompilationEngine.h"
#include "JackTokenizer.h"

namespace fs = std::filesystem;

int main(int argv, char** args) {
    if (argv != 2) {
        std::cout << "usage: JackAnalyzer [<file-path>] [<dir-path>]\n"
                  << '\n'
                  << "Please input <file-path> or <dir-path> to compile\n";
        return 0;
    }
    
    fs::path p(args[1]);
    if (!fs::exists(p)) {
        std::cerr << "JackAnalyzer: Error: input (file|dir) not exists\n";
        return 0;
    }

    if (fs::is_regular_file(p)) {
        auto file = std::string(fs::canonical(p));
        if (file.substr(file.size() - 5) == ".jack") {
            
        } else {
            std::cerr << "JackAnalyzer: Error: input file is not jack file\n";
            return 0;
        }
    } else if (fs::is_directory(p)) {
        auto path = std::string(fs::canonical(p));
        // path + path.substr(path.rfind('/')) + ".xml"
        for (auto& entry : fs::directory_iterator(p)) {
            auto file = std::string(fs::canonical(entry.path()));
            if (file.substr(file.size() - 5) == ".jack") {

            }
        }
    } else {
        std::cerr << "JackAnalyzer: Error: input (file|dir) not exists\n";
        return 0;
    }
    return 0;
}