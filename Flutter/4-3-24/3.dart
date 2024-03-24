
class A1
{
  A1()
  {
    print('A1');
  }

  A1.abcd()
  {
    print('A2');
  }
}

void main()
{
  var a1 = A1();
  var a2 = A1.abcd();
}
