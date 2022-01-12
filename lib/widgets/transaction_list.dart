import 'package:flutter/material.dart';
import 'package:personal_expense_app/models/transaction.dart';
<<<<<<< HEAD
import 'package:flutter_svg/svg.dart';
=======
>>>>>>> f48a109c45a3f67d7539d6eaa9553c5c945f8fd7

class TransactionList extends StatelessWidget {
  //const TransactionList({ Key? key }) : super(key: key);
  final List<Transaction> usertransactions;
  TransactionList(this.usertransactions);
  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      height: 500,
      child: usertransactions.isEmpty
          ? Column(
=======
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctxs, index) {
          return Card(
            elevation: 10,
            child: Row(
>>>>>>> f48a109c45a3f67d7539d6eaa9553c5c945f8fd7
              children: <Widget>[
                Text(
                  'No transactions added yet!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
<<<<<<< HEAD
                  height: 200,
                  child: SvgPicture.asset(
                    'assets/svg/undraw_no_data_re_kwbl.svg',
                    
                  ),
=======
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    '\$${usertransactions[index].amount.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      usertransactions[index].title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      usertransactions[index].date.toString().substring(0, 11),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
>>>>>>> f48a109c45a3f67d7539d6eaa9553c5c945f8fd7
                )
              ],
            )
          : ListView.builder(
              itemBuilder: (ctxs, index) {
                return Card(
                  elevation: 10,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(5),
                        child: Text(
                          '\$${usertransactions[index].amount.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            usertransactions[index].title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            usertransactions[index]
                                .date
                                .toString()
                                .substring(0, 11),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: usertransactions.length,
            ),
<<<<<<< HEAD
=======
          );
        },
        itemCount: usertransactions.length,
      ),
>>>>>>> f48a109c45a3f67d7539d6eaa9553c5c945f8fd7
    );
  }
}
