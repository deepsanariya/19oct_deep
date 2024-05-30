

import 'package:flutter/material.dart';

import 'Create Individual Pages.dart';
import 'draft_page.dart';
import 'sent_page.dart';
import 'trash_page.dart';

void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>
  [
    InboxPage(),
    SentPage(),
    DraftPage(),
    TrashPage(),
  ];

  void _onItemTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('Gmail Clone'),
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar
        (
        items: const <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Sent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.drafts),
            label: 'Drafts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            label: 'Trash',
          ),
        ],

        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}



