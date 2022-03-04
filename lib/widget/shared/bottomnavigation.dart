import 'package:flutter/material.dart';

class BottomNavigationItem extends StatefulWidget {
  void Function(int index)? onClick;
  BottomNavigationItem({Key? key, this.onClick}) : super(key: key);

  @override
  _BottomNavigationItemState createState() => _BottomNavigationItemState();
}

class _BottomNavigationItemState extends State<BottomNavigationItem> {
  final names = ["Home", "Explore", "Trending", "Save", "Bryan"];
  final icons = [
    Icons.home_outlined,
    Icons.search,
    Icons.local_fire_department_outlined,
    Icons.bookmark_border_rounded,
    null
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [Colors.white, Colors.blue.shade50])),
      margin:const EdgeInsets.only(right: 4, left: 4, bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List<Widget>.generate(icons.length, (index) {
          final color = selected == index ? Colors.indigo[900] : Colors.grey;
          return InkWell(
              onTap: () => onClickSelected(index),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    icons[index] == null
                        ? Container(
                            child: const CircleAvatar(
                            radius: 14,
                            backgroundImage:
                                AssetImage("lib/assets/images/child.jpg"),
                          ))
                        : Icon(
                            icons[index],
                            color: color,
                          ),
                    Text(
                      names[index],
                      style: TextStyle(color: color),
                    )
                  ],
                ),
              ));
        }),
      ),
    );
  }

  void onClickSelected(int index) {
    ((widget.onClick) ?? (int index) {})(index);
    setState(() {
      selected = index;
    });
    ((widget.onClick) ?? () {})(index);
  }
}
