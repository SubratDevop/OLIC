import 'package:flutter/material.dart';

class User {
  String? regiStrationNo;
  String? name;
  String? mobileNo;
  String? village;
  String? gramaPanchayat;
  String? block;
  String? district;
  String? detailsView;
  String? action;
  String? detailsPage;

  User({
    required this.regiStrationNo,
    required this.name,
    required this.mobileNo,
    required this.village,
    required this.gramaPanchayat,
    required this.block,
    required this.district,
    required this.detailsView,
    required this.action,
    required this.detailsPage
  });

  User copy({
    String? regiStrationNo,
    String? name,
    String? mobileNo,
    String? village,
    String? gramaPanchayat,
    String? block,
    String? district,
    String? detailsView,
    String? action,
    String? detailsPage

  }) =>
      User(
          regiStrationNo: regiStrationNo ?? this.regiStrationNo,
          name: name ?? this.name,
          mobileNo: mobileNo ?? this.mobileNo,
          village: village ?? this.village,
          gramaPanchayat: gramaPanchayat ?? this.gramaPanchayat,
          block: block ?? this.block,
          district: district ?? this.district,
          detailsView: detailsView ?? this.detailsView,
          action: action ?? this.action,
          detailsPage: detailsPage ?? this.detailsPage
          );
}
