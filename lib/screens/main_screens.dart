import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playwith/events/eventslist.dart';
import 'package:playwith/friends/friend_list.dart';
import 'package:playwith/home_page_widgets/event_main_widget.dart';
import 'package:playwith/home_page_widgets/friends_main_page.dart';
import 'package:playwith/home_page_widgets/homeappbar.dart';
import 'package:playwith/screens/match_preview.dart';

import '../widgets/UnicornOutlineButton.dart';
import '../widgets/app_text.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeAppBar(),
                  EventMainPage(),
                  Container(
                    margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
                    child: Row(
                      children: [
                        Text("Friends Online",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7,),
                  const Friendswidget(),

                ],
              ),




              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MatchPreview()));

                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 6,
                  margin: const EdgeInsets.only(left: 3,right: 3,bottom: 80),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        opacity: 0.9,
                        image: NetworkImage(
                            "https://cdn.dribbble.com/users/789882/screenshots/10415310/media/abe9d92c384dc03bd387579cbb92623e.png?compress=1&resize=1200x900&vertical=top",
                        ),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        SizedBox(height: 5,),
                        Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: 40,
                          child: Divider(
                            color: Colors.white,
                            thickness: 4.8,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          margin: const EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Challenge Invitation",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.none,

                                ),
                              ),
                              Text("...",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none,

                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width - 40,
                          margin: const EdgeInsets.only(left: 20,right: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 54.0,
                                height: 47.0,
                                margin: const EdgeInsets.only(left: 12),
                                decoration: BoxDecoration(
                                  color: const Color(0xff7c94b6),
                                  image: DecorationImage(
                                    image: NetworkImage('https://cdn.dribbble.com/users/1663335/screenshots/15850916/media/cc7dc80c44fdcebb4bf162fc71722b16.jpg?compress=1&resize=800x600&vertical=top'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.all( Radius.circular(50.0)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4,),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Suryansh Sirohi",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                        decoration: TextDecoration.none,

                                      ),
                                    ),
                                    Text("Cricket Event",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                        decoration: TextDecoration.none,

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 60,),
                              Icon(Icons.arrow_forward_ios,color: Colors.black,)
                            ],
                          ),

                        )

                      ],
                  ),
                ),
              )
            ],
          ),

    );
  }
}
