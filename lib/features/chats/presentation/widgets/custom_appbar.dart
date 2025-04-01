import 'package:flutter/material.dart';
import 'package:messangerapp/constants/images.dart';
import 'package:messangerapp/core/styles/texts_styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.imagesProfilepicture),
        const SizedBox(width: 10),
        const Text('Chats', style: TextsStyles.titleStyle),
         const Spacer(),
    Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xff666666).withOpacity(0.2),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Image.asset(Assets.imagesCameraicon),
        ),
        const SizedBox(width: 15),
          CustomContainerIcons()
      ],
    ),
      ],
    );
  }
}

class CustomContainerIcons extends StatelessWidget {
  const CustomContainerIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: Color(0xff666666).withOpacity(0.2),
      borderRadius: BorderRadius.circular(25),
    ),
    child: Image.asset(Assets.imagesWriteicon),
                      );
  }
}