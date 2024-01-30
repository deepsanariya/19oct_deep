#include <stdio.h>
#include <string.h>

int rep(const char *str, const char *word) {
    int count = 0;
    int len = strlen(word);


    while (*str) {

        if (strncmp(str, word, len) == 0) {
            count++;
            str += len;
        } else {
            str++;
        }
    }

    return count;
}

int main() {
    char str[1000];
    const char *wordToFind = "is";
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    str[strcspn(str, "\n")] = '\0';
    int occurrences = rep(str, wordToFind);
    printf("Number of occurrences of '%s' in the string: %d\n", wordToFind, occurrences);

    return 0;
}
