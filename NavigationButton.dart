import 'package:flutter/material.dart';
class NaviButton extends StatelessWidget {
  String navi;
  Function navigation;
  NaviButton({this.navi,this.navigation});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.deepOrange,
      child: FlatButton(
        onPressed: navigation,
        child: Text(
          navi,
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}