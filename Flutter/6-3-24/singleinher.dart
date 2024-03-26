class A
{
  a1()
  {
    print('A1 called');
  }
}
class B extends A
{
  ba()
  {
    print('A2 called');
  }

  void b1() {}
}
void main()
{
  var a = B();
  a.a1();
  a.b1();
}