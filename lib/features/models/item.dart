import 'package:recase/recase.dart';

class Item {
  final String name;
  final String description;

  Item({required this.name, required this.description});
}

class Weapon extends Item {
  final DamageSet damageSet;

  Weapon({required this.damageSet, required super.name, required super.description});
}

class DamageSet {
  final DieType dieType;
  final int dieQuantity;
  final DamageType damageType;

  DamageSet({required this.dieType, required this.damageType, required this.dieQuantity});

  @override
  String toString() => "$dieQuantity${dieType.name} ${damageType.name.titleCase}";
}

enum DieType {
  d4,
  d6,
  d8,
  d10,
  d20;
}

enum DamageType {
  bludgeoning,
  piercing,
  slashing;
}