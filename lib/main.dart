import 'dart:math';

import 'package:flutter/material.dart';

//essa classe representa o widget responsável
//por gerir todo o meu app
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  //método onde devemos indicar o que nosso widget
  //irá apresentar: como será a sua composição?
  //o que ele mostra ao usuario?
  @override
  Widget build(BuildContext context) {
    //a classe MaterialApp é uma classe que segue
    //as regras do material (material.io) e sabe
    //gerenciar um app como um todo
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

//essa classe representa o widget onde vamos montara
//nossa tela
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //SizedBox vai forçar o Container, que está
            //dentro dele, a ter o tamanho 200x200
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCoraleatoria(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCoraleatoria(),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCoraleatoria(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCoraleatoria(),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCoraleatoria(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 125,
                  height: 125,
                  child: Container(
                    decoration: BoxDecoration(
                      color: geraCoraleatoria(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Color geraCoraleatoria() {
  final random = Random();
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

//todo projeto, em dart, começa a execução
//pelo método main
void main() => runApp(const Aplicacao());
