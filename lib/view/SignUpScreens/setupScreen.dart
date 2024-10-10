import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_project/Utils/routes_name.dart';
import 'package:patient_project/model_view/provider.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';

class Setupscreen extends StatefulWidget {
  const Setupscreen({super.key});

  @override
  State<Setupscreen> createState() => _SetupscreenState();
}

class _SetupscreenState extends State<Setupscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    TaskStatusProvider taskStatusProvider=Provider.of<TaskStatusProvider>(context, listen: false);
    taskStatusProvider.StartTask();
    Timer(Duration(seconds: 5), (){
      taskStatusProvider.completeTask();
    });

    Timer(Duration(seconds: 7),(){
      if(taskStatusProvider.isDone){
        Navigator.pushNamed(context, RoutesName.homeNavigation);
        taskStatusProvider.taskdefault();

      }

    });


  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final TaskStatusProvider taskStatusProvider=Provider.of<TaskStatusProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Image.asset('images/background3.png'),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,


              children: [
                Text(
                  taskStatusProvider.isDone ? 'Setup Complete!' : 'Setting up...',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
              taskStatusProvider.isDone? Lottie.asset('lottieFiles/animation2.json'):Lottie.asset('lottieFiles/animation1.json'),
              ],
            ),
          )
        ],
      )
      

    );
  }
}
