import 'package:flutter/material.dart';

class DoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Done"),
      ),
      body: Column(
        children: [
          Text("Enjoy your coffee"),
        ],
      ),
    );
  }
}
