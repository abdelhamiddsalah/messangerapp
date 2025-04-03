import 'package:flutter/material.dart';
import 'package:messangerapp/constants/images.dart';
import 'package:messangerapp/features/chats/presentation/widgets/container_in_listofones.dart';
import 'package:messangerapp/features/chats/presentation/widgets/custom_appbar.dart';
import 'package:messangerapp/features/chats/presentation/widgets/horizentol_listview_inchats.dart';
import 'package:messangerapp/features/chats/presentation/widgets/textformfield_search.dart';

class ChatsViewBody extends StatelessWidget {
  const ChatsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                 const CustomAppbar(title: 'Chats', profileImage: Assets.imagesPerson, writeIcon: Assets.imagesWriteicon, cameraIcon: Assets.imagesCameraicon),
                const SizedBox(height: 20),
                const TextformfieldSearch(),
                const SizedBox(height: 20),
                const HorizentolListviewInChats(),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(), // تعطيل الـ scroll في الـ ListView
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: ContainerInListofones(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
