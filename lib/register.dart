import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Center(
        child: new ListView(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                child: Column(
                  children: <Widget>[
                    new TextFormField(
                      decoration:
                          new InputDecoration(labelText: "E-Mail Address"),
                    ),
                    SizedBox(height: 20.0,),
                    new TextFormField(
                      decoration:
                          new InputDecoration(labelText: "Passsword"),
                          obscureText: true,
                    )
                  ],
                ),
              )),
        
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RaisedButton(
              child: new Text("Register",
                  style: TextStyle(fontSize: 20.0, color: Colors.white)),
              onPressed: () {},
              color: Colors.blueGrey,
            ),
          )
        ],
      ),
    ));
  }
}
