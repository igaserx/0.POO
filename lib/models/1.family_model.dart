import 'dart:ui';

class FamilyModel {
  final String text;
  final String image;
  final String sound;
  final String subTitle;
  final Color color;

  const FamilyModel(
      {required this.text,
      required this.subTitle,
      required this.sound,
      required this.image,
      this.color =const Color(0xffff9800),
      });
}
