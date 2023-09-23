import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class registerScreen extends StatefulWidget {
  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  bool isRememberMe = false;

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            'Email',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          //width: 324,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 3)]),
          height: 44,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 10),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black87,
                  size: 12,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black38, fontSize: 12)),
          ),
        ),
      ],
    );
  }

  Widget buildPass() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            'Password',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          //width: 324,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 3)]),
          height: 44,
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 10),
                prefixIcon: Icon(
                  Icons.key,
                  color: Colors.black87,
                  size: 12,
                ),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.black38, fontSize: 12)),
          ),
        ),
      ],
    );
  }

  Widget buildConfirmPass() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            'Confirm Password',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          //width: 324,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 3)]),
          height: 44,
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 10),
                prefixIcon: Icon(
                  Icons.key,
                  color: Colors.black87,
                  size: 12,
                ),
                hintText: 'Repeat your password',
                hintStyle: TextStyle(color: Colors.black38, fontSize: 12)),
          ),
        ),
      ],
    );
  }

  Widget buildSignUpBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      height: 100,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))),
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget buildSignIn() {
    return Container(
        child: TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text(
        'Sign In',
        style: TextStyle(
          fontSize: 13,
          color: Colors.blueAccent,
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Image.asset("assets/HeFishLogo.png"),
                  ),
                  Container(
                    //width: 320,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Welcome to He Fish',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    //width: 324,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hello, looks like you are new around here.\nYou can start using the app after sign up.',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(child: buildEmail()),
                  Container(
                    child: buildPass(),
                    padding: const EdgeInsets.only(top: 30),
                  ),
                  Container(
                    child: buildConfirmPass(),
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                  ),
                  buildSignUpBtn(),
                  Container(
                    padding: const EdgeInsets.only(top: 30),
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have account?',
                          style: TextStyle(color: Colors.black87, fontSize: 13),
                        ),
                        buildSignIn()
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
