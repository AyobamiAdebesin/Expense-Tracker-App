import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (value) {
              //   titleInput = value;
              // },
              //instead of the onchanged property, we use the controller property
              controller: titleController,
            ),
            TextField(
              // onChanged: (val) => amountInput = val,
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    print(titleController.text);
                    print(amountController.text);
                  },
                  child: Text('Add transaction'),
                )),
          ],
        ),
      ),
    );
  }
}
