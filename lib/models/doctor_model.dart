import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class Doctor {
  int id;
  String name;
  String fees;
  String spacialist;
  String email;
  String imageUrl;
  String status;
  // String address;

  Doctor({this.id, this.name, this.fees, this.imageUrl, this.spacialist,this.status});

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      id: json["id"] as int,
      name: json["name"] as String,
      fees: json["fees"] as String,
      imageUrl: json["imageUrl"] as String,
      spacialist: json["spacialist"] as String,
      status: json["status"] as String,
      //address: json["address"] as String,
    );
  }
}