import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:playwith/firebase_intial.dart';
import 'package:playwith/onboarding/onbaording2.dart';
import 'package:playwith/widgets/app_large_text.dart';
import 'package:playwith/widgets/app_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainOnboarding extends StatefulWidget {
  const MainOnboarding({Key? key}) : super(key: key);

  @override
  State<MainOnboarding> createState() => _MainOnboardingState();
}

class _MainOnboardingState extends State<MainOnboarding> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: [
          SizedBox(height: 30,),
          Image.network("",width: width,height: height/3),
          SizedBox(height: 30,),
          AppLargeText(text: "Get Inspired",color: Colors.white),
          SizedBox(height: 30,),
          AppText(text: "Dont know what to eat Take a picture we'll suggest things yo cook with your ingredients.",color: Colors.white),
          SizedBox(height: 30,),
          AnimatedSmoothIndicator(
            activeIndex: 1,
            count:  6,
            effect:  ExpandingDotsEffect(activeDotColor: Colors.white,dotColor: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(child: AppText(text: "Skip",color: Colors.white,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  OnB()),
                  );
                }),
                Row(
                  children: [
                    AppText(text: "Next",color: Colors.white,),
                    Icon(FontAwesomeIcons.arrowRight,color: Colors.white,)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
