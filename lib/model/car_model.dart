import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Car {
  String id;
  String brand;
  String model;
  String year;
  String price;

  Car({
    this.id,
    this.brand,
    this.model,
    this.year,
    this.price,
  });

  Car.fromParse(ParseObject object) {
    id = object.objectId;
    brand = object.get<String>('brand') ?? '';
    model = object.get<String>('model') ?? '';
    year = object.get<String>('year') ?? '';
    price = object.get<String>('price') ?? '';
  }
}
