import 'package:flutter/cupertino.dart';   // NEW
import 'package:flutter/foundation.dart'; // NEW
import 'package:flutter/material.dart';

void main() => runApp(const FriendlyChatApp());

final ThemeData kIOSTheme = ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
      .copyWith(secondary: Colors.orangeAccent[400]),
);

String _name = 'Your Name';

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Friendly Chat',
      theme: defaultTargetPlatform == TargetPlatform.iOS // NEW
          ? kIOSTheme // NEW
          : kDefaultTheme,
      home: const ChatScreen(),
    );
  }
}

class ChatMessage extends StatelessWidget {
  const ChatMessage(
      {required this.text,
      required this.animationController, // NEW
      Key? key})
      : super(key: key);

  final String text;
  final AnimationController animationController; // NEW

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: // NEW
          CurvedAnimation(
              parent: animationController, curve: Curves.easeOut), // NEW
      axisAlignment: 0.0, // NEW
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(child: Text(_name[0])),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_name, style: Theme.of(context).textTheme.headline4),
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Text(text),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final List<ChatMessage> _messages = []; // NEW
  final _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode(); // NEW
  bool _isComposing = false; // NEW

  @override
  void dispose() {
    for (var message in _messages) {
      message.animationController.dispose();
    }
    super.dispose();
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data:
          IconThemeData(color: Theme.of(context).colorScheme.secondary), // NEW
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onChanged: (text) {
                  // NEW
                  setState(() {
                    // NEW
                    _isComposing = text.isNotEmpty; // NEW
                  }); // NEW
                }, // NEW
                onSubmitted: _isComposing ? _handleSubmitted : null,
                decoration:
                    const InputDecoration.collapsed(hintText: 'Send a message'),
                focusNode: _focusNode,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Theme.of(context).platform == TargetPlatform.iOS ? // MODIFIED
              CupertinoButton(                                          // NEW
                child: const Text('Send'),                              // NEW
                onPressed: _isComposing                                 // NEW
                    ? () =>  _handleSubmitted(_textController.text)     // NEW
                    : null,) :
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: _isComposing
                    ? () => _handleSubmitted(_textController.text)
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      // NEW
      _isComposing = false; // NEW
    }); // NEW
    ChatMessage message = ChatMessage(
      // NEW
      text: text,
      animationController: AnimationController(
        duration: const Duration(milliseconds: 700), // NEW
        vsync: this,
      ), // NEW
    ); // NEW
    setState(() {
      // NEW
      _messages.insert(0, message); // NEW
    });
    _focusNode.requestFocus();
    message.animationController.forward(); // NEW
// NEW
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Friendly Chat'),
        ),
        elevation: Theme.of(context).platform == TargetPlatform.iOS
            ? 0.0
            : 4.0, // NEW,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
              // NEW
              child: ListView.builder(
                // NEW
                padding: const EdgeInsets.all(8.0), // NEW
                reverse: true, // NEW
                itemBuilder: (_, index) => _messages[index], // NEW
                itemCount: _messages.length, // NEW
              ), // NEW
            ), // NEW
            const Divider(height: 1.0),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
              ),
              child: _buildTextComposer(),
            ),
          ],
        ),
        decoration: Theme.of(context).platform == TargetPlatform.iOS // NEW
            ? BoxDecoration(                                 // NEW
          border: Border(                              // NEW
            top: BorderSide(color: Colors.grey[200]!), // NEW
          ),                                           // NEW
        )                                              // NEW
            : null,
      ),
    );
  }
}
