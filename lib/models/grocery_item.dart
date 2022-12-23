import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

enum Importance {
  low,
  medium,
  high,
}

class GroceryItem {
  final String id;
  final String name;
  final Color color;
  final int quantity;
  final DateTime date;
  final bool isComplete;
  final Importance importance;

  GroceryItem(
      {required this.color,
      required this.date,
      required this.id,
      required this.importance,
      this.isComplete = false,
      required this.name,
      required this.quantity});

  GroceryItem copyWith({
    String? id,
    String? name,
    Color? color,
    int? quantity,
    DateTime? date,
    bool? isComplete,
    Importance? importance,
  }) {
    return GroceryItem(
        color: color ?? this.color,
        date: date ?? this.date,
        id: id ?? this.id,
        importance: importance ?? this.importance,
        isComplete: isComplete ?? this.isComplete,
        name: name ?? this.name,
        quantity: quantity ?? this.quantity);
  }
}
