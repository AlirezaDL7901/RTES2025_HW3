#include <iostream>
#include <fcntl.h>           // For shm_open
#include <sys/mman.h>        // For mmap
#include <unistd.h>
#include <cerrno>
#include <cstring>
using namespace std;

#define SHM_SIZE 10
const char* SHM_NAME = "/my_shm";  // POSIX shared memory name
#define interval 3

int main() {
    int shm_fd = shm_open(SHM_NAME, O_RDONLY, 0666);
    if (shm_fd == -1)
    {
        cerr << "Failed to open shared memory: " << strerror(errno) << endl;
        return 1;
    }
    const char* shm_ptr = static_cast<const char*>(mmap(nullptr, SHM_SIZE, PROT_READ, MAP_SHARED, shm_fd, 0));
    if (shm_ptr == MAP_FAILED)
    {
        cerr << "Failed to map shared memory: " << strerror(errno) << endl;
        return 1;
    }

    cout << "Shared memory content: " << endl;

    while (true)
    {
        cout << "Buffer: ";
        for (int i = 0; i < SHM_SIZE; ++i)
        {
            cout << shm_ptr[i];
        }
        cout << endl;
        sleep(interval);
    }

    munmap((void*)shm_ptr, SHM_SIZE);
    close(shm_fd);

    return 0;
}
