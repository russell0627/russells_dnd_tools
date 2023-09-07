import 'package:flutter/material.dart';

import '../models/item.dart';
import 'item_display_page.dart';

class ItemListDisplay extends StatelessWidget {
  final List<Item> items;

  const ItemListDisplay({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView(children: generateItemListTiles(items, context));
  }
}

List<Widget> generateItemListTiles(List<Item> items, BuildContext context) {
  List<ListTile> tiles = [];
  Weapon? weapon;

  for (Item item in items) {
    if (item.runtimeType == Weapon) {
      weapon = (item.runtimeType == Item ? null : item) as Weapon?;
      tiles.add(ListTile(
        title: Text(item.name),
        subtitle: Text(weapon?.damageSet.toString() ?? ""),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ItemDisplayPage(item: items[items.indexOf(item)],))),
      ));
    } else {
      tiles.add(ListTile(
        title: Text(item.name),
      ));
    }
  }
  return tiles;
}
