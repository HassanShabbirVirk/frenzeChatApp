import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String text;

  const ChatMessage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(child: Text('P')),
      title: const Text('Pawan'),
      subtitle: Text(text),
    );
  }
}
