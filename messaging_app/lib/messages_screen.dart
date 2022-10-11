import 'package:flutter/material.dart';
import 'package:messaging_app/text_type.dart';
import 'package:messaging_app/textinput_send.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Messaging App"),
        ),
        body: Scaffold(
          body: ListView(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight - 300,
                padding: const EdgeInsets.all(10.0),
                color: Colors.red,
                child: Column(
                  children: [
                    TextType(content: "Hola", kind: "title"),
                    TextType(kind: "subtitle", content: "Hola"),
                    TextType(kind: "text", content: "Hola")
                  ],
                ),
              ),
              TextInputSend()
            ],
          ),
        ));
  }
}
