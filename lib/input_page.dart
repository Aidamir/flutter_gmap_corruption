import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Input Page"),
        ),
        body: Center(
          child: Container(
            color: Colors.grey[300],
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: "Focus input and then return to map..",
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black26,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
