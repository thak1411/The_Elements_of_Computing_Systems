#ifndef __SYMBOL_TABLE_H__
#define __SYMBOL_TABLE_H__

#include <string>
#include <map>

#include "RnType.h"

namespace rn {
    class SymbolTable {
    private:
        std::map < std::string, INT > table;
    public:
        VOID addEntry(std::string, INT);
        BOOL contains(std::string);
        INT getAddress(std::string);
    };
}

#endif // __SYMBOL_TABLE_H__ //