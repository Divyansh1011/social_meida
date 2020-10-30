import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_media/components/already_have_an_account.dart';
import 'package:social_media/components/round_button.dart';
import 'package:social_media/components/round_password_field.dart';
import 'package:social_media/components/round_textfield.dart';
import 'package:social_media/screens/Login/login_screen.dart';
import 'package:social_media/screens/SignUp/components/background.dart';
import 'package:social_media/screens/SignUp/components/ordivider.dart';
import 'package:social_media/screens/SignUp/components/socialicon.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset("assets/icons/signup.svg",
                height: size.height * 0.35),
           SizedBox(
              height: size.height * 0.03,
            ),
           RoundTextfield(
              hintText: "Display Name",
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundTextfield(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundPasswordField(
              onChanged: (value) {},
            ),
            RoundButton(
              text: "SIGN UP",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccount(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
