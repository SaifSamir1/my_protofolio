
import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 260,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.51, 0.91, 1.0],
          colors: [
            Color(0xFF3BF686),
            Color(0xFF4CA9FF),
            Color(0xFF3BF686),
            Color(0xFF4CA9FF),
          ],
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(
            4.0),
        child: CircleAvatar(
          radius: 120,
          backgroundImage:
          AssetImage("assets/images/profile_image.jpg"),
        ),
      ),
    );
  }
}
