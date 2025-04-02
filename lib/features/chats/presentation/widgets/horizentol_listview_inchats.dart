import 'package:flutter/material.dart';
import 'package:messangerapp/constants/images.dart';
import 'package:messangerapp/core/styles/texts_styles.dart';

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
        Stack(children:[ Image.asset(Assets.imagesOne),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
          width: 15,
          height: 15,
          decoration: const BoxDecoration(
            color: Color(0xff5ad439),
            shape: BoxShape.circle,
          ),
        ))
        ]),
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

