import 'package:flutter/material.dart';


import '../components/numbers_item_widget.dart';
import '../models/0.numbers_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<NumbersModel> itemModelList = const [
    NumbersModel(text: "one", subTitle: "eins", sound: "sound/1.mp3", image: 'assets/images/numbers/number_one.png',     ),
    NumbersModel(text: "two", subTitle: "zwei", sound: "sound/2.mp3", image: 'assets/images/numbers/number_two.png',     ),
    NumbersModel(text: "three", subTitle: "drei", sound: "sound/3.mp3", image: 'assets/images/numbers/number_three.png', ),
    NumbersModel(text: "four", subTitle: "vier", sound: "sound/4.mp3", image: 'assets/images/numbers/number_four.png',   ),
    NumbersModel(text: "five", subTitle: "fünf", sound: "sound/5.mp3", image: 'assets/images/numbers/number_five.png',   ),
    NumbersModel(text: "six", subTitle: "sechs", sound: "sound/6.mp3", image: 'assets/images/numbers/number_six.png',    ),
    NumbersModel(text: "seven", subTitle: "sieben", sound: "sound/7.mp3", image: 'assets/images/numbers/number_seven.png',),
    NumbersModel(text: "eight", subTitle: "acht", sound: "sound/8.mp3", image: 'assets/images/numbers/number_eight.png', ),
    NumbersModel(text: "nine", subTitle: "neun", sound: "sound/9.mp3", image: 'assets/images/numbers/number_nine.png',   ),
    NumbersModel(text: "ten", subTitle: "zehn", sound: "sound/10.mp3", image: 'assets/images/numbers/number_ten.png',   ),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor:Colors.blue[200],
        title:
            const Text("Numbers", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: itemModelList.map((e) => NumbersItemWidget(itemModel: e),).toList(),
          
        ),
      ),
    );
  }
}
