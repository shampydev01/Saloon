import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Request_Sent.dart';
import 'package:flutter_application_2/Screens/Selected_Date.dart';
import 'package:flutter_application_2/Screens/portfolio.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Time_Slots extends StatelessWidget {
  final String imagePath;
  final String Servicename;
  final String description;
  final int imageheight;

  const Time_Slots({
    super.key,
    required this.imagePath,
    required this.Servicename,
    required this.imageheight,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    int? selectedtime;
    List<String> timeSlots = [
      "10:00 AM",
      "10:30 AM",
      "11:00 AM",
      "11:30 AM",
      "12:00 PM",
      "12:30 PM",
      "01:00 PM",
      "01:30 PM",
      "02:00 PM",
      "02:30 PM",
      "03:00 PM",
      "03:30 PM",
      "04:00 PM",
      "04:30 PM",
      "05:00 PM",
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: imageheight.toDouble(),
              fit: BoxFit.cover,
            ),

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
                      'Available Time Slots',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: List.generate(timeSlots.length, (index) {
                        final time = timeSlots[index];
                        final isSelected = selectedtime == time;

                        return GestureDetector(
                          onTap: () {
                            // setState(() {
                            //   selectedTime = time; // store selected time
                            // });
                          },
                          child: Container(
                            width: 100, // slightly wider for time text
                            height: 48,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? const Color(0xFF01ABAB)
                                  : Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Text(
                              time,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: isSelected
                                    ? Colors.white
                                    : Colors.black87,
                                fontWeight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.w500,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 15.h),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RequestSent(
                                imagePath: imagePath,
                                serviceName: Servicename,
                                imageHeight: imageheight,
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
                          "Next",
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
