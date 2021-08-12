import 'package:flutter/material.dart';

import '../models/transaction.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final priceController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Price'),
              controller: priceController,
              // onChanged: (val) {
              //   priceInput = val;
              // },
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(priceController.text),
                );
              },
              child: Text(
                'Add Transaction',
              ),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
