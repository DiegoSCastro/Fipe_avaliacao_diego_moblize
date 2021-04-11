class Year {
  String fipeCodigo;
  String name;
  String key;
  String veiculo;
  String id;

  Year({this.fipeCodigo, this.name, this.key, this.veiculo, this.id});

  Year.fromJson(Map<String, dynamic> json) {
    fipeCodigo = json['fipe_codigo'] ?? '';
    name = json['name'] ?? '';
    key = json['key'] ?? '';
    veiculo = json['veiculo'] ?? '';
    id = json['id'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fipe_codigo'] = this.fipeCodigo;
    data['name'] = this.name;
    data['key'] = this.key;
    data['veiculo'] = this.veiculo;
    data['id'] = this.id;
    return data;
  }
}
