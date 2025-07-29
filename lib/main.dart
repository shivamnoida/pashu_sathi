import 'package:flutter/material.dart';
import 'package:pashu_sathi/screens/auth_screen.dart/otp_screen.dart';
import 'package:pashu_sathi/screens/home_screen/bottom_navigatorbar_screen.dart';
import 'package:pashu_sathi/screens/home_screen/home_screen.dart';
import 'package:pashu_sathi/screens/auth_screen.dart/login.dart';
import 'package:pashu_sathi/screens/auth_screen.dart/signup.dart' hide LoginScreen;
import 'package:pashu_sathi/splash.dart';
// your actual screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pashu Sathi',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const BottomNavScreen(), 
        '/login':(context)=> const LoginScreen(),
        '/signup':(context)=>const SignUpScreen(),
        '/otp':(context)=>const OtpScreen(),
      },
    );
  }
}
