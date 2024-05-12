import 'dart:io';

void main()
{
  print("Enter number to print table");
  int N = int.parse(stdin.readLineSync().toString());

  for(int i=1;i<=10;i++)
  {
    var table = N * i;
    print("$N * $i = $table");
  }
}