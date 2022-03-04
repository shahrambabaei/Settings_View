import 'package:flutter/material.dart';
import 'package:ss/widget/settings/settingitem.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double W = 0, H = 0;
  @override
  void didChangeDependencies() {
    W = MediaQuery.of(context).size.width;
    H = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.only(left: 23, right: 23, top: H * .06),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("lib/assets/images/child.jpg"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: H * .03, bottom: H * .014),
                alignment: Alignment.center,
                child: const Text(
                  "Shahram Babaei",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Designer",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Container(width: 5),
                      Text("@OfSpace",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.purple.shade600,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Container(
                  width: W,
                  height: H * .2,
                  margin: EdgeInsets.only(top: H * .05),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("lib/assets/images/topic.jpg",
                        fit: BoxFit.cover),
                  )),
              Container(
                margin: EdgeInsets.only(top: H * .04),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Account Settings",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: H * .02),
                height: H * .08,
                child: SettingItem(
                  icon: Icons.person_outline,
                  avatarColor: Colors.purple.shade100,
                  title: "Your Profile",
                  subject: "Edit and view your profile",
                  badge: 1,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: H * .03),
                child: const Text("AppSetting",
                    style:
                        TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.only(top: H * .02),
                height: H * .08,
                child: SettingItem(
                    title: "Display Preference",
                    subject: "Adjust your display",
                    avatarColor: Colors.green.shade100,
                    icon: Icons.light_mode_outlined),
              ),
              Container(
                margin: EdgeInsets.only(top: H * .02, bottom: H * .02),
                height: H * .08,
                child: SettingItem(
                    title: "Notification",
                    subject: "on/Off your notification",
                    avatarColor: Colors.orange.shade100,
                    icon: Icons.notifications_none_rounded),
              )
            ],
          )),
    );
  }
}
