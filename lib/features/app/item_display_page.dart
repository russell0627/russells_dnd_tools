import 'package:dnd_custom_object_and_creature_documentation/features/models/item.dart';
import 'package:flutter/material.dart';

import 'item_display.dart';

class ItemDisplayPage extends StatelessWidget {
  final Item item;

  const ItemDisplayPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("${imagePath}custom_item_page_background.png"),
          ),
        ),
        child: Center(
          child: ItemDisplay(
            item: item,
          ),
        ),
      ),
    );
  }
}
