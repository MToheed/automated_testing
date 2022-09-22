import 'package:flutter/material.dart';

class HandleScrollingView extends StatelessWidget {
  const HandleScrollingView({Key? key, required this.items}) : super(key: key);

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("String List")),
        body: ListView.builder(
          key: const Key('long_list'),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Text("Item_$index", key: Key("Item_$index"));
          },
        ),
      ),
    );
  }
}
