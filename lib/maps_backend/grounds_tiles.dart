

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playwith/events/see_event.dart';
import 'package:playwith/widgets/app_large_text.dart';
import 'package:playwith/widgets/app_text.dart';

class GTiles extends StatefulWidget {
  const GTiles({Key? key}) : super(key: key);

  @override
  _GTilesState createState() => _GTilesState();
}

class _GTilesState extends State<GTiles> {
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('grounds').snapshots();


  @override
  Widget build(BuildContext context) {
    double mqHeight = MediaQuery.of(context).size.height;
    double mqWidth = MediaQuery.of(context).size.width;
    return Container();
  }
}





