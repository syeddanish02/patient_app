import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:patient_project/Utils/routes_name.dart';
import 'package:patient_project/model_view/provider.dart';
import 'package:patient_project/res/colors.dart';
import 'package:patient_project/res/component/round_Button.dart';
import 'package:patient_project/res/component/round_button2.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

class userProfileSetup extends StatefulWidget {
  const userProfileSetup({super.key});

  @override
  State<userProfileSetup> createState() => _userProfileSetupState();
}

class _userProfileSetupState extends State<userProfileSetup> {
  final TextEditingController nameControler =TextEditingController();
  final TextEditingController LnameControler =TextEditingController();
  final TextEditingController emailControler =TextEditingController();
  final TextEditingController dobController = TextEditingController();

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
    final RdioList rlist=Provider.of<RdioList>(context);
    final DateProvider Dprovider=Provider.of<DateProvider>(context);
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
                 Navigator.pushNamed(context, RoutesName.FirstTimeScreen);

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
                  Text('Just a few more details to personalize\n your experience.',textAlign: TextAlign.center,),
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
                        height: screenHeight*0.04,
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
                      hintText: 'First Name',
                      border: InputBorder.none
                    ),

                  ),
                ),
                      SizedBox(
                        height: screenHeight*0.03,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Appcolor.fieldCLRgrey, // Custom background color
                          borderRadius: BorderRadius.circular(6.0), // Rounded corners

                        ),
                        child: TextFormField(
                          controller: LnameControler,
                          decoration: InputDecoration(
                              hintText: 'Last Name',
                              border: InputBorder.none
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight*0.03,
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
                              hintText: 'Email',
                              border: InputBorder.none
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight*0.02,
                      ),
                      GestureDetector(
                        onTap:  () => _selectDate(context, Dprovider),
                        child: AbsorbPointer(

                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Appcolor.fieldCLRgrey, // Custom background color
                              borderRadius: BorderRadius.circular(6.0), // Rounded corners

                            ),
                            child: TextFormField(
                              controller: dobController,
                              readOnly: true,
                              decoration: InputDecoration(
                                  hintText: 'Date Of Birth',
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight*0.02,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Appcolor.fieldCLRgrey, // Custom background color
                          borderRadius: BorderRadius.circular(6.0), // Rounded corners
                        ),
                        child:  DropdownButtonFormField<String>(
                          icon: Image.asset('images/icons/dropdown.png'),
                          value: rlist.selectRadio,
                          hint: const Text('Select Gender'),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          items: ['Male', 'Female', 'Others']
                              .map((gender) => DropdownMenuItem(
                            value: gender,
                            child: Text(gender),
                          ))
                              .toList(),
                          onChanged: (value) {
                           rlist.selectedRadio(value!);
                          },
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

  Future<void> _selectDate(BuildContext context, DateProvider dateProvider) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      dateProvider.setdob(formattedDate);
      dobController.text = formattedDate; // Update the dobController
    }
  }
}
