import 'package:flutter/material.dart';

class TitleMessageView extends StatelessWidget {
  const TitleMessageView({Key? key, required this.title, required this.message})
      : super(key: key);

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(message)),
    );
  }
}
