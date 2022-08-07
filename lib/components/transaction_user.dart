import 'dart:math';
import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo tênis',
      value: 254.34,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Pizza extra',
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

  _addTransactions(String newTitle, double newValue) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: newTitle,
      value: newValue,
      date: DateTime.now(),
    );

    setState((){
      _transactions.add(newTransaction);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        TransactionForm(_addTransactions),
      ],
    );
  }
}
