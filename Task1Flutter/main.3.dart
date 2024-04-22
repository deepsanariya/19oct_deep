import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myapp3 extends StatefulWidget
{
  const Myapp3({super.key});

  @override
  State<Myapp3> createState() => _Myapp3State();
}

class _Myapp3State extends State<Myapp3>
{

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
      child: GridView.builder
      (
      itemCount: imgAbcd.length,
      itemBuilder: (BuildContext context, int index)
      {
        return Image.asset(imgAbcd[index]);
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 4.0
      ),

    ))
    );
  }
}
