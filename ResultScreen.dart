import 'package:bmicalcultor/NavigationButton.dart';
import 'package:bmicalcultor/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class resultscreen extends StatelessWidget {
  String result;
  String bmi;
  String recomadation;
  resultscreen({this.result,this.bmi,this.recomadation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Resut Screen',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
            ),
          ),
          card(
            content: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(result,style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w800),),
                Text(bmi,style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold)),
                Text(recomadation,style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
              ],
            ),
          ),
          NaviButton(
            navi: 'Recalculate',
            navigation: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ));
  }
}
