import 'dart:ui';

import 'package:flutter/material.dart';

class PhrasesModel {
  final String text;
  final String sound;
  final String subTitle;
  final Color color;

  const PhrasesModel(
      {required this.text,
      required this.subTitle,
      required this.sound,
      this.color =const Color(0xffd32f2f),
      });
}






