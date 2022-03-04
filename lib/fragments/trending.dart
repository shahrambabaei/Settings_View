import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      child: const Text(
        "Trending",
        style: TextStyle(fontSize: 25, color: Colors.blue),
      ),
    );
  }
}
