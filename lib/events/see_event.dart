import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:playwith/onboarding/onbaording2.dart';
import 'package:playwith/screens/ticket_page.dart';

class SeeEvent extends StatefulWidget {
  final String name;
  final String eventimage;
  //final String eventimage;
  const SeeEvent({Key? key,required this.name,required this.eventimage}) : super(key: key);


  @override
  _SeeEventState createState() => _SeeEventState(this.name,this.eventimage);
}

class _SeeEventState extends State<SeeEvent> {
  final String name;
  final String eventimage;
  _SeeEventState(this.name,this.eventimage);
  @override
  Widget build(BuildContext context) {

    double width = double.maxFinite;
    double height = double.maxFinite;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: new AppBar(
              title: new Text(
                "Hello World",
                style: TextStyle(color: Colors.amber),
              ),

              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            extendBodyBehindAppBar: true,
            body: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    opacity: 1.0,
                    image: NetworkImage(eventimage)
                ),

              ),
              child: Column(
                children: [

                  Container(
                    margin: const EdgeInsets.only(top: 90,left: 15,right: 15),
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
                                color: Colors.white,
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
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFFE0EAFC),
                          Color(0xFFE0EAFC),

                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,10),
                          blurRadius: 20,
                          color: Colors.grey.withOpacity(0.4),
                        )
                      ],
                    ),
                  ),

                  Container(
                    width: width,
                    margin: const EdgeInsets.only(top: 50),
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Text(name,
                      style: TextStyle(
                          fontSize: 33,
                          color: Colors.white,
                          decoration: TextDecoration.none
                      ),),
                  ),
                  Container(
                    width: width,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Text("Meerut ,Uttar Pradesh",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          decoration: TextDecoration.none
                      ),),
                  ),
                  Container(
                    width: width,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.parking,color: Colors.white,),
                        SizedBox(width: 9,),
                        Text("Parking Available",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              decoration: TextDecoration.none
                          ),),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.home,color: Colors.white,),
                        SizedBox(width: 9,),
                        Text("5 mins distance",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              decoration: TextDecoration.none
                          ),),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("1100 RUP",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  decoration: TextDecoration.none
                              ),),
                            Text("total price",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  decoration: TextDecoration.none
                              ),),

                          ],
                        ),
                        Column(
                          children: [
                            Text("30 min",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  decoration: TextDecoration.none
                              ),),
                            Text("duration",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  decoration: TextDecoration.none
                              ),),

                          ],
                        ),
                        Column(
                          children: [
                            Icon(FontAwesomeIcons.ellipsisH,color: Colors.white,),
                            Text("all levels",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  decoration: TextDecoration.none
                              ),),

                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Text("Join this exclusive 3v3 tournament with the nike officials , all in one day",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          decoration: TextDecoration.none
                      ),),
                  ),
                  Container(
                      width: width,
                      margin: const EdgeInsets.only(top: 40),
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("View more Details",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                decoration: TextDecoration.none
                            ),),
                          Icon(FontAwesomeIcons.arrowDown,color: Colors.white,)
                        ],
                      )
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet<void>(context: context,
                          //transitionAnimationController: ,
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder( // <-- SEE HERE
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0),
                            ),
                          ),
                          builder: (BuildContext context){
                             return Container(
                               height: 600,
                               width: MediaQuery.of(context).size.width,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   SizedBox(height: 7,),
                                   GestureDetector(
                                     onTap: () {
                                       Navigator.pop(context);
                                     },
                                     child: Icon(FontAwesomeIcons.chevronDown,
                                     color: Colors.grey.withOpacity(0.4),),
                                   ),
                                   SizedBox(height: 7,),
                                   Container(
                                     margin: const EdgeInsets.only(left: 20,right: 20),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       crossAxisAlignment: CrossAxisAlignment.start,

                                       children: [
                                         Text("Chooose the best time",
                                           style: TextStyle(
                                               fontSize: 21,
                                               color: Colors.black.withOpacity(0.5),
                                               decoration: TextDecoration.none
                                           ),),
                                         Icon(Icons.calendar_today_outlined,color: Colors.black.withOpacity(0.5),)
                                       ],
                                     ),
                                   ),
                                   GestureDetector(
                                     onTap: () {
                                       Navigator.push(context,
                                       MaterialPageRoute(builder: (context) => TicketPage()));

                                     },
                                     child: Card(
                                       color: Color(0XFF16161D),
                                       elevation: 5,
                                       shadowColor: Colors.black.withOpacity(0.5),
                                       shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.all(Radius.circular(40))
                                       ),
                                       child: Container(
                                         margin: const EdgeInsets.all(10),
                                         child: Text(
                                           "Book The Event",
                                           style: TextStyle(
                                               fontSize: 19,
                                               color: Colors.white,
                                               decoration: TextDecoration.none
                                           ),
                                         ),
                                       ),
                                     ),
                                   ),
                                   ClipRRect(
                                     borderRadius: BorderRadius.all(Radius.circular(40)),
                                     child: Container(
                                       height: 150,
                                       width: 250,
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.all(Radius.circular(40))
                                       ),
                                       child: GoogleMap(
                                         initialCameraPosition: CameraPosition(
                                           target: LatLng(28.6139, 77.2090),
                                           zoom: 15,
                                         ),
                                       ),
                                     ),
                                   )


                                 ],
                               ),
                             );
                          }
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      margin: const EdgeInsets.only(top: 40),
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 14,bottom: 14),
                      child: Text("Pick a time",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            decoration: TextDecoration.none
                        ),),
                    ),
                  ),
                ],
              ),
            )

      ),

        ],
      ),
    );
  }
}

