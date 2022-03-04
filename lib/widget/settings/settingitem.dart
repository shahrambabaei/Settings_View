import 'package:flutter/material.dart';

class SettingItem extends StatefulWidget {
  final Color? avatarColor;
  final String title, subject;
  final int badge;
  final Function()? onClick;
  final IconData icon;

  const SettingItem({
    Key? key,
    this.avatarColor,
    required this.title,
    required this.subject,
    required this.icon,
    this.badge = 0,
    this.onClick,
  }) : super(key: key);

  @override
  _SettingItemState createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: Container(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  backgroundColor: widget.avatarColor,
                  radius: 21,
                  child: Icon(
                    widget.icon,
                    color: Colors.black,
                    size: 31,
                  ),
                ))),
        // Container(width: 3,),
        Expanded(
            flex: 6,
            child: InkWell(
                onTap: widget.onClick,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.subject,
                          // style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        widget.badge > 0
                            ? CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.red,
                                child: Text("${widget.badge}"),
                              )
                            : Container(),
                        const SizedBox(
                          width: 4,
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    )
                  ],
                )))
      ],
    );
  }
}
