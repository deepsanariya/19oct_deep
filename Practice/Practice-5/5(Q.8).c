#include<stdio.h>
char str[100];

int i,v=0,c=0;
int cha()
{

    printf("enter string: ");
    gets(str);
    for (i = 0; i <= strlen(str); i++)
    {
        if (str[i]==97 || str[i]==101 || str[i]==105 || str[i]==111 || str[i]==117 || str[i]==65 || str[i]==69 || str[i]==73 || str[i]==79 || str[i]==85)
        {
            v++;
        }
        else
        {
            c++;
        }
    }
    printf("vovle %d\n",v);
    printf("consonants %d",c);

}
int main(int argc, char const *argv[])
{
    cha();
    return 0;
}
