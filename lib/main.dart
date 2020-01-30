import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rive Experiments',
      home: MyHomePage(title: 'My experiments with RIVE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          color: Colors.grey[700],
          child: Stack(
            children: <Widget>[
              FlareActor(
                'flare/Teddy.flr',
                fit: BoxFit.scaleDown,
                alignment: Alignment.topCenter,
              ),
              Card(
                child: Column(
                  children: <Widget>[],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
