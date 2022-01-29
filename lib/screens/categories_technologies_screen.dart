import 'package:articles/models/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesTechnologiesScreen extends StatelessWidget {
  const CategoriesTechnologiesScreen({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category; // param da rota da tela, passado por pushedName

    return Scaffold(
        appBar: AppBar(
          title: Text('Tecnologias - ${category.title}'),
        ),
        body: const Center(
          child: Text('TSAYDYAS'),
        ),
    );
  }
}