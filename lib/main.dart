import 'package:flutter/material.dart';
import 'package:messangerapp/features/chats/presentation/screens/chats_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Messenger App',
      home:  ChatsView(),
    );
  }
}