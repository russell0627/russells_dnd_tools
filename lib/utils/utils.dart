import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Widget, EdgeInsets, Padding, Color, Colors;
import 'package:uuid/uuid.dart';

const uuid = Uuid();

final infinity = String.fromCharCode(0x221E);
const endash = '–';

extension NumberX on num {
  T bounded<T extends num>({T? min, T? max}) {
    assert(min != null || max != null);

    if (min != null) {
      if (max != null) {
        return math.min<T>(math.max<T>(this as T, min), max);
      } else {
        return math.max<T>(this as T, min);
      }
    } else if (max != null) {
      return math.min<T>(this as T, max);
    }

    return this as T;
  }

  /// These reverse the meaning of min/max. [min] means "restrict to minimum value", and vice versa.
  T min<T extends num>(T minimum) => math.max(this as T, minimum);

  T max<T extends num>(T maximum) => math.min(this as T, maximum);
}

extension StringX on String {
  bool toBool() => this == "true" ? true : false;
}

extension IterableIntX on Iterable<int> {
  int sum() => fold(0, (int total, int current) => total + current);
}

extension IterableBoolX on Iterable<bool> {
  bool get anyTrue => any((value) => value);

  bool get allTrue => !any((value) => !value);
}

extension IterableWidgetX on Iterable<Widget> {
  Iterable<Widget> joinWidgetList(Widget separator) {
    final Iterator<Widget> iterator = this.iterator;

    final List<Widget> result = [];

    if (!iterator.moveNext()) {
      return result;
    }

    result.add(iterator.current);

    while (iterator.moveNext()) {
      result.add(separator);
      result.add(iterator.current);
    }

    return result;
  }

  Iterable<Widget> padAll(EdgeInsets padding) {
    return map((Widget widget) {
      return Padding(
        padding: padding,
        child: widget,
      );
    });
  }
}

extension ListX on List {
  void replaceAt(int index, replacement) {
    this[index] = replacement;
  }

  void replaceWith(original, replacement) {
    if (contains(original)) {
      replaceAt(indexOf(original), replacement);
    }
  }

  void replaceWithOrAdd({Object? original, replacement}) {
    final index = original != null ? indexOf(original) : -1;

    if (index > -1) {
      replaceWith(original, replacement);
    } else {
      add(replacement);
    }
  }

  void removeAll(Iterable values) {
    for (final value in values) {
      remove(value);
    }
  }
}

Color foregroundColorForBackground(Color bgColor, {Color light = Colors.white, Color dark = Colors.black}) {
  return bgColor.computeLuminance() > 0.5 ? dark : light;
}

T strToEnum<T extends Enum>(List<T> values, String str) => values.firstWhere((value) => value.name == str);

T fullStrToEnum<T extends Enum>(List<T> values, String str) => values.firstWhere((value) => value.toString() == str);

extension TextEditingControllerExt on TextEditingController {
  void selectAll() {
    if (text.isEmpty) return;
    selection = TextSelection(baseOffset: 0, extentOffset: text.length);
  }
}