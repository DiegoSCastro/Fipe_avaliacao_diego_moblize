import 'package:flutter/material.dart';

import 'drawer_item_button.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Drawer(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Theme.of(context).primaryColorDark
              // image: DecorationImage(
              //     image: AssetImage('assets/img/drawerbackground.jpg'),
              //     fit: BoxFit.cover)
              ),
          child: SafeArea(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 30),
                  DrawerItemButton(
                    title: 'Homepage',
                    onTap: () {},
                    selected: true,
                  ),
                  DrawerItemButton(
                    title: 'Menu item 2',
                    onTap: () {},
                    selected: false,
                  ),
                  DrawerItemButton(
                    title: 'Menu item 3',
                    onTap: () {},
                    selected: false,
                  ),
                  DrawerItemButton(
                    title: 'Menu item 4',
                    onTap: () {},
                    selected: false,
                  ),
                  DrawerItemButton(
                    title: 'Menu item 5',
                    onTap: () {},
                    selected: false,
                  ),
                  DrawerItemButton(
                    title: 'Menu item 6',
                    onTap: () {},
                    selected: false,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
