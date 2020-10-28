

import 'package:flutter/material.dart';
import 'package:social_media/components/textfieldcontainer.dart';
import 'package:social_media/constants.dart';

class RoundTextfield extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundTextfield({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            icon: Icon(
              Icons.person,
              color: kPrimaryColor,
            )),
      ),
    );
  }
}

