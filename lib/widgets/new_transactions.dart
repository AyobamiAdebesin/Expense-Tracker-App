import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final addTx;
  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    
    if (enteredTitle.isEmpty || enteredAmount <= 0){
      return;
    }
    addTx(
      titleController.text,
      double.parse(amountController.text),
    );
  }

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
              // onChanged: (value) {
              //   titleInput = value;
              // },
              controller: titleController,
              decoration: InputDecoration(
                  labelText: 'Title', hintText: "Please enter the title"),
              keyboardType: TextInputType.text,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              // onChanged: (value) {
              //   amountInput = value;
              // },
              controller: amountController,
              decoration: InputDecoration(
                  labelText: 'Amount', hintText: "Enter the amount"),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: submitData,
                child: Text('Add Transaction'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

















































// import 'package:flutter/material.dart';

// class NewTransaction extends StatelessWidget {
//   //const ({ Key? key }) : super(key: key);
//   final titleController = TextEditingController();
//   final amountController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 10,
//       child: Container(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             TextField(
//               decoration: InputDecoration(labelText: 'Title'),
//               // onChanged: (value) {
//               //   titleInput = value;
//               // },
//               //instead of the onchanged property, we use the controller property
//               controller: titleController,
//             ),
//             TextField(
//               // onChanged: (val) => amountInput = val,
//               decoration: InputDecoration(labelText: 'Amount'),
//               controller: amountController,
//             ),
//             Container(
//                 padding: EdgeInsets.all(10),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     print(titleController.text);
//                     print(amountController.text);
//                   },
//                   child: Text('Add transaction'),
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }
