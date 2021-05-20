import 'dart:math';
class BrainofBMI {
  int height;
  int weight;
  double bmivalue =0;
  BrainofBMI({this.height,this.weight});
  String getvalue(){
    bmivalue =weight/pow(height/100, 2);
        return bmivalue.toStringAsFixed(1);
  }
  String getresult(){
    if(bmivalue>=25.5)
      return'overweight';
    else if(bmivalue>=18.5)
      return'Normal';
    else
      return'Underweight';
  }
  String getrecommadation(){
    if(bmivalue>=25.5)
      return'Your BMI is greator than Normal, Excerise more';
    else if(bmivalue>=18.5)
      return'Your BMI is Normal,do whatever you were doing';
    else
      return'Your BMI is lower than Normal, eat more!';
  }
}