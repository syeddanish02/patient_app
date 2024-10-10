import 'package:flutter/cupertino.dart';

class OnboadingscreenComponents extends StatelessWidget {
  const OnboadingscreenComponents({super.key,required this.title,required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
       final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(

      children: [
        Container(
          height: screenHeight*0.7,
          width: screenWidth,
          decoration: BoxDecoration(
              image: DecorationImage(image: (AssetImage('images/background.png')),fit:BoxFit.cover)
          ),
          child: Center(
            child: Container(
              height: screenHeight*0.14,
              width: screenWidth*1,
              decoration: BoxDecoration(
                image: DecorationImage(image: (AssetImage('images/white_logo.png'))),
              ),
            ),
          ),
        ),
        // SizedBox(height: screenHeight*0.2,),
        Text(title,style: TextStyle(
            fontStyle:FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 20 ,

        ),
          textAlign: TextAlign.center,
        ),
        //SizedBox(height: screenHeight*0.04,),
        Text(description,
          style: TextStyle(
            fontStyle:FontStyle.italic,
            fontWeight: FontWeight.bold,


          ),
          textAlign: TextAlign.center,



        ),



      ],
    );

  }
}
