import 'package:dnd_custom_object_and_creature_documentation/features/app/data/items.dart';
import 'package:dnd_custom_object_and_creature_documentation/features/app/item_list_display.dart';
import 'package:dnd_custom_object_and_creature_documentation/features/app/items_page.dart';
import 'package:dnd_custom_object_and_creature_documentation/features/app/spell_dc_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Russell's D&D Tools"),
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ItemPage())),
              child: const Text("Custom Items")),
         TextButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SpellDcPage())),
              child: const Text("Spell DC Calculator"))
        ],
      )),
    );
  }
}
