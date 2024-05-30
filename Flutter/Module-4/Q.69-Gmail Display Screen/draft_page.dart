import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget
{
  const DraftPage({super.key});

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
            child: Text('D'),
          ),
          title: Text('Draft Email ${index + 1}'),
          subtitle: Text('This is the body of draft email ${index + 1}'),
        );
      },
    );
  }
}
