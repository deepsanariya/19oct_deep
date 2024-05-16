
import 'package:flutter/material.dart';
import 'package:screen/main2.dart';

void main()
{
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar
        (
        title: Text("Screen"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column
        (
        children:
        [
          ElevatedButton(onPressed: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Screen()));
          }, child: Text("Screen 1")),

          ElevatedButton(onPressed: ()
          {

          }, child: Text("Screen 2"))
        ],
      ),
    );
  }
}