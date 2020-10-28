import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_media/components/already_have_an_account.dart';
import 'package:social_media/components/round_button.dart';
import 'package:social_media/components/round_password_field.dart';
import 'package:social_media/components/round_textfield.dart';
import 'package:social_media/screens/Login/components/background.dart';
import 'package:social_media/screens/SignUp/signup.dart';

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
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset("assets/icons/login.svg",
                height: size.height * 0.35),
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
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccount(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
