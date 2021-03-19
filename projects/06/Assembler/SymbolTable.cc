#include "SymbolTable.h"

namespace rn {
    /**
     * @brief Add new symbol to table
     * 
     * @param symbol - Symbol to addition
     * @param address - address mean symbol's constant address
     * @return VOID 
     */
    VOID SymbolTable::addEntry(std::string symbol, INT address) {
        table[symbol] = address;
    }

    /**
     * @brief check symbol is in table
     * 
     * @param symbol - Symbol to check
     * @return BOOL - if symbol is in table then 1 else 0
     */
    BOOL SymbolTable::contains(std::string symbol) {
        return table.find(symbol) != table.end();
    }

    /**
     * @brief Get address of symbol
     * 
     * @param symbol - symbol to get address
     * @return INT - address of symbol
     */
    INT SymbolTable::getAddress(std::string symbol) {
        return table[symbol];
    }
}