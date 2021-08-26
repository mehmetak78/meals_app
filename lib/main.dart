import 'package:flutter/material.dart';
import './screens/filters_screen.dart';
import './screens/tabs_screen_bottom.dart';
import './screens/tabs_screen_bottom_with_drawer.dart';
import './screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import 'screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ),
      //home: CategoriesScreen(),
      routes: {
        //'/': (ctx) => TabsScreen(),
        //'/': (ctx) => TabsScreenBottom(),
        '/': (ctx) => TabsScreenBottomDrawer(),
        '/category-meals': (ctx) => CategoryMealsScreen(),
        '/meal-detail': (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      /*
        onGenerateRoute: (settings) {
          print(settings.arguments);
          if (settings.name == '/meal-detail') {
            return MaterialPageRoute(builder: (ctx) => MealDetailScreen());
          }
          return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (ctx) => NotFoundScreen());
        },
        */
    );
  }
}
