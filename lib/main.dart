import 'package:flutter/material.dart';
import 'package:personal_expense_app/widgets/new_transactions.dart';
import 'package:personal_expense_app/widgets/transaction_list.dart';


import 'models/transaction.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  // late String titleInput;
  // late String amountInput;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 1.toString(),
        title: 'New Shoes',
        amount: 69.99,
        date: DateTime.now()),
    Transaction(
        id: 2.toString(),
        title: 'New Suits',
        amount: 99.99,
        date: DateTime.now()),
    Transaction(
        id: 3.toString(),
        title: 'New Books',
        amount: 89.99,
        date: DateTime.now()),
    Transaction(
      id: 4.toString(),
      title: 'New Laptop',
      amount: 79.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 5.toString(),
      title: 'New Bag',
      amount: 349.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 6.toString(),
      title: 'New Laptop',
      amount: 799.99,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String transactionTitle, double transactionAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: transactionTitle,
        amount: transactionAmount,
        date: DateTime.now());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (bCtx) {
          return NewTransaction(_addNewTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(onPressed: () => _startAddNewTransaction(context), icon: Icon(Icons.add))
          ],
          title: Text('Personal Expense Tracker'),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  //The card widget by default assumes the size of its child
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.lightBlueAccent,
                    child: Text('CHART!'),
                  ),
                  elevation: 10,
                ),
                TransactionList(_userTransaction),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()=> _startAddNewTransaction(context),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
