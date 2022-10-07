import 'package:flutter/material.dart';
import './models.dart';
import './dummy_data.dart';

class mealScreen extends StatelessWidget {
  // Meal item;
  static const routename = "/meal_details";
  // mealScreen(this.item);
  Widget text(String str) {
    return Text(str, style: TextStyle(fontSize: 20));
  }

  Widget info( Meal item) {
    return Column(
      children: [
        text("is gluten free? : ${item.isGlutenFree ? "YES" : "NO"}"),
        text("is vegan free? : ${item.isVegan ? "YES" : "NO"}"),
        text("is lactose free? : ${item.isLactoseFree ? "YES" : "NO"}"),
        text("is vegetarian free? : ${item.isVegetarian ? "YES" : "NO"}"),
        text("Time required to make: ${item.duration} mins"),
        text(
            "this dish is ${item.complexity.toString().substring(11)}  to make")
      ],
    );
  }

  Widget listing(List<String> listi) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      for (int i = 0; i < listi.length; i++)
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(" -x-   "),
            Container(
              width: 300,
              child: Text(
                softWrap: true,
                listi[i],
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  // overflow: TextOverflow.ellipsis
                ),
              ),
            ),
          ],
        )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(item.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  item.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Card(
              color: Colors.lightGreen,
              child: Text(
                textAlign: TextAlign.center,
                item.title,
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10, left: 15),
              width: double.infinity,
              child: Text(
                "INGREDIENTS:",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              // alignment: ,
              margin: EdgeInsets.only(bottom: 20, left: 15),

              width: double.infinity,
              child: listing(item.ingredients),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10, left: 15),
              width: double.infinity,
              child: Text(
                "STEPS",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              // alignment: ,
              margin: EdgeInsets.only(bottom: 20, left: 15),

              width: double.infinity,
              child: listing(item.steps),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10, left: 15),
              width: double.infinity,
              child: Text(
                "INFORMATION",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
            ),
            Container(
              // alignment: ,
              margin: EdgeInsets.only(bottom: 80, left: 15),
              width: double.infinity,
              child: info(item),
            )
          ],
        ),
      ),
    );
  }
}
