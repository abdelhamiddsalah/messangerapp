import 'package:flutter/material.dart';
import 'package:messangerapp/core/styles/texts_styles.dart';
import 'package:messangerapp/core/widgets/custom_container_icon.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final String profileImage;
  final String cameraIcon;
  final String writeIcon;

  const CustomAppbar({
    super.key,
    required this.title,
    required this.profileImage,
    required this.cameraIcon,
    required this.writeIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(profileImage), // صورة البروفايل متغيرة
        const SizedBox(width: 10),
        Text(title, style: TextsStyles.titleStyle), // اسم متغير
        const Spacer(),
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xfff5f5f5),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Image.asset(cameraIcon), // أيقونة الكاميرا متغيرة
            ),
            const SizedBox(width: 15),
            CustomContainerIcons(imagePath: writeIcon), // أيقونة الكتابة متغيرة
          ],
        ),
      ],
    );
  }
}
