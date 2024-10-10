import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:patient_project/Utils/routes_name.dart';
import 'package:patient_project/res/colors.dart';
import 'package:patient_project/res/component/round_button2.dart';

class Signupwithnumber extends StatefulWidget {
  const Signupwithnumber({super.key});

  @override
  State<Signupwithnumber> createState() => _SignupwithnumberState();
}

class _SignupwithnumberState extends State<Signupwithnumber> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: screenHeight * 0.5,
            width: screenWidth,
            child: Image.asset('images/signup_background.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Let\'s Get Started',
                  style: TextStyle(
                      fontSize: screenHeight * 0.05,
                      fontWeight: FontWeight.bold),
                ),
                Text('Enter your phone number to sign up.'),
                SizedBox(height: screenHeight * 0.03),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: IntlPhoneField(


                    keyboardType: TextInputType.number,
                    dropdownIconPosition: IconPosition.trailing,
                    decoration: InputDecoration(

                      border: InputBorder.none,
                      counterText: '',
                      fillColor: Appcolor.fieldCLRgrey,
                      filled: true,
                    ),
                    initialCountryCode: 'RO',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                roundButton2(
                    titile: 'SEND OTP',
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, RoutesName.OtpVerification);
                    }),
                SizedBox(height: screenHeight * 0.03),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: screenHeight * 0.02),
                      height: screenHeight * 0.03,
                      width: screenWidth * 0.06,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/icons/Vector.png'),
                            fit: BoxFit.contain),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.025),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: screenHeight * 0.025,
                            color: Colors.black, // Adjust text color
                          ),
                          children: [
                            TextSpan(
                              text:
                              'We respect your privacy. Your number is safe with us. Agreed with ',
                            ),
                            TextSpan(
                              text: 'Terms & ',
                              style: TextStyle(

                                color: Theme.of(context).primaryColor,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Terms tapped');
                                  // Add navigation or any other action here
                                },
                            ),
                            TextSpan(
                              text: '\nConditions',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Conditions tapped');
                                  // Add navigation or any other action here
                                },
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
