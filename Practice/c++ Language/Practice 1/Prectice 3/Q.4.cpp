#include<iostream>
using namespace std;
class called
{
private:
    int ac, bl, wi;
public:
    int de()
    {
        cout<<"Enter your account number: ";
        cin>>ac;
        cout<<"Enter deposit amount: ";
        cin>>bl;
    }
    int wi()
    {
        cout<<"Your account number: ";
        cout<<endl<<"Enter withdraw amount: ";
        cin>>wi;
        bl = bl - wi;
        cout<<"after withdraw amount your balance: "<<bl;
    }
};
int main()
{
    called ca;
    ca.di();
    ca.wi();
    return 0;
}
