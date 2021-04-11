// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  final _$brandListAtom = Atom(name: '_HomeController.brandList');

  @override
  List<Brand> get brandList {
    _$brandListAtom.reportRead();
    return super.brandList;
  }

  @override
  set brandList(List<Brand> value) {
    _$brandListAtom.reportWrite(value, super.brandList, () {
      super.brandList = value;
    });
  }

  final _$brandNumberAtom = Atom(name: '_HomeController.brandNumber');

  @override
  int get brandNumber {
    _$brandNumberAtom.reportRead();
    return super.brandNumber;
  }

  @override
  set brandNumber(int value) {
    _$brandNumberAtom.reportWrite(value, super.brandNumber, () {
      super.brandNumber = value;
    });
  }

  final _$modelListAtom = Atom(name: '_HomeController.modelList');

  @override
  List<Model> get modelList {
    _$modelListAtom.reportRead();
    return super.modelList;
  }

  @override
  set modelList(List<Model> value) {
    _$modelListAtom.reportWrite(value, super.modelList, () {
      super.modelList = value;
    });
  }

  final _$modelIdAtom = Atom(name: '_HomeController.modelId');

  @override
  String get modelId {
    _$modelIdAtom.reportRead();
    return super.modelId;
  }

  @override
  set modelId(String value) {
    _$modelIdAtom.reportWrite(value, super.modelId, () {
      super.modelId = value;
    });
  }

  final _$yearListAtom = Atom(name: '_HomeController.yearList');

  @override
  List<Year> get yearList {
    _$yearListAtom.reportRead();
    return super.yearList;
  }

  @override
  set yearList(List<Year> value) {
    _$yearListAtom.reportWrite(value, super.yearList, () {
      super.yearList = value;
    });
  }

  final _$completeCarIdAtom = Atom(name: '_HomeController.completeCarId');

  @override
  String get completeCarId {
    _$completeCarIdAtom.reportRead();
    return super.completeCarId;
  }

  @override
  set completeCarId(String value) {
    _$completeCarIdAtom.reportWrite(value, super.completeCarId, () {
      super.completeCarId = value;
    });
  }

  final _$completeCarListAtom = Atom(name: '_HomeController.completeCarList');

  @override
  List<CompleteCar> get completeCarList {
    _$completeCarListAtom.reportRead();
    return super.completeCarList;
  }

  @override
  set completeCarList(List<CompleteCar> value) {
    _$completeCarListAtom.reportWrite(value, super.completeCarList, () {
      super.completeCarList = value;
    });
  }

  final _$completeCarAtom = Atom(name: '_HomeController.completeCar');

  @override
  CompleteCar get completeCar {
    _$completeCarAtom.reportRead();
    return super.completeCar;
  }

  @override
  set completeCar(CompleteCar value) {
    _$completeCarAtom.reportWrite(value, super.completeCar, () {
      super.completeCar = value;
    });
  }

  final _$loadingAtom = Atom(name: '_HomeController.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$getHomeListAsyncAction = AsyncAction('_HomeController.getHomeList');

  @override
  Future<void> getHomeList() {
    return _$getHomeListAsyncAction.run(() => super.getHomeList());
  }

  final _$getModelListAsyncAction = AsyncAction('_HomeController.getModelList');

  @override
  Future<void> getModelList() {
    return _$getModelListAsyncAction.run(() => super.getModelList());
  }

  final _$getYearListAsyncAction = AsyncAction('_HomeController.getYearList');

  @override
  Future<void> getYearList() {
    return _$getYearListAsyncAction.run(() => super.getYearList());
  }

  final _$getCompleteCarItemAsyncAction =
      AsyncAction('_HomeController.getCompleteCarItem');

  @override
  Future<void> getCompleteCarItem() {
    return _$getCompleteCarItemAsyncAction
        .run(() => super.getCompleteCarItem());
  }

  final _$_HomeControllerActionController =
      ActionController(name: '_HomeController');

  @override
  void addNewBrands(List<Brand> newBrands) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.addNewBrands');
    try {
      return super.addNewBrands(newBrands);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addNewCars(List<Car> newCars) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.addNewCars');
    try {
      return super.addNewCars(newCars);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBrandNumber(String brand) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.setBrandNumber');
    try {
      return super.setBrandNumber(brand);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setModelNumber(String model) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.setModelNumber');
    try {
      return super.setModelNumber(model);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCompleteCarNumber(String year) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.setCompleteCarNumber');
    try {
      return super.setCompleteCarNumber(year);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refreshList() {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.refreshList');
    try {
      return super.refreshList();
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
brandList: ${brandList},
brandNumber: ${brandNumber},
modelList: ${modelList},
modelId: ${modelId},
yearList: ${yearList},
completeCarId: ${completeCarId},
completeCarList: ${completeCarList},
completeCar: ${completeCar},
loading: ${loading}
    ''';
  }
}
