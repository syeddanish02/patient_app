import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:patient_project/Utils/routes_name.dart';
import 'package:patient_project/model_view/provider.dart';
import 'package:patient_project/res/colors.dart';
import 'package:patient_project/res/component/round_Button.dart';
import 'package:patient_project/res/component/round_button2.dart';
import 'package:provider/provider.dart';


class firstTimeScreen extends StatefulWidget {
  const firstTimeScreen({super.key});

  @override
  State<firstTimeScreen> createState() => _firstTimeScreenState();
}

class _firstTimeScreenState extends State<firstTimeScreen> {

  //String? _selectedOption = 'Option 1';

  @override
  Widget build(BuildContext context) {
    final firstRdiotile radiotileSelect= Provider.of<firstRdiotile>(context);
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Verify your Number',style: TextStyle(fontSize: screenHeight*0.05,fontWeight: FontWeight.bold),),
                  SizedBox(height: screenHeight*0.06,),
                  ListTile(
                      leading: CircleAvatar(
                        radius: screenHeight*0.03,
                        backgroundImage: AssetImage('images/profilePicture.png'),

                      ),
                    title: Text('Individual'),
                    trailing: Transform.scale(
                      scale: 1.2,
                      child: Radio<String>(
                        value: 'Option 1',
                        activeColor: Appcolor.red,

                        groupValue: radiotileSelect.selectOption,
                        onChanged: (value) {
                       radiotileSelect.selection(value!);
                       print('sdfsdfs');


                        }

                      ),
                    ),
                    onTap: () {
                    radiotileSelect.selection('Option 1');}
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      radius: screenHeight*0.03,
                      backgroundImage: AssetImage('images/companyProfile.png'),

                    ),
                    title: Text('Medical Company'),
                    trailing: Transform.scale(
                      scale: 1.2,
                      child: Radio<String>(
                        value: 'Option 2',
                        activeColor: Appcolor.red,

                        groupValue: radiotileSelect.selectOption,
                        onChanged: (value) {
                          print('sdfsdfs');
                          radiotileSelect.selection(value!);

                        },
                      ),
                    ),
                    onTap: () {
                    radiotileSelect.selection('Option 2');
                    },
                  ),
                  SizedBox(height: screenHeight*0.06,),
                  roundButton2(titile: 'continue to Profile Setup', onTap: (){
                    if(radiotileSelect.selectOption=='Option 1'){
                      Navigator.pushNamed(context, RoutesName.UserProfileScreen);
                    }else if(radiotileSelect.selectOption=='Option 2'){
                      Navigator.pushNamed(context, RoutesName.CompanyProfileScreen);
                    }

                  })




                ],
              ),
            )

          ],
        )

    );
  }
}
