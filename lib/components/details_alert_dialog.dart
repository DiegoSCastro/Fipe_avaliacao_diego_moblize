import 'package:avaliacao_diego_fipe_moblize/model/car_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsAlertDialog extends StatelessWidget {
  final Car car;
  DetailsAlertDialog(this.car);

  @override
  Widget build(BuildContext context) {
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
                  width: 250,
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
          SizedBox(height: 13),
          Row(
            children: [
              carText('Marca', car.brand),
              SizedBox(width: 10),
              carText('Ano', car.year),
            ],
          ),
          SizedBox(height: 13),
          Row(
            children: [
              carText('Modelo', car.model),
              SizedBox(width: 10),
              carText('Valor', car.price),
            ],
          ),
        ],
      ),
      actions: [
        Container(
          width: 350,
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              side: BorderSide(),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Reservar',
              style: TextStyle(
                color: Theme.of(context).backgroundColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget carText(String text, String value) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 10),
          ),
          Text(
            value,
            maxLines: 2,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
