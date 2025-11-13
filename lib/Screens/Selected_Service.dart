import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Selected_Date.dart';
import 'package:flutter_application_2/Screens/portfolio.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Selected_Service extends StatelessWidget {
  final String imagePath;
  final String Servicename;
  final String description;
  final int imageheight;

  const Selected_Service({
    super.key,
    required this.imagePath,
    required this.Servicename,
    required this.imageheight,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // 🔹 Make whole screen scrollable
        child: Stack(
          children: [
            // 🔹 Background Image
            Image.asset(
              imagePath,
              width: double.infinity,
              height: imageheight.toDouble(),
              fit: BoxFit.cover,
            ),

            // 🔹 Back Button
            Positioned(
              top: 50,
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

            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: imageheight - 30),
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 6.r,
                      spreadRadius: 3.r,
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Servicename,
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),

                    Text(
                      description,
                      style: GoogleFonts.poppins(
                        color: Colors.black87,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 20),

                    Text(
                      "Customer rating on this service:",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: const Color(0xFFDC6803),
                            child: const Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),
                    Text(
                      '£15.30',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF01ABAB),
                        fontSize: 24.sp,
                      ),
                    ),
                    SizedBox(height: 20.h),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Selected_Date(
                                imagePath: imagePath,
                                Servicename: Servicename,
                                imageheight: imageheight,
                                description: description,
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF01ABAB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        child: Text(
                          "Book Services",
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
