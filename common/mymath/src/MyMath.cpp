
#include "Env.hpp"

#include <stdlib.h>
#include <string.h>

static const char VAR_HOME[] = "POS_HOME";

static const char DEFAULT_HOME[] = "/opt/pos";
static const char DIR_ETC[]  = "/etc";

void getHome (char path[])
{
    char* home = getenv (VAR_HOME);
    if (home != NULL)
        strcpy (path, home);
    else 
        strcpy (path, DEFAULT_HOME);
}

void getEtcDir (char path[])
{
    getHome (path);
    strcat (path, DIR_ETC);
}


