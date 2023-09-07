import '../../models/item.dart';

List<Item> items = [
  ...weapons
];

final List<Weapon> weapons = [
  Weapon(
      damageSet: DamageSet(
          dieType: DieType.d6, dieQuantity: 1, damageType: DamageType.piercing),
      name: "Arm Blade",
      description:
          "This hidden Arm Blade has a short sword blade inside of a mechanism that allows a blade about the length of a short sword to slide out on the underside of the wrist. It is triggered by a button on the palm of the wearer. It is attached by a leather wrist strap."),
  Weapon(
      damageSet: DamageSet(
          dieType: DieType.d4, dieQuantity: 1, damageType: DamageType.piercing),
      name: "Manticore Tail Spike",
      description: "A tail spike from the tail of a manticore. A spike can be used as a stabbing weapon for a small amount of piercing damage."),
];
