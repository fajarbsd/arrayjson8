import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "List View",
    home: Home(
      data: List<String>.generate(300, (i) => "Ini adalah data ke $i"),
    ),
  ));
}

class Home extends StatelessWidget {
  final List<String> data;
  const Home({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.widgets),
              title: Text("${data[index]}"),
            );
          },
        ),
      ),
    );
  }
}
