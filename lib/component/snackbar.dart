import 'package:attendance_app/constant/constant.dart';
import 'package:flutter/material.dart';

  showToast(BuildContext context, String msg) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(msg),
        action: SnackBarAction(label: 'Ok', onPressed: scaffold.hideCurrentSnackBar, textColor: colorAccent),
      ),
    );
  }
