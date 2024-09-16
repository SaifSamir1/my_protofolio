import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/widgets/personal_infoormation.dart';
import 'package:my_portfolio/widgets/recent_experiance.dart';

class HomeDesktopLayout extends StatelessWidget {
  const HomeDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(100.w, 80.h, 60.w, 0),
      child:const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          PersonalInformation(),
          SizedBox(
            height: 20,
          ),
          RecentExperience(),
        ],
      ),
    );
  }
}



