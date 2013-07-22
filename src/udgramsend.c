#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define DATA "The sea is calm tonight, the tide is full . . ."

/*
 * Here a datagram is sent to a receiver whose name comes from the command
 * line arguments. The form of the command line is udgramsend pathname
 */

int main(int argc, char *argv[])
{
    int sock;
    struct sockaddr_un name;

    /* Create socket on which to send. */
    sock = socket(AF_UNIX, SOCK_DGRAM, 0);
    if (sock < 0) {
        perror("opening datagram socket");
        exit(1);
    }
    /* Construct name of socket to send to. */
    name.sun_family = AF_UNIX;
    if (argc != 2) {
        printf("Usage:\n\n"
                    "\tudgramsend pathname\n\n"
                "where \"pathname\" is probably \"socket\".\n");
        exit(1);
    }
    strcpy(name.sun_path, argv[1]);
    /* Send message. */
    if (sendto(sock, DATA, sizeof(DATA), 0,
        &name, sizeof(struct sockaddr_un)) < 0) {
            perror("sending datagram message");
    }
    close(sock);
}
