import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/Saloon_Details.dart';
import 'package:flutter_application_2/stateclass/Service_Row.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Customerhomescreen extends StatefulWidget {
  const Customerhomescreen({super.key});

  @override
  State<Customerhomescreen> createState() => _CustomerhomescreenState();
}

class _CustomerhomescreenState extends State<Customerhomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250.h,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Image.asset(
                      'Assets/Images/Eclipse.png',

                      height: 250.h,

                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      top: 80.h,
                      left: 20.w,
                      right: 20.w,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30.r,
                          child: Icon(
                            Icons.person,
                            size: 35.sp,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi, Abdullah Khan',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Welcome, Customer',
                                style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(
                                'Lahore, Pakistan',
                                style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image(
                          image: AssetImage('Assets/Images/MENU.png'),
                          height: 24.h,
                          width: 24.w,
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    top: 170.h,
                    left: 20.w,
                    right: 20.w,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 48.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(color: Colors.grey.shade400),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.w,
                                  ),
                                  child: Image(
                                    image: AssetImage(
                                      'Assets/Images/search.png',
                                    ),
                                    height: 22.h,
                                    width: 22.w,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Search Salon and Services",
                                      hintStyle: GoogleFonts.poppins(
                                        color: Colors.grey.shade500,
                                        fontSize: 14,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Container(
                          height: 46.h,
                          width: 46.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(color: Colors.grey.shade400),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Image.asset('Assets/Images/filter.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Row(
                children: [
                  Text(
                    'Top Services For You',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Service_Row(),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Row(
                children: [
                  Text(
                    'Top Saloons For You',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSaloonCard(
                  'Crown and Canvas Saloon :',
                  'Assets/Images/unsplash.jpg',
                  'Downtown Lahore, at 25-G Main Boulevard, Gulberg II',
                  'Every visit is more than just a beauty appointment — its a creative experience designed to bring out your true style. Our expert stylists treat every strand like a stroke on a canvas, blending precision, color, and care to craft your perfect look.',
                  '5 KM away from your location',
                ),
                SizedBox(height: 10.h),
                _buildSaloonCard(
                  'Neil Brothers Hair Saloon :',
                  'Assets/Images/STRAIGHT.jpg',
                  'Uptown Lahore, at 47-B Liberty Avenue, Gulberg III',
                  'Each visit is more than just a salon session — its a personalized journey crafted to reveal your unique charm. Our skilled artists shape every detail with passion and finesse, blending texture, tone, and technique to design your signature style.',
                  '6 KM away from your location',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSaloonCard(
    String title,
    String image,
    String locationsaloon,
    String descriptionsaloon,
    String distance,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SalonDetailScreen(
              imagePath: image,
              salonName: title,
              location: locationsaloon,
              description: descriptionsaloon,
            ),
          ),
        );
      },
      child: Container(
        height: 436.h,
        width: 350.w,
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: Colors.grey.shade400),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 6.r,
              spreadRadius: 3.r,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: 215.h,
                    width: 322.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8.h,
                    left: 8.w,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Text(
                        distance,
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              descriptionsaloon,
              style: GoogleFonts.poppins(
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Image(image: AssetImage('Assets/Images/xx.png')),
                SizedBox(width: 5.w),
                Expanded(
                  child: Text(
                    locationsaloon,
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
