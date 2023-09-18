import 'package:attendance_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundedTextField extends StatefulWidget {
  final TextEditingController controller;
  final hint, isPassword, cursorColor, borderColor, textColor, hintColor, isEnabled;
  const RoundedTextField({Key? key ,
    required this.controller,
    required this.hint,
    this.isPassword,
    this.cursorColor,
    this.borderColor,
    this.textColor,
    this.hintColor,
    this.isEnabled
  }): super(key: key);

  @override
  State<RoundedTextField> createState() => _RoundedTextFieldState();
}

class _RoundedTextFieldState extends State<RoundedTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: 1, color: (widget.borderColor != null) ? widget.borderColor : Colors.white, style: BorderStyle.solid
        )
      ),
      child: TextField(
        enabled: (widget.isEnabled != null) ? false : true,

        controller: widget.controller,
          cursorColor: (widget.cursorColor != null) ? widget.cursorColor : Colors.white,
          obscureText: (widget.isPassword != null && widget.isPassword) ? true : false,
          style: TextStyle(
            color: (widget.textColor != null) ? widget.textColor : Colors.white
          ),
          decoration: InputDecoration(
            hintStyle: TextStyle(color: (widget.hintColor != null) ? widget.hintColor : Colors.white),
            hintText: "${widget.hint}",
            border: InputBorder.none
          ),
        ),
    );
  }
}
