import 'package:flutter/material.dart';
import 'package:unit_testing/unit_testing/album_view.dart';
import 'package:unit_testing/widget_testing/handle_scrolling_view.dart';
import 'package:unit_testing/widget_testing/title_message_view.dart';
import 'package:unit_testing/widget_testing/todo_list_view.dart';

// void main() => runApp(const MyApp());

void main() => runApp(const TodoListView());

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
      // home: const TitleMessageView(title: "Flutter", message: "Android & iOS"),

      home: HandleScrollingView(
        items: List.generate(1000, (index) => "Item $index"),
      ),
    );
  }
}
