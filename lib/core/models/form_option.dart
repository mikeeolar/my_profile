class FormOption {
  int? id;
  String? name;
  String? description;

  FormOption({this.id, this.name, this.description});

  FormOption.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    name = json['name'] as String?;
    description = json['description'] as String?;
  }
}

