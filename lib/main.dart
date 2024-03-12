import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 35, 34, 34),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Image.asset(
                "lib/assets/images/o_castelo_animado.jpg",
                height: 250,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nome do filme: O castelo animado"),
              Text("Ano de lançamento: 2004"),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Diretor: xxxxx"), Text("Classificação: xxxx")],
          ),
        ],
      ),
    );
  }
}
