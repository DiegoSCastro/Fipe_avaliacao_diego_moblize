import 'package:avaliacao_diego_fipe_moblize/components/details_alert_dialog.dart';
import 'package:avaliacao_diego_fipe_moblize/model/car_model.dart';
import 'package:avaliacao_diego_fipe_moblize/repository/car_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'home_controller.dart';

class CarListItem extends StatelessWidget {
  final Car car;
  CarListItem(this.car);

  final List<MenuChoice> choices = [
    MenuChoice(index: 0, title: 'View', iconData: Icons.visibility),
    MenuChoice(index: 1, title: 'Edit', iconData: Icons.edit),
    MenuChoice(index: 2, title: 'Delete', iconData: Icons.delete),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(
            color: Theme.of(context).primaryColor,
            height: 0.5,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/img/car.png',
                  height: 48,
                  width: 48,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 8),
                  height: 48,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(
                        child: Text(
                          '${car.brand} - ${car.model}',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Text(
                        car.year,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).primaryColorLight,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return DetailsAlertDialog(car);
                              });
                        },
                        child: Text(
                          'View More',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  PopupMenuButton<MenuChoice>(
                    onSelected: (choice) {
                      // final HomeController homeController =
                      //     GetIt.I<HomeController>();
                      switch (choice.index) {
                        case 0:
                          viewItem(context, car);
                          break;
                        case 1:
                          editItem(context);
                          break;
                        case 2:
                          deleteItem(context, car);
                          // homeController.getHomeList();

                          break;
                      }
                    },
                    icon: Icon(
                      Icons.more_vert,
                      size: 20,
                      color: Theme.of(context).primaryColor,
                    ),
                    itemBuilder: (_) {
                      return choices
                          .map(
                            (choice) => PopupMenuItem<MenuChoice>(
                              value: choice,
                              child: Row(
                                children: [
                                  Icon(
                                    choice.iconData,
                                    color: Theme.of(context).primaryColorLight,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    choice.title,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Theme.of(context).primaryColorLight,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                          .toList();
                    },
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

void viewItem(BuildContext context, Car car) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return DetailsAlertDialog(car);
      });
}

void editItem(BuildContext context) {}

void deleteItem(BuildContext context, Car car) async {
  final HomeController homeController = GetIt.I<HomeController>();
  await CarRepository()
      .delete(car)
      .then((_) => homeController.getHomeList())
      .timeout(Duration(milliseconds: 1000))
      .then((_) => homeController.getHomeList());
}

class MenuChoice {
  final int index;
  final String title;
  final IconData iconData;
  MenuChoice({this.index, this.title, this.iconData});
}
