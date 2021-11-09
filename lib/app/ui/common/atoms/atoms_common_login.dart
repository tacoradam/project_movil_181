import 'package:flutter/material.dart';
import 'package:flutter_meedu/router.dart' as router;

class AtomsCommonLogin extends StatelessWidget {
  const AtomsCommonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget textButton(String text, String page) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Monserrat',
          fontSize: 16,
        ),
      ),
      onPressed: () => router.pushNamed(page),
    );
  }

  Widget buttonLogin(String routeImage, String text, String page) {
    return Container(
      height: 60,
      width: 280,
      padding: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 10.0,
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: () => router.pushNamed(page),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(routeImage),
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'Monserrat',
                    fontSize: 19,
                    color: Colors.teal,
                    fontWeight: FontWeight.w500,
                    backgroundColor: Colors.transparent,
                    letterSpacing: 0.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
