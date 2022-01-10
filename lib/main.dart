import 'package:flutter/material.dart';
import 'package:personal_expense_app/widgets/chart.dart';
import 'package:personal_expense_app/widgets/new_transactions.dart';
import 'package:personal_expense_app/widgets/transaction_list.dart';

import 'models/transaction.dart';

void main(List<String> args) {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                  fontFamily: 'Opensans',
                  fontWeight: FontWeight.w200,
                  fontSize: 18),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  fontFamily: 'Opensans',
                  fontSize: 20,
                ),
              ),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Transaction> _usertransactions = [
    Transaction(
        id: 'tx1', title: 'New Laptop', date: DateTime.now(), amount: 200.00),
    Transaction(
        id: 'tx2', title: 'New Books', date: DateTime.now(), amount: 120.50),
    Transaction(
        id: 'tx3', title: 'New Courses', date: DateTime.now(), amount: 100.67),
    Transaction(
        id: 'tx4', title: 'New Shoes', date: DateTime.now(), amount: 150.20),
    Transaction(
        id: 'tx5', title: 'New Phone', date: DateTime.now(), amount: 90.40),
    Transaction(
        id: 'tx6', title: 'New Wifi', date: DateTime.now(), amount: 70.53),
    Transaction(
        id: 'tx7', title: 'New Charger', date: DateTime.now(), amount: 80.00),
  ];

  List<Transaction> get _recentTransactions {
    return (_usertransactions.where((transaction) {
      return transaction.date
          .isAfter(DateTime.now().subtract(Duration(days: 7)));
    }).toList());
  }

  void _addNewTransaction(String txtitle, double txamount) {
    final newTxn = Transaction(
        id: DateTime.now().toString(),
        title: txtitle,
        date: DateTime.now(),
        amount: txamount);
    setState(() {
      _usertransactions.add(newTxn);
    });
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          child: NewTransaction(_addNewTransaction),
          onTap: () {},
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => _startAddNewTransaction(context),
            icon: Icon(Icons.add),
          ),
        ],
        title: Text(
          'Personal Expense Tracker',
          style: TextStyle(
              // fontFamily: 'Opensans',
              ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Chart(_recentTransactions),
            TransactionList(_usertransactions),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: () => _startAddNewTransaction(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
