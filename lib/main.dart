import 'package:flutter/material.dart';
import 'package:patient_project/Utils/routes.dart';
import 'package:patient_project/Utils/routes_name.dart';
import 'package:patient_project/model_view/provider.dart';
import 'package:patient_project/view/homescreens/homeNavigation.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>providerforProgressindicator()),
        ChangeNotifierProvider(create: (_)=>onboardingProvider()),
        ChangeNotifierProvider(create: (_)=>firstRdiotile()),
        ChangeNotifierProvider(create: (_)=>RdioList()),
        ChangeNotifierProvider(create: (_)=>DateProvider()),
        ChangeNotifierProvider(create: (_)=>TaskStatusProvider()),
        ChangeNotifierProvider(create: (_)=>bottomNavigationProvider()),


      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
        
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        //home: Splashscreen(),
       initialRoute: RoutesName.splash1,
        onGenerateRoute: Routes.generateRoutes,
      ),
    );
  }
}

