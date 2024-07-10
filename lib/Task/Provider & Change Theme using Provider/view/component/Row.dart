import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Row row({required IconData iconName,required String name,required Color textColor}) {
  return Row(
    children: [
      Icon(
        iconName,
        size: 24,
        color: textColor,
      ),
      SizedBox(
        width: 34,
      ),
      Text(
        name,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      ),
    ],
  );
}