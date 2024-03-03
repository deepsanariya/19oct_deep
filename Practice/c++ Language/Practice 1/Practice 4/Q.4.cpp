#include<iostream>
using namespace std;

class student_name
{
public:
    string name;
    int marks;
    student_name()
    {
        cout<<"enter student name:";
        cin>>name;
    }
};

class get_marks
{
public:
    int math,ba,account,gujarati,pr,total;
    get_marks()
    {
        cout<<"enter math marks:";
        cin>>math;
        cout<<"enter ba marks:";
        cin>>ba;
        cout<<"enter account marks:";
        cin>>account;
        cout<<"enter gujarati marks:";
        cin>>gujarati;
        total=math+ba+account+gujarati;
        pr=total/4;
    }
};

class show : public student_name,get_marks
{
public:
    show()
    {
        cout<<"student name:"<<name;
        cout<<endl<<"student total marks:"<<total;
        cout<<endl<<"student percentage:"<<pr;
    }

};

int main()
{
    show s1;
    return 0;
}
