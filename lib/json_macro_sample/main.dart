import 'package:json/json.dart';

@JsonCodable()
class User {
  String name;
  int age;
}

void main() {
  final userJson = {'name': "Bob", 'age': 15};
  final user = User.fromJson(userJson);
  print(user.name);
  print(user.age);
  print(user.toJson());
}

// dart --enable-experiment=macros run ./lib/json_macro_sample/main.dart                                           (*'-') 
// Bob
// 15
// {name: Bob, age: 15}