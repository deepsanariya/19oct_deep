#include<iostream>
using namespace std;
class circle
{
    int r, pi=3.14, ca, cf;
public:
    int circlearea()
    {
        cout<<"Enter Values:";
        cin>>r;
        ca = pi * r * r;
        cout<<"area of circle="<<ca;
    }

    int circumference()
    {
        cf=2*(pi*r);
        cout<<endl<<"circumference="<<cf;
    }
};


int main()
{
    circle ci;
    ci.circlearea();
    ci.circumference();
    return 0;
}
