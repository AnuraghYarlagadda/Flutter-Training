import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Example"),
      ),
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return Container(
              child: Padding(
                  padding: EdgeInsets.all(15), child: Text("List Item $index")),
            );
          }),
    );
  }
}
