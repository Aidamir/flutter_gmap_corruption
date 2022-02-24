import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Input Page"),
          ),
          body: Center(
            child: Container(
              color: Colors.grey[300],
              child: const TextField(
//   Enable autofocus to see corrupted map every time.
//              autofocus: true,
              ),
            ),
          )),
    );
  }
}
