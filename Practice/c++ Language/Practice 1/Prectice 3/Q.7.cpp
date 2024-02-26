#include<iostream>
using namespace std;
class date
{
    int day, month, year;

public:
    int get()
    {
        cout<<"Enter Day:";
        cin>>day;
        cout<<"Enter Month:";
        cin>>month;
        cout<<"Enter year:";
        cin>>year;

        if(day >=31 & month >= 12)
        {
            cout<<"Enter valid date";
        }
        else
        {
            cout<< day <<"/" <<month <<"/"<<year;
        }
    }
};

int main()
{
    date d1;
    d1.get();
    return 0;
}
