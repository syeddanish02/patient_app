import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_project/res/colors.dart';

class roundButton extends StatelessWidget {
  const roundButton({super.key,required this.titile,required this.onTap,this.loading=false});
  final String titile;
  final VoidCallback onTap;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return  InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: screenWidth*0.1),
        height: screenHeight*0.08,
        width: screenWidth*1,

        decoration: BoxDecoration(

          color: Appcolor.red,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Center(
          child:loading? CircularProgressIndicator(): Text(titile ,style: TextStyle(color: Appcolor.white,fontSize: screenHeight*0.02),),

        ),
      ),
    );
  }
}