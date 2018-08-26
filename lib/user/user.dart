import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../ui/login.dart' as login;

String client;
String fName;
String lName;
double startDate;
int numBeds;

class UserData extends StatefulWidget {


  @override
  UserDataState createState() => UserDataState();
}

class UserDataState extends State<UserData> {



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("Hi $fName, you have $numBeds and started service on $startDate")
        ],
      ),

    );
  }
}



