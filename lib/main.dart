import 'package:flutter/material.dart';


import './widgets/new_transactions.dart';
import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: key);

  // late String titleInput;
  // late String amountInput;

  //Another option of registering the value provided in the textfields to a property
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            // Column is a widget that takes as much width as its children need
            width: double.infinity,
            child: Card(
              child: Text(
                  'Chart!'), // The Card widget by default assumes the size of its child
              elevation: 10,
              color: Colors.black26,
            ),
          ),

        ],
      ),
    ));
  }
}
