import 'package:flutter/material.dart';
import 'package:patient_project/Utils/routes_name.dart';
import 'package:patient_project/model_view/provider.dart';
import 'package:patient_project/view/bookingScreen/Booking.dart';
import 'package:patient_project/view/homescreens/homescreen.dart';
import 'package:provider/provider.dart';

class Homenavigation extends StatelessWidget {
  const Homenavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<bottomNavigationProvider>(builder:(context, Provider,child){
        return IndexedStack(
          index: Provider.currentIndex,
          children: [
            Homescreen(),
           BookingScreen(),
            Center(
              child: Text('asim'),
            )
            
          ],
        );
      }),
      bottomNavigationBar: Consumer<bottomNavigationProvider>(builder: (contex,provider,child){
        return BottomNavigationBar(
          currentIndex: provider.currentIndex,
            onTap: (index){
            provider.setIndex(index);

            },
            items: [
              BottomNavigationBarItem(

                label: 'home',
                  icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: 'Booking',
                  icon: Icon(Icons.ac_unit)),
              BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(Icons.favorite)),

              
            ]);

      }),

    );
  }
}
