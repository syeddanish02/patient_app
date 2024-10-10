import 'package:another_stepper/another_stepper.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:patient_project/res/colors.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {





  // Stepper Data
  final List<StepperData> stepperDataList = [
    StepperData(
      title: StepperText('Step 1'),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child:  Ink.image(image: AssetImage('images/icons/Vector.png')),
        )
    ),
    StepperData(
      title: StepperText('Step 2'),
 ),


  ];


  // List<StepperData> stepperData=[
  //   StepperData(
  //     subtitle: StepperText('PICKUP'),
  //     title:StepperText('My Current Location'),
  //
  //   ),
  //   StepperData(
  //     subtitle: StepperText(';klsdkf'),
  //     title:StepperText('dani'),
  //
  //   ),
  //
  //
  // ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight*0.45,
            width: screenWidth,
            decoration: BoxDecoration(
                image: DecorationImage(image: (AssetImage('images/background.png')),fit:BoxFit.cover)
            ),
            child: Padding(

              padding: const EdgeInsets.only(bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: screenHeight*0.05,
                    width: screenWidth*0.35,

                    decoration: BoxDecoration(
                      color: Appcolor.transParent,
                      borderRadius: BorderRadius.circular(25),


                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on,color: Appcolor.white,),
                        SizedBox(width: screenWidth*0.01,),
                        Text('Romania',style: TextStyle(color: Appcolor.white,fontSize:screenWidth*0.05, ),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight*0.05,
                  ),

                  Container(
                    height: screenHeight*0.1,
                    width: screenWidth*1,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: (AssetImage('images/white_logo.png'))),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,

            child: Container(
              padding: EdgeInsets.all(15),
              height: screenHeight*0.6,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Appcolor.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Container(
                    height: screenHeight*0.13,
                    width: screenWidth*1,

                    decoration: BoxDecoration(
                      color: Appcolor.red,
                      borderRadius: BorderRadius.circular(15)

                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Book an Ambulance',style: TextStyle(color: Appcolor.white,fontSize:screenWidth*0.045, ),),
                              Text('Or Schedule for later',style: TextStyle(color: Appcolor.white,fontSize:screenWidth*0.035, ),)
                            ],

                          ),

                        ),
                        Spacer(),



                        Padding(
                          padding: const EdgeInsets.only(top: 20,),
                          child: Container(

                            height: screenHeight*0.3,
                            width: screenWidth*0.38,

                            decoration: BoxDecoration(


                             image: DecorationImage(image: AssetImage('images/ambulance2.png'),fit: BoxFit.cover),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight*0.023,
                  ),
                  Container(
                    height: screenHeight*0.13,
                    width: screenWidth*1,

                    decoration: BoxDecoration(
                        color: Appcolor.red,
                        borderRadius: BorderRadius.circular(15)

                    ),
                    child: Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Emergency Call us',style: TextStyle(color: Appcolor.white,fontSize:screenWidth*0.045, ),),
                              Text('+44 12312 51252',style: TextStyle(color: Appcolor.white,fontSize:screenWidth*0.035, ),)
                            ],
                          ),


                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Container(


                            height: screenHeight*0.13,
                            width: screenWidth*0.3,

                            decoration: BoxDecoration(
                             //color: Colors.blue,


                              //image: DecorationImage(image: AssetImage('images/Ellipse.png'),fit: BoxFit.cover),
                            ),
                            child: Center(
                              child: Stack(
                                children: [
                                  Center(
                                    child: SizedBox(
                                      height: screenHeight*0.13,width: screenWidth*0.35,
                                      child: Image.asset('images/Ellipse4.png'),
                                    ),
                                  ),
                                  Center(
                                    child: SizedBox(
                                      height: screenHeight*0.11,width: screenWidth*0.3,
                                      child: Image.asset('images/Ellipse3.png'),
                                    ),
                                  ),
                                  Center(
                                    child: SizedBox(
                                      height: screenHeight*0.09,width: screenWidth*0.2,
                                      child: Image.asset('images/Ellipse2.png'),
                                    ),
                                  ),
                                  Center(
                                    child: SizedBox(
                                      height: screenHeight*0.06,width: screenWidth*0.2,
                                      child: Image.asset('images/callvector.png'),
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight*0.015,
                  ),
                  Text('Schedule Bookings',style: TextStyle(fontWeight: FontWeight.bold),),

                  Container(
                    height: screenHeight*0.23,
                    width: screenWidth*1,

                    decoration: BoxDecoration(
                      color: Appcolor.greyforContainer,
                      borderRadius: BorderRadius.circular(15),

                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Icons and Dotted Line
                        Center(
                          child: Column(
                            children: [
                              // Pickup Icon
                              Container(
                                height: 30,
                                width: 20,
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                  image: DecorationImage(image: AssetImage('images/icons/ic_current.png'),fit: BoxFit.contain),
                                ),
                              ),
                              Dash(
                                direction: Axis.vertical,
                                length: 70,
                                dashLength: 10,
                                dashThickness: 2,
                                dashColor: Colors.grey,
                              ),

                              Container(
                                height: 30,
                                width: 20,
                                decoration: BoxDecoration(
                                 // color: Colors.red,
                                  image: DecorationImage(image: AssetImage('images/icons/Oval.png'),fit: BoxFit.contain),
                                ),
                              )

                            ],
                          ),
                        ),
                        SizedBox(width: 10),

                        // Text Information
                        Expanded(
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Pickup Information
                              Text(
                                "PICKUP",
                                style: TextStyle(

                                  color: Colors.grey,
                                ),
                              ),
                              //SizedBox(height: 4),
                              Text(
                                "My current location",
                                style: TextStyle(fontSize: 16, ),
                              ),
                              Divider(thickness: 0,),
                              // Drop-off Information
                              Text(
                                "DROP-OFF",
                                style: TextStyle(

                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "105 William Hospital, Chicago, US",
                                style: TextStyle(fontSize: 14,),
                              ),

                              SizedBox(height:2),
                              Row(
                                children: [
                                  Text(
                                    "15-August-2023 - 3:00 PM",
                                    style: TextStyle(fontSize: 14, color: Colors.grey),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios, color: Colors.grey)

                                ],
                              ),
                            ],
                          ),
                        ),
                        // Arrow Icon for Navigation

                      ],
                    ),
                  ),






                ],
              ),



            ),
          )
        ],
      )
    );
  }
}
