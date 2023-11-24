import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chat App'),
        ),
        body: Center(
          child:
              FilledButton(onPressed: () {}, child: const Text('Presioname')),
        ),
      ),
    );
  }
}
