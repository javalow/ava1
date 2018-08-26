import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//import 'package:url_launcher/url_launcher.dart';
//import 'dart:async';
import '../user/user.dart' as user;
import '../main.dart' as main;


class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  LoginState createState() => new LoginState();
}

final userName = new TextEditingController(text: "Ava Low");
final _pass = new TextEditingController();


class LoginState extends State<Login> {

  int temp = 0;

  goLogin() {
    debugPrint(
        "Login submitted to Firebase, need to process on return and pop to chat page, user:${userName.text}, pass:${_pass.text}");
//  var route = new MaterialPageRoute(
//    builder: (BuildContext context) => new main.updated(result: userName.text),
//  );

//  Navigator.of(context).push(route);


//  userName.clear();
//  _pass.clear();
    Navigator.pushNamed(context, '/Home');

  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(

        title: new Text(widget.title),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 249, 77, 1),
//          bottom: new TabBar(
//            tabs: [
//              new Tab(icon: new Icon(Icons.chat_bubble_outline)),
//              new Tab(icon: new Icon(Icons.explore)),
//              new Tab(icon: new Icon(Icons.filter_vintage)),
//            ],
//          ),
      ),
      body: new Center(

//          mainAxisAlignment: MainAxisAlignment.center,
        child: new ListView(
          children: <Widget>[
            new Center(
              child: new Image.asset(
                "img/logo.png",
                width: 100.0,
                height: 100.0,
                fit: BoxFit.fitWidth,
              ),
            ),
            new Column(
              children: <Widget>[



                new Padding(padding: EdgeInsets.symmetric(vertical:22.2, horizontal: 22.2)),
                new TextFormField(
//              validator: email????,
//                      autofocus: true,
                  controller: userName,
                  decoration: new InputDecoration(hintText: "User Name"),
                ),

                new Padding(padding: EdgeInsets.all(15.0)),
                new TextFormField(
//              validator: email????,
//                      autofocus: true,
                  controller: _pass,
                  decoration: new InputDecoration(hintText: "Password"),
                ),
                new Padding(padding: EdgeInsets.all(15.0)),
                new Text("Forgot login information?"),

                new Padding(padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 15.0)),
                new FloatingActionButton(
                  onPressed: goLogin,
                  tooltip: 'Submit',
                  child: new Icon(Icons.lock),
                ),

              ],
            ),
          ],
        ),
      ),

    );

  }
}

