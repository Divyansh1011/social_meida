import 'package:flutter/material.dart';
import 'package:social_media/components/textfieldcontainer.dart';
import 'package:social_media/constants.dart';

class RoundPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
