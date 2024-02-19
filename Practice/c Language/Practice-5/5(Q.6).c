#include <stdio.h>

int main() {
    char str[100];
    int alphabets, digits, specialChars, i;

    alphabets = digits = specialChars = i = 0;

    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);

    while (str[i] != '\0') {
        if (isalpha(str[i]))
            alphabets++;
        else if (isdigit(str[i]))
            digits++;
        else if (str[i] != ' ' && str[i] != '\n')
            specialChars++;
        i++;
    }

    printf("Alphabets: %d\n", alphabets);
    printf("Digits: %d\n", digits);
    printf("Special characters: %d\n", specialChars);

    return 0;
}
