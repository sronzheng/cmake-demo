
#include <unistd.h>
#include "MQueue.hpp"

MQueue<int> gMQueue;

void* write (void* arg)
{
    int i = 0;

    while (i < 5)
    {
        printf ("[W] write %d.\n", i);

        gMQueue.push (i++);

        sleep (1);
    }

    while (i < 20)
    {
        printf ("[W] write %d.\n", i);

        gMQueue.push (i++);

        usleep (1000);
    }

    return NULL;
}

void* read (void* arg)
{
    while (1)
    {
        gMQueue.wait();

        int v = gMQueue.front();
        printf ("[R] read %d.\n", v);

        gMQueue.pop();
    }

    return NULL;
}

int main (int argc, char **argv) 
{
    pthread_t tidw, tidr;

    pthread_create (&tidw, NULL, &write, NULL);
    pthread_create (&tidr, NULL, &read, NULL);

    void* ret;
    pthread_join (tidw, &ret);
    pthread_join (tidr, &ret);

    return 0;
}
