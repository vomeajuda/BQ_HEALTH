import 'package:app_review/src/components/formulario.dart';
import 'package:app_review/src/components/titulo.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.13,
                decoration: containertitulo,
                child: const Center(child: Titulo()),
            ),
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.87,
                decoration: containerprincipal,
                child: const Formulario(),
            ),
          ],
        ),
      ),
    );
  }
}

const containertitulo = BoxDecoration(
  color: Colors.lightGreen,
);

const containerprincipal = BoxDecoration(
  color: Color.fromARGB(255, 122, 213, 255),
);