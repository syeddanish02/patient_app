import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_project/res/colors.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Adjust height as needed
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(

                image: DecorationImage(
                  image: AssetImage('images/backgroundRed.png'), // Change this to your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent, // Make AppBar transparent
              title: Text('Booking Screen'), // Your AppBar title
              centerTitle: true, // Center the title
            ),
          ],
        ),
      ),
      body: DefaultTabController(

          length: 2, child: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            child: TabBar(

                indicatorColor: Appcolor.red,
                indicatorSize: TabBarIndicatorSize.tab,

                tabs: [
              Text('Scheduled',style: TextStyle(fontSize: 20),),
                  Text('History',style: TextStyle(fontSize: 20),),

            ]),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(child: Text('Content for Tab 1')),
                Center(child: Text('Content for Tab 2')),
              ],
            ),
          ),

        ],
      ))

    );
  }
}
