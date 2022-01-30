
import 'package:articles/models/category.dart';
import 'package:articles/models/technology.dart';
import 'package:flutter/material.dart';

List<Category> catogories = [
  Category(
    id: 'a1',
    title: 'Programação',
    color: Colors.blue
  ),
  Category(
    id: 'a2',
    title: 'Redes',
    color: Colors.cyan
  ),
  Category(
    id: 'a3',
    title: 'Hardware',
    color: Colors.yellow
  ),
  Category(
    id: 'a4',
    title: 'Design',
    color: Colors.orange
  ),
  Category(
    id: 'a6',
    title: 'Marketing digital',
    color: Colors.purple
  ),
  Category(
    id: 'a7',
    title: 'Inteligencia artificial',
    color: Colors.green
  ),
];

List<Technology> technologies = [
  Technology(
    id: 't1',
    title: 'Orientação a objetos',
    categories: [
      catogories[0]
    ],
    imageUrl: 'https://becode.com.br/wp-content/uploads/2016/11/POO-1.png',
    itens: [],
    complexity: Complexity.difficult,
    timeReading: 10
  ),
];