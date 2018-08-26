import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//import 'package:url_launcher/url_launcher.dart';
//import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../user/user.dart' as user;


class Learn extends StatefulWidget {
  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {

  final dbC = Firestore.instance.collection('clients')
      .document("Ava Low")
      .snapshots();
  String client = 'clients/${user.client}';


  @override
//  Widget build(BuildContext context) {
//    return new StreamBuilder(
//        stream: Firestore.instance.collection("clients").snapshots(),
//        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//          if (!snapshot.hasData)
//            return new Center(child: new Text("Loading"));
//          final int numClient = snapshot.data.documents.length;
//          return new ListView.builder(
//              itemCount: numClient,
//              itemBuilder: (int index) {
//                final DocumentSnapshot dS = snapshot.data.documents[index];
//
//                return new ListTile(
//                  title: new Text(dS['first']),
//                  leading: new Text(dS['numbeds']),
////                  onTap: () => Navigator.pushNamed(context, "${FormScreen.routeName}/${data.documentID}"),
//                );
//              });
//        },);
//
//        }
//  }
  Widget build(BuildContext context) {
    return new StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('clients').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) return new Text('Loading...');
        final snap = snapshot.data.documents;
        return new Column(
          children: <Widget>[
            Text(snap[0]['first']),
            Text (snap[0]['numbeds'].toString()),

          ],

        );
      },
    );
  }
}