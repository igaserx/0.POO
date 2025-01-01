import 'dart:ui';

import 'package:flutter/material.dart';

class NumbersModel {
  final String text;
  final String image;
  final String sound;
  final String subTitle;
  final Color color;

  const NumbersModel(
      {required this.text,
      required this.subTitle,
      required this.sound,
      required this.image,
      this.color =const Color(0xff2196f3),
      });
}






