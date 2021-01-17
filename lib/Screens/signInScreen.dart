import 'package:flutter/material.dart';
import 'package:order_now/Constants/themes.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  Widget _buildTextEmail() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email or Username",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  bool _passVis = true;

  Widget _buildTextPass() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          icon: _passVis ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
          onPressed: () {
            setState(() {
              _passVis = !_passVis;
            });
          },
        ),
      ),
      obscureText: _passVis,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Themes.appBackground,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Themes.whiteText),
                  ),
                  SizedBox(
                    height: 90.0,
                  ),
                  Card(
                    elevation: 15.0,
                    color: Themes.signInCard,
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          _buildTextEmail(),
                          SizedBox(
                            height: 20.0,
                          ),
                          _buildTextPass(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        onPressed: null,
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      color: Themes.signInButton,
                    ),
                    child: FlatButton(
                      onPressed: () => Navigator.of(context).pushNamed('/mainScreen'),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Themes.blackText,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Color(0xFFBDC2CB),
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/signUpScreen');
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                              fontSize: 17.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
