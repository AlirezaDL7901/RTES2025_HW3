#include <iostream>
#include <csignal>
#include <cerrno>
using namespace std;

int main(int argc, char* argv[]) {
    if (argc != 3)
    {
        cerr << "Usage: " << argv[0] << " <PID> <SIGNAL_NUMBER>" << endl;
        return 1;
    }

    pid_t pid = atoi(argv[1]);
    int mySignal = atoi(argv[2]);

    if (kill(pid, mySignal) == 0)
    {
        cout << "Signal " << mySignal << " sent to the process with PID " << pid << endl;
    }
    else
    {
        cerr << "Error sending signal " << mySignal << " to the process with PID " << pid << endl;
        return 1;
    }

    return 0;
}
