import 'package:flutter/material.dart';
import 'package:training/calc.dart';
import 'package:training/httpexample.dart';
import 'package:training/listviewexample.dart';
import 'package:training/listviewexample2.dart';
import 'package:training/listviewseparator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HTTPExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}
