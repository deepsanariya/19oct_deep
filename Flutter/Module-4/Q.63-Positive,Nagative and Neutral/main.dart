import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
      home: Scaffold
        (
        appBar: AppBar
          (
          title: Text("Toast Message"),
        ),
        body: Center
          (
          child: Row
            (
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Padding
                (
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton
                  (
                  onPressed: ()
                  {
                    Fluttertoast.showToast(msg: "Positive Button");
                  },
                  child: Text("Positive"),
                ),
              ),
              Padding
                (
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton
                  (
                  onPressed: ()
                  {
                    Fluttertoast.showToast(msg: "Neutral Button");
                  },
                  child: Text("Neutral"),
                ),
              ),
              Padding
                (
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton
                  (
                  onPressed: ()
                  {
                    Fluttertoast.showToast(msg: "Negative Button");
                  },
                  child: Text("Negative"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
