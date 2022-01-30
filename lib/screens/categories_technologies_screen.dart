import 'package:articles/components/technology_item.dart';
import 'package:articles/data/dummy_data.dart';
import 'package:articles/models/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesTechnologiesScreen extends StatelessWidget {
  const CategoriesTechnologiesScreen({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category; // param da rota da tela, passado por pushedName

    final categoryTechnologies = technologies.where((technology) {
      return technology.categories.contains(category);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text('Tecnologias - ${category.title}'),
        ),
        body: ListView.builder(
          itemCount: categoryTechnologies.length,
          itemBuilder: (ctx, index) {
            return TechnologyItem(technology: categoryTechnologies[index]);
          }
        )
    );
  }
}