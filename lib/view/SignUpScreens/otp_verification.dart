import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:patient_project/Utils/routes_name.dart';
import 'package:patient_project/res/colors.dart';
import 'package:patient_project/res/component/round_Button.dart';
import 'package:patient_project/res/component/round_button2.dart';
import 'package:pinput/pinput.dart';

class otpVerification extends StatefulWidget {
  const otpVerification({super.key});

  @override
  State<otpVerification> createState() => _otpVerificationState();
}

class _otpVerificationState extends State<otpVerification> {

  final defaultPinTheme=
  PinTheme(
    width: 60, // Adjust this value for width
    height: 60, // Adjust this value for height
    textStyle: TextStyle(
      fontSize: 20, // You can adjust the text size here

    ),
    decoration: BoxDecoration(
      color: Appcolor.fieldCLRgrey,
      // Background color for each pin field

      borderRadius: BorderRadius.circular(5),
      // Border color
    ),
  );
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: screenHeight*0.5,
              width: screenWidth,
              child: Image.asset('images/signup_background.png') ,
            ),


            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Verify your Number',style: TextStyle(fontSize: screenHeight*0.05,fontWeight: FontWeight.bold),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text('We\'ve sent an OTP to'),
                      Text('+40 1241244212.'),
                    ],
                  ),
                  SizedBox(height: screenHeight*0.03,),
                Pinput(
                  length: 6,

                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: BoxDecoration(
                      color: Appcolor.fieldCLRgrey,

                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Appcolor.blue), // Border color when focused
                    ),

                 


                ),
                  onSubmitted: (_){

                  },
                ),

                  SizedBox(height: screenHeight*0.06,),
                  roundButton2(titile: 'VERIFY OTP', onTap: (){
                    Navigator.pushReplacementNamed(context, RoutesName.FirstTimeScreen);

                  }),
                  SizedBox(height: screenHeight*0.03,),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Didn\'t receive the code?',style: TextStyle(fontSize: screenHeight*0.02,)),
                      TextButton(onPressed: (){}, child: Text('Resend OTP',style: TextStyle(color: Appcolor.blue,fontSize: screenHeight*0.02,),))
                    ],
                  ),



                ],
              ),
            )

          ],
        )

    );
  }
}
