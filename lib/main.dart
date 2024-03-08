import 'package:flutter/material.dart';
import 'package:flutter_chat_app/views/chat_screen.dart';
import 'package:flutter_chat_app/views/home_page.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Chat App',
      home: HomePage(),
    );
  }
}
