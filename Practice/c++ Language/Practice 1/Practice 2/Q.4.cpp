#include<iostream>
using namespace std;
class called
{
private:
    int length, width, ra, p, pi=3.14;

public:
    int rectangles()
    {
        cout<<"Enter Length:";
        cin>>length;
        cout<<"Enter Width:";
        cin>>width;
        ra=length*width;
        cout<<"rectangles = "<<ra;
    }

    int perimeter()
    {
        p = 2*(pi*(ra));
        cout<<endl<<"perimeter = "<<p;
    }
};

int main()
{
    called ca;
    ca.rectangles();
    ca.perimeter();
    return 0;
}
