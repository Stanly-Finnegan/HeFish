import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class loginScreen extends StatefulWidget {
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
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

  Widget buildForgotPassBtn() {
    return Container(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () => print("forgot pass pressed"),
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              fontSize: 13,
              color: Colors.blueAccent,
            ),
          ),
        ));
  }

  Widget buildRememberMe() {
    return Container(
      height: 20,
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.blueAccent),
              child: Checkbox(
                value: isRememberMe,
                checkColor: Colors.white,
                activeColor: Colors.blueAccent,
                onChanged: (value) {
                  setState(() {
                    isRememberMe = value!;
                  });
                },
              )),
          Text(
            'Remember me',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 13,
            ),
          )
        ],
      ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      height: 100,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))),
        onPressed: () {
          Navigator.of(context).pushNamed('/homeScreen');
        },
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget buildGugel() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      height: 100,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            backgroundColor: Colors.white),
        onPressed: () => print('Gugel Pressed'),
        child: Text(
          'Google',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget buildSignUp() {
    return Container(
        child: TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed('/register');
      },
      child: Text(
        'Sign Up',
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
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image.asset("assets/HeFishLogo.png"),
                  ),
                  Container(
                    //width: 320,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hi, Welcome Back!',
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
                      'Happy to see you again, please login here.',
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
                    //width: 324,
                    child: Row(
                      children: [
                        buildRememberMe(),
                        Spacer(),
                        buildForgotPassBtn(),
                      ],
                    ),
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                  ),
                  buildLoginBtn(),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Or login with',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black45,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                  ),
                  buildGugel(),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have account?',
                          style: TextStyle(color: Colors.black87, fontSize: 13),
                        ),
                        buildSignUp()
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
