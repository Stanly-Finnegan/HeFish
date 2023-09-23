import 'package:finalproject/appBar.dart';
import 'package:finalproject/carouselSlider.dart';
import 'package:finalproject/fishScreen.dart';
import 'package:finalproject/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class args {
  final int value;
  args(this.value);
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: [
          appBar(),
          Container(
              // width: double.infinity,
              padding: const EdgeInsets.only(top: 15, left: 10),
              child: Column(
                children: [
                  Container(
                    child: Row(children: [
                      Text(
                        "Welcome to HE ",
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        "FISH",
                        style: TextStyle(fontSize: 24, color: Colors.blue),
                      )
                    ]),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Hello Seaman, we provides the  most complete \ninformation about fish for you.",
                      style: TextStyle(fontSize: 12, color: Colors.black38),
                    ),
                  )
                ],
              )),
          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset("assets/AbstractShape.png"),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    height: 209,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ]),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Recommendation",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Icon(
                              Icons.recommend_rounded,
                              color: Colors.blue,
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 100,
                          height: 140,
                          child: carouselSlider(),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 80, left: 10),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Choose Our Kind",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                      child: GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 170),
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed('/fishScreen', arguments: 0);
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                backgroundColor: Color(0xFFDAE08D)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/IkanKuningHP.png"),
                                Text("Salty Water",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14))
                              ],
                            )),
                      ),
                      Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('/fishScreen', arguments: 1);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  backgroundColor: Color(0xFF58B1F1)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/IkanBiruHP.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                  Container(
                                    child: Text("Mixed Water",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  )
                                ],
                              ))),
                      Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/fishScreen',
                                    arguments: 2);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  backgroundColor: Color(0xFF92EFD9)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/IkanTosqaHP.png",
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text(
                                        "Fresh Water",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ))
                                ],
                              ))),
                    ],
                  ))
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}
