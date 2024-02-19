import 'package:flutter/material.dart';

// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:playwith/authentication/authentication_screen.dart';
import 'package:playwith/authentication/profile.dart';
import 'package:playwith/explore_events/home_page.dart';
import 'package:playwith/main.dart';
import 'package:playwith/onboarding/onbaording2.dart';
import 'package:playwith/onboarding/onboarding1.dart';
import 'package:playwith/onboarding/onboarding2.dart';
import 'package:playwith/screens/event_screen.dart';
import 'package:playwith/screens/ground_screens.dart';
import 'package:playwith/screens/home_screen.dart';
import 'package:playwith/screens/main_screens.dart';

import 'chat/chat.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Container(
            child: Text("na"),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MainOnboarding();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Container(
          child: Row(
            children: [
              Text("Hey"),

            ],
          )
        );
      },
    );
  }
}