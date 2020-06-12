import 'package:flutter/material.dart';

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Second Page")),
//       body: Center(
//         child: Text("Second Page"),
//       ),
//     );
//   }
// }

class SecondPage extends StatelessWidget {
  final int index;
  const SecondPage(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: Text("List Item Clicked: $index"),
      ),
    );
  }
}
