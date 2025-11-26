import 'package:flutter/material.dart';
import 'package:flutter_application_2/ClientScreens/Selected_Service.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class portfolio extends StatefulWidget {
  const portfolio({super.key});

  @override
  State<portfolio> createState() => _portfolioState();
}

class _portfolioState extends State<portfolio> {
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
                  Positioned(
                    top: 35,
                    left: 15,
                    child: CircleAvatar(
                      radius: 13,
                      backgroundColor: Color(0xFF01ABAB),
                      child: IconButton(
                        icon: Center(
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 10,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
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
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Portfolio',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'View our portfolio so you can get the better idea of their services.',
                                style: GoogleFonts.poppins(
                                  fontSize: 13.sp,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
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
                                  child: Image.asset(
                                    'Assets/Images/search.png',
                                    height: 22.h,
                                    width: 22.w,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Search",
                                      hintStyle: GoogleFonts.poppins(
                                        color: Colors.grey.shade500,
                                        fontSize: 14.sp,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    _buildSaloonCard(
                      'Hair Styling MakeOver',
                      'Assets/Images/whitebitch.jpg',
                      'Transform your look with expert styling that defines confidence.',
                      246,
                      395,
                    ),
                    SizedBox(height: 3.h),
                    _buildSaloonCard(
                      'Shine & Smooth Hair Polish',
                      'Assets/Images/wash.jpg',
                      'Experience radiant shine and silky smooth hair with every touch.',
                      111,
                      257,
                    ),
                    SizedBox(height: 3.h),
                    _buildSaloonCard(
                      'Scalp and HairSpa',
                      'Assets/Images/wet.jpg',
                      'Revitalize your scalp and nourish hair with deep spa care.',
                      246,
                      395,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSaloonCard(
                      'Elegant Beard Styling',
                      'Assets/Images/RRRR.jpg',
                      'Style your beard with our specialized that transform look.',
                      111,
                      257,
                    ),
                    SizedBox(height: 3.h),
                    _buildSaloonCard(
                      'Radiant Glow Face Massage',
                      'Assets/Images/face.jpg',
                      'Experience radiant glow with our soothing, rejuvenating face massage therapy.',
                      246,
                      395,
                    ),
                    SizedBox(height: 3.h),
                    _buildSaloonCard(
                      'Elegant Nail Art Dsign',
                      'Assets/Images/polish.jpg',
                      'Stylish nail art that defines beauty, creativity, and confident self-expression.',
                      111,
                      257,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSaloonCard(
    String Servicename,
    String imagePath,
    String description,
    int height,
    int mainheight,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Selected_Service(
              imagePath: imagePath,
              Servicename: Servicename,
              description: description,
              imageheight: height * 2,
            ),
          ),
        );
      },
      child: Container(
        height: mainheight.h,
        width: 176.w,
        padding: EdgeInsets.all(5.r),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: height.h,
                    width: 176.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              Servicename,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              description,
              style: GoogleFonts.poppins(
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFDC6803),
                  radius: 8.r,
                  child: Icon(Icons.star, color: Colors.white, size: 9),
                ),
                SizedBox(width: 2.w),
                CircleAvatar(
                  backgroundColor: Color(0xFFDC6803),
                  radius: 8.r,
                  child: Icon(Icons.star, color: Colors.white, size: 9),
                ),
                SizedBox(width: 2.w),
                CircleAvatar(
                  backgroundColor: Color(0xFFDC6803),
                  radius: 8.r,
                  child: Icon(Icons.star, color: Colors.white, size: 9),
                ),
                SizedBox(width: 2.w),
                CircleAvatar(
                  backgroundColor: Color(0xFFDC6803),
                  radius: 8.r,
                  child: Icon(Icons.star, color: Colors.white, size: 9),
                ),
                SizedBox(width: 2.w),
                CircleAvatar(
                  backgroundColor: Color(0xFFDC6803),
                  radius: 8.r,
                  child: Icon(Icons.star, color: Colors.white, size: 9),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
