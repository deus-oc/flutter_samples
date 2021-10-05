import 'package:flutter/material.dart';

void main() {
  //run this method to generate list view.
  runApp(ListViewDemo());
}

class ListViewDemo extends StatelessWidget {
  static const List example = [
    //hardcoded list
    "ListTile 1",
    "ListTile 2",
    "ListTile 3",
    "ListTile 4",
    "ListTile 5",
    "ListTile 6",
    "ListTile 7",
    "ListTile 8",
    "ListTile 9",
    "ListTile 10",
    "ListTile 11",
    "ListTile 12",
    "ListTile 13",
    "ListTile 14",
    "ListTile 15",
    "ListTile 16",
    "ListTile 17",
    "ListTile 18",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListViewDemo"),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(
                      example[index],
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider()
                ],
              );
            },
            itemCount: example.length,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
