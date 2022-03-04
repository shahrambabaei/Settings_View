import 'package:flutter/material.dart';

class Save extends StatelessWidget {
  const Save({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
         height: MediaQuery.of(context).size.height,
      child: const Text(
        "Save",
        style: TextStyle(fontSize: 25, color: Colors.blue),
      ),
    );
  }
}
