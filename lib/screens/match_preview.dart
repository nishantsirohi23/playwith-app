import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchPreview extends StatefulWidget {
  const MatchPreview({Key? key}) : super(key: key);

  @override
  State<MatchPreview> createState() => _MatchPreviewState();
}

class _MatchPreviewState extends State<MatchPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
              backgroundColor: Colors.transparent,
              extendBodyBehindAppBar: true,
              body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color:  const Color(0xFF1e1c31),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(7),topRight: Radius.circular(7)),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.dribbble.com/users/1008875/screenshots/6239114/playerslounge356656575.png",
                            ),
                            fit: BoxFit.cover,
                          )

                      ),
                    )
                  ],
                ),
              )

          ),

        ],
      ),
    );
  }
}
