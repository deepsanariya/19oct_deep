
import 'dart:io';

void main()
{
  int sum=0;

  print("Enter any number:");
  int n = int.parse(stdin.readLineSync().toString());

  int lastDigit = n % 10;

  while(n >= 10)
  {
    n = n ~/ 10;
  }

  int firstDigit = n;
  sum = firstDigit + lastDigit;
  print("Sum of first and last digit : $sum");
}
