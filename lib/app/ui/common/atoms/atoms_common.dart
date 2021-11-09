import 'package:flutter/material.dart';

class AtomsCommon extends StatelessWidget {
  const AtomsCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget circleAvatar() {
    return CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.white10,
      backgroundImage: AssetImage('assets/logo2.png'),
    );
  }

  Widget textTitle(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
        fontSize: 25,
      ),
    );
  }

  Widget textRegular(String text) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'PTSans',
        fontSize: 18.0,
      ),
    );
  }
  
}
