import 'dart:ui';

import 'package:articles/data/dummy_data.dart';
import 'package:articles/models/technology.dart';
import 'package:flutter/material.dart';

class TechnologyDetailScreen extends StatelessWidget {
  const TechnologyDetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Technology; // param da rota da tela, passado por pushedName

    return Scaffold(
      appBar: AppBar(
        title: Text('Artigo - ${article.title}'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.network(
              article.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Características',
              style: Theme.of(context).textTheme.headline6,
            ),
          )
        ],
      ),
    );
  }
}