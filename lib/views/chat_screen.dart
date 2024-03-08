import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/chat_message.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();

  List<ChatMessage> messages = <ChatMessage>[];

  void _handleText(String txt) {
    ChatMessage message = ChatMessage(
      text: txt,
    );
    messages.insert(0, message);
    _textController.clear();
    setState(() {});
  }

  Widget _textComposerWidget() {
    return Row(
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.all(10),
            // width: double.infinity,
            // color: Colors.grey,
            decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(25)),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration: const InputDecoration.collapsed(
                hintText: 'Send message',
              ),
              controller: _textController,
              onSubmitted: _handleText,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(4),
          child: IconButton(
            onPressed: () {
              _handleText(_textController.text);
              setState(() {});
            },
            icon: const Icon(
              Icons.send,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: ListView.builder(
            reverse: true,
            itemBuilder: (context, index) {
              return messages[index];
            },
            itemCount: messages.length,
          ),
        ),
        const Divider(
          height: 1,
        ),
        _textComposerWidget(),
      ],
    );
  }
}
