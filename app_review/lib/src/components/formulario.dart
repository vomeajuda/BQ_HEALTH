import 'package:flutter/material.dart';
import 'classification.dart';
import 'idealweight.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final GlobalKey<FormState> chave = GlobalKey<FormState>(); //chave de validacao dos campos do formulario
  TextEditingController pesoController = TextEditingController(); //coleta escrita do peso
  TextEditingController alturaController = TextEditingController(); //coleta escrita da altura

  String result = '';

  void _calcularIMC(){
    double peso = double.tryParse(pesoController.text.replaceAll(',', '.')) ?? 0; 
    double altura = double.tryParse(alturaController.text.replaceAll(',', '.')) ?? 0; //faz a conversao dos valores lidos para double trocando . por ,

    if (peso > 0 && altura > 0) {
      double imc = peso / (altura * altura); //calcula o IMC
      String classification = classificarIMC(imc);
      String idealWeight = calcularPI(altura); //Recebe a mensagem/valor de volta das funcoes

      setState(() { //da um refresh na tela para exibir a mensagem de sucesso ou falha
        result = 'Seu IMC é: ${imc.toStringAsFixed(2)}\nClassificação: $classification\n$idealWeight';
      });
    } else {
      setState(() {
        result = 'Por favor, insira valores válidos para peso e altura.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: chave, //identifica a chave de validacao do form
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField( //caixa de texto para inserir o peso
            controller: pesoController, //controller que armazena os dados
            decoration: const InputDecoration(
              hintText: 'Insira o peso',
            ),
            validator: (String? value){ //validacao do digitado
              if(value == null || value.isEmpty){
                return 'Digite algo';
              }
              return null;
            },
          ),
          TextFormField( //caixa de texto para inserir altura
            controller: alturaController, //controller que armazena os dados
            decoration: const InputDecoration(
              hintText: 'Insira a altura',
            ),
            validator: (String? value){ //validacao do digitado
              if(value == null || value.isEmpty){
                return 'Digite algo';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: ElevatedButton( //botao para executar as funcoes
                onPressed: () {
                  if (chave.currentState!.validate()){ //cheque se a validacao esta correta
                    _calcularIMC();
                  }
                },
                child: const Text('Calcular IMC'),
              ),
            ),
          ),
          Center(child: Text(result, style: const TextStyle(fontSize: 20),)), //Text para exibicao dos resultados
        ],
      ),
    );
  }
}
