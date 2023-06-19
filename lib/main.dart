import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ButtonDemo(),
      ),
    ));
  }
}

class ButtonDemo extends StatefulWidget {
  //ButtonDemo({Key key}) : super(key: key);
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  var number = 0;
  var color = Colors.black;
  Widget build(BuildContext context) {
    return (Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Counter Value",
          ),
          Text(
            '$number',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
              fontSize: 160.0,
              fontFamily: 'Roboto',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RawMaterialButton(
                fillColor: Colors.green,
                splashColor: Colors.greenAccent,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
                onPressed: _add,
                shape: const StadiumBorder(),
              ),
              RawMaterialButton(
                fillColor: Colors.red,
                splashColor: Colors.redAccent,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
                onPressed: _minus,
                shape: const StadiumBorder(),
              )
            ],
          )
        ],
      ),
    ));
  }

  _add() {
    setState(() {
      number = number + 1;
    });
  }

  _minus() {
    setState(() {
      number = number - 1;
    });
  }
}
