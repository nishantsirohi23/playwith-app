import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playwith/widgets/app_large_text.dart';
import 'package:badges/badges.dart';




class HomeAppBar extends StatefulWidget {
  const HomeAppBar({ Key? key }) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final double width= MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(top: 40),
      height: 60,
      width: width,
      padding: const EdgeInsets.only(left: 20,right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hey ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none,

                ),
              ),
              SizedBox(height: 4,),
              Text("Nishant",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  decoration: TextDecoration.none,

                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}