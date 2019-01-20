
#ifndef __POS_COMMAND_h__
#define __POS_COMMAND_h__

#include <stdlib.h>
#include <string.h>

template <typename T1, typename T2>
class Command
{
public:

    Command (T1 tt1, T2 tt2, const void* ddata, size_t ssize)
     : t1 (tt1),
       t2 (tt2),
       data (NULL), 
       size (0)
    {
        data = (char*)malloc (ssize);
        memcpy (data, ddata, ssize);
        size = ssize;
    }

    Command (const Command& hb)
    {
        t1   = hb.t1;
        t2   = hb.t2;
        data = hb.data;
        size = hb.size;

        Command& hb2 = (Command&)hb;

        hb2.t1   = 0;
        hb2.t2   = 0;
        hb2.data = NULL;
        hb2.size = 0;
    }

    ~Command ()
    {
        if (data != NULL) 
            delete data;
    }

    T1      t1;
    T2      t2;
    char*   data;
    size_t  size;
};

#endif
