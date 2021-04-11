import 'package:avaliacao_diego_fipe_moblize/model/brand_model.dart';
import 'package:avaliacao_diego_fipe_moblize/model/car_model.dart';
import 'package:avaliacao_diego_fipe_moblize/model/complete_car.dart';
import 'package:avaliacao_diego_fipe_moblize/model/model_model.dart';
import 'package:avaliacao_diego_fipe_moblize/model/year_model.dart';
import 'package:avaliacao_diego_fipe_moblize/repository/api_repository.dart';
import 'package:avaliacao_diego_fipe_moblize/repository/car_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import 'car_controller.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  _HomeController() {
    autorun((_) async {
      getHomeList();
      // if (completeCar != null) {
      //   carController.setPrice(completeCar.preco);
      // }
      if (brandList.isEmpty) {
        final newBrands = await ApiRepository().getBrandsList();
        addNewBrands(newBrands);
      }
    });
  }
  final CarController carController = GetIt.I<CarController>();
  final Car car = GetIt.I<Car>();

  @observable
  List<Brand> brandList = [];

  @action
  void addNewBrands(List<Brand> newBrands) {
    brandList.addAll(newBrands);
  }

  @action
  Future<void> getHomeList() async {
    setLoading(true);
    final newCarsList = await CarRepository().getCarList();
    addNewCars(newCarsList);

    setLoading(false);
  }

  @action
  void addNewCars(List<Car> newCars) {
    carList.clear();
    carList.addAll(newCars);
  }

  @observable
  int brandNumber;

  @observable
  List<Model> modelList;

  @action
  void setBrandNumber(String brand) {
    var brandItem = brandList.where((e) => e.fipeName == brand);
    brandNumber = brandItem.first.id;
  }

  @action
  Future<void> getModelList() async {
    List<Model> apiModelList = await ApiRepository().getModelsList(brandNumber);
    modelList = apiModelList;
  }

  @observable
  String modelId;

  @observable
  List<Year> yearList;

  @action
  void setModelNumber(String model) {
    var modelItem = modelList.where((e) => e.fipeName == model);
    modelId = modelItem.first.id;
  }

  @action
  Future<void> getYearList() async {
    List<Year> apiYearsList =
        await ApiRepository().getYearsList(brandNumber, modelId);
    yearList = apiYearsList;
  }

  @observable
  String completeCarId;

  @observable
  List<CompleteCar> completeCarList;

  @action
  void setCompleteCarNumber(String year) {
    var carItem = yearList.where((e) => e.name == year);
    completeCarId = carItem.first.fipeCodigo;
  }

  @observable
  CompleteCar completeCar;

  @action
  Future<void> getCompleteCarItem() async {
    CompleteCar apiCar = await ApiRepository()
        .getCompleteCar(brandNumber, modelId, completeCarId);
    completeCar = apiCar;
    carController.setPrice(completeCar.preco);
  }

  ObservableList<Car> carList = ObservableList<Car>();

  @observable
  bool loading = false;

  @action
  void setLoading(bool value) => loading = value;

  @action
  void refreshList() {
    modelList = null;
    yearList = null;
    completeCar = null;
    carController.brand = null;
    carController.car.brand = null;
    carController.car.model = null;
    carController.car.year = null;
    carController.car.price = null;
  }
}
