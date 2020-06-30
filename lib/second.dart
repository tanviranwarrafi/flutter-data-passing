import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SecondDartPage(),
    );
  }
}

class SecondDartPage extends StatefulWidget {
  String value;
  String rafi;
  SecondDartPage({this.value, this.rafi});

  @override
  _SecondDartPageState createState() => _SecondDartPageState(value: value, rafi : rafi);
}

class _SecondDartPageState extends State<SecondDartPage> {
  String value;
  String rafi;
  _SecondDartPageState({this.value, this.rafi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Dart page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              rafi +' '+ value,
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
    );
  }
}
