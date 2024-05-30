import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrashPage extends StatelessWidget
{
  const TrashPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
      (
        itemCount: 10,
        itemBuilder: (context, index)
        {
          return ListTile
            (
            leading: CircleAvatar
              (
              child: Text('T'),
            ),
            title: Text('Trash Email ${index +1}'),
            subtitle: Text('This is the body of trash email ${index +1}'),
          );
        }
    );
  }
}
