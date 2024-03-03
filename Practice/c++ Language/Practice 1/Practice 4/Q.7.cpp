#include<iostream>
using namespace std;
class A
{
public:
    A()
    {
        cout<<"grant parent class";
    }
};
class B :public A
{
public:
    B()
    {
        cout<<endl<<"parent class";
    }
};

class C : public B
{
public:
    C()
    {
        cout<<endl<<"child class";
    }
};

int main()
{
    C c1;
    return 0;
}
