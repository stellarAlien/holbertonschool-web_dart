class User {
  String? name;
  int? age;
  double? height;
  int? id; 

    User({required this.id, required this.name, required this.age, required this.height});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['age'] = this.age;
    data['height'] = this.height;
    return data;
  }
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height)';
  }
}
