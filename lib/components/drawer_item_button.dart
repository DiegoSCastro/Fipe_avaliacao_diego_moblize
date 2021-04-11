import 'package:flutter/material.dart';

class DrawerItemButton extends StatelessWidget {
  final Function onTap;
  final String title;
  final bool selected;

  DrawerItemButton({this.onTap, this.title, this.selected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16, right: 16),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: selected
                  ? Theme.of(context).accentColor
                  : Theme.of(context).backgroundColor),
        ),
      ),
    );
  }
}
