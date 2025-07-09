#ifndef SSH_CONNECTION_H
#define SSH_CONNECTION_H

#include <string>
#include "libssh/libssh.h"
using namespace std;

class SSHConnection 
{
public:
    SSHConnection(const string& ip, const string& user, const string& pass);
    ~SSHConnection();
    bool connect();
    string executeCommand(const string& command);

private:
    string ip, user, pass;
    ssh_session session;
};

#endif
