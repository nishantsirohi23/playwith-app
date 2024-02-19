import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:playwith/authentication/apple_auth.dart';
import 'package:playwith/screens/ground_screens.dart';
import 'package:playwith/screens/home_screen.dart';
import 'auth_service.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Hello World!')), body: Body());
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void initState() {
    super.initState();

  }

  void googleclick() async{
    signInWithGoogle().whenComplete(() => Navigator.push(context,
        MaterialPageRoute(builder: (context) => Home())));
  }


  void appleclick() {
    signInWithApple().whenComplete(() => Navigator.push(context,
        MaterialPageRoute(builder: (context) => Home())));
  }

  Widget googleLoginButton() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        foregroundColor: Colors.grey,

      ),
        onPressed: this.googleclick,
        child: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage('assets/google-logo.png'), height: 35),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Sign in with Google',
                        style: TextStyle(color: Colors.grey, fontSize: 25)))
              ],
            )));
  }


  @override
  Widget build(BuildContext context) {


    return Align(alignment: Alignment.center, child: Column(children: [
      googleLoginButton(),

    ],));
  }
}

