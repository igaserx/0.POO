import 'package:flutter/material.dart';
import 'package:poo/components/phrases_item_widget.dart';
import '../models/3.phrases_model.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});
  final List<PhrasesModel> itemModelList = const [
    PhrasesModel(subTitle: "Hallo!", text: "hello", sound: 'sound/hallo.mp3', ),
    PhrasesModel(subTitle: "Wie alt bist du?", text: "how old are you", sound: 'sound/howoldareyou.mp3',),
    PhrasesModel(subTitle: "Wie geht es dir?", text: "how are you", sound: 'sound/howareyou.mp3', ),
    PhrasesModel(subTitle: "Mir geht es gut", text: "i'm fine", sound: 'sound/imfine.mp3', ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
      backgroundColor: Colors.red.shade200,
      title:             const Text("Phrases", style: TextStyle(color: Colors.white)),
     ),
     body:  Center(
        child: GridView.builder(
          itemCount: itemModelList.length,
          itemBuilder: (BuildContext context, int index) { return PhrasesItemWidget(itemModel: itemModelList[index]); }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          
        ),
      ),
    );
  }
}