import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FriendProfile extends StatefulWidget {
  const FriendProfile({Key? key}) : super(key: key);

  @override
  State<FriendProfile> createState() => _FriendProfileState();
}

class _FriendProfileState extends State<FriendProfile> {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.dribbble.com/users/3251796/screenshots/6178268/media/e71eb208a3c6f4fb39322fe8d85df047.png?compress=1&resize=1600x1200&vertical=top"
              ),
              fit: BoxFit.cover,
            )
        ),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(FontAwesomeIcons.arrowLeft,color: Colors.black,),
                  Icon(FontAwesomeIcons.bars,color: Colors.black,),

                ],
              ),
            ),
            Container(
              height: height / 2.6,
              width: width,
              padding: const EdgeInsets.only(left: 20,top: 15),
              margin: const EdgeInsets.only(left: 7,right: 7,top: 500),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(45)),
                color: const Color(0xff181818)
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage("https://cdn.dribbble.com/userupload/2546421/file/original-d1bddb6d4c34772adda73e6e2de0590f.jpg?filters:format(webp)?filters%3Aformat%28webp%29=&compress=1&resize=2400x1800"),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nishant Sirohi",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,

                              ),
                            ),
                            Text("Meerut Uttar Pradesh",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.none,

                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 18,),
                  Container(
                    margin: const EdgeInsets.only(left: 7,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Position:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.none,

                              ),
                            ),
                            Text("Centre",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.none,

                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Age:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.none,

                              ),
                            ),
                            Text("20",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.none,

                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Height:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.none,

                              ),
                            ),
                            Text("172cm",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.none,

                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14,),

                  Container(
                    margin: const EdgeInsets.only(left: 7,right: 20),
                    child: Divider(
                        color: Colors.white.withOpacity(0.7),
                      height: 4,

                    ),
                  ),
                  SizedBox(height: 14,),
                  Container(
                    margin: const EdgeInsets.only(left: 7,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          height: 80,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child:  Stack(
                              children: [
                                Container(
                                  width: 52.0,
                                  height: 52.0,
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
                                  width: 52.0,
                                  height: 52.0,
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
                                  width: 52.0,
                                  height: 52.0,
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
                        Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child:  Row(
                              children: [
                                Text("Invite",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                    decoration: TextDecoration.none,

                                  ),
                                ),

                              ],
                            )
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 280,top: 475),
              child: Image.asset('lib/assets/love.png',height: 50,width: 50,),
            )
          ],
        ),
      ),
    );
  }
}
