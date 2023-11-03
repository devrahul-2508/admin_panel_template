// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

class OverViewModel {
  String title;
  String amount;
  Color color;
  String percentage;
  Icon icon;
  String difference;
  OverViewModel({
    required this.title,
    required this.amount,
    required this.color,
    required this.percentage,
    required this.icon,
    required this.difference,
  });
}

List demoOverViews = [
  OverViewModel(
      title: "Earnings",
      amount: "\$928.41",
      color: Colors.green,
      percentage: "12.8%",
      icon: Icon(
        Icons.money,
        color: Colors.grey.shade600,
      ),
      difference: "+118.80"),
  OverViewModel(
      title: "Spendings",
      amount: "\$169.43",
      color: Colors.red,
      percentage: "3.1%",
      icon: Icon(Icons.shop, color: Colors.grey.shade600),
      difference: "-5.2"),
  OverViewModel(
      title: "Savings",
      amount: "\$406.27",
      color: Colors.green,
      percentage: "8.2%",
      icon: Icon(Icons.money, color: Colors.grey.shade600),
      difference: "+118.80"),
  OverViewModel(
      title: "Investment",
      amount: "\$1,854.08",
      color: Colors.green,
      percentage: "8.2%",
      icon: Icon(Icons.money, color: Colors.grey.shade600),
      difference: "+78.80"),
];
