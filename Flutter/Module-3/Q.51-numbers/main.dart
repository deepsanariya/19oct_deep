import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Odd Numbers Finder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InputNumbersScreen(),
    );
  }
}

class InputNumbersScreen extends StatelessWidget {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Numbers'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: number1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter first number'),
              ),
              TextField(
                controller: number2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter second number'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int? num1 = int.tryParse(number1Controller.text);
                  int? num2 = int.tryParse(number2Controller.text);

                  if (num1 != null && num2 != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OddNumbersScreen(num1: num1, num2: num2),
                      ),
                    );
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OddNumbersScreen extends StatelessWidget {
  final int num1;
  final int num2;

  OddNumbersScreen({required this.num1, required this.num2});

  @override
  Widget build(BuildContext context) {
    List<int> oddNumbers = [];
    for (int i = num1; i <= num2; i++) {
      if (i % 2 != 0) {
        oddNumbers.add(i);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Odd Numbers'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: oddNumbers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(oddNumbers[index].toString()),
            );
          },
        ),
      ),
    );
  }
}