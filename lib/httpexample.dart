import 'dart:convert';

import "package:flutter/material.dart";
import 'package:http/http.dart' as http;
import 'package:training/DataModels/names.dart';

class HTTPExample extends StatefulWidget {
  @override
  _HTTPExampleState createState() => _HTTPExampleState();
}

class _HTTPExampleState extends State<HTTPExample> {
  String _text = "Http Example";
  List<Names> list = [];
  void fetchData() async {
    final response =
        await http.get("http://jsonplaceholder.typicode.com/posts");
    print(response.runtimeType);
    final List<Names> parsedData = jsonDecode(response.body)
        .map<Names>((json) => Names.fromJSON(json))
        .toList();
    print(parsedData[0].runtimeType);
    print(parsedData.length);
    setState(() {
      this.list.addAll(parsedData);
    });
  }

  @override
  void initState() {
    super.initState();
    print("INIT");
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    print("Flutter");
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP Example"),
      ),
      body: ListView.separated(
        itemCount: this.list.length,
        itemBuilder: (context, index) {
          final name = this.list[index];
          print(name.runtimeType);
          return ListTile(
            title: Text(name.title),
            subtitle: Text("Id :${name.id} UserId :${name.userId}"),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.blue,
            thickness: 3,
          );
        },
      ),
    );
  }
}
