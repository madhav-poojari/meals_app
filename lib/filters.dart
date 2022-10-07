import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

class filters extends StatefulWidget {
  static const routename = "/filters";
  @override
  State<filters> createState() => _filtersState();
}

class _filtersState extends State<filters> {
  bool glutenfree;
  bool vegan;
  bool vegetarian;
  bool lactosefree;
  @override
  void initState() {
    bool glutenfree = false;
    bool vegan = false;
    bool vegetarian = false;
    bool lactosefree = false;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text("Filter settings"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          const Text(
            "filter options",
          ),
          SwitchListTile(
              title: const Text("glutenfree"),
              subtitle: const Text("make the recipies gluten free"),
              value: glutenfree,
              onChanged: (_) {
                setState(() {
                  glutenfree = !glutenfree;
                  make_changes(glutenfree, vegetarian, vegan, lactosefree);

                  // make_changes(false, false, true, false);
                });
              }),
          SwitchListTile(
              title: const Text("vegan"),
              subtitle: const Text("make the recipies vegan"),
              value: vegan,
              onChanged: (_) {
                setState(() {
                  vegan = !vegan;
                  make_changes(glutenfree, vegetarian, vegan, lactosefree);

                  // make_changes(false, false, true, false);
                });
              }),
          SwitchListTile(
              title: const Text("vegeterian"),
              subtitle: const Text("make the recipies all vegeterian"),
              value: vegetarian,
              onChanged: (_) {
                setState(() {
                  vegetarian = !vegetarian;
                  make_changes(glutenfree, vegetarian, vegan, lactosefree);

                  // make_changes(false, false, true, false);
                });
              }),
          SwitchListTile(
              title: const Text("lactosefree"),
              subtitle: const Text("make the recipies lactose free"),
              value: lactosefree,
              onChanged: (_) {
                setState(() {
                  lactosefree = !lactosefree;
                  make_changes(glutenfree, vegetarian, vegan, lactosefree);
                });
              })
        ],
      ),
    );
  }
}
