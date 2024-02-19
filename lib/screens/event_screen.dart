import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../events/eventslist.dart';
import '../widgets/app_large_text.dart';
import '../widgets/app_text.dart';



class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  _EventState createState() => _EventState();

}

class _EventState extends State<Event> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/eventimage.gif"
                    ),
                    fit: BoxFit.cover
                ),
          
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20,right: 20,top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.bars,color: Colors.white,),
                AppLargeText(text: "Event",size: 20,color: Colors.white,),
                Icon(FontAwesomeIcons.bell,color: Colors.white,),

              ],
            ),
          ),
          Container(
            width: 250,
            margin: const EdgeInsets.only(left: 20,top: 140),
            child: AppLargeText(text: "Join with upcoming events",color: Colors.white,size: 32,),
          ),
          Container(
              margin: const EdgeInsets.only(left: 25,right: 25,top: 270),
              padding: const EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ]
              ),

              child: Row(
                children: [
                  Container(
                    width: 250,
                    child: TextField(

                      decoration: InputDecoration(
                        labelText: "Search Event",
                        prefixIcon: Icon(Icons.search),
                        prefixIconConstraints: BoxConstraints(
                            minHeight: 40,
                            minWidth: 40
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFF378cf1),
                    ),
                    child: Icon(FontAwesomeIcons.slidersH,color: Colors.white,size: 30,),
                  )

                ],
              )
          ),
          
          Container(
              margin: EdgeInsets.only(top: 370,left: 10),
              child: AppLargeText(text: "Popular Events",color: Colors.black,size: 25,)),
          Container(
              width: double.maxFinite,
              margin: const EdgeInsets.only(top: 415),
              child: EventsList())

        ],
      ),
    );
  }
}


