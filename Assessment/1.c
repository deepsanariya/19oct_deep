#include <stdio.h>
#include <string.h>
#include <ctype.h>

// Function prototypes
void reverseString(char *str);
void concatenateStrings(char *str1, char *str2);
int isPalindrome(char *str);
void copyString(char *dest, char *src);
int stringLength(char *str);
int countFrequency(char *str, char ch);
void countVowelsAndConsonants(char *str, int *vowels, int *consonants);
void countDigitsAndSpaces(char *str, int *digits, int *spaces);

int main() {
    char inputString[100];
    char option;
    int vowels, consonants, digits, spaces;

    do {
        printf("\nString Operations Menu:\n");
        printf("1. Reverse a string\n");
        printf("2. Concatenate strings\n");
        printf("3. Check palindrome\n");
        printf("4. Copy a string\n");
        printf("5. Length of the string\n");
        printf("6. Frequency of a character\n");
        printf("7. Count vowels and consonants\n");
        printf("8. Count digits and spaces\n");
        printf("Enter your choice: ");
        scanf(" %c", &option);

        switch(option) {
            case '1':
                printf("Enter a string to reverse: ");
                scanf("%s", inputString);
                reverseString(inputString);
                printf("Reversed string: %s\n", inputString);
                break;
            case '2':
                printf("Enter the first string: ");
                scanf("%s", inputString);
                printf("Enter the second string: ");
                char secondString[100];
                scanf("%s", secondString);
                concatenateStrings(inputString, secondString);
                printf("Concatenated string: %s\n", inputString);
                break;
            case '3':
                printf("Enter a string to check palindrome: ");
                scanf("%s", inputString);
                if (isPalindrome(inputString))
                    printf("The string is a palindrome.\n");
                else
                    printf("The string is not a palindrome.\n");
                break;
            case '4':
                printf("Enter a string to copy: ");
                char sourceString[100];
                scanf("%s", sourceString);
                copyString(inputString, sourceString);
                printf("Copied string: %s\n", inputString);
                break;
            case '5':
                printf("Enter a string to find its length: ");
                scanf("%s", inputString);
                printf("Length of the string: %d\n", stringLength(inputString));
                break;
            case '6':
                printf("Enter a string: ");
                scanf("%s", inputString);
                char ch;
                printf("Enter the character to find its frequency: ");
                scanf(" %c", &ch);
                printf("Frequency of '%c' in the string: %d\n", ch, countFrequency(inputString, ch));
                break;
            case '7':
                printf("Enter a string to count vowels and consonants: ");
                scanf("%s", inputString);
                countVowelsAndConsonants(inputString, &vowels, &consonants);
                printf("Number of vowels: %d\n", vowels);
                printf("Number of consonants: %d\n", consonants);
                break;
            case '8':
                printf("Enter a string to count digits and spaces: ");
                scanf("%s", inputString);
                countDigitsAndSpaces(inputString, &digits, &spaces);
                printf("Number of digits: %d\n", digits);
                printf("Number of spaces: %d\n", spaces);
                break;
            default:
                printf("Invalid option! Please enter a valid option.\n");
        }

        printf("Do you want to continue? (y/n): ");
        scanf(" %c", &option);
    } while (option == 'y' || option == 'Y');

    return 0;
}

// Function to reverse a string
void reverseString(char *str) {
    int length = strlen(str);
    for (int i = 0; i < length / 2; i++) {
        char temp = str[i];
        str[i] = str[length - i - 1];
        str[length - i - 1] = temp;
    }
}

// Function to concatenate two strings
void concatenateStrings(char *str1, char *str2) {
    strcat(str1, str2);
}

// Function to check if a string is palindrome
int isPalindrome(char *str) {
    int length = strlen(str);
    for (int i = 0; i < length / 2; i++) {
        if (str[i] != str[length - i - 1])
            return 0;
    }
    return 1;
}

// Function to copy a string
void copyString(char *dest, char *src) {
    strcpy(dest, src);
}

// Function to find the length of a string
int stringLength(char *str) {
    return strlen(str);
}

// Function to count the frequency of a character in a string
int countFrequency(char *str, char ch) {
    int count = 0;
    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] == ch)
            count++;
    }
    return count;
}

// Function to count vowels and consonants in a string
void countVowelsAndConsonants(char *str, int *vowels, int *consonants) {
    *vowels = 0;
    *consonants = 0;
    for (int i = 0; str[i] != '\0'; i++) {
        if (isalpha(str[i])) {
            if (tolower(str[i]) == 'a' || tolower(str[i]) == 'e' || tolower(str[i]) == 'i' || tolower(str[i]) == 'o' || tolower(str[i]) == 'u')
                (*vowels)++;
            else
                (*consonants)++;
        }
    }
}

// Function to count digits and spaces in a string
void countDigitsAndSpaces(char *str, int *digits, int *spaces) {
    *digits = 0;
    *spaces = 0;
    for (int i = 0; str[i] != '\0'; i++) {
        if (isdigit(str[i]))
            (*digits)++;
        else if (isspace(str[i]))
            (*spaces)++;
    }
}
