import 'package:flutter/material.dart';

import 'DetailScreen.dart';


class MyApp2 extends StatefulWidget
{
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp2>
{

  List<String> Abcd =
  [
    "Android",
    "Java",
    "Php"
  ];
  List<String> imgAbcd =
  [
    "assets/android.png",
    "assets/java.png",
    "assets/php.png"
  ];


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar
          (
          title: Text("List Ex"),

        ),
        body: Center
          (
          child: ListView.builder
            (
              itemCount: Abcd.length,
              itemBuilder:(context,index)
              {
                return ListTile
                  (
                  leading: Image.asset(imgAbcd[index],width: 80, height: 80,),
                  title: Text(Abcd[index]),
                  subtitle:Column
                    (
                    children:
                    [
                      Text(Abcd[index]),
                      Text(Abcd[index]),
                      Text(Abcd[index]),
                    ],
                  ) ,
                  onTap: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => DetailScreen(index:index ,)));
                  },
                );
              }
          ),
        )
    );
  }
}
