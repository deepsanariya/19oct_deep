
#include<iostream>
using namespace std;

class area
{
    public:
    int are(int l,int b)
    {
        cout<<"area of rectangle:"<<l*b;
    }

    int are(float l,float b,int )
    {
        cout<<endl<<"area of triangle:"<<0.5*l*b;
    }

    int are(int l)
    {
        cout<<endl<<"area of circle"<<3.13*l*l;
    }
};

int main(int argc, char const *argv[])
{
    int l,b;
    cout<<"enter lenth:";
    cin>>l;
    cout<<"enter height";
    cin>>b;
    area a1;
    a1.are(l,b);
    a1.are(l,b,l);
    a1.are(l);
    return 0;
}
