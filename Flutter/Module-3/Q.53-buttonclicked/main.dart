import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
        title: 'Background Changer',
        theme: ThemeData
          (
            primarySwatch: Colors.indigo,
          ),
      home: BackgroundChanger(),
      );
  }
}
class BackgroundChanger extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _BackgroundChangerState();
}
class _BackgroundChangerState extends State<BackgroundChanger>
{
  Color _backgroundColor = Colors.blue;

  void _changeBackground()
  {
    setState(()
    {
      _backgroundColor  = Colors.amberAccent;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar
          (
            title: Text('Background Changer'),
          ),
      body: Container
        (
          color: _backgroundColor,
          child: Center
            (
              child: ElevatedButton
                (
                onPressed: _changeBackground,
                    child: Text('Change Background') ,
                ),
            ),
        ),
      );
  }
}
