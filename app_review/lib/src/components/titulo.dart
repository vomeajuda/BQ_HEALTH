import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  const Titulo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('BQ Health', style: tituloBonito,);
  }
}

const tituloBonito = TextStyle(
  fontSize: 50,
);