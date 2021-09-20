import 'package:flutter/material.dart';
class Exp extends StatefulWidget {
  const Exp({ Key? key }) : super(key: key);

  @override
  _ExpState createState() => _ExpState();
}

class _ExpState extends State<Exp> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          // Expanded(child: Image.asset('assets/space-2.jpg')),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
      );
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.red[600],
      //   child: Text('click'),
      // );
  }
}