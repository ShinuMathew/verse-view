import 'package:flutter/material.dart';
import 'modules/home/home.dart';

void main() {
  runApp(VerseView());
}

class VerseView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : HomeWidget()
    );
  }

}