

import 'package:flutter/material.dart';

import '../theme/app_text_styels/app_text_stayls.dart';

class RecentExperience extends StatelessWidget {
  const RecentExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Resent Experience",
          style: AppTextStyles.styleMedium32spWhite(context),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 556,
              height: 282,
              decoration: ShapeDecoration(
                color: const Color(0xFF323443),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(width: 20,),
            Container(
              width: 556,
              height: 282,
              decoration: ShapeDecoration(
                color: const Color(0xFF323443),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
