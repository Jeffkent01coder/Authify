import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  late double _deviceHeight;
  late double _deviceWidth;

  Color _primaryColor = Color.fromRGBO(125, 191, 211, 1.0);
  Color _secondaryColor = Color.fromRGBO(169, 224, 241, 1.0);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: _primaryColor,
      body: Align(
          alignment: Alignment.center,
          child: Container(
            height: _deviceHeight * 0.60,
            width: _deviceWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _avaterWidget(),
                SizedBox(height: _deviceHeight * 0.05),
                _emailTextField(),
                _passwordTextField(),
                SizedBox(height: _deviceHeight * 0.10),
                _loginButton(),
              ],
            ),
          )),
    );
  }

  Widget _avaterWidget() {
    double _cirlcleD = _deviceHeight * 0.25;
    return Container(
      height: _cirlcleD,
      width: _cirlcleD,
      decoration: BoxDecoration(
        color: _secondaryColor,
        borderRadius: BorderRadius.circular(500),
        image: DecorationImage(
          image: AssetImage('assets/images/download.png'),
        ),
      ),
    );
  }

  Widget _emailTextField() {
    return Container(
      width: _deviceWidth * 0.70,
      child: TextField(
        cursorColor: Colors.white,
        autocorrect: false,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: "Jeff.cole@gmail.com",
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _passwordTextField() {
    return Container(
      width: _deviceWidth * 0.70,
      child: TextField(
        obscureText: true,
        cursorColor: Colors.white,
        autocorrect: false,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _loginButton() {
    return MaterialButton(
        minWidth: _deviceWidth * 0.38,
        height: _deviceWidth * 0.10,
        color: Colors.white,
        child: Text(
          "Login",
          style: TextStyle(
              fontSize: 16, color: _primaryColor, fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(color: Colors.white)),
        onPressed: () {});
  }
}
