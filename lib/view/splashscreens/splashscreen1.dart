import 'package:flutter/material.dart';
import 'package:patient_project/model_view/splashscreen_services.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  final splashservices splashservicess=splashservices();
  @override
  void initState() {
    super.initState();
    splashservicess.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {

     final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            child: Image.asset(
              'images/background2.png', // Replace with your image path
              fit: BoxFit.cover,  // Cover the whole screen
            ),
          ),
        Center(
          child: Center(child: Image.asset('images/redLogo.png',height: screenHeight*0.15,),),
        ),
          SizedBox(
            height: screenHeight*0.25,
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight*0.72),
            height: screenHeight*0.45,
            width: screenWidth*1,
            decoration: BoxDecoration(


                image: DecorationImage(image: AssetImage('images/ambulance.png'),fit: BoxFit.cover)
            ),
          )








          ],
        ),
      );

  }
}