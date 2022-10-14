import 'package:flutterbasi/flutter_rest_api/model.dart';

class Employee {
  final int? id;
  final String? lastName;
  final String? firstName;
  final String? email;

  Employee(
      {required this.id,
      required this.lastName,
      required this.firstName,
      required this.email});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        id: json["id"],
        lastName: json["lastName"],
        firstName: json["firstName"],
        email: json["email"]);
  }
}
