import 'package:articles/models/technology.dart';
import 'package:articles/utils/app_routes.dart';
import 'package:flutter/material.dart';

class TechnologyItem extends StatelessWidget {
  final Technology technology;

  const TechnologyItem({ Key? key, required this.technology}) : super(key: key);

  void _selectTechnology(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.categoriesTechnologiesArticle,
      arguments: technology
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: () => _selectTechnology(context),
    child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15) 
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(   // estack, uma coisa por cima da outra
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)
                  ),
                  child: Image.network(
                    technology.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned( // posicionamento do elemento na stack
                  right: 50,
                  bottom: 20,
                  child: Container(
                    width: 300,
                    color: Colors.black87,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20
                    ),
                    child: Text(
                      technology.title,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule),
                      const SizedBox(width: 6),
                      Text('${technology.timeReading} min')
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work),
                      const SizedBox(width: 6),
                      Text(technology.complexityText)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}