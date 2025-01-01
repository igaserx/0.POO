import 'package:flutter/material.dart';
import '../components/family_item_widget.dart';
import '../models/1.family_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<FamilyModel> itemModelList = const [
    FamilyModel(text: "Father",subTitle: "Vater",sound: "sound/father.mp3", image: 'assets/images/family/father.png', ),
    FamilyModel(text: "Mother",subTitle: "Mutter",sound: "sound/mother.mp3", image: 'assets/images/family/mother.png', ),
    FamilyModel(text: "Grand Father",subTitle: "Großvater",sound: "sound/grandfather.mp3", image: 'assets/images/family/grandfather.png', ),
    FamilyModel(text: "Grand Mother",subTitle: "Großmutter",sound: "sound/grandmother.mp3", image: 'assets/images/family/people.png', ),
    FamilyModel(text: "Son", subTitle: "Sohn", sound: "sound/son.mp3", image: 'assets/images/family/son.png', ),
    FamilyModel(text: "Brother",subTitle: "Bruder",sound: "sound/brother.mp3", image: 'assets/images/family/brother.png',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff,),
      appBar: AppBar(
        backgroundColor: Colors.orange[200],
        title:
            const Text("Family Members", style: TextStyle(color: Colors.white)),
      ),
      body: GridView.builder(
        itemCount: itemModelList.length,
        itemBuilder: (BuildContext context, int index) { return FamilyItemWidget(itemModel:itemModelList[index] ); }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}
