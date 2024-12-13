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
       child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _avaterWidget(),
            ],
          ),
      ),
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
}
