import 'package:avaliacao_diego_fipe_moblize/model/car_model.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'parse_errors.dart';

class CarRepository {
  Future<void> save(Car car) async {
    final carObject = ParseObject('car')
      ..set<String>('brand', car.brand)
      ..set<String>('model', car.model)
      ..set<String>('year', car.year)
      ..set<String>('price', car.price);

    final response = await carObject.save();
    print(response.success);
  }

  Future<List<Car>> getCarList() async {
    final queryBuilder = QueryBuilder<ParseObject>(ParseObject('car'));

    final response = await queryBuilder.query();
    if (response.success && response.results != null) {
      return response.results.map((po) => Car.fromParse(po)).toList();
    } else if (response.success && response.results == null) {
      return [];
    } else {
      return Future.error(ParseErrors.getDescription(response.error.code));
    }
  }

  Future<void> delete(Car car) async {
    final parseObject = ParseObject('car')..objectId = car.id;
    parseObject.delete();
  }
}
