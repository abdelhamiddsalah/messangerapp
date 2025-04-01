import 'package:flutter/material.dart';
import 'package:messangerapp/features/chats/presentation/widgets/custom_appbar.dart';
import 'package:messangerapp/features/chats/presentation/widgets/horizentol_listview_inchats.dart';
import 'package:messangerapp/features/chats/presentation/widgets/textformfield_search.dart';

class ChatsViewBody extends StatelessWidget {
  const ChatsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              CustomAppbar(),
              SizedBox(height: 20),
              TextformfieldSearch(),
              SizedBox(height: 20),
              HorizentolListviewInChats(),
            ],
          ),
        ),
      ),
    );
  }
}

