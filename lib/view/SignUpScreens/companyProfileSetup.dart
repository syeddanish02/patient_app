import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:patient_project/Utils/routes_name.dart';
import 'package:patient_project/res/colors.dart';
import 'package:patient_project/res/component/round_Button.dart';
import 'package:patient_project/res/component/round_button2.dart';
import 'package:pinput/pinput.dart';

class companyProfileSetup extends StatefulWidget {
  const companyProfileSetup({super.key});

  @override
  State<companyProfileSetup> createState() => _companyProfileSetupState();
}

class _companyProfileSetupState extends State<companyProfileSetup> {
  final TextEditingController nameControler =TextEditingController();
  final TextEditingController vatcontroler =TextEditingController();
  final TextEditingController emailControler =TextEditingController();
  final _keyform=GlobalKey<FormState>();

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
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
              child:GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();

                },
                child: Image.asset('images/icons/backbutton.png'),
              ),
            ),

            SingleChildScrollView(

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
                child: Form(
                  key: _keyform,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [

                      Text('Complete Your Profile',style: TextStyle(fontSize: screenHeight*0.04,fontWeight: FontWeight.bold),),
                      Text('Enter Medical company details to\n continue.',textAlign: TextAlign.center,),
                      SizedBox(
                        height: screenHeight*0.03,
                      ),

                      CircleAvatar(
                          backgroundColor: Appcolor.red,
                          radius: screenHeight*0.08,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // size: screenHeight * 0.05, // Adjust icon size as needed
                              // color: Appcolor.white, /
                              Image.asset('images/icons/image_icon.png'),
                              Text(
                                'upload profile picture', // Your text here
                                style: TextStyle(
                                  fontSize: 14, // Text size
                                  color: Colors.white, // Text color

                                  // Bold text
                                ),textAlign: TextAlign.center,),
                            ],
                          )
                      ),
                      SizedBox(
                        height: screenHeight*0.02,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                          child: Text('Company Name')),
                      SizedBox(
                        height: screenHeight*0.01,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Appcolor.fieldCLRgrey, // Custom background color
                          borderRadius: BorderRadius.circular(6.0), // Rounded corners

                        ),
                        child: TextFormField(
                          controller: nameControler,
                          decoration: InputDecoration(
                              hintText: 'Company Name',
                              border: InputBorder.none


                          ),

                        ),
                      ),
                      SizedBox(
                        height: screenHeight*0.02,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text('VAT Number')),

                      SizedBox(
                        height: screenHeight*0.01,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Appcolor.fieldCLRgrey, // Custom background color
                          borderRadius: BorderRadius.circular(6.0), // Rounded corners

                        ),
                        child: TextFormField(
                          controller: vatcontroler,
                          decoration: InputDecoration(
                              hintText: 'Vat Number(CUI)',
                              border: InputBorder.none


                          ),

                        ),
                      ),
                      SizedBox(
                        height: screenHeight*0.02,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Physical Address')),


                      SizedBox(
                        height: screenHeight*0.01,
                      ),
                      IntlPhoneField(
                        keyboardType: TextInputType.number,
                        dropdownIconPosition:IconPosition.trailing,



                        decoration: InputDecoration(

                          counterText: '',
                          fillColor:Appcolor.fieldCLRgrey,
                          filled: true,
                          border: InputBorder.none




                        ),
                        initialCountryCode: 'RO',
                        onChanged: (phone) {
                          print(phone.completeNumber);

                        },


                      ),
                      SizedBox(
                        height: screenHeight*0.02,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Email Adress')),
                      SizedBox(
                        height: screenHeight*0.01,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Appcolor.fieldCLRgrey, // Custom background color
                          borderRadius: BorderRadius.circular(6.0), // Rounded corners

                        ),
                        child: TextFormField(
                          controller: emailControler,
                          decoration: InputDecoration(
                              hintText: 'Email Adress',
                              border: InputBorder.none


                          ),

                        ),
                      ),

                      SizedBox(
                        height: screenHeight*0.02,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child:   Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: roundButton2(titile: 'Save & Continue', onTap: (){
                            Navigator.pushNamed(context, RoutesName.setupScreen);

                          }),
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),


          ],
        )

    );
  }
}
