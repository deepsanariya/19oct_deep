
class Student
{
  var fname,lname,email;

  Student(var f,var l,var e)
  {
    fname = f;
    lname = l;
    email = e;
  }

  void display()
  {
    print('Your firstname : $fname');
    print('Your lname : $lname');
    print('Your email : $email');
  }
}

void main()
{
  var s1 = Student('deep', 'Sanariya', 'deep@gmail.com');
  var s2 = Student('abcd', 'efgh', 'abcd@gmail.com');

  s1.display();
  s2.display();
}
