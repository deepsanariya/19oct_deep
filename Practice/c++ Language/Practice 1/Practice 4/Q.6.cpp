#include<iostream>
using namespace std;

class A
{
    string a;

protected:
    string str;
    A()
    {
        cout<<"enter your name:";
        cin>>a;
        str=a;
    }
};

class B :virtual A
{
    public:
    int show()
    {
        cout<<"your name:"<<str;
    }
};

int main()
{
    B b1;
    b1.show();
    return 0;
}
