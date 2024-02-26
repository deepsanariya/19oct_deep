#include<iostream>
using namespace std;
class clu
{
    int a,b,c;
    public:
         clu()
        {
            cout<<"enter number:-";
            cin>>a>>b;
            cout<<"enter chose 1.add 2.sub 3.mul 4.div:";
            cin>>c;
            switch (c)
            {
            case 1:
                cout<<"sum="<<a+b;
                break;
            case 2:
                cout<<"sub="<<a-b;
                break;
            case 3:
                cout<<"mul="<<a*b;
                break;
            case 4:
                cout<<"div="<<a/b;
                break;
            default:
                cout<<"enter velid chose";
                break;
            }
        }
};

int main()
{
    clu c;
    return 0;
}

