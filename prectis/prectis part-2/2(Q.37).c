#include<stdio.h>
int main(int argc, char const *argv[])
{
    char v;
    printf("enter char:-");
    scanf("%c",&v);
    switch (v)
    {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
    case 'A':
    case 'E':
    case 'I':
    case 'O':
    case 'U':
        printf("%c is vowel",v);
        break;

    default:
        printf("%c is consonant",v);
        break;
    }
    return 0;
}
