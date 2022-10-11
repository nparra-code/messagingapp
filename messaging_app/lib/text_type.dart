import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextType extends StatelessWidget {
  String kind;
  String content;

  TextType({Key? key, required this.kind, required this.content})
      : super(key: key);

  /*Text kinds:
      title
      subtitle
      text
  */

  @override
  Widget build(BuildContext context) {
    if (kind == "title") {
      return DefaultTextStyle(
        style: const TextStyle(
            color: Colors.white,
            fontSize: 75.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Custom"),
        child: Text(content),
      );
    } else if (kind == "subtitle") {
      return DefaultTextStyle(
        style: const TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight: FontWeight.w400,
            fontFamily: "Custom"),
        child: Text(content),
      );
    } else if (kind == "text") {
      return DefaultTextStyle(
        style: const TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.normal,
            fontFamily: "Custom"),
        child: Text(content),
      );
    } else {
      return const Text("Insert a valid kind.");
    }
  }
}
