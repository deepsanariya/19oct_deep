#include<iostream>
using namespace std;

class matrix
{
public:
    int arr1[100],arr2[100],size;
    int get()
    {
        cout<<"enter size of array:";
        cin>>size;
        for (int i = 0; i < size; i++)
        {
            cout<<"enter first Matrix values:";
            cin>>arr1[i];
        }
        cout<<endl;
        for (int i = 0; i < size; i++)
        {
            cout<<"enter secand Matrix values:";
            cin>>arr2[i];
        }
    }
    matrix operator+()
    {
        cout<<"Matrix Addition = ";
        for (int i = 0; i < size; i++)
        {
           cout<<arr1[i]+arr2[i]<<" ";
        }
    }
};

class add_matrix
{

};

int main(int argc, char const *argv[])
{
    matrix m1;
    m1.get();
    m1.operator+();
    return 0;
}
