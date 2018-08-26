import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//import 'package:url_launcher/url_launcher.dart';
//import 'dart:async';
import './ui/history.dart';
import './ui/login.dart' as login;
import './ui/chat.dart';
import './ui/learn.dart';
import './ui/admin.dart';
import './user/user.dart' as user;

void main() => runApp(
      new MaterialApp(
        home: new MyApp(),
        routes: <String, WidgetBuilder>{
                 '/Home': (BuildContext context) => new Home(),


          //'/blog' : (BuildContext context) => new MyApp()
        },
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Garden Coach',
      theme: new ThemeData(),
      home: new login.Login(title: 'Avalow Grow'),
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new Home(),
      }
    );
  }
}







class Home extends StatefulWidget {




//  updated({Key key, this.result}) : super(key: key);




  @override
  HomeState createState() => new HomeState();

}





class HomeState extends State<Home> {
  var result = login.userName.text;

//
//  submit() {
//    debugPrint(
//        "Login submitted to Firebase, need to process on return and pop to chat page, username = ${widget.result}");
//
// setState(() {
//      debugPrint('${widget.result}');
//  }


  @override
  Widget build(BuildContext context) {

    return new DefaultTabController(
        length: 4,
        child: new Scaffold(
        appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
//        title: new Text("Avalow Grow"),
        title: new Text('Avalow Grow'),
        centerTitle: true,
          automaticallyImplyLeading: false,
    backgroundColor: Color.fromARGB(255, 249, 77, 1),

    bottom: new TabBar(
    tabs: [
    new Tab(icon: new Icon(Icons.chat_bubble_outline)),
    new Tab(icon: new Icon(Icons.explore)),
    new Tab(icon: new Icon(Icons.filter_vintage)),
    new Tab(icon: new Icon(Icons.lock),)
    ],
    ),
    ),
    body: new TabBarView(
        children: <Widget>[
          new Chat(client: result),
          new History(),
          new Learn(),
          new Admin(),
        ]

    ),
        ),
    );
  }

}











