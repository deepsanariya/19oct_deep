import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main()
{
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
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
    return Scaffold(
      appBar: AppBar(
        title: Text("URL Launcher"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                _makeCall("1234567890");
              },
              child: Icon(Icons.call),
            ),
            SizedBox(height: 20),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                _sendSMS("1234567890");
              },
              child: Icon(Icons.sms),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _makeCall(String number) async {
    var url = Uri.parse("tel:$number");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      _showError("Could not launch $url");
    }
  }

  Future<void> _sendSMS(String number) async {
    var url = Uri.parse("sms:$number");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      _showError("Could not launch $url");
    }
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ));
  }
}
