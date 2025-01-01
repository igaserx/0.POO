import 'package:flutter/material.dart';


import '../components/colors_item_widget.dart';
import '../models/2.colors_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ColorsModel> colorsList = const [
    ColorsModel(text: "white",subTitle: "Weiß",sound: "sound/white.mp3", image: 'assets/images/colors/white.png',),
    ColorsModel(text: "red",subTitle: "Rot",sound: "sound/red.mp3", image: 'assets/images/colors/red.png',),
    ColorsModel(text: "green",subTitle: "Grün",sound: "sound/green.mp3", image: 'assets/images/colors/green.png',),
    ColorsModel(text: "black",subTitle: "Schwarz",sound: "sound/black.mp3", image: 'assets/images/colors/black.png',),
    ColorsModel(text: "gray",subTitle: "grau",sound: "sound/gary.mp3", image: 'assets/images/colors/gray.png', ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      appBar: AppBar(
        backgroundColor:  Colors.green.shade200,
        title: const Text("Colors", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: GridView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ColorsItemWidget(itemModel: colorsList[index]);
          },
          itemCount: colorsList.length, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
      ),
    );
  }
}
