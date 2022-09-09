import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build( BuildContext context) {
    return MyHomePage();
  }
}
class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter App'),
          ),
          body: Column(
            children: [
              Card(
                child: Text('CHART!'),
              ),
              Card(
                child: Text('LIST OF TX'),
              ),
            ],
          )),
        );;
  }
}
