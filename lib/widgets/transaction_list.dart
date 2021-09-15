import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'transaction_item.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleTx;

  TransactionList(this.transactions, this.deleTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: transactions.isEmpty
          ? LayoutBuilder(builder: (ctx, constrains) {
              return Column(
                children: <Widget>[
                  Text(
                    'No hay transacciones',
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: constrains.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              );
            })
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return TransactionItem(transaction: transactions[index], deleTx: deleTx);
              },
              itemCount: transactions.length,
            ),
    );
  }
}

