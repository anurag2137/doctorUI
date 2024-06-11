import 'package:flutter/material.dart';
import '../widgets/message_bubble.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> _messages = [
    {'text': 'Hello, how can I help you today?', 'isMe': false},
    {'text': 'I have been experiencing headaches lately.', 'isMe': true},
    {'text': 'How long have you been having these headaches?', 'isMe': false},
    {'text': 'For about a week now.', 'isMe': true},
    {'text': 'Do you have any other symptoms?', 'isMe': false},
    {'text': 'No, just the headaches.', 'isMe': true},
  ];

  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isEmpty) return;
    setState(() {
      _messages.add({'text': _controller.text, 'isMe': true});
    });
    _controller.clear();

    // Simulate a doctor's response after a delay
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _messages.add({
          'text': 'Thank you for the information. I recommend scheduling an appointment for a more thorough examination.',
          'isMe': false
        });
      });
    });

    // Additional dummy messages to simulate extended conversation
    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        _messages.add({
          'text': 'Please make sure to follow up with any symptoms you might experience in the next few days.',
          'isMe': false
        });
      });
    });

    Future.delayed(Duration(seconds: 6), () {
      setState(() {
        _messages.add({
          'text': 'If you need any further assistance, do not hesitate to contact us.',
          'isMe': false
        });
      });
    });

    Future.delayed(Duration(seconds: 8), () {
      setState(() {
        _messages.add({
          'text': 'Our office hours are from 9 AM to 5 PM, Monday to Friday.',
          'isMe': false
        });
      });
    });

    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        _messages.add({
          'text': 'Take care and have a great day!',
          'isMe': false
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with Dr. Smith'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (ctx, index) {
                final msg = _messages[_messages.length - 1 - index];
                return MessageBubble(
                  message: msg['text'],
                  isMe: msg['isMe'],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Type a message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
