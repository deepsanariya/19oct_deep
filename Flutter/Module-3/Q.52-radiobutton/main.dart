import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  String result = '';

  void calculate(String operation) {
    double num1 = double.tryParse(number1Controller.text) ?? 0;
    double num2 = double.tryParse(number2Controller.text) ?? 0;

    setState(() {
      switch (operation) {
        case 'Add':
          result = (num1 + num2).toString();
          break;
        case 'Subtract':
          result = (num1 - num2).toString();
          break;
        case 'Multiply':
          result = (num1 * num2).toString();
          break;
        case 'Divide':
          if (num2 == 0) {
            result = 'Cannot divide by zero';
          } else {
            result = (num1 / num2).toString();
          }
          break;
        default:
          result = 'Invalid operation';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Number 1',
              ),
            ),
            TextField(
              controller: number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Number 2',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => calculate('Add'),
                  child: Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () => calculate('Subtract'),
                  child: Text('Subtract'),
                ),
                ElevatedButton(
                  onPressed: () => calculate('Multiply'),
                  child: Text('Multiply'),
                ),
                ElevatedButton(
                  onPressed: () => calculate('Divide'),
                  child: Text('Divide'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Result: $result',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}