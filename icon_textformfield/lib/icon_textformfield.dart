library icon_textformfield;

import 'package:flutter/material.dart';

class IconTextFormField extends StatefulWidget {

  Color textColor;
  Color hintColor;
  String hintText;
  double hintSize;
  Icon icon;

  IconTextFormField({
    this.textColor = Colors.black,
    this.hintColor = Colors.black,
    this.hintText,
    this.hintSize = 15.0,
    this.icon
  }){
    assert(icon != null);
  }

  @override
  _IconTextFormFieldState createState() => _IconTextFormFieldState();
}

class _IconTextFormFieldState extends State<IconTextFormField> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 0.5,
          ),
        ),
      ),
      child: TextFormField(
        obscureText: false,
        style: TextStyle(
          color: widget.textColor,
        ),
        decoration: InputDecoration(
          icon: widget.icon,
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: widget.hintColor,
            fontSize: widget.hintSize,
          ),
          contentPadding: const EdgeInsets.only(
            top: 30.0,
            right: 30.0,
            bottom: 20.0,
            left: 5.0,
          ),
        ),
      ),
    );
  }
}
