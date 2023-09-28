import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:numberpicker/numberpicker.dart';

import 'features/app/proficiency_die_table_dialog.dart';

int rollResult = 0;

class SpellDcCalculator extends ConsumerStatefulWidget {
  const SpellDcCalculator({super.key});

  @override
  ConsumerState<SpellDcCalculator> createState() => _SpellDcCalculatorState();
}

class _SpellDcCalculatorState extends ConsumerState<SpellDcCalculator> {
  static const baseDC = 8;

  int _spellcastingAbilityModifier = 0;
  int _proficiencyModifier = 0;
  int _otherModifier = 0;

  int get getFinalDC => baseDC + _spellcastingAbilityModifier + _proficiencyModifier + _otherModifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: const Card(
            color: Colors.black26,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Base: $baseDC"),
            ),
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.black38,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Text("Spellcasting Ability Modifier"),
                              NumberPicker(
                                axis: Axis.vertical,
                                minValue: -10,
                                maxValue: 10,
                                value: _spellcastingAbilityModifier,
                                onChanged: (value) => setState(
                                  () {
                                    _spellcastingAbilityModifier = value;
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              const Text("Proficiency Bonus"),
                              NumberPicker(
                                axis: Axis.vertical,
                                minValue: -14,
                                maxValue: 14,
                                value: _proficiencyModifier,
                                onChanged: (value) => setState(() {
                                  _proficiencyModifier = value;
                                }),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              const Text("Other Modifiers"),
                              NumberPicker(
                                axis: Axis.vertical,
                                minValue: -10,
                                maxValue: 10,
                                value: _otherModifier,
                                onChanged: (value) => setState(
                                  () {
                                    _otherModifier = value;
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Text("Total DC: ${getFinalDC.toString()}"),
            const SizedBox(height: 10),
            SizedBox(
              width: 150,
              child: FloatingActionButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return const ProficiencyDieTableDialog();
                    },
                  );
                },
                child: const Text("Proficiency Die Table"),
              ),
            )
          ],
        )
      ],
    );
  }
}
