import 'package:flutter/material.dart';

class StateLesswidget extends StatelessWidget {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$number"),
         FlatButton(
          onPressed: () {number++;print(number);child:Text('Incrementy');},
        )
      ],
    );
  }
}

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bmi Calcultor'),
        ),
        body: StateLesswidget(),
      ),
    ));
