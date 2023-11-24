import 'package:chat_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(selectedColor: 1).theme(),
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
