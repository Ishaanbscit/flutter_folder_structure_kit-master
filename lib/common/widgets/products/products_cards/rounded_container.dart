import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.child,
    this.showBorder = false, // Default to no border
    this.borderColor = Colors.lightGreen, // Default border color
    this.backgroundColor = TColors.borderPrimary,
    this.padding,
    this.margin,
  });

  final double? width;
  final double? height;
  final double? radius;
  final Widget? child;
  final bool showBorder; // Optional, defaults to false
  final Color borderColor; // Optional, defaults to greenAccent
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  ///final  BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    // Determine if the app is in light or dark mode
    final isLightMode = Theme.of(context).brightness == Brightness.light;

    return Container(
      width: width, // Ensure width is provided, otherwise defaults to null
      height: height, // Ensure height is provided, otherwise defaults to null
      padding: padding ??
          const EdgeInsets.all(8), // Default padding if none is provided
      margin: margin ??
          const EdgeInsets.symmetric(
              vertical: 8), // Default margin if none is provided
      decoration: BoxDecoration(
        color: backgroundColor, // Background color
        borderRadius: BorderRadius.circular(
            radius ?? 12), // Default radius if none is provided
        border: showBorder
            ? Border.all(
                color: borderColor) // If showBorder is true, apply a border
            : Border.all(color: Colors.transparent), // Otherwise, no border
        boxShadow: showBorder
            ? [
                BoxShadow(
                  color: isLightMode
                      ? Colors.grey.withOpacity(0.3)
                      : Colors.black.withOpacity(0.6), // Light or dark shadow
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: const Offset(0, 2), // Offset to give elevation effect
                ),
              ]
            : [], // No shadow if showBorder is false
      ),
      child: child, // The child content inside the rounded container
    );
  }
}
