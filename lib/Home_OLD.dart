import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo tênis',
      value: 254.34,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Pizza',
      value: 50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Penultima Pizza',
      value: 50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Última Pizza',
      value: 50,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Despesas Pessoais"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              // width: double.infinity,
              child: Card(
                color: Colors.green,
                child: Text("Gráfico"),
                elevation: 5,
              ),
            ),
            Column(
                children: _transactions.map((tr) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'R\$ ${tr.value.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      children: [
                        Text(
                          tr.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          DateFormat('d MMM y').format(tr.date),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          DateFormat.Hm().format(tr.date),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        // Text(tr.date.day.toString()+"/"+tr.date.month.toString()+"/"+tr.date.year.toString()),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    )
                  ],
                ),
              );
            }).toList()),
            Card(
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
                        print("TEXTO:" + _titleController.text);
                        print("VALOR:" + _valueController.text);
                      },
                      child: const Text(
                        "Nova transação",
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
