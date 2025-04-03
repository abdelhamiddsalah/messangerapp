import 'package:flutter/material.dart';
import 'package:messangerapp/constants/images.dart';
import 'package:messangerapp/core/styles/texts_styles.dart';
import 'package:messangerapp/core/widgets/custom_container_icon.dart';
import 'package:messangerapp/core/widgets/image_with_active.dart';

class ContainerInPeopleFeature extends StatelessWidget {
  const ContainerInPeopleFeature({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
      const ImageWithActive(),
      const SizedBox(width: 15),
      Text('Ahmed Ali', style: TextsStyles.titleStyle.copyWith(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black),),
      const Spacer(),
      const CustomContainerIcons(imagePath: Assets.imagesHand)
    ],
                  );
  }
}