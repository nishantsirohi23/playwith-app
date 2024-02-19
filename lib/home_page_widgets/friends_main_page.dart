import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playwith/friends/friend_list.dart';

import '../explore_events/home_page.dart';

class Friendswidget extends StatefulWidget {
  const Friendswidget({Key? key}) : super(key: key);

  @override
  State<Friendswidget> createState() => _FriendswidgetState();
}

class _FriendswidgetState extends State<Friendswidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,

      child: FirendList(),
    )
    ;
  }
}
