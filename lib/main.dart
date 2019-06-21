import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  State createState() => new _State();
}

class _State extends State<MyApp>{
  
  String _value = 'Hello World';

  void _onPressed(){
    setState(() {
      //to get time
     _value = new DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('M. Fadli Zein'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new FlatButton(
                onPressed: _onPressed,
                child: new Text('Click Me!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}