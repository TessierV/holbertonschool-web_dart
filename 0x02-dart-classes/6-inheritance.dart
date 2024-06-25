import '6-password.dart';

class User extends Password {
  String? name;
  int? age;
  double? height;
  int? id;
  String? user_password;

  User({this.id, this.name, this.age, this.height, this.user_password})
      : super(password: user_password);

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'age': age, 'height': height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return new User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height'],
        user_password: '');
  }

  @override
  String toString() {
    Password password = new Password(password: user_password);
    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${password.isValid()})";
  }
}
