import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//import 'package:url_launcher/url_launcher.dart';
//import 'dart:async';
import './login.dart' as login;



class Chat extends StatefulWidget {
final String client;

Chat({Key key, this.client}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Text('${widget.client}'),
        new FloatingActionButton(
            onPressed: () => debugPrint('${widget.client}'), 
          child: Icon(Icons.account_balance),
        
        )
      ],
    );



  }
}