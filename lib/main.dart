import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.pink,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Atividade")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Avaliativa")],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [Text("Nome: Leonardo Pauli")],
                ),
                Row(
                  children: [Text("Email: leonardo.santos1095@etec.sp.gov.br")],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text("2H3"), Text("Matão")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("2024")],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

void main() {
  runApp(const Aplicacao());
}
