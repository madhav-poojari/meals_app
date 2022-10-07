// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meals_app/filters.dart';
import 'main.dart';
import './aboutSection.dart';

class mainDrawer extends StatelessWidget {
  void funny() {}
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // shape: ShapeBorder(),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            child: Text(
              "cooking time !!",
              style: TextStyle(
                  color: Theme.of(context).backgroundColor, fontSize: 27),
            ),
            decoration: BoxDecoration(
                color: Colors.black,
                gradient: LinearGradient(colors: [Colors.black, Colors.grey])),
          ),
          SizedBox(height: 15),
          ListTile(
            tileColor: Colors.grey,
            title: Center(
                child: Text(
              "categories",
              style: TextStyle(fontSize: 25),
            )),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 4),
          ListTile(
            tileColor: Colors.grey,
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(filters.routename);
            },
            title: Center(
                child: Text(
              "filters",
              style: TextStyle(fontSize: 25),
            )),
          ),
          SizedBox(height: 4),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(aboutMe.routename);
            },
            tileColor: Colors.grey,
            title: Center(
                child: Text(
              "about me",
              style: TextStyle(fontSize: 25),
            )),
          ),
        ],
      ),
    );
  }
}
