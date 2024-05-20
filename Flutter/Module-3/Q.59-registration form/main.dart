import 'package:flutter/material.dart';
import 'package:lohin111/dashboard.dart';
import 'package:lohin111/login.dart';

void main()
{
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      body: Center
        (
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            LoginForm(),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget
{
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>
{

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Form
      (
      key: _formKey,
      child: Container
        (
        margin: EdgeInsets.all(25.00),
        child: Column
          (
          children:
          [

            Text("Login😊",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.pinkAccent),),

            SizedBox(height: 60,),

            TextFormField
              (
              controller:email,
              decoration: InputDecoration(hintText: "Enter Your Email",border: OutlineInputBorder()),
              validator: (value)
              {
                if (value!.isEmpty)
                {
                  return 'Please enter email';
                }
                return null;
              },
            ),
            SizedBox(height: 25,),
            TextFormField(
              controller:password,
              decoration: InputDecoration(hintText: "Enter Your Password",border: OutlineInputBorder()),
              obscureText: true,
              validator: (value)
              {
                if (value!.isEmpty)
                {
                  return 'Please enter a current password';
                }
                return null;
              },
            ),
            SizedBox(height: 25,),

            MaterialButton(onPressed: ()
            {
              if(_formKey.currentState!.validate())
              {
                String email1 = email.text.toString();
                String pass1 = password.text.toString();

                if(email1=="deep@gmail.com" && pass1=="123456")
                {
                  print("Logged in Succesfully");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard()));
                }
                else
                {
                  print("Invalid Credentials");
                }
              }
            },
              child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              shape: OutlineInputBorder(),
              minWidth: double.infinity,
              color: Colors.pinkAccent,
            ),

            SizedBox(height: 25,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text("Create an ew account?"),
                SizedBox(width: 5,),
                GestureDetector
                  (
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => registration()));
                  },
                  child: Text("Signup",style: TextStyle(color: Colors.pinkAccent),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}