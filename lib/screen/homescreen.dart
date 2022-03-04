import 'package:flutter/material.dart';
import 'package:ss/fragments/avatar.dart';
import 'package:ss/fragments/home.dart';
import 'package:ss/fragments/save.dart';
import 'package:ss/fragments/search.dart';
import 'package:ss/fragments/trending.dart';
import 'package:ss/widget/shared/appbar.dart';
import 'package:ss/widget/shared/bottomnavigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;
  final screens = [
    const Home(),
    const Search(),
    const Trending(),
    const Save(),
    const Avatar()
  ];

  double W = 0, H = 0;
  @override
  void didChangeDependencies() {
    W = MediaQuery.of(context).size.width;
    H = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarTitle(
          text: "Profile",
        ),
        body: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.white, Colors.blue.shade50])),
                child: screens[selected])),
        bottomNavigationBar: BottomNavigationItem(
          onClick: bNBNavClick,
        ));
  }

//^create Function onClick
  void bNBNavClick(int index) {
    setState(() {
      selected = index;
    });
  }
}
