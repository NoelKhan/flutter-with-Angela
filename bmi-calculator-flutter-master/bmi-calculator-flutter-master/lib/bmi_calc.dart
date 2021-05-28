import 'dart:math';

class BMIBrain {
  int height;
  int weight;
  double _bmi;

  BMIBrain({this.height, this.weight});

  double GetBMI() {
    return _bmi;
  }

  String CalcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String GetResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String GetDescription() {
    if (_bmi >= 25) {
      return 'You are Overweight, consider a weight loss plan for a long life';
    } else if (_bmi >= 18.5) {
      return 'You are Normal, keep up the good work';
    } else {
      return 'You are Underweight, consider eating more or look for supplements, or stop starving yourselves and go ahead and eat as much and as healthy as you can';
    }
  }
}
