import 'package:flutter/material.dart';
import 'package:patient_project/Utils/routes_name.dart';
import 'package:patient_project/res/component/onboadingScreen_component.dart';
import 'package:patient_project/res/component/round_Button.dart';

class Onboardingsignup extends StatelessWidget {
  const Onboardingsignup({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          OnboadingscreenComponents(title: 'Get Started!', description: 'Your health transport,\n reimagined. Let\'s begin.'),
          SizedBox(height: screenHeight*0.04,),
          roundButton(titile: 'SIGN UP NOW', onTap: (){
Navigator.pushReplacementNamed(context,RoutesName.SignupWithnumber);


          })




        ],

      ),
    );

  }
}
