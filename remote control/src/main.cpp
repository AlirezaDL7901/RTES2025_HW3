// Directory: remote_monitor/src/main.cpp
#include <iostream>
#include <thread>
#include <chrono>
#include "ssh_connection.h"
#include "hardware_monitor.h"
using namespace std;

int main(int argc, char* argv[])
{
    if (argc != 6) 
    {
        cerr << "Usage: " << argv[0] << " <IP> <user> <pass> <CPU_th> <MEM_th>%\n";
        return 1;
    }

    string IP = argv[1];
    string user = argv[2];
    string pass = argv[3];
    double CPU_th = stod(argv[4]);
    double MEM_th = stod(argv[5]);

    SSHConnection ssh(IP, user, pass);
    if (!ssh.connect()) 
    {
        cerr << "Failed to establish SSH connection.\n";
        return 1;
    }

    cout << "SSH connection established and authenticated successfully!\n";
    cout << "Connecting to remote host...\n";

    HardwareMonitor monitor(ssh);
    monitor.printSystemInfo();

    while (true) 
    {
        monitor.checkUsage(CPU_th, MEM_th);
        this_thread::sleep_for(chrono::seconds(30));
    }

    return 0;
}