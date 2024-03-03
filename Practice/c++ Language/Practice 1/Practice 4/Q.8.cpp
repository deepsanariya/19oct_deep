#include<iostream>
using namespace std;

class cal
{
    public:
    int add(int n1,int n2,int n3)
    {
        cout<<"area of add:"<<n1+n2+n3;
    }
    int add(int n1,int n2)  //Function Overloading
    {
        cout<<endl<<"area of sub:"<<n1-n2;
    }
    int add(int n1,int n2,int n3,int n4)
    {
        cout<<endl<<"area of mul:"<<n1*n2*n3*n4;
    }
    int add(float n1,float n2)
    {
        cout<<endl<<"area of mul:"<<n1/n2;
    }
};

int main(int argc, char const *argv[])
{

    cal c1;
    c1.add(21,23,23);
    c1.add(23,45);
    c1.add(12,34,23,23);
    c1.add(24,3);
    return 0;
}
