import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextInputSend extends StatefulWidget {
  const TextInputSend({Key? key}) : super(key: key);

  @override
  State<TextInputSend> createState() => _TextInputSendState();
}

class _TextInputSendState extends State<TextInputSend> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final controllerX = TextEditingController();

    return Container(
      width: screenWidth,
      height: 100,
      padding: const EdgeInsets.all(20.0),
      color: Colors.yellow,
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 1,
        controller: controllerX,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.normal,
            fontFamily: "Custom"),
        decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: InputBorder.none,
            hintText: "Test",
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(9.0)),
                borderSide: BorderSide(color: Colors.black)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(9.0)),
                borderSide: BorderSide(color: Colors.black))),
      ),
    );
  }
}
