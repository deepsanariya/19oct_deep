import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/main2.dart';

void main()
{
  runApp(MaterialApp(home: MyApp2()));
}

class Myapp extends StatefulWidget
{
  @override
  State<Myapp> createState() => _MyAppState();
}

class _MyAppState extends State<Myapp>
{
  get itemBuilder => null;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar
        (
        title: Text("SplashScreen"),
        ),
      body: Center
        (
        child: ListView.builder
          (
            itemBuilder:(context,index)
            {
              return ListView.builder
                (
                  itemCount: 5,
                  itemBuilder: (context,index),
                  prototypeItem: (
                  return ListView
                  (
                    padding: Icon(Icons.add),
                    title: Text("A"),
                    subtitle: Text("Alphabet"),
                    padding: Icon(Icons.logout),
                  )),
                );
            }
        ),
      ),
    );
  }
}
