#include "hardware_monitor.h"
#include <iostream>
#include <iomanip>
#include <ctime>
using namespace std;

HardwareMonitor::HardwareMonitor(SSHConnection& ssh) : ssh(ssh)
{}

void HardwareMonitor::printSystemInfo()
{
    std::cout << "Secondary System CPU Information:\n" << ssh.executeCommand("lscpu | grep 'Architecture' && lscpu | grep 'CPU(s):' && lscpu | grep 'Model name:'") << endl << "...\n\n";
    std::cout << "Secondary System Memory Information:\n" << ssh.executeCommand("free -h | grep 'Mem:' | awk '{print \"total: \"$2 \"  used: \"$3 \"  free: \"$4 \"  buff/cach: \"$6 \"  available: \"$7}'") << endl << "...\n\n";
    std::cout << "SSH Connection Information (eth0):\n" << ssh.executeCommand("ip a | grep inet") << endl << "...\n\n";
}

void HardwareMonitor::checkUsage(double cpu_limit, double mem_limit)
{
    time_t now = time(nullptr);
    char* dt = ctime(&now);
    cout << "[" << dt << "]\n";

    string cpu_usg = ssh.executeCommand("top -bn1 | grep 'Cpu(s)' | awk '{print $2 + $4}'");
    double cpu = stod(cpu_usg);
    cout << "CPU Usage: " << cpu << "%\n";

    string mem_usg = ssh.executeCommand("free | grep Mem | awk '{print $3/$2 * 100.0}'");
    double mem = stod(mem_usg);
    cout << "Memory Usage: " << mem << "%\n";

    if (cpu > cpu_limit)
    {
        cout << "Warning: CPU usage above threshold!\n";
        string pid = ssh.executeCommand("ps -eo pid,%cpu --sort=-%cpu | awk 'NR==2{print $1}'");
        cout << "Killing process with PID: " << pid;
        ssh.executeCommand("kill -9 " + pid);
    }
    if (mem > mem_limit)
    {
        cout << "Warning: Memory usage above threshold!\n";
        string pid = ssh.executeCommand("ps -eo pid,%mem --sort=-%mem | awk 'NR==2{print $1}'");
        cout << "Killing process with PID: " << pid;
        ssh.executeCommand("kill -9 " + pid);
    }
    cout << endl;
}
