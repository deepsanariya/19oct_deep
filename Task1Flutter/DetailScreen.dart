import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget
{
  const DetailScreen({super.key, required int index});
  

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var index;
    return Scaffold
      (
        appBar: AppBar
          (
            title: Text("Index : ${widget.index}"),),);
  }
}
