import 'dart:ui';

class ColorsModel {
  final String text;
  final String image;
  final String sound;
  final String subTitle;
  final Color color;

  const ColorsModel(
      {required this.text,
      required this.subTitle,
      required this.sound,
      required this.image,
      this.color = const Color(0xff4caf50),
      });
}