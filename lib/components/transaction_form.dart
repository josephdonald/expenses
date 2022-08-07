import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();
  final Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: "Título",
              ),
            ),
            TextField(
              controller: _valueController,
              decoration: const InputDecoration(
                labelText: "Valor (R\$) ",
              ),
            ),
            TextButton(
              onPressed: () {
                final typedText = _titleController.text;
                final typedValue = double.parse(_valueController.text);
                print("TEXTO:" + _titleController.text);
                print("VALOR:" + _valueController.text);

                onSubmit(typedText, typedValue);

              },
              child: const Text(
                "Nova transação",
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
