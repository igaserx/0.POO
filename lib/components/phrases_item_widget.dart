import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/3.phrases_model.dart';



class PhrasesItemWidget extends StatelessWidget {
  const PhrasesItemWidget({super.key, required this.itemModel});
  final PhrasesModel itemModel;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: () {
                    final player = AudioPlayer();
                    player.play(AssetSource(itemModel.sound));
                  },
      child: Card(
        
        color: itemModel.color,
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                title: Text(itemModel.subTitle,style: const TextStyle(color: Colors.white,fontSize: 20),),
                subtitle: Text(itemModel.text,style: const TextStyle(color: Colors.white,fontSize: 13),),
              ),
             
            ],
          ),
        ),
        
      ),
    );
  }
}
