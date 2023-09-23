import 'package:finalproject/appBar.dart';
import 'package:finalproject/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class fishScreen extends StatefulWidget {
  const fishScreen({super.key});

  @override
  State<fishScreen> createState() => _fishScreenState();
}

class _fishScreenState extends State<fishScreen> {
  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)!.settings.arguments as int;

    return DefaultTabController(
        initialIndex: index,
        length: 3,
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  appBar(),
                  Row(
                    children: [
                      TextButton(
                          onPressed: (() {
                            print("back pressed");
                            Navigator.of(context).pop();
                          }),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black45,
                          )),
                    ],
                  ),
                  Container(
                    // height: 40,
                    // width: double.maxFinite,
                    child: TabBar(
                      isScrollable: true,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.blue,
                      splashBorderRadius: BorderRadius.circular(20),
                      tabs: [
                        Tab(text: "Salty Water"),
                        Tab(
                          text: "Mix Water",
                        ),
                        Tab(
                          text: "Fresh Water",
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40, bottom: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Recomended",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Stack(
                    children: [
                      Container(
                        // color: Colors.red,
                        child: TabBarView(children: [
                          for (int i = 0; i < 3; i++)
                            GridView.count(
                              crossAxisCount: 2,
                              childAspectRatio: 0.8,
                              children: [
                                for (int j = 0; j < 8; j++)
                                  Container(
                                    // padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.all(10),

                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed('/fishScreen');
                                        },
                                        style: ElevatedButton.styleFrom(
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            backgroundColor: Colors.white),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              "assets/HeFishLogo.png",
                                            ),
                                            Text("HeFish",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14)),
                                            Text("50 dolar",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12))
                                          ],
                                        )),
                                  ),
                              ],
                            ),
                        ]),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: FloatingActionButton(
                            backgroundColor: Colors.white,
                            onPressed: (() => print("pressed")),
                            child: Container(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            )),
                      )
                    ],
                  )),
                ],
              ),
            ),
          ),
        ));
  }
}
