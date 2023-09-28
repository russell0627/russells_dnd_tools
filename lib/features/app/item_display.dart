import 'package:dnd_custom_object_and_creature_documentation/utils/screen_utils.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/cupertino.dart';

import '../models/item.dart';

Weapon? _weapon;
String imagePath = "assets/images/";

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
          ifUseImage(),
          Text(item.name),
          Text(_weapon?.damageSet.toString() ?? ""),
          Text(item.description),
        ],
      ),
    );
  }

  Widget ifUseImage() =>
      hasImage ? Image(image: AssetImage(imagePath + item.imageName!)) : const Text("no image", style: TextStyle(fontSize: 8));

  get hasImage => item.imageName != null;
}
