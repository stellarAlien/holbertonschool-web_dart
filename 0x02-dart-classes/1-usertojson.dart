class User {
  String? name;
  int? age;
  double? height;

  User({this.name, this.age, this.height});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['height'] = this.height;
    return data;
  }
}