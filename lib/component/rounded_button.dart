import 'package:attendance_app/constant/constant.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final width, height, text, radius, icon, onTap;
  const RoundedButton(
      {Key? key, required this.width, required this.height, required this.text, required this.radius, this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: colorAccent, borderRadius: BorderRadius.circular(radius)),
        child: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: (icon != null) ? MainAxisAlignment.spaceAround : MainAxisAlignment.center,
            children: [
              Text(
                "$text",
                style: const TextStyle(
                    fontSize: textButton,
                    color: Colors.white
                ),
              ),
              (icon != null) ? icon : SizedBox()
            ],
          ) 
        ),
      ),
    );
  }
}
