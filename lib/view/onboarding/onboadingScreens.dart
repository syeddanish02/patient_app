import 'package:flutter/material.dart';
import 'package:patient_project/Utils/routes_name.dart';
import 'package:patient_project/model_view/provider.dart';
import 'package:patient_project/res/colors.dart';
import 'package:patient_project/res/component/onboadingScreen_component.dart';
import 'package:provider/provider.dart';

class Onboadingscreens extends StatefulWidget {
  const Onboadingscreens({super.key});

  @override
  State<Onboadingscreens> createState() => _OnboadingscreensState();
}

class _OnboadingscreensState extends State<Onboadingscreens> {
  final PageController _pageController = PageController();
  final int total=5;

  @override
  Widget build(BuildContext context) {


    final screenWidth=MediaQuery.of(context).size.width;
    final screenHeight=MediaQuery.of(context).size.height;
    final onboardingProvider onboardprovider=Provider.of<onboardingProvider>(context);
    return Scaffold(
      body: Column(
        children: [

          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page){
                onboardprovider.setpage(page);
              },
              children:<Widget> [
             OnboadingscreenComponents(title: 'Welcome to Bursa De\n Ambulante Private', description: 'Your health journey, simplified.'),
                OnboadingscreenComponents(title: 'Schedule Your Transport', description: 'Choose your pickup, destination, and preferred time.\n We\'ll handle the rest'),
                OnboadingscreenComponents(title: 'Customize Your Ride', description: 'Select the type of ambulance and add any extras you need for a comfortable journey.'),
                OnboadingscreenComponents(title: 'Real-time Tracking', description: 'Stay informed. Track your ambulance in real-time.'),
                OnboadingscreenComponents(title: 'Chat & Connect', description: 'Directly communicate with your driver for any assistance.'),

              ],
            ),
          ),



          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: screenHeight*0.02,
                    child: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(10),
                      value: (onboardprovider.CurrentPage + 1) / total, // Use provider's current page
                      backgroundColor: Colors.grey[300],
                      color: Appcolor.red,
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, RoutesName.onboardSignUp);
                  },
                  child: Text('Skip Intro',style: TextStyle(color: Appcolor.blue,fontSize: 18),),
                ),
              ],
            ),
          ),
        ],
      ),


    );
  }
}

