
import 'package:flutter/material.dart';

import '../theme/app_text_styels/app_text_stayls.dart';
import '../theme/colors/app_colors.dart';

class MyObjective extends StatelessWidget {
  const MyObjective({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppColors.mixedTextColor(
          Text(
            "Hi, I'm Saif, Flutter Developer",
            style: AppTextStyles.styleMedium32spWhite(context).copyWith(
                fontSize: 40
            ),
          ),
        ),
        const SizedBox(height: 15,),
        Text(
          "Flutter developer with a solid foundation in mobile application development, shaped by two years of dedicated study and hands-on experience. With one year remaining until graduation, I have completed ITI summer training and a mentorship program, gaining practical insights and imprtant skills. My experience includes successfully delivering freelance projects, reflecting my commitment to quality and innovation. I am eager to apply my expertise and passion for continuous learning in a dynamic development role.",
          style: AppTextStyles.styleMedium18spWhite(context).copyWith(
              color: const Color(0xffD6D6D6),
              fontSize: 18
          ),
        ),
      ],
    );
  }
}
