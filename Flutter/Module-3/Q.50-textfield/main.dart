import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Reversal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NumberReversalPage(),
    );
  }
}

class NumberReversalPage extends StatefulWidget {
  @override
  _NumberReversalPageState createState() => _NumberReversalPageState();
}

class _NumberReversalPageState extends State<NumberReversalPage> {
  TextEditingController _controller = TextEditingController();
  String _reversedNumber = '';

  void _reverseNumber(String input) {
    String reversed = input.split('').reversed.join();
    setState(() {
      _reversedNumber = reversed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Reversal'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter a number',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  String input = _controller.text;
                  _reverseNumber(input);
                },
                child: Text('Reverse Number'),
              ),
              SizedBox(height: 20),
              Text(
                'Reversed Number: $_reversedNumber',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
