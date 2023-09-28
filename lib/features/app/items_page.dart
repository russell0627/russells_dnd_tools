import 'package:dnd_custom_object_and_creature_documentation/features/app/data/items.dart';
import 'package:dnd_custom_object_and_creature_documentation/features/app/item_list_display.dart';
import 'package:flutter/material.dart';

import 'item_display.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("D&D Custom Item Documentation"),
      ),
      body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("${imagePath}custom_item_page_background.png"), fit: BoxFit.cover),
          ),
          child: Center(
            child: ItemListDisplay(
              items: items,
            ),
          )),
    );
  }
}
