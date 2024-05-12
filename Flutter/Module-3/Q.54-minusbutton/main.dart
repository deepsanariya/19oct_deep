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
      title: 'Font Size Changer',
      theme: ThemeData
        (
        primarySwatch: Colors.blue,
      ),
      home: FontSizeChanger(),
    );
  }
}

class FontSizeChanger extends StatefulWidget
{
  @override
  _FontSizeChangerState createState() => _FontSizeChangerState();
}

class _FontSizeChangerState extends State<FontSizeChanger>
{
  double _fontSize = 20.0;

  void _increaseFontSize()
  {
    setState(()
    {
      _fontSize += 2.0;
    });
  }

  void _decreaseFontSize()
  {
    setState(()
    {
      if (_fontSize > 2.0)
      {
        _fontSize -= 2.0;
      }
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar
        (
        title: Text('Font Size Changer'),
      ),
      body: Center
        (
        child: Text
          (
          'DEEP',
          style: TextStyle(fontSize: _fontSize),
        ),
      ),

      floatingActionButton: Column
        (
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children:
        [
          FloatingActionButton
            (
            onPressed: _increaseFontSize,
            tooltip: 'Increase Font Size',
            child: Icon(Icons.add),
          ),

          SizedBox(height: 16.0),
          FloatingActionButton
            (
            onPressed: _decreaseFontSize,
            tooltip: 'Decrease Font Size',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
