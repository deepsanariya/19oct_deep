#include<iostream>
using namespace std;
int roll;
class Students
{
protected:
    Students()
    {
        cout<<"enter students roll number:-";
        cin>>roll;
    }

};

class test: virtual Students
{
protected:
    int sub1,sub2;
    test()
    {
        cout<<"enter first subject mark:-";
        cin>>sub1;
        cout<<"enter second subject mark:-";
        cin>>sub2;
    }
};

class result: virtual test
{
public:
    int total;
    result()
    {
        total=sub1+sub2;
        cout<<"student roll number:-"<<roll;
        cout<<endl<<"student total mark:-"<<total;

    }
};

int main()
{
    result resul;
    resul.total;
    return 0;
}
