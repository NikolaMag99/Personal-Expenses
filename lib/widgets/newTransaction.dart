import 'package:flutter/material.dart';

import '../models/transaction.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final priceController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredPrice = double.parse(priceController.text);

    if (enteredTitle.isEmpty || enteredPrice <= 0) {
      return;
    }
    addTx(
      enteredTitle,
      enteredPrice,
    );
  }

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
              onSubmitted: (_) => submitData(),
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Price'),
              controller: priceController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) {
              //   priceInput = val;
              // },
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: submitData,
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
