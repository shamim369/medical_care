import'dart:async';
import'dart:convert';
import'package:http/http.dart'as http;
import 'package:medicare/models/doctor_model.dart';

// https://jsonplaceholder.typicode.com/users

class DoctorListServices {
  static const String url = 'https://raw.githubusercontent.com/shamim369/jsondata/main/doctor.json';

  static Future<List<Doctor>> getDoctor() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List<Doctor> list = parseDoctor(response.body);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<Doctor> parseDoctor(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Doctor>((json) => Doctor.fromJson(json)).toList();
  }
}