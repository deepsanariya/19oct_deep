import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar
        (title: Text("Date picker app"),
        backgroundColor: Colors.blueGrey,),
      body: Padding
        (
        padding: EdgeInsets.all(25.0),
        child: Center
          (
          child: Column
            (
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              TextFormField
                (
                controller: _date,
                style: TextStyle(fontWeight: FontWeight.bold),
                readOnly: true,
                decoration: InputDecoration
                  (
                    border: OutlineInputBorder(),
                    hintText: "Select a date",
                    prefixIcon: IconButton
                      (
                      onPressed: ()
                      {
                        showDatePicker
                          (
                            context: context,
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2050)).then((value) => _date.text = value.toString()
                        );
                      }, icon: Icon(Icons.calendar_month_sharp),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );


  }
}