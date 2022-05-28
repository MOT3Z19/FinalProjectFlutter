import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testproject/Screens/MainScreen.dart';
import 'package:testproject/Screens/NotificationScreen.dart';
import 'package:testproject/Screens/Orders_Screen.dart';
import 'package:testproject/Screens/Setting.dart';
import 'package:testproject/Screens/detiles_Screen.dart';
import 'package:testproject/auth/Forget_Password_Screen.dart';
import 'package:testproject/auth/Sign_In.dart';
import 'package:testproject/auth/Sign_Up.dart';
import 'package:testproject/introScreen.dart';
import 'package:testproject/launchScreen.dart';

import 'Screens/Profile_Screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/LaunchScreen',
      routes: {

        '/LaunchScreen':(context)=>launchScreen(),
        '/outboarding': (context) => introScreen(),
        '/ForgetPasswordScreen': (context) => ForgetPasswordScreen(),
        '/Sign_Up':(context)=>Sign_Up(),
        '/SingIN':(context)=>SingIN(),
        '/homeScreen': (context) => mainScreen(),
        '/detilesScreen': (context) => FoodDetailsScreen(),
        '/SettingsScreen': (context) => Settings_Screen(),
        '/ProfileScreen': (context) => accountScreen(),
        '/OrdersScreen': (context) => myOrders(),
        '/NotificationSetting': (context) => Notification_Setting(),



      },
    );
  }
}
