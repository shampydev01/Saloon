import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Selected_Date.dart';
import 'package:flutter_application_2/Screens/portfolio.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class feedbackscreen extends StatelessWidget {
  const feedbackscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01ABAB),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 400.h,
          child: Stack(
            children: [
              Positioned(
                child: Image.asset(
                  'Assets/Images/Eclipse2.png',
                  width: double.infinity,
                  // height: imageheight.toDouble(),
                  fit: BoxFit.cover,
                ),
              ),
          
              Positioned(
                top: 180,
                left: 16,
                child: CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.white.withOpacity(0.8),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                      size: 10,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Positioned(
                top: 230,
                left: 60,
                child: Text(
                  'Feed Back',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               Positioned(
                top: 260,
                left: 60,
                child: Text(
                  'Give your honest feedback about our service.',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    
                  ),
                ),
              ),
          
          
          
             
            ],
          ),
        ),
      ),
    );
  }
}
