#include <stdio.h>

void stringCopy(char *dest, const char *src) {
    while (*src != '\0') {
        *dest = *src;
        src++;
        dest++;
    }
    *dest = '\0'; // Terminate the destination string
}

int main() {
    char sourceString[] = "Hello, world!";
    char destinationString[50]; // Make sure destination has enough space

    // Copy source to destination
    stringCopy(destinationString, sourceString);

    // Print the destination string
    printf("Source string: %s\n", sourceString);
    printf("Destination string: %s\n", destinationString);

    return 0;
}
