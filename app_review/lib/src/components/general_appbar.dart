import 'package:flutter/material.dart';

class GeneralAppbar extends StatelessWidget {
  const GeneralAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('BQ Health', style: tituloBonitinho,),
      centerTitle: true,
    );
  }
}

const tituloBonitinho = TextStyle(
  fontSize: 14,
  color: Colors.blue,
);