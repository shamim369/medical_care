import'dart:async';
import'dart:convert';
import'package:http/http.dart'as http;
import 'package:medicare/models/patent_model.dart';

// https://jsonplaceholder.typicode.com/users

class ProfessionalListServices {
  static const String url = 'https://raw.githubusercontent.com/shamim369/jsondata/main/patient.json';

  static Future<List<Prescription>> getProfessionals() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List<Prescription> list = parseProfessionals(response.body);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<Prescription> parseProfessionals(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Prescription>((json) => Prescription.fromJson(json)).toList();
  }
}