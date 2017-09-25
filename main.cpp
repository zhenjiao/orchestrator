#include <stdio.h>
#include <unistd.h>

int main()
{
    while(true)
    {
        printf("Hello world\n");
        usleep(1000000);
    }

    return 0;
}