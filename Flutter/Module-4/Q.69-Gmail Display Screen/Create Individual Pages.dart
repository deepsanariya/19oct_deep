import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget
{
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
      (
        itemCount: 10,
        itemBuilder: (context, index)
        {
          return ListTile(
            leading: CircleAvatar(
              child: Text('I'),
            ),
            title: Text('Inbox Email ${index+1}'),
            subtitle: Text('This is the body of inbox email ${index}'),
          );
        },
      );
  }
}
