import 'package:flutter/material.dart';

import 'screens/tabs_screen.dart';
import 'screens/categories_screen.dart';
import './screens/categories_meals_screen.dart';
import './screens/meal_detail_screen.dart';
import 'Utils/app_routes.dart';
import './screens/settings_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          fontFamily: 'Raleway',
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
              titleSmall: TextStyle(
                fontSize: 12,
                fontFamily: 'Raleway',
              ),
              titleMedium: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
              titleLarge: TextStyle(
                fontSize: 26,
                fontFamily: 'RobotoCondensed',
              ))),
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(),
      },
    );
  }
}
