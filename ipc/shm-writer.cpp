#include <iostream>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <cstring>
#include <cerrno>
using namespace std;

#define SHM_SIZE 10
const char* SHM_NAME = "/my_shm";

int main() {
    int shm_fd = shm_open(SHM_NAME, O_CREAT | O_RDWR, 0666);
    if (shm_fd == -1)
    {
        cerr << "Failed to create shared memory: " << strerror(errno) << endl;
        return 1;
    }
    if (ftruncate(shm_fd, SHM_SIZE) == -1)
    {
        cerr << "Failed to set shared memory size: " << strerror(errno) << endl;
        return 1;
    }
    char* shm_ptr = static_cast<char*>(mmap(nullptr, SHM_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, shm_fd, 0));
    if (shm_ptr == MAP_FAILED)
    {
        cerr << "Failed to map shared memory: " << strerror(errno) << endl;
        return 1;
    }

    string input;
    size_t index = 0;

    cout << "Getting inputs: " << endl;
    while (true)
    {
        cout << "> ";
        getline(cin, input);
        for (char c : input)
        {
            shm_ptr[index] = c;
            index = (index + 1) % SHM_SIZE;
        }
    }

    munmap(shm_ptr, SHM_SIZE);
    close(shm_fd);
    shm_unlink(SHM_NAME);

    return 0;
}
