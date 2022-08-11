import 'package:expenses/components/transaction_user.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despesas Pessoais"),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            TransactionUser(),
          ],
        ),
      ),
    );
  }
}
