import 'dart:ffi';
import 'dart:math';
import 'dart:core';

class BrainCalculator {
  BrainCalculator({required this.height, required this.weight});
  int height; // it must be in meters
  int weight;
  late double _emi;

  String calculateBMI() {
    _emi =  weight/pow(height/100,2);
    return _emi.toStringAsFixed(1);
  }

  String getResult(){
    if(_emi >= 30.0){
      return 'OBESE';
    }
    else if(_emi >= 25.0){
      return 'OVERWEIGHT';
    }else if (_emi > 18.0){
      return 'NORMAL';
    }else{
      return 'UNDERWEIGHT';
    }
  }
  String getInterpretation(){
    if(_emi >= 25){
      return 'You have overweight and should more exercise';
    }else if(_emi > 18){
      return 'You have Normal weight and do little exercise if you have time';
    }else{
      return 'You have to eat more to gain the weight';
    }
  }



}