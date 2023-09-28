import 'package:dnd_custom_object_and_creature_documentation/spell_dc_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'item_display.dart';

class SpellDcPage extends ConsumerWidget {
  const SpellDcPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Spellcasting DC Calculator"),
        backgroundColor: Colors.transparent,
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("${imagePath}dc_calculator_background.png",),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: SpellDcCalculator(),
        ),
      ),
    );
  }
}
