import '../../models/item.dart';

List<Item> items = [
  ...weapons,
  ...otherItems,
];

final List<Weapon> weapons = [
  Weapon(
    damageSet: DamageSet(dieType: DieType.d6, dieQuantity: 1, damageType: DamageType.piercing),
    name: "Arm Blade",
    description:
        "This hidden Arm Blade has a short sword blade inside of a mechanism that allows a blade about the length of a short sword to slide out on the top of the wrist. It is triggered by a button on the palm of the wearer. It is attached by a leather wrist strap.",
    imageName: "arm_blade_mechanics.jpg",
  ),
  Weapon(
    damageSet: DamageSet(dieType: DieType.d4, dieQuantity: 1, damageType: DamageType.piercing),
    name: "Manticore Tail Spike",
    description:
        "A tail spike from the tail of a manticore. A spike can be used as a stabbing weapon for a small amount of piercing damage.",
    imageName: "manticore_tail_spikes.png",
  ),
  Weapon(
    damageSet: DamageSet(dieType: DieType.d4, dieQuantity: 1, damageType: DamageType.piercing),
    name: "Clawed Gauntlet",
    description: "A gauntlet with piercing parts on the front that do as much damage as a dagger and are light.",
    imageName: "clawed_gauntlet.png",
  ),
];

final List<Item> otherItems = [
  Item(
    name: "Vial Storage Ring",
    description: """
Location: Belt or other similar item
Use: Stores easily retrievable vials of liquid safely.
Parts: A very short cylinder with a hole in the middle and holes for vials around the outside, a similar object except hollow and slightly larger (large enough to cover the other with some room in between) the case should have a hole big enough for a vial to easily pass through, a crank, and a small lever.
Operation: Twist the crank until the correct vial is under the hole then flip the lever to the right pull out the vial and flip the lever to the left. To refill the device use the crank to go to each empty space turn the lever to the right and load in a vial.
  """,
  )
];
