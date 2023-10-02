// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import '../List_Store/chatList/message_list.dart';
import '../Widgets/AppBar/chat_page_appbar.dart';
import 'package:intl/intl.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatPreferredsize(context),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              padding: const EdgeInsets.all(8),
              reverse: true,
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              floatingHeader: true,
              elements: messages,
              groupBy: (message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (message) => SizedBox(
                height: 40,
                child: Center(
                  child: Card(
                    color: Colors.blue[900],
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        DateFormat.yMMMd().format(message.date),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, message) => Align(
                alignment: message.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Card(
                  color: message.isSentByMe ? Colors.blue[600] : Colors.white,
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      message.text,
                      style: TextStyle(
                        color: message.isSentByMe ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(12),
                hintText: 'Type your message here...',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                prefixIcon: const Icon(
                  Icons.keyboard,
                  color: Colors.grey,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    final text = _textEditingController.text;
                    if (text.isNotEmpty) {
                      final message = Message(
                        text: text,
                        date: DateTime.now(),
                        isSentByMe: true,
                      );
                      setState(
                        () {
                          messages.add(message);
                          _textEditingController.clear();
                        },
                      );
                    }
                  },
                  icon: const Icon(
                    Icons.send_rounded,
                    color: Colors.blue,
                  ),
                ),
              ),
              controller: _textEditingController,
              onSubmitted: (text) {
                final message = Message(
                  text: text,
                  date: DateTime.now(),
                  isSentByMe: true,
                );
                setState(
                  () {
                    messages.add(message);
                    _textEditingController.clear();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
