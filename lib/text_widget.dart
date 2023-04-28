import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

customTextWidget({
  required String text,
  required double fontSize,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );
}
