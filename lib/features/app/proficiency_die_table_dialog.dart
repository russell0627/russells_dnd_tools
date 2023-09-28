import 'package:dnd_custom_object_and_creature_documentation/features/app/die_roll_dialog.dart';
import 'package:dnd_custom_object_and_creature_documentation/spell_dc_calculator.dart';
import 'package:dnd_custom_object_and_creature_documentation/utils/roller.dart';
import 'package:flutter/material.dart';

import 'item_display.dart';

class ProficiencyDieTableDialog extends StatefulWidget {
  const ProficiencyDieTableDialog({super.key});

  @override
  State<ProficiencyDieTableDialog> createState() => _ProficiencyDieTableDialogState();
}

class _ProficiencyDieTableDialogState extends State<ProficiencyDieTableDialog> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text("Proficiency Die Table"),
      children: [
        Row(
          children: [
            const Column(
              children: [
                Text("             Levels          Die      Regular Bonus"),
                Text("1-4       d4,        +2"),
                Text("5-8       d6,        +3"),
                Text("9-12      d8,        +4"),
                Text("13-16     d10,       +5"),
                Text("17-20     d12,       +6"),
              ],
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    rollResult = rollDie(4);
                    showRoll(rollResult, context);
                    setState(() {});
                  },
                  child: Image(width: 80, image: AssetImage("${imagePath}d4_icon.png")),
                ),
                TextButton(
                  onPressed: () {
                    rollResult = rollDie(6);
                    showRoll(rollResult, context);
                    setState(() {});
                  },
                  child: Image(width: 60, image: AssetImage("${imagePath}d6_icon.png")),
                ),
                TextButton(
                  onPressed: () {
                    rollResult = rollDie(8);
                    showRoll(rollResult, context);
                    setState(() {});
                  },
                  child: Image(width: 60, image: AssetImage("${imagePath}d8_icon.png")),
                ),
                TextButton(
                    onPressed: () {
                      rollResult = rollDie(10);
                      showRoll(rollResult, context);
                      setState(() {});
                    },
                    child: const Text("d10")),
                TextButton(
                    onPressed: () {
                      rollResult = rollDie(12);
                      showRoll(rollResult, context);
                      setState(() {});
                    },
                    child: const Text("d12")),
              ],
            ),
          ],
        )
      ],
    );
  }
}

void showRoll(int roll, BuildContext context) {
  Navigator.of(context).pop();
  showDialog(
    context: context,
    builder: (_) => DieRollDialog(
      roll: roll,
    ),
  );
}
