import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      child: const Text(
        "Search",
        style: TextStyle(fontSize: 25, color: Colors.blue),
      ),
    );
  }
}
