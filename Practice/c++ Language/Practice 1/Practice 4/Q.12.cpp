
#include<iostream>
using namespace std;

class Swap
{
    int a,b;

public:
    friend int Swa(Swap &obj);
};

int Swa(Swap &obj)
{
    cout<<"enter first number:";
    cin>>obj.a;
    cout<<"enter secand number:";
    cin>>obj.b;
    cout<<"before swaping a="<<obj.a<<" b="<<obj.b;
    obj.a=obj.a+obj.b;
    obj.b=obj.a-obj.b;
    obj.a=obj.a-obj.b;
    cout<<endl<<"a="<<obj.a<<endl<<"b="<<obj.b;
}

int main(int argc, char const *argv[])
{
    Swap s1;
    Swa(s1);
    return 0;
}
