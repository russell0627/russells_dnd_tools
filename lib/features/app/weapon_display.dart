import 'package:dnd_custom_object_and_creature_documentation/features/models/item.dart';
import 'package:dnd_custom_object_and_creature_documentation/utils/screen_utils.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

class WeaponDisplay extends StatelessWidget {
  final Weapon weapon;

  const WeaponDisplay({super.key, required this.weapon});

  @override
  Widget build(BuildContext context) {
    return Center(child: SeparatedColumn( separatorBuilder: () => boxM,
    children: [
      Text(weapon.name,),
      Text(weapon.damageSet.toString(),),
      Text(weapon.description,)
    ],),);
  }
}
