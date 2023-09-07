import 'package:dnd_custom_object_and_creature_documentation/spell_dc_calculator.dart';
import 'package:flutter/material.dart';

class SpellDcPage extends StatelessWidget {
  const SpellDcPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Spellcasting DC Calculator"),),
      body: const Center(child: SpellDcCalculator(),),
    );
  }
}
