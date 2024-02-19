import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyActivity extends StatefulWidget {
  const MyActivity({Key? key}) : super(key: key);

  @override
  _MyActivityState createState() => _MyActivityState();
}

class _MyActivityState extends State<MyActivity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        children: [
          CircleAvatar(
            radius: 55,
            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60"),
          ),
          Text("Nishant Sirohi",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none,

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            image: NetworkImage('https://cdn.dribbble.com/users/1053514/screenshots/16360530/media/a8379361e469398fadfac753ddbde3c0.png?compress=1&resize=1200x900&vertical=top'),
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
                        width: 50.0,
                        height: 50.0,
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
                        width: 50.0,
                        height: 50.0,
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
                  Text("Sports 4+",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,

                    ),
                  ),

                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            image: NetworkImage('https://cdn.dribbble.com/users/1053514/screenshots/16360530/media/a8379361e469398fadfac753ddbde3c0.png?compress=1&resize=1200x900&vertical=top'),
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
                        width: 50.0,
                        height: 50.0,
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
                        width: 50.0,
                        height: 50.0,
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
                  Text("Sports 4+",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,

                    ),
                  ),

                ],
              ),
            ],
          )

        ],
      ),
    );
  }
}
