import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador de Pessoas", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String _infoText = "Pode entrar";

  void _changePeople(int delta) {
    setState(() {
      _people += delta;
      if (_people < 0) {
        _people = 0;
        //_infoText = "Mundo invertido?";
      } else {
        if (_people >= 10) {
          _people = 10;
          _infoText = "Lotação esgotada";
        } else {
          _infoText = "Pode entrar!";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_people",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: FlatButton(
                    child: Text("+1",
                        style:
                            TextStyle(fontSize: 60, color: Colors.green[400],
                            fontWeight: FontWeight.bold)),
                    onPressed: () {
                      _changePeople(1);
                    }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: FlatButton(
                    child: Text("-1",
                        style: TextStyle(fontSize: 60, color: Colors.red[400],
                        fontWeight: FontWeight.bold)),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              "$_infoText",
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontStyle: FontStyle.italic,
                  fontSize: 30),
            )
          ],
        )
      ],
    );
  }
}
