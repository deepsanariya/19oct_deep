#include<iostream>
using namespace std;
class called
{
private:
    int age;
    string name, country;

public:
    void get()
    {
        cout<<"Enter name:";
        cin>>name;
        cout<<"Enter age:";
        cin>>age;
        cout<<"Enter country:";
        cin>>country;
    }

    void main()
    {
        cout<< name <<"your age is "<< age <<" and country "<< country <<".";
    }
};

int main()
{
    called ca;
    ca.get();
    ca.set();
    return 0;
}
