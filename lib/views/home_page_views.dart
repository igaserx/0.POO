import 'package:flutter/material.dart';
import '../components/category_widget.dart';
import 'colors_view.dart';
import 'family_members_views.dart';
import 'numbers_page_views.dart';
import 'phrases_views.dart';

class HomeBage extends StatelessWidget {
  const HomeBage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWidget(),
      body: bodyWidget(context),
    );
  }

  Widget bodyWidget(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                CategoryWidget(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const NumbersPage();
                    }));
                  },
                  text: "Numbers", color: Colors.blue.shade200,
                ),
            CategoryWidget(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyMembersPage();
                }));
              },
              text: "Family", color:Colors.orange.shade200,
            ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                CategoryWidget(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const ColorsPage();
                    }));
                  },
                  text: "Colors", color:Colors.green.shade200,
                ),
            CategoryWidget(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhrasesView();
                }));
              },
              text: "Phrases", color:Colors.red.shade200,
            ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

AppBar appBarWidget() {
  return AppBar(
   backgroundColor: Colors.blue,
    leading: const Icon(Icons.sailing,color: Colors.white,),
    title: const Text("Poo", style: TextStyle(color: Colors.white)),
  );
}
