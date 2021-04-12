import 'package:avaliacao_diego_fipe_moblize/components/add_row.dart';
import 'package:avaliacao_diego_fipe_moblize/components/bottom_bar.dart';
import 'package:avaliacao_diego_fipe_moblize/components/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

import '../components/car_list_item.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController homeController = GetIt.I<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
          title: SvgPicture.asset(
            'assets/img/logo.svg',
          ),
          actions: [
            Builder(builder: (BuildContext context) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                child: SvgPicture.asset('assets/img/drawer.svg'),
              );
            }),
          ]),
      endDrawer: CustomDrawer(),
      bottomNavigationBar: BottomBar(),
      body: Padding(
        padding: EdgeInsets.only(right: 16, left: 16, top: 16),
        child: Column(
          children: [
            AddRow(),
            SizedBox(height: 8),
            Observer(builder: (_) {
              if (homeController.loading)
                return Expanded(
                    child: Center(child: CircularProgressIndicator()));
              else
                return Expanded(
                  child: ListView.builder(
                    itemCount: homeController.carList.length,
                    itemBuilder: (context, index) {
                      return CarListItem(homeController.carList[index]);
                    },
                  ),
                );
            }),
          ],
        ),
      ),
    );
  }
}
