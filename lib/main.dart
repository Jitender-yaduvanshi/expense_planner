import './widgets/user_transaction.dart';
import 'package:flutter/material.dart';

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
  void startAddNewTransaction(){
    showModalBottomSheet(context: context, builder: builder)
  }
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
          actions: [
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEv enly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Card(
                  elevation: 5,
                  color: Colors.grey,
                  child: Text('CHART!'),
                ),
              ),
              UserTransactions()
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add,color: Colors.white,),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
