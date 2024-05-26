import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
        title: 'Edit,view,delete options',
        theme: ThemeData
          (
            primarySwatch: Colors.blue,
          ),
        home: MyHomePage(),
      );
  }
}

class MyHomePage extends StatefulWidget
{
  const MyHomePage({super.key});

  @override
  _MyHomePagestate createState() => _MyHomePagestate();
}

class _MyHomePagestate extends State<MyHomePage>
{
  List<String> item = List.generate(10, (index) => 'Item ${index + 1}');

  void _editItem(int index)
  {
    print('Edit ${item[index]}');
  }

  void _viewItem(int index)
  {
    print('View ${item[index]}');
  }

  void _deleteItem(int index)
  {
    setState(()
    {
      item.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text('Context Manu in ListView'),),
        body: ListView.builder
          (
            itemCount: item.length,
            itemBuilder: (context, index)
            {
              return ListTile
                (
                  title: Text(item[index]),
                  trailing: PopupMenuButton<String>
                    (
                      onSelected: (String result)
                    {
                      switch (result)
                      {
                        case 'Edit':
                          _editItem(index);
                          break;

                        case 'View':
                          _viewItem(index);
                          break;

                        case 'Delete':
                          _deleteItem(index);
                          break;
                      }
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                      const PopupMenuItem<String>
                        (
                          value: 'Edit',
                          child: Text('Edit'),
                        ),

                      const PopupMenuItem<String>
                        (
                        value: 'View',
                        child: Text('View'),
                      ),

                      const PopupMenuItem<String>
                        (
                        value: 'Delete',
                        child: Text('Delete'),
                      ),

                    ],
                    ),
                );
            },
          ),
      );

  }
}


