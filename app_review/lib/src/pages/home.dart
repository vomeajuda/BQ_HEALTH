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
            Container( //container que compoe o header
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.13,
                decoration: containertitulo,
                child: const Center(child: Titulo()),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container( //conteiner com o formulario dentro
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.40,
                  decoration: containerprincipal,
                  child: const Formulario(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const containertitulo = BoxDecoration( //decoracao do header
  color: Colors.lightGreen,
);

const containerprincipal = BoxDecoration( //decoracao do formulario
  color: Color.fromARGB(255, 122, 213, 255),
  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
);