import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
           height: MediaQuery.of(context).size.height,
        child: const CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage("lib/assets/images/child.jpg"),
        ));
  }
}
