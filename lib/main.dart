import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() => runApp(const Aplicacao());

final formatter = NumberFormat.currency(
  locale: "pt_BR",
  symbol: "R\$",
);

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final taxaController = TextEditingController();
    final pagController = TextEditingController();
    final seilaController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcule Juros Já!'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: seilaController,
              decoration: const InputDecoration(
                labelText: "Valor",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            TextField(
              controller: taxaController,
              decoration: const InputDecoration(
                labelText: "Taxa de juros",
              ),
            ),
            TextField(
              controller: pagController,
              decoration: const InputDecoration(
                labelText: "Quantidade pagamentos",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => calc(context, seilaController.text,
                        taxaController.text, pagController.text),
                    child: const Text('Calcular')),
                ElevatedButton(
                    onPressed: () {
                      seilaController.text = "";
                      taxaController.text = "";
                      pagController.text = "";
                    },
                    child: const Text('Limpar'))
              ],
            )
          ],
        ),
      ),
    );
  }

  void calc(BuildContext context, String num01, num02, num03) {
    final valor = double.parse(num01);
    final taxaJuros = double.parse(num02);
    final qtdePag = double.parse(num03);
    final mensagem =
        "${formatter.format(valor)} emprestado por $qtdePag = ${formatter.format((valor * qtdePag * (taxaJuros / 100)) + valor)}";

    if (qtdePag != 0) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(mensagem),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Sei lá"),
      ));
    }
  }

  List<TextInputFormatter> decimalNumber() => [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
        TextInputFormatter.withFunction((oldValue, newValue) {
          final text = newValue.text;

          if (text.isEmpty) {
            return newValue;
          } else if (double.tryParse(text) == null) {
            return oldValue;
          } else {
            return newValue;
          }
        }),
      ];
}
