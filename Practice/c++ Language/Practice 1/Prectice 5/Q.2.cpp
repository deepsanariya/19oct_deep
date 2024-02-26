#include<iostream>
using namespace std;
template <typename T>
class template
{
public:
    template (T a)
    {
        cout<<"The value of the a is: " << a <<endl;
    };
};
int main()
{
    template <int> t1(76);
    template <float> t2(7.6);
    return 0;
}
