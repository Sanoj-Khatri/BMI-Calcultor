import 'package:bmicalcultor/Brain.dart';
import 'package:bmicalcultor/ResultScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'card.dart';
import 'colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'genderr.dart';
import 'variblebutton.dart';
import 'ResultScreen.dart';
import 'NavigationButton.dart';

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  int weight = 0;
  int age = 0;
  int height = 150;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children: [
          card(
            content: gendercontent(
              iconData: FontAwesomeIcons.mars,
              name: 'Male',
            ),
          ),
          card(
            content: gendercontent(
              iconData: FontAwesomeIcons.venus,
              name: 'Female',
            ),
          ),
        ]),
        card(
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Height',
                style: kcardtextstyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Text(
                    '$height',
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'cm',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Slider(
                value: height.toDouble(),
                min: 120,
                max: 220,
                activeColor: Colors.deepOrange,
                onChanged: (val) {
                  setState(() {
                    height = val.toInt();
                  });
                },
              ),
            ],
          ),
        ),
        Row(
          children: [
            card(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Weight',
                    style: kcardtextstyle,
                  ),
                  Text(
                    '$weight',
                    style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonContent(
                        iconData: Icons.add,
                        function: () {
                          setState(() {
                            weight++;
                          });
                        },
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      ButtonContent(
                        iconData: Icons.remove,
                        function: () {
                          setState(() {
                            weight--;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            card(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Age',
                    style: kcardtextstyle,
                  ),
                  Text(
                    '$age',
                    style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonContent(
                        iconData: Icons.add,
                        function: () {
                          setState(() {
                            age++;
                          });
                        },
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      ButtonContent(
                        iconData: Icons.remove,
                        function: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        NaviButton(
          navi: 'Calculate',
          navigation: () {
            BrainofBMI brain = BrainofBMI(height: height, weight: weight);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => resultscreen(
                        bmi: brain.getvalue(),
                        result: brain.getresult(),
                        recomadation: brain.getrecommadation(),
                      )),
            );
          },
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: kactivatedcolor,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('BMI CACLUTOR'),
      ),
      body: BMI(),
    ),
  ));
}
