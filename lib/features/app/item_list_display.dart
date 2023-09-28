import 'package:flutter/material.dart';

import '../models/item.dart';
import 'item_display.dart';
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
  for (Item item in items) {
    if (item is Weapon) {
      tiles.add(
        ListTile(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => ItemDisplayPage(
                item: items[items.indexOf(item)],
              ),
            ),
          ),
          title: Card(
            color: Colors.black38,
            child: SizedBox(
              height: 100,
              child: Padding (
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ifUseImage(item),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(item.name),
                          Text(item.damageSet.toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      tiles.add(ListTile(
        title: Text(item.name),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => ItemDisplayPage(
                  item: items[items.indexOf(item)],
                ))),
      ));
    }
  }
  return tiles;
}

Widget ifUseImage(item) => item.imageName != null
    ? Image(image: AssetImage(imagePath + item.imageName!))
    : const Text("no image", style: TextStyle(fontSize: 8));
