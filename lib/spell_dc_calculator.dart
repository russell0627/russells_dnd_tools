import 'package:flutter/material.dart';

int spellcastingModifier = 0;

class SpellDcCalculator extends StatelessWidget {
  const SpellDcCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Base: 8"),
        TextFormField(
          onChanged: (value) {
            spellcastingModifier = int.parse(value);
          },
          keyboardType: TextInputType.number,
          keyboardAppearance: Brightness.dark,
        ),
      ],
    );
  }
}
