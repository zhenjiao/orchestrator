#include <stdio.h>
#include <unistd.h>

int main()
{
    while(true)
    {
        printf("Hello world\n");
        usleep(500000);
    }

    return 0;
}