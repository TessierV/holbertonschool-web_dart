import '6-password.dart';

class User {
  int? id;
  var name;
  int? age;
  double? height;
  String? user_password;

  User({this.id, this.name, this.age, this.height, this.user_password});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': user_password,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    bool isValid = user_password != null
        ? Password(password: user_password!).isValid()
        : false;
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: $isValid)';
  }
}
