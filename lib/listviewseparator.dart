import 'package:flutter/material.dart';
import 'package:training/secondpage.dart';

class ListViewSeparatorExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView Separator"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return SecondPage(index);
                  }));
                },
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text("List Item $index"),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: index % 2 == 0 ? Colors.grey : Colors.blue,
                height: 5,
                thickness: 2.5,
              );
            },
            itemCount: 100));
  }
}
