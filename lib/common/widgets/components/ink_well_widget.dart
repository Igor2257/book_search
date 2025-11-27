import 'package:flutter/material.dart';

class InkWellWidget extends StatelessWidget {
  const InkWellWidget({super.key, required this.onTap, required this.child});

  final Function() onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: child,
    );
  }
}
