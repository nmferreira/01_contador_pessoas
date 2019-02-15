import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Pessoas: 0",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("+1",
                    style: TextStyle(fontSize: 40, color: Colors.green[400])),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("-1",
                    style: TextStyle(fontSize: 40, color: Colors.red[400])),
                onPressed: () {},
              ),
            ],
          ),

          Text(
            "Pode entrar!",
            style: TextStyle(
                color: Colors.amberAccent,
                fontStyle: FontStyle.italic,
                fontSize: 30),
          )
        ],
      )));
}
