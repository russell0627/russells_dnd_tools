import 'package:dnd_custom_object_and_creature_documentation/utils/screen_utils.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/cupertino.dart';

import '../models/item.dart';

Weapon? _weapon;

class ItemDisplay extends StatelessWidget {
  final Item item;

  const ItemDisplay({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    if (item.runtimeType == Weapon) {
      _weapon = ((item.runtimeType == Item ? null : item) as Weapon?)!;
    }

    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SeparatedColumn(
        separatorBuilder: () => boxM,
        children: [
          Text(item.name),
          Text(_weapon?.damageSet.toString() ?? ""),
          Text(item.description),
        ],
      ),
    );
  }
}
