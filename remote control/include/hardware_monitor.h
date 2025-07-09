#ifndef HARDWARE_MONITOR_H
#define HARDWARE_MONITOR_H

#include "ssh_connection.h"

class HardwareMonitor 
{
public:
    HardwareMonitor(SSHConnection& ssh);
    void printSystemInfo();
    void checkUsage(double cpu_limit, double mem_limit);

private:
    SSHConnection& ssh;
};

#endif
