import 'package:flutter/material.dart';

class Classification extends StatefulWidget {
  const Classification(double imc, {super.key});

  @override
  State<Classification> createState() => _ClassificationState();
}

class _ClassificationState extends State<Classification> {
  double imc = 0;

  identificar(){
    if (imc < 18.5){
      return 'Abaixo do Peso';
    } else if (imc <= 18.5 && imc >= 24.9){
      return 'Peso Normal';
    } else if (imc <= 25 && imc >= 29.9){
      return 'Sobrepeso';
    } else if (imc <= 30 && imc >= 34.9){
      return 'Obesidade grau 1';
    } else if (imc <= 35 && imc >= 39.9){
      return 'Obesidade grau 2';
    } else{
      return 'Não está vivo';
    }
  }

  @override
  Widget build(BuildContext context) {
    return identificar();
  }
}