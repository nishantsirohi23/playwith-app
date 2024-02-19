import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../explore_events/home_page.dart';

class EventMainPage extends StatefulWidget {
  const EventMainPage({Key? key}) : super(key: key);

  @override
  State<EventMainPage> createState() => _EventMainPageState();
}

class _EventMainPageState extends State<EventMainPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              width: 170,
              decoration: BoxDecoration(
                color: const Color(0xff59b37d),
                borderRadius: BorderRadius.all( Radius.circular(43.0)),
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20,top: 33),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all( Radius.circular(30.0)),
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        child: Center(
                          child: Text("5+",
                            style: TextStyle(
                              color: const Color(0xff59b37d),
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.none,

                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20,top: 10),
                        child: Text("Upcoming Events",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none,

                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 110,top: 20),
                    child: Image.network("https://cdn-icons-png.flaticon.com/512/616/616490.png"
                    ,height: 40,width: 40,),
                  )
                ],
              )
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,

                  ),
                ),
                Row(
                  children: [
                    Text("Events",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.underline,

                      ),
                    ),
                    Image.asset('assets/down.png',height: 30,)

                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  width: 140,
                  height: 90,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child:  Stack(
                      children: [
                        Container(
                          width: 54.0,
                          height: 54.0,
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
                        Container(
                          margin: const EdgeInsets.only(left: 32),
                          width: 54.0,
                          height: 54.0,
                          decoration: BoxDecoration(
                            color: const Color(0xff7c94b6),
                            image: DecorationImage(
                              image: NetworkImage('https://cdn.dribbble.com/users/879059/screenshots/16676818/media/ab5b6a611e2e425844a5ff7acd5bcc26.png?compress=1&resize=1200x900&vertical=top'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all( Radius.circular(50.0)),
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 58),
                          width: 54.0,
                          height: 54.0,
                          decoration: BoxDecoration(
                            color: const Color(0xff7c94b6),
                            image: DecorationImage(
                              image: NetworkImage('https://cdn.dribbble.com/users/338126/screenshots/14963462/media/c7bae5aa6a335a6eefb24dbde86e50f6.png?compress=1&resize=1200x900&vertical=top'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all( Radius.circular(50.0)),
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => HomePage()));

      },
    );
  }
}
