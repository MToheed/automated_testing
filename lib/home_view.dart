import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final text = "https://flutter.dev";
  final date = DateTime.now();

  @override
  void initState() {
    super.initState();

    print(text.isUrl);
    print(date);
    print(date.dateOnly);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home View")),
    );
  }
}

extension StringExt on String {
  bool get isUrl => contains("https://") || contains("http://");
}

extension DateTimeExt on DateTime {
  DateTime get dateOnly => DateTime(year, month, day);
}
