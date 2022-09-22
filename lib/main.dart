import 'package:flutter/material.dart';
import 'package:unit_testing/unit_testing/album_view.dart';
import 'package:unit_testing/widget_testing/title_message_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const AlbumView(),

      home: const TitleMessageView(title: "Flutter", message: "Android & iOS"),
    );
  }
}
