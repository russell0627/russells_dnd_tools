import 'package:dnd_custom_object_and_creature_documentation/features/app/data/items.dart';
import 'package:dnd_custom_object_and_creature_documentation/features/app/item_list_display.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("D&D Custom Item Documentation"),),
      body: Center(child: ItemListDisplay(items: items,),),
    );
  }
}
