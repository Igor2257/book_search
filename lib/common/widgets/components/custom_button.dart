import 'package:book_search/common/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

import 'ink_well_widget.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    this.padding,
    required this.child,
    this.color,
    this.borderColor,
    this.useGradient, this.colors,
  });

  final Function() onTap;
  final EdgeInsets? padding;
  final Widget child;
  final Color? color;
  final Color? borderColor;
  final bool? useGradient;
  final List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border:
              color != null || (useGradient != null && useGradient!)
                  ? null
                  : Border.all(color: borderColor ?? mainBlack),
        ),
        padding: padding ?? EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
