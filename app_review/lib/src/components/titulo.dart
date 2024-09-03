import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  const Titulo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('BQ Health', style: tituloBonito,); //texto no header
  }
}

const tituloBonito = TextStyle( //tamanho da fonte do titulo
  fontSize: 50,
);