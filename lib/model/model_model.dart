class Model {
  String key;
  String id;
  String fipeName;
  String name;

  Model({
    this.key,
    this.id,
    this.fipeName,
    this.name,
  });

  Model.fromJson(Map<String, dynamic> json) {
    key = json['key'] ?? '';
    id = json['id'] ?? '';
    fipeName = json['fipe_name'] ?? '';
    name = json['name'] ?? '';
  }
}
