import 'package:avaliacao_diego_fipe_moblize/model/car_model.dart';
import 'package:avaliacao_diego_fipe_moblize/repository/car_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'car_controller.g.dart';

class CarController = _CarController with _$CarController;

abstract class _CarController with Store {
  _CarController() {
    brand = car.brand;
    model = car.model;
    year = car.year;
    price = car.price;
  }

  final Car car = GetIt.I<Car>();

  ObservableList carList = ObservableList();

  void setCarData() {
    car.brand = brand;
    car.model = model;
    car.year = year;
    car.price = price;
  }

  @observable
  String brand;

  @observable
  String model;

  @observable
  String year;

  @observable
  String price;

  @action
  void setBrand(String value) => brand = value;
  @action
  void setModel(String value) => model = value;
  @action
  void setYear(String value) => year = value;
  @action
  void setPrice(String value) => price = value;

  @action
  Future<void> send() async {
    await CarRepository().save(car);
  }
}
