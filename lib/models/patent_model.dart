import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class Prescription {
  int id;
  String name;
  String mobile;
  String spacialist;
  String email;
  String imageUrl;
  String status;
  // String address;

  Prescription({this.id, this.name, this.email, this.imageUrl,this.mobile,this.spacialist,this.status});

  factory Prescription.fromJson(Map<String, dynamic> json) {
    return Prescription(
      id: json["id"] as int,
      name: json["name"] as String,
      email: json["email"] as String,
      imageUrl: json["imageUrl"] as String,
      mobile: json["mobile"] as String,
      spacialist: json["spacialist"] as String,
      status: json["status"] as String,
      //address: json["address"] as String,
    );
  }
}