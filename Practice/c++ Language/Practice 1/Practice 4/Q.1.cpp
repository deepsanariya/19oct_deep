#include<iostream>
using namespace std;

class cricketer
{
public:
    string batsma;
    int run[5],total_run=0,best_performance=0,max;
    float average_rum;
};

class batsman:public cricketer
{
public:
    int input_data()
    {
        cout<<"enter bastsmane name:";
        cin>>batsma;
    }

    int avg()
    {
        int i;
        for ( i = 1; i <= 5; i++)
        {
            cout<<"enter "<<i<<" match run:";
            cin>>run[i];
        }
    }

    int Total()
    {
        for(int i=0;i<5;i++)
        {
            total_run=total_run+run[i];
        }
        average_rum=(float)total_run/5;
    }

    int performance()
        {
            for (int i = 1; i <= 5; i++)
            {
                if (run[i]>max)
                {
                    max=run[i];
                }
            }
        }

        int show()
        {
            cout<< "bastsmane name:"<<batsma;
            cout<<endl<< "total run:"<<total_run;
            cout<<endl<< "avg run:"<<average_rum;
            cout<<endl<< "best performance in "<<max;
        }
};

int main()
{
    batsman b1;
    b1.input_data();
    b1.avg();
    b1.performance();
    b1.Total();
    b1.show();
    return 0;
}
