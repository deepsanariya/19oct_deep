import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:permission_handler/permission_handler.dart';

void main()
{
  runApp(Myapp());
}

class Myapp extends StatefulWidget
{
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp>
{

  @override
  void initState()
  {
    super.initState();
    _requestPermissions();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar
        (
        title: Text("Phone call permission"),
        ),
      body: Center
        (
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            MaterialButton
              (
              color: Colors.blue.shade300,
              onPressed: ()
              {
                _makePhoneCall();
              },child: Icon(Icons.call),
            ),
          ],
        ),
      ),
    );
  }

  void _requestPermissions()async
  {
    var status =  Permission.phone.status;
    if(await status.isGranted)
    {
      Permission.phone.request();
    }
  }

  void _makePhoneCall() async
  {
    await FlutterPhoneDirectCaller.callNumber("1234567890");
  }
}