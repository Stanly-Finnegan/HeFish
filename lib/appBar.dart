import 'package:flutter/material.dart';

class appBar extends StatefulWidget {
  const appBar({super.key});

  @override
  State<appBar> createState() => _appBarState();
}

class _appBarState extends State<appBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            size: 60,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "James Blue",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Search for agent fish!",
                    style: TextStyle(color: Colors.black38, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              print("Logout Ketekan");
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      title: Text(
                        "Confirm Logout",
                        style: TextStyle(fontSize: 26),
                      ),
                      content: Text("Are you sure want to logout?"),
                      elevation: 8,
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              print("No");
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Text("Cancel")),
                        ElevatedButton(
                            onPressed: () {
                              print("Yes");
                              Navigator.of(context)
                                  .pushReplacementNamed("/Login");
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Text("Okay"))
                      ],
                    );
                  });
            },
            child: Icon(
              Icons.exit_to_app,
              size: 30,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
