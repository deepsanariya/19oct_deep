#include<stdio.h>
#include<string.h>

int main()
{
    char str[100];
    int i;

    printf("Enter a sentence: ");
    fgets(str, sizeof(str), stdin);

    printf("Original sentence: %s", str);

    for (i = 0; str[i] != '\0'; i++) {
        str[i] = islower(str[i]) ? toupper(str[i]) : tolower(str[i]);
    }

    printf("Modified sentence: %s", str);

    return 0;
}
