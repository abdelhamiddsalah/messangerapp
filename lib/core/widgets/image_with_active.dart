import 'package:flutter/material.dart';
import 'package:messangerapp/constants/images.dart';

class ImageWithActive extends StatelessWidget {
  const ImageWithActive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children:[ Image.asset(Assets.imagesOne),
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
    ]);
  }
}

