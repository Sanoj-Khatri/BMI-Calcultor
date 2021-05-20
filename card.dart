import 'package:flutter/material.dart';

class card extends StatelessWidget {
Widget content;
card({this.content});
  // const card({
  //   Key key,
  // }) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          child: content,
          height: 230,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black26),
        ),
      ),
    );
  }
}