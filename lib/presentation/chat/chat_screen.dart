import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.fayerwayer.com/resizer/0FyEcFq3nFYrNde78ZzIcoUOwIU=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/FIQLKYNTXFFYJO3DS6FWJS2C4I.jpg'),
            )),
        title: const Text('Elon Musk'),
        centerTitle: false,
      ),
    );
  }
}
