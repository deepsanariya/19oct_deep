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
      title: 'Navigation Drawer App',
      theme: ThemeData
        (
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget
{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>
  [
    GalleryPage(),
    AudioPage(),
    VideoPage(),
  ];

  void _onItemTapped(int index)
  {
    setState(()
    {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Close the drawer
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar
        (
        title: Text('Navigation Drawer App'),
      ),
      drawer: Drawer
        (
        child: ListView
          (
          padding: EdgeInsets.zero,
          children: <Widget>
          [
            DrawerHeader
              (
              decoration: BoxDecoration
                (
                color: Colors.blueGrey,
              ),
              child: Text
                (
                'Navigation Drawer',
                style: TextStyle
                  (
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile
              (
              leading: Icon(Icons.photo),
              title: Text('Gallery'),
              onTap: () => _onItemTapped(0),
            ),
            ListTile
              (
              leading: Icon(Icons.audiotrack),
              title: Text('Audio'),
              onTap: () => _onItemTapped(1),
            ),
            ListTile
              (
              leading: Icon(Icons.videocam),
              title: Text('Video'),
              onTap: () => _onItemTapped(2),
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}

class GalleryPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Center
      (
      child: Text
        (
        'Gallery Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class AudioPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Center
      (
      child: Text
        (
        'Audio Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class VideoPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Center
      (
      child: Text
        (
        'Video Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
