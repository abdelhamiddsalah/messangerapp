import 'package:flutter/material.dart';
import 'package:messangerapp/constants/images.dart';
import 'package:messangerapp/core/styles/texts_styles.dart';
import 'package:messangerapp/core/widgets/container_in_people_feature.dart';
import 'package:messangerapp/core/widgets/custom_container_icon.dart';
import 'package:messangerapp/features/chats/presentation/widgets/custom_appbar.dart';
import 'package:messangerapp/features/chats/presentation/widgets/textformfield_search.dart';

class PeopleViewBody extends StatelessWidget {
  const PeopleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
               const CustomAppbar( title: 'People', profileImage: Assets.imagesOne, writeIcon: Assets.imagesAvataricon, cameraIcon: Assets.imagesComment,),
              const SizedBox(height: 20),
              const TextformfieldSearch(),
              const SizedBox(height: 20),
              Row(
                 children: [
                  const CustomContainerIcons(imagePath: Assets.imagesAddicon,),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your Story', style: TextsStyles.titleStyle.copyWith(fontWeight: FontWeight.w400,fontSize: 17,color: Colors.black),),
                      Text('Add to your story', style: TextsStyles.titleStyle.copyWith(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.grey),),
                    ],
                  )
                 ],
              ),
              const SizedBox(height: 20),
            ListView.builder(itemBuilder: (context, index) =>
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ContainerInPeopleFeature(),
                ),shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),itemCount: 4,),
                const SizedBox(height: 9,),
                Align(
                   alignment: Alignment.centerLeft,
                  child: Text('RECENTLY ACTIVE',style: TextsStyles.titleStyle.copyWith(fontSize: 13,
                  color: Colors.grey,fontWeight: FontWeight.w400),)),
                  const SizedBox(height: 11,),
                  const ContainerInPeopleFeature()
            ],
          ),
        )
      ),
    );
  }
}