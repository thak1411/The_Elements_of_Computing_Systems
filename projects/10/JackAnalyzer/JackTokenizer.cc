#include "JackTokenizer.h"

namespace rn {
    /**
     * @brief Keyword list
     */
    static std::vector < std::string > keywords = {
        "class", "constructor", "function", "method", "field", "static",
        "var", "int", "char", "boolean", "void", "true", "false", "null",
        "this", "let", "do", "if", "else", "while", "return"
    };

    /**
     * @brief Symbol list
     */
    static std::string symbols = "{}()[].,;+-*/&|<>=~";

    /**
     * @brief Regex list
     */
    static std::regex rint("\\d+");
    static std::regex rstring("\"(.*)\"");
    static std::regex ridentifier("[a-zA-Z_]+\\w*");

    /**
     * @brief Construct of JackTokenizer - read file to tokenize
     * 
     * @param path - file path for tokenize
     */
    JackTokenizer::JackTokenizer(std::string path) {
        in.open(path);
    }

    /**
     * @brief Check exists next command
     * 
     * @return BOOL - if has next command then 1 else 0
     */
    BOOL JackTokenizer::hasMoreTokens() {
        return in.peek() != EOF;
    }

    /**
     * @brief Move to next token
     * 
     * @return VOID 
     */
    VOID JackTokenizer::advance() {
        
    }

    /**
     * @brief Get token type
     * 
     * @return TOKEN_T - Token type
     */
    TOKEN_T JackTokenizer::tokenType() {
        for (auto& it : keywords) if (it == token) return TOKEN_T::T_KEYWORD;
        for (auto& it : symbols) if (token.size() == 1 && it == token[0]) return TOKEN_T::T_SYMBOL;
        if (std::regex_match(token, ridentifier)) return TOKEN_T::T_IDENTIFIER;
        if (std::regex_match(token, rint) && std::stoi(token) >= 0 && std::stoi(token) <= 32767) return TOKEN_T::T_INT_CONST;
        if (std::regex_match(token, rstring)) return TOKEN_T::T_STRING_CONST;
        return TOKEN_T::T_NONE;
    }

    /**
     * @brief Get current token keyword type
     * 
     * @return KEYWORD_T - Keyword type
     */
    KEYWORD_T JackTokenizer::keyword() {
        if (token == "class")       return KEYWORD_T::K_CLASS;
        if (token == "constructor") return KEYWORD_T::K_CONSTRUCTOR;
        if (token == "function")    return KEYWORD_T::K_FUNCTION;
        if (token == "method")      return KEYWORD_T::K_METHOD;
        if (token == "field")       return KEYWORD_T::K_FIELD;
        if (token == "static")      return KEYWORD_T::K_STATIC;
        if (token == "var")         return KEYWORD_T::K_VAR;
        if (token == "int")         return KEYWORD_T::K_INT;
        if (token == "char")        return KEYWORD_T::K_CHAR;
        if (token == "boolean")     return KEYWORD_T::K_BOOLEAN;
        if (token == "void")        return KEYWORD_T::K_VOID;
        if (token == "true")        return KEYWORD_T::K_TRUE;
        if (token == "false")       return KEYWORD_T::K_FALSE;
        if (token == "null")        return KEYWORD_T::K_NULL;
        if (token == "this")        return KEYWORD_T::K_THIS;
        if (token == "let")         return KEYWORD_T::K_LET;
        if (token == "do")          return KEYWORD_T::K_DO;
        if (token == "if")          return KEYWORD_T::K_IF;
        if (token == "else")        return KEYWORD_T::K_ELSE;
        if (token == "while")       return KEYWORD_T::K_WHILE;
        if (token == "return")      return KEYWORD_T::K_RETURN;
                                    return KEYWORD_T::K_NONE;
    }

    /**
     * @brief Get current token character
     * 
     * @return CHAR - Token symbol character
     */
    CHAR JackTokenizer::symbol() {
        return token[0];
    }

    /**
     * @brief Get current token identifier
     * 
     * @return std::string - Token identifier
     */
    std::string JackTokenizer::identifier() {
        return token;
    }

    /**
     * @brief Get current token integer value
     * 
     * @return INT - Token integer value
     */
    INT JackTokenizer::intVal() {
        return std::stoi(token);
    }

    /**
     * @brief Get current token string value
     * 
     * @return std::string - Token string value
     */
    std::string JackTokenizer::stringVal() {
        std::smatch match;
        std::regex_match(token, match, rstring);
        return match[1].str();
    }
}