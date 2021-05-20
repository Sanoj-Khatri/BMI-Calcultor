import 'package:flutter/material.dart';
class gendercontent extends StatelessWidget {
  IconData iconData;
  String name;
  gendercontent({this.iconData,this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 128),
        Text(
          name,
          style: TextStyle(fontSize: 30),
        )
      ],
    );
  }
}