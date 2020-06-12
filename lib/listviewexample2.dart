import 'package:flutter/material.dart';
import 'package:training/secondpage.dart';

class ListViewSeparatorListTileExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView Separator"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: ListTile(
                    title: Text("List Item"),
                    subtitle: Text("$index"),
                    leading: Icon(Icons.accessibility),
                    trailing: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return SecondPage(index);
                          }));
                        }),
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
