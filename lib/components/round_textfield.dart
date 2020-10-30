

import 'package:flutter/material.dart';
import 'package:social_media/components/textfieldcontainer.dart';
import 'package:social_media/constants.dart';

class RoundTextfield extends StatefulWidget {
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
  _RoundTextfieldState createState() => _RoundTextfieldState();
}

class _RoundTextfieldState extends State<RoundTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            hintText: widget.hintText,
            border: InputBorder.none,
            icon: Icon(
              Icons.person,
              color: kPrimaryColor,
            )),
      ),
    );
  }
}

