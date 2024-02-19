import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:playwith/widgets/app_large_text.dart';

class GroundScreen extends StatefulWidget {
  final String name;
  final String eventimage;
  const GroundScreen({Key? key,required this.name,required this.eventimage}) : super(key: key);

  @override
  _GroundScreenState createState() => _GroundScreenState(this.name,this.eventimage);
}

class _GroundScreenState extends State<GroundScreen> {
  final String name;
  final String eventimage;
  _GroundScreenState(this.name,this.eventimage);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double doheight = 2*height;
    double containermargin = height - 20;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: height/3+60,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        eventimage,
                    ),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(top: 20,left: 20),
            child: Icon(FontAwesomeIcons.arrowLeft,color: Colors.white,),
          ),
          Container(
            margin: const EdgeInsets.only(top: 260),
            width: width,
            padding: const EdgeInsets.only(top: 20),
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xff5bb26e),
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
              border: Border.all(
                color: Color(0xff5bb26e),
                width: 2.0,
              ),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Saturday",
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none
                        ),),
                      SizedBox(height: 5,),
                      Text("November 29,2021",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none
                        ),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(27.5),
                            color: Colors.white
                        ),
                        child: Image.asset('assets/storm.png'),
                      ),
                      SizedBox(width: 13,),
                      Text("22\u2109",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          decoration: null,

                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

          Container(
            margin: const EdgeInsets.only(top: 350),
            width: width,
            height: doheight/3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
              border: Border.all(
                color:  Colors.white,
                width: 2.0,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          decoration: null,

                        ),
                        ),
                      ),
                      Text("80 RUP",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          decoration: null,

                        ),
                      )

                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.only(left: 15,right: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.location_on_outlined,color: Colors.blue,),
                            Text("Prague, United Kingdom",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                decoration: null,

                              ),
                            )
                          ],
                        ),
                      ),
                      Text("/day",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          decoration: null,

                        ),
                      )



                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  margin: const  EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                       width: 95,
                        height: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.withOpacity(0.4)),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                                child: Center(
                                  child: Image.asset('assets/users.png'),

                                ),
                              ),
                              SizedBox(height: 10,),

                              Text("10 Users",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  decoration: null,

                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 95,
                        height: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.withOpacity(0.4)),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.7),
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                                child: Center(
                                  child: Icon(FontAwesomeIcons.locationArrow,color: Colors.white,),
                                ),
                              ),
                              SizedBox(height: 10,),

                              Text("10 Km",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  decoration: null,

                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 95,
                        height: 120,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.withOpacity(0.4)),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                                child: Center(
                                  child: Image.network("https://cdn-icons.flaticon.com/png/512/2377/premium/2377846.png?token=exp=1650619504~hmac=513caf8966409abc59a822a918f2df6d")
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("4.7",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  decoration: null,

                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
            margin: const EdgeInsets.only(top: 30,left: 20,right: 20),
            padding: const EdgeInsets.only(left: 20,right: 20,top: 17,bottom: 17),

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Players",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black.withOpacity(0.8),
                          decoration: TextDecoration.none
                      ),),
                    SizedBox(height: 5,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 20,),
                        SizedBox(width: 4,),
                        Text("3.8",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.8),
                              decoration: TextDecoration.none
                          ),),
                        SizedBox(width: 5,),
                        Text("|",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.8),
                              decoration: TextDecoration.none
                          ),),
                        SizedBox(width: 5,),
                        Text("10 Players",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[500],
                              decoration: TextDecoration.none
                          ),),
                      ],
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: DecorationImage(
                          image: NetworkImage('https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80'),
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
                      margin: const EdgeInsets.only(left: 24),
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: DecorationImage(
                          image: NetworkImage('https://images.unsplash.com/photo-1628157588553-5eeea00af15c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fG1hbiUyMGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'),
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
                      margin: const EdgeInsets.only(left: 48),
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: DecorationImage(
                          image: NetworkImage('https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1hbiUyMGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'),
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
                )


              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,10),
                  blurRadius: 20,
                  color: Colors.grey.withOpacity(0.4),
                )
              ],
            ),
          ),



              ],
            ),
          ),
        ],
      ),
    );
  }
}
