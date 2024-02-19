import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:playwith/onboarding/onboarding1.dart';
import 'package:playwith/onboarding/onboarding2.dart';

class Challenges extends StatefulWidget {
  const Challenges({Key? key}) : super(key: key);

  @override
  _ChallengesState createState() => _ChallengesState();
}

class _ChallengesState extends State<Challenges> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.dribbble.com/users/1111164/screenshots/6535423/attachments/1396929/arizona.jpg?compress=1&resize=800x600&vertical=top"
                ),
                opacity: 0.7,
                fit: BoxFit.cover,
              )

          ),
          child: Center(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 180,
                margin: const EdgeInsets.only(left: 30,right: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: CupertinoColors.white

                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("1",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,

                            ),
                          ),
                          Text("/3",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,

                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7,),
                      Text("Create your any event or any challenge",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,

                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("Title",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,

                        ),
                      ),
                      SizedBox(height: 7,),
                      Container(
                        width: 280,
                        height: 50,
                        padding: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          color: Colors.grey.shade300,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter title of event',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("Sports",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,

                        ),
                      ),
                      SizedBox(height: 7,),
                      Container(
                        width: 280,
                        height: 50,
                        padding: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          color: Colors.grey.shade300,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Choose sports',
                            border: InputBorder.none,
                          ),
                        ),
                      ),

                      SizedBox(height: 15,),
                      Text("Location",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,

                        ),
                      ),
                      SizedBox(height: 7,),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  MainOnboarding()),
                          );
                        },
                        child: Container(
                          height: 150,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40))
                          ),
                          child: GoogleMap(
                            initialCameraPosition: CameraPosition(
                              target: LatLng(28.6139, 77.2090),
                              zoom: 12,
                            ),
                          ),
                        )
                      ),

                      IconButton(onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  MainOnboarding()),
                        );
                      },splashColor: Colors.blue,
                        icon: Icon(Icons.arrow_forward_ios),color: Colors.black,)






                    ],
                  ),
                )
            ),
          ),
        ),
      ),
    );
  }
}
