import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: new TextField(
              decoration: InputDecoration(labelText: "E-Mail Address"),
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: new TextField(
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RaisedButton(
                child: new Text("Login", style: TextStyle(fontSize: 20.0, color: Colors.white),),
                onPressed: (){},
                color: Colors.blueGrey,
              ),
            )
          ],
        ),
      ),
    );
  }
}