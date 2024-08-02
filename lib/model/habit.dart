import 'package:flutter/material.dart';
import 'package:parking/model/vacancy.dart';
import 'package:parking/model/vehicle.dart';

class Habit {
  int? number;
  Vacancy vacancy;
  Vehicle vehicle;
  double? amount;
  TimeOfDay entryTime;
  TimeOfDay? departureTime;

  Habit({
    this.number,
    required this.vacancy,
    required this.vehicle,
    this.amount,
    required this.entryTime,
    this.departureTime,
  });
}
