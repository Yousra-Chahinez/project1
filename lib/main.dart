import 'package:flutter/material.dart';
import 'register.dart' as Reg;
import 'login.dart' as Login;

void main() {
  runApp(new MaterialApp(
    title: "Tab bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Authentication"),
        backgroundColor: Colors.blueGrey,
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.account_circle),
              text: "Register",
            ),
            new Tab(
              icon: new Icon(Icons.face),
              text: "Login",
            )
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[new Reg.Register(), new Login.Login()],
      ),
      /*bottomNavigationBar: new Material(
        color: Colors.amberAccent,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.account_circle),
            ),
            new Tab(
              icon: new Icon(Icons.face),
            )
          ],
        ),
      ),*/
    );
  }
}
