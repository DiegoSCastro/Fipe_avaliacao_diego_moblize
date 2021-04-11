class CompleteCar {
  String id;
  String anoModelo;
  String marca;
  String name;
  String veiculo;
  String preco;
  String combustivel;
  String referencia;
  String fipeCodigo;
  String key;

  CompleteCar(
      {this.id,
      this.anoModelo,
      this.marca,
      this.name,
      this.veiculo,
      this.preco,
      this.combustivel,
      this.referencia,
      this.fipeCodigo,
      this.key});

  CompleteCar.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? '';
    anoModelo = json['ano_modelo'] ?? '';
    marca = json['marca'] ?? '';
    name = json['name'] ?? '';
    veiculo = json['veiculo'] ?? '';
    preco = json['preco'] ?? '';
    combustivel = json['combustivel'] ?? '';
    referencia = json['referencia'] ?? '';
    fipeCodigo = json['fipe_codigo'] ?? '';
    key = json['key'] ?? '';
  }
}
