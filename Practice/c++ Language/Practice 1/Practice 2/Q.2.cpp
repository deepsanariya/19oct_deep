#include<iostream>
using namespace std;

class representbankaccount
{
    public:
    string named,tyacc;
    int account_number,balance_amo,withdraw_amount;

    void assign_values()
    {
        cout<<"enter account number:";
        cin>>account_number;
        cout<<"enter name account holder name:";
        cin>>named;

    }
    int deposited_an_amount()
    {
        cout<<"enter amount of diposit:";
        cin>>balance_amo;
        return 0;
    }
    int withdraw_amount_after_checking_balance()
    {
        re:
        cout<<"your balance:"<<balance_amo<<endl;
        cout<<"enter widro amount:";
        cin>>withdraw_amount;
        if (balance_amo>withdraw_amount)
        {
            balance_amo=balance_amo-withdraw_amount;
        }
        else
        {
            cout<<"-----------------------------------------"<<endl<<"enter valid amount"<<endl;
            goto re;
        }
        return 0;
    }
    int display_name_and_balance()
    {
        cout<<named<<" your balance:"<<balance_amo;
        return 0;
    }

};
int main()
{
    representbankaccount account;
    account.account_number;
    account.assign_values();
    account.balance_amo;
    account.deposited_an_amount();
    account.withdraw_amount_after_checking_balance();
    account.display_name_and_balance();
    return 0;
}
