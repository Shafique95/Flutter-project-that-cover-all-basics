import 'model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HelperSprinBoot {
  Future<Employee> fetchData() async {
    String url = "http://192.168.43.159:8080/api/v1/employee";
    final respons = await http.get(Uri.parse(url));
    if (respons.statusCode == 200) {
      print(respons.statusCode);
      return Employee.fromJson(jsonDecode(respons.body));
    } else {
      throw Exception("Data Error");
    }
  }
}
