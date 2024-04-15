import 'dart:io';

void main()
{
  int rem=0,sum=0;
  print("Enter any number:");
  int N = int.parse(stdin.readLineSync().toString());

  while(N>0)
  {
    rem = N % 10;
    sum = sum + rem;
    N = N ~/ 10;
  }
  print("sum of each digits : $sum");
}