#include<iostream>
#include<string>

using namespace std;
class bankaccount{
private:
    string name;
    int accountNumber;
    string type;
    double balance;

public:
    // Constructor to assign initial values
    bankaccount(string n, int accNum, string t, double b){
        name : n;
        accountnumber : accNum;
        type : t;
        balance : b;
    }

    //function to display name and balance
    void display()
    {
        cout<<"name: "<<name << ", Account Number: " <<", type: " <<type <<", balance: " <<balance <<endl;
    }
};

int main()
{
    bankaccount account("deep", 12345, "Checking", 1000);
    account.display();
    account.deposit(500);
    account.display();
    account.withdraw(200);
    account.display();
    return 0;
}
