import 'package:flutter/material.dart';
import './dummy_data.dart';
import './mealselectscreen.dart';
import './mainDrawer.dart';
class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Categories")),
      drawer: mainDrawer(),
      body: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 60,
          crossAxisSpacing: 20,
          childAspectRatio: 0.7,
          children: DUMMY_CATEGORIES.map((category) {
            return
                
                Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  // Navigator.of(context).push(
                      // MaterialPageRoute(builder: (ctx) => mealSelectScreen(category)));
                  Navigator.of(context).pushNamed(mealSelectScreen.routename,arguments: [category.id,category.title]);
                },
                splashColor: Colors.white,
                // Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: Text(
                    category.title,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                    textAlign: TextAlign.left,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: AlignmentDirectional.topStart,
                        end: AlignmentDirectional.bottomEnd,
                        colors: [
                          category.color,
                          category.color.withOpacity(0.6)
                        ]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            );
          }).toList()),
    );
  }
}
