// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarController on _CarController, Store {
  final _$brandAtom = Atom(name: '_CarController.brand');

  @override
  String get brand {
    _$brandAtom.reportRead();
    return super.brand;
  }

  @override
  set brand(String value) {
    _$brandAtom.reportWrite(value, super.brand, () {
      super.brand = value;
    });
  }

  final _$modelAtom = Atom(name: '_CarController.model');

  @override
  String get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(String value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  final _$yearAtom = Atom(name: '_CarController.year');

  @override
  String get year {
    _$yearAtom.reportRead();
    return super.year;
  }

  @override
  set year(String value) {
    _$yearAtom.reportWrite(value, super.year, () {
      super.year = value;
    });
  }

  final _$priceAtom = Atom(name: '_CarController.price');

  @override
  String get price {
    _$priceAtom.reportRead();
    return super.price;
  }

  @override
  set price(String value) {
    _$priceAtom.reportWrite(value, super.price, () {
      super.price = value;
    });
  }

  final _$sendAsyncAction = AsyncAction('_CarController.send');

  @override
  Future<void> send() {
    return _$sendAsyncAction.run(() => super.send());
  }

  final _$_CarControllerActionController =
      ActionController(name: '_CarController');

  @override
  void setBrand(String value) {
    final _$actionInfo = _$_CarControllerActionController.startAction(
        name: '_CarController.setBrand');
    try {
      return super.setBrand(value);
    } finally {
      _$_CarControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setModel(String value) {
    final _$actionInfo = _$_CarControllerActionController.startAction(
        name: '_CarController.setModel');
    try {
      return super.setModel(value);
    } finally {
      _$_CarControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setYear(String value) {
    final _$actionInfo = _$_CarControllerActionController.startAction(
        name: '_CarController.setYear');
    try {
      return super.setYear(value);
    } finally {
      _$_CarControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPrice(String value) {
    final _$actionInfo = _$_CarControllerActionController.startAction(
        name: '_CarController.setPrice');
    try {
      return super.setPrice(value);
    } finally {
      _$_CarControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
brand: ${brand},
model: ${model},
year: ${year},
price: ${price}
    ''';
  }
}
