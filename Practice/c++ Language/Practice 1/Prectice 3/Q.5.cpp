#include<iostream>
using namespace std;
float calcperimeter(){

(float l, float w){
    lenght = l;
    width = w;
}

float Rectangle::calcArea(){
    return (lenght * width);
}

float Rectangle::calcperimiter(){
    return 2 * (lenght + width);
}
};
int main()
{
    Rectangle rect(5, 10);
    cout<<"Area: "<<rect.calcArea()<<endl;
    cout<<"perimeter: "<<rect.calcperimiter()<<endl;
    return 0;
}
