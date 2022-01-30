import 'dart:core';
import 'package:articles/models/category.dart';

enum Complexity {
  simple,
  medium,
  difficult
}

class Technology {
  final String id;
  final List<Category> categories;
  final String title;
  final String imageUrl;
  final List<String> itens;
  final Complexity complexity;
  final int timeReading;

  const Technology({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.itens,
    required this.complexity,
    required this.timeReading,
  });

  String get complexityText {
    switch(complexity) {
      case Complexity.simple: 
        return 'Simples';
      case Complexity.medium: 
        return 'Normal';
      case Complexity.difficult: 
        return 'Dificil';
      default: 
        return 'Desconhecida';
    }
  }
}