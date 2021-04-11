import 'package:avaliacao_diego_fipe_moblize/home_screen/car_controller.dart';
import 'package:avaliacao_diego_fipe_moblize/home_screen/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

import 'custom_dropdown_button.dart';

class AddAlertDialog extends StatefulWidget {
  @override
  _AddAlertDialogState createState() => _AddAlertDialogState();
}

class _AddAlertDialogState extends State<AddAlertDialog> {
  final HomeController homeController = GetIt.I<HomeController>();

  final CarController carController = GetIt.I<CarController>();

  final List testList = ['item1', 'item2', 'item3'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24.0))),
      title: Row(
        children: [
          SvgPicture.asset('assets/img/car_icon.svg'),
          SizedBox(width: 9.5),
          Expanded(
            child: Text(
              'Title',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          InkWell(
            onTap: Navigator.of(context).pop,
            child: Text('X'),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 120,
                  width: 310,
                  child: Image.asset(
                    'assets/img/car.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Theme.of(context).hintColor,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Theme.of(context).hintColor,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Theme.of(context).hintColor,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Theme.of(context).hintColor,
                      size: 20,
                    ),
                    Icon(
                      Icons.star_outline,
                      color: Theme.of(context).hintColor,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          CustomDropdownButton(
            list: homeController.brandList.map((item) {
              return DropdownMenuItem<String>(
                value: item.fipeName,
                child: SizedBox(
                    width: size.width * 0.5, child: Text(item.fipeName)),
              );
            }).toList(),
            hint: 'Marca',
            value: carController.brand,
            onChanged: (value) {
              homeController.yearList = null;
              homeController.modelList = null;
              carController.setYear(null);
              carController.setPrice(null);
              carController.setModel(null);
              homeController.completeCar = null;

              carController.setBrand(value);
              homeController.setBrandNumber(value);

              homeController.getModelList();
            },
          ),
          Observer(builder: (_) {
            return SizedBox(height: homeController.modelList != null ? 16 : 0);
          }),
          Observer(builder: (_) {
            return homeController.modelList != null
                ? CustomDropdownButton(
                    list: homeController.modelList.map((item) {
                      return DropdownMenuItem<String>(
                        value: item.fipeName,
                        child: SizedBox(
                            width: size.width * 0.5,
                            child: Text(item.fipeName)),
                      );
                    }).toList(),
                    hint: 'Modelo',
                    value: carController.model,
                    onChanged: (value) {
                      homeController.yearList = null;
                      carController.setYear(null);
                      carController.setPrice(null);
                      homeController.completeCar = null;

                      carController.setModel(value);
                      homeController.setModelNumber(value);
                      homeController.getYearList();
                    },
                  )
                : Container();
          }),
          Observer(builder: (_) {
            return SizedBox(height: homeController.yearList != null ? 16 : 0);
          }),
          Observer(builder: (_) {
            return homeController.yearList != null
                ? CustomDropdownButton(
                    list: homeController.yearList.map((item) {
                      return DropdownMenuItem<String>(
                        value: item.name,
                        child: SizedBox(
                            width: size.width * 0.5, child: Text(item.name)),
                      );
                    }).toList(),
                    hint: 'Ano - Combustível',
                    value: carController.year,
                    onChanged: (value) {
                      carController.setYear(value);
                      homeController.setCompleteCarNumber(value);
                      homeController.getCompleteCarItem();
                    },
                  )
                : Container();
          }),
          Observer(builder: (_) {
            return SizedBox(
                height: homeController.completeCar != null ? 16 : 0);
          }),
          Observer(builder: (_) {
            return Text(homeController.completeCar != null
                ? '${homeController.completeCar.preco} - ${homeController.completeCar.referencia}'
                : '');
          })
        ],
      ),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            side: BorderSide(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Cancelar',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            side: BorderSide(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            if (homeController.completeCar != null) {
              carController.setCarData();
              carController
                  .send()
                  .then((value) => Navigator.of(context).pop())
                  .then((value) => homeController.getHomeList());
            }
            carController.setPrice(homeController.completeCar.preco);
            homeController.refreshList();
          },
          child: Text(
            'Salvar',
            style: TextStyle(
              color: Theme.of(context).backgroundColor,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
