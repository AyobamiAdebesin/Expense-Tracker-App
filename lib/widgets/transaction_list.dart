import 'package:flutter/material.dart';
import 'package:personal_expense_app/models/transaction.dart';
import 'package:flutter_svg/svg.dart';

class TransactionList extends StatelessWidget {
  //const TransactionList({ Key? key }) : super(key: key);
  final List<Transaction> usertransactions;
  TransactionList(this.usertransactions);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: usertransactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No transactions added yet!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: SvgPicture.asset(
                    'assets/svg/undraw_no_data_re_kwbl.svg',
                    
                  ),
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
    );
  }
}
