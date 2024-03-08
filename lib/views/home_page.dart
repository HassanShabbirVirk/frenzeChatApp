import 'package:flutter/material.dart';
import 'package:flutter_chat_app/views/chat_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frenzy App'),
      ),
      body: const ChatScreen(),
    );
  }
}
