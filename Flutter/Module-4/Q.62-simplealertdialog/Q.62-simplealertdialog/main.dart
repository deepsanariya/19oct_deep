import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> simpleDialog() async
{
  switch (await showDialog
    (
      context: context,
      builder: (BuildContext context)
      {
        return SimpleDialog
          (
          title: const Text('Simple Dialog, Is it nice?'),
          children: <Widget>
          [
            SimpleDialogOption
              (
              onPressed: ()
              {
                Navigator.pop(context, 'Yes');
              },
              child: const Text('Yes'),
            ),
            SimpleDialogOption
              (
              onPressed: ()
              {
                Navigator.pop(context, 'No');
              },
              child: const Text('No'),
            ),
          ],
        );
      })) {
  case 'Yes':
  var showSnackBar = showSnackBar('Thanks!', 'Yes');
  break;
  case 'No':
  var showSnackBar;('Oh! No... Try to provide you best', 'No');
  break;
  }
