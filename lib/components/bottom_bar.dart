import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 60,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/img/c.svg',
            width: 21,
            color: Theme.of(context).accentColor,
          ),
          SizedBox(width: 13.5),
          Text(
            '2020. All rights reserved to Mobcar.',
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
