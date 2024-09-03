import 'package:flutter/material.dart';
import 'classification.dart';
import 'idealweight.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final GlobalKey<FormState> chave = GlobalKey<FormState>();
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  String resultIMC = '';

  void _calcularIMC(){
    double peso = double.tryParse(pesoController.text.replaceAll(',', '.')) ?? 0;
    double altura = double.tryParse(alturaController.text.replaceAll(',', '.')) ?? 0;

    if (peso > 0 && altura > 0) {
      double imc = peso / (altura * altura);
      String classification = classificarIMC(imc);
      String idealWeight = calcularPI(altura);

      setState(() {
        resultIMC = 'Seu IMC é: ${imc.toStringAsFixed(2)}\nClassificação: $classification\n$idealWeight';
      });
    } else {
      setState(() {
        resultIMC = 'Por favor, insira valores válidos para peso e altura.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: chave,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: pesoController,
            decoration: const InputDecoration(
              hintText: 'Insira o peso',
            ),
            validator: (String? value){
              if(value == null || value.isEmpty){
                return 'Digite algo';
              }
              return null;
            },
          ),
          TextFormField(
            controller: alturaController,
            decoration: const InputDecoration(
              hintText: 'Insira a altura',
            ),
            validator: (String? value){
              if(value == null || value.isEmpty){
                return 'Digite algo';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  if (chave.currentState!.validate()){
                    _calcularIMC();
                  }
                },
                child: const Text('Calcular IMC'),
              ),
            ),
          ),
          Center(child: Text(resultIMC, style: const TextStyle(fontSize: 20),)),
        ],
      ),
    );
  }
}
