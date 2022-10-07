import './models.dart';
import 'package:flutter/material.dart';
import 'meal_screen.dart';

class mealSelect extends StatelessWidget {
  // const mealSelect({ Key? key }) : super(key: key);
//

  static const routename = "/meal";
  Meal mee;
  @override
  mealSelect(this.mee);
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          print("pop");
          Navigator.of(context).pushNamed(mealScreen.routename, arguments: mee);
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => mealScreen(mee)));
        },
        child: Card(
            margin: EdgeInsets.only(bottom: 15, top: 5),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
            child: Container(
              // margin: EdgeInsets.only(bottom: 20),
              child: Stack(
                children: [
                  Container(
                    height: 240,
                    decoration: BoxDecoration(
                      // color: const Color.fromRGBO(236, 177, 176, 0.5),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15)),
                    ),
                  ),
                  Container(
                    child: ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15)),
                      child: Image.network(
                        mee.imageUrl,
                        fit: BoxFit.fill,
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    height: 200,
                    width: double.infinity,
                    // color: Colors.amber,
                  ),
                  Positioned(
                    bottom: 50,
                    left: 40,
                    right: 20,
                    child: Text(
                      mee.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          backgroundColor: Colors.white.withOpacity(0.8)),
                    ),
                  ),
                  Positioned(
                      bottom: 8,
                      left: 5,
                      right: 5,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.access_alarm_rounded,
                                  size: 26,
                                ),
                                Text("  ${mee.duration} \n mins "),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.kitchen_outlined),
                                Text(
                                    "${mee.complexity.toString().substring(11)}"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.attach_money_outlined),
                                Text(
                                    "${mee.affordability.toString().substring(14)}")
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )));
  }
}
