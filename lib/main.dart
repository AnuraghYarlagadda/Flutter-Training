import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  TextEditingController numa = new TextEditingController();
  TextEditingController numb = new TextEditingController();
  int result;
  int a, b;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Column(
        children: <Widget>[
          TextField(
            controller: numa,
          ),
          TextField(
            controller: numb,
          ),
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  this.a = int.parse(numa.text);
                  this.b = int.parse(numb.text);
                  this.result = this.a + this.b;
                });
              }),
          IconButton(
              icon: Icon(Icons.minimize),
              onPressed: () {
                setState(() {
                  this.a = int.parse(numa.text);
                  this.b = int.parse(numb.text);
                  this.result = this.a - this.b;
                });
              }),
          Text("Result = $result"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Text("Bottom"),
      ),
    );
  }
}
