#include<iostream>
using namespace std;
template <class t>
t div (t a, t b)
{
    return a/b;
}

int main()
{
    cout<<endl<<div <int> (100, 3);
    cout<<endl<<div <float> (100, 3);
    return 0;
}
