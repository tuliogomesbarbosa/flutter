import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final descriptionController = TextEditingController();
  final amountController = TextEditingController();

  final void Function(String, double) _onSubmitEvent;

  TransactionForm(this._onSubmitEvent);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: "Amount"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text("New Transaction"),
                  textColor: Colors.green,
                  onPressed: () => _onSubmitEvent(descriptionController.text, double.tryParse(amountController.text))
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}