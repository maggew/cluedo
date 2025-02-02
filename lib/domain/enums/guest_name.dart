import 'package:flutter/material.dart';

enum GuestName {
  gatow(value: "Dennis Gatow", color: Colors.amber),
  bloom(value: "Felix Bloom", color: Colors.deepPurple),
  gruen(value: "Tom Grün", color: Colors.green),
  porz(value: "Klara Porz", color: Colors.blueAccent),
  roth(value: "Gloria Roth", color: Colors.red),
  weiss(value: "Diana Weiss", color: Colors.white);

  final String value;
  final Color color;

  const GuestName({required this.value, required this.color});
}
