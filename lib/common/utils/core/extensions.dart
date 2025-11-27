import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

SizedBox spacer({double? width, double? height}) {
  if (height != null) {
    return SizedBox(height: height);
  }
  return SizedBox(width: width);
}

extension FirstWhereOrNullExtension<E> on Iterable<E> {
  E? firstWhereOrNull(bool Function(E element) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}

extension SafeRange<E> on List<E> {
  List<E> safeRange(int start, int end) {
    if (isEmpty) return [];
    if (start >= length) return [];
    final safeEnd = end > length ? length : end;
    return getRange(start, safeEnd).toList();
  }
}
