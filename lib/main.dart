import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home:
        Stack(
          children: <Widget>[
            Image.asset("images/restaurant.jpg",
            fit: BoxFit.cover,
            height: 1000,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Pessoas: 0",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: FlatButton(
                        child: Text("+1",
                            style: TextStyle(fontSize: 40, color: Colors.green[400])),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: FlatButton(
                        child: Text("-1",
                            style: TextStyle(fontSize: 40, color: Colors.red[400])),
                        onPressed: () {},
                      ),
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
            )
          ],
        )
  ));
}
