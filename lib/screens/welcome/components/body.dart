import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_media/components/round_button.dart';
import 'package:social_media/constants.dart';
import 'package:social_media/screens/Login/login_screen.dart';
import 'package:social_media/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "INSTAGRAM",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        SvgPicture.asset(
          "assets/icons/chat.svg",
          height: size.height * 0.45,
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        RoundButton(
          text: "LOGIN",
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginScreen(
                
              );
            }));
          },
        ),
        RoundButton(
          text: "SIGN UP",
          color: kPrimaryLightColor,
          textColor: Colors.black,
          press: () {},
        )
      ],
    ));
  }
}
