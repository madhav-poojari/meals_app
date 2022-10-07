import 'package:flutter/material.dart';

class aboutMe extends StatelessWidget {
  static const routename = "/aboutage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("aboutme"),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            child: Image.asset(fit: BoxFit.fitWidth, 'image.jpeg'),
            width: 350,
            height: 400,
          ),
          Text(
            textAlign: TextAlign.center
            ,
            "me is madhav \n and im learning flutter",
            style: TextStyle(fontSize: 35),
          ),
        ],
      )),
    );
  }
}
