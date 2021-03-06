import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flexible & Expanded',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Flexible & Expanded'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Container(
                height: 100,
                child: Text('Item 1 - pretty big!'),
                color: Colors.red,
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  height: 100,
                  child: Text('Item 2'),
                  color: Colors.blue,
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: Container(
                  height: 100,
                  child: Text('Item 3'),
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                // fit = tight,
                flex: 5,
                child: Container(
                  height: 100,
                  child: Text('Item 1 - pretty big!'),
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  child: Text('Item 2'),
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 100,
                  child: Text('Item 3'),
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
