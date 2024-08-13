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
                decoration: containertitulo,
                child: const Titulo(),
              ),
            Container(
              
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