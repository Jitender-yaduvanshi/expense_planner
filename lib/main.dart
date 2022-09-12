import 'package:expense_planner/transaction.dart';
import 'package:flutter/cupertino.dart';
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
      title: 'Weekly Shopping',
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
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.purpleAccent, width: 5),
                        ),
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Text(
                          tx.amount.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purpleAccent),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            tx.title,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            tx.date.toString(),
                            style: TextStyle(letterSpacing:2,
                              fontSize: 10,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                );
              }).toList(),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
