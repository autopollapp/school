import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

// ignore: camel_case_types
class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

// ignore: camel_case_types
class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      title: "Statefull",
      home: homepage(),
    );
  }
}

// ignore: camel_case_types
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  int datatochange = 0;

  void datachange() {
    setState(() {
      datatochange += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appbar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "$datatochange",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            RaisedButton(
              onPressed: datachange,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              child: Text(
                "click me",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
              color: Colors.cyan,
            ),
          ],
        ),
      ),
    );
  }
}
