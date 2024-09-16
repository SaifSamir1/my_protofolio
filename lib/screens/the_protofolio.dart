

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/theme/colors/app_colors.dart';
import '../widgets/layout_builder.dart';
import '../widgets/protofolio_page.dart';

class ThePortfolio extends StatelessWidget {
  const ThePortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.DEFAULT_COLOR,
      body: AdaptiveLayout(
        mobileLayout: (context) => buildMobileLayout(),
        tabletLayout: (context) => buildTabletLayout(),
        desktopLayout: (context) => const PortfolioPage(),
      ),
    );
  }

  Widget buildMobileLayout() {
    return Center(
      child: Text(
        'Mobile Layout',
        style: TextStyle(fontSize: 50.sp),  // Responsive text size
      ),
    );
  }

  Widget buildTabletLayout() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Text(
            'Tablet Layout',
            style: TextStyle(fontSize: 30.sp),  // Responsive text size
          ),
          // Add more widgets as needed
        ],
      ),
    );
  }

}