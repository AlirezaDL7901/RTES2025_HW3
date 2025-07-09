#include <iostream>
#include "ssh_connection.h"
#include <libssh/libssh.h>
using namespace std;

SSHConnection::SSHConnection(const string& ip, const string& user, const string& pass)
    : ip(ip), user(user), pass(pass), session(nullptr) 
{}

bool SSHConnection::connect()
{
    session = ssh_new();
    if (!session)
    {
        return false;
    }
    ssh_options_set(session, SSH_OPTIONS_HOST, ip.c_str());
    ssh_options_set(session, SSH_OPTIONS_USER, user.c_str());

    if (ssh_connect(session) != SSH_OK)
    {
        cerr << "Error: " << ssh_get_error(session) << "\n";
        return false;
    }
    if (ssh_userauth_password(session, nullptr, pass.c_str()) != SSH_AUTH_SUCCESS)
    {
        cerr << "Auth failed: " << ssh_get_error(session) << "\n";
        return false;
    }
    return true;
}

string SSHConnection::executeCommand(const string& cmd)
{
    ssh_channel channel = ssh_channel_new(session);
    if (!channel)
    {
        return "";
    }
    if (ssh_channel_open_session(channel) != SSH_OK)
    {
        return "";
    }
    if (ssh_channel_request_exec(channel, cmd.c_str()) != SSH_OK)
    {
        return "";
    }

    char buffer[256];
    int nbytes;
    string output;
    while ((nbytes = ssh_channel_read(channel, buffer, sizeof(buffer), 0)) > 0)
    {
        output.append(buffer, nbytes);
    }

    ssh_channel_send_eof(channel);
    ssh_channel_close(channel);
    ssh_channel_free(channel);

    return output;
}

SSHConnection::~SSHConnection()
{
    if (session) 
    {
        ssh_disconnect(session);
        ssh_free(session);
    }
}
