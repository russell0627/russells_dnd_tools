import 'package:dnd_custom_object_and_creature_documentation/features/app/items_page.dart';
import 'package:dnd_custom_object_and_creature_documentation/features/app/spell_dc_page.dart';
import 'package:dnd_custom_object_and_creature_documentation/utils/screen_utils.dart';
import 'package:flutter/material.dart';

import 'item_display.dart';

const medievalSharpTextStyle = TextStyle(fontFamily: "MedievalSharp");

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Card(
            color: Colors.black26,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Russell's D&D Tools", style: medievalSharpTextStyle),
            )),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("${imagePath}cut_artificer_workshop.png"), fit: BoxFit.cover)),
        child: Center(
          child: Card(
            color: Colors.black26,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ItemPage())),
                    child: const Text(
                      "Custom Items",
                      style: medievalSharpTextStyle,
                    )),
                TextButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SpellDcPage())),
                    child: const Text(
                      "Spell DC Calculator",
                      style: medievalSharpTextStyle,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
