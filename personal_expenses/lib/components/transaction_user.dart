import 'dart:math';

import 'package:flutter/material.dart';
import 'package:personalexpenses/components/transaction_form.dart';
import 'package:personalexpenses/components/transaction_list.dart';
import 'package:personalexpenses/models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: '1',
        description: 'New running shoes',
        amount: 150.50,
        date: DateTime.now()),
    Transaction(
      id: '2',
      description: 'Energy bill',
      amount: 80.25,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      description: 'Energy bill',
      amount: 80.25,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      description: 'Energy bill',
      amount: 80.25,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      description: 'Energy bill',
      amount: 80.25,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      description: 'Energy bill',
      amount: 80.25,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      description: 'Energy bill',
      amount: 80.25,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String description, double amount) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      description: description,
      amount: amount,
      date: DateTime.now(),
    );
    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
