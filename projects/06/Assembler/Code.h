#ifndef __CODE_H__
#define __CODE_H__

#include <iostream>
#include <string>

namespace rn {
    class Code {
    private:

    public:
        std::string dest(std::string);
        std::string comp(std::string);
        std::string jump(std::string);
    };
}

#endif // __CODE_H__ //