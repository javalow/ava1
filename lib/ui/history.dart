import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import '../user/user.dart' as user;
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//var docId = user.fName + " " + user.lName;
//var client = 'clients/${user.client}';
//var homework = 'homework/${user.client}';
//final DocumentSnapshot docRefC = Firestore.instance.document(client);
//final DocumentReference docRefH = Firestore.instance.document(homework);
//final dRC = Firestore.instance.collection('clients').document(docId);

//final Future<DocumentSnapshot> snaps;

class History extends StatefulWidget {

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {


var dbZip = Firestore.instance.collection('clients').document("Ava Low").toString();




//void update () {
//  var snapshot = docRefC.get().then(onValue)
//
//
//}

  @override
  Widget build(BuildContext context) {
//    String toLaunch = 'https://www.avalow.com';

//          return Scaffold(
//           body: StreamBuilder(
//            stream: Firestore.instance.document(path),
//             builder: (context, snapshot) {
//              if (!snapshot.hasData) return const Text("Loading");
              return
                new ListView(

                    children: <Widget>[

                      new Padding(padding: EdgeInsets.all(10.2)),
                      new Text("Garden Info:",
                        style: new TextStyle(
                          fontSize: 22.2,
                          fontWeight: FontWeight.w500,
                          color: Colors.deepOrangeAccent,
                        ),),
                      new Padding(padding: EdgeInsets.all(12.2)),
                      //Client Info
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text("Start Date:",
                            style: new TextStyle(
                              fontSize: 18.4,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey,
                            ),),
                          new Padding(padding: EdgeInsets.all(9.2)),
                          new Text(dbZip,

                            //todo dRC returns document reference, not document

                            style: new TextStyle(
                              fontSize: 18.4,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey,
                              fontStyle: FontStyle.italic,
                            ),),
                        ],
                      ),
                      //client info row 2
                      new Padding(padding: EdgeInsets.all(5.2)),

                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text("Number of Beds:",
                            style: new TextStyle(
                              fontSize: 18.4,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey,
                            ),),
                          new Padding(padding: EdgeInsets.all(9.2)),
                          new Text(dbZip,
                            style: new TextStyle(
                              fontSize: 18.4,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey,
                              fontStyle: FontStyle.italic,
                            ),),
                        ],
                      ),

                      //Homework header
                      new Padding(padding: EdgeInsets.all(10.2)),
                      new Text("Homework List:",
                        style: new TextStyle(
                          fontSize: 19.2,
                          fontWeight: FontWeight.w500,
                          color: Colors.deepOrangeAccent,
                        ),),
                      new Padding(padding: EdgeInsets.all(12.2)),
//homework from database - use listview once connected
                      //Client Info
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text("Action: XXXXXX",
                            style: new TextStyle(
                              fontSize: 18.4,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey,
                            ),),
                          new Padding(padding: EdgeInsets.all(9.2)),
                          new Text("Assigned: 8/8",
                            style: new TextStyle(
                              fontSize: 18.4,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey,
                              fontStyle: FontStyle.italic,
                            ),),
                        ],
                      ),
                      //homework placeholder #2
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text("Action: XXXXXX",
                            style: new TextStyle(
                              fontSize: 18.4,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey,
                            ),),
                          new Padding(padding: EdgeInsets.all(9.2)),
                          new Text("Completed: 7/8",
                            style: new TextStyle(
                              fontSize: 18.4,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey,
                              fontStyle: FontStyle.italic,
                            ),),
                        ],
                      ),

                      new Padding(padding: EdgeInsets.all(19.2),
                        child: new RaisedButton(
                        onPressed:
                            () => debugPrint("get bedmaps"),


                        color: Colors.greenAccent,
                        child: new Text("Current Bed Maps & Layout",
                          style: new TextStyle(fontSize: 18.4,

                          ),),
                      ),),
//                      new StreamBuilder(
//                          stream: Firestore.instance.collection('clients').snapshots(),
//                          builder: (context, snapshots) {
//                            if (!snapshots.hasData) return Text("loading....");
//                            final int messageCount = snapshots.data.documents.length;
//                            debugPrint(snapshots.data.documents('ava low').toString());
//                            return new ListView.builder(
//                              itemCount: messageCount,
//                              itemBuilder: (_, int index) {
//                                final DocumentSnapshot document = snapshots.data.documents[index];
//                                return new ListTile(
//                                  title: new Text(document['clients'] ?? '<No message retrieved>'),
//                                  subtitle: new Text('Field ${index + 1} of $messageCount'),
//                                );
//                              },
//                            );
//                            },
//                            ),
    ],
                 
    );

                          }

             }








