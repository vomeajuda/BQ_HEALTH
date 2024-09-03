import 'dart:math';
import 'package:flutter/material.dart';

class IdealWeight extends StatefulWidget {
  const IdealWeight(double altura ,{super.key});

  @override
  State<IdealWeight> createState() => _IdealWeightState();
}

class _IdealWeightState extends State<IdealWeight> {
  double altura = 0;
  double pesomax = 0;
  double pesomin = 0;

  calculomax(){
  pesomax = 24.9 * pow(altura, 2);
  return pesomax;
  }
  calculomin(){
  pesomin = 18.5 * pow(altura, 2);
  return pesomin;
  }
  resposta(){
    String idealweight = 'Peso máximo: ${pesomax.toStringAsFixed(2)} \nPeso minimo: ${pesomin.toStringAsFixed(2)}';
    return idealweight;
  } 

  @override
  Widget build(BuildContext context) {
    return resposta();
  }
}