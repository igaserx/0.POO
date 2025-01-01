import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/1.family_model.dart';


class FamilyItemWidget extends StatelessWidget {
  const FamilyItemWidget({super.key, required this.itemModel});
  final FamilyModel itemModel;
  

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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(child: Image.asset(itemModel.image,height: 70,width: 70,fit: BoxFit.fill,)),
                  ),
                ],
              )
            ],
          ),
        ),
        
      ),
    );
  }
}
