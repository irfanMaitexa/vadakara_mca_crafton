import 'package:crafton/modules/student/home/student_home_screen.dart';
import 'package:crafton/modules/student/home/student_root_screen.dart';
import 'package:crafton/modules/user/home/user_root_screen.dart';
import 'package:crafton/modules/user/payment/payment_screen.dart';
import 'package:crafton/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
      // SafeArea(child: Spash_screen()),
      //  StudentRootScreen()
      PaymentScreen()
    );
  }
}
