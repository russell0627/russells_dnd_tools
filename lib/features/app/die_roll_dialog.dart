import 'package:flutter/material.dart';

class DieRollDialog extends StatelessWidget {
  final int roll;

  const DieRollDialog({super.key, required this.roll});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Center(
          child: Text("$roll", style: const TextStyle(fontSize: 24),),
        ),
      ],
    );
  }
}
