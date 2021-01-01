import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class Prescription {
  int id;
  String patientname;
  String doctorname;
  String dateandtime;
  String fees;

  // String address;

  Prescription({this.id, this.patientname,this.doctorname,this.dateandtime,this.fees});

  factory Prescription.fromJson(Map<String, dynamic> json) {
    return Prescription(
      id: json["id"] as int,
      patientname: json["patientname"] as String,
      doctorname: json["doctorname"] as String,
      dateandtime: json["dateandtime"] as String,
      fees: json["fees"] as String,
      //address: json["address"] as String,
    );
  }
}