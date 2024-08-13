import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Insira o peso',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Insira a altura',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                
              },
              child: const Text('Calcular IMC'),
            ),
          ),
        ],
      ),
    );
  }
}