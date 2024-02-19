#include <stdio.h>

int main() {
    char str[1000];
    printf("enter a string:- ");
    fgets(str, sizeof(str), stdin);
    for (int i = 0; str[i] != '\0'; i++) {

        if (str[i] >= 'A' && str[i] <= 'Z') {

            str[i] = str[i] + 32;
        }

        else if (str[i] >= 'a' && str[i] <= 'z') {

            str[i] = str[i] - 32;
        }
    }
    printf("modified str: %s\n", str);

    return 0;
}

