import 'package:flutter/material.dart';

class CustomContainerIcons extends StatelessWidget {
  final String imagePath; // متغير لتحديد الصورة

  const CustomContainerIcons({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xfff5f5f5),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Image.asset(imagePath), // استخدام الصورة المُمررة
    );
  }
}