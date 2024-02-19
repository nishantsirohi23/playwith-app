

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playwith/events/see_event.dart';
import 'package:playwith/friends/view_profile.dart';
import 'package:playwith/widgets/app_large_text.dart';
import 'package:playwith/widgets/app_text.dart';

class FirendList extends StatefulWidget {
  const FirendList({Key? key}) : super(key: key);

  @override
  _FirendListState createState() => _FirendListState();
}

class _FirendListState extends State<FirendList> {
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('friends').snapshots();


  @override
  Widget build(BuildContext context) {
    double mqHeight = MediaQuery.of(context).size.height;
    double mqWidth = MediaQuery.of(context).size.width;
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(

          scrollDirection: Axis.horizontal,
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return GestureDetector(
                child: Container(
                  width: 150,
                  margin: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(7),topRight: Radius.circular(7)),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      data["profile"]
                                  ),
                                  fit: BoxFit.cover,
                                )

                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 45,left: 5,bottom: 3),
                            padding: const EdgeInsets.only(left: 3,right: 3),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)
                            ),
                            child: Column(
                              children: [
                                AppLargeText(text: "23",color: Colors.black,size: 22,),
                                AppText(text: "APR",size: 15,),

                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10,top: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(7),bottomRight: Radius.circular(7)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ],
                            color: Colors.white
                        ),
                        height: 70,
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //AppText(text: data["date"],size: 13,),
                            AppLargeText(text: data["name"],size: 19,),
                            SizedBox(height: 5,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 35.0,
                                      height: 35.0,
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
                                      width: 35.0,
                                      height: 35.0,
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
                                      width: 35.0,
                                      height: 35.0,
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
                                ),

                              ],
                            )


                          ],
                        ),
                      )

                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  FriendProfile()),
                  );
                }

            );


          }).toList(),
        );
      },
    );
  }
}





