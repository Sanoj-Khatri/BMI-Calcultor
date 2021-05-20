import 'package:flutter/material.dart';
class ButtonContent extends StatelessWidget {
  IconData iconData;
  Function function;
ButtonContent({this.iconData,this.function});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.blue),
      child: RawMaterialButton(
        child: Icon(
          iconData,
          size: 50,
        ),
        onPressed:function,
      ),
    );
  }
}
