import 'dart:math';
class CalculaterBrain{

  CalculaterBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi=0;
  String CalculateBMI(){
    _bmi = weight/pow((height/100), 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult()
  {

    if (_bmi>=25) {
      return "OverWeight";
    }
    else if(_bmi>18.5)
    {
      return "Normal";
    }
    else {
      return "Underweight";
    }
  }
  String getInterpretation()
  {
    if (_bmi>=25) {
      return "Your weight is more than Normal peron. So try to do more and more exercise";
    }
    else if(_bmi>18.5)
    {
      return "Your weight is normal! Good Job";
    }
    else {
      return "Your weight is Lower than normal doby! so, try to eat more and healty food";
    }
  }



}










// String CalculateBMI(){
//   _bmi =weight/pow(height/100, 2);
//   return _bmi.toStringAsFixed(1);
// }
// String getResult()
// {
//   if (_bmi>=25) {
//     return "OverWeight";
//   }
//   else if(_bmi>18.5)
//   {
//     return "Normal";
//   }
//   else {
//     return "Underweight";
//   }
// }
// String getInterpretation()
// {
//   if (_bmi>=25) {
//     return "Your weight is more than Normal peron. So try to do more and more exercise";
//   }
//   else if(_bmi>18.5)
//   {
//     return "Your weight is normal! Good Job";
//   }
//   else {
//     return "Your weight is Lower than normal doby! so, try to eat more and healty food";
//   }
// }
//