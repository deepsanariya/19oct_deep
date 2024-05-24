import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Myapp(),debugShowCheckedModeBanner: false,));
}

class Myapp extends StatefulWidget
{
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp>
{

  String _selectedCity = "Selected city";

  void _showSelectionDialog (BuildContext context)
  {
    showDialog(context: context, builder: (BuildContext context)
    {

      return AlertDialog
        (
        title: Text("Select a city"),
        content: SingleChildScrollView
          (
          child: ListBody
            (
            children:
            [
              _cityItems("Morbi"),
              _cityItems("Ahmedabad"),
              _cityItems("bhuj"),
              _cityItems("Rajkot"),
              _cityItems("Surat"),
            ],
          ),
        ),
      );
    },
    ).then((value)

    {
      if(value != null)
      {
        setState(()
        {
          _selectedCity = value;
        });
      }
    });
  }

  _cityItems(String city)
  {
    return ListTile
      (
      title: Text(city),
      onTap: ()
      {
        Navigator.of(context).pop(city);
      },
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("City Selection"),backgroundColor: Colors.cyan,),
      body: Center
        (
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            MaterialButton
              (
              color: Colors.cyan,
              onPressed: ()
              {
                _showSelectionDialog(context);
              },child: Text("Select Your City"),
            ),
            SizedBox(height: 30,),

            Text("Your City :",style: TextStyle(fontSize: 20.0),),
            SizedBox(height: 10,),

            Text(_selectedCity,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
          ],

        ),
      ),

    );


  }
}