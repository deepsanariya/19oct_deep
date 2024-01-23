
#include<stdio.h>
char temp;
void revStr(char ch[], int s, int e){
    if(s >= e){
        return;
    }
    temp = ch[s];
    ch[s] = ch[e];
    ch[e] = temp;
    revStr(ch, s + 1, e - 1);
}
int main()
{
    char iStr[100];
    printf("\nEnter a string = ");
    scanf("%d", iStr);

    int l = 0;
    while (iStr[l] !=0){
        l++;
    }
    revStr(iStr, 0, 1 - 1);
    printf("\nReverse string = %s", iStr);
    return 0;
}
