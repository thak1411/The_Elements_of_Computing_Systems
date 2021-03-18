#ifndef __RNTYPE_H__
#define __RNTYPE_H__

enum COMMAND_T {
    NONE,
    A_COMMAND,
    C_COMMAND,
    L_COMMAND,
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