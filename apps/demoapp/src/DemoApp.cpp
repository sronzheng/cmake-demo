
#include "MsgHubApp.hpp"
#include "Log.hpp"

#include <stdio.h>

//
// app object
//
POS_MAIN (MsgHubApp)

MsgHubApp::MsgHubApp()
 : AppFrm ("MSGHUB")
{
}

int MsgHubApp::start()
{
    LOGI ("config file:%s", getConfigFile());

    mMsgHubEnd = new MsgHubEnd();
    return mMsgHubEnd->init();
}

int MsgHubApp::terminate()
{
    return mMsgHubEnd->terminate();
}

int MsgHubApp::wait()
{
    return mMsgHubEnd->wait();
}
