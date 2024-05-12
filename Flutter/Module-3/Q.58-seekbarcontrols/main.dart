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
      title: 'Color Changer',
      theme: ThemeData
        (
        primarySwatch: Colors.blue,
      ),
      home: ColorChanger(),
    );
  }
}

class ColorChanger extends StatefulWidget
{
  @override
  _ColorChangerState createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger>
{
  double redValue = 0;
  double greenValue = 0;
  double blueValue = 0;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar
        (
        title: Text('Color Changer'),
      ),
      body: Center
        (
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text
              (
              'Adjust the sliders to change the color:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Container
              (
              width: 300,
              child: Column
                (
                children:
                [
                  Slider
                    (
                    value: redValue,
                    onChanged: (value)
                    {
                      setState(()
                      {
                        redValue = value;
                      });
                    },
                    min: 0,
                    max: 255,
                    divisions: 255,
                    label: 'Red',
                  ),
                  Slider
                    (
                    value: greenValue,
                    onChanged: (value)
                    {
                      setState(()
                      {
                        greenValue = value;
                      });
                    },
                    min: 0,
                    max: 255,
                    divisions: 255,
                    label: 'Green',
                  ),
                  Slider
                    (
                    value: blueValue,
                    onChanged: (value)
                    {
                      setState(()
                      {
                        blueValue = value;
                      });
                    },
                    min: 0,
                    max: 255,
                    divisions: 255,
                    label: 'Blue',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(redValue.toInt(), greenValue.toInt(), blueValue.toInt(), 1),
    );
  }
}
