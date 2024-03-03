#include<iostream>
using namespace std;

class get
{
protected:
    int width, length, area;
    get()
    {
        int width,length;
        cout<<"enter width:";
        cin>>width;
        cout<<"enter length:";
        cin>>length;
        area=width*length;
    }
};

class  rectangle: virtual get
{
public:
    int rect()
    {
        cout<<"Rectangle area="<<area;
    }

};

int main()
{
    rectangle rec;
    rec.rect();
    return 0;
}
