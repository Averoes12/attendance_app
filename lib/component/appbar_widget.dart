import 'package:flutter/material.dart';

import '../constant/constant.dart';

AppBar appBarWidget(context, title){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(title, style: const TextStyle(color: colorTextPrimary),),
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back, color: colorTextPrimary,)),
  );
}