import 'package:flutter/material.dart';
import 'package:patient_project/Utils/routes_name.dart';
import 'package:patient_project/view/SignUpScreens/FirstTimeScreen.dart';
import 'package:patient_project/view/SignUpScreens/companyProfileSetup.dart';
import 'package:patient_project/view/SignUpScreens/setupScreen.dart';
import 'package:patient_project/view/SignUpScreens/signUpWithNumber.dart';
import 'package:patient_project/view/SignUpScreens/userProfileSetup.dart';
import 'package:patient_project/view/homescreens/homeNavigation.dart';
import 'package:patient_project/view/homescreens/homescreen.dart';
import 'package:patient_project/view/onboarding/onboadingScreens.dart';

import 'package:patient_project/view/onboarding/onboardingSignUp.dart';
import 'package:patient_project/view/SignUpScreens/otp_verification.dart';
import 'package:patient_project/view/splashscreens/splashscreen1.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings){
    switch(settings.name ){
      case RoutesName.splash1:
      return MaterialPageRoute(builder: (BuildContext context)=> const Splashscreen());
      case RoutesName.onboardScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const Onboadingscreens());
      case RoutesName.onboardSignUp:
        return MaterialPageRoute(builder: (BuildContext context)=> const Onboardingsignup());
      case RoutesName.SignupWithnumber:
        return MaterialPageRoute(builder: (BuildContext context)=> const Signupwithnumber());
      case RoutesName.OtpVerification:
        return MaterialPageRoute(builder: (BuildContext context)=> const otpVerification());
      case RoutesName.FirstTimeScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const firstTimeScreen());
      case RoutesName.UserProfileScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const userProfileSetup());
      case RoutesName.CompanyProfileScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const companyProfileSetup());
      case RoutesName.setupScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const Setupscreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const Homescreen());
      case RoutesName.homeNavigation:
        return MaterialPageRoute(builder: (BuildContext context)=> const Homenavigation());

      default:
      return MaterialPageRoute(builder: (_){
        return Scaffold(
          body: Center(child: Text('no screen'),),
        );


      });
      
    }

  }
}