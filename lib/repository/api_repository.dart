import 'dart:convert';

import 'package:avaliacao_diego_fipe_moblize/model/brand_model.dart';
import 'package:avaliacao_diego_fipe_moblize/model/complete_car.dart';
import 'package:avaliacao_diego_fipe_moblize/model/model_model.dart';
import 'package:avaliacao_diego_fipe_moblize/model/year_model.dart';
import 'package:http/http.dart' as http;

class ApiRepository {
  static const baseApi = 'http://fipeapi.appspot.com/api/1/carros';

  Future<List<Brand>> getBrandsList() async {
    try {
      final response = await http.get('$baseApi/marcas.json');

      if (response.statusCode == 200) {
        var brandsList = json.decode(response.body) as List;
        return brandsList.map((brand) => Brand.fromJson(brand)).toList();
      } else {
        throw Exception('Falha ao carregar lista de carros');
      }
    } catch (e) {
      return [];
    }
  }

  Future<List<Model>> getModelsList(int brandId) async {
    try {
      final response = await http.get('$baseApi/veiculos/$brandId.json');

      if (response.statusCode == 200) {
        var modelsList = json.decode(response.body) as List;
        return modelsList.map((model) => Model.fromJson(model)).toList();
      } else {
        throw Exception('Falha ao carregar Modelos');
      }
    } catch (e) {
      return [];
    }
  }

  Future<List<Year>> getYearsList(int brandId, String modelId) async {
    try {
      final response = await http.get(
          'http://fipeapi.appspot.com/api/1/carros/veiculo/$brandId/$modelId.json');

      if (response.statusCode == 200) {
        var yearsList = json.decode(response.body) as List;
        return yearsList.map((year) => Year.fromJson(year)).toList();
      } else {
        throw Exception('Falha ao carregar combustivel e ano');
      }
    } catch (e) {
      return [];
    }
  }

  Future<CompleteCar> getCompleteCar(
      int brandId, String modelId, String yearModelId) async {
    final response = await http.get(
        'http://fipeapi.appspot.com/api/1/carros/veiculo/$brandId/$modelId/$yearModelId.json');

    if (response.statusCode == 200) {
      var car = json.decode(response.body);
      return CompleteCar.fromJson(car);
    } else {
      throw Exception('Falha ao carregar combustivel e ano');
    }
  }
}
