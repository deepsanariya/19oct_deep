import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SentPage extends StatelessWidget
{
  const SentPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
      (
        itemCount: 10,
        itemBuilder: (context , index)
        {
          return ListTile(
            leading: CircleAvatar(
              child: Text('S'),
            ),
            title: Text('Sent Email ${index + 1}'),
            subtitle: Text('this is the body of sent email ${index + 1}'),
          );
        }
    );
  }
}
