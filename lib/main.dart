import 'package:articles/screens/categories_screen.dart';
import 'package:articles/screens/categories_technologies_screen.dart';
import 'package:articles/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(  
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey).copyWith(secondary: Colors.cyan),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          headline6: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed'
          )
        )
      ),
      routes: {
        AppRoutes.home: (ctx) => const CategoriesScreen(), // route default para home
        AppRoutes.categoriesTechnologies:(ctx) => const CategoriesTechnologiesScreen(),
      },
    );
  }
}