import 'package:flutter/material.dart';
import 'package:messangerapp/constants/images.dart';
import 'package:messangerapp/core/styles/texts_styles.dart';
import 'package:messangerapp/core/widgets/image_with_active.dart';

class HorizentolListviewInChats extends StatelessWidget {
  const HorizentolListviewInChats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Column(
            children: [
              Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
              color: const Color(0xfff5f5f5),
              borderRadius: BorderRadius.circular(25),
    ),
    child: Image.asset(Assets.imagesAddicon),
                ),
              const SizedBox(height: 5),
               Text(
          'Your Story',
          style: TextsStyles.titleStyle.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
            ],
          ),
          Expanded( // حل المشكلة هنا
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      children: [
        const ImageWithActive(),
        Text(
          'Assem',
          style: TextsStyles.titleStyle.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
      ],
    ),
                );
              },
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}

