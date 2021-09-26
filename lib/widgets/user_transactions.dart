import 'package:flutter/material.dart';

import './new_transactions.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'New shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 45.69,
        date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount){
    final newTx = Transaction(title:txTitle, amount: txAmount, date: DateTime.now(),);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_),
        TransactionList(_userTransaction),
      ],
    );
  }
}
