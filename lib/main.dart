import 'package:expense_planner/transaction.dart';
import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 650,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'WEEKLY SHOPPING',
      amount: 250,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 18,
          title: Center(
            child: Text(
              'EXPENSE PLANNER',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
              color: Colors.grey,
              child: Container(
                width: double.infinity,
                child: Text('CHART!'),
              ),
            ),
            Column(
              children: transaction.map((tx) {
                return Card(
                  child: Text(tx.title),
                );
              }).toList(),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
    ;
  }
}
