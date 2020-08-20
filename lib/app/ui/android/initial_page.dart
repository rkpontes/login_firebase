import 'package:flutter/material.dart';
import 'package:login_firebase/app/routes/app_routes.dart';
import 'package:splashscreen/splashscreen.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SplashScreen(
          seconds: 5,
          gradientBackground: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.green[300], Colors.green[600]],
          ),
          navigateAfterSeconds: Routes.LOGIN,
          loaderColor: Colors.transparent,
        ),
        Container(
          margin: EdgeInsets.all(140.0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/logo.png"), fit: BoxFit.contain),
          ),
        ),
      ],
    );
  }
}
