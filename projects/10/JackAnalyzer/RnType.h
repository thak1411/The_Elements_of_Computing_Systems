#ifndef __RNTYPE_H__
#define __RNTYPE_H__

enum TOKEN_T {
    T_NONE,
    T_KEYWORD,
    T_SYMBOL,
    T_IDENTIFIER,
    T_INT_CONST,
    T_STRING_CONST,
};

enum KEYWORD_T {
    K_NONE,
    K_CLASS = 10,
    K_METHOD,
    K_FUNCTION,
    K_CONSTRUCTOR,
    K_INT,
    K_BOOLEAN,
    K_CHAR,
    K_VOID,
    K_VAR,
    K_STATIC,
    K_FIELD,
    K_LET,
    K_DO,
    K_IF,
    K_ELSE,
    K_WHILE,
    K_RETURN,
    K_TRUE,
    K_FALSE,
    K_NULL,
    K_THIS,
};

#define TRUE               1
#define FALSE              0

typedef void               VOID;
typedef char               BYTE;
typedef char               CHAR;
typedef short              SHORT;
typedef int                INT;
typedef int                BOOL;
typedef long               LONG;
typedef long long          LLONG;
typedef float              FLOAT;
typedef double             DOUBLE;

typedef unsigned int       SIZE;
typedef unsigned long      SIZE_T;

typedef char*              LPSTR;
typedef const char*        LPCSTR;

typedef void*              LPVOID;
typedef short*             LPSHORT;
typedef int*               LPINT;
typedef long*              LPLONG;
typedef long long*         LPLLONG;
typedef float*             LPFLOAT;
typedef double*            LPDOUBLE;

typedef unsigned int       DWORD;
typedef unsigned short     WORD;

#undef  NULL
#define NULL               (LPVOID)0

#endif // __RNTYPE_H__ //