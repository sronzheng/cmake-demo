
#include <gtest/gtest.h>

#include "Command.hpp"

TEST (Command, ctor)
{
    char buf[16] = "percherry";

    Command<unsigned int, unsigned char> cmd (5, 100, buf, 16);

    ASSERT_EQ ((int)cmd.t1, 5);
    ASSERT_EQ (cmd.t2, 100);
    ASSERT_TRUE (cmd.data != NULL);
    ASSERT_TRUE (strcmp (cmd.data, "percherry") == 0);

    Command<unsigned int, unsigned char> cmd2 (cmd);

    ASSERT_EQ ((int)cmd.t1, 0);
    ASSERT_EQ (cmd.t2, 0);

    ASSERT_EQ ((int)cmd2.t1, 5);
    ASSERT_EQ (cmd2.t2, 100);
    ASSERT_TRUE (cmd2.data != NULL);
    ASSERT_TRUE (strcmp (cmd2.data, "percherry") == 0);
}


