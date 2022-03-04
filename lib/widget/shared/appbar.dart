import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final Function()? onbackClick;
  final Function()? onEditeClick;
  const AppBarTitle(
      {Key? key, this.text = "Screen", this.onbackClick, this.onEditeClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [Colors.white, Colors.blue.shade50])),
      height: MediaQuery.of(context).size.height * .2,
      margin: const EdgeInsets.only(top: 24),
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: InkWell(
                  onTap: onbackClick,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Icon(
                      Icons.arrow_back,
                    ),
                  ))),
          Expanded(
              flex: 5,
              child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    text,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ))),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.edit,
                  size: 20,
                ),
                Container(
                  width: 5,
                ),
                InkWell(
                    onTap: onEditeClick,
                    child: Container(
                        alignment: Alignment.centerRight,
                        child: const Text(
                          "Edit",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )))
              ],
            ),
          )
          // )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(1, 48);
}
