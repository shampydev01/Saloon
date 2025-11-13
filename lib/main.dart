import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/feedback.dart';
import 'package:flutter_application_2/Screens/portfolio.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screens/customerHomescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), 
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child:  feedbackscreen(),
    );
  }
}
