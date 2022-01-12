import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

<<<<<<< HEAD
class NewTransaction extends StatefulWidget {
  //const NewTransaction({ Key? key }) : super(key: key);
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
=======
class NewTransaction extends StatelessWidget {
  //const NewTransaction({ Key? key }) : super(key: key);
>>>>>>> f48a109c45a3f67d7539d6eaa9553c5c945f8fd7
  final titleController = TextEditingController();

  final amountController = TextEditingController();
<<<<<<< HEAD
=======
  final Function addTx;

  NewTransaction(this.addTx);
>>>>>>> f48a109c45a3f67d7539d6eaa9553c5c945f8fd7

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
<<<<<<< HEAD
    // widget. allows us to access the properties or methods of the widgett class
    // inside of the state class
    widget.addTx(
=======
    addTx(
>>>>>>> f48a109c45a3f67d7539d6eaa9553c5c945f8fd7
      enteredTitle,
      enteredAmount,
    );
    // clsoing the modal sheet after adding a new transaction
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              onSubmitted: (_) => submitData(),
              //onChanged: (value) => titleInput = value,
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              autocorrect: true,
            ),
            TextField(
              onSubmitted: (_) => submitData(),
              keyboardType: TextInputType.number,
              //onChanged: (value) => amountInput = value,
              controller: amountController,
              autocorrect: true,
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
            ),
            TextButton(
              onPressed: submitData,
              child: Text('Add transaction'),
            )
          ],
        ),
      ),
    );
  }
}
