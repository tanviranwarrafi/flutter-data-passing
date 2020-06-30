import 'package:data_passing/second.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value;
  String rafi = "Tanvir Anwar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Flutter Data passing'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 24.0),
            Image.asset('assets/images/flutter_image.png'),
            SizedBox(height: 24.0),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 16.0, top: 16.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey[100]),
                ),
              ),
              child: TextField(
                onChanged: (text) {
                  value = text;
                },
                autofocus: false,
                keyboardType: TextInputType.text,
                textAlign: TextAlign.start,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "enter your data",
                  fillColor: Colors.red,
                  hintStyle: TextStyle(color: Colors.grey[400]),
                ),
              ),
            ),
            SizedBox(height: 24.0),
            GestureDetector(
              onTap: () {
                setState(() {
                  Route route = MaterialPageRoute(
                      builder: (context) =>
                          SecondDartPage(value: value, rafi: rafi));
                  Navigator.push(context, route);
                });
              },
              child: Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient:
                      LinearGradient(colors: [Colors.red, Colors.redAccent]),
                ),
                child: Center(
                  child: Text(
                    "Send Data To Second Dart Class",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
