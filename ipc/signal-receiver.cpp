#include <iostream>
#include <signal.h>
#include <unistd.h>
#include <cstring>
using namespace std;

void signal_handler(int signal) {
    FILE* log = fopen("received-signals.log", "a");
    if (log != nullptr)
    {
        fprintf(log, "Received signal: %d\n", signal);
        fclose(log);
    }
}

int main() {
    cout << "Signal receiver started with PID " << getpid() << endl;

    for (int sig = 1; sig < 32; ++sig)
    {
        if (sig != SIGKILL && sig != SIGSTOP)
        {
            signal(sig, signal_handler);
        }
    }
    while (true)
    {
        pause();
    }
    return 0;
}
