class Brand {
  String name;
  String fipeName;
  int order;
  String key;
  int id;

  Brand({this.name, this.fipeName, this.order, this.key, this.id});

  Brand.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    fipeName = json['fipe_name'] ?? '';
    order = json['order'] ?? '';
    key = json['key'] ?? '';
    id = json['id'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['fipe_name'] = this.fipeName;
    data['order'] = this.order;
    data['key'] = this.key;
    data['id'] = this.id;
    return data;
  }
}
