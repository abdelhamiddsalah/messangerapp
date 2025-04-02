import 'package:flutter/material.dart';
import 'package:messangerapp/constants/images.dart';
import 'package:messangerapp/core/styles/texts_styles.dart';

class ContainerInListofones extends StatelessWidget {
  const ContainerInListofones({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.imagesPerson,),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text('Ahmed Ali', style: TextsStyles.titleStyle.copyWith(fontWeight: FontWeight.w600,fontSize: 17)),
             Text('Hello Everyone 9:00 AM', style: TextsStyles.titleStyle.copyWith(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.grey)),
          ],
        ),
        const Spacer(),
        Image.asset(Assets.imagesRead),
        const SizedBox(width: 10),
      ],
    );
  }
}