import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:playwith/navigation/navigation.dart';

import '../main.dart';
import '../widgets/navigation_drawer_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static final String title = 'Navigation Drawer';

  @override
    Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainPage(),
    );
  }
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    resizeToAvoidBottomInset: false,
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text(MyApp.title),
      backgroundColor: Colors.black,
    ),
    bottomNavigationBar: CustomBottomNavigationBar(),
    body: Builder(
      builder: (context) => Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Container(
              child: Text("nishant")
          )
      ),
    ),
  );
}
