import 'package:flutter/material.dart';
import 'package:meals_app/meal_list_widget.dart';
import './models.dart';
import './dummy_data.dart';

class mealSelectScreen extends StatelessWidget {
  // const mealSelectScreen({ Key? key }) : super(key: key);

  static const routename = '/mealSelectScreen';
 

 List<Widget> mealViewbuilder(List<Meal> listi) {
    // List<Widget> kist;
    return listi.map((e) => mealSelect(e)).toList();
  }
  // mealSelectScreen(this.cat);

// List<Widget> widgets=DUMMY_MEALS.map((element) {
//             if (element.categories.contains(cat.id)) return Text(element.id);
//           }).toList() as List<Widget>;
  @override
  Widget build(BuildContext context) {
    final routeargs = ModalRoute.of(context)!.settings.arguments as List<String>;
    final Category cat = DUMMY_CATEGORIES.firstWhere((element) => element.id == routeargs[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text(cat.title),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.9,
                width: 350,
                child: ListView(
                  children: mealViewbuilder(available_meals.where((element) {
                    return element.categories.contains(cat.id);
                  }).toList()),
                ),
              ),
            ],
          ),
        ));
  }
}
